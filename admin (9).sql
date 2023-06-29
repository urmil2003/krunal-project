-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 18, 2023 at 06:42 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtocart`
--

CREATE TABLE IF NOT EXISTS `addtocart` (
  `ac_id` int(5) NOT NULL AUTO_INCREMENT,
  `p_id` int(5) NOT NULL,
  `c_id` int(10) DEFAULT NULL,
  `ac_date` date DEFAULT NULL,
  `pro_qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`ac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('kitebeauty', 'kitebeauty@123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `a_id` int(10) NOT NULL AUTO_INCREMENT,
  `a_date` date DEFAULT NULL,
  `s_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `isaccept` int(10) NOT NULL,
  `response` text,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`a_id`, `a_date`, `s_id`, `c_id`, `isaccept`, `response`) VALUES
(1, '2022-12-08', 1, 4, 1, 'accept your request'),
(2, '2022-12-08', 1, 4, 1, 'accept your request'),
(3, '2023-01-04', 1, 0, 1, 'yes'),
(4, '2023-01-05', 1, 1, 1, 'yes'),
(5, '2023-01-05', 1, 1, 1, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) DEFAULT NULL,
  `c_password` varchar(15) DEFAULT NULL,
  `c_address` text,
  `c_phone` decimal(10,0) DEFAULT NULL,
  `c_email` varchar(20) DEFAULT NULL,
  `c_gender` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `c_password`, `c_address`, `c_phone`, `c_email`, `c_gender`) VALUES
(6, 'Nidhi', 'nidhi@123', 'nikol', '972595231', 'nidhi07@gmail.com', 'female'),
(7, 'Nidhi', 'nidhi@123', 'nikol', '9725965231', 'nidhi07@gmail.com', 'female'),
(8, 'dhruvi', 'dhruvii@123', 'naroda', '9725956231', 'dhruvi07@gmail.com', 'female'),
(9, 'krupa', 'krupa@123', 'nikol', '9712473435', 'krupa@gmail.com', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `e_id` int(5) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(5) DEFAULT NULL,
  `e_add` text,
  `e_phone` decimal(10,0) DEFAULT NULL,
  `e_email` varchar(10) DEFAULT NULL,
  `e_password` varchar(10) DEFAULT NULL,
  `e_desgination` int(20) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `e_name`, `e_add`, `e_phone`, `e_email`, `e_password`, `e_desgination`) VALUES
(1, 'Dhruv', 'nikol', '98255', 'dhruvi07@g', 'dhruvi&@12', 0),
(2, 'Avin', 'Narol', '93272', 'avi12@gmai', 'avi$@123)}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `f_id` int(5) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `f_date` date DEFAULT NULL,
  `f_review` text,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `c_id`, `f_date`, `f_review`) VALUES
(5, 0, '2022-10-10', '-'),
(7, 0, '2022-10-10', '-');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `od_id` int(10) NOT NULL,
  `om_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordermaster`
--

CREATE TABLE IF NOT EXISTS `ordermaster` (
  `om_id` int(10) NOT NULL AUTO_INCREMENT,
  `om_date` date DEFAULT NULL,
  `c_id` int(10) DEFAULT NULL,
  `om_amount` int(10) DEFAULT NULL,
  `cgst` int(10) DEFAULT NULL,
  `sgst` int(10) DEFAULT NULL,
  `total_amount` int(10) DEFAULT NULL,
  `om_status` int(10) DEFAULT NULL,
  PRIMARY KEY (`om_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `pm_id` int(5) NOT NULL AUTO_INCREMENT,
  `o_id` int(5) DEFAULT NULL,
  `pm_type` varchar(15) DEFAULT NULL,
  `c_id` int(10) NOT NULL,
  `pm_date` date DEFAULT NULL,
  `pm_amount` int(10) DEFAULT NULL,
  PRIMARY KEY (`pm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pm_id`, `o_id`, `pm_type`, `c_id`, `pm_date`, `pm_amount`) VALUES
(3, 1, 'online', 0, NULL, NULL),
(4, 2, 'cash', 0, NULL, NULL),
(5, 0, 'online', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `p_id` int(5) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(30) DEFAULT NULL,
  `p_desc` text,
  `p_price` decimal(5,0) DEFAULT NULL,
  `pro_qty` varchar(30) DEFAULT NULL,
  `pc_id` int(10) DEFAULT NULL,
  `imagename` text,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_desc`, `p_price`, `pro_qty`, `pc_id`, `imagename`) VALUES
(29, 'Fascial Kit', 'Revive your distressed face with the instantaneous glow of fascial kit', '299', '3', 1, NULL),
(30, 'Body Lotion ', 'shea butter linolenic acid & sodium pca to relieve and soothe skin while moisturizing for 24 hours to provide lasting protection and skin hydration', '299', '5', 1, NULL),
(31, 'Bleach cream', 'for perfect glow an unmatched formulation with goodness of aloevera,lemon naturally crafted with toning and hydrating wonders,it\n', '769', '1', 1, NULL),
(32, 'Face powder', '100% natural zero chemical face wash made from raw rose petal powder for well hydrated younger looking skin', '455', '2', 1, NULL),
(33, 'hair growth stimulants', 'shampoos are usually sold in liquid format most commonly in bootles containing enough shampoo for several hair washes', '479', '1', 1, NULL),
(34, 'Lipstick', 'comfortable intense high pay off and high shine formula', '255', '4', 1, NULL),
(37, 'Body Lotion ', 'shea butter linolenic acid & sodium pca to relieve and soothe skin while moisturizing for 24 hours to provide lasting protection and skin hydration', '569', '1', 2, NULL),
(38, 'Bleach cream', 'for perfect glow an unmatched formulation with goodness of aloevera,lemon naturally crafted with toning and hydrating wonders,it\r\n', '299', '5', 2, NULL),
(39, 'hair growth stimulants', 'shampoos are usually sold in liquid format most commonly in bootles containing enough shampoo for several hair washes', '670', '2', 2, NULL),
(41, 'Face powder', '100% naturally zero chemical face wash made from raw rose petal powder for we;; hydrated younger lookin skin', '699', '5', 2, NULL),
(43, 'shampoo', '100%naturally', '344', '1', 2, 'productimage/hairshampooimage.jpg'),
(45, 'Lipstick', '', '290', '', 4, 'productimage/lipstickimage.jpg'),
(46, 'hairncare', 'abcd', '299', '3', 4, NULL),
(49, 'Aloe Vera', 'Aloe vera plants have medicinal properties and hence are widely used in treating the burns cuts insect bites and several other skin ailments\r\n', '299', '2', 8, 'productimage/bodylotionimage.jpg'),
(50, 'Soft Jel ', '', '1000', '2', 12, 'productimage/nailproductimage.jpg'),
(51, 'soft Gel', 'Nail polish (also known as nail varnish or nail enamel) is a lacquer that can be applied to the human fingernail or toenails to decorate and protect the nail plates. The formula has been revised repeatedly to enhance its decorative properties and to suppress cracking or peeling.', '1200', '1', 8, 'productimage/nailproductimage.jpg'),
(52, 'Aroma Magic Grapefruite Face W', 'The Aroma Magic face wash is enriched with natural ingredients like Lemon, Aloe Vera, Neroli, and Grapefruit extracts that help tighten pores and mattify oily skin. It also reduces oil and pigmentation, leaving your skin feeling refreshed.', '399', '5', 8, 'productimage/hairconditionerimage.jpg'),
(53, 'mat Lipstick', 'Mattes are smooth and sultry, and offers long-lasting, smudge-proof and waterproof color that is often not possible with classic lipsticks that tend to wear off from eating, drinking, smooching, and general living.', '585', '2', 8, 'productimage/lipstickimage.jpg'),
(54, 'Papaya Fascial Kit', 'Papaya facial is beneficial for dark complexion skin, especially for those who have patchy skin, blemishes, and pigmentation. It helps to reduce the melanin deposit and lightens dark spots. The natural goodness of the ingredients works their magic on your skin, leaving you looking gorgeously refreshed.', '799', '3', 8, 'productimage/28778915-5491-4029-9f9e-1ee4462d213f.jpg'),
(55, 'lorial', 'dfgh', '299', '55', 13, 'productimage/lipstick1image.jpg'),
(56, 'Lipstick', 'Cosmetic such as lipstick or product applied to the face used to enhance or alter the appearance', '120', '1', 14, 'productimage/lipstickimage.jpg'),
(57, 'Bleach cream', 'Bleach is the generic name for any chemical product that is used industrially or domestically to remove color from a fabric or fiber or to clean or to remove stains in a process called bleaching.', '1200', '3', 14, 'productimage/28778915-5491-4029-9f9e-1ee4462d213f.jpg'),
(58, 'Nail extension', 'Nail polish (also known as nail varnish or nail enamel) is a lacquer that can be applied to the human fingernail or toenails to decorate and protect the nail plates. The formula has been revised repeatedly to enhance its decorative properties and to suppress cracking or peeling.', '399', '2', 14, 'productimage/nailproductimage.jpg'),
(59, 'Fascial Kit', 'A facial cleanser is a skincare product used to remove make-up, dead skin cells, oil, dirt, and other types of pollutants from the skin, helping to keep pores clear and prevent skin conditions such as acne.', '399', '4', 14, 'productimage/fascialimage.jpg'),
(60, 'lorial', 'abcd', '566', '2', 15, 'productimage/bodylotionimage.jpg'),
(61, 'lorial', 'abcd', '299', '', 17, NULL),
(62, 'lorial', 'xcvbn', '399', '2', 7, 'productimage/28778915-5491-4029-9f9e-1ee4462d213f.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE IF NOT EXISTS `productcategory` (
  `pc_id` int(10) NOT NULL AUTO_INCREMENT,
  `pc_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`pc_id`, `pc_name`) VALUES
(7, 'fascial kit'),
(9, 'Lipstick'),
(12, 'Nail Extension'),
(13, 'Face Wash'),
(14, 'Bleach face'),
(15, 'hair oil');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `s_id` int(5) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(30) DEFAULT NULL,
  `s_desc` text,
  `s_price` decimal(5,0) DEFAULT NULL,
  `sc_id` int(5) DEFAULT NULL,
  `simagename` text,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`s_id`, `s_name`, `s_desc`, `s_price`, `sc_id`, `simagename`) VALUES
(1, 'Simple Makeup', '-', '240', 1, '0'),
(2, 'hair spa', 'dfghjk', '299', 1, NULL),
(4, 'Full face wax ', ' The full face waxing service consists of hair being removed from your eyebrows, lip, cheeks, sideburns, chin, and nose. The entire hair follicle is removed when being waxed out and results in a much smoother feel than shaving. Waxing is also a natural exfoliant which helps keep dead skin cells at bay', '520', 2, NULL),
(6, 'Facial ', ' Fascia is made up of sheets of connective tissue that is found below the skin. These tissues attach, stabilize, impart strength, maintain vessel patency, separate muscles, and enclose different organs. Traditionally, the word fascia was used primarily by surgeons to describe the dissectible tissue seen in the body encasing other organs, muscles, and bones.', '420', 2, NULL),
(7, 'Bleach ', 'Bleach - Bleaching is a treatment used to lighten the skin. Skin lightening products other than bleach includes, fading creams, skin brighteners and whiteners. Bleach works by reducing the natural pigment in the skin called melanin. This pigment is responsible for creating dark hues on', '320', 2, NULL),
(8, 'Hair cutting', 'Hair spa - A hair spa is a salon treatment that helps to repair and rejuvenate your dull and lifeless tresses. It majorly consists of four steps - oil massaging, shampoo, hair mask, and conditioning. The whole process relaxes your scalp and leaves your hair soft and smooth.', '200', 2, NULL),
(9, 'hair spa', 'dfghj', '290', 6, NULL),
(10, 'hair spa', 'dfgh', '298', 5, NULL),
(12, 'Face & Nack Bleach', 'Bleach is the generic name for any chemical product that is used industrially or domestically to remove color from a fabric or fiber or to clean or to remove stains in a process called bleaching.', '550', 12, NULL),
(13, 'Had Massage', 'A head massage feels fabulous. In addition to the sensory pleasure it offers, a head massage may ease symptoms of a headache, reduce stress, and possibly boost hair growth, too.', '600', 12, NULL),
(14, 'Aloe Vera Fascial', 'Aloe vera is a herb with succulent leaves that are arranged in a rosette. The leaves are grey to green and sometimes have white spots on their surfaces.', '299', 12, NULL),
(16, 'U Cut', 'U-shape haircut is similar to a V-shape haircut in that they both involve the middle of your hair being longer than the sides.', '399', 12, NULL),
(17, 'Bridal Make-up', 'Bridal makeup is an essential part of the wedding planning process and designing the perfect look for your wedding day is my number one priority.', '599', 12, NULL),
(19, 'Bridal Make-up', 'Bridal makeup is an essential part of the wedding planning process and designing the perfect look for your wedding day is my number one priority.', '540', 11, 'serviceimage/hairshampooimage.jpg'),
(20, 'hair spa', 'abcd', '290', 14, 'serviceimage/lipstickimage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `servicecategory`
--

CREATE TABLE IF NOT EXISTS `servicecategory` (
  `sc_id` int(10) NOT NULL AUTO_INCREMENT,
  `sc_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `servicecategory`
--

INSERT INTO `servicecategory` (`sc_id`, `sc_name`) VALUES
(8, 'Facial'),
(9, 'Hair Cutting'),
(10, 'Make Up'),
(11, 'Body wax');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
