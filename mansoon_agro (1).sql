-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2026 at 11:42 AM
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
-- Database: `mansoon_agro`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `product` varchar(150) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `product`, `file`, `message`, `created_at`) VALUES
(1, 'shreya', '8657493211', 'shreya@gmail.com', 'phone', '', 'please give me all products', '2026-05-06 05:48:25'),
(2, 'shreya', '8657493211', 'shreya@gmail.com', 'phone', 'uploads/1.jpg', 'please give me', '2026-05-11 10:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `rating` int(11) NOT NULL CHECK (`rating` between 1 and 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `page` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `page`, `section`, `image`) VALUES
(3, 'frozanpaan', 'paan', 'product', 'uploads/1776237586_frozenpaan.jpg'),
(4, 'rasarang1', 'paan', 'intro', 'uploads/1776237950_rasrangpaan1.jpg'),
(5, 'rasrang2', 'paan', 'intro', 'uploads/1776238016_rasrangpaan2.jpg'),
(6, 'rasrang3', 'paan', 'intro', 'uploads/1776238051_rasrangpaan3.jpg'),
(9, 'dono', 'paan', 'product', 'uploads/1776238408_dono.jpg'),
(10, 'dono2', 'paan', 'product', 'uploads/1776238635_dono3.jpg'),
(11, 'metha1', 'paan', 'product', 'uploads/1776238837_metha1.jpg'),
(12, 'matha2', 'paan', 'product', 'uploads/1776239707_metha2.jpg'),
(13, 'metha3', 'paan', 'product', 'uploads/1776239727_metha3.jpg'),
(14, 'meth4', 'paan', 'product', 'uploads/1776239745_metha4.jpg'),
(15, 'almondpaan', 'paan', 'product', 'uploads/1776239896_almondpaan1.jpg'),
(16, 'almondpaan2', 'paan', 'product', 'uploads/1776239920_almondpaan2.jpg'),
(17, 'almond3', 'paan', 'product', 'uploads/1776239941_almondpaan3.jpg'),
(18, 'almond4', 'paan', 'product', 'uploads/1776239965_almond4.jpg'),
(19, 'almond1', 'paan', 'choco', 'uploads/1776240044_almondpaan1.jpg'),
(20, 'almond2', 'paan', 'choco', 'uploads/1776240069_almondpaan2.jpg'),
(21, 'almond3', 'paan', 'choco', 'uploads/1776240095_almondpaan3.jpg'),
(22, 'almond4', 'paan', 'choco', 'uploads/1776240120_almond4.jpg'),
(23, 'acrosspune', 'paan', 'pune', 'uploads/1776243289_bigbasket2 (1).jpg'),
(24, 'dotpe', 'paan', 'pune', 'uploads/1776243326_dotpe (1).jpg'),
(25, 'dwarka', 'paan', 'pune', 'uploads/1776243493_dwarka.jpg'),
(26, 'bigbasket', 'paan', 'pune', 'uploads/1776243564_bigbaskettataenter.jpg'),
(27, 'finefoods', 'paan', 'pune', 'uploads/1776243622_finefoods.jpg'),
(28, 'frozenclub', 'paan', 'pune', 'uploads/1776243663_frozenclub.jpg'),
(29, 'cornclub', 'paan', 'pune', 'uploads/1776243717_cornclub.jpg'),
(30, 'radzmethamba', 'methamba', 'side_dish', 'uploads/1776245461_radzmethamba1.jpg'),
(31, 'radzmethamba', 'methamba', 'side_dish', 'uploads/1776245505_radzmethamba2.jpg'),
(32, 'radzmethmba', 'methamba', 'side_dish', 'uploads/1776245545_radzmethamba3.jpg'),
(33, 'radzmethamba', 'methamba', 'side_dish', 'uploads/1776245613_radzmethamba5.jpg'),
(35, 'radz', 'methamba', 'side_dish', 'uploads/1776246161_radzmetamba56.jpg'),
(36, 'pune', 'methamba', 'pune', 'uploads/1776246302_dwarka.jpg'),
(37, 'bigbasket', 'methamba', 'pune', 'uploads/1776246363_bigbaskettataenter.jpg'),
(38, 'finefood', 'methamba', 'pune', 'uploads/1776246406_finefoods.jpg'),
(39, 'frozenclub', 'methamba', 'pune', 'uploads/1776246448_frozenclub.jpg'),
(40, 'cornclub', 'methamba', 'pune', 'uploads/1776246491_cornclub.jpg'),
(41, 'q&r', 'q&r', 'q&r', 'uploads/1776248136_qsr1.jpg'),
(42, 'q&r', 'q&r', 'q&r', 'uploads/1776248168_qsr2.jpg'),
(43, 'q&r', 'q&r', 'q&r', 'uploads/1776248192_qsr3.jpg'),
(44, 'q&r', 'q&r', 'q&r', 'uploads/1776248216_qsr4.jpg'),
(45, 'q&r', 'q&r', 'q&r', 'uploads/1776248241_qsr5.jpg'),
(46, 'q&r', 'q&r', 'q&r', 'uploads/1776248267_qsr6.jpg'),
(47, 'crowd', 'q&r', 'crowd', 'uploads/1776249108_corsamosa.jpg'),
(48, 'chessy', 'q&r', 'crowd', 'uploads/1776249184_chessycornpasta'),
(49, 'corn burger', 'q&r', 'crowd', 'uploads/1776249254_cornburger.jpg'),
(50, 'cornfranky', 'q&r', 'crowd', 'uploads/1776249297_cornfranky.jpg'),
(51, 'cornonthecob', 'q&r', 'crowd', 'uploads/1776249334_cornontheclub.jpg'),
(52, 'cheese', 'q&r', 'crowd', 'uploads/1776249364_cheesechilycorntoast.jpg'),
(53, 'momos', 'q&r', 'crowd', 'uploads/1776249402_cornmomos.jpg'),
(54, 'finger', 'q&r', 'crowd', 'uploads/1776249435_babycornfingers.jpg'),
(55, 'gardensalad', 'q&r', 'crowd', 'uploads/1776249473_gardensalad.jpg'),
(56, 'cornpizza', 'q&r', 'crowd', 'uploads/1776249506_cornpizza.jpg'),
(57, 'patties', 'q&r', 'crowd', 'uploads/1776249548_cornpatties.jpg'),
(58, 'menu', 'q&r', 'menu', 'uploads/1776250069_menufront.jpg'),
(59, 'menu', 'q&r', 'menu', 'uploads/1776250097_menuback.jpg'),
(60, 'Corn Cheese & Tofu Balls', 'ecommerece', 'ecommerece', 'uploads/1776250449_tofuball.jpg'),
(61, 'Corn Patties', 'ecommerece', 'ecommerece', 'uploads/1776250525_cornpatties1.jpg'),
(62, 'Corn Cheese Samosa', 'ecommerece', 'ecommerece', 'uploads/1776250602_cornchessesamosa.jpg'),
(63, 'Rasrang Meetha Paan', 'ecommerece', 'ecommerece', 'uploads/1776250652_rasrangmeetha.jpg'),
(64, 'fran', 'franchise', 'franchise', 'uploads/1776251399_fr1.jpg'),
(65, 'fr', 'franchise', 'franchise', 'uploads/1776251422_fr2.jpg'),
(66, 'fr', 'franchise', 'franchise', 'uploads/1776251444_fr3.jpg'),
(67, 'fr', 'franchise', 'franchise', 'uploads/1776251468_fr4.jpg'),
(68, 'fr', 'franchise', 'franchise', 'uploads/1776251494_fr5.jpg'),
(69, 'fr', 'franchise', 'franchise', 'uploads/1776251516_fr6.jpg'),
(70, 'fr', 'franchise', 'franchise', 'uploads/1776251541_fr7.jpg'),
(71, 'fr', 'franchise', 'franchise', 'uploads/1776251628_fr8.jpg'),
(72, 'fr', 'franchise', 'franchise', 'uploads/1776251706_fr9.jpg'),
(73, 'fran', 'franchise', 'franchise1', 'uploads/1776251985_sir1.jpg'),
(74, 'fran', 'franchise', 'franchise1', 'uploads/1776252012_mam1.jpg'),
(75, 'Frozen Baby Corn Whole & Cut', 'export', 'export', 'uploads/1776252758_babycornwhole.jpg'),
(77, 'Frozen Corn on Cob 6-cm', 'export', 'export', 'uploads/1776252857_cob6cm.jpg'),
(79, 'Frozen Corn Tikkis ', 'export', 'export', 'uploads/1776253151_corntikkies.jpg'),
(80, 'Frozen Samosas', 'export', 'export', 'uploads/1776253180_frozensammosa.jpg'),
(81, 'Frozen Corn On Cob - 14 cm', 'export', 'export', 'uploads/1776253205_cob14cm.jpg'),
(82, ' Frozen Corn & Cheese Balls', 'export', 'export', 'uploads/1776253386_cheeseballs.jpg'),
(83, ' Frozen Momos', 'export', 'export', 'uploads/1776253420_frozenmomos.jpg'),
(84, 'Frozen Spring Rolls ', 'export', 'export', 'uploads/1776253464_springrolls.jpg'),
(86, 'ex', 'export', 'openconcept', 'uploads/1776253769_vacpaced.jpg'),
(87, 'ex', 'export', 'openconcept', 'uploads/1776253829_cannedfruits.jpg'),
(88, 'ex', 'export', 'openconcept', 'uploads/1776253869_iqffruits.jpg'),
(89, 'overview', 'overview', 'overview', 'uploads/1776321277_frysnack.jpg'),
(91, 'overview', 'overview', 'overview', 'uploads/1776321407_cornkernel.jpg'),
(92, 'overview', 'overview', 'overview', 'uploads/1776321446_frozencornonthecob.jpg'),
(93, 'overview', 'overview', 'overview', 'uploads/1776321740_rdz1.jpg'),
(94, 'overview', 'overview', 'overview', 'uploads/1776321839_rdz2.jpg'),
(95, 'overview', 'overview', 'overview', 'uploads/1776321886_rdz3.jpg'),
(96, 'overview', 'overview', 'client', 'uploads/1776322268_dwarka.jpg'),
(97, 'overview', 'overview', 'client', 'uploads/1776322332_hyatt.jpg'),
(98, 'overview', 'overview', 'client', 'uploads/1776322406_tataenterprise.jpg'),
(99, 'overview', 'overview', 'client', 'uploads/1776322467_chillis.jpg'),
(100, 'overview', 'overview', 'client', 'uploads/1776322545_taj.jpg'),
(101, 'overview', 'overview', 'client', 'uploads/1776322713_reliance.jpg'),
(102, 'overview', 'overview', 'client', 'uploads/1776322806_jwmarr.jpg'),
(103, 'overview', 'overview', 'client', 'uploads/1776322870_kfc.jpg'),
(104, 'products', 'overview', 'overview1', 'uploads/1776324448_frysnack.jpg'),
(105, 'overview', 'overview', 'overview1', 'uploads/1776324492_cornkernel.jpg'),
(106, 'overview', 'overview', 'overview1', 'uploads/1776324549_frozencornonthecob.jpg'),
(107, 'Frozen Sweet Corn Whole Kernel', 'export', 'export', 'uploads/1776424884_Frozen Sweet Corn Whole Kernel.jpg'),
(111, 'snacks', 'snacks', 'snacks', 'uploads/1776933766_dish1.jpg'),
(112, 'Corn Biryani', 'snacks', 'snacks', 'uploads/1776933851_dish2.jpg'),
(113, 'Cream Style Sweet Corn', 'snacks', 'snacks', 'uploads/1776933889_dish3.jpg'),
(115, 'Corn & Cheese Samosas  ', 'snacks', 'snacks', 'uploads/1776934016_dish4.jpg'),
(116, 'Frozen Sweet Corn Whole Kernel', 'snacks', 'snacks', 'uploads/1776934053_dish5.jpg'),
(118, '  Corn & Cheese Balls', 'snacks', 'snacks', 'uploads/1776936050_dish7.jpg'),
(119, ' Corn on Cob', 'snacks', 'snacks', 'uploads/1776936087_dish8.jpg'),
(120, 'Corn Tikkis  ', 'snacks', 'snacks', 'uploads/1776936122_dish9.jpg'),
(121, ' Momos', 'snacks', 'snacks', 'uploads/1776936158_dish10.jpg'),
(122, ' Corn Spring Roll', 'snacks', 'snacks', 'uploads/1776936204_dish11.jpg'),
(123, ' Corn & Cheese Nugets', 'snacks', 'snacks', 'uploads/1776936236_dish12.jpg'),
(124, 'Corn & Vegetables Spring Rolls', 'ecommerece', 'ecommerece', 'uploads/1777111845_springrollsvegitables.jpg'),
(126, 'Frozen Sweet Corn', 'ecommerece', 'ecommerece', 'uploads/1777112519_frozensweetcorn.jpg'),
(127, 'Baby Corn Fingers', 'ecommerece', 'ecommerece', 'uploads/1777112580_Baby Corn Fingers.jpg'),
(128, 'Kothembervadi', 'ecommerece', 'ecommerece', 'uploads/1777112707_kothimbervdi.jpg'),
(129, 'Veg Corn Momos', 'ecommerece', 'ecommerece', 'uploads/1777113278_vegcornmomos.jpg'),
(130, 'paan', 'paan', 'intro', 'uploads/1777270135_paan1.jpg'),
(131, 'paan', 'paan', 'intro', 'uploads/1777270165_paan2.jpg'),
(132, 'paan', 'paan', 'intro', 'uploads/1777270188_paan3.jpg'),
(133, 'paan', 'paan', 'intro', 'uploads/1777270225_paan4.jpg'),
(134, 'paan', 'paan', 'variant', 'uploads/1777274022_paan1.jpg'),
(135, 'paan', 'paan', 'variant', 'uploads/1777274042_paan2.jpg'),
(136, 'paan3', 'paan', 'variant', 'uploads/1777274065_paan4.jpg'),
(138, 'paan', 'paan', 'variant', 'uploads/1777274160_paan3.jpg'),
(139, 'paan', 'paan', 'product', 'uploads/1778494256_3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
