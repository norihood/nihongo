-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2018 at 05:37 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(40, 4, 2, 1523750400, 0, 64);

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
) ENGINE=InnoDB AUTO_INCREMENT=2344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_adrotate_tracker`
--

INSERT INTO `wp_adrotate_tracker` (`id`, `ipaddress`, `timer`, `bannerid`, `stat`) VALUES
(2053, '127.0.0.1', 1523807282, 2, 'i'),
(2054, '127.0.0.1', 1523807284, 1, 'i'),
(2055, '127.0.0.1', 1523807319, 3, 'i'),
(2056, '127.0.0.1', 1523807320, 4, 'i'),
(2057, '127.0.0.1', 1523807344, 2, 'i'),
(2058, '127.0.0.1', 1523807713, 2, 'i'),
(2059, '127.0.0.1', 1523807713, 1, 'i'),
(2060, '127.0.0.1', 1523807775, 1, 'i'),
(2061, '127.0.0.1', 1523807775, 2, 'i'),
(2062, '127.0.0.1', 1523807840, 2, 'i'),
(2063, '127.0.0.1', 1523807840, 1, 'i'),
(2064, '127.0.0.1', 1523807844, 3, 'i'),
(2065, '127.0.0.1', 1523807844, 4, 'i'),
(2066, '127.0.0.1', 1523807910, 2, 'i'),
(2067, '127.0.0.1', 1523807910, 1, 'i'),
(2068, '127.0.0.1', 1523807911, 3, 'i'),
(2069, '127.0.0.1', 1523807911, 4, 'i'),
(2070, '127.0.0.1', 1523807987, 2, 'i'),
(2071, '127.0.0.1', 1523807987, 1, 'i'),
(2072, '127.0.0.1', 1523807988, 4, 'i'),
(2073, '127.0.0.1', 1523807988, 3, 'i'),
(2074, '127.0.0.1', 1523808160, 1, 'i'),
(2075, '127.0.0.1', 1523808160, 2, 'i'),
(2076, '127.0.0.1', 1523808163, 4, 'i'),
(2077, '127.0.0.1', 1523808163, 3, 'i'),
(2078, '127.0.0.1', 1523808221, 2, 'i'),
(2079, '127.0.0.1', 1523808221, 1, 'i'),
(2080, '127.0.0.1', 1523808261, 3, 'i'),
(2081, '127.0.0.1', 1523808261, 4, 'i'),
(2082, '127.0.0.1', 1523808530, 2, 'i'),
(2083, '127.0.0.1', 1523808530, 1, 'i'),
(2084, '127.0.0.1', 1523808556, 4, 'i'),
(2085, '127.0.0.1', 1523808557, 3, 'i'),
(2086, '127.0.0.1', 1523808602, 2, 'i'),
(2087, '127.0.0.1', 1523808602, 1, 'i'),
(2088, '127.0.0.1', 1523808702, 2, 'i'),
(2089, '127.0.0.1', 1523808702, 1, 'i'),
(2090, '127.0.0.1', 1523808702, 3, 'i'),
(2091, '127.0.0.1', 1523808702, 4, 'i'),
(2092, '127.0.0.1', 1523809250, 2, 'i'),
(2093, '127.0.0.1', 1523809251, 1, 'i'),
(2094, '127.0.0.1', 1523809251, 4, 'i'),
(2095, '127.0.0.1', 1523809251, 3, 'i'),
(2096, '127.0.0.1', 1523809704, 2, 'i'),
(2097, '127.0.0.1', 1523809704, 1, 'i'),
(2098, '127.0.0.1', 1523809704, 3, 'i'),
(2099, '127.0.0.1', 1523809704, 4, 'i'),
(2100, '127.0.0.1', 1523809785, 2, 'i'),
(2101, '127.0.0.1', 1523809785, 1, 'i'),
(2102, '127.0.0.1', 1523809785, 3, 'i'),
(2103, '127.0.0.1', 1523809785, 4, 'i'),
(2104, '127.0.0.1', 1523809864, 1, 'i'),
(2105, '127.0.0.1', 1523809864, 2, 'i'),
(2106, '127.0.0.1', 1523809864, 3, 'i'),
(2107, '127.0.0.1', 1523809864, 4, 'i'),
(2108, '127.0.0.1', 1523809930, 2, 'i'),
(2109, '127.0.0.1', 1523809931, 1, 'i'),
(2110, '127.0.0.1', 1523809931, 3, 'i'),
(2111, '127.0.0.1', 1523809931, 4, 'i'),
(2112, '127.0.0.1', 1523810014, 1, 'i'),
(2113, '127.0.0.1', 1523810014, 2, 'i'),
(2114, '127.0.0.1', 1523810015, 4, 'i'),
(2115, '127.0.0.1', 1523810015, 3, 'i'),
(2116, '127.0.0.1', 1523810707, 1, 'i'),
(2117, '127.0.0.1', 1523810707, 2, 'i'),
(2118, '127.0.0.1', 1523810707, 3, 'i'),
(2119, '127.0.0.1', 1523810707, 4, 'i'),
(2120, '127.0.0.1', 1523810808, 2, 'i'),
(2121, '127.0.0.1', 1523810808, 1, 'i'),
(2122, '127.0.0.1', 1523810808, 3, 'i'),
(2123, '127.0.0.1', 1523810808, 4, 'i'),
(2124, '127.0.0.1', 1523811562, 2, 'i'),
(2125, '127.0.0.1', 1523811563, 1, 'i'),
(2126, '127.0.0.1', 1523811563, 3, 'i'),
(2127, '127.0.0.1', 1523811563, 4, 'i'),
(2128, '127.0.0.1', 1523811649, 2, 'i'),
(2129, '127.0.0.1', 1523811649, 1, 'i'),
(2130, '127.0.0.1', 1523811649, 3, 'i'),
(2131, '127.0.0.1', 1523811649, 4, 'i'),
(2132, '127.0.0.1', 1523811774, 1, 'i'),
(2133, '127.0.0.1', 1523811774, 2, 'i'),
(2134, '127.0.0.1', 1523811774, 4, 'i'),
(2135, '127.0.0.1', 1523811774, 3, 'i'),
(2136, '127.0.0.1', 1523811924, 1, 'i'),
(2137, '127.0.0.1', 1523811924, 2, 'i'),
(2138, '127.0.0.1', 1523811924, 3, 'i'),
(2139, '127.0.0.1', 1523811924, 4, 'i'),
(2140, '127.0.0.1', 1523811986, 2, 'i'),
(2141, '127.0.0.1', 1523811986, 1, 'i'),
(2142, '127.0.0.1', 1523811986, 3, 'i'),
(2143, '127.0.0.1', 1523811986, 4, 'i'),
(2144, '127.0.0.1', 1523812066, 2, 'i'),
(2145, '127.0.0.1', 1523812067, 1, 'i'),
(2146, '127.0.0.1', 1523812067, 4, 'i'),
(2147, '127.0.0.1', 1523812067, 3, 'i'),
(2148, '127.0.0.1', 1523812215, 2, 'i'),
(2149, '127.0.0.1', 1523812215, 1, 'i'),
(2150, '127.0.0.1', 1523812215, 3, 'i'),
(2151, '127.0.0.1', 1523812215, 4, 'i'),
(2152, '127.0.0.1', 1523812753, 2, 'i'),
(2153, '127.0.0.1', 1523812753, 1, 'i'),
(2154, '127.0.0.1', 1523812753, 4, 'i'),
(2155, '127.0.0.1', 1523812753, 3, 'i'),
(2156, '127.0.0.1', 1523816348, 2, 'i'),
(2157, '127.0.0.1', 1523816349, 1, 'i'),
(2158, '127.0.0.1', 1523816367, 3, 'i'),
(2159, '127.0.0.1', 1523816367, 4, 'i'),
(2160, '127.0.0.1', 1523816622, 2, 'i'),
(2161, '127.0.0.1', 1523816622, 1, 'i'),
(2162, '127.0.0.1', 1523816622, 3, 'i'),
(2163, '127.0.0.1', 1523816622, 4, 'i'),
(2164, '127.0.0.1', 1523816751, 1, 'i'),
(2165, '127.0.0.1', 1523816751, 2, 'i'),
(2166, '127.0.0.1', 1523817240, 2, 'i'),
(2167, '127.0.0.1', 1523817240, 1, 'i'),
(2168, '127.0.0.1', 1523817510, 2, 'i'),
(2169, '127.0.0.1', 1523817510, 1, 'i'),
(2170, '127.0.0.1', 1523817718, 2, 'i'),
(2171, '127.0.0.1', 1523817718, 1, 'i'),
(2172, '127.0.0.1', 1523817718, 3, 'i'),
(2173, '127.0.0.1', 1523817718, 4, 'i'),
(2174, '127.0.0.1', 1523817792, 2, 'i'),
(2175, '127.0.0.1', 1523817792, 1, 'i'),
(2176, '127.0.0.1', 1523817792, 4, 'i'),
(2177, '127.0.0.1', 1523817792, 3, 'i'),
(2178, '127.0.0.1', 1523817971, 1, 'i'),
(2179, '127.0.0.1', 1523817971, 2, 'i'),
(2180, '127.0.0.1', 1523817971, 4, 'i'),
(2181, '127.0.0.1', 1523817971, 3, 'i'),
(2182, '127.0.0.1', 1523818035, 1, 'i'),
(2183, '127.0.0.1', 1523818035, 2, 'i'),
(2184, '127.0.0.1', 1523818036, 4, 'i'),
(2185, '127.0.0.1', 1523818036, 3, 'i'),
(2186, '127.0.0.1', 1523818104, 2, 'i'),
(2187, '127.0.0.1', 1523818104, 1, 'i'),
(2188, '127.0.0.1', 1523818105, 3, 'i'),
(2189, '127.0.0.1', 1523818105, 4, 'i'),
(2190, '127.0.0.1', 1523818172, 1, 'i'),
(2191, '127.0.0.1', 1523818172, 2, 'i'),
(2192, '127.0.0.1', 1523818193, 3, 'i'),
(2193, '127.0.0.1', 1523818193, 4, 'i'),
(2194, '127.0.0.1', 1523818368, 1, 'i'),
(2195, '127.0.0.1', 1523818368, 2, 'i'),
(2196, '127.0.0.1', 1523818368, 3, 'i'),
(2197, '127.0.0.1', 1523818368, 4, 'i'),
(2198, '127.0.0.1', 1523818777, 2, 'i'),
(2199, '127.0.0.1', 1523818777, 1, 'i'),
(2200, '127.0.0.1', 1523818777, 4, 'i'),
(2201, '127.0.0.1', 1523818777, 3, 'i'),
(2202, '127.0.0.1', 1523818843, 2, 'i'),
(2203, '127.0.0.1', 1523818843, 1, 'i'),
(2204, '127.0.0.1', 1523818844, 4, 'i'),
(2205, '127.0.0.1', 1523818844, 3, 'i'),
(2206, '127.0.0.1', 1523818931, 1, 'i'),
(2207, '127.0.0.1', 1523818931, 2, 'i'),
(2208, '127.0.0.1', 1523818931, 3, 'i'),
(2209, '127.0.0.1', 1523818931, 4, 'i'),
(2210, '127.0.0.1', 1523819316, 1, 'i'),
(2211, '127.0.0.1', 1523819316, 2, 'i'),
(2212, '127.0.0.1', 1523819317, 4, 'i'),
(2213, '127.0.0.1', 1523819317, 3, 'i'),
(2214, '127.0.0.1', 1523819424, 2, 'i'),
(2215, '127.0.0.1', 1523819424, 1, 'i'),
(2216, '127.0.0.1', 1523819551, 1, 'i'),
(2217, '127.0.0.1', 1523819551, 2, 'i'),
(2218, '127.0.0.1', 1523819629, 2, 'i'),
(2219, '127.0.0.1', 1523819629, 1, 'i'),
(2220, '127.0.0.1', 1523819629, 4, 'i'),
(2221, '127.0.0.1', 1523819629, 3, 'i'),
(2222, '127.0.0.1', 1523824362, 2, 'i'),
(2223, '127.0.0.1', 1523824362, 1, 'i'),
(2224, '127.0.0.1', 1523824363, 3, 'i'),
(2225, '127.0.0.1', 1523824363, 4, 'i'),
(2226, '127.0.0.1', 1523824459, 2, 'i'),
(2227, '127.0.0.1', 1523824459, 1, 'i'),
(2228, '127.0.0.1', 1523824459, 4, 'i'),
(2229, '127.0.0.1', 1523824459, 3, 'i'),
(2230, '127.0.0.1', 1523824532, 1, 'i'),
(2231, '127.0.0.1', 1523824533, 2, 'i'),
(2232, '127.0.0.1', 1523824533, 4, 'i'),
(2233, '127.0.0.1', 1523824533, 3, 'i'),
(2234, '127.0.0.1', 1523824709, 2, 'i'),
(2235, '127.0.0.1', 1523824709, 1, 'i'),
(2236, '127.0.0.1', 1523824709, 3, 'i'),
(2237, '127.0.0.1', 1523824710, 4, 'i'),
(2238, '127.0.0.1', 1523824770, 2, 'i'),
(2239, '127.0.0.1', 1523824770, 1, 'i'),
(2240, '127.0.0.1', 1523824776, 4, 'i'),
(2241, '127.0.0.1', 1523824776, 3, 'i'),
(2242, '127.0.0.1', 1523824877, 2, 'i'),
(2243, '127.0.0.1', 1523824877, 1, 'i'),
(2244, '127.0.0.1', 1523825057, 1, 'i'),
(2245, '127.0.0.1', 1523825057, 2, 'i'),
(2246, '127.0.0.1', 1523825057, 4, 'i'),
(2247, '127.0.0.1', 1523825057, 3, 'i'),
(2248, '127.0.0.1', 1523825140, 1, 'i'),
(2249, '127.0.0.1', 1523825140, 2, 'i'),
(2250, '127.0.0.1', 1523825140, 4, 'i'),
(2251, '127.0.0.1', 1523825140, 3, 'i'),
(2252, '127.0.0.1', 1523825479, 2, 'i'),
(2253, '127.0.0.1', 1523825479, 1, 'i'),
(2254, '127.0.0.1', 1523825479, 3, 'i'),
(2255, '127.0.0.1', 1523825479, 4, 'i'),
(2256, '127.0.0.1', 1523825736, 2, 'i'),
(2257, '127.0.0.1', 1523825736, 1, 'i'),
(2258, '127.0.0.1', 1523825737, 4, 'i'),
(2259, '127.0.0.1', 1523825737, 3, 'i'),
(2260, '127.0.0.1', 1523825863, 2, 'i'),
(2261, '127.0.0.1', 1523825863, 1, 'i'),
(2262, '127.0.0.1', 1523825863, 3, 'i'),
(2263, '127.0.0.1', 1523825863, 4, 'i'),
(2264, '127.0.0.1', 1523825959, 2, 'i'),
(2265, '127.0.0.1', 1523825959, 1, 'i'),
(2266, '127.0.0.1', 1523825959, 3, 'i'),
(2267, '127.0.0.1', 1523825959, 4, 'i'),
(2268, '127.0.0.1', 1523827366, 1, 'i'),
(2269, '127.0.0.1', 1523827366, 2, 'i'),
(2270, '127.0.0.1', 1523827436, 2, 'i'),
(2271, '127.0.0.1', 1523827436, 1, 'i'),
(2272, '127.0.0.1', 1523827506, 1, 'i'),
(2273, '127.0.0.1', 1523827506, 2, 'i'),
(2274, '127.0.0.1', 1523827936, 1, 'i'),
(2275, '127.0.0.1', 1523827936, 2, 'i'),
(2276, '127.0.0.1', 1523828029, 2, 'i'),
(2277, '127.0.0.1', 1523828029, 1, 'i'),
(2278, '127.0.0.1', 1523828135, 1, 'i'),
(2279, '127.0.0.1', 1523828135, 2, 'i'),
(2280, '127.0.0.1', 1523828239, 2, 'i'),
(2281, '127.0.0.1', 1523828239, 1, 'i'),
(2282, '127.0.0.1', 1523828754, 1, 'i'),
(2283, '127.0.0.1', 1523828754, 2, 'i'),
(2284, '127.0.0.1', 1523828755, 4, 'i'),
(2285, '127.0.0.1', 1523828755, 3, 'i'),
(2286, '127.0.0.1', 1523828911, 1, 'i'),
(2287, '127.0.0.1', 1523828911, 2, 'i'),
(2288, '127.0.0.1', 1523828972, 2, 'i'),
(2289, '127.0.0.1', 1523828972, 1, 'i'),
(2290, '127.0.0.1', 1523828973, 4, 'i'),
(2291, '127.0.0.1', 1523828973, 3, 'i'),
(2292, '127.0.0.1', 1523829062, 2, 'i'),
(2293, '127.0.0.1', 1523829062, 1, 'i'),
(2294, '127.0.0.1', 1523829063, 4, 'i'),
(2295, '127.0.0.1', 1523829063, 3, 'i'),
(2296, '127.0.0.1', 1523829208, 1, 'i'),
(2297, '127.0.0.1', 1523829208, 2, 'i'),
(2298, '127.0.0.1', 1523829208, 3, 'i'),
(2299, '127.0.0.1', 1523829209, 4, 'i'),
(2300, '127.0.0.1', 1523829271, 1, 'i'),
(2301, '127.0.0.1', 1523829271, 2, 'i'),
(2302, '127.0.0.1', 1523829271, 4, 'i'),
(2303, '127.0.0.1', 1523829271, 3, 'i'),
(2304, '127.0.0.1', 1523829348, 2, 'i'),
(2305, '127.0.0.1', 1523829348, 1, 'i'),
(2306, '127.0.0.1', 1523829348, 3, 'i'),
(2307, '127.0.0.1', 1523829348, 4, 'i'),
(2308, '127.0.0.1', 1523829660, 1, 'i'),
(2309, '127.0.0.1', 1523829660, 2, 'i'),
(2310, '127.0.0.1', 1523829660, 3, 'i'),
(2311, '127.0.0.1', 1523829660, 4, 'i'),
(2312, '127.0.0.1', 1523829878, 1, 'i'),
(2313, '127.0.0.1', 1523829878, 2, 'i'),
(2314, '127.0.0.1', 1523829907, 4, 'i'),
(2315, '127.0.0.1', 1523829907, 3, 'i'),
(2316, '127.0.0.1', 1523830470, 2, 'i'),
(2317, '127.0.0.1', 1523830470, 1, 'i'),
(2318, '127.0.0.1', 1523830470, 3, 'i'),
(2319, '127.0.0.1', 1523830470, 4, 'i'),
(2320, '127.0.0.1', 1523830537, 2, 'i'),
(2321, '127.0.0.1', 1523830537, 1, 'i'),
(2322, '127.0.0.1', 1523830537, 4, 'i'),
(2323, '127.0.0.1', 1523830537, 3, 'i'),
(2324, '127.0.0.1', 1523830602, 2, 'i'),
(2325, '127.0.0.1', 1523830602, 1, 'i'),
(2326, '127.0.0.1', 1523830602, 3, 'i'),
(2327, '127.0.0.1', 1523830602, 4, 'i'),
(2328, '127.0.0.1', 1523830684, 1, 'i'),
(2329, '127.0.0.1', 1523830684, 2, 'i'),
(2330, '127.0.0.1', 1523830684, 3, 'i'),
(2331, '127.0.0.1', 1523830684, 4, 'i'),
(2332, '127.0.0.1', 1523831316, 2, 'i'),
(2333, '127.0.0.1', 1523831316, 1, 'i'),
(2334, '127.0.0.1', 1523831316, 4, 'i'),
(2335, '127.0.0.1', 1523831316, 3, 'i'),
(2336, '127.0.0.1', 1523831474, 2, 'i'),
(2337, '127.0.0.1', 1523831474, 1, 'i'),
(2338, '127.0.0.1', 1523831475, 4, 'i'),
(2339, '127.0.0.1', 1523831475, 3, 'i'),
(2340, '127.0.0.1', 1523831555, 1, 'i'),
(2341, '127.0.0.1', 1523831555, 2, 'i'),
(2342, '127.0.0.1', 1523831556, 3, 'i'),
(2343, '127.0.0.1', 1523831556, 4, 'i');

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
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=733 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(29, 'rewrite_rules', 'a:192:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:7:"laws/?$";s:24:"index.php?post_type=laws";s:37:"laws/feed/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=laws&feed=$matches[1]";s:32:"laws/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=laws&feed=$matches[1]";s:24:"laws/page/([0-9]{1,})/?$";s:42:"index.php?post_type=laws&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:57:"co-quan-ban-hanh/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?co-quan-ban-hanh=$matches[1]&feed=$matches[2]";s:52:"co-quan-ban-hanh/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?co-quan-ban-hanh=$matches[1]&feed=$matches[2]";s:33:"co-quan-ban-hanh/([^/]+)/embed/?$";s:49:"index.php?co-quan-ban-hanh=$matches[1]&embed=true";s:45:"co-quan-ban-hanh/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?co-quan-ban-hanh=$matches[1]&paged=$matches[2]";s:27:"co-quan-ban-hanh/([^/]+)/?$";s:38:"index.php?co-quan-ban-hanh=$matches[1]";s:53:"loai-van-ban/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?loai-van-ban=$matches[1]&feed=$matches[2]";s:48:"loai-van-ban/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?loai-van-ban=$matches[1]&feed=$matches[2]";s:29:"loai-van-ban/([^/]+)/embed/?$";s:45:"index.php?loai-van-ban=$matches[1]&embed=true";s:41:"loai-van-ban/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?loai-van-ban=$matches[1]&paged=$matches[2]";s:23:"loai-van-ban/([^/]+)/?$";s:34:"index.php?loai-van-ban=$matches[1]";s:57:"don-vi-phong-ban/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?don-vi-phong-ban=$matches[1]&feed=$matches[2]";s:52:"don-vi-phong-ban/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?don-vi-phong-ban=$matches[1]&feed=$matches[2]";s:33:"don-vi-phong-ban/([^/]+)/embed/?$";s:49:"index.php?don-vi-phong-ban=$matches[1]&embed=true";s:45:"don-vi-phong-ban/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?don-vi-phong-ban=$matches[1]&paged=$matches[2]";s:27:"don-vi-phong-ban/([^/]+)/?$";s:38:"index.php?don-vi-phong-ban=$matches[1]";s:49:"linh-vuc/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?linh-vuc=$matches[1]&feed=$matches[2]";s:44:"linh-vuc/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?linh-vuc=$matches[1]&feed=$matches[2]";s:25:"linh-vuc/([^/]+)/embed/?$";s:41:"index.php?linh-vuc=$matches[1]&embed=true";s:37:"linh-vuc/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?linh-vuc=$matches[1]&paged=$matches[2]";s:19:"linh-vuc/([^/]+)/?$";s:30:"index.php?linh-vuc=$matches[1]";s:36:"download/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"download/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"download/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"download/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"download/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"download/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"download/([^/]+)/embed/?$";s:40:"index.php?wpdmpro=$matches[1]&embed=true";s:29:"download/([^/]+)/trackback/?$";s:34:"index.php?wpdmpro=$matches[1]&tb=1";s:37:"download/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?wpdmpro=$matches[1]&paged=$matches[2]";s:44:"download/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?wpdmpro=$matches[1]&cpage=$matches[2]";s:33:"download/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?wpdmpro=$matches[1]&page=$matches[2]";s:25:"download/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"download/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"download/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"download/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"download/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"download/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:58:"download-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?wpdmcategory=$matches[1]&feed=$matches[2]";s:53:"download-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?wpdmcategory=$matches[1]&feed=$matches[2]";s:34:"download-category/([^/]+)/embed/?$";s:45:"index.php?wpdmcategory=$matches[1]&embed=true";s:46:"download-category/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?wpdmcategory=$matches[1]&paged=$matches[2]";s:28:"download-category/([^/]+)/?$";s:34:"index.php?wpdmcategory=$matches[1]";s:36:"amn_smtp/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"amn_smtp/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"amn_smtp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"amn_smtp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"amn_smtp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"amn_smtp/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"amn_smtp/([^/]+)/embed/?$";s:41:"index.php?amn_smtp=$matches[1]&embed=true";s:29:"amn_smtp/([^/]+)/trackback/?$";s:35:"index.php?amn_smtp=$matches[1]&tb=1";s:37:"amn_smtp/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?amn_smtp=$matches[1]&paged=$matches[2]";s:44:"amn_smtp/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?amn_smtp=$matches[1]&cpage=$matches[2]";s:33:"amn_smtp/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?amn_smtp=$matches[1]&page=$matches[2]";s:25:"amn_smtp/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"amn_smtp/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"amn_smtp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"amn_smtp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"amn_smtp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"amn_smtp/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"laws/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"laws/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"laws/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"laws/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"laws/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"laws/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"laws/([^/]+)/embed/?$";s:37:"index.php?laws=$matches[1]&embed=true";s:25:"laws/([^/]+)/trackback/?$";s:31:"index.php?laws=$matches[1]&tb=1";s:45:"laws/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?laws=$matches[1]&feed=$matches[2]";s:40:"laws/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?laws=$matches[1]&feed=$matches[2]";s:33:"laws/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?laws=$matches[1]&paged=$matches[2]";s:40:"laws/([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?laws=$matches[1]&cpage=$matches[2]";s:29:"laws/([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?laws=$matches[1]&page=$matches[2]";s:21:"laws/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:31:"laws/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:51:"laws/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"laws/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:46:"laws/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:27:"laws/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"amn_envira-lite/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"amn_envira-lite/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"amn_envira-lite/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"amn_envira-lite/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"amn_envira-lite/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"amn_envira-lite/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"amn_envira-lite/([^/]+)/embed/?$";s:48:"index.php?amn_envira-lite=$matches[1]&embed=true";s:36:"amn_envira-lite/([^/]+)/trackback/?$";s:42:"index.php?amn_envira-lite=$matches[1]&tb=1";s:44:"amn_envira-lite/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?amn_envira-lite=$matches[1]&paged=$matches[2]";s:51:"amn_envira-lite/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?amn_envira-lite=$matches[1]&cpage=$matches[2]";s:40:"amn_envira-lite/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?amn_envira-lite=$matches[1]&page=$matches[2]";s:32:"amn_envira-lite/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"amn_envira-lite/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"amn_envira-lite/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"amn_envira-lite/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"amn_envira-lite/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"amn_envira-lite/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:31:".+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:".+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:".+?/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"(.+?)/([^/]+)/embed/?$";s:63:"index.php?category_name=$matches[1]&name=$matches[2]&embed=true";s:26:"(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:46:"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:41:"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:34:"(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:41:"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:30:"(.+?)/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:20:".+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:".+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:".+?/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:14:"(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:8:"(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:33:"addthis/addthis_social_widget.php";i:1;s:21:"adrotate/adrotate.php";i:2;s:30:"advanced-custom-fields/acf.php";i:3;s:37:"download-manager/download-manager.php";i:4;s:43:"envira-gallery-lite/envira-gallery-lite.php";i:5;s:35:"kstats-reloaded/kstats-reloaded.php";i:6;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:7;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:8;s:27:"wp-pagenavi/wp-pagenavi.php";i:9;s:21:"wp-polls/wp-polls.php";i:10;s:33:"wp-postratings/wp-postratings.php";}', 'yes'),
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
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:68:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:12:"manage_polls";b:1;s:18:"adrotate_ad_manage";b:1;s:18:"adrotate_ad_delete";b:1;s:21:"adrotate_group_manage";b:1;s:21:"adrotate_group_delete";b:1;s:21:"access_server_browser";b:1;s:14:"manage_ratings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
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
(111, 'cron', 'a:10:{i:1523809437;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523819473;a:1:{s:27:"polldaddy_rating_update_job";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523827509;a:1:{s:21:"adrotate_evaluate_ads";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523828409;a:1:{s:26:"adrotate_empty_trackerdata";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523836860;a:1:{s:21:"kstats_aggregate_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523852642;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523861594;a:1:{s:28:"wp_statistics_add_visit_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523872062;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523890627;a:1:{s:10:"polls_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'auth_key', 'v?Gu<P]g5AWlM4mwcC3`PbO1GCzmQtd9.6}3_#}|$du&lR{1N?H^!4^Gv o-Ve~G', 'no'),
(114, 'auth_salt', 'uNg{;>mvy~DU^_Gi]@d^f/WMOsx}T%-}:|v8x{<5KMcl;}0TlMr79<ywf&2zQh/~', 'no'),
(115, 'logged_in_key', 'CNgDz f%7.w]4sP$[y:n^v!B^5>i^R=tNy.><E5((xf#K4PZO`O|<E_2gt<|!x H', 'no'),
(116, 'logged_in_salt', '/2NB3Wkn-h:voe]K%PEzC N{OI^9$~Vk/YzQUCgl-Y|{SN_#r2:;<XWCGI#3rYV6', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(137, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:6:"social";i:0;s:3:"top";i:10;}}', 'yes'),
(141, 'recently_activated', 'a:1:{s:31:"rating-widget/rating-widget.php";i:1523349338;}', 'yes'),
(148, 'wp_statistics_plugin_version', '12.3.5', 'yes'),
(149, 'wp_statistics_db_version', '12.3.5', 'yes'),
(150, 'wp_statistics', 'a:27:{s:18:"pending_db_updates";a:2:{s:13:"date_ip_agent";b:0;s:11:"unique_date";b:0;}s:16:"search_converted";i:1;s:9:"robotlist";s:1715:"007ac9\n5bot\nA6-Indexer\nAbachoBOT\naccoona\nAcoiRobot\nAddThis.com\nADmantX\nAdsBot-Google\nadvbot\nAhrefsBot\naiHitBot\nalexa\nalphabot\nAltaVista\nAntivirusPro\nanyevent\nappie\nApplebot\narchive.org_bot\nAsk Jeeves\nASPSeek\nBaiduspider\nBenjojo\nBeetleBot\nbingbot\nBlekkobot\nblexbot\nBOT for JCE\nbubing\nButterfly\ncbot\nclamantivirus\ncliqzbot\nclumboot\ncoccoc\ncrawler\nCrocCrawler\ncrowsnest.tv\ndbot\ndl2bot\ndotbot\ndownloadbot\nduckduckgo\nDumbot\nEasouSpider\neStyle\nEveryoneSocialBot\nExabot\nezooms\nfacebook.com\nfacebookexternalhit\nFAST\nFeedfetcher-Google\nfeedzirra\nfindxbot\nFirfly\nFriendFeedBot\nfroogle\nGeonaBot\nGigabot\ngirafabot\ngimme60bot\nglbot\nGooglebot\nGroupHigh\nia_archiver\nIDBot\nInfoSeek\ninktomi\nIstellaBot\njetmon\nKraken\nLeikibot\nlinkapediabot\nlinkdexbot\nLinkpadBot\nLoadTimeBot\nlooksmart\nltx71\nLycos\nMail.RU_Bot\nMe.dium\nmeanpathbot\nmediabot\nmedialbot\nMediapartners-Google\nMJ12bot\nmsnbot\nMojeekBot\nmonobot\nmoreover\nMRBOT\nNationalDirectory\nNerdyBot\nNetcraftSurveyAgent\nniki-bot\nnutch\nOpenbot\nOrangeBot\nowler\np4Bot\nPaperLiBot\npageanalyzer\nPagesInventory\nPimonster\nporkbun\npr-cy\nproximic\npwbot\nr4bot\nrabaz\nRambler\nRankivabot\nrevip\nriddler\nrogerbot\nScooter\nScrubby\nscrapy.org\nSearchmetricsBot\nsees.co\nSemanticBot\nSemrushBot\nSeznamBot\nsfFeedReader\nshareaholic-bot\nsistrix\nSiteExplorer\nSlurp\nSocialradarbot\nSocialSearch\nSogou web spider\nSpade\nspbot\nSpiderLing\nSputnikBot\nSuperfeedr\nSurveyBot\nTechnoratiSnoop\nTECNOSEEK\nTeoma\ntrendictionbot\nTweetmemeBot\nTwiceler\nTwitterbot\nTwitturls\nu2bot\nuMBot-LN\nuni5download\nunrulymedia\nUptimeRobot\nURL_Spider_SQL\nVagabondo\nvBSEO\nWASALive-Bot\nWebAlta Crawler\nWebBug\nWebFindBot\nWebMasterAid\nWeSEE\nWotbox\nwsowner\nwsr-agent\nwww.galaxy.com\nx100bot\nXoviBot\nxzybot\nyandex\nYahoo\nYammybot\nYoudaoBot\nZyBorg\nZemlyaCrawl";s:5:"geoip";b:0;s:8:"browscap";b:0;s:10:"useronline";b:1;s:6:"visits";b:1;s:8:"visitors";b:1;s:5:"pages";b:1;s:12:"check_online";s:2:"30";s:8:"menu_bar";b:0;s:11:"coefficient";s:1:"1";s:12:"stats_report";b:0;s:11:"time_report";s:5:"daily";s:11:"send_report";s:4:"mail";s:14:"content_report";s:0:"";s:12:"update_geoip";b:1;s:8:"store_ua";b:0;s:21:"exclude_administrator";b:1;s:18:"disable_se_clearch";b:1;s:14:"disable_se_ask";b:1;s:8:"map_type";s:6:"jqvmap";s:18:"force_robot_update";b:1;s:17:"show_welcome_page";b:0;s:23:"first_show_welcome_page";b:1;s:6:"widget";a:24:{s:11:"name_widget";s:0:"";s:17:"useronline_widget";s:2:"on";s:13:"tvisit_widget";s:2:"on";s:15:"tvisitor_widget";s:0:"";s:13:"yvisit_widget";s:0:"";s:15:"yvisitor_widget";s:0:"";s:13:"wvisit_widget";s:0:"";s:13:"mvisit_widget";s:0:"";s:14:"ysvisit_widget";s:0:"";s:14:"ttvisit_widget";s:2:"on";s:16:"ttvisitor_widget";s:0:"";s:14:"tpviews_widget";s:0:"";s:10:"ser_widget";s:0:"";s:9:"select_se";s:0:"";s:9:"tp_widget";s:0:"";s:10:"tpg_widget";s:0:"";s:9:"tc_widget";s:0:"";s:9:"ts_widget";s:0:"";s:9:"tu_widget";s:0:"";s:9:"ap_widget";s:0:"";s:9:"ac_widget";s:0:"";s:9:"au_widget";s:0:"";s:10:"lpd_widget";s:0:"";s:10:"select_lps";s:0:"";}s:15:"update_browscap";b:1;}', 'yes'),
(151, 'widget_wp_statistics_widget', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(154, 'kstats_version', '0.7.4', 'yes'),
(155, 'kstats_options', 'a:10:{s:24:"dashboard_display_widget";i:1;s:22:"dashboard_days_to_show";s:2:"12";s:21:"overview_days_to_show";s:2:"21";s:28:"overview_recent_hits_to_show";s:2:"20";s:21:"database_days_to_keep";s:3:"365";s:23:"database_months_to_keep";s:2:"24";s:21:"database_rows_to_keep";s:4:"2000";s:22:"access_minimum_to_view";s:10:"subscriber";s:22:"access_minimum_to_edit";s:10:"subscriber";s:14:"ignore_ip_list";a:2:{i:0;s:9:"127.0.0.1";i:1;s:10:"64.41.145.";}}', 'yes'),
(156, 'widget_kstats', 'a:2:{i:2;a:3:{s:5:"title";s:15:"Blog Statistics";s:4:"body";s:152:"Currently Online: %visitors_online%\r\nHost: %hostbyaddr%\r\nToday: %todays_visitors%\r\nThis month: %thismonths_visitors%\r\nTotal Visitors: %total_visitors%\r\n";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(159, 'widget_pd_top_rated', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
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
(398, 'wpdm_latest_check', '1523801853', 'yes'),
(399, 'loai-san-pham_20_visible_home', '1', 'no'),
(400, '_loai-san-pham_20_visible_home', 'field_5aca11ce1f160', 'no'),
(401, 'loai-san-pham_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
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
(523, 'fs_active_plugins', 'O:8:"stdClass":0:{}', 'yes'),
(524, 'fs_debug_mode', '', 'yes'),
(525, 'fs_accounts', 'a:15:{s:21:"id_slug_type_path_map";a:1:{i:56;a:2:{s:4:"slug";s:13:"rating-widget";s:4:"type";s:6:"plugin";}}s:11:"plugin_data";a:1:{s:13:"rating-widget";a:19:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:9:"prev_path";s:31:"rating-widget/rating-widget.php";}s:17:"install_timestamp";i:1523347154;s:16:"sdk_last_version";N;s:11:"sdk_version";s:5:"2.0.1";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:5:"2.9.4";s:19:"plugin_upgrade_mode";b:0;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:10:"dev5.local";s:9:"server_ip";s:8:"10.0.2.2";s:9:"is_active";b:1;s:9:"timestamp";i:1523347154;s:7:"version";s:5:"2.9.4";}s:17:"was_plugin_loaded";b:1;s:15:"prev_is_premium";b:0;s:14:"has_trial_plan";b:1;s:22:"install_sync_timestamp";i:1523349337;s:20:"activation_timestamp";i:1523347177;s:14:"sync_timestamp";i:1523348147;s:16:"uninstall_reason";O:8:"stdClass":3:{s:2:"id";s:2:"11";s:4:"info";s:40:"use shortcode not support multi language";s:12:"is_anonymous";b:0;}}}s:13:"file_slug_map";a:1:{s:31:"rating-widget/rating-widget.php";s:13:"rating-widget";}s:7:"plugins";a:1:{s:13:"rating-widget";O:9:"FS_Plugin":18:{s:16:"parent_plugin_id";N;s:5:"title";s:33:"Rating-Widget: Star Review System";s:4:"slug";s:13:"rating-widget";s:4:"type";s:6:"plugin";s:20:"affiliate_moderation";s:8:"selected";s:19:"is_wp_org_compliant";b:1;s:4:"file";s:31:"rating-widget/rating-widget.php";s:7:"version";s:5:"2.9.4";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_74be465babd9d3d6d5ff578d56745";s:10:"secret_key";N;s:2:"id";s:2:"56";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;}}s:9:"unique_id";s:32:"07f4cd33f4783049721c315fe8d6b442";s:5:"plans";a:1:{s:13:"rating-widget";a:5:{i:0;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"NTY=";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";s:20:"RnJlZSBmb3JldmVyIQ==";s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:0:"";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"MTAz";s:7:"updated";N;s:7:"created";s:28:"MjAxNS0wOC0yMSAyMDo1Mjo0Mg==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:1;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"NTY=";s:4:"name";s:12:"c3RhcnRlcg==";s:5:"title";s:12:"U3RhcnRlcg==";s:11:"description";s:44:"V0hJVEUgTEFCRUxFRApGUkVFIEZST00gQlJBTkRJTkc=";s:17:"is_free_localhost";s:0:"";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";s:4:"Nw==";s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";s:32:"aGVscEByYXRpbmctd2lkZ2V0LmNvbQ==";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"MTA0";s:7:"updated";s:28:"MjAxNi0wMS0xOSAwMTo0Nzo1Mg==";s:7:"created";s:28:"MjAxNS0wOC0yMSAyMDo1ODoyNA==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:2;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"NTY=";s:4:"name";s:16:"cHJvZmVzc2lvbmFs";s:5:"title";s:16:"UHJvZmVzc2lvbmFs";s:11:"description";s:44:"U0VPLCBEQVNIQk9BUkQKQURWQU5DRUQgQU5BTFlUSUNT";s:17:"is_free_localhost";s:0:"";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:4:"MQ==";s:12:"trial_period";s:4:"Nw==";s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";s:32:"aGVscEByYXRpbmctd2lkZ2V0LmNvbQ==";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:4:"MQ==";s:2:"id";s:4:"MTA1";s:7:"updated";s:28:"MjAxNi0wOS0yMCAxNDo1Mjo1NQ==";s:7:"created";s:28:"MjAxNS0wOC0yMSAyMTowMDo1Ng==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:3;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"NTY=";s:4:"name";s:12:"YnVzaW5lc3M=";s:5:"title";s:12:"QnVzaW5lc3M=";s:11:"description";s:40:"TU9ERVJBVElPTiAKVE9QIExFVkVMIFNVUFBPUlQ=";s:17:"is_free_localhost";s:0:"";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:4:"MQ==";s:12:"trial_period";s:4:"Nw==";s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";s:32:"aGVscEByYXRpbmctd2lkZ2V0LmNvbQ==";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"MTA2";s:7:"updated";s:28:"MjAxNS0xMC0wMyAwNTozMzoxMw==";s:7:"created";s:28:"MjAxNS0wOC0yMSAyMTowMzo1OA==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:4;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"NTY=";s:4:"name";s:8:"YXpudWRl";s:5:"title";s:24:"NTBNIFBWcyBQZXIgTW9udGg=";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:8:"MjYwNQ==";s:7:"updated";s:28:"MjAxOC0wMi0yMiAxODowODowNQ==";s:7:"created";s:28:"MjAxOC0wMi0yMiAxODowNjoyMA==";s:22:"\0FS_Entity\0_is_updated";b:0;}}}s:14:"active_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1523349337;s:3:"md5";s:32:"40bf5cbb56ecdaf6ccea6935af5f1e6e";s:7:"plugins";a:9:{s:21:"adrotate/adrotate.php";a:5:{s:4:"slug";s:8:"adrotate";s:7:"version";s:4:"4.10";s:5:"title";s:8:"AdRotate";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:30:"advanced-custom-fields/acf.php";a:5:{s:4:"slug";s:22:"advanced-custom-fields";s:7:"version";s:6:"4.4.12";s:5:"title";s:22:"Advanced Custom Fields";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:45:"taxonomy-terms-order/taxonomy-terms-order.php";a:5:{s:4:"slug";s:20:"taxonomy-terms-order";s:7:"version";s:7:"1.5.3.2";s:5:"title";s:39:"Category Order and Taxonomy Terms Order";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:37:"download-manager/download-manager.php";a:5:{s:4:"slug";s:16:"download-manager";s:7:"version";s:6:"2.9.70";s:5:"title";s:16:"Download Manager";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:35:"kstats-reloaded/kstats-reloaded.php";a:5:{s:4:"slug";s:15:"kstats-reloaded";s:7:"version";s:5:"0.7.4";s:5:"title";s:15:"kStats Reloaded";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:31:"rating-widget/rating-widget.php";a:5:{s:4:"slug";s:13:"rating-widget";s:7:"version";s:5:"2.9.4";s:5:"title";s:33:"Rating-Widget: Star Review System";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:33:"addthis/addthis_social_widget.php";a:5:{s:4:"slug";s:7:"addthis";s:7:"version";s:5:"6.1.2";s:5:"title";s:24:"Share Buttons by AddThis";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:21:"wp-polls/wp-polls.php";a:5:{s:4:"slug";s:8:"wp-polls";s:7:"version";s:6:"2.73.8";s:5:"title";s:8:"WP-Polls";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:33:"wp-postratings/wp-postratings.php";a:5:{s:4:"slug";s:14:"wp-postratings";s:7:"version";s:4:"1.85";s:5:"title";s:14:"WP-PostRatings";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}}}s:11:"all_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1523349337;s:3:"md5";s:32:"fb0548ae85126f3e8171301e16a8b4c8";s:7:"plugins";a:11:{s:21:"adrotate/adrotate.php";a:5:{s:4:"slug";s:8:"adrotate";s:7:"version";s:4:"4.10";s:5:"title";s:8:"AdRotate";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:30:"advanced-custom-fields/acf.php";a:5:{s:4:"slug";s:22:"advanced-custom-fields";s:7:"version";s:6:"4.4.12";s:5:"title";s:22:"Advanced Custom Fields";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:19:"akismet/akismet.php";a:5:{s:4:"slug";s:7:"akismet";s:7:"version";s:5:"4.0.2";s:5:"title";s:17:"Akismet Anti-Spam";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:45:"taxonomy-terms-order/taxonomy-terms-order.php";a:5:{s:4:"slug";s:20:"taxonomy-terms-order";s:7:"version";s:7:"1.5.3.2";s:5:"title";s:39:"Category Order and Taxonomy Terms Order";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:37:"download-manager/download-manager.php";a:5:{s:4:"slug";s:16:"download-manager";s:7:"version";s:6:"2.9.70";s:5:"title";s:16:"Download Manager";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:9:"hello.php";a:5:{s:4:"slug";s:11:"hello-dolly";s:7:"version";s:3:"1.6";s:5:"title";s:11:"Hello Dolly";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:35:"kstats-reloaded/kstats-reloaded.php";a:5:{s:4:"slug";s:15:"kstats-reloaded";s:7:"version";s:5:"0.7.4";s:5:"title";s:15:"kStats Reloaded";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:31:"rating-widget/rating-widget.php";a:5:{s:4:"slug";s:13:"rating-widget";s:7:"version";s:5:"2.9.4";s:5:"title";s:33:"Rating-Widget: Star Review System";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:33:"addthis/addthis_social_widget.php";a:5:{s:4:"slug";s:7:"addthis";s:7:"version";s:5:"6.1.2";s:5:"title";s:24:"Share Buttons by AddThis";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:21:"wp-polls/wp-polls.php";a:5:{s:4:"slug";s:8:"wp-polls";s:7:"version";s:6:"2.73.8";s:5:"title";s:8:"WP-Polls";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:33:"wp-postratings/wp-postratings.php";a:5:{s:4:"slug";s:14:"wp-postratings";s:7:"version";s:4:"1.85";s:5:"title";s:14:"WP-PostRatings";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}}}s:10:"all_themes";O:8:"stdClass":3:{s:9:"timestamp";i:1523349337;s:3:"md5";s:32:"d3b93fbbc5615ef5a8a54198d3e5780e";s:6:"themes";a:3:{s:13:"twentyfifteen";a:5:{s:4:"slug";s:13:"twentyfifteen";s:7:"version";s:3:"1.9";s:5:"title";s:14:"Twenty Fifteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:15:"twentyseventeen";a:5:{s:4:"slug";s:15:"twentyseventeen";s:7:"version";s:3:"1.4";s:5:"title";s:16:"Twenty Seventeen";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:13:"twentysixteen";a:5:{s:4:"slug";s:13:"twentysixteen";s:7:"version";s:3:"1.4";s:5:"title";s:14:"Twenty Sixteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}}}s:5:"sites";a:1:{s:13:"rating-widget";O:7:"FS_Site":25:{s:7:"site_id";s:7:"3855978";s:9:"plugin_id";s:2:"56";s:7:"user_id";s:7:"1091320";s:5:"title";s:8:"nongthon";s:3:"url";s:17:"http://dev5.local";s:7:"version";s:5:"2.9.4";s:8:"language";s:5:"en-US";s:7:"charset";s:5:"UTF-8";s:16:"platform_version";s:5:"4.9.4";s:11:"sdk_version";s:5:"2.0.1";s:28:"programming_language_version";s:6:"5.4.16";s:7:"plan_id";s:3:"103";s:10:"license_id";N;s:13:"trial_plan_id";N;s:10:"trial_ends";N;s:10:"is_premium";b:0;s:15:"is_disconnected";b:0;s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;s:10:"public_key";s:32:"pk_69491defdd381c453ab03a6c28c34";s:10:"secret_key";s:32:"sk_;<vyI92h-jGKm}n@!*!h(FG.lS{y!";s:2:"id";s:7:"1435671";s:7:"updated";N;s:7:"created";s:19:"2018-04-10 07:59:14";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:5:"users";a:1:{i:1091320;O:7:"FS_User":12:{s:5:"email";s:18:"nongthon@gmail.com";s:5:"first";s:5:"admin";s:4:"last";s:0:"";s:11:"is_verified";b:0;s:11:"customer_id";N;s:5:"gross";i:0;s:10:"public_key";s:32:"pk_6a205a37d9faa6329613e972af395";s:10:"secret_key";s:32:"sk_iDPFbQg]mFAfA?2unB~1!or$KL1n+";s:2:"id";s:7:"1091320";s:7:"updated";N;s:7:"created";s:19:"2018-04-10 07:59:13";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:23:"user_id_license_ids_map";a:1:{i:56;a:1:{i:1091320;a:0:{}}}s:12:"all_licenses";a:1:{i:56;a:0:{}}s:7:"updates";a:1:{i:56;N;}s:13:"admin_notices";a:1:{s:13:"rating-widget";a:0:{}}}', 'yes'),
(526, 'fs_api_cache', 'a:0:{}', 'yes'),
(528, 'widget_ratingwidgetplugin_topratedwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
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
(583, '_amn_smtp_last_checked', '1523750400', 'yes'),
(584, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(663, 'pagenavi_options', 'a:15:{s:10:"pages_text";s:0:"";s:12:"current_text";s:13:"%PAGE_NUMBER%";s:9:"page_text";s:13:"%PAGE_NUMBER%";s:10:"first_text";s:8:"« First";s:9:"last_text";s:7:"Last »";s:9:"prev_text";s:14:"Trang trước";s:9:"next_text";s:9:"Trang sau";s:12:"dotleft_text";s:3:"...";s:13:"dotright_text";s:3:"...";s:9:"num_pages";i:5;s:23:"num_larger_page_numbers";i:3;s:28:"larger_page_numbers_multiple";i:10;s:11:"always_show";i:0;s:16:"use_pagenavi_css";i:0;s:5:"style";i:1;}', 'yes'),
(676, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.5.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.4";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-rollback-4.zip";}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.4";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1523801538;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(677, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1523801543;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip";}}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"twentyfifteen";s:8:"language";s:2:"vi";s:7:"version";s:3:"1.9";s:7:"updated";s:19:"2015-10-22 10:28:45";s:7:"package";s:74:"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.9/vi.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:15:"twentyseventeen";s:8:"language";s:2:"vi";s:7:"version";s:3:"1.4";s:7:"updated";s:19:"2017-10-05 02:05:01";s:7:"package";s:76:"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.4/vi.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"twentysixteen";s:8:"language";s:2:"vi";s:7:"version";s:3:"1.4";s:7:"updated";s:19:"2016-12-05 01:43:13";s:7:"package";s:74:"https://downloads.wordpress.org/translation/theme/twentysixteen/1.4/vi.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(689, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1523812315', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(690, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4452;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2715;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2550;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2419;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1866;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1647;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1637;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1453;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1386;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1386;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1382;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1310;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1282;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1195;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1095;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1057;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1020;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1002;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:880;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:872;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:824;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:798;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:795;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:703;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:690;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:683;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:679;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:672;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:654;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:654;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:642;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:639;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:633;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:618;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:610;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:603;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:601;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:592;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:588;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:584;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:561;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:545;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:535;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:531;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:520;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:519;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:511;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:504;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:491;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:489;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:489;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:483;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:479;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:476;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:468;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:464;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:455;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:454;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:437;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:431;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:424;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:423;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:419;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:415;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:413;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:412;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:403;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:403;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:390;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:385;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:385;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:363;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:360;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:356;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:354;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:345;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:344;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:343;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:342;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:338;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:337;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:336;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:333;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:333;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:330;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:329;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:320;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:311;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:304;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:304;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:303;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:300;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:296;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:294;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:292;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:292;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:289;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:289;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:288;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:285;}}', 'no'),
(692, '_site_transient_timeout_theme_roots', '1523803341', 'no'),
(693, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(694, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1523801841;s:7:"checked";a:14:{s:21:"adrotate/adrotate.php";s:4:"4.10";s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:19:"akismet/akismet.php";s:5:"4.0.2";s:45:"taxonomy-terms-order/taxonomy-terms-order.php";s:7:"1.5.3.2";s:37:"download-manager/download-manager.php";s:6:"2.9.70";s:43:"envira-gallery-lite/envira-gallery-lite.php";s:5:"1.6.2";s:9:"hello.php";s:3:"1.6";s:35:"kstats-reloaded/kstats-reloaded.php";s:5:"0.7.4";s:31:"rating-widget/rating-widget.php";s:5:"2.9.4";s:33:"addthis/addthis_social_widget.php";s:5:"6.1.2";s:27:"wp-pagenavi/wp-pagenavi.php";s:4:"2.92";s:21:"wp-polls/wp-polls.php";s:6:"2.73.8";s:33:"wp-postratings/wp-postratings.php";s:4:"1.85";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:5:"1.2.5";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}s:33:"addthis/addthis_social_widget.php";O:8:"stdClass":13:{s:2:"id";s:21:"w.org/plugins/addthis";s:4:"slug";s:7:"addthis";s:6:"plugin";s:33:"addthis/addthis_social_widget.php";s:11:"new_version";s:5:"6.1.4";s:3:"url";s:38:"https://wordpress.org/plugins/addthis/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/addthis.6.1.4.zip";s:5:"icons";a:2:{s:2:"2x";s:60:"https://ps.w.org/addthis/assets/icon-256x256.png?rev=1223867";s:2:"1x";s:60:"https://ps.w.org/addthis/assets/icon-128x128.png?rev=1223867";}s:7:"banners";a:2:{s:2:"2x";s:63:"https://ps.w.org/addthis/assets/banner-1544x500.png?rev=1499004";s:2:"1x";s:62:"https://ps.w.org/addthis/assets/banner-772x250.png?rev=1499004";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:46:"<ul>\n<li>Remove uninstallation hook</li>\n</ul>";s:6:"tested";s:5:"4.9.5";s:12:"requires_php";N;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:7:"akismet";s:8:"language";s:2:"vi";s:7:"version";s:5:"4.0.2";s:7:"updated";s:19:"2017-10-05 16:53:44";s:7:"package";s:71:"https://downloads.wordpress.org/translation/plugin/akismet/4.0.2/vi.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"wp-pagenavi";s:8:"language";s:2:"vi";s:7:"version";s:4:"2.92";s:7:"updated";s:19:"2016-12-05 01:59:40";s:7:"package";s:74:"https://downloads.wordpress.org/translation/plugin/wp-pagenavi/2.92/vi.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:12:"wp-mail-smtp";s:8:"language";s:2:"vi";s:7:"version";s:6:"0.10.1";s:7:"updated";s:19:"2016-12-05 02:10:49";s:7:"package";s:77:"https://downloads.wordpress.org/translation/plugin/wp-mail-smtp/0.10.1/vi.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:12:{s:21:"adrotate/adrotate.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/adrotate";s:4:"slug";s:8:"adrotate";s:6:"plugin";s:21:"adrotate/adrotate.php";s:11:"new_version";s:4:"4.10";s:3:"url";s:39:"https://wordpress.org/plugins/adrotate/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/adrotate.4.10.zip";s:5:"icons";a:2:{s:2:"2x";s:60:"https://ps.w.org/adrotate/assets/icon-256x256.png?rev=970153";s:2:"1x";s:60:"https://ps.w.org/adrotate/assets/icon-128x128.png?rev=970153";}s:7:"banners";a:1:{s:2:"1x";s:63:"https://ps.w.org/adrotate/assets/banner-772x250.jpg?rev=1691423";}s:11:"banners_rtl";a:0:{}}s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:45:"taxonomy-terms-order/taxonomy-terms-order.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/taxonomy-terms-order";s:4:"slug";s:20:"taxonomy-terms-order";s:6:"plugin";s:45:"taxonomy-terms-order/taxonomy-terms-order.php";s:11:"new_version";s:7:"1.5.3.2";s:3:"url";s:51:"https://wordpress.org/plugins/taxonomy-terms-order/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.3.2.zip";s:5:"icons";a:2:{s:2:"2x";s:73:"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412";s:2:"1x";s:73:"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412";}s:7:"banners";a:2:{s:2:"2x";s:76:"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412";s:2:"1x";s:75:"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412";}s:11:"banners_rtl";a:0:{}}s:37:"download-manager/download-manager.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/download-manager";s:4:"slug";s:16:"download-manager";s:6:"plugin";s:37:"download-manager/download-manager.php";s:11:"new_version";s:6:"2.9.70";s:3:"url";s:47:"https://wordpress.org/plugins/download-manager/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/download-manager.zip";s:5:"icons";a:2:{s:2:"2x";s:69:"https://ps.w.org/download-manager/assets/icon-256x256.png?rev=1561688";s:2:"1x";s:69:"https://ps.w.org/download-manager/assets/icon-128x128.png?rev=1561688";}s:7:"banners";a:1:{s:2:"1x";s:71:"https://ps.w.org/download-manager/assets/banner-772x250.png?rev=1722853";}s:11:"banners_rtl";a:0:{}}s:43:"envira-gallery-lite/envira-gallery-lite.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/envira-gallery-lite";s:4:"slug";s:19:"envira-gallery-lite";s:6:"plugin";s:43:"envira-gallery-lite/envira-gallery-lite.php";s:11:"new_version";s:5:"1.6.2";s:3:"url";s:50:"https://wordpress.org/plugins/envira-gallery-lite/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/envira-gallery-lite.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/envira-gallery-lite/assets/icon-256x256.png?rev=1100497";s:2:"1x";s:72:"https://ps.w.org/envira-gallery-lite/assets/icon-128x128.png?rev=1100497";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/envira-gallery-lite/assets/banner-1544x500.jpg?rev=1686480";s:2:"1x";s:74:"https://ps.w.org/envira-gallery-lite/assets/banner-772x250.jpg?rev=1686480";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:35:"kstats-reloaded/kstats-reloaded.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/kstats-reloaded";s:4:"slug";s:15:"kstats-reloaded";s:6:"plugin";s:35:"kstats-reloaded/kstats-reloaded.php";s:11:"new_version";s:5:"0.7.4";s:3:"url";s:46:"https://wordpress.org/plugins/kstats-reloaded/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/kstats-reloaded.0.7.4.zip";s:5:"icons";a:1:{s:7:"default";s:59:"https://s.w.org/plugins/geopattern-icon/kstats-reloaded.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:31:"rating-widget/rating-widget.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/rating-widget";s:4:"slug";s:13:"rating-widget";s:6:"plugin";s:31:"rating-widget/rating-widget.php";s:11:"new_version";s:5:"2.9.4";s:3:"url";s:44:"https://wordpress.org/plugins/rating-widget/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/rating-widget.2.9.4.zip";s:5:"icons";a:2:{s:2:"2x";s:65:"https://ps.w.org/rating-widget/assets/icon-256x256.jpg?rev=983319";s:2:"1x";s:65:"https://ps.w.org/rating-widget/assets/icon-128x128.jpg?rev=983319";}s:7:"banners";a:1:{s:2:"1x";s:67:"https://ps.w.org/rating-widget/assets/banner-772x250.png?rev=903722";}s:11:"banners_rtl";a:1:{s:2:"1x";s:72:"https://ps.w.org/rating-widget/assets/banner-772x250-rtl.png?rev=1305765";}}s:27:"wp-pagenavi/wp-pagenavi.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/wp-pagenavi";s:4:"slug";s:11:"wp-pagenavi";s:6:"plugin";s:27:"wp-pagenavi/wp-pagenavi.php";s:11:"new_version";s:4:"2.92";s:3:"url";s:42:"https://wordpress.org/plugins/wp-pagenavi/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/wp-pagenavi.2.92.zip";s:5:"icons";a:2:{s:2:"1x";s:55:"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997";s:3:"svg";s:55:"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758";s:2:"1x";s:66:"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758";}s:11:"banners_rtl";a:0:{}}s:21:"wp-polls/wp-polls.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/wp-polls";s:4:"slug";s:8:"wp-polls";s:6:"plugin";s:21:"wp-polls/wp-polls.php";s:11:"new_version";s:6:"2.73.8";s:3:"url";s:39:"https://wordpress.org/plugins/wp-polls/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/wp-polls.2.73.8.zip";s:5:"icons";a:2:{s:2:"1x";s:52:"https://ps.w.org/wp-polls/assets/icon.svg?rev=977996";s:3:"svg";s:52:"https://ps.w.org/wp-polls/assets/icon.svg?rev=977996";}s:7:"banners";a:2:{s:2:"2x";s:64:"https://ps.w.org/wp-polls/assets/banner-1544x500.jpg?rev=1206760";s:2:"1x";s:63:"https://ps.w.org/wp-polls/assets/banner-772x250.jpg?rev=1206760";}s:11:"banners_rtl";a:0:{}}s:33:"wp-postratings/wp-postratings.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-postratings";s:4:"slug";s:14:"wp-postratings";s:6:"plugin";s:33:"wp-postratings/wp-postratings.php";s:11:"new_version";s:4:"1.85";s:3:"url";s:45:"https://wordpress.org/plugins/wp-postratings/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-postratings.1.85.zip";s:5:"icons";a:2:{s:2:"1x";s:58:"https://ps.w.org/wp-postratings/assets/icon.svg?rev=978014";s:3:"svg";s:58:"https://ps.w.org/wp-postratings/assets/icon.svg?rev=978014";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/wp-postratings/assets/banner-1544x500.jpg?rev=1206761";s:2:"1x";s:69:"https://ps.w.org/wp-postratings/assets/banner-772x250.jpg?rev=1206761";}s:11:"banners_rtl";a:0:{}}s:29:"wp-mail-smtp/wp_mail_smtp.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/wp-mail-smtp";s:4:"slug";s:12:"wp-mail-smtp";s:6:"plugin";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:11:"new_version";s:5:"1.2.5";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-smtp/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/wp-mail-smtp.zip";s:5:"icons";a:2:{s:2:"2x";s:65:"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440";s:2:"1x";s:65:"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440";}s:7:"banners";a:2:{s:2:"2x";s:68:"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1785565";s:2:"1x";s:67:"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1785565";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(695, 'envira_gallery_116', '1', 'yes'),
(696, 'envira_gallery_121', '1', 'yes'),
(697, '_amn_envira-lite_last_checked', '1523750400', 'yes'),
(698, '_transient_timeout_plugin_slugs', '1523888249', 'no'),
(699, '_transient_plugin_slugs', 'a:14:{i:0;s:21:"adrotate/adrotate.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:19:"akismet/akismet.php";i:3;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:4;s:37:"download-manager/download-manager.php";i:5;s:43:"envira-gallery-lite/envira-gallery-lite.php";i:6;s:9:"hello.php";i:7;s:35:"kstats-reloaded/kstats-reloaded.php";i:8;s:31:"rating-widget/rating-widget.php";i:9;s:33:"addthis/addthis_social_widget.php";i:10;s:27:"wp-pagenavi/wp-pagenavi.php";i:11;s:21:"wp-polls/wp-polls.php";i:12;s:33:"wp-postratings/wp-postratings.php";i:13;s:29:"wp-mail-smtp/wp_mail_smtp.php";}', 'no'),
(700, 'envira_gallery_review', 'a:2:{s:4:"time";i:1523801849;s:9:"dismissed";b:0;}', 'yes'),
(728, '_transient_timeout__eg_addons', '1523892255', 'no'),
(729, '_transient__eg_addons', 'a:32:{i:0;O:8:"stdClass":6:{s:5:"title";s:12:"Albums Addon";s:4:"slug";s:13:"envira-albums";s:7:"version";s:5:"1.6.0";s:5:"image";s:69:"https://enviragallery.com/wp-content/uploads/2015/10/albums-addon.png";s:7:"excerpt";s:178:"Give your galleries a place to call home with the Albums addon. Create albums, add galleries, manage cover photos, show gallery titles and even image counts in this superb addon!";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:1;O:8:"stdClass":6:{s:5:"title";s:17:"Breadcrumbs Addon";s:4:"slug";s:18:"envira-breadcrumbs";s:7:"version";s:5:"1.2.0";s:5:"image";s:74:"https://enviragallery.com/wp-content/uploads/2016/05/breadcrumbs_addon.png";s:7:"excerpt";s:178:"Envira Gallery Album Breadcrumbs for WordPress allows you to add breadcrumb navigation links to your WordPress galleries allowing your users to easily browse through your albums.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:2;O:8:"stdClass":6:{s:5:"title";s:9:"CSS Addon";s:4:"slug";s:10:"envira-css";s:7:"version";s:5:"1.3.0";s:5:"image";s:66:"https://enviragallery.com/wp-content/uploads/2015/10/css-addon.png";s:7:"excerpt";s:149:"Place your own custom CSS into each individual gallery with the CSS addon, giving you endless possibilities for your gallery style and display views.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:3;O:8:"stdClass":6:{s:5:"title";s:17:"Deeplinking Addon";s:4:"slug";s:18:"envira-deeplinking";s:7:"version";s:5:"1.4.0";s:5:"image";s:74:"https://enviragallery.com/wp-content/uploads/2015/10/deeplinking-addon.png";s:7:"excerpt";s:151:"Get full SEO benefits and granular control over your galleries with the Deeplinking addon. Create unique, indexable URLs for each item in your gallery.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:4;O:8:"stdClass":6:{s:5:"title";s:14:"Defaults Addon";s:4:"slug";s:15:"envira-defaults";s:7:"version";s:5:"1.4.0";s:5:"image";s:71:"https://enviragallery.com/wp-content/uploads/2015/10/defaults-addon.png";s:7:"excerpt";s:113:"The Defaults Addon allows you to easily specify default settings for all new galleries that you create in Envira.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:5;O:8:"stdClass":6:{s:5:"title";s:15:"Downloads Addon";s:4:"slug";s:16:"envira-downloads";s:7:"version";s:5:"1.3.0";s:5:"image";s:72:"https://enviragallery.com/wp-content/uploads/2016/05/downloads-addon.png";s:7:"excerpt";s:102:"Give your users the ability to download your images and galleries with an easy to use download button.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:6;O:8:"stdClass":6:{s:5:"title";s:22:"Dropbox Importer Addon";s:4:"slug";s:23:"envira-dropbox-importer";s:7:"version";s:5:"1.3.0";s:5:"image";s:70:"https://enviragallery.com/wp-content/uploads/2015/10/dropbox-addon.png";s:7:"excerpt";s:140:"The Dropbox Importer Addon for Envira Gallery allows you to import images from your Dropbox account, straight in to your Envira Galleries.\r\n";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:7;O:8:"stdClass":6:{s:5:"title";s:13:"Dynamic Addon";s:4:"slug";s:14:"envira-dynamic";s:7:"version";s:5:"1.5.0";s:5:"image";s:70:"https://enviragallery.com/wp-content/uploads/2015/10/dynamic-addon.png";s:7:"excerpt";s:108:"The Dynamic Addon is a powerful Envira Addon that lets you create dynamic and powerful galleries on the fly.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:8;O:8:"stdClass":6:{s:5:"title";s:10:"EXIF Addon";s:4:"slug";s:11:"envira-exif";s:7:"version";s:5:"1.3.0";s:5:"image";s:67:"https://enviragallery.com/wp-content/uploads/2015/10/exif-addon.png";s:7:"excerpt";s:108:"The EXIF Addon for Envira Gallery allows you to display EXIF metadata in your galleries and lightbox images.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:9;O:8:"stdClass":6:{s:5:"title";s:22:"Featured Content Addon";s:4:"slug";s:23:"envira-featured-content";s:7:"version";s:5:"1.2.0";s:5:"image";s:79:"https://enviragallery.com/wp-content/uploads/2016/05/featured_content_addon.png";s:7:"excerpt";s:109:"Easily create WordPress galleries based on posts, pages, products, testimonials, and other custom post types.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:10;O:8:"stdClass":6:{s:5:"title";s:16:"Fullscreen Addon";s:4:"slug";s:17:"envira-fullscreen";s:7:"version";s:5:"1.2.0";s:5:"image";s:73:"https://enviragallery.com/wp-content/uploads/2015/10/fullscreen-addon.png";s:7:"excerpt";s:173:"Take your gallery to the next and biggest viewing environment with the Fullscreen addon. Blow up your images as large as they can be with the native fullscreen browser mode.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:11;O:8:"stdClass":6:{s:5:"title";s:20:"Gallery Themes Addon";s:4:"slug";s:21:"envira-gallery-themes";s:7:"version";s:5:"1.4.0";s:5:"image";s:74:"https://enviragallery.com/wp-content/uploads/2015/10/gallery-templates.png";s:7:"excerpt";s:87:"Enhance the appearance of your gallery layout with beautiful and custom gallery themes!";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:12;O:8:"stdClass":6:{s:5:"title";s:15:"Instagram Addon";s:4:"slug";s:16:"envira-instagram";s:7:"version";s:5:"1.4.0";s:5:"image";s:72:"https://enviragallery.com/wp-content/uploads/2015/08/instagram-addon.png";s:7:"excerpt";s:169:"Showcase your Instagram photos in your WordPress galleries. Envira''s Instagram addon allows you to import your images from Instagram into WordPress with 3 simple clicks.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:13;O:8:"stdClass":6:{s:5:"title";s:15:"Lightroom Addon";s:4:"slug";s:16:"envira-lightroom";s:7:"version";s:5:"2.2.0";s:5:"image";s:72:"https://enviragallery.com/wp-content/uploads/2016/01/lightroom-addon.png";s:7:"excerpt";s:150:"The Lightroom Addon for Envira Gallery allows you to automatically create and sync photo galleries from your Adobe Lightroom collections in WordPress.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:14;O:8:"stdClass":6:{s:5:"title";s:22:"NextGEN Importer Addon";s:4:"slug";s:23:"envira-nextgen-importer";s:7:"version";s:5:"1.2.0";s:5:"image";s:81:"https://enviragallery.com/wp-content/uploads/2015/10/nextgen-gallery-importer.png";s:7:"excerpt";s:103:"The NextGEN Importer addon allows you to import NextGEN galleries, albums and tags into Envira Gallery!";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:15;O:8:"stdClass":6:{s:5:"title";s:16:"Pagination Addon";s:4:"slug";s:17:"envira-pagination";s:7:"version";s:5:"1.6.0";s:5:"image";s:73:"https://enviragallery.com/wp-content/uploads/2015/10/pagination-addon.png";s:7:"excerpt";s:110:"The Pagination addon allows you to paginate gallery images across multiple pages - ideal for larger galleries.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:16;O:8:"stdClass":6:{s:5:"title";s:25:"Password Protection Addon";s:4:"slug";s:26:"envira-password-protection";s:7:"version";s:5:"1.3.0";s:5:"image";s:76:"https://enviragallery.com/wp-content/uploads/2015/10/password-protection.png";s:7:"excerpt";s:135:"The password protection addon allows you to password protect your galleries. This is a perfect solution for exclusive client galleries!";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:17;O:8:"stdClass":6:{s:5:"title";s:15:"Pinterest Addon";s:4:"slug";s:16:"envira-pinterest";s:7:"version";s:5:"1.3.0";s:5:"image";s:72:"https://enviragallery.com/wp-content/uploads/2015/10/pinterest-addon.png";s:7:"excerpt";s:122:"The Pinterest Addon allows you to add beautiful and easy to use "Pin It" buttons to images in your gallery lightbox views.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:18;O:8:"stdClass":6:{s:5:"title";s:14:"Printing Addon";s:4:"slug";s:15:"envira-printing";s:7:"version";s:5:"1.2.0";s:5:"image";s:93:"https://enviragallery.com/wp-content/uploads/2016/09/28dd50a0-6ed5-11e6-84c3-2694fee9a9d2.png";s:7:"excerpt";s:72:"Allow visitors to easily print photos from your WordPress image gallery.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:19;O:8:"stdClass":6:{s:5:"title";s:14:"Proofing Addon";s:4:"slug";s:15:"envira-proofing";s:7:"version";s:5:"1.3.0";s:5:"image";s:71:"https://enviragallery.com/wp-content/uploads/2015/10/image-proofing.png";s:7:"excerpt";s:148:"Want to add a photo proofing process in your WordPress photo galleries? Envira adds photo proofing into WordPress to help with your client workflow.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:20;O:8:"stdClass":6:{s:5:"title";s:16:"Protection Addon";s:4:"slug";s:17:"envira-protection";s:7:"version";s:5:"1.3.0";s:5:"image";s:73:"https://enviragallery.com/wp-content/uploads/2015/10/protection-addon.png";s:7:"excerpt";s:203:"The Protection addon disables the ability for visitors to right click and download your images (both gallery display and lightbox views). It gives you complete freedom to display your work without worry.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:21;O:8:"stdClass":6:{s:5:"title";s:14:"Schedule Addon";s:4:"slug";s:15:"envira-schedule";s:7:"version";s:5:"1.2.0";s:5:"image";s:71:"https://enviragallery.com/wp-content/uploads/2017/04/schedule_addon.png";s:7:"excerpt";s:153:"Want to display images at certain times? With Envira Gallery, you can schedule gallery images or entire galleries and albums for specific time intervals.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:22;O:8:"stdClass":6:{s:5:"title";s:15:"Slideshow Addon";s:4:"slug";s:16:"envira-slideshow";s:7:"version";s:5:"1.3.0";s:5:"image";s:72:"https://enviragallery.com/wp-content/uploads/2015/10/slideshow-addon.png";s:7:"excerpt";s:135:"Turn your gallery lightbox view into a slideshow for your visitors. You can customize settings such as autoplaying and slideshow speed.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:23;O:8:"stdClass":6:{s:5:"title";s:12:"Social Addon";s:4:"slug";s:13:"envira-social";s:7:"version";s:5:"1.5.0";s:5:"image";s:70:"https://enviragallery.com/wp-content/uploads/2015/10/socialsharing.png";s:7:"excerpt";s:137:"The Social Addon for Envira allows you to share your gallery images on all your favorite social networks like Facebook, Twitter and more!";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:24;O:8:"stdClass":6:{s:5:"title";s:20:"Standalone Galleries";s:4:"slug";s:17:"envira-standalone";s:7:"version";s:7:"1.1.3.1";s:5:"image";s:73:"https://enviragallery.com/wp-content/uploads/2015/10/standalone-addon.png";s:7:"excerpt";s:159:"The standalone addon allows you to access galleries created through the Envira post type with unique URLs. Now your galleries can have dedicated gallery pages!";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:25;O:8:"stdClass":6:{s:5:"title";s:25:"Supersize Lightbox Images";s:4:"slug";s:16:"envira-supersize";s:7:"version";s:5:"1.1.4";s:5:"image";s:72:"https://enviragallery.com/wp-content/uploads/2015/10/supersize-addon.png";s:7:"excerpt";s:148:"The Supersize addon allows you to display images at full scale when in lightbox mode. Enjoy breathtaking views of your photos on any viewing device.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:26;O:8:"stdClass":6:{s:5:"title";s:10:"Tags Addon";s:4:"slug";s:11:"envira-tags";s:7:"version";s:5:"1.7.0";s:5:"image";s:67:"https://enviragallery.com/wp-content/uploads/2015/10/tags-addon.png";s:7:"excerpt";s:220:"The Tags addon allows you to add custom tags to each of your images in your galleries. You can then query a custom gallery from tags used for your images, and you can even do animated tag filtering within your galleries.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:27;O:8:"stdClass":6:{s:5:"title";s:12:"Videos Addon";s:4:"slug";s:13:"envira-videos";s:7:"version";s:5:"1.4.0";s:5:"image";s:69:"https://enviragallery.com/wp-content/uploads/2015/10/videos-addon.png";s:7:"excerpt";s:184:"The Envira Video Gallery plugin for WordPress allows you to create a beautiful video gallery from YouTube, Vimeo, Wistia and self-hosted videos. Create your video gallery in WordPress.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:28;O:8:"stdClass":6:{s:5:"title";s:18:"Watermarking Addon";s:4:"slug";s:19:"envira-watermarking";s:7:"version";s:5:"1.3.0";s:5:"image";s:72:"https://enviragallery.com/wp-content/uploads/2015/10/watermark-addon.png";s:7:"excerpt";s:61:"Protect your photos by adding custom watermarks in WordPress.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:29;O:8:"stdClass":6:{s:5:"title";s:17:"WooCommerce Addon";s:4:"slug";s:18:"envira-woocommerce";s:7:"version";s:5:"1.4.0";s:5:"image";s:74:"https://enviragallery.com/wp-content/uploads/2015/10/woocommerce-addon.png";s:7:"excerpt";s:148:"Do you want to sell your photos in WordPress? Envira gallery offers a complete integration with WooCommerce allowing you to easily sell your photos.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:30;O:8:"stdClass":6:{s:5:"title";s:18:"ZIP Importer Addon";s:4:"slug";s:19:"envira-zip-importer";s:7:"version";s:5:"1.2.0";s:5:"image";s:75:"https://enviragallery.com/wp-content/uploads/2015/10/zip-importer-addon.png";s:7:"excerpt";s:56:"Easily import photos from a .zip file into your gallery.";s:10:"categories";a:2:{i:0;N;i:1;N;}}i:31;O:8:"stdClass":6:{s:5:"title";s:10:"Zoom Addon";s:4:"slug";s:11:"envira-zoom";s:7:"version";s:5:"1.3.0";s:5:"image";s:67:"https://enviragallery.com/wp-content/uploads/2016/05/zoom-addon.png";s:7:"excerpt";s:77:"Adds zoom functionality to images in your gallery to allow up close browsing.";s:10:"categories";a:2:{i:0;N;i:1;N;}}}', 'no'),
(730, '_transient_is_multi_author', '0', 'yes'),
(731, '_transient_timeout__eg_cache_224', '1523892755', 'no'),
(732, '_transient__eg_cache_224', 'a:3:{s:2:"id";i:224;s:7:"gallery";a:6:{i:225;a:7:{s:6:"status";s:6:"active";s:3:"src";s:78:"http://nongthon-wp.local/wp-content/uploads/2018/04/013c846b776f9931c07e-1.jpg";s:5:"title";s:4:"img1";s:4:"link";s:78:"http://nongthon-wp.local/wp-content/uploads/2018/04/013c846b776f9931c07e-1.jpg";s:3:"alt";s:4:"fefe";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:226;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-1.jpg";s:5:"title";s:5:"ffff2";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-1.jpg";s:3:"alt";s:4:"fff2";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:232;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0114923t8813l2-1.jpg";s:5:"title";s:17:"77d0114923t8813l2";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d0114923t8813l2-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:233;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d3055028t3182l0-1.jpg";s:5:"title";s:17:"77d3055028t3182l0";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d3055028t3182l0-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:234;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d5124827t5546l3-1.jpg";s:5:"title";s:17:"77d5124827t5546l3";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d5124827t5546l3-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}i:235;a:7:{s:6:"status";s:6:"active";s:3:"src";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d6121625t1758l0-1.jpg";s:5:"title";s:17:"77d6121625t1758l0";s:4:"link";s:75:"http://nongthon-wp.local/wp-content/uploads/2018/04/77d6121625t1758l0-1.jpg";s:3:"alt";s:0:"";s:7:"caption";s:0:"";s:5:"thumb";s:0:"";}}s:6:"config";a:21:{s:4:"type";s:7:"default";s:7:"columns";s:1:"4";s:13:"gallery_theme";s:4:"base";s:23:"justified_gallery_theme";s:6:"normal";s:6:"gutter";i:10;s:6:"margin";i:10;s:10:"image_size";s:7:"default";s:10:"crop_width";i:640;s:11:"crop_height";i:480;s:4:"crop";i:0;s:12:"lazy_loading";i:1;s:18:"lazy_loading_delay";i:500;s:20:"justified_row_height";i:150;s:16:"lightbox_enabled";i:1;s:14:"lightbox_theme";s:4:"base";s:19:"lightbox_image_size";s:7:"default";s:13:"title_display";s:7:"outside";s:7:"classes";a:1:{i:0;s:0:"";}s:3:"rtl";i:0;s:5:"title";s:6:"album1";s:4:"slug";s:6:"album1";}}', 'no');

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
) ENGINE=InnoDB AUTO_INCREMENT=770 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(20, 11, '_edit_lock', '1523806387:1'),
(21, 13, '_edit_last', '1'),
(22, 13, '_edit_lock', '1522939123:1'),
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
(640, 203, '_edit_lock', '1523804799:1'),
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
(692, 214, '_edit_lock', '1523792736:1'),
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
(727, 211, 'post_views_count', '2'),
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
(757, 11, 'post_views_count', '20'),
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
(769, 11, 'album_id', '224');

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
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(11, 1, '2018-04-05 14:40:50', '2018-04-05 14:40:50', '[envira-gallery id="224"]', 'Thư viện ảnh', '', 'publish', 'closed', 'closed', '', 'thu-vien-anh', '', '', '2018-04-15 21:30:54', '2018-04-15 14:30:54', '', 0, 'http://nongthon-wp.local/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-04-05 14:40:50', '2018-04-05 14:40:50', '', 'Thư viện ảnh', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-05 14:40:50', '2018-04-05 14:40:50', '', 11, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-04-05 14:41:02', '2018-04-05 14:41:02', '', 'Hỏi đáp', '', 'publish', 'closed', 'closed', '', 'hoi-dap', '', '', '2018-04-05 14:41:02', '2018-04-05 14:41:02', '', 0, 'http://nongthon-wp.local/?page_id=13', 0, 'page', '', 0),
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
(68, 1, '2018-04-09 03:03:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-09 03:03:57', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?p=68', 0, 'post', '', 0),
(69, 1, '2018-04-09 03:04:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-09 03:04:34', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=acf&p=69', 0, 'acf', '', 0),
(70, 1, '2018-04-09 03:22:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 03:22:30', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=70', 0, 'wpdmpro', '', 0),
(71, 1, '2018-04-09 03:23:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 03:23:28', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=71', 0, 'wpdmpro', '', 0),
(72, 1, '2018-04-09 03:23:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 03:23:33', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=72', 0, 'wpdmpro', '', 0),
(73, 1, '2018-04-09 03:24:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-09 03:24:53', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=acf&p=73', 0, 'acf', '', 0),
(74, 1, '2018-04-09 03:35:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-09 03:35:29', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?p=74', 0, 'post', '', 0),
(75, 1, '2018-04-09 03:40:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-09 03:40:36', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=sanpham&p=75', 0, 'sanpham', '', 0),
(76, 1, '2018-04-09 03:50:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 03:50:54', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=76', 0, 'wpdmpro', '', 0),
(77, 1, '2018-04-09 03:51:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 03:51:42', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=77', 0, 'wpdmpro', '', 0),
(78, 1, '2018-04-09 04:01:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 04:01:59', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=78', 0, 'wpdmpro', '', 0),
(79, 1, '2018-04-09 04:02:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-09 04:02:06', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=acf&p=79', 0, 'acf', '', 0),
(80, 1, '2018-04-09 04:20:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-09 04:20:42', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=acf&p=80', 0, 'acf', '', 0),
(81, 1, '2018-04-09 04:20:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-09 04:20:49', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?p=81', 0, 'post', '', 0),
(82, 1, '2018-04-09 04:21:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 04:21:07', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=82', 0, 'wpdmpro', '', 0),
(83, 1, '2018-04-09 06:31:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 06:31:42', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=83', 0, 'wpdmpro', '', 0),
(84, 1, '2018-04-09 06:32:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 06:32:47', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=84', 0, 'wpdmpro', '', 0),
(85, 1, '2018-04-09 07:55:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 07:55:11', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=85', 0, 'wpdmpro', '', 0),
(86, 1, '2018-04-09 07:58:04', '2018-04-09 07:58:04', '', 'field in download', '', 'publish', 'closed', 'closed', '', 'acf_field-in-download', '', '', '2018-04-15 18:48:18', '2018-04-15 11:48:18', '', 0, 'http://dev5.local/?post_type=acf&#038;p=86', 0, 'acf', '', 0),
(87, 1, '2018-04-09 08:01:15', '2018-04-09 08:01:15', 'Donec sollicitudin molestie malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada.', 'Danh sách các xã khó khăn', '', 'publish', 'open', 'closed', '', 'danh-sach-cac-xa-kho-khan', '', '', '2018-04-09 08:01:15', '2018-04-09 08:01:15', '', 0, 'http://dev5.local/?post_type=wpdmpro&#038;p=87', 0, 'wpdmpro', '', 0),
(88, 1, '2018-04-09 08:32:18', '0000-00-00 00:00:00', '', 'Quyết định số 1920/QĐ-TTg', '', 'draft', 'open', 'closed', '', '', '', '', '2018-04-09 08:32:18', '2018-04-09 08:32:18', '', 0, 'http://dev5.local/?post_type=wpdmpro&#038;p=88', 0, 'wpdmpro', '', 0),
(89, 1, '2018-04-09 08:38:45', '0000-00-00 00:00:00', '', 'êrerer', '', 'draft', 'open', 'closed', '', '', '', '', '2018-04-09 08:38:45', '2018-04-09 08:38:45', '', 0, 'http://dev5.local/?post_type=wpdmpro&#038;p=89', 0, 'wpdmpro', '', 0),
(91, 1, '2018-04-09 08:55:07', '2018-04-09 08:55:07', 'test', 'ffff', '', 'publish', 'open', 'open', '', 'ffff', '', '', '2018-04-09 08:55:07', '2018-04-09 08:55:07', '', 0, 'http://dev5.local/?p=91', 0, 'post', '', 0),
(92, 1, '2018-04-09 08:55:07', '2018-04-09 08:55:07', 'test', 'ffff', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-04-09 08:55:07', '2018-04-09 08:55:07', '', 91, 'http://dev5.local/diem-bao-hang-ngay-ve-ntm/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-04-09 08:55:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-04-09 08:55:32', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=wpdmpro&p=93', 0, 'wpdmpro', '', 0),
(138, 1, '2018-04-09 10:08:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-09 10:08:20', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=van-ban&p=138', 0, 'van-ban', '', 0),
(141, 1, '2018-04-09 10:09:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-09 10:09:42', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=van-ban&p=141', 0, 'van-ban', '', 0),
(142, 1, '2018-04-09 10:09:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-09 10:09:43', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?post_type=van-ban&p=142', 0, 'van-ban', '', 0),
(153, 1, '2018-04-09 11:26:56', '2018-04-09 11:26:56', '', '828-ubnd-tinh-qd-ve-viec-chap-thuan-va-giao-bo-sung-do-dau-thuc-hien-chuong-trinh-mtqg-xay-dung-nong-thon-moi-giai-1', '', 'inherit', 'open', 'closed', '', '828-ubnd-tinh-qd-ve-viec-chap-thuan-va-giao-bo-sung-do-dau-thuc-hien-chuong-trinh-mtqg-xay-dung-nong-thon-moi-giai-1', '', '', '2018-04-09 11:26:56', '2018-04-09 11:26:56', '', 0, 'http://nongthon-wp.local/wp-content/uploads/2018/04/828-ubnd-tinh-qd-ve-viec-chap-thuan-va-giao-bo-sung-do-dau-thuc-hien-chuong-trinh-mtqg-xay-dung-nong-thon-moi-giai-1.pdf', 0, 'attachment', 'application/pdf', 0),
(158, 1, '2018-04-09 11:31:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-09 11:31:12', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?post_type=van-ban&p=158', 0, 'van-ban', '', 0),
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
(236, 1, '2018-04-15 22:11:35', '2018-04-15 15:11:35', '', 'Field in album', '', 'trash', 'closed', 'closed', '', 'acf_field-in-album__trashed', '', '', '2018-04-15 22:12:14', '2018-04-15 15:12:14', '', 0, 'http://nongthon-wp.local/?post_type=acf&#038;p=236', 0, 'acf', '', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(40, 'gg', 'gg', 0, 0);

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
(221, 30, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(40, 40, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o'),
(18, 1, 'wp_user-settings-time', '1523802220'),
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
(32, 1, 'metaboxhidden_page', 'a:8:{i:0;s:6:"acf_58";i:1;s:6:"acf_86";i:2;s:6:"acf_63";i:3;s:12:"revisionsdiv";i:4;s:16:"commentstatusdiv";i:5;s:11:"commentsdiv";i:6;s:7:"slugdiv";i:7;s:9:"authordiv";}');

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
  MODIFY `id` bigint(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `wp_adrotate_stats_archive`
--
ALTER TABLE `wp_adrotate_stats_archive`
  MODIFY `id` bigint(9) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_adrotate_tracker`
--
ALTER TABLE `wp_adrotate_tracker`
  MODIFY `id` bigint(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2344;
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
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=733;
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
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=770;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=237;
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
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;