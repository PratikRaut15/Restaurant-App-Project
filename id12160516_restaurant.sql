-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 07, 2020 at 06:33 AM
-- Server version: 10.3.16-MariaDB
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
-- Database: `id12160516_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE `Customers` (
  `id` int(11) NOT NULL,
  `tableno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `food` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fprice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`id`, `tableno`, `food`, `fprice`, `quantity`) VALUES
(10, 'Table 2', 'Chicken Wings', '204', '5'),
(11, 'Table 2', 'Hakka NOodles(Half/Full)', '139', '7'),
(14, 'Table 2', 'Schezwan Noodles(Half/Full)', '149', '6'),
(15, 'Table 2', 'Roasted papad', '15', '2'),
(16, 'Table 2', 'Roasted papad', '15', '2'),
(22, 'Table 6', 'Masala papad', '25', '2'),
(23, 'Table 6', 'Roasted papad', '15', '1'),
(24, 'Table 6', 'Fried papad', '20', '1'),
(25, 'Table 6', 'Cream of tomato', '99', '1'),
(30, 'Table 1', 'Lemon Coriander', '99', '1'),
(31, 'Table 1', 'Veg Manchow', '99', '1');

-- --------------------------------------------------------

--
-- Table structure for table `foodlist`
--

CREATE TABLE `foodlist` (
  `id` int(11) NOT NULL,
  `items` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `foodlist`
--

INSERT INTO `foodlist` (`id`, `items`, `price`) VALUES
(1, 'Roasted papad', '15'),
(2, 'Fried papad', '20'),
(3, 'Masala papad', '25'),
(4, 'Cream of tomato', '99'),
(5, 'Lemon Coriander', '99'),
(6, 'Veg Manchow', '99'),
(7, 'Hot and Sour', '99'),
(8, 'Cream of Mushroom', '99'),
(9, 'Chicken clear Soup', '120'),
(10, 'Chicken Manchow Soup', '120'),
(11, 'Chicken hot & sour soup', '120'),
(13, 'Khatta Karara Aloo', '129'),
(14, 'Crispy Corn', '129'),
(15, 'Chilly Corn', '129'),
(16, 'American Cheese Balls', '179'),
(17, 'Hara Bhara Kabab', '149'),
(18, 'Finger Chips', '89'),
(19, 'Paneer Pakoda', '149'),
(20, 'Mix Veg. Pakoda', '129'),
(21, 'Gobhi Chilly', '129'),
(22, 'Gobhi 65', '129'),
(23, 'Kaju Fry', '249'),
(24, 'Egg Pakoda', '84'),
(25, 'Chicken Fry', '184'),
(26, 'Chicken Bhuna', '184'),
(27, 'Chicken Wings', '204'),
(28, 'Paneer Tikka', '199'),
(29, 'Paneer Achari Tikka', '199'),
(30, 'Paneer Hariyali Tikka', '199'),
(31, 'Veg. Seekh Kebab', '199'),
(32, 'Pahadi Paneer Tikka', '229'),
(33, 'Paneer Malai Tikka', '229'),
(34, 'Paneer Afghani Tikka', '229'),
(35, 'Veg. Platter', '399'),
(36, 'Chicken Tikka', '229'),
(37, 'Chicken Lasuni Tikka', '239'),
(38, 'Chicken Malai Tikka', '239'),
(39, 'Chicken Seekh Kebab', '239'),
(40, 'Chicken Tandoori(Half/Full)', '349'),
(41, 'Reshmi Kebab', '239'),
(42, 'Pahadi Kebab', '239'),
(43, 'Kankad kebab', '239'),
(44, 'Nonveg. Platter', '684'),
(45, 'Andhera Mutton', '284'),
(46, 'Mutton Bhuna', '284'),
(47, 'Mutton Seekh Kebab', '284'),
(48, 'Tandoori Fish Tikka', '269'),
(49, 'Fish Koliwada', '269'),
(50, 'Fish Amrisari', '269'),
(51, 'Fish Black Pepper', '269'),
(52, 'Steamed Prawns', '399'),
(53, 'Sukha Prawns', '399'),
(54, 'Prawnns Koliwada', '399'),
(55, 'Tandoori Prwans', '449'),
(56, 'Veg. Manchurian', '179'),
(57, 'Veg. Crispy', '179'),
(58, 'Veg. 65', '179'),
(59, 'Mushroom Chilly', '179'),
(60, 'Babycorn Chilly', '179'),
(61, 'Paneer Chilli', '219'),
(62, 'Paneer Chilli', '219'),
(63, 'Paneer 65', '219'),
(64, 'American Choupsey', '219'),
(65, 'Chicken Black Pepper', '204'),
(66, 'Chicken Manchurian', '214'),
(67, 'Chicken Chilli', '214'),
(68, 'Chicken 65', '214'),
(69, 'Oriental Chicken', '214'),
(70, 'Chicken Crispy', '214'),
(71, 'Chicken Lollypop(6 pcs.)', '284'),
(72, 'Chicken Wings', '204'),
(73, 'Hakka NOodles(Half/Full)', '179'),
(74, 'Schezwan Noodles(Half/Full)', '189'),
(75, 'Chilli Garlic Noodles(Half/Full)', '199'),
(76, 'Fried Rice(Half/Full)', '199'),
(77, 'Mushroom Noodles', '179'),
(78, 'Schezwan Fried Rice', '179'),
(79, 'Chilli Garlic Fried Rice', '189'),
(80, 'Manchurian Fried Rice', '199'),
(81, 'Tom Chilli Rice', '199'),
(82, 'Triple Schezwan Fried Rice', '209'),
(83, 'Mushroom Fried Rice', '209'),
(84, 'Chicken Triple Schezwan Fried Rice', '194'),
(85, 'Chicken Manchurian Fried Rice', '194'),
(86, 'Chicken Hakka Noodles', '184'),
(87, 'Chicken Schezwan Noodles', '184'),
(88, 'Chicken Fried Rice', '184'),
(89, 'Chicken Chilli Garlic Noodles', '194'),
(90, 'CHicken Schezwan Fried Rice', '194'),
(91, 'Egg Noodles', '154'),
(92, 'Egg Fried Rice', '154'),
(93, 'Veg. Kolhapuri', '179'),
(94, 'Mix Veg. Curry', '179'),
(95, 'Aloo Gobhi Mutter', '179'),
(96, 'Bhindi Fry', '179'),
(97, 'Kurkuri Bhindi', '179'),
(98, 'Chole Masala', '179'),
(99, 'Veg. Bhuna', '179'),
(100, 'Tomato Green Peas', '179'),
(101, 'Aloo Mutter', '179'),
(102, 'Jeer Aloo', '179'),
(103, 'Veg. Kofta Curry', '199'),
(104, 'Malai Kofta', '259'),
(105, 'Veg. Seekh Masala', '199'),
(106, 'Babycorn Masala', '199'),
(107, 'Mushroom Masala', '259'),
(108, 'Veg. Maratha', '199'),
(109, 'Rajma Masala', '259'),
(110, 'Plain Palak', '159'),
(111, 'Lahsuni Palak', '159'),
(112, 'Dum Aloo', '179'),
(113, 'Paneer Masala', '249'),
(114, 'Paneer Bhurji', '279'),
(115, 'Paneer Tikka Masala', '279'),
(116, 'Paneer Do Pyaza ', '249'),
(117, 'Palak Paneer', '190'),
(118, 'Mutter Paneer', '190'),
(119, 'Lachcha Paneer', '249'),
(120, 'Kadhai Paneer', '249'),
(121, 'Paneer Butter Masala', '249'),
(122, 'Handi Paneer', '249'),
(123, 'Saoji Paneer', '249'),
(124, 'Kaju Curry', '249'),
(125, 'Cheese Butter Masala', '190'),
(126, 'Paneer Golden', '249'),
(127, 'Shahi Paneer', '249'),
(128, 'Paneer Kundan', '249'),
(129, 'Stuffed Paneer', '249'),
(130, 'Corn Tomato', '249'),
(131, 'Paneer Tiranga', '249'),
(132, 'Kaju Masala', '249'),
(133, 'Jeera Dal', '149'),
(134, 'Dal Fry', '159'),
(135, 'Dal Tadka', '169'),
(136, 'Dal kolhapuri', '169'),
(137, 'Punjabi Chicken(2 pcs/ Half/Full)', '169/269/489'),
(138, 'Chicken Rogan Josh(2 pcs/ Half/Full)', '169/269/489'),
(139, 'Kadhai Chicken(2 pcs/ Half/Full)', '169/269/489'),
(140, 'Handi Chicken(2 pcs/ Half/Full)', '169/269/489'),
(141, 'Dhaba Chicken(2 pcs/ Half/Full)', '169/269/489'),
(142, 'Chicken Kolhapuri(2 pcs/ Half/Full)', '169/269/489'),
(143, 'Chicken Masala(2 pcs/ Half/Full)', '169/269/489'),
(144, 'RA RA Masala Chicken (2 pcs/ Half/Full)', '179/279/499'),
(145, 'Gharghuti Chicken(2 pcs/ Half/Full)', '179/279/499'),
(146, 'Chicken Sagwala(2 pcs/ Half/Full)', '179/279/499'),
(147, 'Chicken Patiyala', '179/279/499'),
(148, 'Chicken Mughlai(2 pcs/ Half/Full)', '179/279/499'),
(149, 'Chicken Lal Maas(2 pcs/ Half/Full)', '179/279/499'),
(150, 'Chicken Curry(2 pcs/ Half/Full)', '140/210/440'),
(151, 'Mutton Korma(3 pcs /5 pcs / 10 pcs)', '199/279/519'),
(152, 'Mutton Do pyaza(3 pcs /5 pcs / 10 pcs)', '199/279/519'),
(153, 'Mutton Rogan Josh(3 pcs /5 pcs / 10 pcs)', '199/279/519'),
(154, 'Mutton Keema Masal(3 pcs /5 pcs / 10 pcs)', '199/279/519'),
(155, 'Mutton Handi(3 pcs /5 pcs / 10 pcs)', '199/279/519'),
(156, 'Mutton Kolhapuri', '199/279/519'),
(157, 'Mutton RA RA Masala(3 pcs /5 pcs / 10 pcs)', '199/279/519'),
(158, 'Mutton Curry(3 pcs /5 pcs / 10 pcs)', '150/220/499'),
(159, 'Fish Curry', '330'),
(160, 'Fish Amritsari(Sweet)', '330'),
(161, 'Fish Tikka Masala', '330'),
(162, 'Fish Saoji', '330'),
(163, 'Prawns Masala', '334'),
(164, 'Prawns Curry', '384'),
(165, 'Prawns Tikka Masala', '384'),
(166, 'Chicken Saoji Special', '199(4 pcs)'),
(167, 'Mutton Saoji Special', '209(4 pcs)'),
(168, 'Keems Saoji Special', '239'),
(169, 'Egg Saoji Special', '169'),
(170, 'Dahi Kachumar', '69'),
(171, 'Tandoori Salad', '99'),
(172, 'Green Salad', '79'),
(173, 'Russian Salad', '111'),
(174, 'Chinese Salad', '111'),
(175, 'Pineapple Raita', '79'),
(176, 'Tawa Roti', '12'),
(177, 'Tandoori Roti', '15'),
(178, 'Butter Tandoori Roti', '20'),
(179, 'Plain Naan', '35'),
(180, 'Butter Naan', '40'),
(181, 'Garlic Cheese/ Butter Naan', '40/45'),
(182, 'Pudina Naan', '45'),
(183, 'Paratha', '45'),
(184, 'Veg. Biryani', '99/179'),
(185, 'Veg. Pulao', '99/179'),
(186, 'Steamed Rice', '79'),
(187, 'Jeera Rice', '89'),
(188, 'Chicken Biryani', '159/249'),
(189, 'Mutton Biryani', '169/259'),
(190, 'Mutton Hyderabadi Biryani', '179/269'),
(191, 'Veg./Egg Biryani', '139/199'),
(192, 'Palak Khichdi', '129/189'),
(193, 'Dal Khichdi', '129/189'),
(194, 'Chicken Tikka Biryani', '299'),
(195, 'Paneer tikka Biryani', '249'),
(196, 'Aloo Paratha', '79'),
(197, 'Gobhi Paratha', '79'),
(198, 'Paneer Paratha', '99'),
(199, 'Mix Veg. Paratha', '89'),
(200, 'Chicken Keema Paratha', '149'),
(201, 'Mutton Keema Paratha', '179'),
(202, 'Veg. Jahangiri Kofta Curry', '219'),
(203, 'Rani Corn Palak', '269'),
(204, 'Paneer Pasanda', '299'),
(205, 'Paneer Luchnowi', '279'),
(206, 'Barbeque Hut Special', '299'),
(207, 'veg. Egg Curry', '199'),
(208, 'Gulab Jamun (2 pcs)', '39'),
(209, 'Gulab Jamun with Ice Cream', '89'),
(210, 'Mineral Water', '20'),
(211, 'Fresh Lime Water', '25'),
(212, 'Fresh Lime Soda', '30'),
(213, 'Cold Drink(500 ml)', '45'),
(214, 'Red Bull', '120');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tableno` text COLLATE utf8_unicode_ci NOT NULL,
  `food_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `accept` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tableno`, `food_id`, `accept`, `date`) VALUES
(9, 'Table 6', NULL, 'Y', '2020-02-06 07:40:53'),
(10, 'Table 2', NULL, 'Y', '2020-02-06 12:41:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodlist`
--
ALTER TABLE `foodlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customers`
--
ALTER TABLE `Customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `foodlist`
--
ALTER TABLE `foodlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
