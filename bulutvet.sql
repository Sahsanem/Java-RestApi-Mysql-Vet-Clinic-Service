-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Eki 2021, 14:39:15
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bulutvet`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `agenda`
--

CREATE TABLE `agenda` (
  `aid` int(11) NOT NULL,
  `active_checked` bit(1) DEFAULT NULL,
  `agenda_date` datetime DEFAULT NULL,
  `agenda_desc` varchar(255) DEFAULT NULL,
  `agenda_hours` varchar(255) DEFAULT NULL,
  `agenda_title` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `agenda`
--

INSERT INTO `agenda` (`aid`, `active_checked`, `agenda_date`, `agenda_desc`, `agenda_hours`, `agenda_title`, `id`) VALUES
(1, b'1', '2021-09-16 03:00:00', 'Detay', '5:50', 'Hasta Ziyareti', 0),
(3, b'1', '2021-09-16 03:00:00', 'Aşı ödemesi.', '7:32', 'Ödeme', 0),
(4, b'1', '2021-10-02 03:00:00', 'Kedi Kontrolü', '15:00', 'Kontrol', 0),
(5, b'1', '2021-09-12 03:00:00', 'Tavşan Kontrolü', '13:00', 'Kontrol', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `animal`
--

CREATE TABLE `animal` (
  `aid` int(11) NOT NULL,
  `cip_no` int(11) NOT NULL,
  `cus_no` int(11) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `karne_no` int(11) NOT NULL,
  `p_birth` datetime DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_race` varchar(255) DEFAULT NULL,
  `p_type` varchar(255) DEFAULT NULL,
  `pcolor` varchar(255) DEFAULT NULL,
  `spayed` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `animal`
--

INSERT INTO `animal` (`aid`, `cip_no`, `cus_no`, `gender`, `karne_no`, `p_birth`, `p_name`, `p_race`, `p_type`, `pcolor`, `spayed`) VALUES
(1, 5, 39, 1, 55, '2013-09-22 00:20:15', 'Mutlu ', 'CESKY TERRİER', 'Köpek', 'Kahverengi', b'1'),
(2, 9, 39, 1, 3, '2020-04-12 03:00:00', 'Peri', 'Leonberger', 'Köpek', 'Siyah', b'0'),
(3, 6, 2, 2, 23, '2016-10-11 03:00:00', 'Paşa', 'SWEDİSH VALLHOUND', 'Köpek', 'Gri-Kahverengi', b'0'),
(4, 19, 3, 2, 47, '2017-09-11 00:20:04', 'Şans', 'MUNCHKİN', 'Kedi', 'Sarı', b'1'),
(5, 57, 6, 2, 55, '2007-09-30 03:00:00', 'Gece', 'Thoroughbred', 'At', 'Siyah', b'0'),
(6, 21, 4, 1, 21, '2012-06-20 03:00:00', 'Akkız', 'Sığır', 'Büyükbaş', 'Beyaz-Sarı', b'0'),
(7, 13, 5, 2, 65, '2015-08-28 01:17:23', 'Kara', 'Savannah', 'Kedi', 'Siyah-Gri', b'1'),
(8, 77, 5, 2, 66, '2019-09-06 03:00:00', 'Sirius', 'Nebelung', 'Kedi', 'Gri', b'1'),
(9, 56, 22, 2, 33, '2012-02-02 02:00:00', 'Lal', 'Tekir', 'Kedi', 'Sarı', b'1'),
(10, 561, 40, 2, 39, '2017-01-06 03:00:00', 'Kiraz', 'Tavşan', 'Tavşan', 'Siyah', b'0'),
(11, 5, 14, 2, 319, '2017-01-06 03:00:00', 'Max', 'Pitbull', 'Köpek', 'Sarı', b'1'),
(12, 99, 7, 1, 19, '2017-01-06 03:00:00', 'Summer', 'Su Kaplumbağası', 'Su Kaplumbağası', 'Yeşil-Siyah', b'0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `box`
--

CREATE TABLE `box` (
  `box_id` int(11) NOT NULL,
  `retail_pro_search` int(11) NOT NULL,
  `sales_note` varchar(255) DEFAULT NULL,
  `sales_product_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `box`
--

INSERT INTO `box` (`box_id`, `retail_pro_search`, `sales_note`, `sales_product_amount`) VALUES
(1, 1, 'Sargı bezi 10 tane', 10),
(2, 2, 'Gençlik aşısı satıldı', 5),
(3, 1, 'Satıldı', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `box_customer`
--

CREATE TABLE `box_customer` (
  `bc_id` int(11) NOT NULL,
  `box_customer_amount` int(11) NOT NULL,
  `customer_name` int(11) NOT NULL,
  `customer_note` varchar(255) DEFAULT NULL,
  `product_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `box_customer`
--

INSERT INTO `box_customer` (`bc_id`, `box_customer_amount`, `customer_name`, `customer_note`, `product_name`) VALUES
(1, 10, 8, 'hıug', 2),
(2, 20, 1, 'Ayşe sargı bezi aldı', 1),
(3, 2, 5, 'Deniz Oyuncak aldı', 8),
(4, 100, 4, 'Satıldı', 3),
(5, 100, 4, '', 3),
(6, 10, 2, 'Alındı.', 8),
(8, 5, 3, 'Ürün Satıldı', 9),
(9, 0, 0, NULL, 0),
(10, 10, 2, 'Detay', 8),
(11, 10, 3, 'Detay', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `buying`
--

CREATE TABLE `buying` (
  `bid` int(11) NOT NULL,
  `bill_number` varchar(255) DEFAULT NULL,
  `buying_note` varchar(255) DEFAULT NULL,
  `buying_date` datetime DEFAULT NULL,
  `process` int(11) NOT NULL,
  `product_name` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `buying`
--

INSERT INTO `buying` (`bid`, `bill_number`, `buying_note`, `buying_date`, `process`, `product_name`, `total`, `name`) VALUES
(1, '46', 'Erkana satıldı', '2021-09-25 03:00:00', 1, 2, 1840, '4'),
(3, '65', 'satıldı', '2021-09-26 03:00:00', 2, 1, 368, '1'),
(4, '87', 'canan oyuncak', '2021-09-26 03:00:00', 3, 8, 5520, '3'),
(5, '89', 'ldsnljshf', '2021-09-29 03:00:00', 2, 3, 4100, '4'),
(6, '12', 'ldsnljshf', '2021-09-29 03:00:00', 2, 3, 4100, '5'),
(7, '182', 'ldsnljshf', '2021-09-29 03:00:00', 2, 4, 0, '6');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calendar_info`
--

CREATE TABLE `calendar_info` (
  `cid` int(11) NOT NULL,
  `cbg_color` varchar(255) DEFAULT NULL,
  `cborder_color` varchar(255) DEFAULT NULL,
  `ccolor` varchar(255) DEFAULT NULL,
  `cdrag_bg_color` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `calendar_info`
--

INSERT INTO `calendar_info` (`cid`, `cbg_color`, `cborder_color`, `ccolor`, `cdrag_bg_color`, `cname`) VALUES
(1, '#9e5fff', '#9e5fff', '#ffffff', '#9e5fff', 'Randevu'),
(2, '#00a9ff', '#00a9ff', '#ffffff', '#00a9ff', 'Mübesil'),
(3, '#bbdc00', '#bbdc00', '#ffffff', '#bbdc00', 'Hasta'),
(4, '#ffbb3b', '#ffbb3b', '#ffffff', '#ffbb3b', 'Kişisel Takvim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category_group`
--

CREATE TABLE `category_group` (
  `cg_id` int(11) NOT NULL,
  `cg_name` varchar(255) DEFAULT NULL,
  `cg_status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `category_group`
--

INSERT INTO `category_group` (`cg_id`, `cg_name`, `cg_status`) VALUES
(1, 'Aşı', b'1'),
(2, 'Vitamin', b'1'),
(3, ' Sağlık Malzemleri', b'1'),
(4, ' Mama', b'1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `c_code` varchar(255) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_mobile_phone` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `c_no` int(11) DEFAULT NULL,
  `c_note` varchar(255) DEFAULT NULL,
  `c_phone` varchar(255) DEFAULT NULL,
  `csurname` varchar(255) DEFAULT NULL,
  `il` varchar(255) DEFAULT NULL,
  `ilce` varchar(255) DEFAULT NULL,
  `tax_administration` varchar(255) DEFAULT NULL,
  `tc_no` varchar(255) DEFAULT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_surname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `customer`
--

INSERT INTO `customer` (`cid`, `address`, `c_code`, `c_email`, `c_mobile_phone`, `cname`, `c_no`, `c_note`, `c_phone`, `csurname`, `il`, `ilce`, `tax_administration`, `tc_no`, `c_name`, `c_surname`) VALUES
(2, 'Beşiktaş/İstanbul', '', 'zehra@mail.com', '851461', 'Zehra', 2, 'Kuduz aşısı yapılacaktır.', '45464646', ' Gök', 'İstanbul', 'Beşiktaş', 'B', '98562222', NULL, NULL),
(3, 'A Mahallesi Sk:5854', '', 'k@mail.com', '', 'Kemal', 3, 'Vitamin aşısı yapılacaktır.', '9585224145', ' Zaman', 'Ankara', '', 'A', '847474848', NULL, NULL),
(4, ' İstanbul/Kadıköy', ' ', 'ss@mail.com', ' ', ' Şakir', 4, 'Kontrol', '52561111', ' Kafkas', ' İstanbul', ' Kadıköy', ' B', ' 854845845', NULL, NULL),
(5, 'C Mahallesi Sk:9585', ' ', 'deniz@mail.com', '11111111', 'Deniz', 5, 'Kontrol', '202023030', ' Yılmaz', 'Çanakkale', '', 'A', '3333333333', NULL, NULL),
(6, '', ' ', 'tt@mail.com', '', 'Tuğberk', 6, 'At Vebası ', '54152151', ' Ok', 'Antalya', '', '', '33252333', NULL, NULL),
(7, 'K Mahallesi Sk:9595', '', 'su@mail.com', '', 'Su', 7, 'Gençlik Aşısı yapılacak', '12451564', ' Yaz', 'Aydın', 'Efeler', 'A', '6512561256', NULL, NULL),
(8, 'Mersin', ' ', 'mmmm@mail.com', NULL, 'Mehmet', 14, 'Kontrol', '555566587', 'Yok', 'Mersin', NULL, 'D', '789852222', NULL, NULL),
(9, 'Samsun', NULL, 'yaren@mail.com', NULL, 'Yaren', 22, 'Kontrol', '9999997777', 'Zan', 'Samsun', NULL, 'T', '656565', NULL, NULL),
(10, 'Kilis', NULL, 'burak@mail.com', NULL, 'Burak', 39, 'Kontrol', '9999997777', 'Var', 'Kilis', NULL, 'T', '656565', NULL, NULL),
(11, 'Edirne', NULL, 'burak@mail.com', NULL, 'Zeynep', 40, 'Kontrol', '02020202', 'Han', 'Edirne', NULL, 'T', '33333333', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer_pay_sale`
--

CREATE TABLE `customer_pay_sale` (
  `cp_id` int(11) NOT NULL,
  `box_cus_date` datetime DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `customer_bill_number` int(11) NOT NULL,
  `customer_process` int(11) NOT NULL,
  `sale_boxtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `customer_pay_sale`
--

INSERT INTO `customer_pay_sale` (`cp_id`, `box_cus_date`, `cname`, `customer_bill_number`, `customer_process`, `sale_boxtotal`) VALUES
(2, '2021-09-25 03:00:00', 'İlayda', 23, 1, 920),
(3, '2021-09-26 03:00:00', 'Ayşe', 25, 2, 460),
(4, '2021-09-27 03:00:00', 'Deniz', 90, 3, 368),
(5, '2021-08-30 03:00:00', ' Şakir', 99, 3, 12300);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `depo`
--

CREATE TABLE `depo` (
  `depo_id` int(11) NOT NULL,
  `depo_name` varchar(255) DEFAULT NULL,
  `depo_status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `depo`
--

INSERT INTO `depo` (`depo_id`, `depo_name`, `depo_status`) VALUES
(1, 'Ana Depo', b'1'),
(2, 'K', b'0'),
(4, 'K', b'1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `farm_stock`
--

CREATE TABLE `farm_stock` (
  `fsid` int(11) NOT NULL,
  `farm_vac` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `warehouse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `farm_stock`
--

INSERT INTO `farm_stock` (`fsid`, `farm_vac`, `number`, `warehouse`) VALUES
(1, 1, 500, 1),
(3, 3, 10, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `farm_vaccine`
--

CREATE TABLE `farm_vaccine` (
  `farm_vaccine_id` int(11) NOT NULL,
  `category_group_id` int(11) NOT NULL,
  `farm_vaccine_amount_fixed` bit(1) NOT NULL,
  `farm_vaccine_barcode` int(11) NOT NULL,
  `farm_vaccine_buying` int(11) NOT NULL,
  `farm_vaccine_buying_kdv` bit(1) NOT NULL,
  `farm_vaccine_code` int(11) NOT NULL,
  `farm_vaccine_kdv` int(11) NOT NULL,
  `farm_vaccine_name` varchar(255) DEFAULT NULL,
  `farm_vaccine_sales` int(11) NOT NULL,
  `farm_vaccine_sales_kdv` bit(1) NOT NULL,
  `farm_vaccine_status` bit(1) NOT NULL,
  `farm_vaccine_stock` int(11) NOT NULL,
  `farm_vaccine_tip` varchar(255) DEFAULT NULL,
  `farm_vaccine_type` varchar(255) DEFAULT NULL,
  `farm_vaccine_unit` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `farm_vaccine`
--

INSERT INTO `farm_vaccine` (`farm_vaccine_id`, `category_group_id`, `farm_vaccine_amount_fixed`, `farm_vaccine_barcode`, `farm_vaccine_buying`, `farm_vaccine_buying_kdv`, `farm_vaccine_code`, `farm_vaccine_kdv`, `farm_vaccine_name`, `farm_vaccine_sales`, `farm_vaccine_sales_kdv`, `farm_vaccine_status`, `farm_vaccine_stock`, `farm_vaccine_tip`, `farm_vaccine_type`, `farm_vaccine_unit`, `vendor_id`) VALUES
(1, 1, b'0', 51551, 150, b'0', 85, 8, 'Vitamin Aşısı', 200, b'1', b'1', 80, '1', '', '1', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `laboratuvar`
--

CREATE TABLE `laboratuvar` (
  `lid` int(11) NOT NULL,
  `animal_name` int(11) NOT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `lab_type` int(11) NOT NULL,
  `cus_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `laboratuvar`
--

INSERT INTO `laboratuvar` (`lid`, `animal_name`, `diagnosis`, `image_name`, `lab_type`, `cus_no`) VALUES
(4, 3, '', 'C:\\fakepath\\rontgen.jpg', 2, 0),
(6, 1, 'Pati kırığı', '667108d5-c2ef-4bb2-adba-3210b620823en.jpg', 2, 1),
(7, 5, '', 'cd41753b-76c9-4530-8cf2-8af347e29aa9n.jpg', 2, 6),
(8, 3, 'Pati zedelenmesi.', 'e3008e37-fecb-4983-b355-4aecf38f8ab5n.jpg', 2, 2),
(9, 3, 'İyi', '99769014-15b8-4e57-ad49-f9219fd32187n.jpg', 2, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `l_date` datetime DEFAULT NULL,
  `l_ip` varchar(255) DEFAULT NULL,
  `l_url` varchar(255) DEFAULT NULL,
  `lemail` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `lroles` varchar(255) DEFAULT NULL,
  `lsession_id` varchar(255) DEFAULT NULL,
  `lsurname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `log`
--

INSERT INTO `log` (`log_id`, `l_date`, `l_ip`, `l_url`, `lemail`, `lname`, `lroles`, `lsession_id`, `lsurname`) VALUES
(1, '2021-10-02 00:15:56', '0:0:0:0:0:0:0:1', '/customer/list/0', 'anonymousUser', NULL, NULL, '43132C6F5F10E66028999DDF2A596EA5', NULL),
(2, '2021-10-02 00:17:11', '0:0:0:0:0:0:0:1', '/customer/list/0', 'm@mail.com', 'Merve', 'ROLE_ADMIN', 'DF772E575A66F1A58C509E86BE1B0979', 'Yuri'),
(3, '2021-10-02 17:53:30', '0:0:0:0:0:0:0:1', '/animal/add', 'anonymousUser', NULL, NULL, 'C07FCB93433DB91CF3D00CFB95E0907E', NULL),
(4, '2021-10-02 17:55:14', '0:0:0:0:0:0:0:1', '/animal/add', 'anonymousUser', NULL, NULL, 'C07FCB93433DB91CF3D00CFB95E0907E', NULL),
(5, '2021-10-02 18:01:51', '0:0:0:0:0:0:0:1', '/agenda/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', 'FDBE39FD0B2E227409945D02A660193E', 'Yuri'),
(6, '2021-10-02 18:03:06', '0:0:0:0:0:0:0:1', '/agenda/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', 'FDBE39FD0B2E227409945D02A660193E', 'Yuri'),
(7, '2021-10-02 18:03:21', '0:0:0:0:0:0:0:1', '/agenda/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', 'FDBE39FD0B2E227409945D02A660193E', 'Yuri'),
(8, '2021-10-02 18:03:41', '0:0:0:0:0:0:0:1', '/agenda/list', 'm@mail.com', 'Merve', 'ROLE_ADMIN', 'FDBE39FD0B2E227409945D02A660193E', 'Yuri'),
(9, '2021-10-02 18:05:06', '0:0:0:0:0:0:0:1', '/agenda/delete/6', 'm@mail.com', 'Merve', 'ROLE_ADMIN', 'FDBE39FD0B2E227409945D02A660193E', 'Yuri'),
(10, '2021-10-02 20:15:27', '0:0:0:0:0:0:0:1', '/add', 'anonymousUser', NULL, NULL, '3D054778F06BF134FEB0F9A2FA4ABEFC', NULL),
(11, '2021-10-02 20:15:53', '0:0:0:0:0:0:0:1', '/add', 'anonymousUser', NULL, NULL, '3D054778F06BF134FEB0F9A2FA4ABEFC', NULL),
(12, '2021-10-02 21:48:17', '0:0:0:0:0:0:0:1', '/add', 'anonymousUser', NULL, NULL, '3F10DB2E3190C87F6B0754419E1841A2', NULL),
(13, '2021-10-02 21:48:56', '0:0:0:0:0:0:0:1', '/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '5BCDAD924C2B6F4052C1629BC7D25CEC', 'Yuri'),
(14, '2021-10-02 21:49:21', '0:0:0:0:0:0:0:1', '/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '5BCDAD924C2B6F4052C1629BC7D25CEC', 'Yuri'),
(15, '2021-10-02 21:49:33', '0:0:0:0:0:0:0:1', '/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '5BCDAD924C2B6F4052C1629BC7D25CEC', 'Yuri'),
(16, '2021-10-02 21:50:12', '0:0:0:0:0:0:0:1', '/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '5BCDAD924C2B6F4052C1629BC7D25CEC', 'Yuri'),
(17, '2021-10-02 21:50:38', '0:0:0:0:0:0:0:1', '/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '5BCDAD924C2B6F4052C1629BC7D25CEC', 'Yuri'),
(18, '2021-10-02 21:52:07', '0:0:0:0:0:0:0:1', '/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '5BCDAD924C2B6F4052C1629BC7D25CEC', 'Yuri'),
(19, '2021-10-02 21:52:45', '0:0:0:0:0:0:0:1', '/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '5BCDAD924C2B6F4052C1629BC7D25CEC', 'Yuri'),
(20, '2021-10-02 21:53:14', '0:0:0:0:0:0:0:1', '/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '5BCDAD924C2B6F4052C1629BC7D25CEC', 'Yuri'),
(21, '2021-10-02 21:53:25', '0:0:0:0:0:0:0:1', '/customer/list/1', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '5BCDAD924C2B6F4052C1629BC7D25CEC', 'Yuri'),
(22, '2021-10-02 22:38:25', '0:0:0:0:0:0:0:1', '/list', 'anonymousUser', NULL, NULL, '7C4C88BE3E4FD4F223BFBFFA9AC05A5C', NULL),
(23, '2021-10-02 22:40:04', '0:0:0:0:0:0:0:1', '/search/Yaz', 'p@mail.com', 'Pınar', 'ROLE_DOCTOR', '9D6EEC8A722CA337CA3A2A3B948CC159', 'Y'),
(24, '2021-10-02 22:40:51', '0:0:0:0:0:0:0:1', '/search/Bu%20Yaz%20Mehmet%20geldi', 'p@mail.com', 'Pınar', 'ROLE_DOCTOR', '9D6EEC8A722CA337CA3A2A3B948CC159', 'Y'),
(25, '2021-10-02 22:41:13', '0:0:0:0:0:0:0:1', '/search/Bu%20Yaz%20Zehra%20Mehmet%20G%C3%B6k%20geldi', 'p@mail.com', 'Pınar', 'ROLE_DOCTOR', '9D6EEC8A722CA337CA3A2A3B948CC159', 'Y'),
(26, '2021-10-02 22:43:07', '0:0:0:0:0:0:0:1', '/delete/3c93f3a8-86d6-48a2-b557-4f51cf2d447f', 'p@mail.com', 'Pınar', 'ROLE_DOCTOR', '9D6EEC8A722CA337CA3A2A3B948CC159', 'Y'),
(27, '2021-10-03 22:51:09', '0:0:0:0:0:0:0:1', '/list', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '833C96138F9A97121251C920D76B0D01', 'Yuri'),
(28, '2021-10-03 22:51:43', '0:0:0:0:0:0:0:1', '/search/Bu%20Yaz%20Zehra%20Mehmet%20G%C3%B6k%20geldi', 'p@mail.com', 'Pınar', 'ROLE_DOCTOR', '833C96138F9A97121251C920D76B0D01', 'Y'),
(29, '2021-10-03 23:53:06', '0:0:0:0:0:0:0:1', '/case/list', 'anonymousUser', NULL, NULL, '764D59401391D6DC7D7F690AC9CDD24E', NULL),
(30, '2021-10-03 23:58:13', '0:0:0:0:0:0:0:1', '/case/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '34DA454FA13B90ABE4AFF6CFE5B0ABFB', 'Yuri'),
(31, '2021-10-03 23:58:56', '0:0:0:0:0:0:0:1', '/case/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '34DA454FA13B90ABE4AFF6CFE5B0ABFB', 'Yuri'),
(32, '2021-10-04 00:15:43', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(33, '2021-10-04 00:15:44', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(34, '2021-10-04 00:15:44', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(35, '2021-10-04 00:15:44', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(36, '2021-10-04 00:15:44', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(37, '2021-10-04 00:15:44', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(38, '2021-10-04 00:16:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(39, '2021-10-04 00:16:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(40, '2021-10-04 00:16:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(41, '2021-10-04 00:17:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(42, '2021-10-04 00:17:19', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(43, '2021-10-04 00:17:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(44, '2021-10-04 00:17:51', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(45, '2021-10-04 00:17:52', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(46, '2021-10-04 00:17:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(47, '2021-10-04 00:17:52', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(48, '2021-10-04 00:17:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(49, '2021-10-04 00:17:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(50, '2021-10-04 00:17:54', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(51, '2021-10-04 00:17:55', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(52, '2021-10-04 00:17:55', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(53, '2021-10-04 00:18:11', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(54, '2021-10-04 00:18:11', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(55, '2021-10-04 00:18:11', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(56, '2021-10-04 00:18:11', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(57, '2021-10-04 00:18:11', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(58, '2021-10-04 00:18:11', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(59, '2021-10-04 00:18:11', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(60, '2021-10-04 00:18:11', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(61, '2021-10-04 00:18:11', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(62, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(63, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(64, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(65, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(66, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(67, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(68, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(69, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(70, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(71, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(72, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(73, '2021-10-04 00:18:12', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(74, '2021-10-04 00:18:13', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(75, '2021-10-04 00:18:13', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(76, '2021-10-04 00:18:13', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(77, '2021-10-04 00:18:13', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(78, '2021-10-04 00:18:13', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(79, '2021-10-04 00:18:14', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(80, '2021-10-04 00:18:14', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(81, '2021-10-04 00:18:14', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(82, '2021-10-04 00:18:14', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(83, '2021-10-04 00:18:14', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(84, '2021-10-04 00:18:14', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(85, '2021-10-04 00:18:14', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(86, '2021-10-04 00:18:14', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(87, '2021-10-04 00:18:14', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(88, '2021-10-04 00:18:14', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(89, '2021-10-04 00:18:15', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(90, '2021-10-04 00:18:15', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(91, '2021-10-04 00:18:15', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(92, '2021-10-04 00:18:15', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(93, '2021-10-04 00:18:15', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(94, '2021-10-04 00:18:15', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(95, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(96, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(97, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(98, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(99, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(100, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(101, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(102, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(103, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(104, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(105, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(106, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(107, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(108, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(109, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(110, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(111, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(112, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(113, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(114, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(115, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(116, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(117, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(118, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(119, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(120, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(121, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(122, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(123, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(124, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(125, '2021-10-04 00:18:16', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(126, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(127, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(128, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(129, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(130, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(131, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(132, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(133, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(134, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(135, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(136, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(137, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(138, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(139, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(140, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(141, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(142, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(143, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(144, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(145, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(146, '2021-10-04 00:18:17', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(147, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(148, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(149, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(150, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(151, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(152, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(153, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(154, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(155, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(156, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(157, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(158, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(159, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(160, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(161, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(162, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(163, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(164, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(165, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(166, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(167, '2021-10-04 00:18:18', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(168, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(169, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(170, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(171, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(172, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(173, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(174, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(175, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(176, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(177, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(178, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(179, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(180, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(181, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(182, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(183, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(184, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(185, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(186, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(187, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(188, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(189, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(190, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(191, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(192, '2021-10-04 00:18:19', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(193, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(194, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(195, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(196, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(197, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(198, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(199, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(200, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(201, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(202, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(203, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(204, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(205, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(206, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(207, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(208, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(209, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(210, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(211, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(212, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(213, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(214, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(215, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(216, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(217, '2021-10-04 00:18:20', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(218, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(219, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(220, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(221, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(222, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(223, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(224, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(225, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(226, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(227, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(228, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(229, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(230, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(231, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(232, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(233, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(234, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(235, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(236, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(237, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(238, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(239, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(240, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(241, '2021-10-04 00:18:21', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(242, '2021-10-04 00:18:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(243, '2021-10-04 00:18:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(244, '2021-10-04 00:18:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(245, '2021-10-04 00:18:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(246, '2021-10-04 00:18:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(247, '2021-10-04 00:18:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(248, '2021-10-04 00:18:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(249, '2021-10-04 00:18:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(250, '2021-10-04 00:18:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(251, '2021-10-04 00:18:22', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(252, '2021-10-04 00:18:23', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(253, '2021-10-04 00:18:23', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(254, '2021-10-04 00:18:23', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(255, '2021-10-04 00:18:23', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(256, '2021-10-04 00:18:23', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(257, '2021-10-04 00:18:23', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(258, '2021-10-04 00:18:23', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(259, '2021-10-04 00:18:23', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(260, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(261, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(262, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(263, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(264, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(265, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(266, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(267, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(268, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(269, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(270, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(271, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(272, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(273, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(274, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(275, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(276, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(277, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(278, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(279, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(280, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(281, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(282, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(283, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(284, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(285, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(286, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(287, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(288, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(289, '2021-10-04 00:18:24', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(290, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(291, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(292, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(293, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(294, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(295, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(296, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(297, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(298, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(299, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(300, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(301, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL);
INSERT INTO `log` (`log_id`, `l_date`, `l_ip`, `l_url`, `lemail`, `lname`, `lroles`, `lsession_id`, `lsurname`) VALUES
(302, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(303, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(304, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(305, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(306, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(307, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(308, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(309, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(310, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(311, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(312, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(313, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(314, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(315, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(316, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(317, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(318, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(319, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(320, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(321, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(322, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(323, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(324, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(325, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(326, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(327, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(328, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(329, '2021-10-04 00:18:25', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(330, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(331, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(332, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(333, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(334, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(335, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(336, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(337, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(338, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(339, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(340, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(341, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(342, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(343, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(344, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(345, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(346, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(347, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(348, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(349, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(350, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(351, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(352, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(353, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(354, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(355, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(356, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(357, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(358, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(359, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(360, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(361, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(362, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(363, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(364, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(365, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(366, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(367, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(368, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(369, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(370, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(371, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(372, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(373, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(374, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(375, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(376, '2021-10-04 00:18:26', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(377, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(378, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(379, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(380, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(381, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(382, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(383, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(384, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(385, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(386, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(387, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(388, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(389, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(390, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(391, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(392, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(393, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(394, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(395, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(396, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(397, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(398, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(399, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(400, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(401, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(402, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(403, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(404, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(405, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(406, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(407, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(408, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(409, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(410, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(411, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(412, '2021-10-04 00:18:27', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(413, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(414, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(415, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(416, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(417, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(418, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(419, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(420, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(421, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(422, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(423, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(424, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(425, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(426, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(427, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(428, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(429, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(430, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(431, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(432, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(433, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(434, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(435, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(436, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(437, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(438, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(439, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(440, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(441, '2021-10-04 00:18:28', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(442, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(443, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(444, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(445, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(446, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(447, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(448, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(449, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(450, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(451, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(452, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(453, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(454, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(455, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(456, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(457, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(458, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(459, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(460, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(461, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(462, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(463, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(464, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(465, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(466, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(467, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(468, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(469, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(470, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(471, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(472, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(473, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(474, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(475, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(476, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(477, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(478, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(479, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(480, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(481, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(482, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(483, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(484, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(485, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(486, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(487, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(488, '2021-10-04 00:18:29', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(489, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(490, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(491, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(492, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(493, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(494, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(495, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(496, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(497, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(498, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(499, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(500, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(501, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(502, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(503, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(504, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(505, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(506, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(507, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(508, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(509, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(510, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(511, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(512, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(513, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(514, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(515, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(516, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(517, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(518, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(519, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(520, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(521, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(522, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(523, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(524, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(525, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(526, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(527, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(528, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(529, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(530, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(531, '2021-10-04 00:18:30', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(532, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(533, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(534, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(535, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(536, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(537, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(538, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(539, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(540, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(541, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(542, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(543, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(544, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(545, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(546, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(547, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(548, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(549, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(550, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(551, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(552, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(553, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(554, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(555, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(556, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(557, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(558, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(559, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(560, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(561, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(562, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(563, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(564, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(565, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(566, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(567, '2021-10-04 00:18:31', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(568, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(569, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(570, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(571, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(572, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(573, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(574, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(575, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(576, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(577, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(578, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(579, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(580, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(581, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(582, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(583, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(584, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(585, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(586, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(587, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(588, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(589, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(590, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(591, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(592, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(593, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(594, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(595, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL);
INSERT INTO `log` (`log_id`, `l_date`, `l_ip`, `l_url`, `lemail`, `lname`, `lroles`, `lsession_id`, `lsurname`) VALUES
(596, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(597, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(598, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(599, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(600, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(601, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(602, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(603, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(604, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(605, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(606, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(607, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(608, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(609, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(610, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(611, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(612, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(613, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(614, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(615, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(616, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(617, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(618, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(619, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(620, '2021-10-04 00:18:32', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(621, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(622, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(623, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(624, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(625, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(626, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(627, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(628, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(629, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(630, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(631, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(632, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(633, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(634, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(635, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(636, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(637, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(638, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(639, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(640, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(641, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(642, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(643, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(644, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(645, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(646, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(647, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(648, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(649, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(650, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(651, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(652, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(653, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(654, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(655, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(656, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(657, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(658, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(659, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(660, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(661, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(662, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(663, '2021-10-04 00:18:33', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(664, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(665, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(666, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(667, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(668, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(669, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(670, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(671, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(672, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(673, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(674, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(675, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(676, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(677, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(678, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(679, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(680, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(681, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(682, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(683, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(684, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(685, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(686, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(687, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(688, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(689, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(690, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(691, '2021-10-04 00:18:34', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(692, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(693, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(694, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(695, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(696, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(697, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(698, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(699, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(700, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(701, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(702, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(703, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(704, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(705, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(706, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(707, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(708, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(709, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(710, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(711, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(712, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(713, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(714, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(715, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(716, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(717, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(718, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(719, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(720, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(721, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(722, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(723, '2021-10-04 00:18:35', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(724, '2021-10-04 00:18:36', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(725, '2021-10-04 00:18:36', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(726, '2021-10-04 00:18:37', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(727, '2021-10-04 00:18:37', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(728, '2021-10-04 00:18:38', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(729, '2021-10-04 00:18:38', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(730, '2021-10-04 00:18:38', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(731, '2021-10-04 00:18:38', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(732, '2021-10-04 00:18:38', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(733, '2021-10-04 00:18:38', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(734, '2021-10-04 00:19:01', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(735, '2021-10-04 00:19:01', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/security', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(736, '2021-10-04 00:19:01', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(737, '2021-10-04 00:19:04', '0:0:0:0:0:0:0:1', '/swagger-ui/null/swagger-resources/configuration/ui', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(738, '2021-10-04 00:19:55', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '40C983FA1909D779C3429900C479F97F', NULL),
(739, '2021-10-04 00:19:56', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '40C983FA1909D779C3429900C479F97F', NULL),
(740, '2021-10-04 00:19:56', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '40C983FA1909D779C3429900C479F97F', NULL),
(741, '2021-10-04 00:19:56', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '40C983FA1909D779C3429900C479F97F', NULL),
(742, '2021-10-04 00:19:56', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '40C983FA1909D779C3429900C479F97F', NULL),
(743, '2021-10-04 00:19:56', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '40C983FA1909D779C3429900C479F97F', NULL),
(744, '2021-10-04 00:20:34', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(745, '2021-10-04 00:20:35', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(746, '2021-10-04 00:20:35', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(747, '2021-10-04 00:20:35', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(748, '2021-10-04 00:20:35', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(749, '2021-10-04 00:20:35', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(750, '2021-10-04 00:20:39', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(751, '2021-10-04 00:20:40', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(752, '2021-10-04 00:20:42', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '08D45F333A2B9F9D1B10A98FFB86A40E', NULL),
(753, '2021-10-04 10:08:24', '0:0:0:0:0:0:0:1', '/vendor/list', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '92BDE59F2F07DDF6ACB7C4B0415E812A', 'Yuri'),
(754, '2021-10-04 10:09:14', '0:0:0:0:0:0:0:1', '/vendor/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '92BDE59F2F07DDF6ACB7C4B0415E812A', 'Yuri'),
(755, '2021-10-04 10:11:05', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '03245317CF70444DE0F77B2BBEDAED44', NULL),
(756, '2021-10-04 10:11:08', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '03245317CF70444DE0F77B2BBEDAED44', NULL),
(757, '2021-10-04 10:11:08', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '03245317CF70444DE0F77B2BBEDAED44', NULL),
(758, '2021-10-04 10:11:08', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '03245317CF70444DE0F77B2BBEDAED44', NULL),
(759, '2021-10-04 10:11:08', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '03245317CF70444DE0F77B2BBEDAED44', NULL),
(760, '2021-10-04 10:11:08', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '03245317CF70444DE0F77B2BBEDAED44', NULL),
(761, '2021-10-04 10:11:08', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '03245317CF70444DE0F77B2BBEDAED44', NULL),
(762, '2021-10-04 10:11:08', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '03245317CF70444DE0F77B2BBEDAED44', NULL),
(763, '2021-10-04 10:11:08', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '03245317CF70444DE0F77B2BBEDAED44', NULL),
(764, '2021-10-04 10:11:08', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '03245317CF70444DE0F77B2BBEDAED44', NULL),
(765, '2021-10-04 20:41:34', '0:0:0:0:0:0:0:1', '/clinicStatistics/listProcess', 'anonymousUser', NULL, NULL, '3386E8C391559E3C561DEAB4854C347E', NULL),
(766, '2021-10-04 20:42:58', '0:0:0:0:0:0:0:1', '/clinicStatistics/totalClinicList', 'anonymousUser', NULL, NULL, '3386E8C391559E3C561DEAB4854C347E', NULL),
(767, '2021-10-04 20:43:14', '0:0:0:0:0:0:0:1', '/clinicStatistics/totalSchedule', 'anonymousUser', NULL, NULL, '3386E8C391559E3C561DEAB4854C347E', NULL),
(768, '2021-10-04 20:43:36', '0:0:0:0:0:0:0:1', '/clinicStatistics/totalAnimal', 'anonymousUser', NULL, NULL, '3386E8C391559E3C561DEAB4854C347E', NULL),
(769, '2021-10-04 20:43:59', '0:0:0:0:0:0:0:1', '/clinicStatistics/countLab', 'anonymousUser', NULL, NULL, '3386E8C391559E3C561DEAB4854C347E', NULL),
(770, '2021-10-04 21:13:34', '0:0:0:0:0:0:0:1', '/dashboard/Calendarlist', 'anonymousUser', NULL, NULL, '3386E8C391559E3C561DEAB4854C347E', NULL),
(771, '2021-10-04 21:14:45', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '7AC417B0BA02165E9AFCA3A055B956BE', NULL),
(772, '2021-10-04 21:14:45', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'B219FA6A99806C08321E714984B7D017', NULL),
(773, '2021-10-04 21:14:46', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'B219FA6A99806C08321E714984B7D017', NULL),
(774, '2021-10-04 21:14:46', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'B219FA6A99806C08321E714984B7D017', NULL),
(775, '2021-10-04 21:14:46', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'B219FA6A99806C08321E714984B7D017', NULL),
(776, '2021-10-04 21:14:46', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'B219FA6A99806C08321E714984B7D017', NULL),
(777, '2021-10-04 21:14:46', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'B219FA6A99806C08321E714984B7D017', NULL),
(778, '2021-10-04 21:14:46', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'B219FA6A99806C08321E714984B7D017', NULL),
(779, '2021-10-04 21:14:47', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'B219FA6A99806C08321E714984B7D017', NULL),
(780, '2021-10-04 21:14:47', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'B219FA6A99806C08321E714984B7D017', NULL),
(781, '2021-10-04 21:14:47', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'B219FA6A99806C08321E714984B7D017', NULL),
(782, '2021-10-04 21:17:00', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(783, '2021-10-04 21:17:02', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(784, '2021-10-04 21:17:02', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(785, '2021-10-04 21:17:02', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(786, '2021-10-04 21:17:02', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(787, '2021-10-04 21:17:02', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(788, '2021-10-04 21:17:03', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(789, '2021-10-04 21:17:03', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(790, '2021-10-04 21:17:03', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(791, '2021-10-04 21:17:03', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(792, '2021-10-04 21:17:04', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(793, '2021-10-04 21:19:37', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(794, '2021-10-04 21:19:37', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(795, '2021-10-04 21:19:37', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(796, '2021-10-04 21:19:37', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(797, '2021-10-04 21:19:37', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(798, '2021-10-04 21:19:37', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(799, '2021-10-04 21:19:38', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(800, '2021-10-04 21:19:38', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(801, '2021-10-04 21:19:38', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(802, '2021-10-04 21:19:38', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(803, '2021-10-04 21:19:38', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '2944BE46EAD8055AFD1050955FE64C35', NULL),
(804, '2021-10-04 21:23:20', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(805, '2021-10-04 21:23:21', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(806, '2021-10-04 21:23:21', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(807, '2021-10-04 21:23:21', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(808, '2021-10-04 21:23:21', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(809, '2021-10-04 21:23:21', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(810, '2021-10-04 21:23:22', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(811, '2021-10-04 21:23:22', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(812, '2021-10-04 21:23:22', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(813, '2021-10-04 21:23:22', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(814, '2021-10-04 21:23:22', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '419904F772CD4103E24DBA687709974B', NULL),
(815, '2021-10-04 21:27:14', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(816, '2021-10-04 21:27:16', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(817, '2021-10-04 21:27:16', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(818, '2021-10-04 21:27:16', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(819, '2021-10-04 21:27:16', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(820, '2021-10-04 21:27:16', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(821, '2021-10-04 21:27:17', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(822, '2021-10-04 21:27:17', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(823, '2021-10-04 21:27:18', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(824, '2021-10-04 21:27:18', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(825, '2021-10-04 21:27:18', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'B42462A30F5CB72B222CACFA3C8034FC', NULL),
(826, '2021-10-04 22:06:45', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(827, '2021-10-04 22:06:46', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(828, '2021-10-04 22:06:46', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(829, '2021-10-04 22:06:46', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(830, '2021-10-04 22:06:46', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(831, '2021-10-04 22:06:46', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(832, '2021-10-04 22:06:47', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(833, '2021-10-04 22:06:47', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(834, '2021-10-04 22:06:48', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(835, '2021-10-04 22:06:48', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(836, '2021-10-04 22:06:48', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'A6F7A7AD2E54A759E862E4C7FF6A2869', NULL),
(837, '2021-10-04 22:13:42', '0:0:0:0:0:0:0:1', '/dashboard/CustomerList', 'anonymousUser', NULL, NULL, '4FA13B90B2E8F27B13B45391DE723466', NULL),
(838, '2021-10-04 22:21:59', '0:0:0:0:0:0:0:1', '/dashboard/totalSaleCount', 'anonymousUser', NULL, NULL, '4FA13B90B2E8F27B13B45391DE723466', NULL),
(839, '2021-10-04 22:22:02', '0:0:0:0:0:0:0:1', '/dashboard/total', 'anonymousUser', NULL, NULL, '4FA13B90B2E8F27B13B45391DE723466', NULL),
(840, '2021-10-04 22:22:09', '0:0:0:0:0:0:0:1', '/dashboard/totalStockList', 'anonymousUser', NULL, NULL, '4FA13B90B2E8F27B13B45391DE723466', NULL),
(841, '2021-10-04 22:35:26', '0:0:0:0:0:0:0:1', '/buying/add', 'anonymousUser', NULL, NULL, '4FA13B90B2E8F27B13B45391DE723466', NULL),
(842, '2021-10-04 22:35:47', '0:0:0:0:0:0:0:1', '/buying/add/3', 'anonymousUser', NULL, NULL, '4FA13B90B2E8F27B13B45391DE723466', NULL),
(843, '2021-10-04 22:39:58', '0:0:0:0:0:0:0:1', '/buying/add/3', 'anonymousUser', NULL, NULL, 'B0E7E010C65A9010417FFF071015795B', NULL),
(844, '2021-10-04 22:41:06', '0:0:0:0:0:0:0:1', '/buying/add/3', 'anonymousUser', NULL, NULL, 'C9ECBD7181B69F0788CEB6F37F9D6BE5', NULL),
(845, '2021-10-04 22:41:07', '0:0:0:0:0:0:0:1', '/buying/add/3', 'anonymousUser', NULL, NULL, 'C9ECBD7181B69F0788CEB6F37F9D6BE5', NULL),
(846, '2021-10-04 22:41:07', '0:0:0:0:0:0:0:1', '/favicon.ico', 'anonymousUser', NULL, NULL, 'C9ECBD7181B69F0788CEB6F37F9D6BE5', NULL),
(847, '2021-10-04 22:41:43', '0:0:0:0:0:0:0:1', '/buying/add/3', 'anonymousUser', NULL, NULL, 'B0E7E010C65A9010417FFF071015795B', NULL),
(848, '2021-10-04 22:44:28', '0:0:0:0:0:0:0:1', '/buying/add/3', 'anonymousUser', NULL, NULL, 'B0E7E010C65A9010417FFF071015795B', NULL),
(849, '2021-10-04 22:51:09', '0:0:0:0:0:0:0:1', '/buying/vendorlist', 'anonymousUser', NULL, NULL, 'B0E7E010C65A9010417FFF071015795B', NULL),
(850, '2021-10-04 22:52:06', '0:0:0:0:0:0:0:1', '/buying/vendorProductlist/3', 'anonymousUser', NULL, NULL, 'B0E7E010C65A9010417FFF071015795B', NULL),
(851, '2021-10-04 22:55:52', '0:0:0:0:0:0:0:1', '/case/delete/2', 'anonymousUser', NULL, NULL, 'B0E7E010C65A9010417FFF071015795B', NULL),
(852, '2021-10-04 22:57:29', '0:0:0:0:0:0:0:1', '/category/list', 'anonymousUser', NULL, NULL, 'B0E7E010C65A9010417FFF071015795B', NULL),
(853, '2021-10-04 22:58:57', '0:0:0:0:0:0:0:1', '/category/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(854, '2021-10-04 22:59:52', '0:0:0:0:0:0:0:1', '/category/delete/5', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(855, '2021-10-04 23:06:07', '0:0:0:0:0:0:0:1', '/vendor/list', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(856, '2021-10-04 23:07:38', '0:0:0:0:0:0:0:1', '/vendor/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(857, '2021-10-04 23:08:46', '0:0:0:0:0:0:0:1', '/vendor/delete/7', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(858, '2021-10-04 23:14:35', '0:0:0:0:0:0:0:1', '/payAction/payInList', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(859, '2021-10-04 23:15:33', '0:0:0:0:0:0:0:1', '/payAction/payOutList', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(860, '2021-10-04 23:16:21', '0:0:0:0:0:0:0:1', '/payAction/payActionProcess/1', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(861, '2021-10-04 23:21:18', '0:0:0:0:0:0:0:1', '/depo/list', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(862, '2021-10-04 23:22:34', '0:0:0:0:0:0:0:1', '/depo/add', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(863, '2021-10-04 23:23:26', '0:0:0:0:0:0:0:1', '/depo/delete/3', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(864, '2021-10-04 23:37:38', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/9/10/3', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(865, '2021-10-04 23:38:24', '0:0:0:0:0:0:0:1', '/sales/boxCustomeradd', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(866, '2021-10-04 23:38:50', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/9/10/3', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(867, '2021-10-04 23:41:45', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/9/10/3', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '9EE60133A0E6F9E853BEF900489BBAC9', 'Yuri'),
(868, '2021-10-05 00:18:04', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '70B892053BF66FF11637A334AA5AE91C', NULL),
(869, '2021-10-05 00:18:06', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(870, '2021-10-05 00:18:07', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(871, '2021-10-05 00:18:07', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(872, '2021-10-05 00:18:07', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(873, '2021-10-05 00:18:07', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(874, '2021-10-05 00:18:07', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(875, '2021-10-05 00:18:08', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(876, '2021-10-05 00:18:09', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(877, '2021-10-05 00:18:09', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(878, '2021-10-05 00:18:09', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(879, '2021-10-05 00:20:09', '0:0:0:0:0:0:0:1', '/settings/list', 'anonymousUser', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(880, '2021-10-05 00:20:14', '0:0:0:0:0:0:0:1', '/settings/list', 'anonymousUser', NULL, NULL, 'ADCE02270D04DD2829656F159ED6EE8E', NULL),
(881, '2021-10-05 01:09:28', '0:0:0:0:0:0:0:1', '/settings/updatePassword/1', 'anonymousUser', NULL, NULL, '5EEDD0A9478397482AEE3B611B856B23', NULL),
(882, '2021-10-05 01:17:58', '0:0:0:0:0:0:0:1', '/settings/add', 'anonymousUser', NULL, NULL, '5C99561E51FCABCE39988DD1541B597B', NULL),
(883, '2021-10-05 01:20:28', '0:0:0:0:0:0:0:1', '/clinicStatistics/countLab', 'f@mail.com', 'Filiz', 'ROLE_ADMIN', 'E9E12F565B74232F65A54D9EA85E6E82', 'Can'),
(884, '2021-10-05 01:20:40', '0:0:0:0:0:0:0:1', '/clinicStatistics/countLab', 'm@mail.com', 'Merve', 'ROLE_ADMIN', 'E9E12F565B74232F65A54D9EA85E6E82', 'Yuri'),
(885, '2021-10-05 01:21:35', '0:0:0:0:0:0:0:1', '/clinicStatistics/countLab', 'veli@mail.com', 'Veli', 'ROLE_CUSTOMER', 'FCB91376437A7A9AD408D25CDBBB1198', 'Yaz'),
(886, '2021-10-05 01:25:34', '0:0:0:0:0:0:0:1', '/clinicStatistics/countLab', 'ali@gmail.com', 'Ali', 'ROLE_CUSTOMER', 'FCB91376437A7A9AD408D25CDBBB1198', 'Bilmem'),
(887, '2021-10-05 14:38:16', '0:0:0:0:0:0:0:1', '/product/list', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(888, '2021-10-05 14:38:39', '0:0:0:0:0:0:0:1', '/product/listProduct', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(889, '2021-10-05 14:41:03', '0:0:0:0:0:0:0:1', '/product/addProduct', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(890, '2021-10-05 14:42:43', '0:0:0:0:0:0:0:1', '/product/listDepoStock/1', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(891, '2021-10-05 14:59:48', '0:0:0:0:0:0:0:1', '/product/addStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(892, '2021-10-05 15:00:13', '0:0:0:0:0:0:0:1', '/product/addStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(893, '2021-10-05 15:02:41', '0:0:0:0:0:0:0:1', '/product/deleteStock/9', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(894, '2021-10-05 15:03:07', '0:0:0:0:0:0:0:1', '/product/delete/5', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(895, '2021-10-05 15:03:12', '0:0:0:0:0:0:0:1', '/product/delete/4', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(896, '2021-10-05 15:03:29', '0:0:0:0:0:0:0:1', '/product/deleteProduct/5', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(897, '2021-10-05 15:03:35', '0:0:0:0:0:0:0:1', '/product/deleteProduct/4', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(898, '2021-10-05 15:04:15', '0:0:0:0:0:0:0:1', '/product/deleteProduct/9', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(899, '2021-10-05 15:04:32', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(900, '2021-10-05 15:04:47', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(901, '2021-10-05 15:04:56', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(902, '2021-10-05 15:05:03', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(903, '2021-10-05 15:05:33', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(904, '2021-10-05 15:10:53', '0:0:0:0:0:0:0:1', '/vaccine/listPetVaccine', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(905, '2021-10-05 15:11:45', '0:0:0:0:0:0:0:1', '/vaccine/addPetVaccine', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(906, '2021-10-05 15:12:57', '0:0:0:0:0:0:0:1', '/vaccine/addPetVaccine', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(907, '2021-10-05 15:13:09', '0:0:0:0:0:0:0:1', '/vaccine/addPetVaccine', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(908, '2021-10-05 15:15:16', '0:0:0:0:0:0:0:1', '/vaccine/listPetVaccine', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(909, '2021-10-05 15:18:45', '0:0:0:0:0:0:0:1', '/vaccine/deletePetVaccine/2', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(910, '2021-10-05 15:19:27', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(911, '2021-10-05 15:19:32', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(912, '2021-10-05 15:19:58', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(913, '2021-10-05 15:21:39', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(914, '2021-10-05 15:21:49', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(915, '2021-10-05 15:22:18', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL);
INSERT INTO `log` (`log_id`, `l_date`, `l_ip`, `l_url`, `lemail`, `lname`, `lroles`, `lsession_id`, `lsurname`) VALUES
(916, '2021-10-05 15:22:35', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(917, '2021-10-05 15:25:51', '0:0:0:0:0:0:0:1', '/vaccine/listDepoPetStock/1', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(918, '2021-10-05 15:27:19', '0:0:0:0:0:0:0:1', '/vaccine/addPetStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(919, '2021-10-05 15:27:27', '0:0:0:0:0:0:0:1', '/vaccine/addPetStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(920, '2021-10-05 15:28:08', '0:0:0:0:0:0:0:1', '/vaccine/addPetStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(921, '2021-10-05 15:28:16', '0:0:0:0:0:0:0:1', '/vaccine/addPetStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(922, '2021-10-05 15:34:15', '0:0:0:0:0:0:0:1', '/vaccine/deletePetStock/4', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(923, '2021-10-05 15:44:03', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '5A091808D40D1E706D4281336BDB828A', NULL),
(924, '2021-10-05 15:45:13', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, 'D9E88809DE206FF9408EFA7CE85573D1', NULL),
(925, '2021-10-05 15:48:19', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, '752A587853D1062303381F815A86A831', NULL),
(926, '2021-10-05 17:47:59', '0:0:0:0:0:0:0:1', '/vaccine/addPetStock', 'anonymousUser', NULL, NULL, '8027F156EED58A8BC6786C45F4F6A262', NULL),
(927, '2021-10-05 17:49:10', '0:0:0:0:0:0:0:1', '/vaccine/addPetStock', 'anonymousUser', NULL, NULL, '8027F156EED58A8BC6786C45F4F6A262', NULL),
(928, '2021-10-05 17:52:21', '0:0:0:0:0:0:0:1', '/vaccine/updatePetStock', 'anonymousUser', NULL, NULL, '8027F156EED58A8BC6786C45F4F6A262', NULL),
(929, '2021-10-05 17:52:52', '0:0:0:0:0:0:0:1', '/vaccine/updatePetStock', 'anonymousUser', NULL, NULL, '8027F156EED58A8BC6786C45F4F6A262', NULL),
(930, '2021-10-05 18:11:04', '0:0:0:0:0:0:0:1', '/vaccine/updatePetStock', 'anonymousUser', NULL, NULL, '91F7BA507685B673410AE976968D335E', NULL),
(931, '2021-10-05 18:14:54', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '1BC9F75D18B9AA5F593E1F88C5BE9319', NULL),
(932, '2021-10-05 18:14:55', '0:0:0:0:0:0:0:1', '/favicon.ico', 'anonymousUser', NULL, NULL, '1BC9F75D18B9AA5F593E1F88C5BE9319', NULL),
(933, '2021-10-05 18:25:08', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '1BC9F75D18B9AA5F593E1F88C5BE9319', NULL),
(934, '2021-10-05 18:41:16', '0:0:0:0:0:0:0:1', '/password/ali@gmail.com', 'anonymousUser', NULL, NULL, '14968CC7D6DC5FD07A9E93197CC57E0A', NULL),
(935, '2021-10-05 18:42:34', '0:0:0:0:0:0:0:1', '/password/ali@gmail.com', 'anonymousUser', NULL, NULL, '14968CC7D6DC5FD07A9E93197CC57E0A', NULL),
(936, '2021-10-05 18:44:15', '0:0:0:0:0:0:0:1', '/password/add/ali@gmail.com', 'anonymousUser', NULL, NULL, '14968CC7D6DC5FD07A9E93197CC57E0A', NULL),
(937, '2021-10-05 18:44:41', '0:0:0:0:0:0:0:1', '/password/add/veli@mail.com', 'anonymousUser', NULL, NULL, '14968CC7D6DC5FD07A9E93197CC57E0A', NULL),
(938, '2021-10-05 18:46:09', '0:0:0:0:0:0:0:1', '/password/add/f@mail.com', 'anonymousUser', NULL, NULL, '14968CC7D6DC5FD07A9E93197CC57E0A', NULL),
(939, '2021-10-05 18:50:22', '0:0:0:0:0:0:0:1', '/password/add/f@mail.com', 'anonymousUser', NULL, NULL, '774F3276E22DAFA8A70631F5E0CECA76', NULL),
(940, '2021-10-05 18:50:39', '0:0:0:0:0:0:0:1', '/password/add/f@mail.com', 'anonymousUser', NULL, NULL, '774F3276E22DAFA8A70631F5E0CECA76', NULL),
(941, '2021-10-05 18:51:52', '0:0:0:0:0:0:0:1', '/product/list', 'f@mail.com', 'Filiz', 'ROLE_ADMIN', '72C467A65E3CA42777B475DE8A0E5041', 'Can'),
(942, '2021-10-05 18:52:05', '0:0:0:0:0:0:0:1', '/product/list', 'f@mail.com', 'Filiz', 'ROLE_ADMIN', '72C467A65E3CA42777B475DE8A0E5041', 'Can'),
(943, '2021-10-05 18:52:14', '0:0:0:0:0:0:0:1', '/dashboard/Calendarlist', 'f@mail.com', 'Filiz', 'ROLE_ADMIN', '72C467A65E3CA42777B475DE8A0E5041', 'Can'),
(944, '2021-10-05 18:52:46', '0:0:0:0:0:0:0:1', '/dashboard/Calendarlist', 'f@mail.com', 'Filiz', 'ROLE_ADMIN', '72C467A65E3CA42777B475DE8A0E5041', 'Can'),
(945, '2021-10-05 19:29:14', '0:0:0:0:0:0:0:1', '/vaccine/listFarmVaccine', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(946, '2021-10-05 19:31:00', '0:0:0:0:0:0:0:1', '/vaccine/addFarmVaccine', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(947, '2021-10-05 19:31:10', '0:0:0:0:0:0:0:1', '/vaccine/addFarmVaccine', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(948, '2021-10-05 19:32:20', '0:0:0:0:0:0:0:1', '/vaccine/listDepoFarmStock/1', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(949, '2021-10-05 19:33:37', '0:0:0:0:0:0:0:1', '/vaccine/addFarmStock', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(950, '2021-10-05 19:34:40', '0:0:0:0:0:0:0:1', '/vaccine/addFarmStock', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(951, '2021-10-05 19:35:34', '0:0:0:0:0:0:0:1', '/vaccine/deleteFarmStock/2', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(952, '2021-10-05 19:36:39', '0:0:0:0:0:0:0:1', '/vaccine/updateFarmStock', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(953, '2021-10-05 19:36:43', '0:0:0:0:0:0:0:1', '/vaccine/updateFarmStock', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(954, '2021-10-05 19:36:53', '0:0:0:0:0:0:0:1', '/vaccine/updateFarmStock', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(955, '2021-10-05 19:37:36', '0:0:0:0:0:0:0:1', '/vaccine/updateFarmStock', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(956, '2021-10-05 19:38:28', '0:0:0:0:0:0:0:1', '/vaccine/deleteFarmVaccine/2', 'anonymousUser', NULL, NULL, '9F4875DBEF80783CB974A60EFA96605D', NULL),
(957, '2021-10-05 19:49:35', '0:0:0:0:0:0:0:1', '/settings/list', 'anonymousUser', NULL, NULL, '12938345C8323B7E1E79587F1F4A571C', NULL),
(958, '2021-10-05 20:53:27', '0:0:0:0:0:0:0:1', '/sales/productList', 'anonymousUser', NULL, NULL, 'A066D3626BC36BBAD2D8F1E026EFC9AB', NULL),
(959, '2021-10-05 21:18:39', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '973775C5D958E98BDACD43C5F4625BE8', NULL),
(960, '2021-10-05 21:18:43', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '973775C5D958E98BDACD43C5F4625BE8', NULL),
(961, '2021-10-05 21:19:06', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '973775C5D958E98BDACD43C5F4625BE8', NULL),
(962, '2021-10-05 21:21:34', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '973775C5D958E98BDACD43C5F4625BE8', NULL),
(963, '2021-10-05 21:28:35', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '54B594114C8A9DA0DAE21B7629D636F8', NULL),
(964, '2021-10-05 21:29:17', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '54B594114C8A9DA0DAE21B7629D636F8', NULL),
(965, '2021-10-05 21:29:36', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '54B594114C8A9DA0DAE21B7629D636F8', NULL),
(966, '2021-10-05 21:31:07', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '14B7A22FE6161C91FD65EAB55B7E4BD4', NULL),
(967, '2021-10-05 21:32:53', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '14B7A22FE6161C91FD65EAB55B7E4BD4', NULL),
(968, '2021-10-05 21:34:51', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '14B7A22FE6161C91FD65EAB55B7E4BD4', NULL),
(969, '2021-10-05 21:35:42', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '14B7A22FE6161C91FD65EAB55B7E4BD4', NULL),
(970, '2021-10-05 21:42:39', '0:0:0:0:0:0:0:1', '/sales/boxadd', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(971, '2021-10-05 21:44:37', '0:0:0:0:0:0:0:1', '/sales/retailSale/3/5', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(972, '2021-10-05 21:44:49', '0:0:0:0:0:0:0:1', '/sales/retailSale/3/5', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(973, '2021-10-05 21:46:18', '0:0:0:0:0:0:0:1', '/sales/retailSale/3/5', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(974, '2021-10-05 21:47:40', '0:0:0:0:0:0:0:1', '/sales/retailSale/3/5', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(975, '2021-10-05 22:01:39', '0:0:0:0:0:0:0:1', '/sales/retailSale/1/5', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(976, '2021-10-05 22:04:37', '0:0:0:0:0:0:0:1', '/sales/customerList', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(977, '2021-10-05 22:05:28', '0:0:0:0:0:0:0:1', '/sales/customerPaylist', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(978, '2021-10-05 22:07:24', '0:0:0:0:0:0:0:1', '/sales/boxCustomeradd', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(979, '2021-10-05 22:07:30', '0:0:0:0:0:0:0:1', '/sales/boxCustomeradd', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(980, '2021-10-05 22:09:19', '0:0:0:0:0:0:0:1', '/sales/boxCustomeradd', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(981, '2021-10-05 22:11:09', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/10/2', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(982, '2021-10-05 22:13:29', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/10/2', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(983, '2021-10-05 22:15:33', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/10/2', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(984, '2021-10-05 22:18:17', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/10/2', 'anonymousUser', NULL, NULL, '50D226B1B24936DD799B98BB12F1DB6A', NULL),
(985, '2021-10-05 22:20:38', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/10/2', 'anonymousUser', NULL, NULL, 'F1BEF2B1D65F33D15749EFA1E4F92F17', NULL),
(986, '2021-10-05 22:23:50', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/10/2', 'anonymousUser', NULL, NULL, '8784543D29A8C54A4EC4A122C7792865', NULL),
(987, '2021-10-05 22:24:37', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/10/2', 'anonymousUser', NULL, NULL, '66A08C2F89A252BEA0AC6421288DF408', NULL),
(988, '2021-10-05 22:31:53', '0:0:0:0:0:0:0:1', '/sales/boxCustomeradd', 'anonymousUser', NULL, NULL, 'A10D33765DC6BBE4D12D67FEEC793B41', NULL),
(989, '2021-10-05 22:32:30', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/9/10/3', 'anonymousUser', NULL, NULL, 'A10D33765DC6BBE4D12D67FEEC793B41', NULL),
(990, '2021-10-05 22:33:12', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/9/10/3', 'anonymousUser', NULL, NULL, 'A10D33765DC6BBE4D12D67FEEC793B41', NULL),
(991, '2021-10-05 22:33:36', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/9/10/3', 'anonymousUser', NULL, NULL, 'A10D33765DC6BBE4D12D67FEEC793B41', NULL),
(992, '2021-10-05 22:34:10', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/9/10/3', 'anonymousUser', NULL, NULL, 'A10D33765DC6BBE4D12D67FEEC793B41', NULL),
(993, '2021-10-05 23:02:25', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '655FA9279D627CBEB31800B23CEABBA7', NULL),
(994, '2021-10-05 23:02:50', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '655FA9279D627CBEB31800B23CEABBA7', NULL),
(995, '2021-10-05 23:03:22', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '655FA9279D627CBEB31800B23CEABBA7', NULL),
(996, '2021-10-05 23:04:51', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(997, '2021-10-05 23:05:14', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(998, '2021-10-05 23:06:43', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(999, '2021-10-05 23:07:17', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(1000, '2021-10-05 23:07:41', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(1001, '2021-10-05 23:07:49', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(1002, '2021-10-05 23:07:59', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(1003, '2021-10-05 23:08:16', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(1004, '2021-10-05 23:08:22', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(1005, '2021-10-05 23:08:39', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(1006, '2021-10-05 23:09:08', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'BAE70DB415DDBC29FD5F3D08A15279BB', NULL),
(1007, '2021-10-05 23:09:25', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '31C34CA1E7126A0BEECE84FCEE28B1EC', NULL),
(1008, '2021-10-05 23:09:25', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1009, '2021-10-05 23:09:26', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1010, '2021-10-05 23:09:26', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1011, '2021-10-05 23:09:26', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1012, '2021-10-05 23:09:26', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1013, '2021-10-05 23:09:26', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1014, '2021-10-05 23:09:27', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1015, '2021-10-05 23:09:27', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1016, '2021-10-05 23:09:27', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1017, '2021-10-05 23:09:27', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1018, '2021-10-05 23:10:22', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1019, '2021-10-05 23:10:26', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'FA350718CE3FB3F10E8E5516262F6B83', NULL),
(1020, '2021-10-06 08:56:31', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1021, '2021-10-06 08:56:33', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1022, '2021-10-06 08:56:33', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1023, '2021-10-06 08:56:33', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1024, '2021-10-06 08:56:33', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1025, '2021-10-06 08:56:33', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1026, '2021-10-06 08:56:33', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1027, '2021-10-06 08:56:34', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1028, '2021-10-06 08:56:34', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1029, '2021-10-06 08:56:34', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1030, '2021-10-06 08:56:34', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1031, '2021-10-06 08:57:26', '0:0:0:0:0:0:0:1', '/search/Bu%20Yaz%20Zehra%20Mehmet%20geldi', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1032, '2021-10-06 09:01:16', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js.map', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1033, '2021-10-06 09:01:16', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js.map', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1034, '2021-10-06 09:01:17', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1035, '2021-10-06 09:01:17', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1036, '2021-10-06 09:01:16', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js.map', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1037, '2021-10-06 09:01:18', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css.map', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1038, '2021-10-06 09:02:51', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/10/2', 'anonymousUser', NULL, NULL, 'C5CFFBB4B1A18BC91AD95BA66EF5754B', NULL),
(1039, '2021-10-06 09:05:01', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1040, '2021-10-06 09:05:01', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1041, '2021-10-06 09:05:01', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1042, '2021-10-06 09:05:01', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1043, '2021-10-06 09:05:01', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1044, '2021-10-06 09:05:01', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1045, '2021-10-06 09:05:02', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1046, '2021-10-06 09:05:02', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1047, '2021-10-06 09:05:02', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1048, '2021-10-06 09:05:02', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1049, '2021-10-06 09:05:02', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1050, '2021-10-06 09:06:21', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1051, '2021-10-06 09:06:21', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1052, '2021-10-06 09:06:21', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js.map', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1053, '2021-10-06 09:06:21', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js.map', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1054, '2021-10-06 09:06:21', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js.map', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1055, '2021-10-06 09:06:21', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css.map', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1056, '2021-10-06 09:07:40', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1057, '2021-10-06 09:07:40', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1058, '2021-10-06 09:07:40', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1059, '2021-10-06 09:07:40', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1060, '2021-10-06 09:07:40', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1061, '2021-10-06 09:07:40', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1062, '2021-10-06 09:07:41', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1063, '2021-10-06 09:07:41', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1064, '2021-10-06 09:07:41', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1065, '2021-10-06 09:07:41', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1066, '2021-10-06 09:07:41', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1067, '2021-10-06 09:09:21', '0:0:0:0:0:0:0:1', '/depo/add', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1068, '2021-10-06 09:09:32', '0:0:0:0:0:0:0:1', '/depo/add', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1069, '2021-10-06 09:09:51', '0:0:0:0:0:0:0:1', '/depo/list', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1070, '2021-10-06 09:10:14', '0:0:0:0:0:0:0:1', '/depo/delete/5', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1071, '2021-10-06 09:10:22', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1072, '2021-10-06 09:10:22', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1073, '2021-10-06 09:10:22', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1074, '2021-10-06 09:10:22', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1075, '2021-10-06 09:10:22', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1076, '2021-10-06 09:10:22', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1077, '2021-10-06 09:10:23', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1078, '2021-10-06 09:10:23', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1079, '2021-10-06 09:10:23', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1080, '2021-10-06 09:10:23', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1081, '2021-10-06 09:10:23', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'BC0DB15D124BC9A62B66A8509B0E90A2', NULL),
(1082, '2021-10-06 09:30:17', '0:0:0:0:0:0:0:1', '/buying/add/4', 'anonymousUser', NULL, NULL, 'C5CFFBB4B1A18BC91AD95BA66EF5754B', NULL),
(1083, '2021-10-06 09:33:02', '0:0:0:0:0:0:0:1', '/buying/add/3', 'anonymousUser', NULL, NULL, 'C5CFFBB4B1A18BC91AD95BA66EF5754B', NULL),
(1084, '2021-10-06 09:36:13', '0:0:0:0:0:0:0:1', '/buying/add/3', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1085, '2021-10-06 09:36:43', '0:0:0:0:0:0:0:1', '/buying/add/4', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1086, '2021-10-06 09:38:51', '0:0:0:0:0:0:0:1', '/buying/add/1', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1087, '2021-10-06 09:40:22', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1088, '2021-10-06 09:40:23', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1089, '2021-10-06 09:40:23', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1090, '2021-10-06 09:40:23', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1091, '2021-10-06 09:40:23', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1092, '2021-10-06 09:40:23', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1093, '2021-10-06 09:40:24', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1094, '2021-10-06 09:40:25', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1095, '2021-10-06 09:40:26', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1096, '2021-10-06 09:40:26', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1097, '2021-10-06 09:40:26', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1098, '2021-10-06 09:41:23', '0:0:0:0:0:0:0:1', '/sales/customerPaySale/8/10/2', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1099, '2021-10-06 09:42:22', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1100, '2021-10-06 09:42:30', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1101, '2021-10-06 09:42:56', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1102, '2021-10-06 09:42:56', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1103, '2021-10-06 09:42:56', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1104, '2021-10-06 09:42:56', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1105, '2021-10-06 09:42:56', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1106, '2021-10-06 09:42:56', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1107, '2021-10-06 09:42:57', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1108, '2021-10-06 09:42:57', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1109, '2021-10-06 09:42:57', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1110, '2021-10-06 09:42:57', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1111, '2021-10-06 09:42:57', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '9CD10881F09CB61F03BE2E0EF0260FE4', NULL),
(1112, '2021-10-06 09:44:33', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1113, '2021-10-06 09:44:47', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1114, '2021-10-06 09:45:18', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1115, '2021-10-06 09:45:29', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1116, '2021-10-06 09:45:36', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1117, '2021-10-06 09:45:44', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1118, '2021-10-06 09:46:28', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1119, '2021-10-06 09:46:37', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1120, '2021-10-06 09:46:47', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1121, '2021-10-06 09:46:56', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'FCFE2D53E8662EBF511D7E40F3A30D6F', NULL),
(1122, '2021-10-06 11:00:00', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1123, '2021-10-06 11:00:01', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1124, '2021-10-06 11:00:01', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1125, '2021-10-06 11:00:01', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1126, '2021-10-06 11:00:01', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1127, '2021-10-06 11:00:01', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1128, '2021-10-06 11:00:01', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1129, '2021-10-06 11:00:01', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1130, '2021-10-06 11:00:01', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1131, '2021-10-06 11:00:01', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1132, '2021-10-06 11:00:15', '0:0:0:0:0:0:0:1', '/category/list', 'anonymousUser', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1133, '2021-10-06 11:00:40', '0:0:0:0:0:0:0:1', '/search/Mehmet%20G%C3%B6k', 'anonymousUser', NULL, NULL, 'BCB1B970053A6E5DEBBF9FCB80C3FBC5', NULL),
(1134, '2021-10-06 13:07:15', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1135, '2021-10-06 13:07:29', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1136, '2021-10-06 13:07:40', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1137, '2021-10-06 13:07:47', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1138, '2021-10-06 13:07:53', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1139, '2021-10-06 13:08:06', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1140, '2021-10-06 13:08:52', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1141, '2021-10-06 13:09:00', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1142, '2021-10-06 13:09:09', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1143, '2021-10-06 13:09:18', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1144, '2021-10-06 13:09:25', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, 'D07A4A0946FE44125EB5595286DA877D', NULL),
(1145, '2021-10-06 13:12:41', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1146, '2021-10-06 13:12:42', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1147, '2021-10-06 13:12:42', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1148, '2021-10-06 13:12:42', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1149, '2021-10-06 13:12:42', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1150, '2021-10-06 13:12:42', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1151, '2021-10-06 13:12:43', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1152, '2021-10-06 13:12:43', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1153, '2021-10-06 13:12:44', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1154, '2021-10-06 13:12:44', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1155, '2021-10-06 13:12:44', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1156, '2021-10-06 13:15:04', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1157, '2021-10-06 13:15:59', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1158, '2021-10-06 13:16:05', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1159, '2021-10-06 13:16:11', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1160, '2021-10-06 13:16:17', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1161, '2021-10-06 13:16:25', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1162, '2021-10-06 13:16:31', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1163, '2021-10-06 13:16:38', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1164, '2021-10-06 13:16:42', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1165, '2021-10-06 13:16:45', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1166, '2021-10-06 13:16:45', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1167, '2021-10-06 13:16:45', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1168, '2021-10-06 13:16:45', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1169, '2021-10-06 13:16:45', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1170, '2021-10-06 13:16:45', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1171, '2021-10-06 13:16:45', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1172, '2021-10-06 13:16:45', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1173, '2021-10-06 13:16:45', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1174, '2021-10-06 13:16:46', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1175, '2021-10-06 13:16:53', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1176, '2021-10-06 13:18:20', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1177, '2021-10-06 13:18:26', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1178, '2021-10-06 13:18:32', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1179, '2021-10-06 13:18:39', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1180, '2021-10-06 13:18:45', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1181, '2021-10-06 13:19:14', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1182, '2021-10-06 13:19:21', '0:0:0:0:0:0:0:1', '/redis/add', 'anonymousUser', NULL, NULL, '9F5F4A50654FF881CFB3B4B221B4038B', NULL),
(1183, '2021-10-06 13:21:22', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1184, '2021-10-06 13:21:23', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1185, '2021-10-06 13:21:23', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1186, '2021-10-06 13:21:23', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1187, '2021-10-06 13:21:23', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1188, '2021-10-06 13:21:23', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1189, '2021-10-06 13:21:23', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1190, '2021-10-06 13:21:23', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1191, '2021-10-06 13:21:23', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1192, '2021-10-06 13:21:23', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1193, '2021-10-06 13:21:24', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1194, '2021-10-06 13:21:30', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'E67DFBDC83713CA74CEFC79BA913DA83', NULL),
(1195, '2021-10-06 13:27:50', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1196, '2021-10-06 13:27:52', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1197, '2021-10-06 13:27:52', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1198, '2021-10-06 13:27:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1199, '2021-10-06 13:27:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1200, '2021-10-06 13:27:52', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1201, '2021-10-06 13:27:53', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1202, '2021-10-06 13:27:53', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1203, '2021-10-06 13:27:53', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1204, '2021-10-06 13:27:54', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1205, '2021-10-06 13:27:54', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1206, '2021-10-06 13:28:00', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1207, '2021-10-06 13:29:23', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1208, '2021-10-06 13:29:36', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1209, '2021-10-06 13:29:36', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1210, '2021-10-06 13:29:36', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1211, '2021-10-06 13:29:36', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1212, '2021-10-06 13:29:36', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1213, '2021-10-06 13:29:36', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1214, '2021-10-06 13:29:37', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1215, '2021-10-06 13:29:37', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1216, '2021-10-06 13:29:37', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1217, '2021-10-06 13:29:37', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1218, '2021-10-06 13:29:37', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1219, '2021-10-06 13:37:39', '0:0:0:0:0:0:0:1', '/buying/add/1', 'anonymousUser', NULL, NULL, '48AA07D294AA4E10EB53D0CAC07E07DB', NULL),
(1220, '2021-10-06 13:51:40', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1221, '2021-10-06 13:51:41', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1222, '2021-10-06 13:51:41', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1223, '2021-10-06 13:51:41', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1224, '2021-10-06 13:51:41', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1225, '2021-10-06 13:51:41', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1226, '2021-10-06 13:51:42', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1227, '2021-10-06 13:51:42', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1228, '2021-10-06 13:51:42', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1229, '2021-10-06 13:51:42', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1230, '2021-10-06 13:51:42', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1231, '2021-10-06 13:57:18', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1232, '2021-10-06 13:58:19', '0:0:0:0:0:0:0:1', '/product/updateStock', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1233, '2021-10-06 14:03:34', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1234, '2021-10-06 14:05:04', '0:0:0:0:0:0:0:1', '/animal/add', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1235, '2021-10-06 14:06:06', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1236, '2021-10-06 14:06:06', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1237, '2021-10-06 14:06:06', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1238, '2021-10-06 14:06:06', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1239, '2021-10-06 14:06:06', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1240, '2021-10-06 14:06:06', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1241, '2021-10-06 14:06:07', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1242, '2021-10-06 14:06:07', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1243, '2021-10-06 14:06:07', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1244, '2021-10-06 14:06:07', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1245, '2021-10-06 14:06:07', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1246, '2021-10-06 14:07:18', '0:0:0:0:0:0:0:1', '/product/listDepoStock/1', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1247, '2021-10-06 14:20:34', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'C514A5D4682A8F2B3CDB2FFF8BBDC338', NULL),
(1248, '2021-10-06 14:33:30', '0:0:0:0:0:0:0:1', '/redis/list', 'anonymousUser', NULL, NULL, 'F772CF6CBACCE38DB3D0F968594FDD7B', NULL),
(1249, '2021-10-06 14:54:27', '0:0:0:0:0:0:0:1', '/agenda/list', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '5DD30707BAF69C13A5EE1497865ACB10', 'Yuri'),
(1250, '2021-10-06 15:18:59', '0:0:0:0:0:0:0:1', '/customer/list/0', 'lale@mail.com', 'Lale', '', 'EC8E8FB48A22EA6EE4D8A662D06363FC', 'Gök'),
(1251, '2021-10-06 15:19:19', '0:0:0:0:0:0:0:1', '/password/add/lale@mail.com', 'lale@mail.com', 'Lale', '', 'EC8E8FB48A22EA6EE4D8A662D06363FC', 'Gök'),
(1252, '2021-10-06 15:19:38', '0:0:0:0:0:0:0:1', '/customer/list/0', 'lale@mail.com', 'Lale', '', '0301DD4DE231675A40489A4550B58E4B', 'Gök'),
(1253, '2021-10-06 15:26:41', '0:0:0:0:0:0:0:1', '/customer/list/0', 'okan@mail.com', 'Okan', 'ROLE_ADMIN', '0301DD4DE231675A40489A4550B58E4B', 'Can'),
(1254, '2021-10-06 15:26:55', '0:0:0:0:0:0:0:1', '/customer/list/0', 'okan@mail.com', 'Okan', 'ROLE_ADMIN', '0301DD4DE231675A40489A4550B58E4B', 'Can'),
(1255, '2021-10-06 15:27:31', '0:0:0:0:0:0:0:1', '/password/add/okan@mail.com', 'okan@mail.com', 'Okan', 'ROLE_ADMIN', '0301DD4DE231675A40489A4550B58E4B', 'Can'),
(1256, '2021-10-06 15:27:36', '0:0:0:0:0:0:0:1', '/password/add/okan@mail.com', 'okan@mail.com', 'Okan', 'ROLE_ADMIN', '0301DD4DE231675A40489A4550B58E4B', 'Can'),
(1257, '2021-10-06 15:27:42', '0:0:0:0:0:0:0:1', '/password/add/okan@mail.com', 'okan@mail.com', 'Okan', 'ROLE_ADMIN', '0301DD4DE231675A40489A4550B58E4B', 'Can'),
(1258, '2021-10-06 15:27:48', '0:0:0:0:0:0:0:1', '/password/add/okan@mail.com', 'okan@mail.com', 'Okan', 'ROLE_ADMIN', '0301DD4DE231675A40489A4550B58E4B', 'Can'),
(1259, '2021-10-06 15:27:49', '0:0:0:0:0:0:0:1', '/password/add/okan@mail.com', 'okan@mail.com', 'Okan', 'ROLE_ADMIN', '0301DD4DE231675A40489A4550B58E4B', 'Can'),
(1260, '2021-10-06 15:27:58', '0:0:0:0:0:0:0:1', '/password/add/okan@mail.com', 'okan@mail.com', 'Okan', 'ROLE_ADMIN', '0301DD4DE231675A40489A4550B58E4B', 'Can'),
(1261, '2021-10-06 15:28:43', '0:0:0:0:0:0:0:1', '/agenda/list', 'm@mail.com', 'Merve', 'ROLE_ADMIN', '2A05D3E67FB6A5BE3EEF698435C47004', 'Yuri'),
(1262, '2021-10-06 15:29:35', '0:0:0:0:0:0:0:1', '/search/Bu%20Yaz%20Zehra%20Mehmet%20geldi', 'veli@mail.com', 'Veli', 'ROLE_CUSTOMER', '2A05D3E67FB6A5BE3EEF698435C47004', 'Yaz'),
(1263, '2021-10-06 15:31:25', '0:0:0:0:0:0:0:1', '/product/addProduct', 'veli@mail.com', 'Veli', 'ROLE_CUSTOMER', '2A05D3E67FB6A5BE3EEF698435C47004', 'Yaz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `new_case`
--

CREATE TABLE `new_case` (
  `case_id` int(11) NOT NULL,
  `case_name` varchar(255) DEFAULT NULL,
  `case_status` bit(1) NOT NULL,
  `case_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `new_case`
--

INSERT INTO `new_case` (`case_id`, `case_name`, `case_status`, `case_type`) VALUES
(1, 'A', b'1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pet_stock`
--

CREATE TABLE `pet_stock` (
  `psid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `depo` int(11) NOT NULL,
  `pet_vac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `pet_stock`
--

INSERT INTO `pet_stock` (`psid`, `amount`, `depo`, `pet_vac`) VALUES
(1, 150, 1, 1),
(2, 100, 1, 2),
(3, 0, 0, 1),
(5, 75, 1, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pet_vaccine`
--

CREATE TABLE `pet_vaccine` (
  `pet_vaccine_id` int(11) NOT NULL,
  `category_group_cg_id` int(11) NOT NULL,
  `pet_vaccine_amount_fixed` bit(1) NOT NULL,
  `pet_vaccine_barcode` int(11) NOT NULL,
  `pet_vaccine_buying` int(11) NOT NULL,
  `pet_vaccine_buying_kdv` bit(1) NOT NULL,
  `pet_vaccine_code` int(11) NOT NULL,
  `pet_vaccine_kdv` int(11) NOT NULL,
  `pet_vaccine_name` varchar(255) DEFAULT NULL,
  `pet_vaccine_number` int(11) NOT NULL,
  `pet_vaccine_sales` int(11) NOT NULL,
  `pet_vaccine_sales_kdv` bit(1) NOT NULL,
  `pet_vaccine_status` bit(1) NOT NULL,
  `pet_vaccine_stock` int(11) NOT NULL,
  `pet_vaccine_tip` varchar(255) DEFAULT NULL,
  `pet_vaccine_type` varchar(255) DEFAULT NULL,
  `pet_vaccine_unit` varchar(255) DEFAULT NULL,
  `vendor_vid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `pet_vaccine`
--

INSERT INTO `pet_vaccine` (`pet_vaccine_id`, `category_group_cg_id`, `pet_vaccine_amount_fixed`, `pet_vaccine_barcode`, `pet_vaccine_buying`, `pet_vaccine_buying_kdv`, `pet_vaccine_code`, `pet_vaccine_kdv`, `pet_vaccine_name`, `pet_vaccine_number`, `pet_vaccine_sales`, `pet_vaccine_sales_kdv`, `pet_vaccine_status`, `pet_vaccine_stock`, `pet_vaccine_tip`, `pet_vaccine_type`, `pet_vaccine_unit`, `vendor_vid`) VALUES
(1, 1, b'0', 66, 50, b'1', 2, 8, 'Gençlik Aşısı', 2, 100, b'1', b'1', 100, '3', '', '1', 3),
(3, 1, b'0', 6, 200, b'1', 6, 1, 'Pet Aşı 2', 2, 250, b'0', b'0', 50, '1', '1', '2', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_group_cg_id` int(11) NOT NULL,
  `product_amount_fixed` bit(1) NOT NULL,
  `product_barcode` int(11) NOT NULL,
  `product_buying` int(11) NOT NULL,
  `product_buying_kdv` bit(1) NOT NULL,
  `product_code` int(11) NOT NULL,
  `product_kdv` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_sales` int(11) NOT NULL,
  `product_sales_kdv` bit(1) NOT NULL,
  `product_status` bit(1) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `product_unit` varchar(255) DEFAULT NULL,
  `vendor_vid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`product_id`, `category_group_cg_id`, `product_amount_fixed`, `product_barcode`, `product_buying`, `product_buying_kdv`, `product_code`, `product_kdv`, `product_name`, `product_sales`, `product_sales_kdv`, `product_status`, `product_stock`, `product_type`, `product_unit`, `vendor_vid`) VALUES
(1, 1, b'0', 2, 20, b'0', 5, 8, 'Sargı Bezi', 25, b'1', b'1', 50, '2', '1', 1),
(2, 1, b'1', 9, 50, b'0', 1, 8, 'Gençlik Aşısı', 100, b'0', b'1', 100, '2', '3', 4),
(3, 3, b'0', 32, 100, b'1', 3, 18, 'Ağrı Kesici', 150, b'1', b'1', 13, '2', '1', 4),
(8, 3, b'0', 34, 150, b'0', 34, 8, 'Oyuncak', 200, b'1', b'0', 30, '3', '2', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `retail_sale`
--

CREATE TABLE `retail_sale` (
  `rid` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `sale_date` datetime DEFAULT NULL,
  `sale_process` int(11) NOT NULL,
  `saletotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `retail_sale`
--

INSERT INTO `retail_sale` (`rid`, `product_name`, `sale_date`, `sale_process`, `saletotal`) VALUES
(1, 'Sargı Bezi', '2021-09-25 03:00:00', 1, 230),
(2, 'Gençlik Aşısı', '2021-09-25 03:00:00', 1, 460),
(3, NULL, '2020-02-02 03:00:00', 1, 0),
(4, '1', '2020-02-02 03:00:00', 1, 0),
(5, 'Sargı Bezi', '2020-02-02 03:00:00', 1, 115);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_CUSTOMER'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_DOCTOR'),
(4, 'ROLE_SECRETARY');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `schedule_calendar`
--

CREATE TABLE `schedule_calendar` (
  `sid` int(11) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `calendar_id` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `drag_bg_color` varchar(255) DEFAULT NULL,
  `due_date_class` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `is_all_day` bit(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `raw` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `schedule_calendar`
--

INSERT INTO `schedule_calendar` (`sid`, `bg_color`, `border_color`, `calendar_id`, `category`, `color`, `drag_bg_color`, `due_date_class`, `end`, `id`, `is_all_day`, `location`, `raw`, `start`, `state`, `title`) VALUES
(7, '#00a9ff', '#00a9ff', '2', 'time', '#ffffff', '#00a9ff', '', 'Wed Sep 22 2021 14:30:00 GMT+0300 (GMT+03:00)', 'daaa0fc1-05d0-5ec3-aec0-838d89598677', b'0', 'İstanbul', 'public', 'Wed Sep 22 2021 13:30:00 GMT+0300 (GMT+03:00)', 'Busy', 'İlaç'),
(8, '#ffbb3b', '#ffbb3b', '4', 'time', '#ffffff', '#ffbb3b', '', 'Thu Sep 23 2021 18:30:00 GMT+0300 (GMT+03:00)', '95995834-5bb3-5e2e-b981-21aa0616035f', b'0', 'İstanbul', 'public', 'Thu Sep 23 2021 12:00:00 GMT+0300 (GMT+03:00)', 'Busy', 'Sinema'),
(9, '#ffbb3b', '#ffbb3b', '4', 'allday', '#ffffff', '#ffbb3b', '', 'Fri Sep 24 2021 23:59:59 GMT+0300 (GMT+03:00)', '67cbcf88-fd67-5d8e-87ff-0118b5bf70fb', b'1', 'İstanbul', 'public', 'Fri Sep 24 2021 00:00:00 GMT+0300 (GMT+03:00)', 'Free', 'Tatil'),
(11, '#bbdc00', '#bbdc00', '3', 'time', '#ffffff', '#bbdc00', '', 'Sat Sep 25 2021 12:30:00 GMT+0300 (GMT+03:00)', '71ca5538-8193-5467-aeb3-c8b8ad693f3d', NULL, 'poopo', 'public', 'Sat Sep 25 2021 09:00:00 GMT+0300 (GMT+03:00)', 'Busy', 'Hasta Randevu'),
(12, '#9e5fff', '#9e5fff', '1', 'time', '#ffffff', '#9e5fff', '', 'Wed Sep 08 2021 16:00:00 GMT+0300 (GMT+03:00)', 'a321b251-ad9a-5743-a9c8-65ab6559b115', b'0', 'Veteriner Kliniği', 'public', 'Wed Sep 08 2021 15:00:00 GMT+0300 (GMT+03:00)', 'Busy', 'Mutlu Kontrol'),
(13, '#9e5fff', '#9e5fff', '1', 'allday', '#ffffff', '#9e5fff', '', 'Wed Sep 22 2021 23:59:59 GMT+0300 (GMT+03:00)', '95fe8f82-d321-584b-857d-242246eb28d3', b'1', 'Veteriner Kliniği', 'public', 'Wed Sep 22 2021 00:00:00 GMT+0300 (GMT+03:00)', 'Busy', 'Mutlu Kontrol');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stock`
--

CREATE TABLE `stock` (
  `sid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `depo` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `stock`
--

INSERT INTO `stock` (`sid`, `amount`, `depo`, `product`) VALUES
(1, 10, 1, 9),
(2, 120, 1, 2),
(3, 50, 1, 3),
(5, 20, 1, 1),
(6, 40, 1, 8),
(7, 10, 1, 8),
(8, 20, 1, 9),
(11, 50, 1, 8),
(12, 10, 1, 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `token_expired` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `enabled`, `first_name`, `last_name`, `password`, `phone`, `status`, `token_expired`) VALUES
(1, 'ali@gmail.com', b'1', 'Ali', 'Bilmem', '$2a$10$5t7qan6D0RCA6EvEoT8Sl.ztIQnN6vkpbDKTATYiJOsQp5KpQiOoO', NULL, b'0', b'1'),
(2, 'veli@mail.com', b'1', 'Veli', 'Yaz', '$2a$10$QwOUJGsTUheHwQZN9XTGeeUTEz3VvW2IEs3wLeLh3kdpGjFxanEpW', NULL, b'0', b'1'),
(3, 'can@mail.com', b'1', 'Can', 'Za', '$2a$10$54dGCzkmmTsLMO.8DJVz6erCbuXLjsw2JyNeHt5CHJFqmBrDtF1aa', '111111111', b'0', b'1'),
(4, 'az@mail.com', b'1', 'Ali', 'Can', '$2a$10$QDk0P3/6sljNSXv03agQ8up2nIixsjcGDl48FEkif9SKp/4Dq5vzq', '9999999', b'0', b'1'),
(5, 'm@mail.com', b'1', 'Merve', 'Yuri', '$2a$10$x/kTgXLF5cVb1EVNXlwnRuuSnJy9JXXA.pSbKtWNDhf2093srDNbS', '333333', b'0', b'1'),
(6, 'p@mail.com', b'1', 'Pınar', 'Y', '$2a$10$DIZoJs/xFo69r/O16S5BkOjq94e0QfJOdWAyjA0wGvg2zeAbr5WX2', '998989', b'0', b'1'),
(7, 'serkan@mail.com', b'1', 'Serkan', 'Say', '$2a$10$vLmVoRry5rKmr.RA78z0m.3s3f/HFzwCXyTMbOQ0XD3HbnU8EdN1y', '95115945', b'0', b'1'),
(11, 'gok@mail.com', b'1', 'Özge', 'Gök', '$2a$10$jODmCeZUZ6VgYv79BoMIlOU2jkDlFukP2t.Uh0Cc/m.im7f61NtOa', '6541541', b'1', b'1'),
(12, 'mmmmmmmm@mail.com', b'1', 'Mehmet', 'Gök', '$2a$10$QW6sY8onEHD7gK0MCMILqOe8ccpAHmE4MVvNYKFu8/IzJfxvZtZBW', '6541541', b'1', b'1'),
(13, 'lale@mail.com', b'1', 'Lale', 'Gök', '$2a$10$IjOqyV82heD0cma1FgkoeeN5Rjoa7aNQZiHVtzLyNb9MuSM/SZ6mK', '6541541', b'1', b'1'),
(14, 'okan@mail.com', b'1', 'Okan', 'Can', '$2a$10$4IkMdvgXi5Lk6jsl0m81SudAJ8P/q4Bc4iis4YMZrszAJpkEMFgHe', '6541541', b'1', b'1'),
(15, 'f@mail.com', b'1', 'Filiz', 'Can', '$2a$10$qqTXibnEQUeJwinlUjUVBOSIrMfnTRjJiecXM8JtCeTcrhfRkMB8i', '6541541', b'1', b'1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 4),
(5, 2),
(6, 3),
(7, 2),
(11, 1),
(14, 2),
(15, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `vendor_email` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `vendor_phone` varchar(255) DEFAULT NULL,
  `vid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `vendor`
--

INSERT INTO `vendor` (`id`, `vendor_email`, `vendor_name`, `vendor_phone`, `vid`) VALUES
(1, 'kerem@mail.com', 'A', '4864864865', 0),
(3, 'cnn@mail.com', 'Canan', '888888', 0),
(4, 'erkan@mail.com', 'Erkan', '555555', 0),
(5, 'zzzz@mail.com', 'Zeki', '95959', 0),
(6, 'z@mail.com', 'Zeynep', '555555', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`aid`);

--
-- Tablo için indeksler `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`aid`);

--
-- Tablo için indeksler `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`box_id`);

--
-- Tablo için indeksler `box_customer`
--
ALTER TABLE `box_customer`
  ADD PRIMARY KEY (`bc_id`);

--
-- Tablo için indeksler `buying`
--
ALTER TABLE `buying`
  ADD PRIMARY KEY (`bid`);

--
-- Tablo için indeksler `calendar_info`
--
ALTER TABLE `calendar_info`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `category_group`
--
ALTER TABLE `category_group`
  ADD PRIMARY KEY (`cg_id`);

--
-- Tablo için indeksler `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `customer_pay_sale`
--
ALTER TABLE `customer_pay_sale`
  ADD PRIMARY KEY (`cp_id`);

--
-- Tablo için indeksler `depo`
--
ALTER TABLE `depo`
  ADD PRIMARY KEY (`depo_id`);

--
-- Tablo için indeksler `farm_stock`
--
ALTER TABLE `farm_stock`
  ADD PRIMARY KEY (`fsid`);

--
-- Tablo için indeksler `farm_vaccine`
--
ALTER TABLE `farm_vaccine`
  ADD PRIMARY KEY (`farm_vaccine_id`);

--
-- Tablo için indeksler `laboratuvar`
--
ALTER TABLE `laboratuvar`
  ADD PRIMARY KEY (`lid`);

--
-- Tablo için indeksler `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Tablo için indeksler `new_case`
--
ALTER TABLE `new_case`
  ADD PRIMARY KEY (`case_id`);

--
-- Tablo için indeksler `pet_stock`
--
ALTER TABLE `pet_stock`
  ADD PRIMARY KEY (`psid`);

--
-- Tablo için indeksler `pet_vaccine`
--
ALTER TABLE `pet_vaccine`
  ADD PRIMARY KEY (`pet_vaccine_id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Tablo için indeksler `retail_sale`
--
ALTER TABLE `retail_sale`
  ADD PRIMARY KEY (`rid`);

--
-- Tablo için indeksler `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `schedule_calendar`
--
ALTER TABLE `schedule_calendar`
  ADD PRIMARY KEY (`sid`);

--
-- Tablo için indeksler `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`sid`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`);

--
-- Tablo için indeksler `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `agenda`
--
ALTER TABLE `agenda`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `animal`
--
ALTER TABLE `animal`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `box`
--
ALTER TABLE `box`
  MODIFY `box_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `box_customer`
--
ALTER TABLE `box_customer`
  MODIFY `bc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `buying`
--
ALTER TABLE `buying`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `calendar_info`
--
ALTER TABLE `calendar_info`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `category_group`
--
ALTER TABLE `category_group`
  MODIFY `cg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `customer_pay_sale`
--
ALTER TABLE `customer_pay_sale`
  MODIFY `cp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `depo`
--
ALTER TABLE `depo`
  MODIFY `depo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `farm_stock`
--
ALTER TABLE `farm_stock`
  MODIFY `fsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `farm_vaccine`
--
ALTER TABLE `farm_vaccine`
  MODIFY `farm_vaccine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `laboratuvar`
--
ALTER TABLE `laboratuvar`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1264;

--
-- Tablo için AUTO_INCREMENT değeri `new_case`
--
ALTER TABLE `new_case`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `pet_stock`
--
ALTER TABLE `pet_stock`
  MODIFY `psid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `pet_vaccine`
--
ALTER TABLE `pet_vaccine`
  MODIFY `pet_vaccine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `retail_sale`
--
ALTER TABLE `retail_sale`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `schedule_calendar`
--
ALTER TABLE `schedule_calendar`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `stock`
--
ALTER TABLE `stock`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
