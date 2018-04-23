-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 05:12 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nongthon-wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_adrotate`
--

CREATE TABLE IF NOT EXISTS `wp_adrotate` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `bannercode` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `thetime` int(15) NOT NULL DEFAULT '0',
  `updated` int(15) NOT NULL,
  `author` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `imagetype` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `paid` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'U',
  `tracker` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'N',
  `show_everyone` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `desktop` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `mobile` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `tablet` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `os_ios` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `os_android` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `os_other` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `responsive` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'N',
  `type` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `weight` int(3) NOT NULL DEFAULT '6',
  `autodelete` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'N',
  `budget` double NOT NULL DEFAULT '0',
  `crate` double NOT NULL DEFAULT '0',
  `irate` double NOT NULL DEFAULT '0',
  `cities` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `countries` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_adrotate`
--

INSERT INTO `wp_adrotate` (`id`, `title`, `bannercode`, `thetime`, `updated`, `author`, `imagetype`, `image`, `paid`, `tracker`, `show_everyone`, `desktop`, `mobile`, `tablet`, `os_ios`, `os_android`, `os_other`, `responsive`, `type`, `weight`, `autodelete`, `budget`, `crate`, `irate`, `cities`, `countries`) VALUES
(1, 'Tư Vấn Vay Vốn', '&lt;div style=\\&quot;margin-top: 2px;\\&quot;&gt;&lt;a href=\\&quot;http://tvcs.nongthonmoihatinh.vn/\\&quot; target=\\&quot;_blank\\&quot;  title=\\&quot;%title%\\&quot;&gt;&lt;img src=\\&quot;%asset%\\&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 1522919409, 1523009398, 'admin', 'field', '/wp-content/uploads/2018/04/tvcs_1.jpg', 'U', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'active', 6, 'N', 0, 0, 0, 'a:0:{}', 'a:0:{}'),
(2, 'Dự báo thời tiết', '&lt;div style=\\&quot;margin-top: 2px;\\&quot;&gt;&lt;a href=\\&quot;http://thoitietnhanong.vn/station?id=002040D5\\&quot; target=\\&quot;_blank\\&quot; title=\\&quot;%title%\\&quot;&gt;&lt;img src=\\&quot;%asset%\\&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 1522919409, 1523009342, 'admin', 'field', '/wp-content/uploads/2018/04/dbtt.jpg', 'U', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'active', 6, 'N', 0, 0, 0, 'a:0:{}', 'a:0:{}'),
(3, 'Video Hà Tĩnh', '&lt;div style=\\&quot;margin-top: 2px;\\&quot;&gt;&lt;a href=\\&quot;http://hatinhtv.vn/video/open/alid/49\\&quot; target=\\&quot;_blank\\&quot;  title=\\&quot;%title%\\&quot;&gt;&lt;img src=\\&quot;%asset%\\&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 1523098605, 1523098874, 'admin', 'field', '/wp-content/uploads/2018/04/ntm_video_1.png', 'U', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'active', 6, 'N', 0, 0, 0, 'a:0:{}', 'a:0:{}'),
(4, 'I office', '&lt;div style=\\&quot;margin-top: 2px;\\&quot;&gt;&lt;a href=\\&quot;http://google.com.vn/\\&quot; target=\\&quot;_blank\\&quot;  title=\\&quot;%title%\\&quot;&gt;&lt;img src=\\&quot;%asset%\\&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 1523098717, 1523098863, 'admin', 'field', '/wp-content/uploads/2018/04/i-office_3.jpg', 'U', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'active', 6, 'N', 0, 0, 0, 'a:0:{}', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_adrotate_groups`
--

CREATE TABLE IF NOT EXISTS `wp_adrotate_groups` (
  `id` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `modus` tinyint(1) NOT NULL DEFAULT '0',
  `fallback` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `cat` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cat_loc` tinyint(1) NOT NULL DEFAULT '0',
  `cat_par` tinyint(2) NOT NULL DEFAULT '0',
  `page` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `page_loc` tinyint(1) NOT NULL DEFAULT '0',
  `page_par` tinyint(2) NOT NULL DEFAULT '0',
  `mobile` tinyint(1) NOT NULL DEFAULT '0',
  `geo` tinyint(1) NOT NULL DEFAULT '0',
  `wrapper_before` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `wrapper_after` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `align` tinyint(1) NOT NULL DEFAULT '0',
  `gridrows` int(3) NOT NULL DEFAULT '2',
  `gridcolumns` int(3) NOT NULL DEFAULT '2',
  `admargin` int(2) NOT NULL DEFAULT '0',
  `admargin_bottom` int(2) NOT NULL DEFAULT '0',
  `admargin_left` int(2) NOT NULL DEFAULT '0',
  `admargin_right` int(2) NOT NULL DEFAULT '0',
  `adwidth` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '125',
  `adheight` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '125',
  `adspeed` int(5) NOT NULL DEFAULT '6000',
  `repeat_impressions` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_adrotate_groups`
--

INSERT INTO `wp_adrotate_groups` (`id`, `name`, `modus`, `fallback`, `cat`, `cat_loc`, `cat_par`, `page`, `page_loc`, `page_par`, `mobile`, `geo`, `wrapper_before`, `wrapper_after`, `align`, `gridrows`, `gridcolumns`, `admargin`, `admargin_bottom`, `admargin_left`, `admargin_right`, `adwidth`, `adheight`, `adspeed`, `repeat_impressions`) VALUES
(1, 'left_sidebar', 2, '0', '', 0, 0, '', 0, 0, 0, 0, '', '', 0, 2, 12, 0, 0, 0, 0, '125', '125', 6000, 'Y'),
(2, 'right_sidebar', 2, '0', '', 0, 0, '', 0, 0, 0, 0, '', '', 0, 2, 12, 0, 0, 0, 0, '125', '125', 6000, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `wp_adrotate_linkmeta`
--

CREATE TABLE IF NOT EXISTS `wp_adrotate_linkmeta` (
  `id` mediumint(8) unsigned NOT NULL,
  `ad` int(5) unsigned NOT NULL DEFAULT '0',
  `group` int(5) unsigned NOT NULL DEFAULT '0',
  `user` int(5) unsigned NOT NULL DEFAULT '0',
  `schedule` int(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_adrotate_linkmeta`
--

INSERT INTO `wp_adrotate_linkmeta` (`id`, `ad`, `group`, `user`, `schedule`) VALUES
(1, 1, 0, 0, 1),
(2, 2, 0, 0, 2),
(3, 1, 1, 0, 0),
(4, 2, 1, 0, 0),
(5, 3, 0, 0, 3),
(6, 4, 0, 0, 4),
(7, 4, 2, 0, 0),
(8, 3, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_adrotate_schedule`
--

CREATE TABLE IF NOT EXISTS `wp_adrotate_schedule` (
  `id` int(8) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `starttime` int(15) unsigned NOT NULL DEFAULT '0',
  `stoptime` int(15) unsigned NOT NULL DEFAULT '0',
  `maxclicks` int(15) unsigned NOT NULL DEFAULT '0',
  `maximpressions` int(15) unsigned NOT NULL DEFAULT '0',
  `spread` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'N',
  `daystarttime` char(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0000',
  `daystoptime` char(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0000',
  `day_mon` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `day_tue` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `day_wed` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `day_thu` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `day_fri` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `day_sat` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `day_sun` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `autodelete` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_adrotate_schedule`
--

INSERT INTO `wp_adrotate_schedule` (`id`, `name`, `starttime`, `stoptime`, `maxclicks`, `maximpressions`, `spread`, `daystarttime`, `daystoptime`, `day_mon`, `day_tue`, `day_wed`, `day_thu`, `day_fri`, `day_sat`, `day_sun`, `autodelete`) VALUES
(1, 'Schedule for ad 1', 1522919340, 1530177000, 0, 0, 'N', '0000', '0000', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N'),
(2, 'Schedule for ad 2', 1522919340, 1530177000, 0, 0, 'N', '0000', '0000', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N'),
(3, 'Schedule for ad 3', 1523095800, 1530356160, 0, 0, 'N', '0000', '0000', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N'),
(4, 'Schedule for ad 4', 1523095800, 1530356280, 0, 0, 'N', '0000', '0000', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `wp_adrotate_stats`
--

CREATE TABLE IF NOT EXISTS `wp_adrotate_stats` (
  `id` bigint(9) unsigned NOT NULL,
  `ad` int(5) unsigned NOT NULL DEFAULT '0',
  `group` int(5) unsigned NOT NULL DEFAULT '0',
  `thetime` int(15) unsigned NOT NULL DEFAULT '0',
  `clicks` int(15) unsigned NOT NULL DEFAULT '0',
  `impressions` int(15) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_adrotate_stats`
--

INSERT INTO `wp_adrotate_stats` (`id`, `ad`, `group`, `thetime`, `clicks`, `impressions`) VALUES
(1, 1, 0, 1522886400, 1, 49),
(2, 1, 0, 1522972800, 0, 8),
(3, 1, 1, 1522972800, 0, 30),
(4, 2, 1, 1522972800, 0, 31),
(5, 1, 1, 1523059200, 0, 120),
(6, 2, 1, 1523059200, 0, 119),
(7, 3, 2, 1523059200, 0, 37),
(8, 4, 2, 1523059200, 0, 37),
(9, 1, 1, 1523145600, 0, 43),
(10, 2, 1, 1523145600, 0, 43),
(11, 3, 2, 1523145600, 0, 37),
(12, 4, 2, 1523145600, 0, 37),
(13, 1, 1, 1523232000, 0, 53),
(14, 2, 1, 1523232000, 0, 53),
(15, 4, 2, 1523232000, 0, 10),
(16, 3, 2, 1523232000, 0, 10),
(17, 2, 1, 1523318400, 0, 112),
(18, 1, 1, 1523318400, 0, 113),
(19, 3, 2, 1523318400, 0, 34),
(20, 4, 2, 1523318400, 0, 34),
(21, 2, 1, 1523404800, 0, 82),
(22, 1, 1, 1523404800, 0, 82),
(23, 4, 2, 1523404800, 0, 65),
(24, 3, 2, 1523404800, 0, 65),
(25, 1, 1, 1523491200, 0, 90),
(26, 2, 1, 1523491200, 0, 90),
(27, 3, 2, 1523491200, 0, 52),
(28, 4, 2, 1523491200, 0, 53),
(29, 2, 1, 1523577600, 0, 67),
(30, 1, 1, 1523577600, 0, 67),
(31, 4, 2, 1523577600, 0, 52),
(32, 3, 2, 1523577600, 0, 52),
(33, 2, 1, 1523664000, 0, 74),
(34, 1, 1, 1523664000, 0, 74),
(35, 4, 2, 1523664000, 0, 37),
(36, 3, 2, 1523664000, 0, 37),
(37, 1, 1, 1523750400, 0, 82),
(38, 2, 1, 1523750400, 0, 83),
(39, 3, 2, 1523750400, 0, 64),
(40, 4, 2, 1523750400, 0, 64),
(41, 2, 1, 1523836800, 0, 102),
(42, 1, 1, 1523836800, 0, 102),
(43, 3, 2, 1523836800, 0, 96),
(44, 4, 2, 1523836800, 0, 96);

-- --------------------------------------------------------

--
-- Table structure for table `wp_adrotate_stats_archive`
--

CREATE TABLE IF NOT EXISTS `wp_adrotate_stats_archive` (
  `id` bigint(9) unsigned NOT NULL,
  `ad` int(5) unsigned NOT NULL DEFAULT '0',
  `group` int(5) unsigned NOT NULL DEFAULT '0',
  `thetime` int(15) unsigned NOT NULL DEFAULT '0',
  `clicks` int(15) unsigned NOT NULL DEFAULT '0',
  `impressions` int(15) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_adrotate_tracker`
--

CREATE TABLE IF NOT EXISTS `wp_adrotate_tracker` (
  `id` bigint(9) unsigned NOT NULL,
  `ipaddress` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `timer` int(15) unsigned NOT NULL DEFAULT '0',
  `bannerid` int(15) unsigned NOT NULL DEFAULT '0',
  `stat` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'c'
) ENGINE=InnoDB AUTO_INCREMENT=2740 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_adrotate_tracker`
--

INSERT INTO `wp_adrotate_tracker` (`id`, `ipaddress`, `timer`, `bannerid`, `stat`) VALUES
(2598, '127.0.0.1', 1523909526, 1, 'i'),
(2599, '127.0.0.1', 1523909526, 2, 'i'),
(2600, '127.0.0.1', 1523909526, 3, 'i'),
(2601, '127.0.0.1', 1523909527, 4, 'i'),
(2602, '127.0.0.1', 1523909638, 2, 'i'),
(2603, '127.0.0.1', 1523909638, 1, 'i'),
(2604, '127.0.0.1', 1523909639, 4, 'i'),
(2605, '127.0.0.1', 1523909639, 3, 'i'),
(2606, '127.0.0.1', 1523909725, 1, 'i'),
(2607, '127.0.0.1', 1523909725, 2, 'i'),
(2608, '127.0.0.1', 1523909726, 4, 'i'),
(2609, '127.0.0.1', 1523909726, 3, 'i'),
(2610, '127.0.0.1', 1523909821, 1, 'i'),
(2611, '127.0.0.1', 1523909821, 2, 'i'),
(2612, '127.0.0.1', 1523909821, 3, 'i'),
(2613, '127.0.0.1', 1523909821, 4, 'i'),
(2614, '127.0.0.1', 1523909887, 2, 'i'),
(2615, '127.0.0.1', 1523909888, 1, 'i'),
(2616, '127.0.0.1', 1523909888, 4, 'i'),
(2617, '127.0.0.1', 1523909888, 3, 'i'),
(2618, '127.0.0.1', 1523910059, 1, 'i'),
(2619, '127.0.0.1', 1523910059, 2, 'i'),
(2620, '127.0.0.1', 1523910059, 3, 'i'),
(2621, '127.0.0.1', 1523910059, 4, 'i'),
(2622, '127.0.0.1', 1523910273, 1, 'i'),
(2623, '127.0.0.1', 1523910273, 2, 'i'),
(2624, '127.0.0.1', 1523910273, 3, 'i'),
(2625, '127.0.0.1', 1523910273, 4, 'i'),
(2626, '127.0.0.1', 1523910588, 1, 'i'),
(2627, '127.0.0.1', 1523910588, 2, 'i'),
(2628, '127.0.0.1', 1523910588, 4, 'i'),
(2629, '127.0.0.1', 1523910588, 3, 'i'),
(2630, '127.0.0.1', 1523910660, 1, 'i'),
(2631, '127.0.0.1', 1523910660, 2, 'i'),
(2632, '127.0.0.1', 1523910661, 3, 'i'),
(2633, '127.0.0.1', 1523910661, 4, 'i'),
(2634, '127.0.0.1', 1523911386, 1, 'i'),
(2635, '127.0.0.1', 1523911386, 2, 'i'),
(2636, '127.0.0.1', 1523911386, 3, 'i'),
(2637, '127.0.0.1', 1523911386, 4, 'i'),
(2638, '127.0.0.1', 1523911467, 1, 'i'),
(2639, '127.0.0.1', 1523911467, 2, 'i'),
(2640, '127.0.0.1', 1523911467, 4, 'i'),
(2641, '127.0.0.1', 1523911467, 3, 'i'),
(2642, '127.0.0.1', 1523911528, 2, 'i'),
(2643, '127.0.0.1', 1523911528, 1, 'i'),
(2644, '127.0.0.1', 1523911553, 3, 'i'),
(2645, '127.0.0.1', 1523911553, 4, 'i'),
(2646, '127.0.0.1', 1523911686, 2, 'i'),
(2647, '127.0.0.1', 1523911686, 1, 'i'),
(2648, '127.0.0.1', 1523911687, 4, 'i'),
(2649, '127.0.0.1', 1523911687, 3, 'i'),
(2650, '127.0.0.1', 1523911938, 2, 'i'),
(2651, '127.0.0.1', 1523911938, 1, 'i'),
(2652, '127.0.0.1', 1523911938, 4, 'i'),
(2653, '127.0.0.1', 1523911939, 3, 'i'),
(2654, '127.0.0.1', 1523912381, 1, 'i'),
(2655, '127.0.0.1', 1523912382, 2, 'i'),
(2656, '127.0.0.1', 1523912382, 3, 'i'),
(2657, '127.0.0.1', 1523912382, 4, 'i'),
(2658, '127.0.0.1', 1523912538, 1, 'i'),
(2659, '127.0.0.1', 1523912538, 2, 'i'),
(2660, '127.0.0.1', 1523912538, 3, 'i'),
(2661, '127.0.0.1', 1523912538, 4, 'i'),
(2662, '127.0.0.1', 1523912616, 1, 'i'),
(2663, '127.0.0.1', 1523912616, 2, 'i'),
(2664, '127.0.0.1', 1523912616, 4, 'i'),
(2665, '127.0.0.1', 1523912616, 3, 'i'),
(2666, '127.0.0.1', 1523913507, 2, 'i'),
(2667, '127.0.0.1', 1523913507, 1, 'i'),
(2668, '127.0.0.1', 1523913507, 3, 'i'),
(2669, '127.0.0.1', 1523913507, 4, 'i'),
(2670, '127.0.0.1', 1523913630, 1, 'i'),
(2671, '127.0.0.1', 1523913630, 2, 'i'),
(2672, '127.0.0.1', 1523913630, 4, 'i'),
(2673, '127.0.0.1', 1523913630, 3, 'i'),
(2674, '127.0.0.1', 1523913983, 2, 'i'),
(2675, '127.0.0.1', 1523913983, 1, 'i'),
(2676, '127.0.0.1', 1523913983, 3, 'i'),
(2677, '127.0.0.1', 1523913983, 4, 'i'),
(2678, '127.0.0.1', 1523914076, 2, 'i'),
(2679, '127.0.0.1', 1523914076, 1, 'i'),
(2680, '127.0.0.1', 1523914076, 3, 'i'),
(2681, '127.0.0.1', 1523914076, 4, 'i'),
(2682, '127.0.0.1', 1523914525, 2, 'i'),
(2683, '127.0.0.1', 1523914525, 1, 'i'),
(2684, '127.0.0.1', 1523914525, 3, 'i'),
(2685, '127.0.0.1', 1523914525, 4, 'i'),
(2686, '127.0.0.1', 1523914599, 2, 'i'),
(2687, '127.0.0.1', 1523914599, 1, 'i'),
(2688, '127.0.0.1', 1523914599, 4, 'i'),
(2689, '127.0.0.1', 1523914599, 3, 'i'),
(2690, '127.0.0.1', 1523914726, 1, 'i'),
(2691, '127.0.0.1', 1523914726, 2, 'i'),
(2692, '127.0.0.1', 1523914727, 4, 'i'),
(2693, '127.0.0.1', 1523914727, 3, 'i'),
(2694, '127.0.0.1', 1523914999, 1, 'i'),
(2695, '127.0.0.1', 1523914999, 2, 'i'),
(2696, '127.0.0.1', 1523914999, 4, 'i'),
(2697, '127.0.0.1', 1523914999, 3, 'i'),
(2698, '127.0.0.1', 1523915142, 2, 'i'),
(2699, '127.0.0.1', 1523915142, 1, 'i'),
(2700, '127.0.0.1', 1523915142, 4, 'i'),
(2701, '127.0.0.1', 1523915142, 3, 'i'),
(2702, '127.0.0.1', 1523915220, 1, 'i'),
(2703, '127.0.0.1', 1523915220, 2, 'i'),
(2704, '127.0.0.1', 1523915220, 4, 'i'),
(2705, '127.0.0.1', 1523915220, 3, 'i'),
(2706, '127.0.0.1', 1523915376, 2, 'i'),
(2707, '127.0.0.1', 1523915377, 1, 'i'),
(2708, '127.0.0.1', 1523915377, 4, 'i'),
(2709, '127.0.0.1', 1523915377, 3, 'i'),
(2710, '127.0.0.1', 1523915473, 1, 'i'),
(2711, '127.0.0.1', 1523915473, 2, 'i'),
(2712, '127.0.0.1', 1523915473, 3, 'i'),
(2713, '127.0.0.1', 1523915473, 4, 'i'),
(2714, '127.0.0.1', 1523915626, 1, 'i'),
(2715, '127.0.0.1', 1523915626, 2, 'i'),
(2716, '127.0.0.1', 1523915627, 4, 'i'),
(2717, '127.0.0.1', 1523915627, 3, 'i'),
(2718, '127.0.0.1', 1523915814, 2, 'i'),
(2719, '127.0.0.1', 1523915814, 1, 'i'),
(2720, '127.0.0.1', 1523915952, 1, 'i'),
(2721, '127.0.0.1', 1523915952, 2, 'i'),
(2722, '127.0.0.1', 1523915953, 3, 'i'),
(2723, '127.0.0.1', 1523915953, 4, 'i'),
(2724, '127.0.0.1', 1523916193, 1, 'i'),
(2725, '127.0.0.1', 1523916193, 2, 'i'),
(2726, '127.0.0.1', 1523916193, 3, 'i'),
(2727, '127.0.0.1', 1523916193, 4, 'i'),
(2728, '127.0.0.1', 1523916372, 1, 'i'),
(2729, '127.0.0.1', 1523916372, 2, 'i'),
(2730, '127.0.0.1', 1523916372, 4, 'i'),
(2731, '127.0.0.1', 1523916372, 3, 'i'),
(2732, '127.0.0.1', 1523916444, 1, 'i'),
(2733, '127.0.0.1', 1523916444, 2, 'i'),
(2734, '127.0.0.1', 1523916444, 4, 'i'),
(2735, '127.0.0.1', 1523916444, 3, 'i'),
(2736, '127.0.0.1', 1523916522, 1, 'i'),
(2737, '127.0.0.1', 1523916522, 2, 'i'),
(2738, '127.0.0.1', 1523916552, 4, 'i'),
(2739, '127.0.0.1', 1523916552, 3, 'i');

-- --------------------------------------------------------

--
-- Table structure for table `wp_adrotate_transactions`
--

CREATE TABLE IF NOT EXISTS `wp_adrotate_transactions` (
  `id` mediumint(8) unsigned NOT NULL,
  `ad` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reference` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `billed` int(15) unsigned NOT NULL DEFAULT '0',
  `paid` int(15) unsigned NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `budget` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'U'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ahm_download_stats`
--

CREATE TABLE IF NOT EXISTS `wp_ahm_download_stats` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `oid` varchar(100) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_ahm_download_stats`
--

INSERT INTO `wp_ahm_download_stats` (`id`, `pid`, `uid`, `oid`, `year`, `month`, `day`, `timestamp`, `ip`) VALUES
(1, 87, 1, '', 2018, 4, 9, 1523260947, '10.0.2.2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_ahm_emails`
--

CREATE TABLE IF NOT EXISTS `wp_ahm_emails` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `custom_data` text NOT NULL,
  `request_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-05 04:23:45', '2018-04-05 04:23:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 64, 'fefefef', 'fefef@fe.fe', '', '10.0.2.2', '2018-04-10 16:08:27', '2018-04-10 09:08:27', 'fefefefef', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', 0, 0),
(3, 64, 'fefefef', 'fefef@fe.fe', '', '10.0.2.2', '2018-04-10 16:44:21', '2018-04-10 09:44:21', 'fffffffffffffffffff', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_kstats_charts`
--

CREATE TABLE IF NOT EXISTS `wp_kstats_charts` (
  `chart` int(10) unsigned DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `ip` int(10) unsigned DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_520_ci,
  `referrer` text COLLATE utf8mb4_unicode_520_ci,
  `user_agent` text COLLATE utf8mb4_unicode_520_ci,
  `os` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `search_engine` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `search_terms` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `spider` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `feed` enum('','ATOM','COMMENT ATOM','COMMENT RSS','RDF','RSS','RSS2') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_kstats_raw`
--

CREATE TABLE IF NOT EXISTS `wp_kstats_raw` (
  `id` bigint(20) unsigned NOT NULL,
  `timestamp` datetime NOT NULL,
  `ip` int(10) unsigned NOT NULL,
  `url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `referrer` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_520_ci,
  `os` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `search_engine` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `search_terms` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `spider` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `feed` enum('','ATOM','COMMENT ATOM','COMMENT RSS','RDF','RSS','RSS2') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `preserved` enum('1') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_kstats_raw`
--

INSERT INTO `wp_kstats_raw` (`id`, `timestamp`, `ip`, `url`, `referrer`, `user_agent`, `os`, `browser`, `search_engine`, `search_terms`, `spider`, `feed`, `user`, `preserved`) VALUES
(1, '2018-04-05 07:02:05', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(2, '2018-04-05 07:02:10', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(3, '2018-04-05 07:02:11', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(4, '2018-04-05 07:02:12', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(5, '2018-04-05 07:02:23', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(6, '2018-04-05 07:02:26', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(7, '2018-04-05 07:02:27', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(8, '2018-04-05 07:02:28', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(9, '2018-04-05 07:02:30', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(10, '2018-04-05 07:23:05', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(11, '2018-04-05 07:23:08', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(12, '2018-04-05 07:23:11', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(13, '2018-04-05 09:22:48', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(14, '2018-04-05 09:23:11', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(15, '2018-04-05 09:23:19', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 'Windows', 'Mozilla rv:11.0', '', '', '', '', '', NULL),
(16, '2018-04-05 09:24:59', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(17, '2018-04-05 09:25:49', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(18, '2018-04-05 09:28:10', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(19, '2018-04-05 09:28:21', 167772674, 'http://dev5.local/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(20, '2018-04-06 15:27:33', 2130706433, 'http://nongthon-wp.local/', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 7', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(21, '2018-04-06 15:27:42', 2130706433, 'http://nongthon-wp.local/', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 7', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(22, '2018-04-10 16:07:21', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(23, '2018-04-10 16:08:03', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(24, '2018-04-10 16:08:28', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(25, '2018-04-10 16:08:30', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(26, '2018-04-10 16:18:27', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(27, '2018-04-10 16:18:29', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(28, '2018-04-10 16:18:33', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(29, '2018-04-10 16:18:35', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(30, '2018-04-10 16:18:35', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(31, '2018-04-10 16:18:37', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(32, '2018-04-10 16:19:28', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(33, '2018-04-10 16:19:30', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(34, '2018-04-10 16:19:56', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(35, '2018-04-10 16:19:59', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(36, '2018-04-10 16:20:27', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(37, '2018-04-10 16:20:29', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(38, '2018-04-10 16:23:04', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(39, '2018-04-10 16:23:06', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(40, '2018-04-10 16:36:13', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(41, '2018-04-10 16:36:14', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(42, '2018-04-10 16:36:35', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/?replytocom=2', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(43, '2018-04-10 16:36:36', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(44, '2018-04-10 16:36:41', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(45, '2018-04-10 16:36:43', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(46, '2018-04-10 16:37:53', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(47, '2018-04-10 16:37:54', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(48, '2018-04-10 16:39:20', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(49, '2018-04-10 16:39:22', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(50, '2018-04-10 16:40:30', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(51, '2018-04-10 16:40:32', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(52, '2018-04-10 16:44:01', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(53, '2018-04-10 16:44:03', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(54, '2018-04-10 16:44:13', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(55, '2018-04-10 16:44:15', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(56, '2018-04-10 16:44:22', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(57, '2018-04-10 16:44:24', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(58, '2018-04-10 16:44:39', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(59, '2018-04-10 16:44:41', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(60, '2018-04-10 16:47:39', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(61, '2018-04-10 16:47:41', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(62, '2018-04-10 16:51:12', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(63, '2018-04-10 16:51:15', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(64, '2018-04-10 16:51:59', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(65, '2018-04-10 16:52:00', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(66, '2018-04-10 16:53:57', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(67, '2018-04-10 16:53:59', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(68, '2018-04-10 16:55:57', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(69, '2018-04-10 16:55:59', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(70, '2018-04-10 16:56:11', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(71, '2018-04-10 16:56:13', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(72, '2018-04-10 16:56:25', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(73, '2018-04-10 16:56:27', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(74, '2018-04-10 17:06:27', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(75, '2018-04-10 17:06:29', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(76, '2018-04-10 17:07:56', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(77, '2018-04-10 17:07:58', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(78, '2018-04-10 17:08:57', 167772674, '/news/hoat-dong-cac-ban-nganh/bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL),
(79, '2018-04-10 17:08:58', 167772674, '/wp-includes/js/jquery/jquery.form.min.js.map', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_kstats_totals`
--

CREATE TABLE IF NOT EXISTS `wp_kstats_totals` (
  `type` enum('totals','monthly','daily') COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `visitors` int(10) unsigned NOT NULL,
  `pageviews` int(10) unsigned NOT NULL,
  `spiders` int(10) unsigned NOT NULL,
  `feeds` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_album`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `sortorder` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `title` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `galdesc` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ngg_gallery`
--

INSERT INTO `wp_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'album-nextgen', 'album-nextgen', '/wp-content/gallery/album-nextgen/', 'album nextgen', '', 0, 1, 1, 247);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_pictures`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `alttext` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ngg_pictures`
--

INSERT INTO `wp_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(1, '08-35-19_img_1548', 0, 1, '08-35-19_img_1548.jpg', 'fefefef', '08-35-19_img_1548', '2018-04-16 02:48:35', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiIwOC0zNS0xOV9pbWdfMTU0OC5qcGciLCJ3aWR0aCI6NjY1LCJoZWlnaHQiOjQ0MywiZ2VuZXJhdGVkIjoiMC4zMzc0MTgwMCAxNTIzODQ2MDYzIn0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsIndpZHRoIjo2NjUsImhlaWdodCI6NDQzLCJzYXZlZCI6dHJ1ZSwibWQ1IjoiYWJmNGY5ZGY4MDkwNDkwOTAzNGZjY2MxMzAzNzg5MGMiLCJmdWxsIjp7IndpZHRoIjo2NjUsImhlaWdodCI6NDQzLCJtZDUiOiJhYmY0ZjlkZjgwOTA0OTA5MDM0ZmNjYzEzMDM3ODkwYyJ9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzXzA4LTM1LTE5X2ltZ18xNTQ4LmpwZyIsImdlbmVyYXRlZCI6IjAuNzM1MDYwMDAgMTUyMzg0NjA2MyJ9fQ==', 246, 1523847765),
(2, '15-19-13_nh-2-sn-xut-luon-giong', 0, 1, '15-19-13_nh-2-sn-xut-luon-giong.jpg', '15-19-13_nh-2-sn-xut-luon-giong', '15-19-13_nh-2-sn-xut-luon-giong', '2018-04-16 02:48:40', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiIxNS0xOS0xM19uaC0yLXNuLXh1dC1sdW9uLWdpb25nLmpwZyIsIndpZHRoIjo2NjUsImhlaWdodCI6NDQyLCJnZW5lcmF0ZWQiOiIwLjE0MDUwMDAwIDE1MjM4NDYwNjgifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwid2lkdGgiOjY2NSwiaGVpZ2h0Ijo0NDIsInNhdmVkIjp0cnVlLCJtZDUiOiI1OWI3NzlhODM3OThkNDcxMjY5NGNiYzE0ZWZhMmZkYyIsImZ1bGwiOnsid2lkdGgiOjY2NSwiaGVpZ2h0Ijo0NDIsIm1kNSI6IjU5Yjc3OWE4Mzc5OGQ0NzEyNjk0Y2JjMTRlZmEyZmRjIn0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfMTUtMTktMTNfbmgtMi1zbi14dXQtbHVvbi1naW9uZy5qcGciLCJnZW5lcmF0ZWQiOiIwLjM3NzA1MjAwIDE1MjM4NDYwNjgifX0=', 249, 1523847765),
(3, '15-23-30_1', 0, 1, '15-23-30_1.jpg', '15-23-30_1êf', '15-23-30_1', '2018-04-16 02:48:43', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiIxNS0yMy0zMF8xLmpwZyIsIndpZHRoIjo2NjUsImhlaWdodCI6NDk4LCJnZW5lcmF0ZWQiOiIwLjEwNDgyNDAwIDE1MjM4NDYwNzEifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwid2lkdGgiOjY2NSwiaGVpZ2h0Ijo0OTgsInNhdmVkIjp0cnVlLCJtZDUiOiI1OGYxNjAyZjZiNzkyMWJlMmU4NjQzOTZjYTE2N2FlYSIsImZ1bGwiOnsid2lkdGgiOjY2NSwiaGVpZ2h0Ijo0OTgsIm1kNSI6IjU4ZjE2MDJmNmI3OTIxYmUyZTg2NDM5NmNhMTY3YWVhIn0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfMTUtMjMtMzBfMS5qcGciLCJnZW5lcmF0ZWQiOiIwLjMzODczNzAwIDE1MjM4NDYwNzEifX0=', 251, 1523847765),
(4, '77d205t859l0', 0, 1, '77d205t859l0.jpg', '77d2 05t8 59l 0dsfsf', '77d205t859l0', '2018-04-16 02:48:46', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiI3N2QyMDV0ODU5bDAuanBnIiwid2lkdGgiOjU1MCwiaGVpZ2h0IjozNjcsImdlbmVyYXRlZCI6IjAuMTYxMDIxMDAgMTUyMzg0NjA3NCJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NTUwLCJoZWlnaHQiOjM2Nywic2F2ZWQiOnRydWUsIm1kNSI6IjllMzNlMTIzNzQzZTlmNmIzMDJjMTdlMzQ0NzE4OTIzIiwiZnVsbCI6eyJ3aWR0aCI6NTUwLCJoZWlnaHQiOjM2NywibWQ1IjoiOWUzM2UxMjM3NDNlOWY2YjMwMmMxN2UzNDQ3MTg5MjMifSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic183N2QyMDV0ODU5bDAuanBnIiwiZ2VuZXJhdGVkIjoiMC41MzgwNTUwMCAxNTIzODQ2MDc0In19', 253, 1523847765),
(5, '77d607t8513l0', 0, 1, '77d607t8513l0.jpg', '77d 607 t8513 l0s dfsf', '77d607t8513l0', '2018-04-16 02:48:49', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiI3N2Q2MDd0ODUxM2wwLmpwZyIsIndpZHRoIjo1NTAsImhlaWdodCI6MzY3LCJnZW5lcmF0ZWQiOiIwLjIyNTUyNDAwIDE1MjM4NDYwNzcifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwid2lkdGgiOjU1MCwiaGVpZ2h0IjozNjcsInNhdmVkIjp0cnVlLCJtZDUiOiI1N2Y0ZDc2OWI1MjYxZDgzMjY3YmY3MTZjMGQ2NDkzMSIsImZ1bGwiOnsid2lkdGgiOjU1MCwiaGVpZ2h0IjozNjcsIm1kNSI6IjU3ZjRkNzY5YjUyNjFkODMyNjdiZjcxNmMwZDY0OTMxIn0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfNzdkNjA3dDg1MTNsMC5qcGciLCJnZW5lcmF0ZWQiOiIwLjU5NDYxNDAwIDE1MjM4NDYwNzcifX0=', 255, 1523847765),
(6, '102d208t278l0', 0, 1, '102d208t278l0.jpg', '10 2d2 08t2 78l0 grgrg', '102d208t278l0', '2017-01-04 09:46:08', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiIxMDJkMjA4dDI3OGwwLmpwZyIsIndpZHRoIjo1NTAsImhlaWdodCI6MzY3LCJnZW5lcmF0ZWQiOiIwLjQ1MjU2ODAwIDE1MjM4NDYwODAifSwiYXBlcnR1cmUiOiJGIDQiLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOiJDYW5vbiBFT1MgNjBEIiwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjoxNDgzNTIzMTY4LCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOiIyOCBtbSIsImlzbyI6MTAwMCwic2h1dHRlcl9zcGVlZCI6IjFcLzUwIHNlYyIsImZsYXNoIjoiTm90IGZpcmVkIiwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsIndpZHRoIjo1NTAsImhlaWdodCI6MzY3LCJzYXZlZCI6dHJ1ZSwibWQ1IjoiZjJlYTIzNmZiYjI1ZWE1OTAwODBhMDE4MmE2MzIwNDMiLCJmdWxsIjp7IndpZHRoIjo1NTAsImhlaWdodCI6MzY3LCJtZDUiOiJmMmVhMjM2ZmJiMjVlYTU5MDA4MGEwMTgyYTYzMjA0MyJ9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzXzEwMmQyMDh0Mjc4bDAuanBnIiwiZ2VuZXJhdGVkIjoiMC45MDIyODQwMCAxNTIzODQ2MDgwIn19', 257, 1523847765),
(7, '105d3074713t8078l7', 0, 1, '105d3074713t8078l7.jpg', '105d 3074713 t8078l7 grgrrrrr', '105d3074713t8078l7', '2016-08-04 09:01:14', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiIxMDVkMzA3NDcxM3Q4MDc4bDcuanBnIiwid2lkdGgiOjU1MCwiaGVpZ2h0IjozNjcsImdlbmVyYXRlZCI6IjAuNzQ5OTUwMDAgMTUyMzg0NjA4MiJ9LCJhcGVydHVyZSI6IkYgOCIsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6Ik5JS09OIEQ5MCIsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6MTQ3MDMwMTI3NCwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjoiMTggbW0iLCJpc28iOjgwMCwic2h1dHRlcl9zcGVlZCI6IjFcLzI1MCBzZWMiLCJmbGFzaCI6Ik5vdCBmaXJlZCIsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NTUwLCJoZWlnaHQiOjM2Nywic2F2ZWQiOnRydWUsIm1kNSI6IjU3NGI1Mzg4NTc4Y2ExNzA1NjhmZTBjODliNDNlZjRkIiwiZnVsbCI6eyJ3aWR0aCI6NTUwLCJoZWlnaHQiOjM2NywibWQ1IjoiNTc0YjUzODg1NzhjYTE3MDU2OGZlMGM4OWI0M2VmNGQifSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic18xMDVkMzA3NDcxM3Q4MDc4bDcuanBnIiwiZ2VuZXJhdGVkIjoiMC4yMDc2MTMwMCAxNTIzODQ2MDgzIn19', 259, 1523847765);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=956 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://nongthon-wp.local', 'yes'),
(2, 'home', 'http://nongthon-wp.local', 'yes'),
(3, 'blogname', 'nongthon', 'yes'),
(4, 'blogdescription', 'Văn phòng Điều phối chương trình Nông thôn mới tỉnh Hà Tĩnh', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nongthon@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:327:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:7:"laws/?$";s:24:"index.php?post_type=laws";s:37:"laws/feed/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=laws&feed=$matches[1]";s:32:"laws/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=laws&feed=$matches[1]";s:24:"laws/page/([0-9]{1,})/?$";s:42:"index.php?post_type=laws&paged=$matches[1]";s:6:"faq/?$";s:23:"index.php?post_type=faq";s:36:"faq/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?post_type=faq&feed=$matches[1]";s:31:"faq/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?post_type=faq&feed=$matches[1]";s:23:"faq/page/([0-9]{1,})/?$";s:41:"index.php?post_type=faq&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:57:"co-quan-ban-hanh/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?co-quan-ban-hanh=$matches[1]&feed=$matches[2]";s:52:"co-quan-ban-hanh/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?co-quan-ban-hanh=$matches[1]&feed=$matches[2]";s:33:"co-quan-ban-hanh/([^/]+)/embed/?$";s:49:"index.php?co-quan-ban-hanh=$matches[1]&embed=true";s:45:"co-quan-ban-hanh/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?co-quan-ban-hanh=$matches[1]&paged=$matches[2]";s:27:"co-quan-ban-hanh/([^/]+)/?$";s:38:"index.php?co-quan-ban-hanh=$matches[1]";s:53:"loai-van-ban/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?loai-van-ban=$matches[1]&feed=$matches[2]";s:48:"loai-van-ban/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?loai-van-ban=$matches[1]&feed=$matches[2]";s:29:"loai-van-ban/([^/]+)/embed/?$";s:45:"index.php?loai-van-ban=$matches[1]&embed=true";s:41:"loai-van-ban/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?loai-van-ban=$matches[1]&paged=$matches[2]";s:23:"loai-van-ban/([^/]+)/?$";s:34:"index.php?loai-van-ban=$matches[1]";s:57:"don-vi-phong-ban/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?don-vi-phong-ban=$matches[1]&feed=$matches[2]";s:52:"don-vi-phong-ban/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?don-vi-phong-ban=$matches[1]&feed=$matches[2]";s:33:"don-vi-phong-ban/([^/]+)/embed/?$";s:49:"index.php?don-vi-phong-ban=$matches[1]&embed=true";s:45:"don-vi-phong-ban/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?don-vi-phong-ban=$matches[1]&paged=$matches[2]";s:27:"don-vi-phong-ban/([^/]+)/?$";s:38:"index.php?don-vi-phong-ban=$matches[1]";s:49:"linh-vuc/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?linh-vuc=$matches[1]&feed=$matches[2]";s:44:"linh-vuc/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?linh-vuc=$matches[1]&feed=$matches[2]";s:25:"linh-vuc/([^/]+)/embed/?$";s:41:"index.php?linh-vuc=$matches[1]&embed=true";s:37:"linh-vuc/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?linh-vuc=$matches[1]&paged=$matches[2]";s:19:"linh-vuc/([^/]+)/?$";s:30:"index.php?linh-vuc=$matches[1]";s:50:"phan-loai/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?phan-loai=$matches[1]&feed=$matches[2]";s:45:"phan-loai/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?phan-loai=$matches[1]&feed=$matches[2]";s:26:"phan-loai/([^/]+)/embed/?$";s:42:"index.php?phan-loai=$matches[1]&embed=true";s:38:"phan-loai/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?phan-loai=$matches[1]&paged=$matches[2]";s:20:"phan-loai/([^/]+)/?$";s:31:"index.php?phan-loai=$matches[1]";s:36:"download/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"download/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"download/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"download/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"download/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"download/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"download/([^/]+)/embed/?$";s:40:"index.php?wpdmpro=$matches[1]&embed=true";s:29:"download/([^/]+)/trackback/?$";s:34:"index.php?wpdmpro=$matches[1]&tb=1";s:37:"download/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?wpdmpro=$matches[1]&paged=$matches[2]";s:44:"download/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?wpdmpro=$matches[1]&cpage=$matches[2]";s:33:"download/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?wpdmpro=$matches[1]&page=$matches[2]";s:25:"download/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"download/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"download/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"download/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"download/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"download/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:58:"download-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?wpdmcategory=$matches[1]&feed=$matches[2]";s:53:"download-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?wpdmcategory=$matches[1]&feed=$matches[2]";s:34:"download-category/([^/]+)/embed/?$";s:45:"index.php?wpdmcategory=$matches[1]&embed=true";s:46:"download-category/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?wpdmcategory=$matches[1]&paged=$matches[2]";s:28:"download-category/([^/]+)/?$";s:34:"index.php?wpdmcategory=$matches[1]";s:48:"ngg_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?ngg_tag=$matches[1]&feed=$matches[2]";s:43:"ngg_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?ngg_tag=$matches[1]&feed=$matches[2]";s:24:"ngg_tag/([^/]+)/embed/?$";s:40:"index.php?ngg_tag=$matches[1]&embed=true";s:36:"ngg_tag/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?ngg_tag=$matches[1]&paged=$matches[2]";s:18:"ngg_tag/([^/]+)/?$";s:29:"index.php?ngg_tag=$matches[1]";s:37:"ngg_album/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"ngg_album/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"ngg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"ngg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"ngg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"ngg_album/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"ngg_album/([^/]+)/embed/?$";s:42:"index.php?ngg_album=$matches[1]&embed=true";s:30:"ngg_album/([^/]+)/trackback/?$";s:36:"index.php?ngg_album=$matches[1]&tb=1";s:38:"ngg_album/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?ngg_album=$matches[1]&paged=$matches[2]";s:45:"ngg_album/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?ngg_album=$matches[1]&cpage=$matches[2]";s:34:"ngg_album/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?ngg_album=$matches[1]&page=$matches[2]";s:26:"ngg_album/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"ngg_album/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"ngg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"ngg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"ngg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"ngg_album/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"ngg_gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"ngg_gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"ngg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"ngg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"ngg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"ngg_gallery/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"ngg_gallery/([^/]+)/embed/?$";s:44:"index.php?ngg_gallery=$matches[1]&embed=true";s:32:"ngg_gallery/([^/]+)/trackback/?$";s:38:"index.php?ngg_gallery=$matches[1]&tb=1";s:40:"ngg_gallery/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?ngg_gallery=$matches[1]&paged=$matches[2]";s:47:"ngg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?ngg_gallery=$matches[1]&cpage=$matches[2]";s:36:"ngg_gallery/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?ngg_gallery=$matches[1]&page=$matches[2]";s:28:"ngg_gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"ngg_gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"ngg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"ngg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"ngg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"ngg_gallery/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"ngg_pictures/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"ngg_pictures/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"ngg_pictures/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"ngg_pictures/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"ngg_pictures/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"ngg_pictures/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"ngg_pictures/([^/]+)/embed/?$";s:45:"index.php?ngg_pictures=$matches[1]&embed=true";s:33:"ngg_pictures/([^/]+)/trackback/?$";s:39:"index.php?ngg_pictures=$matches[1]&tb=1";s:41:"ngg_pictures/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?ngg_pictures=$matches[1]&paged=$matches[2]";s:48:"ngg_pictures/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?ngg_pictures=$matches[1]&cpage=$matches[2]";s:37:"ngg_pictures/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?ngg_pictures=$matches[1]&page=$matches[2]";s:29:"ngg_pictures/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"ngg_pictures/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"ngg_pictures/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"ngg_pictures/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"ngg_pictures/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"ngg_pictures/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"lightbox_library/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"lightbox_library/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"lightbox_library/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"lightbox_library/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"lightbox_library/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"lightbox_library/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"lightbox_library/([^/]+)/embed/?$";s:49:"index.php?lightbox_library=$matches[1]&embed=true";s:37:"lightbox_library/([^/]+)/trackback/?$";s:43:"index.php?lightbox_library=$matches[1]&tb=1";s:45:"lightbox_library/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?lightbox_library=$matches[1]&paged=$matches[2]";s:52:"lightbox_library/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?lightbox_library=$matches[1]&cpage=$matches[2]";s:41:"lightbox_library/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?lightbox_library=$matches[1]&page=$matches[2]";s:33:"lightbox_library/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"lightbox_library/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"lightbox_library/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"lightbox_library/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"lightbox_library/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"lightbox_library/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"amn_smtp/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"amn_smtp/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"amn_smtp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"amn_smtp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"amn_smtp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"amn_smtp/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"amn_smtp/([^/]+)/embed/?$";s:41:"index.php?amn_smtp=$matches[1]&embed=true";s:29:"amn_smtp/([^/]+)/trackback/?$";s:35:"index.php?amn_smtp=$matches[1]&tb=1";s:37:"amn_smtp/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?amn_smtp=$matches[1]&paged=$matches[2]";s:44:"amn_smtp/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?amn_smtp=$matches[1]&cpage=$matches[2]";s:33:"amn_smtp/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?amn_smtp=$matches[1]&page=$matches[2]";s:25:"amn_smtp/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"amn_smtp/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"amn_smtp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"amn_smtp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"amn_smtp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"amn_smtp/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"laws/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"laws/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"laws/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"laws/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"laws/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"laws/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"laws/([^/]+)/embed/?$";s:37:"index.php?laws=$matches[1]&embed=true";s:25:"laws/([^/]+)/trackback/?$";s:31:"index.php?laws=$matches[1]&tb=1";s:45:"laws/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?laws=$matches[1]&feed=$matches[2]";s:40:"laws/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?laws=$matches[1]&feed=$matches[2]";s:33:"laws/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?laws=$matches[1]&paged=$matches[2]";s:40:"laws/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?laws=$matches[1]&cpage=$matches[2]";s:29:"laws/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?laws=$matches[1]&page=$matches[2]";s:21:"laws/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"laws/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"laws/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"laws/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"laws/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"laws/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"faq/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"faq/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"faq/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:20:"faq/([^/]+)/embed/?$";s:36:"index.php?faq=$matches[1]&embed=true";s:24:"faq/([^/]+)/trackback/?$";s:30:"index.php?faq=$matches[1]&tb=1";s:44:"faq/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?faq=$matches[1]&feed=$matches[2]";s:39:"faq/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?faq=$matches[1]&feed=$matches[2]";s:32:"faq/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?faq=$matches[1]&paged=$matches[2]";s:39:"faq/([^/]+)/comment-page-([0-9]{1,})/?$";s:43:"index.php?faq=$matches[1]&cpage=$matches[2]";s:28:"faq/([^/]+)(?:/([0-9]+))?/?$";s:42:"index.php?faq=$matches[1]&page=$matches[2]";s:20:"faq/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:"faq/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:"faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"faq/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"displayed_gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"displayed_gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"displayed_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"displayed_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"displayed_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"displayed_gallery/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"displayed_gallery/([^/]+)/embed/?$";s:50:"index.php?displayed_gallery=$matches[1]&embed=true";s:38:"displayed_gallery/([^/]+)/trackback/?$";s:44:"index.php?displayed_gallery=$matches[1]&tb=1";s:46:"displayed_gallery/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?displayed_gallery=$matches[1]&paged=$matches[2]";s:53:"displayed_gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?displayed_gallery=$matches[1]&cpage=$matches[2]";s:42:"displayed_gallery/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?displayed_gallery=$matches[1]&page=$matches[2]";s:34:"displayed_gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"displayed_gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"displayed_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"displayed_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"displayed_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"displayed_gallery/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"display_type/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"display_type/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"display_type/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"display_type/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"display_type/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"display_type/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"display_type/([^/]+)/embed/?$";s:45:"index.php?display_type=$matches[1]&embed=true";s:33:"display_type/([^/]+)/trackback/?$";s:39:"index.php?display_type=$matches[1]&tb=1";s:41:"display_type/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?display_type=$matches[1]&paged=$matches[2]";s:48:"display_type/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?display_type=$matches[1]&cpage=$matches[2]";s:37:"display_type/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?display_type=$matches[1]&page=$matches[2]";s:29:"display_type/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"display_type/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"display_type/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"display_type/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"display_type/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"display_type/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:46:"gal_display_source/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"gal_display_source/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"gal_display_source/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"gal_display_source/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"gal_display_source/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"gal_display_source/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"gal_display_source/([^/]+)/embed/?$";s:51:"index.php?gal_display_source=$matches[1]&embed=true";s:39:"gal_display_source/([^/]+)/trackback/?$";s:45:"index.php?gal_display_source=$matches[1]&tb=1";s:47:"gal_display_source/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?gal_display_source=$matches[1]&paged=$matches[2]";s:54:"gal_display_source/([^/]+)/comment-page-([0-9]{1,})/?$";s:58:"index.php?gal_display_source=$matches[1]&cpage=$matches[2]";s:43:"gal_display_source/([^/]+)(?:/([0-9]+))?/?$";s:57:"index.php?gal_display_source=$matches[1]&page=$matches[2]";s:35:"gal_display_source/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"gal_display_source/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"gal_display_source/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"gal_display_source/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"gal_display_source/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"gal_display_source/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:31:".+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:".+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:".+?/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"(.+?)/([^/]+)/embed/?$";s:63:"index.php?category_name=$matches[1]&name=$matches[2]&embed=true";s:26:"(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:46:"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:41:"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:34:"(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:41:"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:30:"(.+?)/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:20:".+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:".+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:".+?/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:14:"(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:8:"(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:33:"addthis/addthis_social_widget.php";i:1;s:21:"adrotate/adrotate.php";i:2;s:30:"advanced-custom-fields/acf.php";i:3;s:37:"download-manager/download-manager.php";i:4;s:35:"kstats-reloaded/kstats-reloaded.php";i:5;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:6;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:7;s:27:"wp-pagenavi/wp-pagenavi.php";i:8;s:21:"wp-polls/wp-polls.php";i:9;s:33:"wp-postratings/wp-postratings.php";i:10;s:29:"nextgen-gallery/nggallery.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:4:{s:35:"kstats-reloaded/kstats-reloaded.php";s:16:"kstats_uninstall";s:21:"adrotate/adrotate.php";s:18:"adrotate_uninstall";s:31:"rating-widget/rating-widget.php";a:2:{i:0;s:8:"Freemius";i:1;s:22:"_uninstall_plugin_hook";}s:27:"wp-pagenavi/wp-pagenavi.php";s:14:"__return_false";}', 'no'),
(82, 'timezone_string', 'Asia/Ho_Chi_Minh', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:78:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:12:"manage_polls";b:1;s:18:"adrotate_ad_manage";b:1;s:18:"adrotate_ad_delete";b:1;s:21:"adrotate_group_manage";b:1;s:21:"adrotate_group_delete";b:1;s:21:"access_server_browser";b:1;s:14:"manage_ratings";b:1;s:24:"NextGEN Gallery overview";b:1;s:19:"NextGEN Use TinyMCE";b:1;s:21:"NextGEN Upload images";b:1;s:22:"NextGEN Manage gallery";b:1;s:19:"NextGEN Manage tags";b:1;s:29:"NextGEN Manage others gallery";b:1;s:18:"NextGEN Edit album";b:1;s:20:"NextGEN Change style";b:1;s:22:"NextGEN Change options";b:1;s:24:"NextGEN Attach Interface";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:8:"kstats-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'nonce_key', 'Gl5j#vZt 2R/dULM*SBBB*tp@<9QJw8j+?z*9-ozt:elY^ /nc6,Wb&ri{P44sZh', 'no'),
(107, 'nonce_salt', 'Z#H>?jmG&GCeDIvQRhGKI. >_tQ}pu(f8~~j}4Gyhs!Q)U!g:l!)SIo/^V >07-t', 'no'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:11:{i:1523891630;a:1:{s:29:"ngg_delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"ngg_custom";s:4:"args";a:0:{}s:8:"interval";i:900;}}}i:1523895837;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523905873;a:1:{s:27:"polldaddy_rating_update_job";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523913909;a:1:{s:21:"adrotate_evaluate_ads";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523914809;a:1:{s:26:"adrotate_empty_trackerdata";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523923260;a:1:{s:21:"kstats_aggregate_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523939042;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523947994;a:1:{s:28:"wp_statistics_add_visit_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523958462;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523977027;a:1:{s:10:"polls_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'auth_key', 'v?Gu<P]g5AWlM4mwcC3`PbO1GCzmQtd9.6}3_#}|$du&lR{1N?H^!4^Gv o-Ve~G', 'no'),
(114, 'auth_salt', 'uNg{;>mvy~DU^_Gi]@d^f/WMOsx}T%-}:|v8x{<5KMcl;}0TlMr79<ywf&2zQh/~', 'no'),
(115, 'logged_in_key', 'CNgDz f%7.w]4sP$[y:n^v!B^5>i^R=tNy.><E5((xf#K4PZO`O|<E_2gt<|!x H', 'no'),
(116, 'logged_in_salt', '/2NB3Wkn-h:voe]K%PEzC N{OI^9$~Vk/YzQUCgl-Y|{SN_#r2:;<XWCGI#3rYV6', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(137, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:6:"social";i:0;s:3:"top";i:10;}}', 'yes'),
(141, 'recently_activated', 'a:2:{s:43:"envira-gallery-lite/envira-gallery-lite.php";i:1523848243;s:31:"rating-widget/rating-widget.php";i:1523349338;}', 'yes'),
(148, 'wp_statistics_plugin_version', '12.3.5', 'yes'),
(149, 'wp_statistics_db_version', '12.3.5', 'yes'),
(150, 'wp_statistics', 'a:27:{s:18:"pending_db_updates";a:2:{s:13:"date_ip_agent";b:0;s:11:"unique_date";b:0;}s:16:"search_converted";i:1;s:9:"robotlist";s:1715:"007ac9\n5bot\nA6-Indexer\nAbachoBOT\naccoona\nAcoiRobot\nAddThis.com\nADmantX\nAdsBot-Google\nadvbot\nAhrefsBot\naiHitBot\nalexa\nalphabot\nAltaVista\nAntivirusPro\nanyevent\nappie\nApplebot\narchive.org_bot\nAsk Jeeves\nASPSeek\nBaiduspider\nBenjojo\nBeetleBot\nbingbot\nBlekkobot\nblexbot\nBOT for JCE\nbubing\nButterfly\ncbot\nclamantivirus\ncliqzbot\nclumboot\ncoccoc\ncrawler\nCrocCrawler\ncrowsnest.tv\ndbot\ndl2bot\ndotbot\ndownloadbot\nduckduckgo\nDumbot\nEasouSpider\neStyle\nEveryoneSocialBot\nExabot\nezooms\nfacebook.com\nfacebookexternalhit\nFAST\nFeedfetcher-Google\nfeedzirra\nfindxbot\nFirfly\nFriendFeedBot\nfroogle\nGeonaBot\nGigabot\ngirafabot\ngimme60bot\nglbot\nGooglebot\nGroupHigh\nia_archiver\nIDBot\nInfoSeek\ninktomi\nIstellaBot\njetmon\nKraken\nLeikibot\nlinkapediabot\nlinkdexbot\nLinkpadBot\nLoadTimeBot\nlooksmart\nltx71\nLycos\nMail.RU_Bot\nMe.dium\nmeanpathbot\nmediabot\nmedialbot\nMediapartners-Google\nMJ12bot\nmsnbot\nMojeekBot\nmonobot\nmoreover\nMRBOT\nNationalDirectory\nNerdyBot\nNetcraftSurveyAgent\nniki-bot\nnutch\nOpenbot\nOrangeBot\nowler\np4Bot\nPaperLiBot\npageanalyzer\nPagesInventory\nPimonster\nporkbun\npr-cy\nproximic\npwbot\nr4bot\nrabaz\nRambler\nRankivabot\nrevip\nriddler\nrogerbot\nScooter\nScrubby\nscrapy.org\nSearchmetricsBot\nsees.co\nSemanticBot\nSemrushBot\nSeznamBot\nsfFeedReader\nshareaholic-bot\nsistrix\nSiteExplorer\nSlurp\nSocialradarbot\nSocialSearch\nSogou web spider\nSpade\nspbot\nSpiderLing\nSputnikBot\nSuperfeedr\nSurveyBot\nTechnoratiSnoop\nTECNOSEEK\nTeoma\ntrendictionbot\nTweetmemeBot\nTwiceler\nTwitterbot\nTwitturls\nu2bot\nuMBot-LN\nuni5download\nunrulymedia\nUptimeRobot\nURL_Spider_SQL\nVagabondo\nvBSEO\nWASALive-Bot\nWebAlta Crawler\nWebBug\nWebFindBot\nWebMasterAid\nWeSEE\nWotbox\nwsowner\nwsr-agent\nwww.galaxy.com\nx100bot\nXoviBot\nxzybot\nyandex\nYahoo\nYammybot\nYoudaoBot\nZyBorg\nZemlyaCrawl";s:5:"geoip";b:0;s:8:"browscap";b:0;s:10:"useronline";b:1;s:6:"visits";b:1;s:8:"visitors";b:1;s:5:"pages";b:1;s:12:"check_online";s:2:"30";s:8:"menu_bar";b:0;s:11:"coefficient";s:1:"1";s:12:"stats_report";b:0;s:11:"time_report";s:5:"daily";s:11:"send_report";s:4:"mail";s:14:"content_report";s:0:"";s:12:"update_geoip";b:1;s:8:"store_ua";b:0;s:21:"exclude_administrator";b:1;s:18:"disable_se_clearch";b:1;s:14:"disable_se_ask";b:1;s:8:"map_type";s:6:"jqvmap";s:18:"force_robot_update";b:1;s:17:"show_welcome_page";b:0;s:23:"first_show_welcome_page";b:1;s:6:"widget";a:24:{s:11:"name_widget";s:0:"";s:17:"useronline_widget";s:2:"on";s:13:"tvisit_widget";s:2:"on";s:15:"tvisitor_widget";s:0:"";s:13:"yvisit_widget";s:0:"";s:15:"yvisitor_widget";s:0:"";s:13:"wvisit_widget";s:0:"";s:13:"mvisit_widget";s:0:"";s:14:"ysvisit_widget";s:0:"";s:14:"ttvisit_widget";s:2:"on";s:16:"ttvisitor_widget";s:0:"";s:14:"tpviews_widget";s:0:"";s:10:"ser_widget";s:0:"";s:9:"select_se";s:0:"";s:9:"tp_widget";s:0:"";s:10:"tpg_widget";s:0:"";s:9:"tc_widget";s:0:"";s:9:"ts_widget";s:0:"";s:9:"tu_widget";s:0:"";s:9:"ap_widget";s:0:"";s:9:"ac_widget";s:0:"";s:9:"au_widget";s:0:"";s:10:"lpd_widget";s:0:"";s:10:"select_lps";s:0:"";}s:15:"update_browscap";b:1;}', 'yes'),
(151, 'widget_wp_statistics_widget', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(154, 'kstats_version', '0.7.4', 'yes'),
(155, 'kstats_options', 'a:10:{s:24:"dashboard_display_widget";i:1;s:22:"dashboard_days_to_show";s:2:"12";s:21:"overview_days_to_show";s:2:"21";s:28:"overview_recent_hits_to_show";s:2:"20";s:21:"database_days_to_keep";s:3:"365";s:23:"database_months_to_keep";s:2:"24";s:21:"database_rows_to_keep";s:4:"2000";s:22:"access_minimum_to_view";s:10:"subscriber";s:22:"access_minimum_to_edit";s:10:"subscriber";s:14:"ignore_ip_list";a:2:{i:0;s:9:"127.0.0.1";i:1;s:10:"64.41.145.";}}', 'yes'),
(156, 'widget_kstats', 'a:2:{i:2;a:3:{s:5:"title";s:15:"Blog Statistics";s:4:"body";s:152:"Currently Online: %visitors_online%\r\nHost: %hostbyaddr%\r\nToday: %todays_visitors%\r\nThis month: %thismonths_visitors%\r\nTotal Visitors: %total_visitors%\r\n";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(159, 'widget_pd_top_rated', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(162, 'poll_template_voteheader', '<p style="text-align: center"><strong>%POLL_QUESTION%</strong></p><div id="polls-%POLL_ID%-ans" class="wp-polls-ans p_polls_ans"><ul class="wp-polls-ul">', 'yes'),
(163, 'poll_template_votebody', '<li><input type="%POLL_CHECKBOX_RADIO%" id="poll-answer-%POLL_ANSWER_ID%" name="poll_%POLL_ID%" value="%POLL_ANSWER_ID%" /> <label for="poll-answer-%POLL_ANSWER_ID%">%POLL_ANSWER%</label></li>', 'yes'),
(164, 'poll_template_votefooter', '</ul><p style="text-align: center"><input type="button" name="vote" value="Bình chọn" class="Buttons p_btn_vote" onclick="poll_vote(%POLL_ID%);" /> <a href="#ViewPollResults" onclick="poll_result(%POLL_ID%); return false;" title="Xem kết quả" class="p_view_result">Kết quả</a></p>\r\n<div class="clear"></div></div>', 'yes'),
(165, 'poll_template_resultheader', '<p style="text-align: center"><strong>%POLL_QUESTION%</strong></p><div id="polls-%POLL_ID%-ans" class="wp-polls-ans p_polls_ans_view"><ul class="wp-polls-ul">', 'yes'),
(166, 'poll_template_resultbody', '<li>%POLL_ANSWER% <small>(%POLL_ANSWER_PERCENTAGE%%, %POLL_ANSWER_VOTES% Votes)</small><div class="pollbar" style="width: %POLL_ANSWER_IMAGEWIDTH%%" title="%POLL_ANSWER_TEXT% (%POLL_ANSWER_PERCENTAGE%% | %POLL_ANSWER_VOTES% Votes)"></div></li>', 'yes'),
(167, 'poll_template_resultbody2', '<li><strong><i>%POLL_ANSWER% <small>(%POLL_ANSWER_PERCENTAGE%%, %POLL_ANSWER_VOTES% Votes)</small></i></strong><div class="pollbar" style="width: %POLL_ANSWER_IMAGEWIDTH%%" title="Bạn vừa bình chọn cái này - %POLL_ANSWER_TEXT% (%POLL_ANSWER_PERCENTAGE%% | %POLL_ANSWER_VOTES% Votes)"></div></li>', 'yes'),
(168, 'poll_template_resultfooter', '</ul><p style="text-align: center">Tổng số: <strong>%POLL_TOTALVOTERS%</strong></p></div>', 'yes'),
(169, 'poll_template_resultfooter2', '</ul><p style="text-align: center">Tổng số: <strong>%POLL_TOTALVOTERS%</strong></p><p style="text-align: center"><a href="#VotePoll" onclick="poll_booth(%POLL_ID%); return false;" title="Về trang bình chọn">Bình chọn</a></p></div>', 'yes'),
(170, 'poll_template_disable', 'Sorry, there are no polls available at the moment.', 'yes'),
(171, 'poll_template_error', 'An error has occurred when processing your poll.', 'yes'),
(172, 'poll_currentpoll', '0', 'yes'),
(173, 'poll_latestpoll', '1', 'yes'),
(174, 'poll_archive_perpage', '5', 'yes'),
(175, 'poll_ans_sortby', 'polla_aid', 'yes'),
(176, 'poll_ans_sortorder', 'asc', 'yes'),
(177, 'poll_ans_result_sortby', 'polla_votes', 'yes'),
(178, 'poll_ans_result_sortorder', 'desc', 'yes'),
(179, 'poll_logging_method', '1', 'yes'),
(180, 'poll_allowtovote', '2', 'yes'),
(181, 'poll_archive_url', 'http://dev5.local/pollsarchive', 'yes'),
(182, 'poll_bar', 'a:4:{s:5:"style";s:7:"use_css";s:10:"background";s:6:"ff0000";s:6:"border";s:6:"ff0000";s:6:"height";i:8;}', 'yes'),
(183, 'poll_close', '1', 'yes'),
(184, 'poll_ajax_style', 'a:2:{s:7:"loading";i:1;s:6:"fading";i:1;}', 'yes'),
(185, 'poll_template_pollarchivelink', '<ul><li><a href="%POLL_ARCHIVE_URL%">Polls Archive</a></li></ul>', 'yes'),
(186, 'poll_archive_displaypoll', '2', 'yes'),
(187, 'poll_template_pollarchiveheader', '', 'yes'),
(188, 'poll_template_pollarchivefooter', '<p>Start Date: %POLL_START_DATE%<br />End Date: %POLL_END_DATE%</p>', 'yes'),
(189, 'poll_cookielog_expiry', '100', 'yes'),
(190, 'poll_template_pollarchivepagingheader', '', 'yes'),
(191, 'poll_template_pollarchivepagingfooter', '', 'yes'),
(192, 'widget_polls-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(204, 'adrotate_config', 'a:34:{s:10:"advertiser";s:10:"subscriber";s:13:"global_report";s:13:"administrator";s:9:"ad_manage";s:13:"administrator";s:9:"ad_delete";s:13:"administrator";s:12:"group_manage";s:13:"administrator";s:12:"group_delete";s:13:"administrator";s:15:"schedule_manage";s:13:"administrator";s:15:"schedule_delete";s:13:"administrator";s:8:"moderate";s:13:"administrator";s:16:"moderate_approve";s:13:"administrator";s:18:"enable_advertisers";s:1:"N";s:14:"enable_editing";s:1:"N";s:5:"stats";i:1;s:27:"enable_loggedin_impressions";s:1:"Y";s:22:"enable_loggedin_clicks";s:1:"Y";s:10:"enable_geo";i:0;s:9:"geo_email";s:0:"";s:8:"geo_pass";s:0:"";s:15:"geo_cookie_life";i:86400;s:22:"enable_geo_advertisers";i:0;s:16:"adblock_disguise";s:0:"";s:13:"banner_folder";s:7:"banners";s:8:"adminbar";s:1:"Y";s:16:"impression_timer";i:60;s:11:"click_timer";i:86400;s:14:"hide_schedules";s:1:"N";s:11:"widgetalign";s:1:"N";s:13:"widgetpadding";s:1:"N";s:9:"w3caching";s:1:"N";s:12:"borlabscache";s:1:"N";s:21:"textwidget_shortcodes";s:1:"N";s:19:"mobile_dynamic_mode";s:1:"N";s:6:"jquery";s:1:"N";s:8:"jsfooter";s:1:"Y";}', 'yes'),
(205, 'adrotate_notifications', 'a:3:{s:17:"notification_dash";s:1:"Y";s:25:"notification_dash_expired";s:1:"Y";s:22:"notification_dash_soon";s:1:"Y";}', 'yes'),
(206, 'adrotate_debug', 'a:4:{s:7:"general";b:0;s:9:"publisher";b:0;s:6:"timers";b:0;s:5:"track";b:0;}', 'yes'),
(207, 'adrotate_db_version', 'a:2:{s:7:"current";i:64;s:8:"previous";s:0:"";}', 'yes'),
(208, 'adrotate_version', 'a:2:{s:7:"current";i:391;s:8:"previous";s:0:"";}', 'yes'),
(209, 'adrotate_crawlers', 'a:88:{i:0;s:3:"008";i:1;s:3:"bot";i:2;s:7:"crawler";i:3;s:6:"spider";i:4;s:16:"Accoona-AI-Agent";i:5;s:5:"alexa";i:6;s:7:"Arachmo";i:7;s:15:"B-l-i-t-z-B-O-T";i:8;s:13:"boitho.com-dc";i:9;s:15:"Cerberian Drtrs";i:10;s:9:"Charlotte";i:11;s:6:"cosmos";i:12;s:11:"Covario IDS";i:13;s:14:"DataparkSearch";i:14;s:9:"FindLinks";i:15;s:6:"Holmes";i:16;s:5:"htdig";i:17;s:11:"ia_archiver";i:18;s:6:"ichiro";i:19;s:7:"inktomi";i:20;s:10:"igdeSpyder";i:21;s:7:"L.webis";i:22;s:6:"Larbin";i:23;s:10:"LinkWalker";i:24;s:11:"lwp-trivial";i:25;s:10:"mabontland";i:26;s:11:"Mnogosearch";i:27;s:8:"mogimogi";i:28;s:13:"Morning Paper";i:29;s:9:"MVAClient";i:30;s:17:"NetResearchServer";i:31;s:9:"NewsGator";i:32;s:9:"NG-Search";i:33;s:8:"NutchCVS";i:34;s:7:"Nymesis";i:35;s:4:"oegp";i:36;s:7:"Orbiter";i:37;s:4:"Peew";i:38;s:6:"Pompos";i:39;s:8:"PostPost";i:40;s:6:"PycURL";i:41;s:6:"Qseero";i:42;s:7:"Radian6";i:43;s:6:"SBIder";i:44;s:8:"ScoutJet";i:45;s:7:"Scrubby";i:46;s:11:"SearchSight";i:47;s:17:"semanticdiscovery";i:48;s:8:"ShopWiki";i:49;s:4:"silk";i:50;s:6:"Snappy";i:51;s:6:"Sqworm";i:52;s:12:"StackRambler";i:53;s:5:"Teoma";i:54;s:6:"TinEye";i:55;s:8:"truwoGPS";i:56;s:7:"updated";i:57;s:9:"Vagabondo";i:58;s:6:"Vortex";i:59;s:7:"voyager";i:60;s:4:"VYU2";i:61;s:10:"webcollage";i:62;s:13:"Websquash.com";i:63;s:4:"wf84";i:64;s:13:"WomlpeFactory";i:65;s:4:"yacy";i:66;s:12:"Yahoo! Slurp";i:67;s:18:"Yahoo! Slurp China";i:68;s:11:"YahooSeeker";i:69;s:19:"YahooSeeker-Testing";i:70;s:12:"YandexImages";i:71;s:4:"Yeti";i:72;s:16:"yoogliFetchAgent";i:73;s:3:"Zao";i:74;s:6:"ZyBorg";i:75;s:7:"froogle";i:76;s:9:"looksmart";i:77;s:7:"Firefly";i:78;s:17:"NationalDirectory";i:79;s:10:"Ask Jeeves";i:80;s:9:"TECNOSEEK";i:81;s:8:"InfoSeek";i:82;s:7:"Scooter";i:83;s:5:"appie";i:84;s:6:"WebBug";i:85;s:5:"Spade";i:86;s:5:"rabaz";i:87;s:15:"TechnoratiSnoop";}', 'yes'),
(210, 'adrotate_db_timer', '1522919409', 'yes'),
(211, 'adrotate_advert_status', 'a:5:{s:5:"error";i:0;s:7:"expired";i:0;s:11:"expiressoon";i:0;s:6:"normal";i:4;s:7:"unknown";i:0;}', 'yes'),
(212, 'adrotate_geo_required', '0', 'yes'),
(213, 'adrotate_geo_requests', '0', 'yes'),
(214, 'adrotate_dynamic_required', '0', 'yes'),
(215, 'adrotate_hide_banner', '1522919409', 'yes'),
(216, 'adrotate_hide_review', '1522919409', 'yes'),
(217, 'widget_adrotate_widgets', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(238, 'kstats_async', '00a29fed8da26dcca108da728fc418afcf6865c1', 'yes'),
(250, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(334, 'acf_version', '4.4.12', 'yes'),
(336, 'category_3_visible_home', '1', 'no'),
(337, '_category_3_visible_home', 'field_5aca11ce1f160', 'no'),
(339, 'category_2_visible_home', '0', 'no'),
(340, '_category_2_visible_home', 'field_5aca11ce1f160', 'no'),
(342, 'category_4_visible_home', '0', 'no'),
(343, '_category_4_visible_home', 'field_5aca11ce1f160', 'no'),
(345, 'category_5_visible_home', '0', 'no'),
(346, '_category_5_visible_home', 'field_5aca11ce1f160', 'no'),
(347, 'category_12_visible_home', '1', 'no'),
(348, '_category_12_visible_home', 'field_5aca11ce1f160', 'no'),
(350, 'category_13_visible_home', '1', 'no'),
(351, '_category_13_visible_home', 'field_5aca11ce1f160', 'no'),
(354, 'category_14_visible_home', '1', 'no'),
(355, '_category_14_visible_home', 'field_5aca11ce1f160', 'no'),
(357, 'category_15_visible_home', '1', 'no'),
(358, '_category_15_visible_home', 'field_5aca11ce1f160', 'no'),
(360, 'category_16_visible_home', '1', 'no'),
(361, '_category_16_visible_home', 'field_5aca11ce1f160', 'no'),
(365, 'category_1_visible_home', '1', 'no'),
(366, '_category_1_visible_home', 'field_5aca11ce1f160', 'no'),
(368, 'category_17_visible_home', '1', 'no'),
(369, '_category_17_visible_home', 'field_5aca11ce1f160', 'no'),
(371, 'category_18_visible_home', '1', 'no'),
(372, '_category_18_visible_home', 'field_5aca11ce1f160', 'no'),
(380, 'category_19_visible_home', '0', 'no'),
(381, '_category_19_visible_home', 'field_5aca11ce1f160', 'no'),
(382, 'category_children', 'a:5:{i:3;a:2:{i:0;i:6;i:1;i:7;}i:11;a:5:{i:0;i:2;i:1;i:3;i:2;i:1;i:3;i:12;i:4;i:17;}i:12;a:4:{i:0;i:13;i:1;i:14;i:2;i:15;i:3;i:16;}i:17;a:1:{i:0;i:18;}i:2;a:2:{i:0;i:4;i:1;i:5;}}', 'yes'),
(390, 'widget_wpdm_packageinfo_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(391, 'widget_wpdm_categories_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(392, 'widget_wpdm_topdls_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(393, 'widget_wpdm_newpacks_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(394, 'widget_wpdm_catpacks_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(395, 'widget_wpdm_affiliate_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(396, '__wpdm_welcome', '2.9.70', 'yes'),
(397, 'wpdm_latest', 's:2478:"a:71:{s:16:"download-manager";s:5:"4.7.4";s:21:"download-after-submit";s:3:"1.2";s:15:"email-templates";s:1:"1";s:20:"multilevel-marketing";s:1:"1";s:14:"wpdm-accordion";s:5:"1.8.7";s:27:"wpdm-advanced-custom-fields";s:5:"1.7.4";s:14:"wpdm-amazon-s3";s:5:"2.7.0";s:8:"wpdm-api";s:5:"2.1.0";s:17:"wpdm-archive-page";s:5:"2.9.1";s:12:"wpdm-audiojs";s:1:"1";s:14:"wpdm-autoshare";s:1:"1";s:18:"wpdm-block-hotlink";s:1:"1";s:12:"wpdm-box-com";s:5:"1.2.0";s:21:"wpdm-buddypress-share";s:1:"1";s:21:"wpdm-button-templates";s:1:"1";s:21:"wpdm-campaign-monitor";s:5:"1.2.0";s:11:"wpdm-catman";s:5:"1.2.1";s:21:"wpdm-constant-contact";s:5:"1.2.0";s:17:"wpdm-csv-importer";s:5:"2.6.0";s:24:"wpdm-custom-access-level";s:5:"2.7.0";s:18:"wpdm-custom-fields";s:1:"1";s:19:"wpdm-daily-download";s:1:"1";s:19:"wpdm-default-values";s:5:"1.6.0";s:20:"wpdm-download-button";s:5:"2.4.1";s:20:"wpdm-download-period";s:5:"1.2.1";s:12:"wpdm-dropbox";s:5:"1.2.0";s:17:"wpdm-email-editor";s:1:"1";s:23:"wpdm-email-notification";s:5:"1.3.1";s:24:"wpdm-extended-shortcodes";s:5:"2.8.1";s:19:"wpdm-facebook-login";s:1:"1";s:19:"wpdm-facebook-share";s:1:"1";s:14:"wpdm-file-cart";s:5:"1.2.3";s:17:"wpdm-file-hosting";s:5:"1.3.1";s:16:"wpdm-filemanager";s:5:"1.3.0";s:14:"wpdm-form-lock";s:5:"1.6.1";s:21:"wpdm-ftp-file-browser";s:5:"2.2.5";s:17:"wpdm-google-drive";s:5:"1.3.1";s:14:"wpdm-i-contact";s:1:"1";s:18:"wpdm-lazy-download";s:1:"1";s:14:"wpdm-mailchimp";s:5:"1.1.0";s:15:"wpdm-newsletter";s:5:"3.2.0";s:13:"wpdm-onedrive";s:5:"1.0.0";s:15:"wpdm-optinmagic";s:5:"1.0.0";s:18:"wpdm-page-template";s:3:"1.1";s:16:"wpdm-pdf-stamper";s:5:"1.9.1";s:18:"wpdm-pinterest-pin";s:5:"1.2.0";s:21:"wpdm-premium-packages";s:5:"3.9.0";s:19:"wpdm-prepaid_credit";s:1:"1";s:19:"wpdm-social-connect";s:1:"1";s:18:"wpdm-speed-control";s:1:"1";s:19:"wpdm-tinymce-button";s:5:"2.7.1";s:19:"wpdm-twitter-follow";s:1:"1";s:19:"wpdm-update-checker";s:1:"1";s:17:"wpdm-user-reviews";s:5:"1.5.0";s:15:"wpdm-users-pack";s:1:"1";s:13:"wpdm-webhooks";s:1:"1";s:9:"wpdm-zoho";s:1:"1";s:10:"wpdmpp-2co";s:5:"1.5.1";s:20:"wpdmpp-authorize_net";s:1:"1";s:14:"wpdmpp-bluepay";s:1:"1";s:15:"wpdmpp-data-api";s:1:"1";s:14:"wpdmpp-payfast";s:1:"1";s:16:"wpdmpp-PaypalPro";s:5:"1.2.2";s:12:"wpdmpp-payza";s:1:"1";s:19:"wpdmpp-sales-report";s:1:"1";s:13:"wpdmpp-skrill";s:1:"1";s:13:"wpdmpp-stripe";s:5:"1.2.0";s:12:"wpdmpp-wepay";s:1:"1";s:15:"wpdmpp-worldpay";s:1:"1";s:15:"wppromembership";s:5:"2.3.1";s:11:"theme|verse";s:5:"1.4.0";}";', 'yes'),
(398, 'wpdm_latest_check', '1523848248', 'yes'),
(399, 'loai-san-pham_20_visible_home', '1', 'no'),
(400, '_loai-san-pham_20_visible_home', 'field_5aca11ce1f160', 'no'),
(401, 'loai-san-pham_children', 'a:0:{}', 'yes'),
(406, '__wpdm_freeaddons', '[{"ID":58950,"post_author":"1","post_date":"2017-06-11 13:18:12","post_date_gmt":"2017-06-11 13:18:12","post_content":"","post_title":"WP-Filebase Data Importer","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"wp-filebase-data-importer","to_ping":"","pinged":"","post_modified":"2017-06-11 13:18:12","post_modified_gmt":"2017-06-11 13:18:12","post_content_filtered":"","post_parent":0,"guid":"https:\\/\\/www.wpdownloadmanager.com\\/?post_type=wpdmpro&#038;p=58950","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"2","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-filebase-importer-200x200.png","excerpt":"WP-Filebase Data Importer for WordPress Download Manager. You asked for this and...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/wp-filebase-data-importer\\/","currency":"$","categories":["add-ons","free-add-ons","tools"],"files":{"1497185787522":"wpdm-import-filebase.zip"},"version":"1.0.0"},{"ID":27148,"post_author":"1","post_date":"2015-03-15 10:15:39","post_date_gmt":"2015-03-15 10:15:39","post_content":"","post_title":"Box.com Explorer","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"box-com-explorer","to_ping":"","pinged":"","post_modified":"2017-02-03 15:01:37","post_modified_gmt":"2017-02-03 15:01:37","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/?post_type=wpdmpro&#038;p=27148","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"0","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-box.com-explorer-200x200.png","excerpt":"Box offers\\u00a0up to 10 GB free cloud storage and file sharing services that enable...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/box-com-explorer\\/","currency":"$","categories":["add-ons","cloud-storage","free-add-ons"],"files":["wpdm-box-com.zip"],"version":"1.1.0"},{"ID":26131,"post_author":"1","post_date":"2015-02-16 17:25:33","post_date_gmt":"2015-02-16 17:25:33","post_content":"","post_title":"DropBox Explorer","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"dropbox-explorer","to_ping":"","pinged":"","post_modified":"2017-04-27 12:17:04","post_modified_gmt":"2017-04-27 12:17:04","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/?post_type=wpdmpro&#038;p=26131","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"8","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-dropbox-explorer-200x200.png","excerpt":"DropBox Explorer add-on will add a new button with your Download Manager to expl...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/dropbox-explorer\\/","currency":"$","categories":["add-ons","cloud-storage","free-add-ons"],"files":["wpdm-dropbox.zip"],"version":"1.2.0"},{"ID":25300,"post_author":"1","post_date":"2015-01-26 19:26:14","post_date_gmt":"2015-01-26 19:26:14","post_content":"","post_title":"Google Drive Explorer","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"google-drive-explorer","to_ping":"","pinged":"","post_modified":"2017-08-13 09:22:45","post_modified_gmt":"2017-08-13 09:22:45","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/?post_type=wpdmpro&#038;p=25300","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"32","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/google-drive-200x200.png","excerpt":"Google Drive Explorer Add-on helps you to connect with Google Drive, you can exp...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/google-drive-explorer\\/","currency":"$","categories":["add-ons","cloud-storage","free-add-ons"],"files":["\\/home\\/wpdownlo\\/public_html\\/wp-content\\/uploads\\/download-manager-files\\/\\/wpdm-google-drive.zip"],"version":"1.3.1"},{"ID":24090,"post_author":"1","post_date":"2014-12-29 20:06:40","post_date_gmt":"2014-12-29 20:06:40","post_content":"","post_title":"WPDM for iOS","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"open","post_password":"","post_name":"wpdm-ios","to_ping":"","pinged":"","post_modified":"2016-12-24 07:23:20","post_modified_gmt":"2016-12-24 07:23:20","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/?post_type=wpdmpro&#038;p=24090","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"0","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-for-ios-200x200.png","excerpt":"Using WP Download Manager App you can check download stats, sales stats and some...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-ios\\/","currency":"$","categories":["add-ons","free-add-ons","tools"],"files":["https:\\/\\/itunes.apple.com\\/us\\/app\\/wp-download-manager\\/id949343686"],"version":"3.0.0"},{"ID":22597,"post_author":"1","post_date":"2014-11-16 19:13:21","post_date_gmt":"2014-11-16 19:13:21","post_content":"","post_title":"Advanced Sales Report","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"advanced-sales-report","to_ping":"","pinged":"","post_modified":"2017-02-02 09:15:50","post_modified_gmt":"2017-02-02 09:15:50","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/?post_type=wpdmpro&#038;p=22597","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"0","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-sales-report-200x200.png","excerpt":"Advanced Sales Report helps you to keep track on sales in your digital store, yo...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/advanced-sales-report\\/","currency":"$","categories":["add-ons","ecommerce-add-ons","free-add-ons","tools"],"files":["wpdmpp-sales-report.zip"],"version":"1.0.0"},{"ID":21693,"post_author":"1","post_date":"2014-10-17 17:23:10","post_date_gmt":"2014-10-17 17:23:10","post_content":"","post_title":"WPDM for Android","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"open","post_password":"","post_name":"wpdm-android","to_ping":"","pinged":"","post_modified":"2016-12-20 09:33:43","post_modified_gmt":"2016-12-20 09:33:43","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/?post_type=wpdmpro&#038;p=21693","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"4","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-android-200x200.png","excerpt":"Using WordPress Download Manager App you can check download stats, sales stats a...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-android\\/","currency":"$","categories":["add-ons","free-add-ons","tools"],"files":["https:\\/\\/play.google.com\\/store\\/apps\\/details?id=com.w3eden.wpdownloadmanager"],"version":"3.0.0"},{"ID":21691,"post_author":"1","post_date":"2014-10-17 17:05:59","post_date_gmt":"2014-10-17 17:05:59","post_content":"","post_title":"WPDM Api","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"open","post_password":"","post_name":"wpdm-api","to_ping":"","pinged":"","post_modified":"2016-12-21 10:16:22","post_modified_gmt":"2016-12-21 10:16:22","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/?post_type=wpdmpro&#038;p=21691","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"16","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-api-200x200.png","excerpt":"You can use this add-on to handle remote data access request in your Download Ma...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-api\\/","currency":"$","categories":["add-ons","free-add-ons","tools"],"files":{"1475398329472":"\\/home\\/wpdownlo\\/public_html\\/wp-content\\/uploads\\/download-manager-files\\/\\/wpdm-api.zip"},"version":"3.0.0"},{"ID":15749,"post_author":"1","post_date":"2014-04-01 00:00:00","post_date_gmt":"2014-04-01 00:00:00","post_content":"","post_title":"WPDM Button Templates","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"wpdm-button-templates","to_ping":"","pinged":"","post_modified":"2015-10-28 09:59:44","post_modified_gmt":"2015-10-28 09:59:44","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-button-templates\\/","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"16","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-button-templates1-200x200.png","excerpt":"WPDM Button Templates will add an additional short-code code with WordPress Down...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-button-templates\\/","currency":"$","categories":["add-ons","free-add-ons","ui-add-ons"],"files":["wpdm-button-templates.zip"],"version":"1.2.0"},{"ID":15739,"post_author":"1","post_date":"2014-02-04 00:00:00","post_date_gmt":"2014-02-04 00:00:00","post_content":"","post_title":"WPDM Page Templates","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"wpdm-page-templates","to_ping":"","pinged":"","post_modified":"2018-02-12 14:20:57","post_modified_gmt":"2018-02-12 14:20:57","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-page-templates\\/","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"10","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-page-templates1-200x200.png","excerpt":"WPDM Page Templates add-on will help you to apply page type templates ( like ful...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-page-templates\\/","currency":"$","categories":["add-ons","free-add-ons","ui-add-ons"],"files":["wpdm-page-template.zip"],"version":"1.1.0"},{"ID":15733,"post_author":"1","post_date":"2013-12-17 00:00:00","post_date_gmt":"2013-12-17 00:00:00","post_content":"","post_title":"WPDM Image Button","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"wpdm-image-button","to_ping":"","pinged":"","post_modified":"2018-01-21 09:38:32","post_modified_gmt":"2018-01-21 09:38:32","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-image-button\\/","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"0","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-image-button-200x200.png","excerpt":"WPDM - Image Button add-on will help you to replace the text (link label) in dow...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-image-button\\/","currency":"$","categories":["add-ons","free-add-ons","ui-add-ons"],"files":["wpdm-download-button.zip"],"version":"2.4.1"},{"ID":15691,"post_author":"1","post_date":"2013-01-12 00:00:00","post_date_gmt":"2013-01-12 00:00:00","post_content":"","post_title":"WPDM Extended Short-codes","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"wpdm-extended-short-codes","to_ping":"","pinged":"","post_modified":"2018-03-28 19:53:02","post_modified_gmt":"2018-03-28 19:53:02","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-extended-short-codes\\/","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"27","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-extended-shortcode-200x200.png","excerpt":"WPDM Extended Short-codes add-on will give you a better experience in using Word...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/wpdm-extended-short-codes\\/","currency":"$","categories":["add-ons","free-add-ons","tools"],"files":["\\/home\\/wpdownlo\\/public_html\\/wp-content\\/uploads\\/download-manager-files\\/\\/wpdm-extended-shortcodes.zip"],"version":"2.8.1"},{"ID":15665,"post_author":"1","post_date":"2012-01-18 00:00:00","post_date_gmt":"2012-01-18 00:00:00","post_content":"","post_title":"Advanced TinyMCE button","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"advanced-tinymce-button","to_ping":"","pinged":"","post_modified":"2017-11-17 19:18:38","post_modified_gmt":"2017-11-17 19:18:38","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/download\\/advanced-tinymce-button\\/","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"8","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/tinymce-button-200x200.png","excerpt":"Advanced TinyMCE button add-on will add a button with tinymce editor from where ...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/advanced-tinymce-button\\/","currency":"$","categories":["add-ons","free-add-ons","tools"],"files":["\\/home\\/wpdownlo\\/public_html\\/wp-content\\/uploads\\/download-manager-files\\/\\/wpdm-tinymce-button.zip"],"version":"2.7.1"},{"ID":15671,"post_author":"1","post_date":"2011-11-18 00:00:00","post_date_gmt":"2011-11-18 00:00:00","post_content":"","post_title":"Premium Package - WordPress Digital Store Solution","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"closed","post_password":"","post_name":"premium-package-wordpress-digital-store-solution","to_ping":"","pinged":"","post_modified":"2018-03-20 10:05:22","post_modified_gmt":"2018-03-20 10:05:22","post_content_filtered":"","post_parent":0,"guid":"http:\\/\\/www.wpdownloadmanager.com\\/download\\/premium-package\\/","menu_order":0,"post_type":"wpdmpro","post_mime_type":"","comment_count":"20","filter":"raw","thumbnail":"https:\\/\\/www.wpdownloadmanager.com\\/wp-content\\/plugins\\/download-manager\\/cache\\/wpdm-premium-package-200x200.png","excerpt":"WordPress Digital Store Solution - Premium Package add-on adds pricing and licen...","price":"0.00","link":"https:\\/\\/www.wpdownloadmanager.com\\/download\\/premium-package-wordpress-digital-store-solution\\/","currency":"$","categories":["add-ons","ecommerce-add-ons","featured-add-ons","free-add-ons","tools"],"files":["wpdm-premium-packages.zip"],"version":"3.9.0"}]', 'yes'),
(407, 'co-quan-ban-hanh_22_visible_home', '1', 'no'),
(408, '_co-quan-ban-hanh_22_visible_home', 'field_5aca11ce1f160', 'no'),
(410, 'co-quan-ban-hanh_23_visible_home', '0', 'no'),
(411, '_co-quan-ban-hanh_23_visible_home', 'field_5aca11ce1f160', 'no'),
(413, 'co-quan-ban-hanh_24_visible_home', '0', 'no'),
(414, '_co-quan-ban-hanh_24_visible_home', 'field_5aca11ce1f160', 'no'),
(416, 'co-quan-ban-hanh_25_visible_home', '0', 'no'),
(417, '_co-quan-ban-hanh_25_visible_home', 'field_5aca11ce1f160', 'no'),
(418, 'co-quan-ban-hanh_children', 'a:0:{}', 'yes'),
(419, 'loai-van-ban_26_visible_home', '1', 'no'),
(420, '_loai-van-ban_26_visible_home', 'field_5aca11ce1f160', 'no'),
(422, 'loai-van-ban_27_visible_home', '0', 'no'),
(423, '_loai-van-ban_27_visible_home', 'field_5aca11ce1f160', 'no'),
(424, 'loai-van-ban_children', 'a:0:{}', 'yes'),
(425, 'don-vi-phong-ban_28_visible_home', '1', 'no'),
(426, '_don-vi-phong-ban_28_visible_home', 'field_5aca11ce1f160', 'no'),
(428, 'don-vi-phong-ban_29_visible_home', '0', 'no'),
(429, '_don-vi-phong-ban_29_visible_home', 'field_5aca11ce1f160', 'no'),
(430, 'don-vi-phong-ban_children', 'a:0:{}', 'yes'),
(431, 'linh-vuc_30_visible_home', '1', 'no'),
(432, '_linh-vuc_30_visible_home', 'field_5aca11ce1f160', 'no'),
(434, 'linh-vuc_31_visible_home', '0', 'no'),
(435, '_linh-vuc_31_visible_home', 'field_5aca11ce1f160', 'no'),
(436, 'linh-vuc_children', 'a:0:{}', 'yes'),
(438, 'wpdmcategory_children', 'a:0:{}', 'yes'),
(511, 'addthis_shared_settings', 'a:49:{s:28:"addthis_asynchronous_loading";b:0;s:24:"addthis_per_post_enabled";b:1;s:15:"addthis_profile";s:19:"ra-5acc5c66519040b5";s:15:"addthis_rate_us";s:0:"";s:15:"profile_edition";s:9:"anonymous";s:7:"api_key";s:16:"5acc623e75bc5866";s:12:"ajax_support";b:0;s:28:"credential_validation_status";s:1:"0";s:22:"filter_get_the_excerpt";b:1;s:18:"filter_the_excerpt";b:1;s:22:"filter_wp_trim_excerpt";b:0;s:8:"wpfooter";b:1;s:11:"xmlns_attrs";b:1;s:30:"follow_buttons_feature_enabled";b:0;s:35:"recommended_content_feature_enabled";b:0;s:31:"sharing_buttons_feature_enabled";b:1;s:14:"enqueue_client";b:1;s:22:"enqueue_local_settings";b:0;s:12:"debug_enable";b:0;s:19:"addthis_environment";s:0:"";s:23:"addthis_plugin_controls";s:7:"AddThis";s:20:"darkseid_environment";s:0:"";s:20:"settings_ui_base_url";s:0:"";s:24:"addthis_twitter_template";s:0:"";s:13:"addthis_bitly";b:0;s:18:"addthis_share_json";s:0:"";s:25:"addthis_share_follow_json";s:0:"";s:30:"addthis_share_recommended_json";s:0:"";s:27:"addthis_share_trending_json";s:0:"";s:26:"addthis_share_welcome_json";s:0:"";s:19:"addthis_layers_json";s:0:"";s:26:"addthis_layers_follow_json";s:0:"";s:31:"addthis_layers_recommended_json";s:0:"";s:28:"addthis_layers_trending_json";s:0:"";s:27:"addthis_layers_welcome_json";s:0:"";s:16:"data_ga_property";s:0:"";s:16:"addthis_language";s:0:"";s:9:"atversion";s:3:"300";s:19:"addthis_append_data";b:1;s:18:"addthis_addressbar";b:0;s:11:"addthis_508";b:0;s:19:"addthis_config_json";s:0:"";s:26:"addthis_config_follow_json";s:0:"";s:31:"addthis_config_recommended_json";s:0:"";s:28:"addthis_config_trending_json";s:0:"";s:27:"addthis_config_welcome_json";s:0:"";s:14:"startUpgradeAt";i:4;s:25:"addthis_anonymous_profile";s:35:"wp-e6c826e0b549b4ffb6c82069d17733ac";s:15:"script_location";s:6:"footer";}', 'yes'),
(512, 'addthis_follow_buttons_settings', 'a:3:{s:4:"flwh";a:5:{s:7:"enabled";b:0;s:4:"size";s:5:"large";s:8:"thankyou";b:1;s:5:"title";s:0:"";s:8:"services";O:8:"stdClass":0:{}}s:4:"flwv";a:5:{s:7:"enabled";b:0;s:4:"size";s:5:"large";s:5:"title";s:0:"";s:8:"thankyou";b:1;s:8:"services";O:8:"stdClass":0:{}}s:5:"smlfw";a:7:{s:7:"enabled";b:0;s:5:"theme";s:11:"transparent";s:10:"responsive";i:979;s:6:"offset";a:3:{s:8:"location";s:3:"top";s:6:"amount";i:0;s:4:"unit";s:2:"px";}s:8:"thankyou";b:1;s:5:"title";s:0:"";s:8:"services";O:8:"stdClass":0:{}}}', 'yes'),
(513, 'addthis_sharing_buttons_settings', 'a:1:{s:14:"startUpgradeAt";i:6;}', 'yes'),
(514, 'addthis_recommended_content_settings', 'a:2:{s:5:"smlre";a:3:{s:7:"enabled";b:0;s:5:"title";s:19:"Recommended for you";s:5:"theme";s:5:"light";}s:5:"smlwn";a:4:{s:7:"enabled";b:0;s:5:"title";s:19:"Recommended for you";s:5:"theme";s:5:"light";s:6:"offset";a:3:{s:8:"location";s:5:"right";s:6:"amount";i:0;s:4:"unit";s:2:"px";}}}', 'yes'),
(515, 'widget_addthis_tool_by_class_name_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(516, 'widget_addthis_global_options_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(523, 'fs_active_plugins', 'O:8:"stdClass":2:{s:7:"plugins";a:1:{s:24:"nextgen-gallery/freemius";O:8:"stdClass":3:{s:7:"version";s:7:"1.2.1.5";s:9:"timestamp";i:1523845779;s:11:"plugin_path";s:29:"nextgen-gallery/nggallery.php";}}s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:29:"nextgen-gallery/nggallery.php";s:8:"sdk_path";s:24:"nextgen-gallery/freemius";s:7:"version";s:7:"1.2.1.5";s:13:"in_activation";b:0;s:9:"timestamp";i:1523845779;}}', 'yes'),
(524, 'fs_debug_mode', '', 'yes'),
(525, 'fs_accounts', 'a:16:{s:21:"id_slug_type_path_map";a:1:{i:56;a:2:{s:4:"slug";s:13:"rating-widget";s:4:"type";s:6:"plugin";}}s:11:"plugin_data";a:2:{s:13:"rating-widget";a:19:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:9:"prev_path";s:31:"rating-widget/rating-widget.php";}s:17:"install_timestamp";i:1523347154;s:16:"sdk_last_version";N;s:11:"sdk_version";s:5:"2.0.1";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:5:"2.9.4";s:19:"plugin_upgrade_mode";b:0;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:10:"dev5.local";s:9:"server_ip";s:8:"10.0.2.2";s:9:"is_active";b:1;s:9:"timestamp";i:1523347154;s:7:"version";s:5:"2.9.4";}s:17:"was_plugin_loaded";b:1;s:15:"prev_is_premium";b:0;s:14:"has_trial_plan";b:1;s:22:"install_sync_timestamp";i:1523349337;s:20:"activation_timestamp";i:1523347177;s:14:"sync_timestamp";i:1523348147;s:16:"uninstall_reason";O:8:"stdClass":3:{s:2:"id";s:2:"11";s:4:"info";s:40:"use shortcode not support multi language";s:12:"is_anonymous";b:0;}}s:15:"nextgen-gallery";a:17:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:84:"D:/xampp/htdocs/nihongo/nongthon-wp/wp-content/plugins/nextgen-gallery/nggallery.php";}s:17:"install_timestamp";i:1523845779;s:16:"sdk_last_version";N;s:11:"sdk_version";s:7:"1.2.1.5";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:6:"2.2.54";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:10:"dev5.local";s:9:"server_ip";s:8:"10.0.2.2";s:9:"is_active";b:1;s:9:"timestamp";i:1523845779;s:7:"version";s:6:"2.2.54";}s:17:"was_plugin_loaded";b:1;s:15:"prev_is_premium";b:0;s:14:"has_trial_plan";b:1;s:22:"install_sync_timestamp";i:1523845983;s:20:"activation_timestamp";i:1523845980;}}s:13:"file_slug_map";a:2:{s:31:"rating-widget/rating-widget.php";s:13:"rating-widget";s:29:"nextgen-gallery/nggallery.php";s:15:"nextgen-gallery";}s:7:"plugins";a:2:{s:13:"rating-widget";O:9:"FS_Plugin":18:{s:16:"parent_plugin_id";N;s:5:"title";s:33:"Rating-Widget: Star Review System";s:4:"slug";s:13:"rating-widget";s:4:"type";s:6:"plugin";s:4:"file";s:31:"rating-widget/rating-widget.php";s:7:"version";s:5:"2.9.4";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_74be465babd9d3d6d5ff578d56745";s:10:"secret_key";N;s:2:"id";s:2:"56";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;s:20:"affiliate_moderation";s:8:"selected";s:19:"is_wp_org_compliant";b:1;}s:15:"nextgen-gallery";O:9:"FS_Plugin":16:{s:16:"parent_plugin_id";N;s:5:"title";s:15:"NextGEN Gallery";s:4:"slug";s:15:"nextgen-gallery";s:4:"type";N;s:4:"file";s:29:"nextgen-gallery/nggallery.php";s:7:"version";s:6:"2.2.54";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_009356711cd548837f074e1ef60a4";s:10:"secret_key";N;s:2:"id";s:3:"266";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;}}s:9:"unique_id";s:32:"07f4cd33f4783049721c315fe8d6b442";s:5:"plans";a:2:{s:13:"rating-widget";a:5:{i:0;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"NTY=";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";s:20:"RnJlZSBmb3JldmVyIQ==";s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:0:"";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"MTAz";s:7:"updated";N;s:7:"created";s:28:"MjAxNS0wOC0yMSAyMDo1Mjo0Mg==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:1;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"NTY=";s:4:"name";s:12:"c3RhcnRlcg==";s:5:"title";s:12:"U3RhcnRlcg==";s:11:"description";s:44:"V0hJVEUgTEFCRUxFRApGUkVFIEZST00gQlJBTkRJTkc=";s:17:"is_free_localhost";s:0:"";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";s:4:"Nw==";s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";s:32:"aGVscEByYXRpbmctd2lkZ2V0LmNvbQ==";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"MTA0";s:7:"updated";s:28:"MjAxNi0wMS0xOSAwMTo0Nzo1Mg==";s:7:"created";s:28:"MjAxNS0wOC0yMSAyMDo1ODoyNA==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:2;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"NTY=";s:4:"name";s:16:"cHJvZmVzc2lvbmFs";s:5:"title";s:16:"UHJvZmVzc2lvbmFs";s:11:"description";s:44:"U0VPLCBEQVNIQk9BUkQKQURWQU5DRUQgQU5BTFlUSUNT";s:17:"is_free_localhost";s:0:"";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:4:"MQ==";s:12:"trial_period";s:4:"Nw==";s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";s:32:"aGVscEByYXRpbmctd2lkZ2V0LmNvbQ==";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:4:"MQ==";s:2:"id";s:4:"MTA1";s:7:"updated";s:28:"MjAxNi0wOS0yMCAxNDo1Mjo1NQ==";s:7:"created";s:28:"MjAxNS0wOC0yMSAyMTowMDo1Ng==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:3;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"NTY=";s:4:"name";s:12:"YnVzaW5lc3M=";s:5:"title";s:12:"QnVzaW5lc3M=";s:11:"description";s:40:"TU9ERVJBVElPTiAKVE9QIExFVkVMIFNVUFBPUlQ=";s:17:"is_free_localhost";s:0:"";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:4:"MQ==";s:12:"trial_period";s:4:"Nw==";s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";s:32:"aGVscEByYXRpbmctd2lkZ2V0LmNvbQ==";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"MTA2";s:7:"updated";s:28:"MjAxNS0xMC0wMyAwNTozMzoxMw==";s:7:"created";s:28:"MjAxNS0wOC0yMSAyMTowMzo1OA==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:4;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"NTY=";s:4:"name";s:8:"YXpudWRl";s:5:"title";s:24:"NTBNIFBWcyBQZXIgTW9udGg=";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:8:"MjYwNQ==";s:7:"updated";s:28:"MjAxOC0wMi0yMiAxODowODowNQ==";s:7:"created";s:28:"MjAxOC0wMi0yMiAxODowNjoyMA==";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:15:"nextgen-gallery";a:1:{i:0;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"MjY2";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"Mzc0";s:7:"updated";N;s:7:"created";s:28:"MjAxNi0wNC0yNCAxNToyNzo0Nw==";s:22:"\0FS_Entity\0_is_updated";b:0;}}}s:14:"active_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1523349337;s:3:"md5";s:32:"40bf5cbb56ecdaf6ccea6935af5f1e6e";s:7:"plugins";a:9:{s:21:"adrotate/adrotate.php";a:5:{s:4:"slug";s:8:"adrotate";s:7:"version";s:4:"4.10";s:5:"title";s:8:"AdRotate";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:30:"advanced-custom-fields/acf.php";a:5:{s:4:"slug";s:22:"advanced-custom-fields";s:7:"version";s:6:"4.4.12";s:5:"title";s:22:"Advanced Custom Fields";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:45:"taxonomy-terms-order/taxonomy-terms-order.php";a:5:{s:4:"slug";s:20:"taxonomy-terms-order";s:7:"version";s:7:"1.5.3.2";s:5:"title";s:39:"Category Order and Taxonomy Terms Order";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:37:"download-manager/download-manager.php";a:5:{s:4:"slug";s:16:"download-manager";s:7:"version";s:6:"2.9.70";s:5:"title";s:16:"Download Manager";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:35:"kstats-reloaded/kstats-reloaded.php";a:5:{s:4:"slug";s:15:"kstats-reloaded";s:7:"version";s:5:"0.7.4";s:5:"title";s:15:"kStats Reloaded";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:31:"rating-widget/rating-widget.php";a:5:{s:4:"slug";s:13:"rating-widget";s:7:"version";s:5:"2.9.4";s:5:"title";s:33:"Rating-Widget: Star Review System";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:33:"addthis/addthis_social_widget.php";a:5:{s:4:"slug";s:7:"addthis";s:7:"version";s:5:"6.1.2";s:5:"title";s:24:"Share Buttons by AddThis";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:21:"wp-polls/wp-polls.php";a:5:{s:4:"slug";s:8:"wp-polls";s:7:"version";s:6:"2.73.8";s:5:"title";s:8:"WP-Polls";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:33:"wp-postratings/wp-postratings.php";a:5:{s:4:"slug";s:14:"wp-postratings";s:7:"version";s:4:"1.85";s:5:"title";s:14:"WP-PostRatings";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}}}s:11:"all_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1523845983;s:3:"md5";s:32:"cff8f220a3831a2f858c85a48b81b5a5";s:7:"plugins";a:15:{s:21:"adrotate/adrotate.php";a:5:{s:4:"slug";s:8:"adrotate";s:7:"version";s:4:"4.10";s:5:"title";s:8:"AdRotate";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:30:"advanced-custom-fields/acf.php";a:5:{s:4:"slug";s:22:"advanced-custom-fields";s:7:"version";s:6:"4.4.12";s:5:"title";s:22:"Advanced Custom Fields";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:19:"akismet/akismet.php";a:5:{s:4:"slug";s:7:"akismet";s:7:"version";s:5:"4.0.2";s:5:"title";s:17:"Akismet Anti-Spam";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:45:"taxonomy-terms-order/taxonomy-terms-order.php";a:5:{s:4:"slug";s:20:"taxonomy-terms-order";s:7:"version";s:7:"1.5.3.2";s:5:"title";s:39:"Category Order and Taxonomy Terms Order";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:37:"download-manager/download-manager.php";a:5:{s:4:"slug";s:16:"download-manager";s:7:"version";s:6:"2.9.70";s:5:"title";s:16:"Download Manager";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:9:"hello.php";a:5:{s:4:"slug";s:11:"hello-dolly";s:7:"version";s:3:"1.6";s:5:"title";s:11:"Hello Dolly";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:35:"kstats-reloaded/kstats-reloaded.php";a:5:{s:4:"slug";s:15:"kstats-reloaded";s:7:"version";s:5:"0.7.4";s:5:"title";s:15:"kStats Reloaded";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:31:"rating-widget/rating-widget.php";a:5:{s:4:"slug";s:13:"rating-widget";s:7:"version";s:5:"2.9.4";s:5:"title";s:33:"Rating-Widget: Star Review System";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:33:"addthis/addthis_social_widget.php";a:5:{s:4:"slug";s:7:"addthis";s:7:"version";s:5:"6.1.2";s:5:"title";s:24:"Share Buttons by AddThis";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:21:"wp-polls/wp-polls.php";a:5:{s:4:"slug";s:8:"wp-polls";s:7:"version";s:6:"2.73.8";s:5:"title";s:8:"WP-Polls";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:33:"wp-postratings/wp-postratings.php";a:5:{s:4:"slug";s:14:"wp-postratings";s:7:"version";s:4:"1.85";s:5:"title";s:14:"WP-PostRatings";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:43:"envira-gallery-lite/envira-gallery-lite.php";a:5:{s:4:"slug";s:19:"envira-gallery-lite";s:7:"version";s:5:"1.6.2";s:5:"title";s:19:"Envira Gallery Lite";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:29:"nextgen-gallery/nggallery.php";a:5:{s:4:"slug";s:15:"nextgen-gallery";s:7:"version";s:6:"2.2.54";s:5:"title";s:15:"NextGEN Gallery";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:29:"wp-mail-smtp/wp_mail_smtp.php";a:5:{s:4:"slug";s:12:"wp-mail-smtp";s:7:"version";s:5:"1.2.5";s:5:"title";s:12:"WP Mail SMTP";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:27:"wp-pagenavi/wp-pagenavi.php";a:5:{s:4:"slug";s:11:"wp-pagenavi";s:7:"version";s:4:"2.92";s:5:"title";s:11:"WP-PageNavi";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}}}s:10:"all_themes";O:8:"stdClass":3:{s:9:"timestamp";i:1523845983;s:3:"md5";s:32:"d3b93fbbc5615ef5a8a54198d3e5780e";s:6:"themes";a:3:{s:13:"twentyfifteen";a:5:{s:4:"slug";s:13:"twentyfifteen";s:7:"version";s:3:"1.9";s:5:"title";s:14:"Twenty Fifteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:15:"twentyseventeen";a:5:{s:4:"slug";s:15:"twentyseventeen";s:7:"version";s:3:"1.4";s:5:"title";s:16:"Twenty Seventeen";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:13:"twentysixteen";a:5:{s:4:"slug";s:13:"twentysixteen";s:7:"version";s:3:"1.4";s:5:"title";s:14:"Twenty Sixteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}}}s:5:"sites";a:2:{s:13:"rating-widget";O:7:"FS_Site":27:{s:4:"slug";N;s:7:"site_id";s:7:"3855978";s:9:"plugin_id";s:2:"56";s:7:"user_id";s:7:"1091320";s:5:"title";s:8:"nongthon";s:3:"url";s:17:"http://dev5.local";s:7:"version";s:5:"2.9.4";s:8:"language";s:5:"en-US";s:7:"charset";s:5:"UTF-8";s:16:"platform_version";s:5:"4.9.4";s:11:"sdk_version";s:5:"2.0.1";s:28:"programming_language_version";s:6:"5.4.16";s:4:"plan";N;s:10:"license_id";N;s:13:"trial_plan_id";N;s:10:"trial_ends";N;s:10:"is_premium";b:0;s:15:"is_disconnected";b:0;s:10:"public_key";s:32:"pk_69491defdd381c453ab03a6c28c34";s:10:"secret_key";s:32:"sk_;<vyI92h-jGKm}n@!*!h(FG.lS{y!";s:2:"id";s:7:"1435671";s:7:"updated";N;s:7:"created";s:19:"2018-04-10 07:59:14";s:22:"\0FS_Entity\0_is_updated";b:0;s:7:"plan_id";s:3:"103";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:15:"nextgen-gallery";O:7:"FS_Site":24:{s:4:"slug";s:15:"nextgen-gallery";s:7:"site_id";s:7:"3855978";s:9:"plugin_id";s:3:"266";s:7:"user_id";s:7:"1091320";s:5:"title";s:8:"nongthon";s:3:"url";s:17:"http://dev5.local";s:7:"version";s:6:"2.2.54";s:8:"language";s:2:"vi";s:7:"charset";s:5:"UTF-8";s:16:"platform_version";s:5:"4.9.4";s:11:"sdk_version";s:7:"1.2.1.5";s:28:"programming_language_version";s:6:"5.4.16";s:4:"plan";O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"MjY2";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"Mzc0";s:7:"updated";N;s:7:"created";s:28:"MjAxNi0wNC0yNCAxNToyNzo0Nw==";s:22:"\0FS_Entity\0_is_updated";b:0;}s:10:"license_id";N;s:13:"trial_plan_id";N;s:10:"trial_ends";N;s:10:"is_premium";b:0;s:15:"is_disconnected";b:1;s:10:"public_key";s:32:"pk_1532581d9f49c82e3581bbcf23c98";s:10:"secret_key";s:32:"sk_>jB6_R##wJJaPp}{@e3~-};Qs4&^]";s:2:"id";s:7:"1456481";s:7:"updated";N;s:7:"created";s:19:"2018-04-16 02:46:53";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:5:"users";a:1:{i:1091320;O:7:"FS_User":12:{s:5:"email";s:18:"nongthon@gmail.com";s:5:"first";s:5:"admin";s:4:"last";s:0:"";s:11:"is_verified";b:0;s:11:"customer_id";N;s:5:"gross";i:0;s:10:"public_key";s:32:"pk_6a205a37d9faa6329613e972af395";s:10:"secret_key";s:32:"sk_iDPFbQg]mFAfA?2unB~1!or$KL1n+";s:2:"id";s:7:"1091320";s:7:"updated";N;s:7:"created";s:19:"2018-04-10 07:59:13";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:23:"user_id_license_ids_map";a:1:{i:56;a:1:{i:1091320;a:0:{}}}s:12:"all_licenses";a:1:{i:56;a:0:{}}s:7:"updates";a:1:{i:56;N;}s:13:"admin_notices";a:1:{s:13:"rating-widget";a:0:{}}s:8:"licenses";a:1:{s:15:"nextgen-gallery";a:1:{i:1091320;b:0;}}}', 'yes'),
(526, 'fs_api_cache', 'a:1:{s:35:"get:/v1/installs/1456481/plans.json";O:8:"stdClass":2:{s:6:"result";O:8:"stdClass":1:{s:5:"plans";a:1:{i:0;O:8:"stdClass":22:{s:9:"plugin_id";s:3:"266";s:4:"name";s:4:"free";s:5:"title";s:4:"Free";s:11:"description";N;s:17:"is_free_localhost";b:1;s:17:"is_block_features";b:1;s:25:"is_block_features_monthly";b:1;s:12:"license_type";i:0;s:16:"is_https_support";b:0;s:12:"trial_period";N;s:23:"is_require_subscription";b:0;s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";b:0;s:11:"is_featured";b:0;s:9:"is_hidden";b:0;s:2:"id";s:3:"374";s:7:"created";s:19:"2016-04-24 15:27:47";s:7:"updated";N;}}}s:9:"timestamp";i:1523932380;}}', 'yes'),
(528, 'widget_ratingwidgetplugin_topratedwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(529, 'rw_options', 'a:19:{s:10:"rw_user_id";s:6:"398769";s:11:"rw_user_key";s:32:"8e223597cd1504a4ad1ee9a2e38354c9";s:14:"rw_user_secret";s:32:"Q-V{T9`Ef`Uv1;NM]A4AsI_F&zD,y^D|";s:11:"rw_owner_id";s:6:"166719";s:14:"rw_owner_email";s:18:"nongthon@gmail.com";s:23:"rw_multirating_settings";O:8:"stdClass":6:{s:9:"blog-post";O:8:"stdClass":3:{s:8:"criteria";a:1:{i:0;a:1:{s:5:"label";s:35:"Click để đánh giá bài viết";}}s:13:"summary_label";s:7:"Summary";s:19:"show_summary_rating";b:1;}s:10:"forum-post";O:8:"stdClass":3:{s:8:"criteria";a:1:{i:1523347501;a:0:{}}s:13:"summary_label";s:7:"Summary";s:19:"show_summary_rating";b:1;}s:10:"front-post";O:8:"stdClass":3:{s:8:"criteria";a:1:{i:1523347501;a:0:{}}s:13:"summary_label";s:7:"Summary";s:19:"show_summary_rating";b:1;}s:7:"comment";O:8:"stdClass":3:{s:8:"criteria";a:1:{i:1523347501;a:0:{}}s:13:"summary_label";s:7:"Summary";s:19:"show_summary_rating";b:1;}s:4:"page";O:8:"stdClass":3:{s:8:"criteria";a:1:{i:0;a:0:{}}s:13:"summary_label";s:7:"Summary";s:19:"show_summary_rating";b:1;}s:7:"product";O:8:"stdClass":3:{s:8:"criteria";a:1:{i:1523347501;a:0:{}}s:13:"summary_label";s:7:"Summary";s:19:"show_summary_rating";b:1;}}s:19:"rw_blog_posts_align";O:8:"stdClass":0:{}s:21:"rw_blog_posts_options";O:8:"stdClass":30:{s:5:"boost";O:8:"stdClass":2:{s:5:"votes";i:0;s:4:"rate";i:5;}s:6:"imgUrl";O:8:"stdClass":2:{s:3:"ltr";s:0:"";s:3:"rtl";s:0:"";}s:6:"mobile";O:8:"stdClass":2:{s:9:"optimized";b:1;s:11:"showTrigger";b:1;}s:5:"label";O:8:"stdClass":2:{s:4:"text";O:8:"stdClass":2:{s:4:"star";O:8:"stdClass":3:{s:5:"empty";s:17:"{{text.rateThis}}";s:6:"normal";s:51:"{{text.rateThis}} ({{rating.votes}} {{text.votes}})";s:5:"rated";s:31:"{{rating.votes}} {{text.votes}}";}s:4:"nero";O:8:"stdClass":3:{s:5:"empty";s:17:"{{text.rateThis}}";s:6:"normal";s:17:"{{text.rateThis}}";s:5:"rated";s:31:"{{rating.votes}} {{text.votes}}";}}s:10:"background";s:7:"#FFFFFF";}s:8:"advanced";O:8:"stdClass":6:{s:4:"star";O:8:"stdClass":1:{s:5:"stars";i:5;}s:4:"nero";O:8:"stdClass":3:{s:4:"text";O:8:"stdClass":2:{s:4:"like";O:8:"stdClass":2:{s:5:"empty";s:16:"{{rating.likes}}";s:5:"rated";s:16:"{{rating.likes}}";}s:7:"dislike";O:8:"stdClass":2:{s:5:"empty";s:19:"{{rating.dislikes}}";s:5:"rated";s:19:"{{rating.dislikes}}";}}s:11:"showDislike";b:1;s:8:"showLike";b:1;}s:4:"font";O:8:"stdClass":6:{s:5:"hover";O:8:"stdClass":1:{s:5:"color";s:7:"#000000";}s:4:"bold";b:0;s:6:"italic";b:0;s:5:"color";s:7:"#000000";s:4:"size";s:4:"12px";s:4:"type";s:7:"inherit";}s:6:"layout";O:8:"stdClass":3:{s:5:"align";O:8:"stdClass":2:{s:3:"hor";s:5:"right";s:3:"ver";s:6:"middle";}s:3:"dir";s:3:"ltr";s:10:"lineHeight";s:4:"16px";}s:4:"text";O:8:"stdClass":13:{s:9:"rateAwful";s:5:"Awful";s:8:"ratePoor";s:4:"Poor";s:11:"rateAverage";s:7:"Average";s:8:"rateGood";s:4:"Good";s:13:"rateExcellent";s:9:"Excellent";s:8:"rateThis";s:9:"Rate this";s:4:"like";s:4:"Like";s:7:"dislike";s:7:"Dislike";s:4:"vote";s:4:"Vote";s:5:"votes";s:5:"Votes";s:6:"thanks";s:9:"Thank You";s:5:"outOf";s:6:"out of";s:11:"weRecommend";s:12:"We Recommend";}s:3:"css";O:8:"stdClass":1:{s:9:"container";s:0:"";}}s:4:"type";s:4:"star";s:5:"uarid";i:0;s:3:"lng";s:2:"en";s:3:"url";s:0:"";s:3:"img";s:0:"";s:5:"title";s:0:"";s:6:"rclass";s:0:"";s:4:"size";s:5:"small";s:5:"style";s:6:"oxygen";s:8:"readOnly";b:0;s:4:"sync";b:1;s:9:"forceSync";b:0;s:6:"reVote";b:1;s:9:"frequency";i:-1;s:8:"showInfo";b:1;s:11:"showTooltip";b:1;s:11:"showAverage";b:1;s:10:"showReport";b:1;s:19:"showRecommendations";b:0;s:19:"hideRecommendations";b:0;s:13:"showSponsored";b:0;s:10:"showLoader";b:1;s:10:"beforeRate";N;s:9:"afterRate";N;s:5:"theme";N;}s:24:"rw_availability_settings";O:8:"stdClass":14:{s:15:"activity-update";i:1;s:16:"activity-comment";i:1;s:10:"forum-post";i:1;s:11:"forum-reply";i:1;s:14:"new-forum-post";i:1;s:4:"user";i:1;s:9:"user-post";i:1;s:12:"user-comment";i:1;s:9:"user-page";i:1;s:20:"user-activity-update";i:1;s:21:"user-activity-comment";i:1;s:15:"user-forum-post";i:1;s:9:"blog-post";i:0;s:4:"page";i:0;}s:35:"rw_categories_availability_settings";O:8:"stdClass":1:{s:9:"blog-post";a:1:{i:0;s:2:"-1";}}s:26:"rw_custom_settings_enabled";O:8:"stdClass":2:{s:9:"blog-post";b:0;s:4:"page";b:0;}s:18:"rw_custom_settings";O:8:"stdClass":2:{s:9:"blog-post";s:1202:"/*\r\n * We recommend to use this section only if you familiar with JavaScript.\r\n *\r\n * For your convenience, we have collected a set of examples which we are frequently\r\n * being asked about. Make sure to delete (or comment) the code you do NOT want to use.\r\n */\r\n\r\n// Example: Hide ratings tooltip.\r\noptions.showTooltip = false;\r\n\r\n// Example: Hide posts recommendations.\r\noptions.hideRecommendations = true;\r\n\r\n// Example: Hide ratings report.\r\noptions.showReport = false;\r\n\r\n// Example: Hide the ratings loading gif.\r\noptions.showLoader = false;\r\n\r\n// Example: Hide the text bubble - only show the star ratings.\r\noptions.showInfo = false;\r\n\r\n// Example: Set custom rating file.\r\n// NOTE: This feature is only supported in the Professional and Business plans.\r\n//\r\n// More information:\r\n//      http://rating-widget.com/support/how-can-i-customize-the-ratings-image-theme-in-wordpress/\r\noptions.style = RW.CUSTOM;\r\noptions.imgUrl = {\r\n	ltr: \\"http://i.rw.gs/s/flat_yellow.m.png\\", // Left to Right rating\r\n	rtl: \\"http://i.rw.gs/s/flat_yellow.m.png\\"  // Right to Left rating\r\n};\r\n\r\n// Example: Disable mobile optimized UI (the fixed star button).\r\noptions.mobile = {\\"showTrigger\\": false};\r\n								";s:4:"page";s:1198:"/*\r\n * We recommend to use this section only if you familiar with JavaScript.\r\n *\r\n * For your convenience, we have collected a set of examples which we are frequently\r\n * being asked about. Make sure to delete (or comment) the code you do NOT want to use.\r\n */\r\n\r\n// Example: Hide ratings tooltip.\r\noptions.showTooltip = false;\r\n\r\n// Example: Hide posts recommendations.\r\noptions.hideRecommendations = true;\r\n\r\n// Example: Hide ratings report.\r\noptions.showReport = false;\r\n\r\n// Example: Hide the ratings loading gif.\r\noptions.showLoader = false;\r\n\r\n// Example: Hide the text bubble - only show the star ratings.\r\noptions.showInfo = false;\r\n\r\n// Example: Set custom rating file.\r\n// NOTE: This feature is only supported in the Professional and Business plans.\r\n//\r\n// More information:\r\n//      http://rating-widget.com/support/how-can-i-customize-the-ratings-image-theme-in-wordpress/\r\noptions.style = RW.CUSTOM;\r\noptions.imgUrl = {\r\n	ltr: \\"http://i.rw.gs/s/flat_yellow.m.png\\", // Left to Right rating\r\n	rtl: \\"http://i.rw.gs/s/flat_yellow.m.png\\"  // Right to Left rating\r\n};\r\n\r\n// Example: Disable mobile optimized UI (the fixed star button).\r\noptions.mobile = {\\"showTrigger\\": false};\r\n				";}s:22:"rw_visibility_settings";O:8:"stdClass":2:{s:9:"blog-post";O:8:"stdClass":3:{s:8:"selected";i:0;s:7:"exclude";a:0:{}s:7:"include";a:0:{}}s:4:"page";O:8:"stdClass":3:{s:8:"selected";i:0;s:7:"exclude";a:0:{}s:7:"include";a:0:{}}}s:18:"rw_show_on_excerpt";b:1;s:18:"rw_show_on_archive";b:1;s:19:"rw_show_on_category";b:1;s:17:"rw_show_on_search";b:1;s:14:"rw_pages_align";O:8:"stdClass":0:{}s:16:"rw_pages_options";O:8:"stdClass":32:{s:4:"urid";s:1:"3";s:4:"size";s:6:"medium";s:5:"theme";s:16:"star_flat_yellow";s:7:"isDummy";b:0;s:4:"type";s:4:"star";s:5:"boost";O:8:"stdClass":2:{s:5:"votes";i:0;s:4:"rate";i:5;}s:6:"imgUrl";O:8:"stdClass":2:{s:3:"ltr";s:0:"";s:3:"rtl";s:0:"";}s:6:"mobile";O:8:"stdClass":2:{s:9:"optimized";b:1;s:11:"showTrigger";b:1;}s:5:"label";O:8:"stdClass":2:{s:4:"text";O:8:"stdClass":2:{s:4:"star";O:8:"stdClass":3:{s:5:"empty";s:17:"{{text.rateThis}}";s:6:"normal";s:51:"{{text.rateThis}} ({{rating.votes}} {{text.votes}})";s:5:"rated";s:31:"{{rating.votes}} {{text.votes}}";}s:4:"nero";O:8:"stdClass":3:{s:5:"empty";s:17:"{{text.rateThis}}";s:6:"normal";s:17:"{{text.rateThis}}";s:5:"rated";s:31:"{{rating.votes}} {{text.votes}}";}}s:10:"background";s:7:"#FFFFFF";}s:8:"advanced";O:8:"stdClass":6:{s:4:"star";O:8:"stdClass":1:{s:5:"stars";i:5;}s:4:"nero";O:8:"stdClass":3:{s:4:"text";O:8:"stdClass":2:{s:4:"like";O:8:"stdClass":2:{s:5:"empty";s:16:"{{rating.likes}}";s:5:"rated";s:16:"{{rating.likes}}";}s:7:"dislike";O:8:"stdClass":2:{s:5:"empty";s:19:"{{rating.dislikes}}";s:5:"rated";s:19:"{{rating.dislikes}}";}}s:11:"showDislike";b:1;s:8:"showLike";b:1;}s:4:"font";O:8:"stdClass":6:{s:5:"hover";O:8:"stdClass":1:{s:5:"color";s:7:"#000000";}s:4:"bold";b:0;s:6:"italic";b:0;s:5:"color";s:7:"#000000";s:4:"size";s:4:"16px";s:4:"type";s:7:"inherit";}s:6:"layout";O:8:"stdClass":3:{s:5:"align";O:8:"stdClass":2:{s:3:"hor";s:5:"right";s:3:"ver";s:6:"middle";}s:3:"dir";s:3:"ltr";s:10:"lineHeight";s:4:"20px";}s:4:"text";O:8:"stdClass":13:{s:9:"rateAwful";s:5:"Awful";s:8:"ratePoor";s:4:"Poor";s:11:"rateAverage";s:7:"Average";s:8:"rateGood";s:4:"Good";s:13:"rateExcellent";s:9:"Excellent";s:8:"rateThis";s:9:"Rate this";s:4:"like";s:4:"Like";s:7:"dislike";s:7:"Dislike";s:4:"vote";s:4:"Vote";s:5:"votes";s:5:"Votes";s:6:"thanks";s:9:"Thank You";s:5:"outOf";s:6:"out of";s:11:"weRecommend";s:12:"We Recommend";}s:3:"css";O:8:"stdClass":1:{s:9:"container";s:0:"";}}s:5:"uarid";i:0;s:3:"lng";s:2:"en";s:3:"url";s:0:"";s:3:"img";s:0:"";s:5:"title";s:0:"";s:6:"rclass";s:0:"";s:5:"style";s:11:"flat_yellow";s:8:"readOnly";b:0;s:4:"sync";b:1;s:9:"forceSync";b:0;s:6:"reVote";b:1;s:9:"frequency";i:-1;s:8:"showInfo";b:1;s:11:"showTooltip";b:1;s:11:"showAverage";b:1;s:10:"showReport";b:1;s:19:"showRecommendations";b:0;s:19:"hideRecommendations";b:0;s:13:"showSponsored";b:0;s:10:"showLoader";b:1;s:10:"beforeRate";N;s:9:"afterRate";N;}}', 'yes'),
(530, 'rw_api_cache', 'a:2:{s:37:"GET:/v1/sites/398769/votes/count.json";O:8:"stdClass":2:{s:6:"result";O:8:"stdClass":1:{s:5:"count";s:1:"0";}s:9:"timestamp";i:1523433581;}s:39:"GET:/v1/sites/398769/ratings/count.json";O:8:"stdClass":2:{s:6:"result";O:8:"stdClass":1:{s:5:"count";s:1:"1";}s:9:"timestamp";i:1523435693;}}', 'yes'),
(533, 'WPLANG', 'vi', 'yes'),
(534, 'new_admin_email', 'nongthon@gmail.com', 'yes'),
(541, 'postratings_image', 'stars_crystal', 'yes'),
(542, 'postratings_max', '5', 'yes'),
(543, 'postratings_template_vote', '%RATINGS_IMAGES_VOTE% (<strong>%RATINGS_USERS%</strong> đánh giá, Tổng điểm: <strong>%RATINGS_AVERAGE%</strong> / %RATINGS_MAX%)<br />%RATINGS_TEXT%', 'yes'),
(544, 'postratings_template_text', '%RATINGS_IMAGES% (<em><strong>%RATINGS_USERS%</strong> đánh giá, Tổng điểm: <strong>%RATINGS_AVERAGE%</strong> / %RATINGS_MAX%, <strong>Đã đánh giá</strong></em>)', 'yes'),
(545, 'postratings_template_none', '%RATINGS_IMAGES_VOTE% (Chưa có đánh giá)<br />%RATINGS_TEXT%', 'yes'),
(546, 'postratings_logging_method', '0', 'yes'),
(547, 'postratings_allowtorate', '2', 'yes'),
(548, 'postratings_ratingstext', 'a:5:{i:0;s:10:"Rất kém";i:1;s:4:"Kém";i:2;s:8:"Được";i:3;s:5:"Tốt";i:4;s:11:"Rất tốt";}', 'yes'),
(549, 'postratings_template_highestrated', '<li><a href="%POST_URL%" title="%POST_TITLE%">%POST_TITLE%</a> %RATINGS_IMAGES% (%RATINGS_AVERAGE% out of %RATINGS_MAX%)</li>', 'yes'),
(550, 'postratings_ajax_style', 'a:2:{s:7:"loading";i:1;s:6:"fading";i:1;}', 'yes'),
(551, 'postratings_ratingsvalue', 'a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}', 'yes'),
(552, 'postratings_customrating', '0', 'yes'),
(553, 'postratings_template_permission', '%RATINGS_IMAGES% (<em><strong>%RATINGS_USERS%</strong> votes, average: <strong>%RATINGS_AVERAGE%</strong> out of %RATINGS_MAX%</em>)<br /><em>You need to be a registered member to rate this.</em>', 'yes'),
(554, 'postratings_template_mostrated', '<li><a href="%POST_URL%" title="%POST_TITLE%">%POST_TITLE%</a> - %RATINGS_USERS% votes</li>', 'yes'),
(555, 'widget_ratings-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(556, 'postratings_options', 'a:1:{s:11:"richsnippet";i:0;}', 'yes'),
(581, 'wp_mail_smtp_version', '1.2.5', 'yes'),
(582, 'wp_mail_smtp', 'a:4:{s:4:"mail";a:4:{s:10:"from_email";s:18:"nongthon@gmail.com";s:9:"from_name";s:8:"nongthon";s:6:"mailer";s:4:"smtp";s:11:"return_path";b:0;}s:4:"smtp";a:7:{s:7:"autotls";b:0;s:4:"host";s:14:"smtp.gmail.com";s:4:"port";i:465;s:10:"encryption";s:3:"ssl";s:4:"auth";b:1;s:4:"user";s:19:"pandagau4@gmail.com";s:4:"pass";s:11:"tienlagiday";}s:7:"mailgun";a:2:{s:7:"api_key";s:0:"";s:6:"domain";s:0:"";}s:8:"sendgrid";a:1:{s:7:"api_key";s:0:"";}}', 'no'),
(583, '_amn_smtp_last_checked', '1523836800', 'yes'),
(584, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(663, 'pagenavi_options', 'a:15:{s:10:"pages_text";s:0:"";s:12:"current_text";s:13:"%PAGE_NUMBER%";s:9:"page_text";s:13:"%PAGE_NUMBER%";s:10:"first_text";s:8:"« First";s:9:"last_text";s:7:"Last »";s:9:"prev_text";s:14:"Trang trước";s:9:"next_text";s:9:"Trang sau";s:12:"dotleft_text";s:3:"...";s:13:"dotright_text";s:3:"...";s:9:"num_pages";i:5;s:23:"num_larger_page_numbers";i:3;s:28:"larger_page_numbers_multiple";i:10;s:11:"always_show";i:0;s:16:"use_pagenavi_css";i:0;s:5:"style";i:1;}', 'yes'),
(695, 'envira_gallery_116', '1', 'yes'),
(696, 'envira_gallery_121', '1', 'yes'),
(697, '_amn_envira-lite_last_checked', '1523836800', 'yes'),
(700, 'envira_gallery_review', 'a:2:{s:4:"time";i:1523801849;s:9:"dismissed";b:0;}', 'yes'),
(740, 'ngg_run_freemius', '1', 'yes'),
(742, 'widget_ngg-images', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(743, 'widget_ngg-mrssw', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(744, 'widget_slideshow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(745, 'ngg_transient_groups', 'a:7:{s:9:"__counter";i:7;s:3:"MVC";a:2:{s:2:"id";i:2;s:7:"enabled";b:1;}s:15:"col_in_wp_posts";a:2:{s:2:"id";i:3;s:7:"enabled";b:1;}s:21:"col_in_wp_ngg_gallery";a:2:{s:2:"id";i:4;s:7:"enabled";b:1;}s:22:"col_in_wp_ngg_pictures";a:2:{s:2:"id";i:5;s:7:"enabled";b:1;}s:27:"displayed_gallery_rendering";a:2:{s:2:"id";i:6;s:7:"enabled";b:1;}s:19:"col_in_wp_ngg_album";a:2:{s:2:"id";i:7;s:7:"enabled";b:1;}}', 'yes'),
(746, 'ngg_options', 'a:72:{s:11:"gallerypath";s:19:"wp-content/gallery/";s:11:"wpmuCSSfile";s:13:"nggallery.css";s:9:"wpmuStyle";b:0;s:9:"wpmuRoles";b:0;s:16:"wpmuImportFolder";b:0;s:13:"wpmuZipUpload";b:0;s:14:"wpmuQuotaCheck";b:0;s:17:"datamapper_driver";s:22:"custom_post_datamapper";s:21:"gallerystorage_driver";s:25:"ngglegacy_gallery_storage";s:20:"maximum_entity_count";i:500;s:17:"router_param_slug";s:9:"nggallery";s:22:"router_param_separator";s:2:"--";s:19:"router_param_prefix";s:0:"";s:9:"deleteImg";b:1;s:9:"swfUpload";b:1;s:13:"usePermalinks";b:0;s:13:"permalinkSlug";s:9:"nggallery";s:14:"graphicLibrary";s:2:"gd";s:14:"imageMagickDir";s:15:"/usr/local/bin/";s:11:"useMediaRSS";b:0;s:18:"galleries_in_feeds";b:0;s:12:"activateTags";i:0;s:10:"appendType";s:4:"tags";s:9:"maxImages";i:7;s:14:"relatedHeading";s:24:"<h3>Related Images:</h3>";s:10:"thumbwidth";i:240;s:11:"thumbheight";i:160;s:8:"thumbfix";b:1;s:12:"thumbquality";i:100;s:8:"imgWidth";i:800;s:9:"imgHeight";i:600;s:10:"imgQuality";i:100;s:9:"imgBackup";b:1;s:13:"imgAutoResize";b:0;s:9:"galImages";s:2:"20";s:17:"galPagedGalleries";i:0;s:10:"galColumns";i:0;s:12:"galShowSlide";b:1;s:12:"galTextSlide";s:16:"[Show slideshow]";s:14:"galTextGallery";s:17:"[Show thumbnails]";s:12:"galShowOrder";s:7:"gallery";s:7:"galSort";s:9:"sortorder";s:10:"galSortDir";s:3:"ASC";s:10:"galNoPages";b:1;s:13:"galImgBrowser";i:0;s:12:"galHiddenImg";i:0;s:10:"galAjaxNav";i:0;s:11:"thumbEffect";s:8:"fancybox";s:9:"thumbCode";s:41:"class="ngg-fancybox" rel="%GALLERY_NAME%"";s:18:"thumbEffectContext";s:14:"nextgen_images";s:5:"wmPos";s:8:"botRight";s:6:"wmXpos";i:5;s:6:"wmYpos";i:5;s:6:"wmType";s:5:"image";s:6:"wmPath";s:0:"";s:6:"wmFont";s:9:"arial.ttf";s:6:"wmSize";i:10;s:6:"wmText";s:8:"nongthon";s:7:"wmColor";s:6:"000000";s:8:"wmOpaque";s:3:"100";s:7:"slideFX";s:4:"fade";s:7:"irWidth";i:600;s:8:"irHeight";i:400;s:12:"irRotatetime";i:10;s:11:"activateCSS";i:1;s:7:"CSSfile";s:13:"nggallery.css";s:28:"always_enable_frontend_logic";b:0;s:22:"dynamic_thumbnail_slug";s:13:"nextgen-image";s:23:"dynamic_stylesheet_slug";s:12:"nextgen-dcss";s:11:"installDate";i:1523845986;s:13:"gallery_count";i:1;s:40:"gallery_created_after_reviews_introduced";b:1;}', 'yes'),
(748, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(749, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(750, 'ngg_db_version', '1.8.1', 'yes'),
(753, 'pope_module_list', 'a:36:{i:0;s:17:"photocrati-fs|0.6";i:1;s:19:"photocrati-i18n|0.4";i:2;s:25:"photocrati-validation|0.2";i:3;s:21:"photocrati-router|0.9";i:4;s:32:"photocrati-wordpress_routing|0.8";i:5;s:23:"photocrati-security|0.3";i:6;s:32:"photocrati-nextgen_settings|0.16";i:7;s:18:"photocrati-mvc|0.8";i:8;s:20:"photocrati-ajax|0.10";i:9;s:26:"photocrati-datamapper|0.10";i:10;s:30:"photocrati-nextgen-legacy|0.27";i:11;s:30:"photocrati-simple_html_dom|1.5";i:12;s:28:"photocrati-nextgen-data|0.16";i:13;s:33:"photocrati-dynamic_thumbnails|0.7";i:14;s:29:"photocrati-nextgen_admin|0.16";i:15;s:39:"photocrati-nextgen_gallery_display|0.17";i:16;s:34:"photocrati-frame_communication|0.5";i:17;s:30:"photocrati-attach_to_post|0.18";i:18;s:38:"photocrati-nextgen_addgallery_page|0.9";i:19;s:36:"photocrati-nextgen_other_options|0.9";i:20;s:33:"photocrati-nextgen_pagination|0.4";i:21;s:33:"photocrati-dynamic_stylesheet|0.4";i:22;s:34:"photocrati-nextgen_pro_upgrade|0.8";i:23;s:20:"photocrati-cache|0.2";i:24;s:24:"photocrati-lightbox|0.17";i:25;s:38:"photocrati-nextgen_basic_templates|0.7";i:26;s:37:"photocrati-nextgen_basic_gallery|0.16";i:27;s:42:"photocrati-nextgen_basic_imagebrowser|0.14";i:28;s:39:"photocrati-nextgen_basic_singlepic|0.14";i:29;s:38:"photocrati-nextgen_basic_tagcloud|0.15";i:30;s:35:"photocrati-nextgen_basic_album|0.17";i:31;s:21:"photocrati-widget|0.6";i:32;s:33:"photocrati-third_party_compat|0.6";i:33;s:29:"photocrati-nextgen_xmlrpc|0.6";i:34;s:20:"photocrati-wpcli|0.2";i:35;s:22:"photocrati-imagify|0.4";}', 'yes'),
(766, '_transient_timeout__eg_cache_224', '1523933111', 'no'),
(767, '_transient__eg_cache_224', 'a:3:{s:2:"id";i:224;s:7:"gallery";a:6:{i:225;a:7:{s:6:"status";s:6:"active";s:3:"src";s:78:"http://nongthon-wp.local/wp-content/uploads/2018/04/013c846b776f9931c07e-1.jpg";s:5:"title";s:4:"img1";s:4:"link";s:78:"http://nongthon-wp.local/wp-content/uploads/2018/04/013c846b776f9931c07e-1.jpg";s:3:"alt";s:4:"fefe";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:226;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-1.jpg";s:5:"title";s:5:"ffff2";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-1.jpg";s:3:"alt";s:4:"fff2";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:232;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0114923t8813l2-1.jpg";s:5:"title";s:17:"77d0114923t8813l2";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0114923t8813l2-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:233;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d3055028t3182l0-1.jpg";s:5:"title";s:17:"77d3055028t3182l0";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d3055028t3182l0-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:234;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d5124827t5546l3-1.jpg";s:5:"title";s:17:"77d5124827t5546l3";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d5124827t5546l3-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:235;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d6121625t1758l0-1.jpg";s:5:"title";s:17:"77d6121625t1758l0";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d6121625t1758l0-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}}s:6:"config";a:21:{s:4:"type";s:7:"default";s:7:"columns";s:1:"4";s:13:"gallery_theme";s:4:"base";s:23:"justified_gallery_theme";s:6:"normal";s:6:"gutter";i:10;s:6:"margin";i:10;s:10:"image_size";s:7:"default";s:10:"crop_width";i:640;s:11:"crop_height";i:480;s:4:"crop";i:0;s:12:"lazy_loading";i:1;s:18:"lazy_loading_delay";i:500;s:20:"justified_row_height";i:150;s:16:"lightbox_enabled";i:1;s:14:"lightbox_theme";s:4:"base";s:19:"lightbox_image_size";s:7:"default";s:13:"title_display";s:7:"outside";s:7:"classes";a:1:{i:0;s:0:"";}s:3:"rtl";i:0;s:5:"title";s:6:"album1";s:4:"slug";s:6:"album1";}}', 'no'),
(801, '_transient_timeout_plugin_slugs', '1523934645', 'no'),
(802, '_transient_plugin_slugs', 'a:15:{i:0;s:21:"adrotate/adrotate.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:19:"akismet/akismet.php";i:3;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:4;s:37:"download-manager/download-manager.php";i:5;s:43:"envira-gallery-lite/envira-gallery-lite.php";i:6;s:9:"hello.php";i:7;s:35:"kstats-reloaded/kstats-reloaded.php";i:8;s:29:"nextgen-gallery/nggallery.php";i:9;s:31:"rating-widget/rating-widget.php";i:10;s:33:"addthis/addthis_social_widget.php";i:11;s:27:"wp-pagenavi/wp-pagenavi.php";i:12;s:21:"wp-polls/wp-polls.php";i:13;s:33:"wp-postratings/wp-postratings.php";i:14;s:29:"wp-mail-smtp/wp_mail_smtp.php";}', 'no'),
(824, 'phan-loai_41_visible_home', '0', 'no'),
(825, '_phan-loai_41_visible_home', 'field_5aca11ce1f160', 'no'),
(826, 'phan-loai_42_visible_home', '0', 'no'),
(827, '_phan-loai_42_visible_home', 'field_5aca11ce1f160', 'no'),
(828, 'phan-loai_43_visible_home', '0', 'no'),
(829, '_phan-loai_43_visible_home', 'field_5aca11ce1f160', 'no'),
(830, 'phan-loai_44_visible_home', '0', 'no'),
(831, '_phan-loai_44_visible_home', 'field_5aca11ce1f160', 'no'),
(832, 'phan-loai_45_visible_home', '0', 'no'),
(833, '_phan-loai_45_visible_home', 'field_5aca11ce1f160', 'no'),
(883, '_transient_timeout_2__974818834', '1523893299', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(884, '_transient_2__974818834', '{"photocrati-ajax#ajax.min.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/ajax\\/static\\/ajax.min.js","photocrati-nextgen_admin#gritter\\/gritter.min.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/gritter.min.js","photocrati-nextgen_admin#gritter\\/css\\/gritter.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/css\\/gritter.min.css","photocrati-nextgen_admin#ngg_progressbar.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.js","photocrati-nextgen_admin#ngg_progressbar.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.css","photocrati-nextgen_admin#select2\\/select2.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.min.css","photocrati-nextgen_admin#select2\\/select2.modded.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.modded.min.js","photocrati-nextgen_admin#jquery.nextgen_radio_toggle.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery.nextgen_radio_toggle.min.js","photocrati-nextgen_admin#jquery-ui\\/jquery-ui-1.10.4.custom.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery-ui\\/jquery-ui-1.10.4.custom.min.css","photocrati-nextgen_admin#bootstrap\\/css\\/bootstrap-tooltip.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/bootstrap\\/css\\/bootstrap-tooltip.min.css","photocrati-nextgen_admin#tourist\\/tourist.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/tourist\\/tourist.min.js","photocrati-nextgen_admin#tourist\\/tourist.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/tourist\\/tourist.min.css","photocrati-nextgen_admin#nextgen_wizards.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/nextgen_wizards.min.js","photocrati-nextgen_admin#nextgen_wizards.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/nextgen_wizards.min.css","photocrati-frame_communication#frame_event_publisher.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/frame_communication\\/static\\/frame_event_publisher.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.css","photocrati-nextgen_gallery_display#nextgen_gallery_related_images.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_related_images.min.css","photocrati-nextgen_gallery_display#common.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/common.min.js","photocrati-nextgen_gallery_display#trigger_buttons.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/trigger_buttons.min.css","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/thumbnails\\/nextgen_basic_thumbnails.min.js","photocrati-lightbox#lightbox_context.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/lightbox_context.min.js","|photocrati-lightbox|http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static","photocrati-lightbox#fancybox\\/jquery.fancybox-1.3.4.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.fancybox-1.3.4.min.css","photocrati-lightbox#fancybox\\/jquery.easing-1.3.pack.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.easing-1.3.pack.js","photocrati-lightbox#fancybox\\/jquery.fancybox-1.3.4.pack.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/jquery.fancybox-1.3.4.pack.js","photocrati-lightbox#fancybox\\/nextgen_fancybox_init.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/fancybox\\/nextgen_fancybox_init.min.js","photocrati-nextgen_gallery_display#fontawesome\\/font-awesome.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/fontawesome\\/font-awesome.min.css","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/thumbnails\\/nextgen_basic_thumbnails.min.css","photocrati-nextgen_pagination#style.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_pagination\\/static\\/style.min.css","photocrati-attach_to_post#ngg_attach_to_post_tinymce_plugin.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/ngg_attach_to_post_tinymce_plugin.min.css","photocrati-nextgen_addgallery_page#browserplus-2.4.21.min.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/browserplus-2.4.21.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/moxie.min.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/moxie.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/plupload.dev.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/plupload.dev.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.min.css","photocrati-nextgen_addgallery_page#styles.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/styles.min.css","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.js","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.css","photocrati-nextgen_addgallery_page#media-library-import.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/media-library-import.min.js","photocrati-nextgen_addgallery_page#media-library-import.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/media-library-import.min.css","photocrati-attach_to_post#iframely.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/iframely.min.js","photocrati-attach_to_post#iframely.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/iframely.min.css","photocrati-lightbox#shutter\\/shutter.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/shutter\\/shutter.min.css","photocrati-lightbox#shutter\\/shutter.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/lightbox\\/static\\/shutter\\/shutter.min.js","photocrati-nextgen_admin#nextgen_admin_page.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/nextgen_admin_page.min.css","photocrati-attach_to_post#base64.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/base64.min.js","photocrati-attach_to_post#attach_to_post_dialog.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/attach_to_post_dialog.min.css","photocrati-attach_to_post#igw.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/igw.min.js","photocrati-attach_to_post#atp_button.png||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/atp_button.png","photocrati-attach_to_post#ngg_attach_to_post_tinymce_plugin.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/ngg_attach_to_post_tinymce_plugin.min.js","photocrati-nextgen_admin#jquery.placeholder.min.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery.placeholder.min.js","photocrati-nextgen_admin#nextgen_admin_page.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/nextgen_admin_page.min.js","photocrati-attach_to_post#ngg_tabs.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/ngg_tabs.min.js","photocrati-attach_to_post#attach_to_post.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/attach_to_post.min.js","photocrati-attach_to_post#attach_to_post.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/attach_to_post.min.css","photocrati-attach_to_post#underscore.string.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/underscore.string.min.js","photocrati-attach_to_post#display_tab.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/attach_to_post\\/static\\/display_tab.min.js","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails_settings.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/thumbnails\\/nextgen_basic_thumbnails_settings.min.css","photocrati-nextgen_basic_gallery#thumbnails\\/nextgen_basic_thumbnails_settings.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/thumbnails\\/nextgen_basic_thumbnails_settings.min.js","photocrati-nextgen_basic_gallery#slideshow\\/nextgen_basic_slideshow_settings.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_gallery\\/static\\/slideshow\\/nextgen_basic_slideshow_settings.min.js","photocrati-nextgen_basic_templates#ngg_template_settings.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_templates\\/static\\/ngg_template_settings.min.css","photocrati-nextgen_basic_templates#ngg_template_settings.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_templates\\/static\\/ngg_template_settings.min.js","photocrati-nextgen_basic_tagcloud#settings.css||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_tagcloud\\/static\\/settings.min.css","photocrati-nextgen_basic_album#compact_settings.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_album\\/static\\/compact_settings.min.js","photocrati-nextgen_basic_album#extended_settings.js||http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/mu-plugins|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen|http:\\/\\/nongthon-wp.local\\/wp-content\\/themes\\/twentyseventeen":"http:\\/\\/nongthon-wp.local\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_basic_album\\/static\\/extended_settings.min.js"}', 'no'),
(885, '_site_transient_timeout_theme_roots', '1523886123', 'no'),
(886, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(893, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.5.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.4";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-rollback-4.zip";}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.4";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1523884329;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(894, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1523884331;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip";}}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"twentyfifteen";s:8:"language";s:2:"vi";s:7:"version";s:3:"1.9";s:7:"updated";s:19:"2015-10-22 10:28:45";s:7:"package";s:74:"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.9/vi.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:15:"twentyseventeen";s:8:"language";s:2:"vi";s:7:"version";s:3:"1.4";s:7:"updated";s:19:"2017-10-05 02:05:01";s:7:"package";s:76:"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.4/vi.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"twentysixteen";s:8:"language";s:2:"vi";s:7:"version";s:3:"1.4";s:7:"updated";s:19:"2016-12-05 01:43:13";s:7:"package";s:74:"https://downloads.wordpress.org/translation/theme/twentysixteen/1.4/vi.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(895, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1523884331;s:8:"response";a:4:{s:21:"adrotate/adrotate.php";O:8:"stdClass":12:{s:2:"id";s:22:"w.org/plugins/adrotate";s:4:"slug";s:8:"adrotate";s:6:"plugin";s:21:"adrotate/adrotate.php";s:11:"new_version";s:4:"4.11";s:3:"url";s:39:"https://wordpress.org/plugins/adrotate/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/adrotate.4.11.zip";s:5:"icons";a:2:{s:2:"2x";s:60:"https://ps.w.org/adrotate/assets/icon-256x256.png?rev=970153";s:2:"1x";s:60:"https://ps.w.org/adrotate/assets/icon-128x128.png?rev=970153";}s:7:"banners";a:1:{s:2:"1x";s:63:"https://ps.w.org/adrotate/assets/banner-772x250.jpg?rev=1691423";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}s:37:"download-manager/download-manager.php";O:8:"stdClass":12:{s:2:"id";s:30:"w.org/plugins/download-manager";s:4:"slug";s:16:"download-manager";s:6:"plugin";s:37:"download-manager/download-manager.php";s:11:"new_version";s:6:"2.9.71";s:3:"url";s:47:"https://wordpress.org/plugins/download-manager/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/download-manager.zip";s:5:"icons";a:2:{s:2:"2x";s:69:"https://ps.w.org/download-manager/assets/icon-256x256.png?rev=1561688";s:2:"1x";s:69:"https://ps.w.org/download-manager/assets/icon-128x128.png?rev=1561688";}s:7:"banners";a:1:{s:2:"1x";s:71:"https://ps.w.org/download-manager/assets/banner-772x250.png?rev=1722853";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}s:33:"addthis/addthis_social_widget.php";O:8:"stdClass":13:{s:2:"id";s:21:"w.org/plugins/addthis";s:4:"slug";s:7:"addthis";s:6:"plugin";s:33:"addthis/addthis_social_widget.php";s:11:"new_version";s:5:"6.1.4";s:3:"url";s:38:"https://wordpress.org/plugins/addthis/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/addthis.6.1.4.zip";s:5:"icons";a:2:{s:2:"2x";s:60:"https://ps.w.org/addthis/assets/icon-256x256.png?rev=1223867";s:2:"1x";s:60:"https://ps.w.org/addthis/assets/icon-128x128.png?rev=1223867";}s:7:"banners";a:2:{s:2:"2x";s:63:"https://ps.w.org/addthis/assets/banner-1544x500.png?rev=1499004";s:2:"1x";s:62:"https://ps.w.org/addthis/assets/banner-772x250.png?rev=1499004";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:46:"<ul>\n<li>Remove uninstallation hook</li>\n</ul>";s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:7:"akismet";s:8:"language";s:2:"vi";s:7:"version";s:5:"4.0.2";s:7:"updated";s:19:"2017-10-05 16:53:44";s:7:"package";s:71:"https://downloads.wordpress.org/translation/plugin/akismet/4.0.2/vi.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"wp-pagenavi";s:8:"language";s:2:"vi";s:7:"version";s:4:"2.92";s:7:"updated";s:19:"2016-12-05 01:59:40";s:7:"package";s:74:"https://downloads.wordpress.org/translation/plugin/wp-pagenavi/2.92/vi.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:12:"wp-mail-smtp";s:8:"language";s:2:"vi";s:7:"version";s:6:"0.10.1";s:7:"updated";s:19:"2016-12-05 02:10:49";s:7:"package";s:77:"https://downloads.wordpress.org/translation/plugin/wp-mail-smtp/0.10.1/vi.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:10:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:45:"taxonomy-terms-order/taxonomy-terms-order.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/taxonomy-terms-order";s:4:"slug";s:20:"taxonomy-terms-order";s:6:"plugin";s:45:"taxonomy-terms-order/taxonomy-terms-order.php";s:11:"new_version";s:7:"1.5.3.2";s:3:"url";s:51:"https://wordpress.org/plugins/taxonomy-terms-order/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.3.2.zip";s:5:"icons";a:2:{s:2:"2x";s:73:"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412";s:2:"1x";s:73:"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412";}s:7:"banners";a:2:{s:2:"2x";s:76:"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412";s:2:"1x";s:75:"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:35:"kstats-reloaded/kstats-reloaded.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/kstats-reloaded";s:4:"slug";s:15:"kstats-reloaded";s:6:"plugin";s:35:"kstats-reloaded/kstats-reloaded.php";s:11:"new_version";s:5:"0.7.4";s:3:"url";s:46:"https://wordpress.org/plugins/kstats-reloaded/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/kstats-reloaded.0.7.4.zip";s:5:"icons";a:1:{s:7:"default";s:59:"https://s.w.org/plugins/geopattern-icon/kstats-reloaded.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:29:"nextgen-gallery/nggallery.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/nextgen-gallery";s:4:"slug";s:15:"nextgen-gallery";s:6:"plugin";s:29:"nextgen-gallery/nggallery.php";s:11:"new_version";s:6:"2.2.54";s:3:"url";s:46:"https://wordpress.org/plugins/nextgen-gallery/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/nextgen-gallery.2.2.54.zip";s:5:"icons";a:3:{s:2:"2x";s:68:"https://ps.w.org/nextgen-gallery/assets/icon-256x256.png?rev=1537920";s:2:"1x";s:60:"https://ps.w.org/nextgen-gallery/assets/icon.svg?rev=1537920";s:3:"svg";s:60:"https://ps.w.org/nextgen-gallery/assets/icon.svg?rev=1537920";}s:7:"banners";a:1:{s:2:"1x";s:69:"https://ps.w.org/nextgen-gallery/assets/banner-772x250.png?rev=667493";}s:11:"banners_rtl";a:0:{}}s:31:"rating-widget/rating-widget.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/rating-widget";s:4:"slug";s:13:"rating-widget";s:6:"plugin";s:31:"rating-widget/rating-widget.php";s:11:"new_version";s:5:"2.9.4";s:3:"url";s:44:"https://wordpress.org/plugins/rating-widget/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/rating-widget.2.9.4.zip";s:5:"icons";a:2:{s:2:"2x";s:65:"https://ps.w.org/rating-widget/assets/icon-256x256.jpg?rev=983319";s:2:"1x";s:65:"https://ps.w.org/rating-widget/assets/icon-128x128.jpg?rev=983319";}s:7:"banners";a:1:{s:2:"1x";s:67:"https://ps.w.org/rating-widget/assets/banner-772x250.png?rev=903722";}s:11:"banners_rtl";a:1:{s:2:"1x";s:72:"https://ps.w.org/rating-widget/assets/banner-772x250-rtl.png?rev=1305765";}}s:27:"wp-pagenavi/wp-pagenavi.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/wp-pagenavi";s:4:"slug";s:11:"wp-pagenavi";s:6:"plugin";s:27:"wp-pagenavi/wp-pagenavi.php";s:11:"new_version";s:4:"2.92";s:3:"url";s:42:"https://wordpress.org/plugins/wp-pagenavi/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/wp-pagenavi.2.92.zip";s:5:"icons";a:2:{s:2:"1x";s:55:"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997";s:3:"svg";s:55:"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758";s:2:"1x";s:66:"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758";}s:11:"banners_rtl";a:0:{}}s:21:"wp-polls/wp-polls.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/wp-polls";s:4:"slug";s:8:"wp-polls";s:6:"plugin";s:21:"wp-polls/wp-polls.php";s:11:"new_version";s:6:"2.73.8";s:3:"url";s:39:"https://wordpress.org/plugins/wp-polls/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/wp-polls.2.73.8.zip";s:5:"icons";a:2:{s:2:"1x";s:52:"https://ps.w.org/wp-polls/assets/icon.svg?rev=977996";s:3:"svg";s:52:"https://ps.w.org/wp-polls/assets/icon.svg?rev=977996";}s:7:"banners";a:2:{s:2:"2x";s:64:"https://ps.w.org/wp-polls/assets/banner-1544x500.jpg?rev=1206760";s:2:"1x";s:63:"https://ps.w.org/wp-polls/assets/banner-772x250.jpg?rev=1206760";}s:11:"banners_rtl";a:0:{}}s:33:"wp-postratings/wp-postratings.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-postratings";s:4:"slug";s:14:"wp-postratings";s:6:"plugin";s:33:"wp-postratings/wp-postratings.php";s:11:"new_version";s:4:"1.85";s:3:"url";s:45:"https://wordpress.org/plugins/wp-postratings/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-postratings.1.85.zip";s:5:"icons";a:2:{s:2:"1x";s:58:"https://ps.w.org/wp-postratings/assets/icon.svg?rev=978014";s:3:"svg";s:58:"https://ps.w.org/wp-postratings/assets/icon.svg?rev=978014";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/wp-postratings/assets/banner-1544x500.jpg?rev=1206761";s:2:"1x";s:69:"https://ps.w.org/wp-postratings/assets/banner-772x250.jpg?rev=1206761";}s:11:"banners_rtl";a:0:{}}s:29:"wp-mail-smtp/wp_mail_smtp.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/wp-mail-smtp";s:4:"slug";s:12:"wp-mail-smtp";s:6:"plugin";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:11:"new_version";s:5:"1.2.5";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-smtp/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/wp-mail-smtp.zip";s:5:"icons";a:2:{s:2:"2x";s:65:"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440";s:2:"1x";s:65:"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440";}s:7:"banners";a:2:{s:2:"2x";s:68:"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1785565";s:2:"1x";s:67:"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1785565";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(939, '_transient_timeout_3___1395736393', '1523891977', 'no'),
(940, '_transient_3___1395736393', '["ID","post_author","post_date","post_date_gmt","post_content","post_title","post_excerpt","post_status","comment_status","ping_status","post_password","post_name","to_ping","pinged","post_modified","post_modified_gmt","post_content_filtered","post_parent","guid","menu_order","post_type","post_mime_type","comment_count"]', 'no'),
(941, '_transient_timeout_4___1395736393', '1523891977', 'no'),
(942, '_transient_4___1395736393', '["gid","name","slug","path","title","galdesc","pageid","previewpic","author","extras_post_id"]', 'no'),
(943, '_transient_timeout_5___1395736393', '1523891977', 'no'),
(944, '_transient_5___1395736393', '["pid","image_slug","post_id","galleryid","filename","description","alttext","imagedate","exclude","sortorder","meta_data","extras_post_id","updated_at"]', 'no'),
(952, 'phan-loai_children', 'a:0:{}', 'yes'),
(955, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_pollsa`
--

CREATE TABLE IF NOT EXISTS `wp_pollsa` (
  `polla_aid` int(10) NOT NULL,
  `polla_qid` int(10) NOT NULL DEFAULT '0',
  `polla_answers` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `polla_votes` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_pollsa`
--

INSERT INTO `wp_pollsa` (`polla_aid`, `polla_qid`, `polla_answers`, `polla_votes`) VALUES
(1, 1, 'Good', 0),
(2, 1, 'Excellent', 0),
(3, 1, 'Tổng mức độ tiến bộ của tất cả các tiêu chí (theo phương pháp chấm điểm)?', 1),
(4, 1, 'Can Be Improved', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pollsip`
--

CREATE TABLE IF NOT EXISTS `wp_pollsip` (
  `pollip_id` int(10) NOT NULL,
  `pollip_qid` int(10) NOT NULL DEFAULT '0',
  `pollip_aid` int(10) NOT NULL DEFAULT '0',
  `pollip_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pollip_host` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pollip_timestamp` int(10) NOT NULL DEFAULT '0',
  `pollip_user` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pollip_userid` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_pollsip`
--

INSERT INTO `wp_pollsip` (`pollip_id`, `pollip_qid`, `pollip_aid`, `pollip_ip`, `pollip_host`, `pollip_timestamp`, `pollip_user`, `pollip_userid`) VALUES
(1, 1, 3, '10.0.2.2', 'gateway', 1522912876, 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pollsq`
--

CREATE TABLE IF NOT EXISTS `wp_pollsq` (
  `pollq_id` int(10) NOT NULL,
  `pollq_question` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `pollq_timestamp` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pollq_totalvotes` int(10) NOT NULL DEFAULT '0',
  `pollq_active` tinyint(1) NOT NULL DEFAULT '1',
  `pollq_expiry` int(10) NOT NULL DEFAULT '0',
  `pollq_multiple` tinyint(3) NOT NULL DEFAULT '0',
  `pollq_totalvoters` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_pollsq`
--

INSERT INTO `wp_pollsq` (`pollq_id`, `pollq_question`, `pollq_timestamp`, `pollq_totalvotes`, `pollq_active`, `pollq_expiry`, `pollq_multiple`, `pollq_totalvoters`) VALUES
(1, 'Đánh giá kết quả thực hiện Chương trình NTM nên theo chỉ tiêu nào?', '1522912717', 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=1160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1523177344:1'),
(6, 6, '_menu_item_type', 'custom'),
(7, 6, '_menu_item_menu_item_parent', '0'),
(8, 6, '_menu_item_object_id', '6'),
(9, 6, '_menu_item_object', 'custom'),
(10, 6, '_menu_item_target', ''),
(11, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(12, 6, '_menu_item_xfn', ''),
(13, 6, '_menu_item_url', 'http://nongthon-wp.local/'),
(14, 6, '_menu_item_orphaned', '1522939046'),
(15, 7, '_edit_last', '1'),
(16, 7, '_edit_lock', '1522939078:1'),
(17, 9, '_edit_last', '1'),
(18, 9, '_edit_lock', '1523540855:1'),
(19, 11, '_edit_last', '1'),
(20, 11, '_edit_lock', '1523885229:1'),
(21, 13, '_edit_last', '1'),
(22, 13, '_edit_lock', '1523865331:1'),
(23, 15, '_edit_last', '1'),
(24, 15, '_edit_lock', '1522939131:1'),
(25, 17, '_edit_last', '1'),
(26, 17, '_edit_lock', '1523791707:1'),
(27, 19, '_menu_item_type', 'custom'),
(28, 19, '_menu_item_menu_item_parent', '0'),
(29, 19, '_menu_item_object_id', '19'),
(30, 19, '_menu_item_object', 'custom'),
(31, 19, '_menu_item_target', ''),
(32, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 19, '_menu_item_xfn', ''),
(34, 19, '_menu_item_url', '/'),
(36, 20, '_menu_item_type', 'post_type'),
(37, 20, '_menu_item_menu_item_parent', '0'),
(38, 20, '_menu_item_object_id', '7'),
(39, 20, '_menu_item_object', 'page'),
(40, 20, '_menu_item_target', ''),
(41, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 20, '_menu_item_xfn', ''),
(43, 20, '_menu_item_url', ''),
(45, 21, '_menu_item_type', 'post_type'),
(46, 21, '_menu_item_menu_item_parent', '0'),
(47, 21, '_menu_item_object_id', '13'),
(48, 21, '_menu_item_object', 'page'),
(49, 21, '_menu_item_target', ''),
(50, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 21, '_menu_item_xfn', ''),
(52, 21, '_menu_item_url', ''),
(54, 22, '_menu_item_type', 'post_type'),
(55, 22, '_menu_item_menu_item_parent', '0'),
(56, 22, '_menu_item_object_id', '17'),
(57, 22, '_menu_item_object', 'page'),
(58, 22, '_menu_item_target', ''),
(59, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 22, '_menu_item_xfn', ''),
(61, 22, '_menu_item_url', ''),
(63, 23, '_menu_item_type', 'post_type'),
(64, 23, '_menu_item_menu_item_parent', '0'),
(65, 23, '_menu_item_object_id', '11'),
(66, 23, '_menu_item_object', 'page'),
(67, 23, '_menu_item_target', ''),
(68, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 23, '_menu_item_xfn', ''),
(70, 23, '_menu_item_url', ''),
(72, 24, '_menu_item_type', 'post_type'),
(73, 24, '_menu_item_menu_item_parent', '0'),
(74, 24, '_menu_item_object_id', '9'),
(75, 24, '_menu_item_object', 'page'),
(76, 24, '_menu_item_target', ''),
(77, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 24, '_menu_item_xfn', ''),
(79, 24, '_menu_item_url', ''),
(81, 25, '_menu_item_type', 'post_type'),
(82, 25, '_menu_item_menu_item_parent', '0'),
(83, 25, '_menu_item_object_id', '15'),
(84, 25, '_menu_item_object', 'page'),
(85, 25, '_menu_item_target', ''),
(86, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 25, '_menu_item_xfn', ''),
(88, 25, '_menu_item_url', ''),
(90, 26, '_wp_trash_meta_status', 'publish'),
(91, 26, '_wp_trash_meta_time', '1522940733'),
(92, 27, '_edit_last', '1'),
(93, 27, '_edit_lock', '1523003127:1'),
(94, 28, '_edit_last', '1'),
(95, 28, '_edit_lock', '1523003287:1'),
(96, 28, '_wp_page_template', 'homepage.php'),
(97, 30, '_wp_trash_meta_status', 'publish'),
(98, 30, '_wp_trash_meta_time', '1523003173'),
(99, 31, '_wp_attached_file', '2018/04/tvcs_1.jpg'),
(100, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:120;s:4:"file";s:18:"2018/04/tvcs_1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"tvcs_1-150x120.jpg";s:5:"width";i:150;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"tvcs_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(101, 32, '_wp_attached_file', '2018/04/dbtt.jpg'),
(102, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:154;s:4:"file";s:16:"2018/04/dbtt.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"dbtt-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:16:"dbtt-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(103, 33, '_wp_attached_file', '2018/04/ntm_video_1.png'),
(104, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:200;s:4:"file";s:23:"2018/04/ntm_video_1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"ntm_video_1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"ntm_video_1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:23:"ntm_video_1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(105, 34, '_wp_attached_file', '2018/04/i-office_3.jpg'),
(106, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:100;s:4:"file";s:22:"2018/04/i-office_3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"i-office_3-150x100.jpg";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:22:"i-office_3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(107, 35, '_edit_last', '1'),
(108, 35, '_edit_lock', '1523176677:1'),
(111, 37, '_wp_attached_file', '2018/04/77d0114923t8813l2.jpg'),
(112, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:29:"2018/04/77d0114923t8813l2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"77d0114923t8813l2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"77d0114923t8813l2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:29:"77d0114923t8813l2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 6D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1523175318";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"32";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:18:"0.0055555555555556";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(113, 35, '_thumbnail_id', '37'),
(116, 39, '_wp_attached_file', '2018/04/134d6175208t1095l0.jpg'),
(117, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:438;s:4:"file";s:30:"2018/04/134d6175208t1095l0.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"134d6175208t1095l0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"134d6175208t1095l0-300x219.jpg";s:5:"width";i:300;s:6:"height";i:219;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:30:"134d6175208t1095l0-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 6D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1523117055";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"45";s:3:"iso";s:4:"5000";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(118, 38, '_edit_last', '1'),
(119, 38, '_edit_lock', '1523176812:1'),
(120, 38, '_thumbnail_id', '39'),
(123, 42, '_wp_attached_file', '2018/04/013c846b776f9931c07e.jpg'),
(124, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:32:"2018/04/013c846b776f9931c07e.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"013c846b776f9931c07e-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"013c846b776f9931c07e-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"013c846b776f9931c07e-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:32:"013c846b776f9931c07e-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 600D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1523003140";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"56";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(125, 41, '_edit_last', '1'),
(126, 41, '_edit_lock', '1523176904:1'),
(127, 41, '_thumbnail_id', '42'),
(130, 45, '_wp_attached_file', '2018/04/77d5124827t5546l3.jpg'),
(131, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:29:"2018/04/77d5124827t5546l3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"77d5124827t5546l3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"77d5124827t5546l3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:29:"77d5124827t5546l3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 600D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1523006098";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"29";s:3:"iso";s:4:"1000";s:13:"shutter_speed";s:5:"0.025";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(132, 44, '_edit_last', '1'),
(133, 44, '_edit_lock', '1523177024:1'),
(134, 44, '_thumbnail_id', '45'),
(137, 47, '_edit_last', '1'),
(138, 47, '_edit_lock', '1523514797:1'),
(139, 48, '_wp_attached_file', '2018/04/102d5083841t7659l0.jpg'),
(140, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:30:"2018/04/102d5083841t7659l0.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"102d5083841t7659l0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"102d5083841t7659l0-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:30:"102d5083841t7659l0-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:6:"FC300X";s:7:"caption";s:24:"DCIM100MEDIADJI_0093.JPG";s:17:"created_timestamp";s:10:"1522834217";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.61";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:8:"0.001252";s:5:"title";s:24:"DCIM100MEDIADJI_0093.JPG";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(141, 47, '_thumbnail_id', '48'),
(144, 51, '_wp_attached_file', '2018/04/dsc_0983.jpg'),
(145, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:20:"2018/04/dsc_0983.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dsc_0983-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dsc_0983-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"dsc_0983-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:36:"????????????????????????????????????";s:17:"created_timestamp";s:10:"1375083190";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"55";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(146, 50, '_edit_last', '1'),
(147, 50, '_edit_lock', '1523177208:1'),
(148, 50, '_thumbnail_id', '51'),
(155, 4, '_thumbnail_id', '37'),
(158, 1, '_edit_lock', '1523177370:1'),
(159, 1, '_edit_last', '1'),
(160, 1, '_thumbnail_id', '48'),
(163, 55, '_wp_attached_file', '2018/04/77d0093609t7970l0.jpg'),
(164, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:29:"2018/04/77d0093609t7970l0.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"77d0093609t7970l0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"77d0093609t7970l0-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:29:"77d0093609t7970l0-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"11";s:6:"credit";s:0:"";s:6:"camera";s:9:"NIKON D90";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1522946680";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"32";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(165, 54, '_edit_last', '1'),
(166, 54, '_edit_lock', '1523197401:1'),
(167, 54, '_thumbnail_id', '55'),
(170, 55, '_wp_attachment_image_alt', 'alt text'),
(173, 58, '_edit_last', '1'),
(174, 58, 'field_5aca11ce1f160', 'a:10:{s:3:"key";s:19:"field_5aca11ce1f160";s:5:"label";s:22:"Xuất hiện ở home";s:4:"name";s:12:"visible_home";s:4:"type";s:10:"true_false";s:12:"instructions";s:97:"Nếu chọn Yes thì sẽ hiện ở nội dung trang home.\r\nNếu chọn No thì không hiện.";s:8:"required";s:1:"0";s:7:"message";s:0:"";s:13:"default_value";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(175, 58, 'rule', 'a:5:{s:5:"param";s:11:"ef_taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:3:"all";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(176, 58, 'position', 'normal'),
(177, 58, 'layout', 'no_box'),
(178, 58, 'hide_on_screen', ''),
(179, 58, '_edit_lock', '1523192336:1'),
(180, 60, 'layout', 'description'),
(181, 60, '_edit_last', '1'),
(182, 60, '_edit_lock', '1523196517:1'),
(183, 60, 'layout', 'description'),
(184, 63, '_edit_last', '1'),
(185, 63, 'field_5aca22a2a5ea1', 'a:13:{s:3:"key";s:19:"field_5aca22a2a5ea1";s:5:"label";s:8:"Mô tả";s:4:"name";s:11:"description";s:4:"type";s:8:"textarea";s:12:"instructions";s:27:"Phần mô tả bài viết";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:26:"Viết mô tả vào đây";s:9:"maxlength";s:3:"300";s:4:"rows";s:1:"3";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(187, 63, 'position', 'normal'),
(188, 63, 'layout', 'no_box'),
(189, 63, 'hide_on_screen', ''),
(190, 63, '_edit_lock', '1523197266:1'),
(191, 64, '_edit_last', '1'),
(192, 64, '_edit_lock', '1523351188:1'),
(193, 65, '_wp_attached_file', '2018/04/77d3055028t3182l0.jpg'),
(194, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:29:"2018/04/77d3055028t3182l0.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"77d3055028t3182l0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"77d3055028t3182l0-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:29:"77d3055028t3182l0-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.5";s:6:"credit";s:0:"";s:6:"camera";s:15:"Canon EOS 1300D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1522159755";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"640";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(195, 65, '_wp_attachment_image_alt', 'bo sung them thu tuc hanh chinh dac biet trong linh vuc nguoi dan quan tam'),
(196, 64, '_thumbnail_id', '65'),
(199, 66, 'description', 'Chiều 27/3, Trưởng ban Pháp chế HĐND tỉnh Nguyễn Trọng Nhiệu chủ trì buổi làm việc với Trung tâm Hành chính công TX Hồng Lĩnh để nghe báo cáo về cơ cấu tổ chức và kết quả hoạt động từ khi thành lập đến nay.'),
(200, 66, '_description', 'field_5aca22a2a5ea1'),
(201, 64, 'description', 'Chiều 27/3, Trưởng ban Pháp chế HĐND tỉnh Nguyễn Trọng Nhiệu chủ trì buổi làm việc với Trung tâm Hành chính công TX Hồng Lĩnh để nghe báo cáo về cơ cấu tổ chức và kết quả hoạt động từ khi thành lập đến nay.'),
(202, 64, '_description', 'field_5aca22a2a5ea1'),
(205, 63, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(206, 60, '_wp_trash_meta_status', 'draft'),
(207, 60, '_wp_trash_meta_time', '1523197417'),
(208, 60, '_wp_desired_post_slug', ''),
(211, 67, 'description', 'Đặt chân tới xã Xuân Yên, nhiều người không khỏi ngỡ ngàng trước sự chuyển mình của vùng bãi ngang trước đây vốn nghèo nhất nhì huyện Nghi Xuân, Hà Tĩnh.'),
(212, 67, '_description', 'field_5aca22a2a5ea1'),
(213, 54, 'description', 'Đặt chân tới xã Xuân Yên, nhiều người không khỏi ngỡ ngàng trước sự chuyển mình của vùng bãi ngang trước đây vốn nghèo nhất nhì huyện Nghi Xuân, Hà Tĩnh.'),
(214, 54, '_description', 'field_5aca22a2a5ea1'),
(215, 86, '_edit_last', '1'),
(216, 86, 'field_5acb1d7030d96', 'a:14:{s:3:"key";s:19:"field_5acb1d7030d96";s:5:"label";s:20:"Người ký duyệt";s:4:"name";s:6:"signer";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(218, 86, 'position', 'normal'),
(219, 86, 'layout', 'no_box'),
(220, 86, 'hide_on_screen', ''),
(221, 86, '_edit_lock', '1523801999:1'),
(222, 87, '_edit_last', '1'),
(223, 87, '_edit_lock', '1523260784:1'),
(224, 87, 'signer', 'abc'),
(225, 87, '_signer', 'field_5acb1d7030d96'),
(226, 87, '__wpdm_files', 'a:1:{i:0;s:31:"danh-sach-cac-xa-kho-khan-1.xls";}'),
(227, 87, '__wpdm_version', ''),
(228, 87, '__wpdm_link_label', ''),
(229, 87, '__wpdm_package_size', '20.50 KB'),
(230, 87, '__wpdm_quota', ''),
(231, 87, '__wpdm_view_count', '2'),
(232, 87, '__wpdm_download_count', '1'),
(233, 87, '__wpdm_access', 'a:1:{i:0;s:5:"guest";}'),
(234, 87, '__wpdm_page_template', 'page-template-default.php'),
(235, 87, '__wpdm_terms_title', ''),
(236, 87, '__wpdm_terms_conditions', ''),
(237, 87, '__wpdm_terms_check_label', ''),
(238, 87, '__wpdm_password', ''),
(239, 87, '__wpdm_icon', ''),
(240, 87, '__wpdm_masterkey', '5acb1dcb17fcd'),
(241, 87, '__wpdm_package_size_b', '20992'),
(242, 87, '__wpdmx_user_download_count', 'a:1:{i:1;i:1;}'),
(243, 88, '_edit_last', '1'),
(244, 88, '_edit_lock', '1523262738:1'),
(245, 89, '_edit_last', '1'),
(246, 89, '_edit_lock', '1523263125:1'),
(249, 91, '_edit_last', '1'),
(250, 91, '_edit_lock', '1523264577:1'),
(253, 92, 'description', 'tegege'),
(254, 92, '_description', 'field_5aca22a2a5ea1'),
(255, 91, 'description', 'tegege'),
(256, 91, '_description', 'field_5aca22a2a5ea1'),
(387, 86, 'field_5acb4d8ca5107', 'a:10:{s:3:"key";s:19:"field_5acb4d8ca5107";s:5:"label";s:11:"File upload";s:4:"name";s:11:"file_upload";s:4:"type";s:4:"file";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(389, 153, '_wp_attached_file', '2018/04/828-ubnd-tinh-qd-ve-viec-chap-thuan-va-giao-bo-sung-do-dau-thuc-hien-chuong-trinh-mtqg-xay-dung-nong-thon-moi-giai-1.pdf'),
(497, 175, '_edit_last', '1'),
(498, 175, '_edit_lock', '1523276700:1'),
(499, 176, 'signer', 'Đặng Ngọc Sơn'),
(500, 176, '_signer', 'field_5acb1d7030d96'),
(501, 176, 'file_upload', '153'),
(502, 176, '_file_upload', 'field_5acb4d8ca5107'),
(503, 175, 'signer', 'Đặng Ngọc Sơn'),
(504, 175, '_signer', 'field_5acb1d7030d96'),
(505, 175, 'file_upload', '153'),
(506, 175, '_file_upload', 'field_5acb4d8ca5107'),
(507, 177, 'signer', 'Đặng Ngọc Sơn'),
(508, 177, '_signer', 'field_5acb1d7030d96'),
(509, 177, 'file_upload', '153'),
(510, 177, '_file_upload', 'field_5acb4d8ca5107'),
(511, 175, 'post_views_count', '17'),
(512, 175, 'post_abc', '4'),
(513, 175, 'post_count_download', '2'),
(514, 64, 'post_views_count', '2'),
(515, 64, 'post_count_download', '0'),
(516, 178, '_menu_item_type', 'custom'),
(517, 178, '_menu_item_menu_item_parent', '0'),
(518, 178, '_menu_item_object_id', '178'),
(519, 178, '_menu_item_object', 'custom'),
(520, 178, '_menu_item_target', ''),
(521, 178, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(522, 178, '_menu_item_xfn', ''),
(523, 178, '_menu_item_url', 'http://dev5.local/'),
(524, 178, '_menu_item_orphaned', '1523344633'),
(525, 64, 'ratings_users', '3'),
(526, 64, 'ratings_score', '9'),
(527, 64, 'ratings_average', '3'),
(530, 64, '_at_widget', '1'),
(531, 179, '_edit_last', '1'),
(532, 179, '_edit_lock', '1523362240:1'),
(533, 180, '_wp_attached_file', '2018/04/77d6121625t1758l0.jpg'),
(534, 180, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:29:"2018/04/77d6121625t1758l0.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"77d6121625t1758l0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"77d6121625t1758l0-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:29:"77d6121625t1758l0-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 60D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1520066208";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(535, 179, '_thumbnail_id', '180'),
(538, 179, 'ratings_users', '0'),
(539, 179, 'ratings_score', '0'),
(540, 179, 'ratings_average', '0'),
(541, 181, 'description', 'Sáng 3/3, tại xã Thạch Lưu, huyện Thạch Hà tổ chức sơ kết 3 tháng triển khai khung kế hoạch và phát động ra quân 60 ngày cao điểm sau gieo trồng vụ xuân năm 2018. Bí thư Tỉnh ủy Lê Đình Sơn và Phó Chủ tịch HĐND tỉnh Nguyễn Thị Nữ Y cùng dự.'),
(542, 181, '_description', 'field_5aca22a2a5ea1'),
(543, 179, '_at_widget', '1'),
(544, 179, 'description', 'Sáng 3/3, tại xã Thạch Lưu, huyện Thạch Hà tổ chức sơ kết 3 tháng triển khai khung kế hoạch và phát động ra quân 60 ngày cao điểm sau gieo trồng vụ xuân năm 2018. Bí thư Tỉnh ủy Lê Đình Sơn và Phó Chủ tịch HĐND tỉnh Nguyễn Thị Nữ Y cùng dự.'),
(545, 179, '_description', 'field_5aca22a2a5ea1'),
(546, 183, '_edit_last', '1'),
(547, 183, '_edit_lock', '1523454164:1'),
(548, 183, 'ratings_users', '0'),
(549, 183, 'ratings_score', '0'),
(550, 183, 'ratings_average', '0'),
(551, 183, '_at_widget', '0'),
(552, 183, '_wp_page_template', 'page-print.php'),
(553, 185, '_edit_last', '1'),
(554, 185, '_edit_lock', '1523534060:1'),
(555, 185, '_wp_page_template', 'page-savefile.php'),
(556, 185, 'ratings_users', '0'),
(557, 185, 'ratings_score', '0'),
(558, 185, 'ratings_average', '0'),
(559, 185, '_at_widget', '1'),
(560, 35, 'ratings_users', '1'),
(561, 35, 'ratings_score', '4'),
(562, 35, 'ratings_average', '4'),
(565, 47, 'ratings_users', '0'),
(566, 47, 'ratings_score', '0'),
(567, 47, 'ratings_average', '0'),
(568, 187, 'description', 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Donec sollicitudin molestie malesuada. Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvi'),
(569, 187, '_description', 'field_5aca22a2a5ea1'),
(570, 47, '_at_widget', '1'),
(571, 47, 'description', 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus. Donec sollicitudin molestie malesuada. Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvi'),
(572, 47, '_description', 'field_5aca22a2a5ea1'),
(573, 188, '_edit_last', '1'),
(574, 188, '_edit_lock', '1523514956:1'),
(577, 188, 'ratings_users', '0'),
(578, 188, 'ratings_score', '0'),
(579, 188, 'ratings_average', '0'),
(580, 189, 'description', 'Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur arcu erat'),
(581, 189, '_description', 'field_5aca22a2a5ea1'),
(582, 188, '_at_widget', '1'),
(583, 188, 'description', 'Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur arcu erat'),
(584, 188, '_description', 'field_5aca22a2a5ea1'),
(585, 190, '_edit_last', '1'),
(586, 190, '_edit_lock', '1523514996:1'),
(589, 190, 'ratings_users', '0'),
(590, 190, 'ratings_score', '0'),
(591, 190, 'ratings_average', '0'),
(592, 191, 'description', 'Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed s'),
(593, 191, '_description', 'field_5aca22a2a5ea1'),
(594, 190, '_at_widget', '1'),
(595, 190, 'description', 'Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed s'),
(596, 190, '_description', 'field_5aca22a2a5ea1'),
(597, 192, '_edit_last', '1'),
(598, 192, '_edit_lock', '1523515027:1'),
(601, 192, 'ratings_users', '0'),
(602, 192, 'ratings_score', '0'),
(603, 192, 'ratings_average', '0'),
(604, 193, 'description', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim.'),
(605, 193, '_description', 'field_5aca22a2a5ea1'),
(606, 192, '_at_widget', '1'),
(607, 192, 'description', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim.'),
(608, 192, '_description', 'field_5aca22a2a5ea1'),
(609, 194, '_edit_last', '1'),
(610, 194, '_edit_lock', '1523515954:1'),
(613, 194, 'ratings_users', '0'),
(614, 194, 'ratings_score', '0'),
(615, 194, 'ratings_average', '0'),
(616, 195, 'description', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.'),
(617, 195, '_description', 'field_5aca22a2a5ea1'),
(618, 194, '_at_widget', '1'),
(619, 194, 'description', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.'),
(620, 194, '_description', 'field_5aca22a2a5ea1'),
(621, 9, '_wp_page_template', 'page-laws.php'),
(622, 9, 'ratings_users', '0'),
(623, 9, 'ratings_score', '0'),
(624, 9, 'ratings_average', '0'),
(625, 9, '_at_widget', '1'),
(627, 86, '_at_widget', '1'),
(628, 201, '_edit_last', '1'),
(629, 201, '_edit_lock', '1523632497:1'),
(630, 202, 'signer', 'Võ Kim Cự'),
(631, 202, '_signer', 'field_5acb1d7030d96'),
(632, 202, 'file_upload', '153'),
(633, 202, '_file_upload', 'field_5acb4d8ca5107'),
(634, 201, '_at_widget', '1'),
(635, 201, 'signer', 'Võ Kim Cự'),
(636, 201, '_signer', 'field_5acb1d7030d96'),
(637, 201, 'file_upload', '153'),
(638, 201, '_file_upload', 'field_5acb4d8ca5107'),
(639, 203, '_edit_last', '1'),
(640, 203, '_edit_lock', '1523845269:1'),
(643, 203, 'ratings_users', '0'),
(644, 203, 'ratings_score', '0'),
(645, 203, 'ratings_average', '0'),
(646, 204, 'description', 'Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuad'),
(647, 204, '_description', 'field_5aca22a2a5ea1'),
(648, 203, '_at_widget', '1'),
(649, 203, 'description', 'Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuad'),
(650, 203, '_description', 'field_5aca22a2a5ea1'),
(651, 201, 'post_count_download', '1'),
(652, 205, '_edit_last', '1'),
(653, 205, '_edit_lock', '1523674381:1'),
(654, 206, '_wp_attached_file', '2018/04/1318-thanh-lap-ban-chi-dao-thuc-hien-nghi-quyet-26.pdf'),
(655, 207, 'signer', 'Nguyễn Văn An'),
(656, 207, '_signer', 'field_5acb1d7030d96'),
(657, 207, 'file_upload', '206'),
(658, 207, '_file_upload', 'field_5acb4d8ca5107'),
(659, 205, '_at_widget', '1'),
(660, 205, 'signer', 'Nguyễn Văn An'),
(661, 205, '_signer', 'field_5acb1d7030d96'),
(662, 205, 'file_upload', '206'),
(663, 205, '_file_upload', 'field_5acb4d8ca5107'),
(664, 205, 'post_count_download', '0'),
(665, 208, '_edit_last', '1'),
(666, 208, '_edit_lock', '1523674772:1'),
(667, 209, '_wp_attached_file', '2018/04/thong-tu-13-quy-dinh-viec-lap-tham-dinh-phe-duyet-quy-hoach-xay-dung-xa-nong-thon-moi.doc'),
(668, 210, 'signer', 'Lê Văn Bờm'),
(669, 210, '_signer', 'field_5acb1d7030d96'),
(670, 210, 'file_upload', '209'),
(671, 210, '_file_upload', 'field_5acb4d8ca5107'),
(672, 208, '_at_widget', '1'),
(673, 208, 'signer', 'Lê Văn Bờm'),
(674, 208, '_signer', 'field_5acb1d7030d96'),
(675, 208, 'file_upload', '209'),
(676, 208, '_file_upload', 'field_5acb4d8ca5107'),
(677, 208, 'post_count_download', '0'),
(678, 211, '_edit_last', '1'),
(679, 211, '_edit_lock', '1523675368:1'),
(680, 212, '_wp_attached_file', '2018/04/quyet-dinh1.docx'),
(681, 213, 'signer', 'Lê Thị Hùng'),
(682, 213, '_signer', 'field_5acb1d7030d96'),
(683, 213, 'file_upload', '212'),
(684, 213, '_file_upload', 'field_5acb4d8ca5107'),
(685, 211, '_at_widget', '1'),
(686, 211, 'signer', 'Lê Thị Hùng'),
(687, 211, '_signer', 'field_5acb1d7030d96'),
(688, 211, 'file_upload', '212'),
(689, 211, '_file_upload', 'field_5acb4d8ca5107'),
(690, 211, 'post_count_download', '1'),
(691, 214, '_edit_last', '1'),
(692, 214, '_edit_lock', '1523862831:1'),
(693, 215, '_wp_attached_file', '2018/04/aa.txt'),
(694, 216, 'signer', 'Trần văn thư'),
(695, 216, '_signer', 'field_5acb1d7030d96'),
(696, 216, 'file_upload', '215'),
(697, 216, '_file_upload', 'field_5acb4d8ca5107'),
(698, 214, '_at_widget', '1'),
(699, 214, 'signer', 'Trần văn thư'),
(700, 214, '_signer', 'field_5acb1d7030d96'),
(701, 214, 'file_upload', '215'),
(702, 214, '_file_upload', 'field_5acb4d8ca5107'),
(703, 214, 'post_count_download', '0'),
(704, 17, '_wp_page_template', 'testsubmit.php'),
(705, 17, 'ratings_users', '0'),
(706, 17, 'ratings_score', '0'),
(707, 17, 'ratings_average', '0'),
(708, 17, '_at_widget', '1'),
(709, 221, '_edit_last', '1'),
(710, 221, '_edit_lock', '1523792711:1'),
(711, 222, 'signer', 'fe fef è è'),
(712, 222, '_signer', 'field_5acb1d7030d96'),
(713, 222, 'file_upload', ''),
(714, 222, '_file_upload', 'field_5acb4d8ca5107'),
(715, 221, '_at_widget', '1'),
(716, 221, 'signer', 'fe fef è è'),
(717, 221, '_signer', 'field_5acb1d7030d96'),
(718, 221, 'file_upload', ''),
(719, 221, '_file_upload', 'field_5acb4d8ca5107'),
(720, 223, 'signer', 'Trần văn thư'),
(721, 223, '_signer', 'field_5acb1d7030d96'),
(722, 223, 'file_upload', '215'),
(723, 223, '_file_upload', 'field_5acb4d8ca5107'),
(724, 86, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"laws";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(725, 221, 'post_count_download', '1'),
(726, 214, 'post_views_count', '7'),
(727, 211, 'post_views_count', '3'),
(728, 224, '_edit_last', '1'),
(729, 224, '_edit_lock', '1523806351:1'),
(730, 225, '_wp_attached_file', '2018/04/013c846b776f9931c07e-1.jpg'),
(731, 225, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:533;s:4:"file";s:34:"2018/04/013c846b776f9931c07e-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"013c846b776f9931c07e-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"013c846b776f9931c07e-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"013c846b776f9931c07e-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:34:"013c846b776f9931c07e-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 600D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1523003140";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"56";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}s:14:"resized_images";a:3:{i:0;s:7:"640x426";i:1;s:7:"800x533";i:2;s:7:"300x200";}}}'),
(732, 225, '_eg_has_gallery', 'a:1:{i:0;i:224;}'),
(733, 224, '_eg_in_gallery', 'a:6:{i:0;i:225;i:1;i:226;i:2;i:232;i:3;i:233;i:4;i:234;i:5;i:235;}'),
(734, 224, '_eg_gallery_data', 'a:3:{s:2:"id";i:224;s:7:"gallery";a:6:{i:225;a:7:{s:6:"status";s:6:"active";s:3:"src";s:78:"http://nongthon-wp.local/wp-content/uploads/2018/04/013c846b776f9931c07e-1.jpg";s:5:"title";s:4:"img1";s:4:"link";s:78:"http://nongthon-wp.local/wp-content/uploads/2018/04/013c846b776f9931c07e-1.jpg";s:3:"alt";s:4:"fefe";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:226;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-1.jpg";s:5:"title";s:5:"ffff2";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-1.jpg";s:3:"alt";s:4:"fff2";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:232;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0114923t8813l2-1.jpg";s:5:"title";s:17:"77d0114923t8813l2";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0114923t8813l2-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:233;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d3055028t3182l0-1.jpg";s:5:"title";s:17:"77d3055028t3182l0";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d3055028t3182l0-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:234;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d5124827t5546l3-1.jpg";s:5:"title";s:17:"77d5124827t5546l3";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d5124827t5546l3-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:235;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d6121625t1758l0-1.jpg";s:5:"title";s:17:"77d6121625t1758l0";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d6121625t1758l0-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}}s:6:"config";a:21:{s:4:"type";s:7:"default";s:7:"columns";s:1:"4";s:13:"gallery_theme";s:4:"base";s:23:"justified_gallery_theme";s:6:"normal";s:6:"gutter";i:10;s:6:"margin";i:10;s:10:"image_size";s:7:"default";s:10:"crop_width";i:640;s:11:"crop_height";i:480;s:4:"crop";i:0;s:12:"lazy_loading";i:1;s:18:"lazy_loading_delay";i:500;s:20:"justified_row_height";i:150;s:16:"lightbox_enabled";i:1;s:14:"lightbox_theme";s:4:"base";s:19:"lightbox_image_size";s:7:"default";s:13:"title_display";s:7:"outside";s:7:"classes";a:1:{i:0;s:0:"";}s:3:"rtl";i:0;s:5:"title";s:6:"album1";s:4:"slug";s:6:"album1";}}'),
(735, 226, '_wp_attached_file', '2018/04/77d0093609t7970l0-1.jpg'),
(736, 226, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:31:"2018/04/77d0093609t7970l0-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"77d0093609t7970l0-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"77d0093609t7970l0-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:31:"77d0093609t7970l0-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:2:"11";s:6:"credit";s:0:"";s:6:"camera";s:9:"NIKON D90";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1522946680";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"32";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}s:14:"resized_images";a:3:{i:0;s:7:"600x400";i:1;s:7:"600x400";i:2;s:7:"300x200";}}}'),
(737, 226, '_eg_has_gallery', 'a:1:{i:0;i:224;}'),
(738, 224, '_eg_just_published', '1'),
(739, 11, '_wp_page_template', 'page-album.php'),
(743, 11, '_at_widget', '1'),
(744, 224, '_eg_in_posts', 'a:1:{i:11;i:11;}'),
(745, 232, '_wp_attached_file', '2018/04/77d0114923t8813l2-1.jpg'),
(746, 232, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:31:"2018/04/77d0114923t8813l2-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"77d0114923t8813l2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"77d0114923t8813l2-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:31:"77d0114923t8813l2-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 6D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1523175318";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"32";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:18:"0.0055555555555556";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}s:14:"resized_images";a:3:{i:0;s:7:"600x400";i:1;s:7:"600x400";i:2;s:7:"300x200";}}}'),
(747, 233, '_wp_attached_file', '2018/04/77d3055028t3182l0-1.jpg'),
(748, 233, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:31:"2018/04/77d3055028t3182l0-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"77d3055028t3182l0-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"77d3055028t3182l0-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:31:"77d3055028t3182l0-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:3:"3.5";s:6:"credit";s:0:"";s:6:"camera";s:15:"Canon EOS 1300D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1522159755";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"640";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}s:14:"resized_images";a:3:{i:0;s:7:"600x400";i:1;s:7:"600x400";i:2;s:7:"300x200";}}}'),
(749, 232, '_eg_has_gallery', 'a:1:{i:0;i:224;}'),
(750, 233, '_eg_has_gallery', 'a:1:{i:0;i:224;}'),
(751, 234, '_wp_attached_file', '2018/04/77d5124827t5546l3-1.jpg'),
(752, 234, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:31:"2018/04/77d5124827t5546l3-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"77d5124827t5546l3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"77d5124827t5546l3-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:31:"77d5124827t5546l3-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 600D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1523006098";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"29";s:3:"iso";s:4:"1000";s:13:"shutter_speed";s:5:"0.025";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}s:14:"resized_images";a:3:{i:0;s:7:"600x400";i:1;s:7:"600x400";i:2;s:7:"300x200";}}}'),
(753, 235, '_wp_attached_file', '2018/04/77d6121625t1758l0-1.jpg'),
(754, 235, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:31:"2018/04/77d6121625t1758l0-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"77d6121625t1758l0-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"77d6121625t1758l0-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:31:"77d6121625t1758l0-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 60D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1520066208";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}s:14:"resized_images";a:3:{i:0;s:7:"600x400";i:1;s:7:"600x400";i:2;s:7:"300x200";}}}'),
(755, 234, '_eg_has_gallery', 'a:1:{i:0;i:224;}'),
(756, 235, '_eg_has_gallery', 'a:1:{i:0;i:224;}'),
(757, 11, 'post_views_count', '56'),
(758, 236, '_edit_last', '1'),
(759, 236, 'field_5ad36b60de561', 'a:14:{s:3:"key";s:19:"field_5ad36b60de561";s:5:"label";s:8:"ID album";s:4:"name";s:8:"id_album";s:4:"type";s:4:"text";s:12:"instructions";s:49:"Điền vào ID của album mà bạn chèn vào.";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(760, 236, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(761, 236, 'position', 'normal'),
(762, 236, 'layout', 'no_box'),
(763, 236, 'hide_on_screen', ''),
(764, 236, '_at_widget', '0'),
(765, 236, '_edit_lock', '1523804983:1'),
(766, 236, '_wp_trash_meta_status', 'publish'),
(767, 236, '_wp_trash_meta_time', '1523805134'),
(768, 236, '_wp_desired_post_slug', 'acf_field-in-album'),
(769, 11, 'album_id', '1'),
(770, 237, 'title', 'NextGEN Basic Thumbnails'),
(771, 237, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_gallery/static/thumb_preview.jpg'),
(772, 237, 'default_source', 'galleries'),
(773, 237, 'view_order', '10000'),
(774, 237, 'name', 'photocrati-nextgen_basic_thumbnails'),
(775, 237, 'installed_at_version', '2.2.54'),
(776, 237, 'hidden_from_ui', ''),
(777, 237, 'hidden_from_igw', ''),
(778, 237, '__defaults_set', '1'),
(779, 237, 'filter', 'raw'),
(780, 237, 'entity_types', 'WyJpbWFnZSJd'),
(781, 237, 'aliases', 'WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0='),
(782, 237, 'id_field', 'ID'),
(783, 237, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJpbWFnZXNfcGVyX3BhZ2UiOiIyMCIsIm51bWJlcl9vZl9jb2x1bW5zIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjowLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjoxLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfY3JvcCI6MSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(784, 238, 'title', 'NextGEN Basic Slideshow'),
(785, 238, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_gallery/static/slideshow_preview.jpg'),
(786, 238, 'default_source', 'galleries'),
(787, 238, 'view_order', '10010'),
(788, 238, 'name', 'photocrati-nextgen_basic_slideshow'),
(789, 238, 'installed_at_version', '2.2.54'),
(790, 238, 'hidden_from_ui', ''),
(791, 238, 'hidden_from_igw', ''),
(792, 238, '__defaults_set', '1'),
(793, 238, 'filter', 'raw'),
(794, 238, 'entity_types', 'WyJpbWFnZSJd'),
(795, 238, 'aliases', 'WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJd'),
(796, 238, 'id_field', 'ID'),
(797, 238, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoxMCwiY3ljbGVfZWZmZWN0IjoiZmFkZSIsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwic2hvd190aHVtYm5haWxfbGluayI6MSwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltTaG93IHRodW1ibmFpbHNdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(798, 239, 'title', 'NextGEN Basic ImageBrowser'),
(799, 239, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_imagebrowser/static/preview.jpg'),
(800, 239, 'default_source', 'galleries'),
(801, 239, 'view_order', '10020'),
(802, 239, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(803, 239, 'installed_at_version', '2.2.54'),
(804, 239, 'hidden_from_ui', ''),
(805, 239, 'hidden_from_igw', ''),
(806, 239, '__defaults_set', '1'),
(807, 239, 'filter', 'raw'),
(808, 239, 'entity_types', 'WyJpbWFnZSJd'),
(809, 239, 'aliases', 'WyJiYXNpY19pbWFnZWJyb3dzZXIiLCJpbWFnZWJyb3dzZXIiLCJuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciJd'),
(810, 239, 'id_field', 'ID'),
(811, 239, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0='),
(812, 240, 'title', 'NextGEN Basic SinglePic'),
(813, 240, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_singlepic/static/preview.gif'),
(814, 240, 'default_source', 'galleries'),
(815, 240, 'view_order', '10060'),
(816, 240, 'hidden_from_ui', '1'),
(817, 240, 'hidden_from_igw', '1'),
(818, 240, 'name', 'photocrati-nextgen_basic_singlepic'),
(819, 240, 'installed_at_version', '2.2.54'),
(820, 240, '__defaults_set', '1'),
(821, 240, 'filter', 'raw'),
(822, 240, 'entity_types', 'WyJpbWFnZSJd'),
(823, 240, 'aliases', 'WyJiYXNpY19zaW5nbGVwaWMiLCJzaW5nbGVwaWMiLCJuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyJd'),
(824, 240, 'id_field', 'ID'),
(825, 240, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(826, 241, 'title', 'NextGEN Basic TagCloud'),
(827, 241, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_tagcloud/static/preview.gif'),
(828, 241, 'default_source', 'tags'),
(829, 241, 'view_order', '10100'),
(830, 241, 'name', 'photocrati-nextgen_basic_tagcloud'),
(831, 241, 'installed_at_version', '2.2.54'),
(832, 241, 'hidden_from_ui', ''),
(833, 241, 'hidden_from_igw', ''),
(834, 241, '__defaults_set', '1'),
(835, 241, 'filter', 'raw'),
(836, 241, 'entity_types', 'WyJpbWFnZSJd'),
(837, 241, 'aliases', 'WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJd'),
(838, 241, 'id_field', 'ID');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(839, 241, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(840, 242, 'title', 'NextGEN Basic Compact Album'),
(841, 242, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_album/static/compact_preview.jpg'),
(842, 242, 'default_source', 'albums'),
(843, 242, 'view_order', '10200'),
(844, 242, 'name', 'photocrati-nextgen_basic_compact_album'),
(845, 242, 'installed_at_version', '2.2.54'),
(846, 242, 'hidden_from_ui', ''),
(847, 242, 'hidden_from_igw', ''),
(848, 242, '__defaults_set', '1'),
(849, 242, 'filter', 'raw'),
(850, 242, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(851, 242, 'aliases', 'WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0='),
(852, 242, 'id_field', 'ID'),
(853, 242, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0='),
(854, 243, 'title', 'NextGEN Basic Extended Album'),
(855, 243, 'preview_image_relpath', '/nextgen-gallery/products/photocrati_nextgen/modules/nextgen_basic_album/static/extended_preview.jpg'),
(856, 243, 'default_source', 'albums'),
(857, 243, 'view_order', '10210'),
(858, 243, 'name', 'photocrati-nextgen_basic_extended_album'),
(859, 243, 'installed_at_version', '2.2.54'),
(860, 243, 'hidden_from_ui', ''),
(861, 243, 'hidden_from_igw', ''),
(862, 243, '__defaults_set', '1'),
(863, 243, 'filter', 'raw'),
(864, 243, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(865, 243, 'aliases', 'WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJd'),
(866, 243, 'id_field', 'ID'),
(867, 243, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfY3JvcCI6dHJ1ZSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0='),
(868, 244, '__defaults_set', '1'),
(869, 244, 'filter', 'raw'),
(870, 244, 'id_field', 'ID'),
(871, 245, '__defaults_set', '1'),
(872, 245, 'filter', 'raw'),
(873, 245, 'id_field', 'ID'),
(886, 248, '__defaults_set', '1'),
(887, 248, 'filter', 'raw'),
(888, 248, 'id_field', 'ID'),
(898, 250, '__defaults_set', '1'),
(899, 250, 'filter', 'raw'),
(900, 250, 'id_field', 'ID'),
(910, 252, '__defaults_set', '1'),
(911, 252, 'filter', 'raw'),
(912, 252, 'id_field', 'ID'),
(922, 254, '__defaults_set', '1'),
(923, 254, 'filter', 'raw'),
(924, 254, 'id_field', 'ID'),
(934, 256, '__defaults_set', '1'),
(935, 256, 'filter', 'raw'),
(936, 256, 'id_field', 'ID'),
(946, 258, '__defaults_set', '1'),
(947, 258, 'filter', 'raw'),
(948, 258, 'id_field', 'ID'),
(1009, 11, 'ratings_users', '0'),
(1010, 11, 'ratings_score', '0'),
(1011, 11, 'ratings_average', '0'),
(1012, 247, '__defaults_set', '1'),
(1013, 247, 'filter', 'raw'),
(1014, 247, 'id_field', 'ID'),
(1015, 246, '__defaults_set', '1'),
(1016, 246, 'filter', 'raw'),
(1017, 246, 'id_field', 'ID'),
(1018, 249, '__defaults_set', '1'),
(1019, 249, 'filter', 'raw'),
(1020, 249, 'id_field', 'ID'),
(1021, 251, '__defaults_set', '1'),
(1022, 251, 'filter', 'raw'),
(1023, 251, 'id_field', 'ID'),
(1024, 253, '__defaults_set', '1'),
(1025, 253, 'filter', 'raw'),
(1026, 253, 'id_field', 'ID'),
(1027, 255, '__defaults_set', '1'),
(1028, 255, 'filter', 'raw'),
(1029, 255, 'id_field', 'ID'),
(1030, 257, '__defaults_set', '1'),
(1031, 257, 'filter', 'raw'),
(1032, 257, 'id_field', 'ID'),
(1033, 259, '__defaults_set', '1'),
(1034, 259, 'filter', 'raw'),
(1035, 259, 'id_field', 'ID'),
(1036, 263, '_edit_last', '1'),
(1037, 263, '_edit_lock', '1523871739:1'),
(1038, 264, '_edit_last', '1'),
(1039, 264, 'field_5ad44fc547669', 'a:13:{s:3:"key";s:19:"field_5ad44fc547669";s:5:"label";s:10:"Câu hỏi";s:4:"name";s:8:"question";s:4:"type";s:8:"textarea";s:12:"instructions";s:27:"Nhập câu hỏi ở đây";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"4";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(1040, 264, 'field_5ad450034766a', 'a:14:{s:3:"key";s:19:"field_5ad450034766a";s:5:"label";s:19:"Tên người hỏi";s:4:"name";s:12:"name_of_user";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(1041, 264, 'field_5ad4504c4766b', 'a:14:{s:3:"key";s:19:"field_5ad4504c4766b";s:5:"label";s:20:"Email người hỏi";s:4:"name";s:13:"email_of_user";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(1042, 264, 'field_5ad450744766c', 'a:14:{s:3:"key";s:19:"field_5ad450744766c";s:5:"label";s:20:"Số điện thoại";s:4:"name";s:12:"phone_number";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(1044, 264, 'position', 'normal'),
(1045, 264, 'layout', 'no_box'),
(1046, 264, 'hide_on_screen', ''),
(1047, 264, '_at_widget', '1'),
(1048, 264, '_edit_lock', '1523889442:1'),
(1049, 266, 'answer', 'grgrgrgrg'),
(1050, 266, '_answer', 'field_5ad44fc547669'),
(1051, 266, 'name_of_user', 'grgrgrg'),
(1052, 266, '_name_of_user', 'field_5ad450034766a'),
(1053, 266, 'email_of_user', 'grgrg@gmail.com'),
(1054, 266, '_email_of_user', 'field_5ad4504c4766b'),
(1055, 266, 'phone_number', '234234234'),
(1056, 266, '_phone_number', 'field_5ad450744766c'),
(1057, 263, '_at_widget', '1'),
(1058, 263, 'answer', 'grgrgrgrg\r\n<img class="alignnone size-medium wp-image-180" src="http://dev5.local/wp-content/uploads/2018/04/77d6121625t1758l0-300x200.jpg" alt="" width="300" height="200">'),
(1059, 263, '_answer', 'field_5ad44fc547669'),
(1060, 263, 'name_of_user', 'grgrgrg'),
(1061, 263, '_name_of_user', 'field_5ad450034766a'),
(1062, 263, 'email_of_user', 'grgrg@gmail.com'),
(1063, 263, '_email_of_user', 'field_5ad4504c4766b'),
(1064, 263, 'phone_number', '234234234'),
(1065, 263, '_phone_number', 'field_5ad450744766c'),
(1066, 13, '_wp_page_template', 'page-faq.php'),
(1067, 13, 'ratings_users', '0'),
(1068, 13, 'ratings_score', '0'),
(1069, 13, 'ratings_average', '0'),
(1070, 13, '_at_widget', '1'),
(1071, 13, 'post_views_count', '3'),
(1080, 268, 'answer', 'grgrgrgrg\r\n<img class="alignnone size-medium wp-image-180" src="http://dev5.local/wp-content/uploads/2018/04/77d6121625t1758l0-300x200.jpg" alt="" width="300" height="200">'),
(1081, 268, '_answer', 'field_5ad44fc547669'),
(1082, 268, 'name_of_user', 'grgrgrg'),
(1083, 268, '_name_of_user', 'field_5ad450034766a'),
(1084, 268, 'email_of_user', 'grgrg@gmail.com'),
(1085, 268, '_email_of_user', 'field_5ad4504c4766b'),
(1086, 268, 'phone_number', '234234234'),
(1087, 268, '_phone_number', 'field_5ad450744766c'),
(1088, 264, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:3:"faq";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(1089, 269, 'question', 'hỏi thế này là thế nào?'),
(1090, 269, '_question', 'field_5ad44fc547669'),
(1091, 269, 'name_of_user', 'grgrgrg'),
(1092, 269, '_name_of_user', 'field_5ad450034766a'),
(1093, 269, 'email_of_user', 'grgrg@gmail.com'),
(1094, 269, '_email_of_user', 'field_5ad4504c4766b'),
(1095, 269, 'phone_number', '234234234'),
(1096, 269, '_phone_number', 'field_5ad450744766c'),
(1097, 263, 'question', 'hỏi thế này là thế nào?'),
(1098, 263, '_question', 'field_5ad44fc547669'),
(1099, 271, 'question', 'hỏi thế này là thế nào?'),
(1100, 271, '_question', 'field_5ad44fc547669'),
(1101, 271, 'name_of_user', 'grgrgrg'),
(1102, 271, '_name_of_user', 'field_5ad450034766a'),
(1103, 271, 'email_of_user', 'grgrg@gmail.com'),
(1104, 271, '_email_of_user', 'field_5ad4504c4766b'),
(1105, 271, 'phone_number', '234234234'),
(1106, 271, '_phone_number', 'field_5ad450744766c'),
(1109, 273, '_edit_last', '1'),
(1110, 273, '_edit_lock', '1523872477:1'),
(1111, 273, '_wp_page_template', 'page-question.php'),
(1112, 273, 'ratings_users', '0'),
(1113, 273, 'ratings_score', '0'),
(1114, 273, 'ratings_average', '0'),
(1115, 273, '_at_widget', '1'),
(1119, 277, 'name_of_user', 'fewfwef'),
(1120, 277, 'email_of_user', 'ffewf@fff.ff'),
(1121, 277, 'phone_number', ''),
(1122, 277, 'question', 'fff\r\nfff'),
(1123, 278, 'name_of_user', ''),
(1124, 278, 'email_of_user', ''),
(1125, 278, 'phone_number', ''),
(1126, 278, 'question', ''),
(1127, 277, '_edit_lock', '1523889809:1'),
(1128, 279, 'name_of_user', 'fewfwef'),
(1129, 279, 'email_of_user', 'ffewf@fff.ff'),
(1130, 279, 'phone_number', '343424'),
(1131, 279, 'question', 'ưẻ\r\newrwer\r\nưẻwe'),
(1132, 280, 'name_of_user', ''),
(1133, 280, 'email_of_user', ''),
(1134, 280, 'phone_number', ''),
(1135, 280, 'question', ''),
(1136, 279, '_edit_lock', '1523890477:1'),
(1137, 281, 'name_of_user', 'áddas ád '),
(1138, 281, 'email_of_user', 'a@gmail.com'),
(1139, 281, 'phone_number', '324234'),
(1140, 281, 'question', 'sad ád ád ád\r\nád ad ád ád\r\nád ád ád ád'),
(1141, 281, '_edit_lock', '1523891217:1'),
(1142, 281, '_edit_last', '1'),
(1143, 282, 'question', 'sad ád ád ád\r\nád ad ád ád\r\nád ád ád ád'),
(1144, 282, '_question', 'field_5ad44fc547669'),
(1145, 282, 'name_of_user', 'áddas ád '),
(1146, 282, '_name_of_user', 'field_5ad450034766a'),
(1147, 282, 'email_of_user', 'a@gmail.com'),
(1148, 282, '_email_of_user', 'field_5ad4504c4766b'),
(1149, 282, 'phone_number', '324234'),
(1150, 282, '_phone_number', 'field_5ad450744766c'),
(1151, 281, '_at_widget', '1'),
(1152, 281, '_question', 'field_5ad44fc547669'),
(1153, 281, '_name_of_user', 'field_5ad450034766a'),
(1154, 281, '_email_of_user', 'field_5ad4504c4766b'),
(1155, 281, '_phone_number', 'field_5ad450744766c'),
(1156, 284, 'name_of_user', 'ret ert '),
(1157, 284, 'email_of_user', 'sss@sss.ss'),
(1158, 284, 'phone_number', '324'),
(1159, 284, 'question', 'ewrwer wer ewr tret\r\nret ert ert ert ert ert rêt r\r\ndfg dfg dfg dfg dfg dgf');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-05 04:23:45', '2018-04-05 04:23:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-08 08:51:47', '2018-04-08 08:51:47', '', 0, 'http://dev5.local/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-05 04:23:45', '2018-04-05 04:23:45', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://dev5.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-05 04:23:45', '2018-04-05 04:23:45', '', 0, 'http://dev5.local/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-04-05 09:48:04', '2018-04-05 09:48:04', 'test1', 'test1', '', 'publish', 'open', 'open', '', 'test1', '', '', '2018-04-08 08:51:22', '2018-04-08 08:51:22', '', 0, 'http://dev5.local/?p=4', 0, 'post', '', 0),
(5, 1, '2018-04-05 09:48:04', '2018-04-05 09:48:04', 'test1', 'test1', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-05 09:48:04', '2018-04-05 09:48:04', '', 4, 'http://dev5.local/uncategorized/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-04-05 14:37:26', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-05 14:37:26', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2018-04-05 14:40:18', '2018-04-05 14:40:18', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2018-04-05 14:40:18', '2018-04-05 14:40:18', '', 0, 'http://nongthon-wp.local/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-04-05 14:40:18', '2018-04-05 14:40:18', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-04-05 14:40:18', '2018-04-05 14:40:18', '', 7, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-04-05 14:40:38', '2018-04-05 14:40:38', '', 'Văn bản nông thôn mới', '', 'publish', 'closed', 'closed', '', 'van-ban-nong-thon-moi', '', '', '2018-04-12 20:49:52', '2018-04-12 13:49:52', '', 0, 'http://nongthon-wp.local/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-04-05 14:40:38', '2018-04-05 14:40:38', '', 'Văn bản nông thôn mới', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-04-05 14:40:38', '2018-04-05 14:40:38', '', 9, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-04-05 14:40:50', '2018-04-05 14:40:50', '[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="4" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="0" slideshow_link_text="[Show slideshow]" template="/media/sf_sources/nihongo_test/nongthon-wp/wp-content/plugins/nextgen-gallery/products/photocrati_nextgen/modules/ngglegacy/view/gallery-caption.php" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Thư viện ảnh', '', 'publish', 'closed', 'closed', '', 'thu-vien-anh', '', '', '2018-04-16 10:02:00', '2018-04-16 03:02:00', '', 0, 'http://nongthon-wp.local/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-04-05 14:40:50', '2018-04-05 14:40:50', '', 'Thư viện ảnh', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-05 14:40:50', '2018-04-05 14:40:50', '', 11, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-04-05 14:41:02', '2018-04-05 14:41:02', '', 'Hỏi đáp', '', 'publish', 'closed', 'closed', '', 'hoi-dap', '', '', '2018-04-16 14:57:45', '2018-04-16 07:57:45', '', 0, 'http://nongthon-wp.local/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-04-05 14:41:02', '2018-04-05 14:41:02', '', 'Hỏi đáp', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-04-05 14:41:02', '2018-04-05 14:41:02', '', 13, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-04-05 14:41:12', '2018-04-05 14:41:12', '', 'Video', '', 'publish', 'closed', 'closed', '', 'video', '', '', '2018-04-05 14:41:12', '2018-04-05 14:41:12', '', 0, 'http://nongthon-wp.local/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-04-05 14:41:12', '2018-04-05 14:41:12', '', 'Video', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-04-05 14:41:12', '2018-04-05 14:41:12', '', 15, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-04-05 14:41:21', '2018-04-05 14:41:21', '', 'Hòm thư', '', 'publish', 'closed', 'closed', '', 'hom-thu', '', '', '2018-04-15 15:54:40', '2018-04-15 08:54:40', '', 0, 'http://nongthon-wp.local/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-04-05 14:41:21', '2018-04-05 14:41:21', '', 'Hòm thư', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-04-05 14:41:21', '2018-04-05 14:41:21', '', 17, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-04-05 14:42:29', '2018-04-05 14:42:29', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2018-04-10 07:22:21', '2018-04-10 07:22:21', '', 0, 'http://nongthon-wp.local/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-04-05 14:42:29', '2018-04-05 14:42:29', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-04-10 07:22:21', '2018-04-10 07:22:21', '', 0, 'http://nongthon-wp.local/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2018-04-05 14:42:30', '2018-04-05 14:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-04-10 07:22:21', '2018-04-10 07:22:21', '', 0, 'http://nongthon-wp.local/?p=21', 5, 'nav_menu_item', '', 0),
(22, 1, '2018-04-05 14:42:30', '2018-04-05 14:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-04-10 07:22:21', '2018-04-10 07:22:21', '', 0, 'http://nongthon-wp.local/?p=22', 7, 'nav_menu_item', '', 0),
(23, 1, '2018-04-05 14:42:30', '2018-04-05 14:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-04-10 07:22:21', '2018-04-10 07:22:21', '', 0, 'http://nongthon-wp.local/?p=23', 4, 'nav_menu_item', '', 0),
(24, 1, '2018-04-05 14:42:30', '2018-04-05 14:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-04-10 07:22:21', '2018-04-10 07:22:21', '', 0, 'http://nongthon-wp.local/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2018-04-05 14:42:30', '2018-04-05 14:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-04-10 07:22:21', '2018-04-10 07:22:21', '', 0, 'http://nongthon-wp.local/?p=25', 6, 'nav_menu_item', '', 0),
(26, 1, '2018-04-05 15:05:33', '2018-04-05 15:05:33', '{\n    "twentyseventeen::nav_menu_locations[top]": {\n        "value": 10,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-05 15:05:33"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0aa520a4-cfd5-4358-9f1c-aaf23fd0d21b', '', '', '2018-04-05 15:05:33', '2018-04-05 15:05:33', '', 0, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/0aa520a4-cfd5-4358-9f1c-aaf23fd0d21b/', 0, 'customize_changeset', '', 0),
(27, 1, '2018-04-06 08:25:27', '0000-00-00 00:00:00', '', 'homepage', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-06 08:25:27', '2018-04-06 08:25:27', '', 0, 'http://dev5.local/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-04-06 08:25:46', '2018-04-06 08:25:46', '', 'homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2018-04-06 08:25:46', '2018-04-06 08:25:46', '', 0, 'http://dev5.local/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-04-06 08:25:46', '2018-04-06 08:25:46', '', 'homepage', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-04-06 08:25:46', '2018-04-06 08:25:46', '', 28, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-04-06 08:26:13', '2018-04-06 08:26:13', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-06 08:26:13"\n    },\n    "page_on_front": {\n        "value": "28",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-04-06 08:26:13"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eff96dc7-a331-48d9-8057-d7d9d163f13e', '', '', '2018-04-06 08:26:13', '2018-04-06 08:26:13', '', 0, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/eff96dc7-a331-48d9-8057-d7d9d163f13e/', 0, 'customize_changeset', '', 0),
(31, 1, '2018-04-06 10:04:15', '2018-04-06 10:04:15', '', 'tvcs_1', '', 'inherit', 'open', 'closed', '', 'tvcs_1', '', '', '2018-04-08 08:24:48', '2018-04-08 08:24:48', '', 35, 'http://dev5.local/wp-content/uploads/2018/04/tvcs_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-04-06 10:07:43', '2018-04-06 10:07:43', '', 'dbtt', '', 'inherit', 'open', 'closed', '', 'dbtt', '', '', '2018-04-08 08:23:42', '2018-04-08 08:23:42', '', 35, 'http://dev5.local/wp-content/uploads/2018/04/dbtt.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-04-07 10:58:14', '2018-04-07 10:58:14', '', 'ntm_video_1', '', 'inherit', 'open', 'closed', '', 'ntm_video_1', '', '', '2018-04-07 10:58:14', '2018-04-07 10:58:14', '', 0, 'http://nongthon-wp.local/wp-content/uploads/2018/04/ntm_video_1.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-04-07 11:00:47', '2018-04-07 11:00:47', '', 'i-office_3', '', 'inherit', 'open', 'closed', '', 'i-office_3', '', '', '2018-04-07 11:00:47', '2018-04-07 11:00:47', '', 0, 'http://nongthon-wp.local/wp-content/uploads/2018/04/i-office_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-04-08 08:24:58', '2018-04-08 08:24:58', 'Tham gia chung kết hội thi có 15 khu dân cư NTM kiểu mẫu (15 đội) có số điểm cao nhất sau vào vòng sơ khảo và vòng chấm thi trực tiếp.\r\n\r\nCác đội sẽ trải qua 3 phần thi trực tiếp, gồm: Tuyên truyền (bằng hình thức sân khấu hóa tuyên truyền về xây dựng nông thôn mới, khu dân cư nông thôn mới kiểu mẫu); phóng sự về xây dựng khu dân cư nông thôn mới kiểu mẫu; kế hoạch nâng cấp khu dân cư nông thôn mới kiểu mẫu thời gian tới (bằng hùng biện).\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/dbtt.jpg" alt="" width="219" height="154" class="alignnone size-full wp-image-32" />\r\nchung ket hoi thi khu dan cu ntm kieu mau vuon mau lan thu nhat\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/tvcs_1.jpg" alt="" width="202" height="120" class="alignnone size-full wp-image-31" />\r\nCác thành viên ban giám khảo\r\n\r\nĐiểm chung cuộc sẽ là điểm bình quân của 3 phần thi trực tiếp nêu trên và số điểm đạt được chấm thi thực tế (nhân hệ số 2).\r\n\r\nDự kiến, lễ tổng kết và trao giải cuộc thi sẽ được tổ chức vào ngày 14/4/2018.\r\n\r\nThêm một số hình ảnh tại Hội thi:\r\n\r\nchung ket hoi thi khu dan cu ntm kieu mau vuon mau lan thu nhat\r\n\r\nchung ket hoi thi khu dan cu ntm kieu mau vuon mau lan thu nhat\r\n\r\nVăn nghệ chào mừng hội thi của đội văn nghệ 2 huyện Hương Sơn, Đức Thọ', 'Chung kết Hội thi Khu dân cư NTM kiểu mẫu, vườn mẫu lần thứ nhất', '', 'publish', 'open', 'open', '', 'chung-ket-hoi-thi-khu-dan-cu-ntm-kieu-mau-vuon-mau-lan-thu-nhat', '', '', '2018-04-08 08:39:56', '2018-04-08 08:39:56', '', 0, 'http://nongthon-wp.local/?p=35', 0, 'post', '', 0),
(36, 1, '2018-04-08 08:24:58', '2018-04-08 08:24:58', 'Tham gia chung kết hội thi có 15 khu dân cư NTM kiểu mẫu (15 đội) có số điểm cao nhất sau vào vòng sơ khảo và vòng chấm thi trực tiếp.\r\n\r\nCác đội sẽ trải qua 3 phần thi trực tiếp, gồm: Tuyên truyền (bằng hình thức sân khấu hóa tuyên truyền về xây dựng nông thôn mới, khu dân cư nông thôn mới kiểu mẫu); phóng sự về xây dựng khu dân cư nông thôn mới kiểu mẫu; kế hoạch nâng cấp khu dân cư nông thôn mới kiểu mẫu thời gian tới (bằng hùng biện).\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/dbtt.jpg" alt="" width="219" height="154" class="alignnone size-full wp-image-32" />\r\nchung ket hoi thi khu dan cu ntm kieu mau vuon mau lan thu nhat\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/tvcs_1.jpg" alt="" width="202" height="120" class="alignnone size-full wp-image-31" />\r\nCác thành viên ban giám khảo\r\n\r\nĐiểm chung cuộc sẽ là điểm bình quân của 3 phần thi trực tiếp nêu trên và số điểm đạt được chấm thi thực tế (nhân hệ số 2).\r\n\r\nDự kiến, lễ tổng kết và trao giải cuộc thi sẽ được tổ chức vào ngày 14/4/2018.\r\n\r\nThêm một số hình ảnh tại Hội thi:\r\n\r\nchung ket hoi thi khu dan cu ntm kieu mau vuon mau lan thu nhat\r\n\r\nchung ket hoi thi khu dan cu ntm kieu mau vuon mau lan thu nhat\r\n\r\nVăn nghệ chào mừng hội thi của đội văn nghệ 2 huyện Hương Sơn, Đức Thọ', 'Chung kết Hội thi Khu dân cư NTM kiểu mẫu, vườn mẫu lần thứ nhất', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-04-08 08:24:58', '2018-04-08 08:24:58', '', 35, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-04-08 08:39:36', '2018-04-08 08:39:36', '', '77d0114923t8813l2', '', 'inherit', 'open', 'closed', '', '77d0114923t8813l2', '', '', '2018-04-08 08:39:36', '2018-04-08 08:39:36', '', 35, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d0114923t8813l2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-04-08 08:42:30', '2018-04-08 08:42:30', 'Việc tổ chức Hội nghị toàn quốc về xây dựng khu dân cư NTM kiểu mẫu, vườn mẫu tại Hà Tĩnh và các sự kiện liên quan phải đảm bảo thiết thực, hiệu quả và an toàn.\r\n\r\nĐó là chỉ đạo của Bí thư Tỉnh ủy, Trưởng BCĐ NTM tỉnh Lê Đình Sơn tại cuộc họp nghe công tác chuẩn bị và thống nhất các nội dung: Hội nghị toàn quốc về xây dựng khu dân cư NTM kiểu mẫu, vườn mẫu tại Hà Tĩnh và tổng kết và trao giải cuộc thi Khu dân cư NTM kiểu mẫu, vườn mẫu gắn với tọa đàm, giao lưu vừa diễn ra chiều nay (7/4)\r\n\r\nDự họp có Chủ tịch UBND tỉnh Đặng Quốc Khánh và lãnh đạo một số sở, ngành, đơn vị, địa phương liên quan.\r\n\r\nHội nghị toàn quốc về xây dựng khu dân cư NTM kiểu mẫu, vườn mẫu tại Hà Tĩnh do Bộ Nông nghiệp và Phát triển nông thôn chủ trì phối hợp Ban Chỉ đạo NTM tỉnh Hà Tĩnh sẽ tổ chức vào ngày 14-15/4 thu hút trên 300 đại biểu trong nước và quốc tế tham dự.\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/134d6175208t1095l0-300x219.jpg" alt="" width="300" height="219" class="alignnone size-medium wp-image-39" />\r\nhon 300 dai bieu du hoi nghi toan quoc ve xay dung khu dan cu ntm kieu mau vuon mau tai ha tinh\r\n\r\nChánh Văn phòng NTM tỉnh Trần Huy Oánh báo cáo dự thảo nội dung, kịch bản tổ chức các sự kiện\r\n\r\nTheo báo cáo của Văn phòng NTM tỉnh, đến thời điểm hiện nay, công tác chuẩn bị đã cơ bản hoàn tất, đảm bảo cho các sự kiện diễn ra theo đúng kế hoạch. Văn phòng NTM tỉnh và Văn phòng UBND tỉnh chủ trì, cùng các đơn vị, địa phương liên quan đã xây dựng nội dung, kịch bản chương trình tổng kết và trao giải cuộc thi; chương trình toạ đàm, giao lưu; liên hệ mời các đại sứ; hướng dẫn, tập huấn công tác lễ tân cho các hộ gia đình làm homestay tại thôn Phong Giang, xã Tiên Điền, Nghi Xuân…', 'Hơn 300 đại biểu dự Hội nghị toàn quốc về xây dựng khu dân cư NTM kiểu mẫu, vườn mẫu tại Hà Tĩnh', '', 'publish', 'open', 'open', '', 'hon-300-dai-bieu-du-hoi-nghi-toan-quoc-ve-xay-dung-khu-dan-cu-ntm-kieu-mau-vuon-mau-tai-ha-tinh', '', '', '2018-04-08 08:42:30', '2018-04-08 08:42:30', '', 0, 'http://nongthon-wp.local/?p=38', 0, 'post', '', 0),
(39, 1, '2018-04-08 08:40:40', '2018-04-08 08:40:40', '', '134d6175208t1095l0', '', 'inherit', 'open', 'closed', '', '134d6175208t1095l0', '', '', '2018-04-08 08:40:40', '2018-04-08 08:40:40', '', 38, 'http://nongthon-wp.local/wp-content/uploads/2018/04/134d6175208t1095l0.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-04-08 08:42:30', '2018-04-08 08:42:30', 'Việc tổ chức Hội nghị toàn quốc về xây dựng khu dân cư NTM kiểu mẫu, vườn mẫu tại Hà Tĩnh và các sự kiện liên quan phải đảm bảo thiết thực, hiệu quả và an toàn.\r\n\r\nĐó là chỉ đạo của Bí thư Tỉnh ủy, Trưởng BCĐ NTM tỉnh Lê Đình Sơn tại cuộc họp nghe công tác chuẩn bị và thống nhất các nội dung: Hội nghị toàn quốc về xây dựng khu dân cư NTM kiểu mẫu, vườn mẫu tại Hà Tĩnh và tổng kết và trao giải cuộc thi Khu dân cư NTM kiểu mẫu, vườn mẫu gắn với tọa đàm, giao lưu vừa diễn ra chiều nay (7/4)\r\n\r\nDự họp có Chủ tịch UBND tỉnh Đặng Quốc Khánh và lãnh đạo một số sở, ngành, đơn vị, địa phương liên quan.\r\n\r\nHội nghị toàn quốc về xây dựng khu dân cư NTM kiểu mẫu, vườn mẫu tại Hà Tĩnh do Bộ Nông nghiệp và Phát triển nông thôn chủ trì phối hợp Ban Chỉ đạo NTM tỉnh Hà Tĩnh sẽ tổ chức vào ngày 14-15/4 thu hút trên 300 đại biểu trong nước và quốc tế tham dự.\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/134d6175208t1095l0-300x219.jpg" alt="" width="300" height="219" class="alignnone size-medium wp-image-39" />\r\nhon 300 dai bieu du hoi nghi toan quoc ve xay dung khu dan cu ntm kieu mau vuon mau tai ha tinh\r\n\r\nChánh Văn phòng NTM tỉnh Trần Huy Oánh báo cáo dự thảo nội dung, kịch bản tổ chức các sự kiện\r\n\r\nTheo báo cáo của Văn phòng NTM tỉnh, đến thời điểm hiện nay, công tác chuẩn bị đã cơ bản hoàn tất, đảm bảo cho các sự kiện diễn ra theo đúng kế hoạch. Văn phòng NTM tỉnh và Văn phòng UBND tỉnh chủ trì, cùng các đơn vị, địa phương liên quan đã xây dựng nội dung, kịch bản chương trình tổng kết và trao giải cuộc thi; chương trình toạ đàm, giao lưu; liên hệ mời các đại sứ; hướng dẫn, tập huấn công tác lễ tân cho các hộ gia đình làm homestay tại thôn Phong Giang, xã Tiên Điền, Nghi Xuân…', 'Hơn 300 đại biểu dự Hội nghị toàn quốc về xây dựng khu dân cư NTM kiểu mẫu, vườn mẫu tại Hà Tĩnh', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-04-08 08:42:30', '2018-04-08 08:42:30', '', 38, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-04-08 08:44:03', '2018-04-08 08:44:03', 'Sáng 06/4, Bộ Nông nghiệp và PTNT phối hợp với UBND tỉnh Ninh Bình tổ chức Hội nghị toàn quốc Văn phòng Điều phối nông thôn mới các cấp năm 2018. Đồng chí Trần Thanh Nam, Thứ trưởng Bộ Nông nghiệp và PTNT; đồng chí Nguyễn Minh Tiến, Cục trưởng, Chánh Văn phòng Điều phối NTM Trung ương; đồng chí Đinh Chung Phụng, TVTU, Phó chủ tịch UBND tỉnh đồng chủ trì hội nghị.\r\nCùng dự hội nghị phía đại biểu Trung ương còn có đồng chí Trần Thị Hương, Phó Chủ tịch Hội liên hiệp phụ nữ Việt Nam; lãnh đạo Văn phòng Điều phối nông thôn mới Trung ương; lãnh đạo Văn phòng Điều phối nông thôn mới các tỉnh thành trực thuộc trung ương; đại diện các doanh nghiệp tiêu biểu trong và ngoài nước; đại biểu Quỹ Saemaul toàn cầu - Hàn Quốc.\r\n\r\n\r\n \r\n\r\nQuang cảnh hội nghị\r\nVề phía tỉnh Ninh Bình, dự hội nghị có đồng chí đồng chí Bùi Mai Hoa, TVTU, Phó Chủ tịch HĐND tỉnh; các đồng chí trong BCĐ Chương trình MTQG xây dựng NTM tỉnh; lãnh đạo các ngành, địa phương trong tỉnh.\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/013c846b776f9931c07e-300x200.jpg" alt="" width="300" height="200" class="alignnone size-medium wp-image-42" />\r\nĐồng chí Đinh Chung Phụng, Phó Chủ tịch Thường trực UBND tỉnh phát biểu chào mừng hội nghị.\r\nPhát biểu chào mừng hội nghị, đồng chí Đinh Chung Phụng, Phó Chủ tịch Thường trực UBND tỉnh Ninh Bình bày tỏ sự vui mừng được đón các đồng chí lãnh đạo Trung ương cũng như đại biểu các tỉnh thành trực thuộc Trung ương trong cả nước đã đến tham quan và làm việc tại tỉnh Ninh Bình. Đồng chí nhấn mạnh, Hội nghị toàn quốc Văn phòng Điều phối nông thôn mới các cấp năm 2018 là sự kiện có ý nghĩa quan trọng, đây là dịp để Văn phòng Điều phối NTM các cấp, các tỉnh, thành phố và các cơ quan đơn vị có liên quan trao đổi thông tin, chia sẻ kinh nghiệm trong công tác triển khai thực hiện Chương trình MTQG xây dựng NTM. Đây cũng là cơ hội cho BCĐ và Văn phòng Điều phối NTM các cấp của tỉnh Ninh Bình trao đổi và học tập kinh nghiệm của các địa phương trong cả nước để tiếp tục cụ thể hóa, xây dựng và nâng cao chất lượng xây dựng NTM trên địa bàn tỉnh trong năm 2018 và những năm tiếp theo. Thay mặt lãnh đạo tỉnh Ninh Bình đồng chí Đinh Chung Phụng gửi lời cảm ơn về sự quan tâm giúp đỡ của các Bộ, ngành, Trung ương, đặc biệt là Bộ Nông nghiệp và PTNT, BCĐ Trung ương Chương trình M', 'Hội nghị toàn quốc Văn phòng Điều phối nông thôn mới các cấp năm 2018', '', 'publish', 'open', 'open', '', 'hoi-nghi-toan-quoc-van-phong-dieu-phoi-nong-thon-moi-cac-cap-nam-2018', '', '', '2018-04-08 08:44:03', '2018-04-08 08:44:03', '', 0, 'http://nongthon-wp.local/?p=41', 0, 'post', '', 0),
(42, 1, '2018-04-08 08:42:59', '2018-04-08 08:42:59', '', '013c846b776f9931c07e', '', 'inherit', 'open', 'closed', '', '013c846b776f9931c07e', '', '', '2018-04-08 08:42:59', '2018-04-08 08:42:59', '', 41, 'http://nongthon-wp.local/wp-content/uploads/2018/04/013c846b776f9931c07e.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-04-08 08:44:03', '2018-04-08 08:44:03', 'Sáng 06/4, Bộ Nông nghiệp và PTNT phối hợp với UBND tỉnh Ninh Bình tổ chức Hội nghị toàn quốc Văn phòng Điều phối nông thôn mới các cấp năm 2018. Đồng chí Trần Thanh Nam, Thứ trưởng Bộ Nông nghiệp và PTNT; đồng chí Nguyễn Minh Tiến, Cục trưởng, Chánh Văn phòng Điều phối NTM Trung ương; đồng chí Đinh Chung Phụng, TVTU, Phó chủ tịch UBND tỉnh đồng chủ trì hội nghị.\r\nCùng dự hội nghị phía đại biểu Trung ương còn có đồng chí Trần Thị Hương, Phó Chủ tịch Hội liên hiệp phụ nữ Việt Nam; lãnh đạo Văn phòng Điều phối nông thôn mới Trung ương; lãnh đạo Văn phòng Điều phối nông thôn mới các tỉnh thành trực thuộc trung ương; đại diện các doanh nghiệp tiêu biểu trong và ngoài nước; đại biểu Quỹ Saemaul toàn cầu - Hàn Quốc.\r\n\r\n\r\n \r\n\r\nQuang cảnh hội nghị\r\nVề phía tỉnh Ninh Bình, dự hội nghị có đồng chí đồng chí Bùi Mai Hoa, TVTU, Phó Chủ tịch HĐND tỉnh; các đồng chí trong BCĐ Chương trình MTQG xây dựng NTM tỉnh; lãnh đạo các ngành, địa phương trong tỉnh.\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/013c846b776f9931c07e-300x200.jpg" alt="" width="300" height="200" class="alignnone size-medium wp-image-42" />\r\nĐồng chí Đinh Chung Phụng, Phó Chủ tịch Thường trực UBND tỉnh phát biểu chào mừng hội nghị.\r\nPhát biểu chào mừng hội nghị, đồng chí Đinh Chung Phụng, Phó Chủ tịch Thường trực UBND tỉnh Ninh Bình bày tỏ sự vui mừng được đón các đồng chí lãnh đạo Trung ương cũng như đại biểu các tỉnh thành trực thuộc Trung ương trong cả nước đã đến tham quan và làm việc tại tỉnh Ninh Bình. Đồng chí nhấn mạnh, Hội nghị toàn quốc Văn phòng Điều phối nông thôn mới các cấp năm 2018 là sự kiện có ý nghĩa quan trọng, đây là dịp để Văn phòng Điều phối NTM các cấp, các tỉnh, thành phố và các cơ quan đơn vị có liên quan trao đổi thông tin, chia sẻ kinh nghiệm trong công tác triển khai thực hiện Chương trình MTQG xây dựng NTM. Đây cũng là cơ hội cho BCĐ và Văn phòng Điều phối NTM các cấp của tỉnh Ninh Bình trao đổi và học tập kinh nghiệm của các địa phương trong cả nước để tiếp tục cụ thể hóa, xây dựng và nâng cao chất lượng xây dựng NTM trên địa bàn tỉnh trong năm 2018 và những năm tiếp theo. Thay mặt lãnh đạo tỉnh Ninh Bình đồng chí Đinh Chung Phụng gửi lời cảm ơn về sự quan tâm giúp đỡ của các Bộ, ngành, Trung ương, đặc biệt là Bộ Nông nghiệp và PTNT, BCĐ Trung ương Chương trình M', 'Hội nghị toàn quốc Văn phòng Điều phối nông thôn mới các cấp năm 2018', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-04-08 08:44:03', '2018-04-08 08:44:03', '', 41, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-04-08 08:46:02', '2018-04-08 08:46:02', '\r\nBí thư Tỉnh ủy - Chủ tịch HĐND tỉnh Hà Tĩnh Lê Đình Sơn khẳng định: Việc thành lập thị trấn Đồng Lộc là cần thiết để địa phương phát triển theo hướng đô thị, góp phần tạo động lực thúc đẩy phát triển kinh tế - xã hội các xã vùng thượng Can Lộc.\r\nSáng 6/4, Bí thư Tỉnh ủy - Chủ tịch HĐND tỉnh Lê Đình Sơn cùng các Phó Chủ tịch HĐND tỉnh: Nguyễn Thị Nữ Y, Võ Hồng Hải chủ tọa Kỳ họp thứ 6 (kỳ họp chuyên đề) của HĐND tỉnh Hà Tĩnh để bàn và thông qua Đề án thành lập thị trấn Đồng Lộc, huyện Can Lộc. Phó Bí thư Thường trực Tỉnh ủy Trần Nam Hồng, các đồng chí trong BTV Tỉnh ủy, đại diện Đoàn ĐBQH tỉnh, lãnh đạo UBND tỉnh và MTTQ tỉnh cùng dự.\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/77d5124827t5546l3-300x200.jpg" alt="" width="300" height="200" class="alignnone size-medium wp-image-45" />\r\nhdnd tinh ha tinh thong qua nghi quyet thanh lap thi tran dong loc\r\n\r\nBí thư Tỉnh ủy - Chủ tịch HĐND tỉnh Hà Tĩnh Lê Đình Sơn chủ tọa kỳ họp\r\n\r\nKhai mạc Kỳ họp, Bí thư Tỉnh ủy - Chủ tịch HĐND tỉnh Lê Đình Sơn nhấn mạnh: Việc thành lập thị trấn Đồng Lộc là cần thiết để địa phương phát triển theo hướng đô thị, góp phần tạo động lực thúc đẩy phát triển kinh tế - xã hội các xã vùng thượng Can Lộc. Đây là cơ hội để tập trung nguồn lực đầu tư, bù đắp những hy sinh, mất mát mà nhân dân xã Đồng Lộc đã phải gánh chịu trong thời kỳ chiến tranh.\r\n\r\nĐến nay, Đồng Lộc cơ bản đã đạt 4/4 tiêu chuẩn của thị trấn, gồm: quy mô dân số; diện tích tự nhiên; cơ cấu, trình độ phát triển kinh tế - xã hội và đã đạt đô thị loại 5. Tuy vậy, diện mạo đô thị ở Đồng Lộc vẫn chưa rõ nét; kết cấu hạ tầng khu hành chính, hệ thống điện chiếu sáng, cấp thoát nước còn bất cập; kinh tế - xã hội còn nhiều khó khăn; tỷ lệ hộ nghèo đã đạt chuẩn của đô thị, nhưng vẫn còn cao; tỷ lệ lao động phi nông nghiệp, cơ cấu nguồn thu còn phải tiếp tục phấn đấu; nếp sống, lối sống đô thị mới hình thành...\r\n\r\nThay mặt UBND tỉnh, Phó Chủ tịch UBND tỉnh Đặng Ngọc Sơn đã trình bày tờ trình về việc tán thành chủ trương thành lập thị trấn Đồng Lộc.\r\n\r\nhdnd tinh ha tinh thong qua nghi quyet thanh lap thi tran dong loc\r\n\r\nPhó Chủ tịch UBND tỉnh Đặng Ngọc Sơn trình bày tờ trình của UBND tỉnh\r\n\r\nNội dung tờ trình nhấn mạnh việc thành lập thị trấn Đồng Lộc là cần thiết, đáp ứng yêu cầu phát triển kinh tế - xã hội, quy hoạch tổng thể đơn vị hành chính, tạo động lực chuyển dịch cơ cấu kinh tế, khai thác tiềm năng lợi thế của khu vực.\r\n\r\nTừ kết quả thẩm tra tờ trình và dự thảo Nghị quyết, Ban Pháp chế HĐND tỉnh cũng đã thống nhất đề nghị HĐND tỉnh ban hành Nghị quyết thành lập thị trấn Đồng Lộc tại Kỳ họp này.', 'HĐND tỉnh Hà Tĩnh thông qua Nghị quyết thành lập thị trấn Đồng Lộc', '', 'publish', 'open', 'open', '', 'hdnd-tinh-ha-tinh-thong-qua-nghi-quyet-thanh-lap-thi-tran-dong-loc', '', '', '2018-04-08 08:46:02', '2018-04-08 08:46:02', '', 0, 'http://nongthon-wp.local/?p=44', 0, 'post', '', 0),
(45, 1, '2018-04-08 08:45:17', '2018-04-08 08:45:17', '', '77d5124827t5546l3', '', 'inherit', 'open', 'closed', '', '77d5124827t5546l3', '', '', '2018-04-08 08:45:17', '2018-04-08 08:45:17', '', 44, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d5124827t5546l3.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-04-08 08:46:02', '2018-04-08 08:46:02', '\r\nBí thư Tỉnh ủy - Chủ tịch HĐND tỉnh Hà Tĩnh Lê Đình Sơn khẳng định: Việc thành lập thị trấn Đồng Lộc là cần thiết để địa phương phát triển theo hướng đô thị, góp phần tạo động lực thúc đẩy phát triển kinh tế - xã hội các xã vùng thượng Can Lộc.\r\nSáng 6/4, Bí thư Tỉnh ủy - Chủ tịch HĐND tỉnh Lê Đình Sơn cùng các Phó Chủ tịch HĐND tỉnh: Nguyễn Thị Nữ Y, Võ Hồng Hải chủ tọa Kỳ họp thứ 6 (kỳ họp chuyên đề) của HĐND tỉnh Hà Tĩnh để bàn và thông qua Đề án thành lập thị trấn Đồng Lộc, huyện Can Lộc. Phó Bí thư Thường trực Tỉnh ủy Trần Nam Hồng, các đồng chí trong BTV Tỉnh ủy, đại diện Đoàn ĐBQH tỉnh, lãnh đạo UBND tỉnh và MTTQ tỉnh cùng dự.\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/77d5124827t5546l3-300x200.jpg" alt="" width="300" height="200" class="alignnone size-medium wp-image-45" />\r\nhdnd tinh ha tinh thong qua nghi quyet thanh lap thi tran dong loc\r\n\r\nBí thư Tỉnh ủy - Chủ tịch HĐND tỉnh Hà Tĩnh Lê Đình Sơn chủ tọa kỳ họp\r\n\r\nKhai mạc Kỳ họp, Bí thư Tỉnh ủy - Chủ tịch HĐND tỉnh Lê Đình Sơn nhấn mạnh: Việc thành lập thị trấn Đồng Lộc là cần thiết để địa phương phát triển theo hướng đô thị, góp phần tạo động lực thúc đẩy phát triển kinh tế - xã hội các xã vùng thượng Can Lộc. Đây là cơ hội để tập trung nguồn lực đầu tư, bù đắp những hy sinh, mất mát mà nhân dân xã Đồng Lộc đã phải gánh chịu trong thời kỳ chiến tranh.\r\n\r\nĐến nay, Đồng Lộc cơ bản đã đạt 4/4 tiêu chuẩn của thị trấn, gồm: quy mô dân số; diện tích tự nhiên; cơ cấu, trình độ phát triển kinh tế - xã hội và đã đạt đô thị loại 5. Tuy vậy, diện mạo đô thị ở Đồng Lộc vẫn chưa rõ nét; kết cấu hạ tầng khu hành chính, hệ thống điện chiếu sáng, cấp thoát nước còn bất cập; kinh tế - xã hội còn nhiều khó khăn; tỷ lệ hộ nghèo đã đạt chuẩn của đô thị, nhưng vẫn còn cao; tỷ lệ lao động phi nông nghiệp, cơ cấu nguồn thu còn phải tiếp tục phấn đấu; nếp sống, lối sống đô thị mới hình thành...\r\n\r\nThay mặt UBND tỉnh, Phó Chủ tịch UBND tỉnh Đặng Ngọc Sơn đã trình bày tờ trình về việc tán thành chủ trương thành lập thị trấn Đồng Lộc.\r\n\r\nhdnd tinh ha tinh thong qua nghi quyet thanh lap thi tran dong loc\r\n\r\nPhó Chủ tịch UBND tỉnh Đặng Ngọc Sơn trình bày tờ trình của UBND tỉnh\r\n\r\nNội dung tờ trình nhấn mạnh việc thành lập thị trấn Đồng Lộc là cần thiết, đáp ứng yêu cầu phát triển kinh tế - xã hội, quy hoạch tổng thể đơn vị hành chính, tạo động lực chuyển dịch cơ cấu kinh tế, khai thác tiềm năng lợi thế của khu vực.\r\n\r\nTừ kết quả thẩm tra tờ trình và dự thảo Nghị quyết, Ban Pháp chế HĐND tỉnh cũng đã thống nhất đề nghị HĐND tỉnh ban hành Nghị quyết thành lập thị trấn Đồng Lộc tại Kỳ họp này.', 'HĐND tỉnh Hà Tĩnh thông qua Nghị quyết thành lập thị trấn Đồng Lộc', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-04-08 08:46:02', '2018-04-08 08:46:02', '', 44, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-04-08 08:47:12', '2018-04-08 08:47:12', 'Đất rộng, người thưa, điều kiện kinh tế chưa dư giả nhiều… nhưng người dân các xã vùng miền núi Hương Khê, Hương Sơn, Vũ Quang (Hà Tĩnh) đã biết khắc phục khó khăn, biến những cái bất lợi thành có lợi để xây dựng khu dân cư mẫu hiệu quả, bền vững.\r\n\r\n [caption id="attachment_48" align="alignnone" width="300"]<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/102d5083841t7659l0-300x200.jpg" alt="" width="300" height="200" class="size-medium wp-image-48" /> DCIM100MEDIADJI_0093.JPG[/caption]\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nThôn Nam Trà, xã Hương Trà (Hương Khê) là thôn xây dựng KDC kiểu mẫu đầu tiên của tỉnh Hà Tĩnh. Người dân nơi đây có ý thức tu sửa, chỉnh trang vườn hộ, tạo bờ rào cây xanh thẳng hàng, đẹp lối tạo cảnh quan đẹp, thân thiện, môi trường xanh, sạch.\r\n\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nĐến Nam Trà, du khách được chứng kiến hệ thống GTNT bằng bê tông rộng rãi, khép kín 100% trục thôn, ngõ xóm\r\n\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nToàn thôn đã trồng 16.000m hàng rào xanh và tạo sức lan tỏa rộng khắp trên toàn tỉnh. Đến nay, thôn Nam Trà đã đón trên 450 đoàn khách trong cả nước về tham quan và học tập kinh nghiệm.', 'Đắm say những khu dân cư NTM kiểu mẫu miền núi Hà Tĩnh', '', 'publish', 'open', 'open', '', 'dam-say-nhung-khu-dan-cu-ntm-kieu-mau-mien-nui-ha-tinh', '', '', '2018-04-12 11:39:29', '2018-04-12 04:39:29', '', 0, 'http://nongthon-wp.local/?p=47', 0, 'post', '', 0),
(48, 1, '2018-04-08 08:46:48', '2018-04-08 08:46:48', '', 'DCIM100MEDIADJI_0093.JPG', 'DCIM100MEDIADJI_0093.JPG', 'inherit', 'open', 'closed', '', 'dcim100mediadji_0093-jpg', '', '', '2018-04-08 08:46:48', '2018-04-08 08:46:48', '', 47, 'http://nongthon-wp.local/wp-content/uploads/2018/04/102d5083841t7659l0.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-04-08 08:47:12', '2018-04-08 08:47:12', '\r\nĐất rộng, người thưa, điều kiện kinh tế chưa dư giả nhiều… nhưng người dân các xã vùng miền núi Hương Khê, Hương Sơn, Vũ Quang (Hà Tĩnh) đã biết khắc phục khó khăn, biến những cái bất lợi thành có lợi để xây dựng khu dân cư mẫu hiệu quả, bền vững.\r\n\r\n [caption id="attachment_48" align="alignnone" width="300"]<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/102d5083841t7659l0-300x200.jpg" alt="" width="300" height="200" class="size-medium wp-image-48" /> DCIM100MEDIADJI_0093.JPG[/caption]\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nThôn Nam Trà, xã Hương Trà (Hương Khê) là thôn xây dựng KDC kiểu mẫu đầu tiên của tỉnh Hà Tĩnh. Người dân nơi đây có ý thức tu sửa, chỉnh trang vườn hộ, tạo bờ rào cây xanh thẳng hàng, đẹp lối tạo cảnh quan đẹp, thân thiện, môi trường xanh, sạch.\r\n\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nĐến Nam Trà, du khách được chứng kiến hệ thống GTNT bằng bê tông rộng rãi, khép kín 100% trục thôn, ngõ xóm\r\n\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nToàn thôn đã trồng 16.000m hàng rào xanh và tạo sức lan tỏa rộng khắp trên toàn tỉnh. Đến nay, thôn Nam Trà đã đón trên 450 đoàn khách trong cả nước về tham quan và học tập kinh nghiệm.', 'Đắm say những khu dân cư NTM kiểu mẫu miền núi Hà Tĩnh', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-04-08 08:47:12', '2018-04-08 08:47:12', '', 47, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-04-08 08:49:06', '2018-04-08 08:49:06', 'Đường làng ngõ xóm được bê tông hóa, hai bên có hàng rào xanh phủ bóng râm mát, nhà cửa khang trang, sạch sẽ, những miền quê khó khăn trước đây nay trở thành những miền quê trù phú, an lành, đáng sống.\r\nĐó là hình ảnh hiện tại của các khu dân cư nông thôn mới (NTM) kiểu mẫu ở nhiều làng quê tỉnh Hà Tĩnh được nhiều địa phương trên cả nước đến tham quan, học hỏi và “ngưỡng mộ”. \r\n[caption id="attachment_51" align="alignnone" width="300"]<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/dsc_0983-300x200.jpg" alt="" width="300" height="200" class="size-medium wp-image-51" /> fghfhf[/caption]\r\nCùng KTNT chiêm ngưỡng những miền quê "đáng sống" ở Hà Tĩnh.\r\n\r\nĐược quy hoạch bài bản, hợp lý, biết ứng dụng KHKT vào tất cả các khâu sản xuất; sản phẩm đa dạng và thân thiện với môi trường..., nhiều vườn mẫu ở Hà Tĩnh cho giá trị kinh tế cao.\r\n', '“Ngất ngây” trước những miền quê nông thôn mới Hà Tĩnh', '', 'publish', 'open', 'open', '', 'ngat-ngay-truoc-nhung-mien-que-nong-thon-moi-ha-tinh', '', '', '2018-04-08 08:49:06', '2018-04-08 08:49:06', '', 0, 'http://nongthon-wp.local/?p=50', 0, 'post', '', 0),
(51, 1, '2018-04-08 08:47:49', '2018-04-08 08:47:49', '', 'dsc_0983', 'fghfhf', 'inherit', 'open', 'closed', '', 'dsc_0983', '', '', '2018-04-08 08:48:05', '2018-04-08 08:48:05', '', 50, 'http://nongthon-wp.local/wp-content/uploads/2018/04/dsc_0983.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-04-08 08:49:06', '2018-04-08 08:49:06', 'Đường làng ngõ xóm được bê tông hóa, hai bên có hàng rào xanh phủ bóng râm mát, nhà cửa khang trang, sạch sẽ, những miền quê khó khăn trước đây nay trở thành những miền quê trù phú, an lành, đáng sống.\r\nĐó là hình ảnh hiện tại của các khu dân cư nông thôn mới (NTM) kiểu mẫu ở nhiều làng quê tỉnh Hà Tĩnh được nhiều địa phương trên cả nước đến tham quan, học hỏi và “ngưỡng mộ”. \r\n[caption id="attachment_51" align="alignnone" width="300"]<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/dsc_0983-300x200.jpg" alt="" width="300" height="200" class="size-medium wp-image-51" /> fghfhf[/caption]\r\nCùng KTNT chiêm ngưỡng những miền quê "đáng sống" ở Hà Tĩnh.\r\n\r\nĐược quy hoạch bài bản, hợp lý, biết ứng dụng KHKT vào tất cả các khâu sản xuất; sản phẩm đa dạng và thân thiện với môi trường..., nhiều vườn mẫu ở Hà Tĩnh cho giá trị kinh tế cao.\r\n', '“Ngất ngây” trước những miền quê nông thôn mới Hà Tĩnh', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-04-08 08:49:06', '2018-04-08 08:49:06', '', 50, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-04-08 08:51:47', '2018-04-08 08:51:47', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-08 08:51:47', '2018-04-08 08:51:47', '', 1, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/1-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-04-08 09:39:00', '2018-04-08 09:39:00', 'Đặt chân tới xã Xuân Yên, nhiều người không khỏi ngỡ ngàng trước sự chuyển mình của vùng bãi ngang trước đây vốn nghèo nhất nhì huyện Nghi Xuân, Hà Tĩnh.\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nĐiều kiện tự nhiên bất lợi, tiềm lực kinh tế khó khăn, người dân miền biển Xuân Yên đã đoàn kết, góp sức người, sức của phát triển hạ tầng nông thôn. Chính sức mạnh của lòng dân đã giúp miền quê nghèo về đích nông thôn mới.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-300x200.jpg" alt="" width="300" height="200" class="alignnone size-medium wp-image-55" />\r\nTrong quá trình xây dựng NTM, con em thôn Yên Nam đã đóng góp 2,5 tỷ đồng xây dựng khu dân cư kiểu mẫu. Con đường mẫu, với kinh phí đầu tư gần 140 triệu đồng do chính bà con trong thôn đảm nhận thi công thông qua sự điều phối của Hội Nông dân xã.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNgười dân Xuân Yên hào hứng xây dựng các tuyến hàng rào xanh, tạo cảnh quan sạch đẹp, thân thiện...\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNhững khu vườn được người dân miền biển chăm chút, mang lại giá trị kinh tế cao.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nCòn nhớ trước kia, cái nghèo luôn đeo đuổi người dân vùng bãi ngang này. Giờ đây, họ đã vượt qua sự bất lợi của thiên nhiên để tạo nên những mô hình kinh tế tiềm năng, cho thu nhập cao. Trong ảnh: Mô hình vườn - ao - chuồng của gia đình ông Phan Văn Vinh (thôn Yên Nam) cho thu nhập từ 60 - 80 triệu đồng/năm.', 'Về làng biển Nghi Xuân xem khu dân cư mẫu', '', 'publish', 'open', 'open', '', 've-lang-bien-nghi-xuan-xem-khu-dan-cu-mau', '', '', '2018-04-08 14:24:21', '2018-04-08 14:24:21', '', 0, 'http://nongthon-wp.local/?p=54', 0, 'post', '', 0),
(55, 1, '2018-04-08 09:38:06', '2018-04-08 09:38:06', '', '77d0093609t7970l0', '', 'inherit', 'open', 'closed', '', '77d0093609t7970l0', '', '', '2018-04-08 10:06:06', '2018-04-08 10:06:06', '', 54, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-04-08 09:39:00', '2018-04-08 09:39:00', 'Đặt chân tới xã Xuân Yên, nhiều người không khỏi ngỡ ngàng trước sự chuyển mình của vùng bãi ngang trước đây vốn nghèo nhất nhì huyện Nghi Xuân, Hà Tĩnh.\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nĐiều kiện tự nhiên bất lợi, tiềm lực kinh tế khó khăn, người dân miền biển Xuân Yên đã đoàn kết, góp sức người, sức của phát triển hạ tầng nông thôn. Chính sức mạnh của lòng dân đã giúp miền quê nghèo về đích nông thôn mới.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-300x200.jpg" alt="" width="300" height="200" class="alignnone size-medium wp-image-55" />\r\nTrong quá trình xây dựng NTM, con em thôn Yên Nam đã đóng góp 2,5 tỷ đồng xây dựng khu dân cư kiểu mẫu. Con đường mẫu, với kinh phí đầu tư gần 140 triệu đồng do chính bà con trong thôn đảm nhận thi công thông qua sự điều phối của Hội Nông dân xã.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNgười dân Xuân Yên hào hứng xây dựng các tuyến hàng rào xanh, tạo cảnh quan sạch đẹp, thân thiện...\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNhững khu vườn được người dân miền biển chăm chút, mang lại giá trị kinh tế cao.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nCòn nhớ trước kia, cái nghèo luôn đeo đuổi người dân vùng bãi ngang này. Giờ đây, họ đã vượt qua sự bất lợi của thiên nhiên để tạo nên những mô hình kinh tế tiềm năng, cho thu nhập cao. Trong ảnh: Mô hình vườn - ao - chuồng của gia đình ông Phan Văn Vinh (thôn Yên Nam) cho thu nhập từ 60 - 80 triệu đồng/năm.', 'Về làng biển Nghi Xuân xem khu dân cư mẫu', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-04-08 09:39:00', '2018-04-08 09:39:00', '', 54, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/54-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-04-08 13:01:09', '2018-04-08 13:01:09', '', 'Field category is home', '', 'publish', 'closed', 'closed', '', 'acf_field-category-is-home', '', '', '2018-04-08 13:01:09', '2018-04-08 13:01:09', '', 0, 'http://nongthon-wp.local/?post_type=acf&#038;p=58', 0, 'acf', '', 0),
(60, 1, '2018-04-08 14:23:37', '2018-04-08 14:23:37', '', 'Draft created on April 8, 2018 at 2:08 pm', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-04-08 14:23:37', '2018-04-08 14:23:37', '', 0, 'http://nongthon-wp.local/?p=60', 0, 'post', '', 0),
(61, 1, '2018-04-08 14:08:36', '2018-04-08 14:08:36', '', 'Draft created on April 8, 2018 at 2:08 pm', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-04-08 14:08:36', '2018-04-08 14:08:36', '', 60, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-04-08 14:11:14', '2018-04-08 14:11:14', '', 'field in post', '', 'publish', 'closed', 'closed', '', 'acf_field-in-post', '', '', '2018-04-08 14:23:24', '2018-04-08 14:23:24', '', 0, 'http://nongthon-wp.local/?post_type=acf&#038;p=63', 0, 'acf', '', 0),
(64, 1, '2018-04-08 14:15:22', '2018-04-08 14:15:22', 'Trung tâm Hành chính công TX Hồng Lĩnh được thành lập theo Quyết định 2042/QĐ-UBND ngày 20/7/2017 của UBND tỉnh, chính thức đi vào hoạt động từ ngày 25/10/2017.\r\n\r\nHiện, Trung tâm đã thực hiện 283/283 thủ tục hành chính thuộc thẩm quyền, trong đó 34/34 thủ tục về bảo hiểm xã hội; 19 thủ tục thuộc thẩm quyền của Công an thị xã; 3 thủ tục thuộc thẩm quyền của Chi cục Thuế, số còn lại thuộc các lĩnh vực khác. Các thủ tục hành chính, địa chỉ tiếp nhận phản ánh, kiến nghị đều được công khai, niêm yết tại bảng và đăng tải trên trang thông tin điện tử của thị xã theo đúng quy định.\r\n\r\nKể từ khi đi vào hoạt động, Trung tâm đã tiếp nhận 12.272 hồ sơ, trong đó 11.908 hồ sơ đã có kết quả, 326 hồ sơ đang giải quyết. Có 37 hồ sơ quá hạn do xử lý trên phần mềm; 31 hồ sơ trả lại thuộc lĩnh vực ngành tài nguyên môi trường, đăng ký kinh doanh do công dân không hoàn thành nghĩa vụ nộp thuế, một số hồ sơ công dân xin rút lại…\r\n\r\nTại buổi làm việc, Trung tâm đã nêu những khó khăn, hạn chế trong hoạt động như: Một số thủ tục hành chính chưa được quy định cụ thể bằng các quyết định công bố thủ tục hành chính mà đang thực hiện trên cơ sở quy định của luật, thông tư, nghị định nên còn chung chung; thủ tục hành chính một số lĩnh vực chưa được sửa đổi kịp thời, chưa quy định thời gian giải quyết; một số thủ tục khác chưa cập nhật đầy đủ tên thủ tục, thành phần hồ sơ… gây khó khăn cho cán bộ thực hiện…\r\n\r\nĐại biểu cũng đề xuất, kiến nghị một số vấn đề như: Nên điều động cán bộ tiếp nhận hồ sơ và trả kết quả thủ tục từ các phòng chuyên môn; ban hành văn bản quy định các chính sách, chế độ đối với cán bộ làm việc tại trung tâm để các địa phương có căn cứ chi trả và đảm bảo thống nhất trên toàn tỉnh; rà soát thủ tục hành chính để ban hành các quyết định công bố áp dụng thống nhất…\r\n\r\nbo sung them thu tuc hanh chinh dac biet trong linh vuc nguoi dan quan tam\r\n\r\nPhát biểu tại buổi làm việc, Trưởng ban Pháp chế HĐND tỉnh Nguyễn Trọng Nhiệu cho rằng, Trung tâm Hành chính công TX Hồng Lĩnh cần đưa thêm các thủ tục hành chính, nhất là những lĩnh vực người dân quan tâm như: Thủ tục cấp giấy chứng minh thư nhân dân; tăng cường công tác truyền thông, tập huấn, đặc biệt là sử dụng dịch vụ công trực tuyến mức độ 3; bổ sung và hoàn chỉnh các phương thức để kiểm soát hoạt động ở trung tâm. Ngoài ra, cần có sự quan tâm, hỗ trợ cán bộ làm việc trong thời gian chờ ban hành chế độ, chính sách...\r\n\r\nRiêng các kiến nghị, đề xuất, đoàn giám sát tổng hợp và làm việc với các ngành liên quan để có giải pháp tháo gỡ.\r\n\r\nTheo Thùy Dương/baohatinh.vn', 'Bổ sung thêm thủ tục hành chính, đặc biệt trong lĩnh vực người dân quan tâm', '', 'publish', 'open', 'open', '', 'bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam', '', '', '2018-04-10 16:00:18', '2018-04-10 09:00:18', '', 0, 'http://nongthon-wp.local/?p=64', 0, 'post', '', 2),
(65, 1, '2018-04-08 14:14:39', '2018-04-08 14:14:39', '', '77d3055028t3182l0', 'Đại biểu tham quan mô hình hoạt động tại Trung tâm Hành chính công TX Hồng Lĩnh', 'inherit', 'open', 'closed', '', '77d3055028t3182l0', '', '', '2018-04-08 14:15:15', '2018-04-08 14:15:15', '', 64, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d3055028t3182l0.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-04-08 14:15:22', '2018-04-08 14:15:22', '\r\nTrung tâm Hành chính công TX Hồng Lĩnh được thành lập theo Quyết định 2042/QĐ-UBND ngày 20/7/2017 của UBND tỉnh, chính thức đi vào hoạt động từ ngày 25/10/2017.\r\n\r\nHiện, Trung tâm đã thực hiện 283/283 thủ tục hành chính thuộc thẩm quyền, trong đó 34/34 thủ tục về bảo hiểm xã hội; 19 thủ tục thuộc thẩm quyền của Công an thị xã; 3 thủ tục thuộc thẩm quyền của Chi cục Thuế, số còn lại thuộc các lĩnh vực khác. Các thủ tục hành chính, địa chỉ tiếp nhận phản ánh, kiến nghị đều được công khai, niêm yết tại bảng và đăng tải trên trang thông tin điện tử của thị xã theo đúng quy định.\r\n\r\nKể từ khi đi vào hoạt động, Trung tâm đã tiếp nhận 12.272 hồ sơ, trong đó 11.908 hồ sơ đã có kết quả, 326 hồ sơ đang giải quyết. Có 37 hồ sơ quá hạn do xử lý trên phần mềm; 31 hồ sơ trả lại thuộc lĩnh vực ngành tài nguyên môi trường, đăng ký kinh doanh do công dân không hoàn thành nghĩa vụ nộp thuế, một số hồ sơ công dân xin rút lại…\r\n\r\nTại buổi làm việc, Trung tâm đã nêu những khó khăn, hạn chế trong hoạt động như: Một số thủ tục hành chính chưa được quy định cụ thể bằng các quyết định công bố thủ tục hành chính mà đang thực hiện trên cơ sở quy định của luật, thông tư, nghị định nên còn chung chung; thủ tục hành chính một số lĩnh vực chưa được sửa đổi kịp thời, chưa quy định thời gian giải quyết; một số thủ tục khác chưa cập nhật đầy đủ tên thủ tục, thành phần hồ sơ… gây khó khăn cho cán bộ thực hiện…\r\n\r\nĐại biểu cũng đề xuất, kiến nghị một số vấn đề như: Nên điều động cán bộ tiếp nhận hồ sơ và trả kết quả thủ tục từ các phòng chuyên môn; ban hành văn bản quy định các chính sách, chế độ đối với cán bộ làm việc tại trung tâm để các địa phương có căn cứ chi trả và đảm bảo thống nhất trên toàn tỉnh; rà soát thủ tục hành chính để ban hành các quyết định công bố áp dụng thống nhất…\r\n\r\nbo sung them thu tuc hanh chinh dac biet trong linh vuc nguoi dan quan tam\r\n\r\nPhát biểu tại buổi làm việc, Trưởng ban Pháp chế HĐND tỉnh Nguyễn Trọng Nhiệu cho rằng, Trung tâm Hành chính công TX Hồng Lĩnh cần đưa thêm các thủ tục hành chính, nhất là những lĩnh vực người dân quan tâm như: Thủ tục cấp giấy chứng minh thư nhân dân; tăng cường công tác truyền thông, tập huấn, đặc biệt là sử dụng dịch vụ công trực tuyến mức độ 3; bổ sung và hoàn chỉnh các phương thức để kiểm soát hoạt động ở trung tâm. Ngoài ra, cần có sự quan tâm, hỗ trợ cán bộ làm việc trong thời gian chờ ban hành chế độ, chính sách...\r\n\r\nRiêng các kiến nghị, đề xuất, đoàn giám sát tổng hợp và làm việc với các ngành liên quan để có giải pháp tháo gỡ.\r\n\r\nTheo Thùy Dương/baohatinh.vn', 'Bổ sung thêm thủ tục hành chính, đặc biệt trong lĩnh vực người dân quan tâm', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-04-08 14:15:22', '2018-04-08 14:15:22', '', 64, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/64-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(67, 1, '2018-04-08 14:24:21', '2018-04-08 14:24:21', 'Đặt chân tới xã Xuân Yên, nhiều người không khỏi ngỡ ngàng trước sự chuyển mình của vùng bãi ngang trước đây vốn nghèo nhất nhì huyện Nghi Xuân, Hà Tĩnh.\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nĐiều kiện tự nhiên bất lợi, tiềm lực kinh tế khó khăn, người dân miền biển Xuân Yên đã đoàn kết, góp sức người, sức của phát triển hạ tầng nông thôn. Chính sức mạnh của lòng dân đã giúp miền quê nghèo về đích nông thôn mới.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-300x200.jpg" alt="" width="300" height="200" class="alignnone size-medium wp-image-55" />\r\nTrong quá trình xây dựng NTM, con em thôn Yên Nam đã đóng góp 2,5 tỷ đồng xây dựng khu dân cư kiểu mẫu. Con đường mẫu, với kinh phí đầu tư gần 140 triệu đồng do chính bà con trong thôn đảm nhận thi công thông qua sự điều phối của Hội Nông dân xã.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNgười dân Xuân Yên hào hứng xây dựng các tuyến hàng rào xanh, tạo cảnh quan sạch đẹp, thân thiện...\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNhững khu vườn được người dân miền biển chăm chút, mang lại giá trị kinh tế cao.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nCòn nhớ trước kia, cái nghèo luôn đeo đuổi người dân vùng bãi ngang này. Giờ đây, họ đã vượt qua sự bất lợi của thiên nhiên để tạo nên những mô hình kinh tế tiềm năng, cho thu nhập cao. Trong ảnh: Mô hình vườn - ao - chuồng của gia đình ông Phan Văn Vinh (thôn Yên Nam) cho thu nhập từ 60 - 80 triệu đồng/năm.', 'Về làng biển Nghi Xuân xem khu dân cư mẫu', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-04-08 14:24:21', '2018-04-08 14:24:21', '', 54, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/54-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-04-09 07:58:04', '2018-04-09 07:58:04', '', 'field in download', '', 'publish', 'closed', 'closed', '', 'acf_field-in-download', '', '', '2018-04-15 18:48:18', '2018-04-15 11:48:18', '', 0, 'http://dev5.local/?post_type=acf&#038;p=86', 0, 'acf', '', 0),
(87, 1, '2018-04-09 08:01:15', '2018-04-09 08:01:15', 'Donec sollicitudin molestie malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada.', 'Danh sách các xã khó khăn', '', 'publish', 'open', 'closed', '', 'danh-sach-cac-xa-kho-khan', '', '', '2018-04-09 08:01:15', '2018-04-09 08:01:15', '', 0, 'http://dev5.local/?post_type=wpdmpro&#038;p=87', 0, 'wpdmpro', '', 0),
(88, 1, '2018-04-09 08:32:18', '0000-00-00 00:00:00', '', 'Quyết định số 1920/QĐ-TTg', '', 'draft', 'open', 'closed', '', '', '', '', '2018-04-09 08:32:18', '2018-04-09 08:32:18', '', 0, 'http://dev5.local/?post_type=wpdmpro&#038;p=88', 0, 'wpdmpro', '', 0),
(89, 1, '2018-04-09 08:38:45', '0000-00-00 00:00:00', '', 'êrerer', '', 'draft', 'open', 'closed', '', '', '', '', '2018-04-09 08:38:45', '2018-04-09 08:38:45', '', 0, 'http://dev5.local/?post_type=wpdmpro&#038;p=89', 0, 'wpdmpro', '', 0),
(91, 1, '2018-04-09 08:55:07', '2018-04-09 08:55:07', 'test', 'ffff', '', 'publish', 'open', 'open', '', 'ffff', '', '', '2018-04-09 08:55:07', '2018-04-09 08:55:07', '', 0, 'http://dev5.local/?p=91', 0, 'post', '', 0),
(92, 1, '2018-04-09 08:55:07', '2018-04-09 08:55:07', 'test', 'ffff', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-04-09 08:55:07', '2018-04-09 08:55:07', '', 91, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/91-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2018-04-09 11:26:56', '2018-04-09 11:26:56', '', '828-ubnd-tinh-qd-ve-viec-chap-thuan-va-giao-bo-sung-do-dau-thuc-hien-chuong-trinh-mtqg-xay-dung-nong-thon-moi-giai-1', '', 'inherit', 'open', 'closed', '', '828-ubnd-tinh-qd-ve-viec-chap-thuan-va-giao-bo-sung-do-dau-thuc-hien-chuong-trinh-mtqg-xay-dung-nong-thon-moi-giai-1', '', '', '2018-04-09 11:26:56', '2018-04-09 11:26:56', '', 0, 'http://nongthon-wp.local/wp-content/uploads/2018/04/828-ubnd-tinh-qd-ve-viec-chap-thuan-va-giao-bo-sung-do-dau-thuc-hien-chuong-trinh-mtqg-xay-dung-nong-thon-moi-giai-1.pdf', 0, 'attachment', 'application/pdf', 0),
(175, 1, '2018-04-09 11:56:03', '2018-04-09 11:56:03', 'Về việc chấp thuận và giao đỡ đầu (bổ sung) thực hiện Chương trình MTQG xây dựng nông thôn mới giai đoạn 2017 - 2020', 'Quyết định số 282/QĐ-UBND', '', 'publish', 'open', 'open', '', 'quyet-dinh-so-282-qd-ubnd', '', '', '2018-04-09 11:56:03', '2018-04-09 11:56:03', '', 0, 'http://nongthon-wp.local/?post_type=van-ban&#038;p=175', 0, 'van-ban', '', 0),
(176, 1, '2018-04-09 11:56:03', '2018-04-09 11:56:03', 'Về việc chấp thuận và giao đỡ đầu (bổ sung) thực hiện Chương trình MTQG xây dựng nông thôn mới giai đoạn 2017 - 2020', 'Quyết định số 282/QĐ-UBND', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2018-04-09 11:56:03', '2018-04-09 11:56:03', '', 175, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/175-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2018-04-09 11:56:08', '2018-04-09 11:56:08', 'Về việc chấp thuận và giao đỡ đầu (bổ sung) thực hiện Chương trình MTQG xây dựng nông thôn mới giai đoạn 2017 - 2020', 'Quyết định số 282/QĐ-UBND', '', 'inherit', 'closed', 'closed', '', '175-autosave-v1', '', '', '2018-04-09 11:56:08', '2018-04-09 11:56:08', '', 175, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/175-autosave-v1/', 0, 'revision', '', 0),
(178, 1, '2018-04-10 07:17:13', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-10 07:17:13', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?p=178', 1, 'nav_menu_item', '', 0),
(179, 1, '2018-04-10 19:12:37', '2018-04-10 12:12:37', 'Bí thư Tỉnh ủy Lê Đình Sơn cùng các đại biểu tham quan vườn nhà ông Đặng Đình Thông (thôn Bắc Tiến Nhà Ngo, xã Thạch Lưu)\r\n\r\nSau 3 tháng triển khai thực hiện khung kế hoạch (từ tháng 12/2017 đến hết tháng 2/2018), với sự tập trung chỉ đạo quyết liệt, sâu sát của cả hệ thống chính trị từ huyện đến cơ sở, cơ bản các xã thực hiện đảm bảo đúng tiến độ theo lộ trình.\r\n\r\nbi thu tinh uy du le phat dong 60 ngay cao diem xay dung ntm o thach ha\r\n\r\nBí thư Tỉnh ủy trò chuyện với người dân địa phương\r\n\r\nKết quả, toàn huyện huy động được 127.735 lượt ngày công, ước tính tiền công lao động đạt trên 31 tỷ đồng; nhân dân tự nguyện đóng góp tiền mặt, hiến đất và các loại tài sản trị giá trên 25 tỷ đồng; làm mới 46,79km đường GTNT, 25,40 rãnh thoát nước, 13,36 km kênh mương bê tông nội đồng…\r\n\r\nbi thu tinh uy du le phat dong 60 ngay cao diem xay dung ntm o thach ha\r\n\r\nĐề án phát triển sản xuất tiếp tục triển khai thực hiện có hiệu quả, cơ cấu giống cay trồng vật nuôi phù hợp, tổ chức sản xuất đúng theo lịch thời vụ; thành lập mới 18 mô hình có doanh thu từ 300 triệu đồng trở lên, 7 THT, 3 HTX; nhân dân xuống giống 700 ha lạc vụ xuân đạt và 500 ha rau củ các loại; triển khai xây dựng 54 khu dân cư nông thôn mới kiểu mẫu, 381 vườn mẫu; xây dựng mới 9.836m bồn hoa, trồng mới hơn 10 vạn cây phân tán và làm 7.580m cây hàng rào xanh nhân dịp đầu xuân Mậu Tuất 2018…\r\n\r\nbi thu tinh uy du le phat dong 60 ngay cao diem xay dung ntm o thach ha\r\n\r\nbi thu tinh uy du le phat dong 60 ngay cao diem xay dung ntm o thach ha\r\n\r\nNgười dân thôn Yên Nghĩa (Thạch Lưu) tự nguyện phá dỡ hàng rào, làm đường GTNT\r\n\r\nVề xây dựng đô thị văn minh, thị trấn Thạch Hà đã tổ chức trồng mới hơn 1.200 cây Lim xẹt trên vỉa hè đường Lý Tự Trọng và hành lang một số tuyến đường nội tổ; lắp đặt 2km đường điện chiếu sáng công cộng; hoàn thành việc gắn biển số nhà cho các hộ dân; công tác vệ sinh môi trường được đảm bảo, tạo cảnh quan đô thị sạch đẹp, văn minh, phục vụ nhân dân vui Tết đón Xuân.\r\n\r\nbi thu tinh uy du le phat dong 60 ngay cao diem xay dung ntm o thach ha\r\n\r\nPhó Chủ tịch HĐND tỉnh Nguyễn Thị Nữ Y đánh trống phát động lễ ra quân 60 ngày xây dựng NTM\r\n\r\nĐợt ra quân 60 ngày cao điểm được xác định là khoảng thời gian quan trọng, nhân dân đang trong thời điênhàn rỗi sau gieo trồng vụ Xuân, thời tiết thuận lợi cho việc triển khai thực hiện các nội dung công việc như: xây dựng khu dân cư NTM kiểu mẫu, vườn mẫu, cải tạo vườn tạp, làm đường giao thông nông thôn, kênh mương nội đồng… Vì vậy, các xã, thị trấn cần tập trung cao độ, khẩn trương triển khai thực hiện các chỉ tiêu, kế hoạch đã đề ra.\r\n\r\nDịp này, UBND huyện Thạch Hà đã khen thưởng các tập thể, cá nhân có thành tích xuất sắc trong đợt ra quân 100 ngày cao điểm xây dựng nông thôn mới thời gian qua.', 'Bí thư Tỉnh ủy dự lễ phát động 60 ngày cao điểm xây dựng NTM ở Thạch Hà', '', 'publish', 'open', 'open', '', 'bi-thu-tinh-uy-du-le-phat-dong-60-ngay-cao-diem-xay-dung-ntm-o-thach-ha', '', '', '2018-04-10 19:12:37', '2018-04-10 12:12:37', '', 0, 'http://nongthon-wp.local/?p=179', 0, 'post', '', 0),
(180, 1, '2018-04-10 19:12:20', '2018-04-10 12:12:20', '', '77d6121625t1758l0', '', 'inherit', 'open', 'closed', '', '77d6121625t1758l0', '', '', '2018-04-10 19:12:20', '2018-04-10 12:12:20', '', 179, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d6121625t1758l0.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2018-04-10 19:12:37', '2018-04-10 12:12:37', 'Bí thư Tỉnh ủy Lê Đình Sơn cùng các đại biểu tham quan vườn nhà ông Đặng Đình Thông (thôn Bắc Tiến Nhà Ngo, xã Thạch Lưu)\r\n\r\nSau 3 tháng triển khai thực hiện khung kế hoạch (từ tháng 12/2017 đến hết tháng 2/2018), với sự tập trung chỉ đạo quyết liệt, sâu sát của cả hệ thống chính trị từ huyện đến cơ sở, cơ bản các xã thực hiện đảm bảo đúng tiến độ theo lộ trình.\r\n\r\nbi thu tinh uy du le phat dong 60 ngay cao diem xay dung ntm o thach ha\r\n\r\nBí thư Tỉnh ủy trò chuyện với người dân địa phương\r\n\r\nKết quả, toàn huyện huy động được 127.735 lượt ngày công, ước tính tiền công lao động đạt trên 31 tỷ đồng; nhân dân tự nguyện đóng góp tiền mặt, hiến đất và các loại tài sản trị giá trên 25 tỷ đồng; làm mới 46,79km đường GTNT, 25,40 rãnh thoát nước, 13,36 km kênh mương bê tông nội đồng…\r\n\r\nbi thu tinh uy du le phat dong 60 ngay cao diem xay dung ntm o thach ha\r\n\r\nĐề án phát triển sản xuất tiếp tục triển khai thực hiện có hiệu quả, cơ cấu giống cay trồng vật nuôi phù hợp, tổ chức sản xuất đúng theo lịch thời vụ; thành lập mới 18 mô hình có doanh thu từ 300 triệu đồng trở lên, 7 THT, 3 HTX; nhân dân xuống giống 700 ha lạc vụ xuân đạt và 500 ha rau củ các loại; triển khai xây dựng 54 khu dân cư nông thôn mới kiểu mẫu, 381 vườn mẫu; xây dựng mới 9.836m bồn hoa, trồng mới hơn 10 vạn cây phân tán và làm 7.580m cây hàng rào xanh nhân dịp đầu xuân Mậu Tuất 2018…\r\n\r\nbi thu tinh uy du le phat dong 60 ngay cao diem xay dung ntm o thach ha\r\n\r\nbi thu tinh uy du le phat dong 60 ngay cao diem xay dung ntm o thach ha\r\n\r\nNgười dân thôn Yên Nghĩa (Thạch Lưu) tự nguyện phá dỡ hàng rào, làm đường GTNT\r\n\r\nVề xây dựng đô thị văn minh, thị trấn Thạch Hà đã tổ chức trồng mới hơn 1.200 cây Lim xẹt trên vỉa hè đường Lý Tự Trọng và hành lang một số tuyến đường nội tổ; lắp đặt 2km đường điện chiếu sáng công cộng; hoàn thành việc gắn biển số nhà cho các hộ dân; công tác vệ sinh môi trường được đảm bảo, tạo cảnh quan đô thị sạch đẹp, văn minh, phục vụ nhân dân vui Tết đón Xuân.\r\n\r\nbi thu tinh uy du le phat dong 60 ngay cao diem xay dung ntm o thach ha\r\n\r\nPhó Chủ tịch HĐND tỉnh Nguyễn Thị Nữ Y đánh trống phát động lễ ra quân 60 ngày xây dựng NTM\r\n\r\nĐợt ra quân 60 ngày cao điểm được xác định là khoảng thời gian quan trọng, nhân dân đang trong thời điênhàn rỗi sau gieo trồng vụ Xuân, thời tiết thuận lợi cho việc triển khai thực hiện các nội dung công việc như: xây dựng khu dân cư NTM kiểu mẫu, vườn mẫu, cải tạo vườn tạp, làm đường giao thông nông thôn, kênh mương nội đồng… Vì vậy, các xã, thị trấn cần tập trung cao độ, khẩn trương triển khai thực hiện các chỉ tiêu, kế hoạch đã đề ra.\r\n\r\nDịp này, UBND huyện Thạch Hà đã khen thưởng các tập thể, cá nhân có thành tích xuất sắc trong đợt ra quân 100 ngày cao điểm xây dựng nông thôn mới thời gian qua.', 'Bí thư Tỉnh ủy dự lễ phát động 60 ngày cao điểm xây dựng NTM ở Thạch Hà', '', 'inherit', 'closed', 'closed', '', '179-revision-v1', '', '', '2018-04-10 19:12:37', '2018-04-10 12:12:37', '', 179, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/179-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2018-04-10 20:10:34', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-10 20:10:34', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?page_id=182', 0, 'page', '', 0),
(183, 1, '2018-04-11 20:27:18', '2018-04-11 13:27:18', '', 'print', '', 'publish', 'closed', 'closed', '', 'print', '', '', '2018-04-11 20:29:45', '2018-04-11 13:29:45', '', 0, 'http://nongthon-wp.local/?page_id=183', 0, 'page', '', 0),
(184, 1, '2018-04-11 20:27:18', '2018-04-11 13:27:18', '', 'print', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2018-04-11 20:27:18', '2018-04-11 13:27:18', '', 183, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/183-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2018-04-11 21:34:10', '2018-04-11 14:34:10', '', 'savefile', '', 'publish', 'closed', 'closed', '', 'savefile', '', '', '2018-04-11 21:34:10', '2018-04-11 14:34:10', '', 0, 'http://nongthon-wp.local/?page_id=185', 0, 'page', '', 0),
(186, 1, '2018-04-11 21:34:10', '2018-04-11 14:34:10', '', 'savefile', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2018-04-11 21:34:10', '2018-04-11 14:34:10', '', 185, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/185-revision-v1/', 0, 'revision', '', 0),
(187, 1, '2018-04-12 11:39:29', '2018-04-12 04:39:29', 'Đất rộng, người thưa, điều kiện kinh tế chưa dư giả nhiều… nhưng người dân các xã vùng miền núi Hương Khê, Hương Sơn, Vũ Quang (Hà Tĩnh) đã biết khắc phục khó khăn, biến những cái bất lợi thành có lợi để xây dựng khu dân cư mẫu hiệu quả, bền vững.\r\n\r\n [caption id="attachment_48" align="alignnone" width="300"]<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/102d5083841t7659l0-300x200.jpg" alt="" width="300" height="200" class="size-medium wp-image-48" /> DCIM100MEDIADJI_0093.JPG[/caption]\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nThôn Nam Trà, xã Hương Trà (Hương Khê) là thôn xây dựng KDC kiểu mẫu đầu tiên của tỉnh Hà Tĩnh. Người dân nơi đây có ý thức tu sửa, chỉnh trang vườn hộ, tạo bờ rào cây xanh thẳng hàng, đẹp lối tạo cảnh quan đẹp, thân thiện, môi trường xanh, sạch.\r\n\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nĐến Nam Trà, du khách được chứng kiến hệ thống GTNT bằng bê tông rộng rãi, khép kín 100% trục thôn, ngõ xóm\r\n\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nToàn thôn đã trồng 16.000m hàng rào xanh và tạo sức lan tỏa rộng khắp trên toàn tỉnh. Đến nay, thôn Nam Trà đã đón trên 450 đoàn khách trong cả nước về tham quan và học tập kinh nghiệm.', 'Đắm say những khu dân cư NTM kiểu mẫu miền núi Hà Tĩnh', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-04-12 11:39:29', '2018-04-12 04:39:29', '', 47, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/47-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2018-04-12 13:38:13', '2018-04-12 06:38:13', 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Proin eget tortor risus.\r\n\r\nDonec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla porttitor accumsan tincidunt. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat.', 'Quisque velit nisi, pretium ut lacinia in, elementum id enim', '', 'publish', 'open', 'open', '', 'quisque-velit-nisi-pretium-ut-lacinia-in-elementum-id-enim', '', '', '2018-04-12 13:38:13', '2018-04-12 06:38:13', '', 0, 'http://dev5.local/?p=188', 0, 'post', '', 0),
(189, 1, '2018-04-12 13:38:13', '2018-04-12 06:38:13', 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Proin eget tortor risus.\r\n\r\nDonec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum porta. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla porttitor accumsan tincidunt. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat.', 'Quisque velit nisi, pretium ut lacinia in, elementum id enim', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2018-04-12 13:38:13', '2018-04-12 06:38:13', '', 188, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/188-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2018-04-12 13:38:55', '2018-04-12 06:38:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Nulla porttitor accumsan tincidunt. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit', '', '', '2018-04-12 13:38:55', '2018-04-12 06:38:55', '', 0, 'http://dev5.local/?p=190', 0, 'post', '', 0),
(191, 1, '2018-04-12 13:38:55', '2018-04-12 06:38:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Proin eget tortor risus. Nulla porttitor accumsan tincidunt. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada. Nulla porttitor accumsan tincidunt. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '', 'inherit', 'closed', 'closed', '', '190-revision-v1', '', '', '2018-04-12 13:38:55', '2018-04-12 06:38:55', '', 190, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/190-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2018-04-12 13:39:26', '2018-04-12 06:39:26', 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo eget malesuada. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Nulla quis lorem ut libero malesuada feugiat. Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim.\r\n\r\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.', 'Quisque velit nisi, pretium ut lacinia in, elementum id enim', '', 'publish', 'open', 'open', '', 'quisque-velit-nisi-pretium-ut-lacinia-in-elementum-id-enim-2', '', '', '2018-04-12 13:39:26', '2018-04-12 06:39:26', '', 0, 'http://dev5.local/?p=192', 0, 'post', '', 0),
(193, 1, '2018-04-12 13:39:26', '2018-04-12 06:39:26', 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo eget malesuada. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Nulla quis lorem ut libero malesuada feugiat. Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim.\r\n\r\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.', 'Quisque velit nisi, pretium ut lacinia in, elementum id enim', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-04-12 13:39:26', '2018-04-12 06:39:26', '', 192, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/192-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2018-04-12 13:39:53', '2018-04-12 06:39:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla quis lorem ut libero malesuada feugiat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Proin eget tortor risus. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.\r\n\r\nPraesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec sollicitudin molestie malesuada. Proin eget tortor risus. Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.', 'Praesent sapien massa, convallis a pellentesque nec.', '', 'publish', 'open', 'open', '', 'praesent-sapien-massa-convallis-a-pellentesque-nec', '', '', '2018-04-12 13:39:53', '2018-04-12 06:39:53', '', 0, 'http://dev5.local/?p=194', 0, 'post', '', 0),
(195, 1, '2018-04-12 13:39:53', '2018-04-12 06:39:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla quis lorem ut libero malesuada feugiat. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Proin eget tortor risus. Proin eget tortor risus. Donec sollicitudin molestie malesuada. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.\r\n\r\nPraesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec sollicitudin molestie malesuada. Proin eget tortor risus. Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.', 'Praesent sapien massa, convallis a pellentesque nec.', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2018-04-12 13:39:53', '2018-04-12 06:39:53', '', 194, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/194-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2018-04-13 15:04:26', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-13 15:04:26', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=laws&p=196', 0, 'laws', '', 0),
(197, 1, '2018-04-13 15:05:06', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-13 15:05:06', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=van-ban&p=197', 0, 'van-ban', '', 0),
(198, 1, '2018-04-13 15:05:59', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-13 15:05:59', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=laws&p=198', 0, 'laws', '', 0),
(199, 1, '2018-04-13 15:09:57', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-13 15:09:57', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=laws&p=199', 0, 'laws', '', 0),
(200, 1, '2018-04-13 15:10:34', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-13 15:10:34', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=laws&p=200', 0, 'laws', '', 0),
(201, 1, '2018-04-13 15:20:02', '2018-04-13 08:20:02', '', 'Quyết định số 43/2012-QĐ-UBND', 'Ban hành Quy định chính sách khuyến khích sản xuất giống phát triển một số sản phẩm hàng hóa nông nghiệp chủ lực giai đoạn 2012-2015', 'publish', 'closed', 'closed', '', 'quyet-dinh-so-43-2012-qd-ubnd', '', '', '2018-04-13 15:20:02', '2018-04-13 08:20:02', '', 0, 'http://dev5.local/?post_type=laws&#038;p=201', 0, 'laws', '', 0),
(202, 1, '2018-04-13 15:20:02', '2018-04-13 08:20:02', '', 'Quyết định số 43/2012-QĐ-UBND', 'Ban hành Quy định chính sách khuyến khích sản xuất giống phát triển một số sản phẩm hàng hóa nông nghiệp chủ lực giai đoạn 2012-2015', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2018-04-13 15:20:02', '2018-04-13 08:20:02', '', 201, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/201-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2018-04-13 17:19:51', '2018-04-13 10:19:51', 'Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuad', 'UBND sdsd asdasd dsds sad', '', 'publish', 'open', 'open', '', 'ubnd-sdsd-asdasd-dsds-sad', '', '', '2018-04-13 17:19:51', '2018-04-13 10:19:51', '', 0, 'http://dev5.local/?p=203', 0, 'post', '', 0),
(204, 1, '2018-04-13 17:19:51', '2018-04-13 10:19:51', 'Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuad', 'UBND sdsd asdasd dsds sad', '', 'inherit', 'closed', 'closed', '', '203-revision-v1', '', '', '2018-04-13 17:19:51', '2018-04-13 10:19:51', '', 203, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/203-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2018-04-14 09:55:15', '2018-04-14 02:55:15', '', 'Thông tư 41/2013/TT-BNNPTNT', 'Hướng dẫn bộ tiêu chí quốc gia về xây dựng nông thôn mới', 'publish', 'closed', 'closed', '', 'thong-tu-41-2013-tt-bnnptnt', '', '', '2018-04-14 09:55:15', '2018-04-14 02:55:15', '', 0, 'http://nongthon-wp.local/?post_type=laws&#038;p=205', 0, 'laws', '', 0),
(206, 1, '2018-04-14 09:54:47', '2018-04-14 02:54:47', '', '1318-thanh-lap-ban-chi-dao-thuc-hien-nghi-quyet-26', '', 'inherit', 'open', 'closed', '', '1318-thanh-lap-ban-chi-dao-thuc-hien-nghi-quyet-26', '', '', '2018-04-14 09:54:47', '2018-04-14 02:54:47', '', 205, 'http://nongthon-wp.local/wp-content/uploads/2018/04/1318-thanh-lap-ban-chi-dao-thuc-hien-nghi-quyet-26.pdf', 0, 'attachment', 'application/pdf', 0),
(207, 1, '2018-04-14 09:55:15', '2018-04-14 02:55:15', '', 'Thông tư 41/2013/TT-BNNPTNT', 'Hướng dẫn bộ tiêu chí quốc gia về xây dựng nông thôn mới', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2018-04-14 09:55:15', '2018-04-14 02:55:15', '', 205, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/205-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2018-04-14 09:57:22', '2018-04-14 02:57:22', '', 'Thông tư 13/2011/TTLT-BXD- BNNPTNT-BTN&MT', 'THÔNG TƯ LIÊN TỊCH QUY ĐỊNH VIỆC LẬP, THẨM ĐỊNH, PHÊ DUYỆT', 'publish', 'closed', 'closed', '', 'thong-tu-13-2011-ttlt-bxd-bnnptnt-btnmt', '', '', '2018-04-14 09:57:22', '2018-04-14 02:57:22', '', 0, 'http://nongthon-wp.local/?post_type=laws&#038;p=208', 0, 'laws', '', 0),
(209, 1, '2018-04-14 09:56:55', '2018-04-14 02:56:55', '', 'thong-tu-13-quy-dinh-viec-lap-tham-dinh-phe-duyet-quy-hoach-xay-dung-xa-nong-thon-moi', '', 'inherit', 'open', 'closed', '', 'thong-tu-13-quy-dinh-viec-lap-tham-dinh-phe-duyet-quy-hoach-xay-dung-xa-nong-thon-moi', '', '', '2018-04-14 09:56:55', '2018-04-14 02:56:55', '', 208, 'http://nongthon-wp.local/wp-content/uploads/2018/04/thong-tu-13-quy-dinh-viec-lap-tham-dinh-phe-duyet-quy-hoach-xay-dung-xa-nong-thon-moi.doc', 0, 'attachment', 'application/msword', 0),
(210, 1, '2018-04-14 09:57:22', '2018-04-14 02:57:22', '', 'Thông tư 13/2011/TTLT-BXD- BNNPTNT-BTN&MT', 'THÔNG TƯ LIÊN TỊCH QUY ĐỊNH VIỆC LẬP, THẨM ĐỊNH, PHÊ DUYỆT', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2018-04-14 09:57:22', '2018-04-14 02:57:22', '', 208, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/208-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2018-04-14 10:02:43', '2018-04-14 03:02:43', '', 'Quyết định 695/QĐ - TTtg', 'Về việc kiện toàn các đoàn công tác thực hiện nhiệm vụ chỉ...', 'publish', 'closed', 'closed', '', 'quyet-dinh-695-qd-tttg', '', '', '2018-04-14 10:02:43', '2018-04-14 03:02:43', '', 0, 'http://nongthon-wp.local/?post_type=laws&#038;p=211', 0, 'laws', '', 0),
(212, 1, '2018-04-14 10:02:20', '2018-04-14 03:02:20', '', 'quyet dinh1', '', 'inherit', 'open', 'closed', '', 'quyet-dinh1', '', '', '2018-04-14 10:02:20', '2018-04-14 03:02:20', '', 211, 'http://nongthon-wp.local/wp-content/uploads/2018/04/quyet-dinh1.docx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0),
(213, 1, '2018-04-14 10:02:43', '2018-04-14 03:02:43', '', 'Quyết định 695/QĐ - TTtg', 'Về việc kiện toàn các đoàn công tác thực hiện nhiệm vụ chỉ...', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2018-04-14 10:02:43', '2018-04-14 03:02:43', '', 211, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/211-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2018-04-14 10:13:10', '2018-04-14 03:13:10', '', 'Số 303 -QĐ-TU', 'Về việc kiện toàn các đoàn công tác thực hiện nhiệm vụ chỉ sd sd sd', 'publish', 'closed', 'closed', '', 'so-303-qd-tu', '', '', '2018-04-15 18:47:49', '2018-04-15 11:47:49', '', 0, 'http://nongthon-wp.local/?post_type=laws&#038;p=214', 0, 'laws', '', 0),
(215, 1, '2018-04-14 10:12:51', '2018-04-14 03:12:51', '', 'aa', '', 'inherit', 'open', 'closed', '', 'aa', '', '', '2018-04-14 10:12:51', '2018-04-14 03:12:51', '', 214, 'http://nongthon-wp.local/wp-content/uploads/2018/04/aa.txt', 0, 'attachment', 'text/plain', 0),
(216, 1, '2018-04-14 10:13:10', '2018-04-14 03:13:10', '', 'Số 303 -QĐ-TU', 'Về việc kiện toàn các đoàn công tác thực hiện nhiệm vụ chỉ...', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2018-04-14 10:13:10', '2018-04-14 03:13:10', '', 214, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/214-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2018-04-15 18:30:50', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-15 18:30:50', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?p=217', 0, 'post', '', 0),
(218, 1, '2018-04-15 18:31:12', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-15 18:31:12', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?p=218', 0, 'post', '', 0),
(219, 1, '2018-04-15 18:32:20', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-15 18:32:20', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?p=219', 0, 'post', '', 0),
(220, 1, '2018-04-15 18:32:27', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-15 18:32:27', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?p=220', 0, 'post', '', 0),
(221, 1, '2018-04-15 18:38:12', '2018-04-15 11:38:12', '', 'fef è è', '', 'publish', 'closed', 'closed', '', 'fef-e-e', '', '', '2018-04-15 18:38:12', '2018-04-15 11:38:12', '', 0, 'http://nongthon-wp.local/?post_type=laws&#038;p=221', 0, 'laws', '', 0),
(222, 1, '2018-04-15 18:38:12', '2018-04-15 11:38:12', '', 'fef è è', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2018-04-15 18:38:12', '2018-04-15 11:38:12', '', 221, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/221-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2018-04-15 18:47:49', '2018-04-15 11:47:49', '', 'Số 303 -QĐ-TU', 'Về việc kiện toàn các đoàn công tác thực hiện nhiệm vụ chỉ sd sd sd', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2018-04-15 18:47:49', '2018-04-15 11:47:49', '', 214, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/214-revision-v1/', 0, 'revision', '', 0),
(224, 1, '2018-04-15 21:20:51', '2018-04-15 14:20:51', '', 'album1', '', 'publish', 'closed', 'closed', '', 'album1', '', '', '2018-04-15 22:32:30', '2018-04-15 15:32:30', '', 0, 'http://nongthon-wp.local/?post_type=envira&#038;p=224', 0, 'envira', '', 0),
(225, 1, '2018-04-15 21:20:27', '2018-04-15 14:20:27', '', '013c846b776f9931c07e', '', 'inherit', 'open', 'closed', '', '013c846b776f9931c07e-2', '', '', '2018-04-15 21:20:27', '2018-04-15 14:20:27', '', 224, 'http://nongthon-wp.local/wp-content/uploads/2018/04/013c846b776f9931c07e-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2018-04-15 21:20:46', '2018-04-15 14:20:46', '', '77d0093609t7970l0', '', 'inherit', 'open', 'closed', '', '77d0093609t7970l0-2', '', '', '2018-04-15 21:20:46', '2018-04-15 14:20:46', '', 224, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2018-04-15 21:22:41', '2018-04-15 14:22:41', '[envira-gallery id="224"]\r\n', 'Thư viện ảnh', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-15 21:22:41', '2018-04-15 14:22:41', '', 11, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/11-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2018-04-15 21:25:26', '2018-04-15 14:25:26', 'sdfsdfsdf\r\n\r\n[envira-gallery id="224"]\r\n\r\nsdfsdfsdf', 'Thư viện ảnh', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-15 21:25:26', '2018-04-15 14:25:26', '', 11, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/11-revision-v1/', 0, 'revision', '', 0),
(230, 1, '2018-04-15 21:30:54', '2018-04-15 14:30:54', '[envira-gallery id="224"]', 'Thư viện ảnh', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-15 21:30:54', '2018-04-15 14:30:54', '', 11, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/11-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2018-04-15 21:33:29', '2018-04-15 14:33:29', '', '77d0114923t8813l2', '', 'inherit', 'open', 'closed', '', '77d0114923t8813l2-2', '', '', '2018-04-15 21:33:29', '2018-04-15 14:33:29', '', 224, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d0114923t8813l2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(233, 1, '2018-04-15 21:33:30', '2018-04-15 14:33:30', '', '77d3055028t3182l0', '', 'inherit', 'open', 'closed', '', '77d3055028t3182l0-2', '', '', '2018-04-15 21:33:30', '2018-04-15 14:33:30', '', 224, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d3055028t3182l0-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(234, 1, '2018-04-15 21:33:32', '2018-04-15 14:33:32', '', '77d5124827t5546l3', '', 'inherit', 'open', 'closed', '', '77d5124827t5546l3-2', '', '', '2018-04-15 21:33:32', '2018-04-15 14:33:32', '', 224, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d5124827t5546l3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(235, 1, '2018-04-15 21:33:33', '2018-04-15 14:33:33', '', '77d6121625t1758l0', '', 'inherit', 'open', 'closed', '', '77d6121625t1758l0-2', '', '', '2018-04-15 21:33:33', '2018-04-15 14:33:33', '', 224, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d6121625t1758l0-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2018-04-15 22:11:35', '2018-04-15 15:11:35', '', 'Field in album', '', 'trash', 'closed', 'closed', '', 'acf_field-in-album__trashed', '', '', '2018-04-15 22:12:14', '2018-04-15 15:12:14', '', 0, 'http://nongthon-wp.local/?post_type=acf&#038;p=236', 0, 'acf', '', 0),
(237, 1, '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19nYWxsZXJ5XC9zdGF0aWNcL3RodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwiYWxpYXNlcyI6WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4yLjU0IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImltYWdlc19wZXJfcGFnZSI6IjIwIiwibnVtYmVyX29mX2NvbHVtbnMiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsInNob3dfYWxsX2luX2xpZ2h0Ym94IjowLCJhamF4X3BhZ2luYXRpb24iOjAsInVzZV9pbWFnZWJyb3dzZXJfZWZmZWN0IjowLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfbm9faW1hZ2VzX2Vycm9yIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInNob3dfc2xpZGVzaG93X2xpbmsiOjEsInNsaWRlc2hvd19saW5rX3RleHQiOiJbU2hvdyBzbGlkZXNob3ddIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Thumbnails', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcL25leHRnZW4tZ2FsbGVyeVwvcHJvZHVjdHNcL3Bob3RvY3JhdGlfbmV4dGdlblwvbW9kdWxlc1wvbmV4dGdlbl9iYXNpY19nYWxsZXJ5XC9zdGF0aWNcL3RodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwiYWxpYXNlcyI6WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0sIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4yLjU0IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImltYWdlc19wZXJfcGFnZSI6IjIwIiwibnVtYmVyX29mX2NvbHVtbnMiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsInNob3dfYWxsX2luX2xpZ2h0Ym94IjowLCJhamF4X3BhZ2luYXRpb24iOjAsInVzZV9pbWFnZWJyb3dzZXJfZWZmZWN0IjowLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfbm9faW1hZ2VzX2Vycm9yIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsInNob3dfc2xpZGVzaG93X2xpbmsiOjEsInNsaWRlc2hvd19saW5rX3RleHQiOiJbU2hvdyBzbGlkZXNob3ddIiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://dev5.local/?post_type=display_type&p=237', 0, 'display_type', '', 0),
(238, 1, '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcL3N0YXRpY1wvc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4yLjU0IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfd2lkdGgiOjYwMCwiZ2FsbGVyeV9oZWlnaHQiOjQwMCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwiY3ljbGVfaW50ZXJ2YWwiOjEwLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiZWZmZWN0X2NvZGUiOiJjbGFzcz1cIm5nZy1mYW5jeWJveFwiIHJlbD1cIiVHQUxMRVJZX05BTUUlXCIiLCJzaG93X3RodW1ibmFpbF9saW5rIjoxLCJ0aHVtYm5haWxfbGlua190ZXh0IjoiW1Nob3cgdGh1bWJuYWlsc10iLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Slideshow', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcL3N0YXRpY1wvc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwiYWxpYXNlcyI6WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4yLjU0IiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcnlfd2lkdGgiOjYwMCwiZ2FsbGVyeV9oZWlnaHQiOjQwMCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwiY3ljbGVfaW50ZXJ2YWwiOjEwLCJjeWNsZV9lZmZlY3QiOiJmYWRlIiwiZWZmZWN0X2NvZGUiOiJjbGFzcz1cIm5nZy1mYW5jeWJveFwiIHJlbD1cIiVHQUxMRVJZX05BTUUlXCIiLCJzaG93X3RodW1ibmFpbF9saW5rIjoxLCJ0aHVtYm5haWxfbGlua190ZXh0IjoiW1Nob3cgdGh1bWJuYWlsc10iLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?post_type=display_type&p=238', 0, 'display_type', '', 0),
(239, 1, '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3Nlclwvc3RhdGljXC9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMjAsImFsaWFzZXMiOlsiYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW1hZ2Vicm93c2VyIiwibmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMi41NCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic ImageBrowser', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3Nlclwvc3RhdGljXC9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMjAsImFsaWFzZXMiOlsiYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW1hZ2Vicm93c2VyIiwibmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXIiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMi41NCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?post_type=display_type&p=239', 0, 'display_type', '', 0),
(240, 1, '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1wvc3RhdGljXC9wcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJoaWRkZW5fZnJvbV9pZ3ciOnRydWUsImFsaWFzZXMiOlsiYmFzaWNfc2luZ2xlcGljIiwic2luZ2xlcGljIiwibmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMi41NCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic SinglePic', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1wvc3RhdGljXC9wcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJoaWRkZW5fZnJvbV9pZ3ciOnRydWUsImFsaWFzZXMiOlsiYmFzaWNfc2luZ2xlcGljIiwic2luZ2xlcGljIiwibmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiXSwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zaW5nbGVwaWMiLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMi41NCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://dev5.local/?post_type=display_type&p=240', 0, 'display_type', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(241, 1, '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfdGFnY2xvdWRcL3N0YXRpY1wvcHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwiYWxpYXNlcyI6WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjIuNTQiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsIm51bWJlciI6NDUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic TagCloud', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfdGFnY2xvdWRcL3N0YXRpY1wvcHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwiYWxpYXNlcyI6WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RhZ2Nsb3VkIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjIuNTQiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsIm51bWJlciI6NDUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?post_type=display_type&p=241', 0, 'display_type', '', 0),
(242, 1, '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfYWxidW1cL3N0YXRpY1wvY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsImFsaWFzZXMiOlsiYmFzaWNfY29tcGFjdF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfYWxidW0iLCJiYXNpY19hbGJ1bV9jb21wYWN0IiwiY29tcGFjdF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMi41NCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic Compact Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXC9uZXh0Z2VuLWdhbGxlcnlcL3Byb2R1Y3RzXC9waG90b2NyYXRpX25leHRnZW5cL21vZHVsZXNcL25leHRnZW5fYmFzaWNfYWxidW1cL3N0YXRpY1wvY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsImFsaWFzZXMiOlsiYmFzaWNfY29tcGFjdF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfYWxidW0iLCJiYXNpY19hbGJ1bV9jb21wYWN0IiwiY29tcGFjdF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2NvbXBhY3RfYWxidW0iLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMi41NCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIiLCJfZXJyb3JzIjpbXX0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiaGlkZGVuX2Zyb21faWd3IjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?post_type=display_type&p=242', 0, 'display_type', '', 0),
(243, 1, '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX2FsYnVtXC9zdGF0aWNcL2V4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwiYWxpYXNlcyI6WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjIuNTQiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOnRydWUsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Extended Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-16 09:29:43', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlwvbmV4dGdlbi1nYWxsZXJ5XC9wcm9kdWN0c1wvcGhvdG9jcmF0aV9uZXh0Z2VuXC9tb2R1bGVzXC9uZXh0Z2VuX2Jhc2ljX2FsYnVtXC9zdGF0aWNcL2V4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwiYWxpYXNlcyI6WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJdLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjIuNTQiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOnRydWUsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsImhpZGRlbl9mcm9tX2lndyI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://dev5.local/?post_type=display_type&p=243', 0, 'display_type', '', 0),
(244, 1, '2018-04-16 09:34:22', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 09:34:22', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=244', 0, 'ngg_gallery', '', 0),
(245, 1, '2018-04-16 09:34:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 09:34:23', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=245', 0, 'ngg_pictures', '', 0),
(246, 1, '2018-04-16 10:02:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 10:02:45', '2018-04-16 03:02:45', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=246', 0, 'ngg_pictures', '', 0),
(247, 1, '2018-04-16 10:02:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 10:02:45', '2018-04-16 03:02:45', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=247', 0, 'ngg_gallery', '', 0),
(248, 1, '2018-04-16 09:34:28', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 09:34:28', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=248', 0, 'ngg_pictures', '', 0),
(249, 1, '2018-04-16 10:02:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 10:02:45', '2018-04-16 03:02:45', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=249', 0, 'ngg_pictures', '', 0),
(250, 1, '2018-04-16 09:34:31', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 09:34:31', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=250', 0, 'ngg_pictures', '', 0),
(251, 1, '2018-04-16 10:02:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 10:02:45', '2018-04-16 03:02:45', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=251', 0, 'ngg_pictures', '', 0),
(252, 1, '2018-04-16 09:34:34', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 09:34:34', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=252', 0, 'ngg_pictures', '', 0),
(253, 1, '2018-04-16 10:02:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 10:02:45', '2018-04-16 03:02:45', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=253', 0, 'ngg_pictures', '', 0),
(254, 1, '2018-04-16 09:34:37', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 09:34:37', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=254', 0, 'ngg_pictures', '', 0),
(255, 1, '2018-04-16 10:02:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 10:02:45', '2018-04-16 03:02:45', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=255', 0, 'ngg_pictures', '', 0),
(256, 1, '2018-04-16 09:34:40', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 09:34:40', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=256', 0, 'ngg_pictures', '', 0),
(257, 1, '2018-04-16 10:02:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 10:02:45', '2018-04-16 03:02:45', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=257', 0, 'ngg_pictures', '', 0),
(258, 1, '2018-04-16 09:34:42', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 09:34:42', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=258', 0, 'ngg_pictures', '', 0),
(259, 1, '2018-04-16 10:02:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2018-04-16 10:02:45', '2018-04-16 03:02:45', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://dev5.local/?p=259', 0, 'ngg_pictures', '', 0),
(260, 1, '2018-04-16 20:24:31', '2018-04-16 13:24:31', '[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="4" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="0" slideshow_link_text="[Show slideshow]" template="/wp-content/plugins/nextgen-gallery/products/photocrati_nextgen/modules/ngglegacy/view/gallery-caption.php" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Thư viện ảnh', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2018-04-16 20:24:31', '2018-04-16 13:24:31', '', 11, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/11-autosave-v1/', 0, 'revision', '', 0),
(261, 1, '2018-04-16 09:53:09', '2018-04-16 02:53:09', '[ngg_images source="galleries" container_ids="1" display_type="photocrati-nextgen_basic_thumbnails" override_thumbnail_settings="0" thumbnail_width="240" thumbnail_height="160" thumbnail_crop="1" images_per_page="20" number_of_columns="4" ajax_pagination="0" show_all_in_lightbox="0" use_imagebrowser_effect="0" show_slideshow_link="0" slideshow_link_text="[Show slideshow]" template="/media/sf_sources/nihongo_test/nongthon-wp/wp-content/plugins/nextgen-gallery/products/photocrati_nextgen/modules/ngglegacy/view/gallery-caption.php" order_by="sortorder" order_direction="ASC" returns="included" maximum_entity_count="500"]', 'Thư viện ảnh', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-16 09:53:09', '2018-04-16 02:53:09', '', 11, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/11-revision-v1/', 0, 'revision', '', 0),
(262, 1, '2018-04-16 13:59:11', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 13:59:11', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=faq&p=262', 0, 'faq', '', 0),
(263, 1, '2018-04-16 14:55:03', '2018-04-16 07:55:03', 'fefefefef\r\n\r\nádasdasd\r\n\r\n[caption id="attachment_65" align="aligncenter" width="300"]<img class="size-medium wp-image-65" src="http://dev5.local/wp-content/uploads/2018/04/77d3055028t3182l0-300x200.jpg" alt="bo sung them thu tuc hanh chinh dac biet trong linh vuc nguoi dan quan tam" width="300" height="200"> Đại biểu tham quan mô hình hoạt động tại Trung tâm Hành chính công TX Hồng Lĩnh[/caption]', 'fefefef', '', 'publish', 'closed', 'closed', '', 'fefefef', '', '', '2018-04-16 16:44:35', '2018-04-16 09:44:35', '', 0, 'http://dev5.local/?post_type=faq&#038;p=263', 0, 'faq', '', 0),
(264, 1, '2018-04-16 14:26:19', '2018-04-16 07:26:19', '', 'field in FAQ', '', 'publish', 'closed', 'closed', '', 'acf_field-in-faq', '', '', '2018-04-16 16:34:56', '2018-04-16 09:34:56', '', 0, 'http://dev5.local/?post_type=acf&#038;p=264', 0, 'acf', '', 0),
(265, 1, '2018-04-16 14:26:28', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-16 14:26:28', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=faq&p=265', 0, 'faq', '', 0),
(266, 1, '2018-04-16 14:55:03', '2018-04-16 07:55:03', 'fefefefef', 'fefefef', '', 'inherit', 'closed', 'closed', '', '263-revision-v1', '', '', '2018-04-16 14:55:03', '2018-04-16 07:55:03', '', 263, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/263-revision-v1/', 0, 'revision', '', 0),
(268, 1, '2018-04-16 16:22:27', '2018-04-16 09:22:27', 'fefefefef', 'fefefef', '', 'inherit', 'closed', 'closed', '', '263-revision-v1', '', '', '2018-04-16 16:22:27', '2018-04-16 09:22:27', '', 263, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/263-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2018-04-16 16:35:42', '2018-04-16 09:35:42', 'fefefefef\r\n\r\nádasdasd\r\n\r\n[caption id="attachment_65" align="alignnone" width="300"]<img class="size-medium wp-image-65" src="http://dev5.local/wp-content/uploads/2018/04/77d3055028t3182l0-300x200.jpg" alt="bo sung them thu tuc hanh chinh dac biet trong linh vuc nguoi dan quan tam" width="300" height="200"> Đại biểu tham quan mô hình hoạt động tại Trung tâm Hành chính công TX Hồng Lĩnh[/caption]', 'fefefef', '', 'inherit', 'closed', 'closed', '', '263-revision-v1', '', '', '2018-04-16 16:35:42', '2018-04-16 09:35:42', '', 263, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/263-revision-v1/', 0, 'revision', '', 0),
(270, 1, '2018-04-16 16:37:48', '2018-04-16 09:37:48', 'fefefefef\n\nádasdasd\n\n[caption id="attachment_65" align="aligncenter" width="300"]<img class="size-medium wp-image-65" src="http://dev5.local/wp-content/uploads/2018/04/77d3055028t3182l0-300x200.jpg" alt="bo sung them thu tuc hanh chinh dac biet trong linh vuc nguoi dan quan tam" width="300" height="200"> Đại biểu tham quan mô hình hoạt động tại Trung tâm Hành chính công TX Hồng Lĩnh[/caption]', 'fefefef', '', 'inherit', 'closed', 'closed', '', '263-autosave-v1', '', '', '2018-04-16 16:37:48', '2018-04-16 09:37:48', '', 263, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/263-autosave-v1/', 0, 'revision', '', 0),
(271, 1, '2018-04-16 16:44:35', '2018-04-16 09:44:35', 'fefefefef\r\n\r\nádasdasd\r\n\r\n[caption id="attachment_65" align="aligncenter" width="300"]<img class="size-medium wp-image-65" src="http://dev5.local/wp-content/uploads/2018/04/77d3055028t3182l0-300x200.jpg" alt="bo sung them thu tuc hanh chinh dac biet trong linh vuc nguoi dan quan tam" width="300" height="200"> Đại biểu tham quan mô hình hoạt động tại Trung tâm Hành chính công TX Hồng Lĩnh[/caption]', 'fefefef', '', 'inherit', 'closed', 'closed', '', '263-revision-v1', '', '', '2018-04-16 16:44:35', '2018-04-16 09:44:35', '', 263, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/263-revision-v1/', 0, 'revision', '', 0),
(273, 1, '2018-04-16 16:45:52', '2018-04-16 09:45:52', '', 'Đặt câu hỏi', '', 'publish', 'closed', 'closed', '', 'cau-hoi', '', '', '2018-04-16 16:54:35', '2018-04-16 09:54:35', '', 0, 'http://dev5.local/?page_id=273', 0, 'page', '', 0),
(274, 1, '2018-04-16 16:45:52', '2018-04-16 09:45:52', '', 'Câu hỏi', '', 'inherit', 'closed', 'closed', '', '273-revision-v1', '', '', '2018-04-16 16:45:52', '2018-04-16 09:45:52', '', 273, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/273-revision-v1/', 0, 'revision', '', 0),
(276, 1, '2018-04-16 16:54:35', '2018-04-16 09:54:35', '', 'Đặt câu hỏi', '', 'inherit', 'closed', 'closed', '', '273-revision-v1', '', '', '2018-04-16 16:54:35', '2018-04-16 09:54:35', '', 273, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/273-revision-v1/', 0, 'revision', '', 0),
(277, 1, '2018-04-16 21:39:08', '2018-04-16 14:39:08', '', 'fefefw', '', 'publish', 'closed', 'closed', '', 'fefefw', '', '', '2018-04-16 21:39:08', '2018-04-16 14:39:08', '', 0, 'http://nongthon-wp.local/faq/fefefw/', 0, 'faq', '', 0),
(278, 1, '2018-04-16 21:39:28', '2018-04-16 14:39:28', '', '', '', 'publish', 'closed', 'closed', '', '278', '', '', '2018-04-16 21:39:28', '2018-04-16 14:39:28', '', 0, 'http://nongthon-wp.local/faq/278/', 0, 'faq', '', 0),
(279, 1, '2018-04-16 21:50:01', '2018-04-16 14:50:01', '', 'fefefw', '', 'publish', 'closed', 'closed', '', 'fefefw-2', '', '', '2018-04-16 21:50:01', '2018-04-16 14:50:01', '', 0, 'http://nongthon-wp.local/faq/fefefw-2/', 0, 'faq', '', 0),
(280, 1, '2018-04-16 21:50:16', '2018-04-16 14:50:16', '', '', '', 'publish', 'closed', 'closed', '', '280', '', '', '2018-04-16 21:50:16', '2018-04-16 14:50:16', '', 0, 'http://nongthon-wp.local/faq/280/', 0, 'faq', '', 0),
(281, 1, '2018-04-16 22:03:51', '2018-04-16 15:03:51', 'dsf sdf\r\ndsfs sdf\r\nsdf', 'ádsad', '', 'publish', 'closed', 'closed', '', 'adsad', '', '', '2018-04-16 22:06:06', '2018-04-16 15:06:06', '', 0, 'http://nongthon-wp.local/faq/adsad/', 0, 'faq', '', 0),
(282, 1, '2018-04-16 22:06:06', '2018-04-16 15:06:06', 'dsf sdf\r\ndsfs sdf\r\nsdf', 'ádsad', '', 'inherit', 'closed', 'closed', '', '281-revision-v1', '', '', '2018-04-16 22:06:06', '2018-04-16 15:06:06', '', 281, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/281-revision-v1/', 0, 'revision', '', 0),
(283, 1, '2018-04-16 22:08:42', '2018-04-16 15:08:42', '', 'rểt tert', '', 'publish', 'closed', 'closed', '', 'ret-tert', '', '', '2018-04-16 22:08:42', '2018-04-16 15:08:42', '', 0, 'http://nongthon-wp.local/faq/ret-tert/', 0, 'faq', '', 0),
(284, 1, '2018-04-16 22:09:12', '2018-04-16 15:09:12', '', 'rểt tert', '', 'publish', 'closed', 'closed', '', 'ret-tert-2', '', '', '2018-04-16 22:09:12', '2018-04-16 15:09:12', '', 0, 'http://nongthon-wp.local/faq/ret-tert-2/', 0, 'faq', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ratings`
--

CREATE TABLE IF NOT EXISTS `wp_ratings` (
  `rating_id` int(11) NOT NULL,
  `rating_postid` int(11) NOT NULL,
  `rating_posttitle` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating_rating` int(2) NOT NULL,
  `rating_timestamp` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating_ip` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating_host` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating_username` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rating_userid` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_ratings`
--

INSERT INTO `wp_ratings` (`rating_id`, `rating_postid`, `rating_posttitle`, `rating_rating`, `rating_timestamp`, `rating_ip`, `rating_host`, `rating_username`, `rating_userid`) VALUES
(1, 64, 'Bổ sung thêm thủ tục hành chính, đặc biệt trong lĩnh vực người dân quan tâm', 3, '1523374830', '10.0.2.2', 'gateway', 'admin', 1),
(2, 64, 'Bổ sung thêm thủ tục hành chính, đặc biệt trong lĩnh vực người dân quan tâm', 4, '1523374977', '10.0.2.2', 'gateway', 'admin', 1),
(3, 64, 'Bổ sung thêm thủ tục hành chính, đặc biệt trong lĩnh vực người dân quan tâm', 2, '1523374988', '10.0.2.2', 'gateway', 'admin', 1),
(4, 35, 'Chung kết Hội thi Khu dân cư NTM kiểu mẫu, vườn mẫu lần thứ nhất', 4, '1523529678', '10.0.2.2', 'gateway', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_exclusions`
--

CREATE TABLE IF NOT EXISTS `wp_statistics_exclusions` (
  `ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_historical`
--

CREATE TABLE IF NOT EXISTS `wp_statistics_historical` (
  `ID` bigint(20) NOT NULL,
  `category` varchar(25) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `value` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_pages`
--

CREATE TABLE IF NOT EXISTS `wp_statistics_pages` (
  `uri` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_search`
--

CREATE TABLE IF NOT EXISTS `wp_statistics_search` (
  `ID` bigint(20) NOT NULL,
  `last_counter` date NOT NULL,
  `engine` varchar(64) NOT NULL,
  `host` varchar(255) DEFAULT NULL,
  `words` varchar(255) DEFAULT NULL,
  `visitor` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_useronline`
--

CREATE TABLE IF NOT EXISTS `wp_statistics_useronline` (
  `ID` int(11) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `timestamp` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_visit`
--

CREATE TABLE IF NOT EXISTS `wp_statistics_visit` (
  `ID` int(11) NOT NULL,
  `last_visit` datetime NOT NULL,
  `last_counter` date NOT NULL,
  `visit` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_statistics_visit`
--

INSERT INTO `wp_statistics_visit` (`ID`, `last_visit`, `last_counter`, `visit`) VALUES
(1, '2018-04-05 06:49:48', '2018-04-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_visitor`
--

CREATE TABLE IF NOT EXISTS `wp_statistics_visitor` (
  `ID` int(11) NOT NULL,
  `last_counter` date NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `UAString` varchar(255) DEFAULT NULL,
  `ip` varchar(60) NOT NULL,
  `location` varchar(10) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `honeypot` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_statistics_visitor`
--

INSERT INTO `wp_statistics_visitor` (`ID`, `last_counter`, `referred`, `agent`, `platform`, `version`, `UAString`, `ip`, `location`, `hits`, `honeypot`) VALUES
(1, '2018-04-05', 'http://dev5.local/wp-admin/plugin-install.php?s=WP+Statistics&tab=search&type=term', 'Chrome', 'Windows', '65.0.3325.181', NULL, '10.0.2.2', '000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Điểm báo hàng ngày về NTM', 'diem-bao-hang-ngay-ve-ntm', 0, 3),
(2, 'Hệ thống tổ chức', 'he-thong-to-chuc', 0, 1),
(3, 'Tin tức nông thôn mới', 'tin-tuc-nong-thon-moi', 0, 2),
(4, 'Cấp tỉnh', 'cap-tinh', 0, 1),
(5, 'Cấp Huyện', 'cap-huyen', 0, 2),
(6, 'Tiêu điểm', 'tieu-diem', 0, 1),
(7, 'Tin trong tỉnh', 'tin-trong-tinh', 0, 2),
(8, 'aab', 'aab', 0, 0),
(9, 'gr', 'gr', 0, 0),
(10, 'menu-top', 'menu-top', 0, 0),
(11, 'news', 'news', 0, 1),
(12, 'Điều hành - Tác nghiệp', 'dieu-hanh-tac-nghiep', 0, 4),
(13, 'Giấy mời', 'giay-moi', 0, 1),
(14, 'Lịch công tác', 'lich-cong-tac', 0, 2),
(15, 'Tài liệu các cuộc họp', 'tai-lieu-cac-cuoc-hop', 0, 3),
(16, 'Thông báo', 'thong-bao', 0, 4),
(17, 'Hoạt động các ban ngành', 'hoat-dong-cac-ban-nganh', 0, 5),
(18, 'Ngành nông nghiệp', 'nganh-nong-nghiep', 0, 1),
(19, 'laws', 'laws', 0, 0),
(20, 'sản phẩm 1', 'san-pham-1', 0, 0),
(22, 'Chính phủ', 'chinh-phu', 0, 0),
(23, 'Bộ Nông nghiệp và PTNT', 'bo-nong-nghiep-va-ptnt', 0, 0),
(24, 'Sở Nông nghiệp và PTNT', 'so-nong-nghiep-va-ptnt', 0, 0),
(25, 'UBND Tỉnh Hà Tĩnh', 'ubnd-tinh-ha-tinh', 0, 0),
(26, 'Công Văn', 'cong-van', 0, 0),
(27, 'Quyết định', 'quyet-dinh', 0, 0),
(28, 'Nông nghiệp', 'nong-nghiep', 0, 0),
(29, 'Nông thôn mới', 'nong-thon-moi', 0, 0),
(30, 'Điều phối', 'dieu-phoi', 0, 0),
(31, 'Hành chính', 'hanh-chinh', 0, 0),
(32, 'tag1', 'tag1', 0, 0),
(33, 'tag2', 'tag2', 0, 0),
(34, 'ded', 'ded', 0, 0),
(35, 'htht', 'htht', 0, 0),
(36, 'fff', 'fff', 0, 0),
(37, 'hh', 'hh', 0, 0),
(38, 'kk', 'kk', 0, 0),
(39, 'ee', 'ee', 0, 0),
(40, 'gg', 'gg', 0, 0),
(41, 'Kiến thức nông thôn mới', 'kien-thuc-nong-thon-moi', 0, 0),
(42, 'Chính sách Nông thôn mới', 'chinh-sach-nong-thon-moi', 0, 0),
(43, 'Cơ chế hỗ trợ Xi măng làm đường GTNT', 'co-che-ho-tro-xi-mang-lam-duong-gtnt', 0, 0),
(44, 'Bộ chỉ số Đánh giá 19 TC', 'bo-chi-so-danh-gia-19-tc', 0, 0),
(45, 'Nông thôn mới', 'nong-thon-moi', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 5, 0),
(4, 8, 0),
(4, 9, 0),
(19, 10, 0),
(20, 10, 0),
(21, 10, 0),
(22, 10, 0),
(23, 10, 0),
(24, 10, 0),
(25, 10, 0),
(35, 6, 0),
(38, 7, 0),
(41, 6, 0),
(44, 5, 0),
(47, 4, 0),
(50, 1, 0),
(54, 1, 0),
(60, 1, 0),
(64, 17, 0),
(64, 32, 0),
(64, 33, 0),
(87, 22, 0),
(87, 26, 0),
(87, 28, 0),
(87, 31, 0),
(90, 13, 0),
(91, 13, 0),
(95, 13, 0),
(97, 13, 0),
(175, 25, 0),
(175, 27, 0),
(175, 29, 0),
(175, 31, 0),
(179, 6, 0),
(179, 34, 0),
(179, 35, 0),
(188, 6, 0),
(188, 36, 0),
(188, 37, 0),
(188, 38, 0),
(190, 6, 0),
(190, 39, 0),
(192, 6, 0),
(192, 40, 0),
(194, 6, 0),
(201, 23, 0),
(201, 26, 0),
(201, 28, 0),
(201, 30, 0),
(203, 4, 0),
(205, 23, 0),
(205, 26, 0),
(205, 28, 0),
(205, 30, 0),
(208, 23, 0),
(208, 27, 0),
(208, 28, 0),
(208, 30, 0),
(211, 23, 0),
(211, 26, 0),
(211, 29, 0),
(211, 30, 0),
(214, 23, 0),
(214, 26, 0),
(214, 28, 0),
(214, 30, 0),
(221, 26, 0),
(221, 28, 0),
(221, 30, 0),
(263, 41, 0),
(279, 41, 0),
(281, 41, 0),
(284, 41, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 11, 3),
(2, 2, 'category', '', 11, 0),
(3, 3, 'category', '', 11, 0),
(4, 4, 'category', '', 2, 2),
(5, 5, 'category', '', 2, 2),
(6, 6, 'category', '', 3, 7),
(7, 7, 'category', '', 3, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'nav_menu', '', 0, 7),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 11, 0),
(13, 13, 'category', '', 12, 3),
(14, 14, 'category', '', 12, 0),
(15, 15, 'category', '', 12, 0),
(16, 16, 'category', '', 12, 0),
(17, 17, 'category', '', 11, 1),
(18, 18, 'category', '', 17, 0),
(19, 19, 'category', '', 0, 0),
(20, 20, 'loai-san-pham', '', 0, 0),
(22, 22, 'co-quan-ban-hanh', '', 0, 0),
(23, 23, 'co-quan-ban-hanh', '', 0, 5),
(24, 24, 'co-quan-ban-hanh', '', 0, 0),
(25, 25, 'co-quan-ban-hanh', '', 0, 1),
(26, 26, 'loai-van-ban', '', 0, 5),
(27, 27, 'loai-van-ban', '', 0, 1),
(28, 28, 'don-vi-phong-ban', '', 0, 5),
(29, 29, 'don-vi-phong-ban', '', 0, 1),
(30, 30, 'linh-vuc', '', 0, 6),
(31, 31, 'linh-vuc', '', 0, 1),
(32, 32, 'post_tag', '', 0, 1),
(33, 33, 'post_tag', '', 0, 1),
(34, 34, 'post_tag', '', 0, 1),
(35, 35, 'post_tag', '', 0, 1),
(36, 36, 'post_tag', '', 0, 1),
(37, 37, 'post_tag', '', 0, 1),
(38, 38, 'post_tag', '', 0, 1),
(39, 39, 'post_tag', '', 0, 1),
(40, 40, 'post_tag', '', 0, 1),
(41, 41, 'phan-loai', '', 0, 4),
(42, 42, 'phan-loai', '', 0, 0),
(43, 43, 'phan-loai', '', 0, 0),
(44, 44, 'phan-loai', '', 0, 0),
(45, 45, 'phan-loai', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'adrotatefree_39164'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"ceac0e42816ce11167d9c5e501c8efe9ea4e63830b23b77bc206b6433a036844";a:4:{s:10:"expiration";i:1524111842;s:2:"ip";s:8:"10.0.2.2";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1522902242;}s:64:"81a14024032fb44a28dc00c32c175f920a18b93177ae39922dd691103d972e1c";a:4:{s:10:"expiration";i:1524142095;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1522932495;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&mfold=o'),
(18, 1, 'wp_user-settings-time', '1523885089'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(20, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(24, 1, 'nav_menu_recently_edited', '10'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:7:{i:0;s:6:"acf_58";i:1;s:11:"postexcerpt";i:2;s:13:"trackbacksdiv";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(27, 1, 'closedpostboxes_wpdmpro', 'a:0:{}'),
(28, 1, 'metaboxhidden_wpdmpro', 'a:3:{i:0;s:6:"acf_58";i:1;s:6:"acf_63";i:2;s:7:"slugdiv";}'),
(29, 1, 'closedpostboxes_laws', 'a:0:{}'),
(30, 1, 'metaboxhidden_laws', 'a:3:{i:0;s:6:"acf_58";i:1;s:6:"acf_63";i:2;s:7:"slugdiv";}'),
(31, 1, 'closedpostboxes_page', 'a:0:{}'),
(32, 1, 'metaboxhidden_page', 'a:8:{i:0;s:6:"acf_58";i:1;s:6:"acf_86";i:2;s:6:"acf_63";i:3;s:12:"revisionsdiv";i:4;s:16:"commentstatusdiv";i:5;s:11:"commentsdiv";i:6;s:7:"slugdiv";i:7;s:9:"authordiv";}'),
(33, 1, 'closedpostboxes_faq', 'a:0:{}'),
(34, 1, 'metaboxhidden_faq', 'a:6:{i:0;s:6:"acf_58";i:1;s:6:"acf_86";i:2;s:6:"acf_63";i:3;s:10:"postcustom";i:4;s:7:"slugdiv";i:5;s:9:"at_widget";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bd.th5o.vr2yEFUlBO77.2XCmpvFMJ/', 'admin', 'nongthon@gmail.com', '', '2018-04-05 04:23:45', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_adrotate`
--
ALTER TABLE `wp_adrotate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_adrotate_groups`
--
ALTER TABLE `wp_adrotate_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_adrotate_linkmeta`
--
ALTER TABLE `wp_adrotate_linkmeta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_adrotate_schedule`
--
ALTER TABLE `wp_adrotate_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `starttime` (`starttime`);

--
-- Indexes for table `wp_adrotate_stats`
--
ALTER TABLE `wp_adrotate_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad` (`ad`),
  ADD KEY `thetime` (`thetime`);

--
-- Indexes for table `wp_adrotate_stats_archive`
--
ALTER TABLE `wp_adrotate_stats_archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad` (`ad`),
  ADD KEY `thetime` (`thetime`);

--
-- Indexes for table `wp_adrotate_tracker`
--
ALTER TABLE `wp_adrotate_tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipaddress` (`ipaddress`),
  ADD KEY `timer` (`timer`);

--
-- Indexes for table `wp_adrotate_transactions`
--
ALTER TABLE `wp_adrotate_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad` (`ad`);

--
-- Indexes for table `wp_ahm_download_stats`
--
ALTER TABLE `wp_ahm_download_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_ahm_emails`
--
ALTER TABLE `wp_ahm_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_kstats_charts`
--
ALTER TABLE `wp_kstats_charts`
  ADD KEY `chart` (`chart`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `url` (`url`(250));

--
-- Indexes for table `wp_kstats_raw`
--
ALTER TABLE `wp_kstats_raw`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `url` (`url`(191));

--
-- Indexes for table `wp_kstats_totals`
--
ALTER TABLE `wp_kstats_totals`
  ADD PRIMARY KEY (`name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_pollsa`
--
ALTER TABLE `wp_pollsa`
  ADD PRIMARY KEY (`polla_aid`);

--
-- Indexes for table `wp_pollsip`
--
ALTER TABLE `wp_pollsip`
  ADD PRIMARY KEY (`pollip_id`),
  ADD KEY `pollip_ip` (`pollip_ip`),
  ADD KEY `pollip_qid` (`pollip_qid`),
  ADD KEY `pollip_ip_qid_aid` (`pollip_ip`,`pollip_qid`,`pollip_aid`);

--
-- Indexes for table `wp_pollsq`
--
ALTER TABLE `wp_pollsq`
  ADD PRIMARY KEY (`pollq_id`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_ratings`
--
ALTER TABLE `wp_ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `rating_userid` (`rating_userid`),
  ADD KEY `rating_postid_ip` (`rating_postid`,`rating_ip`);

--
-- Indexes for table `wp_statistics_exclusions`
--
ALTER TABLE `wp_statistics_exclusions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `date` (`date`),
  ADD KEY `reason` (`reason`);

--
-- Indexes for table `wp_statistics_historical`
--
ALTER TABLE `wp_statistics_historical`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `page_id` (`page_id`),
  ADD UNIQUE KEY `uri` (`uri`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `wp_statistics_pages`
--
ALTER TABLE `wp_statistics_pages`
  ADD UNIQUE KEY `date_2` (`date`,`uri`),
  ADD KEY `url` (`uri`),
  ADD KEY `date` (`date`),
  ADD KEY `id` (`id`),
  ADD KEY `uri` (`uri`,`count`,`id`);

--
-- Indexes for table `wp_statistics_search`
--
ALTER TABLE `wp_statistics_search`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `last_counter` (`last_counter`),
  ADD KEY `engine` (`engine`),
  ADD KEY `host` (`host`);

--
-- Indexes for table `wp_statistics_useronline`
--
ALTER TABLE `wp_statistics_useronline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_statistics_visit`
--
ALTER TABLE `wp_statistics_visit`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `unique_date` (`last_counter`);

--
-- Indexes for table `wp_statistics_visitor`
--
ALTER TABLE `wp_statistics_visitor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `date_ip_agent` (`last_counter`,`ip`,`agent`(75),`platform`(75),`version`(75)),
  ADD KEY `agent` (`agent`),
  ADD KEY `platform` (`platform`),
  ADD KEY `version` (`version`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_adrotate`
--
ALTER TABLE `wp_adrotate`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_adrotate_groups`
--
ALTER TABLE `wp_adrotate_groups`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_adrotate_linkmeta`
--
ALTER TABLE `wp_adrotate_linkmeta`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_adrotate_schedule`
--
ALTER TABLE `wp_adrotate_schedule`
  MODIFY `id` int(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_adrotate_stats`
--
ALTER TABLE `wp_adrotate_stats`
  MODIFY `id` bigint(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `wp_adrotate_stats_archive`
--
ALTER TABLE `wp_adrotate_stats_archive`
  MODIFY `id` bigint(9) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_adrotate_tracker`
--
ALTER TABLE `wp_adrotate_tracker`
  MODIFY `id` bigint(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2740;
--
-- AUTO_INCREMENT for table `wp_adrotate_transactions`
--
ALTER TABLE `wp_adrotate_transactions`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_ahm_download_stats`
--
ALTER TABLE `wp_ahm_download_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_ahm_emails`
--
ALTER TABLE `wp_ahm_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_kstats_raw`
--
ALTER TABLE `wp_kstats_raw`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  MODIFY `gid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=956;
--
-- AUTO_INCREMENT for table `wp_pollsa`
--
ALTER TABLE `wp_pollsa`
  MODIFY `polla_aid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_pollsip`
--
ALTER TABLE `wp_pollsip`
  MODIFY `pollip_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_pollsq`
--
ALTER TABLE `wp_pollsq`
  MODIFY `pollq_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1160;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=285;
--
-- AUTO_INCREMENT for table `wp_ratings`
--
ALTER TABLE `wp_ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_statistics_exclusions`
--
ALTER TABLE `wp_statistics_exclusions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_statistics_historical`
--
ALTER TABLE `wp_statistics_historical`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_statistics_search`
--
ALTER TABLE `wp_statistics_search`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_statistics_useronline`
--
ALTER TABLE `wp_statistics_useronline`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_statistics_visit`
--
ALTER TABLE `wp_statistics_visit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_statistics_visitor`
--
ALTER TABLE `wp_statistics_visitor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;