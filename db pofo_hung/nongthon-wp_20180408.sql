-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2018 at 05:06 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(12, 4, 2, 1523145600, 0, 37);

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
) ENGINE=InnoDB AUTO_INCREMENT=593 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_adrotate_tracker`
--

INSERT INTO `wp_adrotate_tracker` (`id`, `ipaddress`, `timer`, `bannerid`, `stat`) VALUES
(465, '127.0.0.1', 1523179403, 2, 'i'),
(466, '127.0.0.1', 1523179403, 1, 'i'),
(467, '127.0.0.1', 1523180388, 1, 'i'),
(468, '127.0.0.1', 1523180388, 2, 'i'),
(469, '127.0.0.1', 1523180776, 2, 'i'),
(470, '127.0.0.1', 1523180776, 1, 'i'),
(471, '127.0.0.1', 1523180776, 3, 'i'),
(472, '127.0.0.1', 1523180777, 4, 'i'),
(473, '127.0.0.1', 1523180884, 1, 'i'),
(474, '127.0.0.1', 1523180884, 2, 'i'),
(475, '127.0.0.1', 1523180884, 3, 'i'),
(476, '127.0.0.1', 1523180884, 4, 'i'),
(477, '127.0.0.1', 1523180965, 2, 'i'),
(478, '127.0.0.1', 1523180965, 1, 'i'),
(479, '127.0.0.1', 1523180965, 4, 'i'),
(480, '127.0.0.1', 1523180965, 3, 'i'),
(481, '127.0.0.1', 1523181057, 2, 'i'),
(482, '127.0.0.1', 1523181057, 1, 'i'),
(483, '127.0.0.1', 1523181080, 3, 'i'),
(484, '127.0.0.1', 1523181080, 4, 'i'),
(485, '127.0.0.1', 1523181229, 2, 'i'),
(486, '127.0.0.1', 1523181229, 1, 'i'),
(487, '127.0.0.1', 1523181229, 4, 'i'),
(488, '127.0.0.1', 1523181229, 3, 'i'),
(489, '127.0.0.1', 1523181444, 1, 'i'),
(490, '127.0.0.1', 1523181444, 2, 'i'),
(491, '127.0.0.1', 1523181444, 4, 'i'),
(492, '127.0.0.1', 1523181444, 3, 'i'),
(493, '127.0.0.1', 1523181914, 2, 'i'),
(494, '127.0.0.1', 1523181914, 1, 'i'),
(495, '127.0.0.1', 1523181914, 4, 'i'),
(496, '127.0.0.1', 1523181914, 3, 'i'),
(497, '127.0.0.1', 1523181977, 1, 'i'),
(498, '127.0.0.1', 1523181977, 2, 'i'),
(499, '127.0.0.1', 1523181977, 3, 'i'),
(500, '127.0.0.1', 1523181977, 4, 'i'),
(501, '127.0.0.1', 1523182038, 2, 'i'),
(502, '127.0.0.1', 1523182038, 1, 'i'),
(503, '127.0.0.1', 1523182096, 3, 'i'),
(504, '127.0.0.1', 1523182096, 4, 'i'),
(505, '127.0.0.1', 1523182153, 1, 'i'),
(506, '127.0.0.1', 1523182153, 2, 'i'),
(507, '127.0.0.1', 1523182197, 3, 'i'),
(508, '127.0.0.1', 1523182198, 4, 'i'),
(509, '127.0.0.1', 1523182304, 2, 'i'),
(510, '127.0.0.1', 1523182304, 1, 'i'),
(511, '127.0.0.1', 1523182304, 4, 'i'),
(512, '127.0.0.1', 1523182304, 3, 'i'),
(513, '127.0.0.1', 1523182480, 2, 'i'),
(514, '127.0.0.1', 1523182480, 1, 'i'),
(515, '127.0.0.1', 1523182480, 4, 'i'),
(516, '127.0.0.1', 1523182480, 3, 'i'),
(517, '127.0.0.1', 1523182561, 2, 'i'),
(518, '127.0.0.1', 1523182561, 1, 'i'),
(519, '127.0.0.1', 1523182561, 4, 'i'),
(520, '127.0.0.1', 1523182561, 3, 'i'),
(521, '127.0.0.1', 1523190821, 2, 'i'),
(522, '127.0.0.1', 1523190821, 1, 'i'),
(523, '127.0.0.1', 1523190821, 4, 'i'),
(524, '127.0.0.1', 1523190821, 3, 'i'),
(525, '127.0.0.1', 1523192738, 1, 'i'),
(526, '127.0.0.1', 1523192738, 2, 'i'),
(527, '127.0.0.1', 1523192738, 4, 'i'),
(528, '127.0.0.1', 1523192738, 3, 'i'),
(529, '127.0.0.1', 1523192903, 1, 'i'),
(530, '127.0.0.1', 1523192903, 2, 'i'),
(531, '127.0.0.1', 1523193547, 1, 'i'),
(532, '127.0.0.1', 1523193547, 2, 'i'),
(533, '127.0.0.1', 1523194395, 2, 'i'),
(534, '127.0.0.1', 1523194395, 1, 'i'),
(535, '127.0.0.1', 1523194814, 1, 'i'),
(536, '127.0.0.1', 1523194814, 2, 'i'),
(537, '127.0.0.1', 1523194815, 3, 'i'),
(538, '127.0.0.1', 1523194815, 4, 'i'),
(539, '127.0.0.1', 1523195979, 2, 'i'),
(540, '127.0.0.1', 1523195979, 1, 'i'),
(541, '127.0.0.1', 1523195979, 3, 'i'),
(542, '127.0.0.1', 1523195979, 4, 'i'),
(543, '127.0.0.1', 1523196089, 1, 'i'),
(544, '127.0.0.1', 1523196089, 2, 'i'),
(545, '127.0.0.1', 1523196089, 3, 'i'),
(546, '127.0.0.1', 1523196089, 4, 'i'),
(547, '127.0.0.1', 1523197119, 2, 'i'),
(548, '127.0.0.1', 1523197119, 1, 'i'),
(549, '127.0.0.1', 1523197119, 3, 'i'),
(550, '127.0.0.1', 1523197119, 4, 'i'),
(551, '127.0.0.1', 1523197356, 1, 'i'),
(552, '127.0.0.1', 1523197356, 2, 'i'),
(553, '127.0.0.1', 1523197356, 4, 'i'),
(554, '127.0.0.1', 1523197356, 3, 'i'),
(555, '127.0.0.1', 1523197473, 2, 'i'),
(556, '127.0.0.1', 1523197473, 1, 'i'),
(557, '127.0.0.1', 1523197473, 4, 'i'),
(558, '127.0.0.1', 1523197473, 3, 'i'),
(559, '127.0.0.1', 1523197726, 1, 'i'),
(560, '127.0.0.1', 1523197726, 2, 'i'),
(561, '127.0.0.1', 1523197726, 3, 'i'),
(562, '127.0.0.1', 1523197726, 4, 'i'),
(563, '127.0.0.1', 1523197811, 2, 'i'),
(564, '127.0.0.1', 1523197811, 1, 'i'),
(565, '127.0.0.1', 1523197811, 3, 'i'),
(566, '127.0.0.1', 1523197811, 4, 'i'),
(567, '127.0.0.1', 1523198099, 2, 'i'),
(568, '127.0.0.1', 1523198099, 1, 'i'),
(569, '127.0.0.1', 1523199131, 2, 'i'),
(570, '127.0.0.1', 1523199131, 1, 'i'),
(571, '127.0.0.1', 1523199132, 4, 'i'),
(572, '127.0.0.1', 1523199132, 3, 'i'),
(573, '127.0.0.1', 1523199241, 1, 'i'),
(574, '127.0.0.1', 1523199241, 2, 'i'),
(575, '127.0.0.1', 1523199241, 3, 'i'),
(576, '127.0.0.1', 1523199241, 4, 'i'),
(577, '127.0.0.1', 1523199337, 2, 'i'),
(578, '127.0.0.1', 1523199337, 1, 'i'),
(579, '127.0.0.1', 1523199338, 3, 'i'),
(580, '127.0.0.1', 1523199338, 4, 'i'),
(581, '127.0.0.1', 1523199508, 1, 'i'),
(582, '127.0.0.1', 1523199508, 2, 'i'),
(583, '127.0.0.1', 1523199509, 3, 'i'),
(584, '127.0.0.1', 1523199509, 4, 'i'),
(585, '127.0.0.1', 1523199595, 2, 'i'),
(586, '127.0.0.1', 1523199595, 1, 'i'),
(587, '127.0.0.1', 1523199595, 3, 'i'),
(588, '127.0.0.1', 1523199595, 4, 'i'),
(589, '127.0.0.1', 1523199802, 2, 'i'),
(590, '127.0.0.1', 1523199802, 1, 'i'),
(591, '127.0.0.1', 1523199802, 3, 'i'),
(592, '127.0.0.1', 1523199802, 4, 'i');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-05 04:23:45', '2018-04-05 04:23:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(21, '2018-04-06 15:27:42', 2130706433, 'http://nongthon-wp.local/', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 7', 'Chrome 65.0.3325.181', '', '', '', '', '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://nongthon-wp.local', 'yes'),
(2, 'home', 'http://nongthon-wp.local', 'yes'),
(3, 'blogname', 'nongthon', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:93:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:31:".+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:".+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:".+?/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"(.+?)/([^/]+)/embed/?$";s:63:"index.php?category_name=$matches[1]&name=$matches[2]&embed=true";s:26:"(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:46:"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:41:"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:34:"(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:41:"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:30:"(.+?)/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:20:".+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:".+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:".+?/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:14:"(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:8:"(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:21:"adrotate/adrotate.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:35:"kstats-reloaded/kstats-reloaded.php";i:3;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:4;s:21:"wp-polls/wp-polls.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:35:"kstats-reloaded/kstats-reloaded.php";s:16:"kstats_uninstall";s:21:"adrotate/adrotate.php";s:18:"adrotate_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:66:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:12:"manage_polls";b:1;s:18:"adrotate_ad_manage";b:1;s:18:"adrotate_ad_delete";b:1;s:21:"adrotate_group_manage";b:1;s:21:"adrotate_group_delete";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
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
(111, 'cron', 'a:10:{i:1523204637;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523214673;a:1:{s:27:"polldaddy_rating_update_job";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523222709;a:1:{s:21:"adrotate_evaluate_ads";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523223609;a:1:{s:26:"adrotate_empty_trackerdata";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1523232060;a:1:{s:21:"kstats_aggregate_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523247842;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523256794;a:1:{s:28:"wp_statistics_add_visit_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523267262;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1523285827;a:1:{s:10:"polls_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'auth_key', 'v?Gu<P]g5AWlM4mwcC3`PbO1GCzmQtd9.6}3_#}|$du&lR{1N?H^!4^Gv o-Ve~G', 'no'),
(114, 'auth_salt', 'uNg{;>mvy~DU^_Gi]@d^f/WMOsx}T%-}:|v8x{<5KMcl;}0TlMr79<ywf&2zQh/~', 'no'),
(115, 'logged_in_key', 'CNgDz f%7.w]4sP$[y:n^v!B^5>i^R=tNy.><E5((xf#K4PZO`O|<E_2gt<|!x H', 'no'),
(116, 'logged_in_salt', '/2NB3Wkn-h:voe]K%PEzC N{OI^9$~Vk/YzQUCgl-Y|{SN_#r2:;<XWCGI#3rYV6', 'no'),
(117, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.4";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-rollback-4.zip";}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.4";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1523191803;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_efc56fe28520bcd166ef136f44025003', '1523507047', 'no'),
(123, '_site_transient_browser_efc56fe28520bcd166ef136f44025003', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.181";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(137, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:6:"social";i:0;s:3:"top";i:10;}}', 'yes'),
(141, 'recently_activated', 'a:2:{s:23:"polldaddy/polldaddy.php";i:1522912416;s:31:"wp-statistics/wp-statistics.php";i:1522911484;}', 'yes'),
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
(244, '_site_transient_timeout_browser_f486628b8b3cd381d361bdc25237d08d', '1523537298', 'no'),
(245, '_site_transient_browser_f486628b8b3cd381d361bdc25237d08d', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"65.0.3325.181";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(250, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(273, '_transient_timeout_plugin_slugs', '1523278216', 'no'),
(274, '_transient_plugin_slugs', 'a:7:{i:0;s:21:"adrotate/adrotate.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:19:"akismet/akismet.php";i:3;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:4;s:9:"hello.php";i:5;s:35:"kstats-reloaded/kstats-reloaded.php";i:6;s:21:"wp-polls/wp-polls.php";}', 'no'),
(300, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1523191807;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip";}}s:12:"translations";a:0:{}}', 'no'),
(328, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1523202582', 'no'),
(329, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4450;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2702;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2547;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2417;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1865;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1644;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1637;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1453;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1386;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1384;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1383;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1309;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1281;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1194;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1095;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1057;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1018;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1000;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:880;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:871;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:824;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:797;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:796;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:701;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:690;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:683;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:677;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:671;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:654;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:654;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:642;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:638;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:633;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:618;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:611;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:602;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:602;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:591;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:588;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:584;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:559;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:544;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:535;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:531;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:521;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:518;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:511;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:504;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:491;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:489;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:487;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:483;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:479;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:475;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:467;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:463;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:456;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:454;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:437;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:430;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:424;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:421;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:419;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:415;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:413;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:412;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:402;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:402;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:390;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:385;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:382;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:363;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:358;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:356;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:352;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:345;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:344;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:343;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:341;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:338;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:336;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:335;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:333;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:330;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:330;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:329;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:320;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:311;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:304;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:303;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:302;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:300;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:295;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:294;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:292;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:292;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:289;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:289;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:287;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:285;}}', 'no'),
(331, '_site_transient_timeout_theme_roots', '1523193606', 'no'),
(332, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(333, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1523191813;s:7:"checked";a:7:{s:21:"adrotate/adrotate.php";s:4:"4.10";s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:19:"akismet/akismet.php";s:5:"4.0.2";s:45:"taxonomy-terms-order/taxonomy-terms-order.php";s:7:"1.5.3.2";s:9:"hello.php";s:3:"1.6";s:35:"kstats-reloaded/kstats-reloaded.php";s:5:"0.7.4";s:21:"wp-polls/wp-polls.php";s:6:"2.73.8";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:21:"adrotate/adrotate.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/adrotate";s:4:"slug";s:8:"adrotate";s:6:"plugin";s:21:"adrotate/adrotate.php";s:11:"new_version";s:4:"4.10";s:3:"url";s:39:"https://wordpress.org/plugins/adrotate/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/adrotate.4.10.zip";s:5:"icons";a:3:{s:2:"1x";s:60:"https://ps.w.org/adrotate/assets/icon-128x128.png?rev=970153";s:2:"2x";s:60:"https://ps.w.org/adrotate/assets/icon-256x256.png?rev=970153";s:7:"default";s:60:"https://ps.w.org/adrotate/assets/icon-256x256.png?rev=970153";}s:7:"banners";a:2:{s:2:"1x";s:63:"https://ps.w.org/adrotate/assets/banner-772x250.jpg?rev=1691423";s:7:"default";s:63:"https://ps.w.org/adrotate/assets/banner-772x250.jpg?rev=1691423";}s:11:"banners_rtl";a:0:{}}s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}}s:45:"taxonomy-terms-order/taxonomy-terms-order.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/taxonomy-terms-order";s:4:"slug";s:20:"taxonomy-terms-order";s:6:"plugin";s:45:"taxonomy-terms-order/taxonomy-terms-order.php";s:11:"new_version";s:7:"1.5.3.2";s:3:"url";s:51:"https://wordpress.org/plugins/taxonomy-terms-order/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.3.2.zip";s:5:"icons";a:3:{s:2:"1x";s:73:"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412";s:2:"2x";s:73:"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412";s:7:"default";s:73:"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412";}s:7:"banners";a:3:{s:2:"2x";s:76:"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412";s:2:"1x";s:75:"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412";s:7:"default";s:76:"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:35:"kstats-reloaded/kstats-reloaded.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/kstats-reloaded";s:4:"slug";s:15:"kstats-reloaded";s:6:"plugin";s:35:"kstats-reloaded/kstats-reloaded.php";s:11:"new_version";s:5:"0.7.4";s:3:"url";s:46:"https://wordpress.org/plugins/kstats-reloaded/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/kstats-reloaded.0.7.4.zip";s:5:"icons";a:0:{}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:21:"wp-polls/wp-polls.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/wp-polls";s:4:"slug";s:8:"wp-polls";s:6:"plugin";s:21:"wp-polls/wp-polls.php";s:11:"new_version";s:6:"2.73.8";s:3:"url";s:39:"https://wordpress.org/plugins/wp-polls/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/wp-polls.2.73.8.zip";s:5:"icons";a:2:{s:3:"svg";s:52:"https://ps.w.org/wp-polls/assets/icon.svg?rev=977996";s:7:"default";s:52:"https://ps.w.org/wp-polls/assets/icon.svg?rev=977996";}s:7:"banners";a:3:{s:2:"2x";s:64:"https://ps.w.org/wp-polls/assets/banner-1544x500.jpg?rev=1206760";s:2:"1x";s:63:"https://ps.w.org/wp-polls/assets/banner-772x250.jpg?rev=1206760";s:7:"default";s:64:"https://ps.w.org/wp-polls/assets/banner-1544x500.jpg?rev=1206760";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
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
(377, '_transient_is_multi_author', '0', 'yes'),
(379, '_transient_twentyseventeen_categories', '2', 'yes'),
(380, 'category_19_visible_home', '0', 'no'),
(381, '_category_19_visible_home', 'field_5aca11ce1f160', 'no'),
(382, 'category_children', 'a:5:{i:3;a:2:{i:0;i:6;i:1;i:7;}i:11;a:5:{i:0;i:2;i:1;i:3;i:2;i:1;i:3;i:12;i:4;i:17;}i:12;a:4:{i:0;i:13;i:1;i:14;i:2;i:15;i:3;i:16;}i:17;a:1:{i:0;i:18;}i:2;a:2:{i:0;i:4;i:1;i:5;}}', 'yes');

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
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(18, 9, '_edit_lock', '1522939097:1'),
(19, 11, '_edit_last', '1'),
(20, 11, '_edit_lock', '1522939112:1'),
(21, 13, '_edit_last', '1'),
(22, 13, '_edit_lock', '1522939123:1'),
(23, 15, '_edit_last', '1'),
(24, 15, '_edit_lock', '1522939131:1'),
(25, 17, '_edit_last', '1'),
(26, 17, '_edit_lock', '1523019680:1'),
(27, 19, '_menu_item_type', 'custom'),
(28, 19, '_menu_item_menu_item_parent', '0'),
(29, 19, '_menu_item_object_id', '19'),
(30, 19, '_menu_item_object', 'custom'),
(31, 19, '_menu_item_target', ''),
(32, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 19, '_menu_item_xfn', ''),
(34, 19, '_menu_item_url', 'http://nongthon-wp.local/'),
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
(138, 47, '_edit_lock', '1523177378:1'),
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
(192, 64, '_edit_lock', '1523197239:1'),
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
(214, 54, '_description', 'field_5aca22a2a5ea1');

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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-05 04:23:45', '2018-04-05 04:23:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-08 08:51:47', '2018-04-08 08:51:47', '', 0, 'http://dev5.local/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-05 04:23:45', '2018-04-05 04:23:45', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://dev5.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-05 04:23:45', '2018-04-05 04:23:45', '', 0, 'http://dev5.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-05 04:24:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-05 04:24:07', '0000-00-00 00:00:00', '', 0, 'http://dev5.local/?p=3', 0, 'post', '', 0),
(4, 1, '2018-04-05 09:48:04', '2018-04-05 09:48:04', 'test1', 'test1', '', 'publish', 'open', 'open', '', 'test1', '', '', '2018-04-08 08:51:22', '2018-04-08 08:51:22', '', 0, 'http://dev5.local/?p=4', 0, 'post', '', 0),
(5, 1, '2018-04-05 09:48:04', '2018-04-05 09:48:04', 'test1', 'test1', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-05 09:48:04', '2018-04-05 09:48:04', '', 4, 'http://dev5.local/uncategorized/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-04-05 14:37:26', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-05 14:37:26', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2018-04-05 14:40:18', '2018-04-05 14:40:18', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2018-04-05 14:40:18', '2018-04-05 14:40:18', '', 0, 'http://nongthon-wp.local/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-04-05 14:40:18', '2018-04-05 14:40:18', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-04-05 14:40:18', '2018-04-05 14:40:18', '', 7, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-04-05 14:40:38', '2018-04-05 14:40:38', '', 'Văn bản nông thôn mới', '', 'publish', 'closed', 'closed', '', 'van-ban-nong-thon-moi', '', '', '2018-04-05 14:40:38', '2018-04-05 14:40:38', '', 0, 'http://nongthon-wp.local/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-04-05 14:40:38', '2018-04-05 14:40:38', '', 'Văn bản nông thôn mới', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-04-05 14:40:38', '2018-04-05 14:40:38', '', 9, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-04-05 14:40:50', '2018-04-05 14:40:50', '', 'Thư viện ảnh', '', 'publish', 'closed', 'closed', '', 'thu-vien-anh', '', '', '2018-04-05 14:40:50', '2018-04-05 14:40:50', '', 0, 'http://nongthon-wp.local/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-04-05 14:40:50', '2018-04-05 14:40:50', '', 'Thư viện ảnh', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-05 14:40:50', '2018-04-05 14:40:50', '', 11, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-04-05 14:41:02', '2018-04-05 14:41:02', '', 'Hỏi đáp', '', 'publish', 'closed', 'closed', '', 'hoi-dap', '', '', '2018-04-05 14:41:02', '2018-04-05 14:41:02', '', 0, 'http://nongthon-wp.local/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-04-05 14:41:02', '2018-04-05 14:41:02', '', 'Hỏi đáp', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-04-05 14:41:02', '2018-04-05 14:41:02', '', 13, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-04-05 14:41:12', '2018-04-05 14:41:12', '', 'Video', '', 'publish', 'closed', 'closed', '', 'video', '', '', '2018-04-05 14:41:12', '2018-04-05 14:41:12', '', 0, 'http://nongthon-wp.local/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-04-05 14:41:12', '2018-04-05 14:41:12', '', 'Video', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-04-05 14:41:12', '2018-04-05 14:41:12', '', 15, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-04-05 14:41:21', '2018-04-05 14:41:21', '', 'Hòm thư', '', 'publish', 'closed', 'closed', '', 'hom-thu', '', '', '2018-04-05 14:41:21', '2018-04-05 14:41:21', '', 0, 'http://nongthon-wp.local/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-04-05 14:41:21', '2018-04-05 14:41:21', '', 'Hòm thư', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-04-05 14:41:21', '2018-04-05 14:41:21', '', 17, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-04-05 14:42:29', '2018-04-05 14:42:29', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2018-04-05 15:04:37', '2018-04-05 15:04:37', '', 0, 'http://nongthon-wp.local/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-04-05 14:42:29', '2018-04-05 14:42:29', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-04-05 15:04:37', '2018-04-05 15:04:37', '', 0, 'http://nongthon-wp.local/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2018-04-05 14:42:30', '2018-04-05 14:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-04-05 15:04:37', '2018-04-05 15:04:37', '', 0, 'http://nongthon-wp.local/?p=21', 5, 'nav_menu_item', '', 0),
(22, 1, '2018-04-05 14:42:30', '2018-04-05 14:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-04-05 15:04:37', '2018-04-05 15:04:37', '', 0, 'http://nongthon-wp.local/?p=22', 7, 'nav_menu_item', '', 0),
(23, 1, '2018-04-05 14:42:30', '2018-04-05 14:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-04-05 15:04:37', '2018-04-05 15:04:37', '', 0, 'http://nongthon-wp.local/?p=23', 4, 'nav_menu_item', '', 0),
(24, 1, '2018-04-05 14:42:30', '2018-04-05 14:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-04-05 15:04:37', '2018-04-05 15:04:37', '', 0, 'http://nongthon-wp.local/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2018-04-05 14:42:30', '2018-04-05 14:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-04-05 15:04:37', '2018-04-05 15:04:37', '', 0, 'http://nongthon-wp.local/?p=25', 6, 'nav_menu_item', '', 0),
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
(47, 1, '2018-04-08 08:47:12', '2018-04-08 08:47:12', '\r\nĐất rộng, người thưa, điều kiện kinh tế chưa dư giả nhiều… nhưng người dân các xã vùng miền núi Hương Khê, Hương Sơn, Vũ Quang (Hà Tĩnh) đã biết khắc phục khó khăn, biến những cái bất lợi thành có lợi để xây dựng khu dân cư mẫu hiệu quả, bền vững.\r\n\r\n [caption id="attachment_48" align="alignnone" width="300"]<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/102d5083841t7659l0-300x200.jpg" alt="" width="300" height="200" class="size-medium wp-image-48" /> DCIM100MEDIADJI_0093.JPG[/caption]\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nThôn Nam Trà, xã Hương Trà (Hương Khê) là thôn xây dựng KDC kiểu mẫu đầu tiên của tỉnh Hà Tĩnh. Người dân nơi đây có ý thức tu sửa, chỉnh trang vườn hộ, tạo bờ rào cây xanh thẳng hàng, đẹp lối tạo cảnh quan đẹp, thân thiện, môi trường xanh, sạch.\r\n\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nĐến Nam Trà, du khách được chứng kiến hệ thống GTNT bằng bê tông rộng rãi, khép kín 100% trục thôn, ngõ xóm\r\n\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nToàn thôn đã trồng 16.000m hàng rào xanh và tạo sức lan tỏa rộng khắp trên toàn tỉnh. Đến nay, thôn Nam Trà đã đón trên 450 đoàn khách trong cả nước về tham quan và học tập kinh nghiệm.', 'Đắm say những khu dân cư NTM kiểu mẫu miền núi Hà Tĩnh', '', 'publish', 'open', 'open', '', 'dam-say-nhung-khu-dan-cu-ntm-kieu-mau-mien-nui-ha-tinh', '', '', '2018-04-08 08:49:38', '2018-04-08 08:49:38', '', 0, 'http://nongthon-wp.local/?p=47', 0, 'post', '', 0),
(48, 1, '2018-04-08 08:46:48', '2018-04-08 08:46:48', '', 'DCIM100MEDIADJI_0093.JPG', 'DCIM100MEDIADJI_0093.JPG', 'inherit', 'open', 'closed', '', 'dcim100mediadji_0093-jpg', '', '', '2018-04-08 08:46:48', '2018-04-08 08:46:48', '', 47, 'http://nongthon-wp.local/wp-content/uploads/2018/04/102d5083841t7659l0.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-04-08 08:47:12', '2018-04-08 08:47:12', '\r\nĐất rộng, người thưa, điều kiện kinh tế chưa dư giả nhiều… nhưng người dân các xã vùng miền núi Hương Khê, Hương Sơn, Vũ Quang (Hà Tĩnh) đã biết khắc phục khó khăn, biến những cái bất lợi thành có lợi để xây dựng khu dân cư mẫu hiệu quả, bền vững.\r\n\r\n [caption id="attachment_48" align="alignnone" width="300"]<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/102d5083841t7659l0-300x200.jpg" alt="" width="300" height="200" class="size-medium wp-image-48" /> DCIM100MEDIADJI_0093.JPG[/caption]\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nThôn Nam Trà, xã Hương Trà (Hương Khê) là thôn xây dựng KDC kiểu mẫu đầu tiên của tỉnh Hà Tĩnh. Người dân nơi đây có ý thức tu sửa, chỉnh trang vườn hộ, tạo bờ rào cây xanh thẳng hàng, đẹp lối tạo cảnh quan đẹp, thân thiện, môi trường xanh, sạch.\r\n\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nĐến Nam Trà, du khách được chứng kiến hệ thống GTNT bằng bê tông rộng rãi, khép kín 100% trục thôn, ngõ xóm\r\n\r\ndam say nhung khu dan cu ntm kieu mau mien nui ha tinh\r\n\r\nToàn thôn đã trồng 16.000m hàng rào xanh và tạo sức lan tỏa rộng khắp trên toàn tỉnh. Đến nay, thôn Nam Trà đã đón trên 450 đoàn khách trong cả nước về tham quan và học tập kinh nghiệm.', 'Đắm say những khu dân cư NTM kiểu mẫu miền núi Hà Tĩnh', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-04-08 08:47:12', '2018-04-08 08:47:12', '', 47, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-04-08 08:49:06', '2018-04-08 08:49:06', 'Đường làng ngõ xóm được bê tông hóa, hai bên có hàng rào xanh phủ bóng râm mát, nhà cửa khang trang, sạch sẽ, những miền quê khó khăn trước đây nay trở thành những miền quê trù phú, an lành, đáng sống.\r\nĐó là hình ảnh hiện tại của các khu dân cư nông thôn mới (NTM) kiểu mẫu ở nhiều làng quê tỉnh Hà Tĩnh được nhiều địa phương trên cả nước đến tham quan, học hỏi và “ngưỡng mộ”. \r\n[caption id="attachment_51" align="alignnone" width="300"]<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/dsc_0983-300x200.jpg" alt="" width="300" height="200" class="size-medium wp-image-51" /> fghfhf[/caption]\r\nCùng KTNT chiêm ngưỡng những miền quê "đáng sống" ở Hà Tĩnh.\r\n\r\nĐược quy hoạch bài bản, hợp lý, biết ứng dụng KHKT vào tất cả các khâu sản xuất; sản phẩm đa dạng và thân thiện với môi trường..., nhiều vườn mẫu ở Hà Tĩnh cho giá trị kinh tế cao.\r\n', '“Ngất ngây” trước những miền quê nông thôn mới Hà Tĩnh', '', 'publish', 'open', 'open', '', 'ngat-ngay-truoc-nhung-mien-que-nong-thon-moi-ha-tinh', '', '', '2018-04-08 08:49:06', '2018-04-08 08:49:06', '', 0, 'http://nongthon-wp.local/?p=50', 0, 'post', '', 0),
(51, 1, '2018-04-08 08:47:49', '2018-04-08 08:47:49', '', 'dsc_0983', 'fghfhf', 'inherit', 'open', 'closed', '', 'dsc_0983', '', '', '2018-04-08 08:48:05', '2018-04-08 08:48:05', '', 50, 'http://nongthon-wp.local/wp-content/uploads/2018/04/dsc_0983.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-04-08 08:49:06', '2018-04-08 08:49:06', 'Đường làng ngõ xóm được bê tông hóa, hai bên có hàng rào xanh phủ bóng râm mát, nhà cửa khang trang, sạch sẽ, những miền quê khó khăn trước đây nay trở thành những miền quê trù phú, an lành, đáng sống.\r\nĐó là hình ảnh hiện tại của các khu dân cư nông thôn mới (NTM) kiểu mẫu ở nhiều làng quê tỉnh Hà Tĩnh được nhiều địa phương trên cả nước đến tham quan, học hỏi và “ngưỡng mộ”. \r\n[caption id="attachment_51" align="alignnone" width="300"]<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/dsc_0983-300x200.jpg" alt="" width="300" height="200" class="size-medium wp-image-51" /> fghfhf[/caption]\r\nCùng KTNT chiêm ngưỡng những miền quê "đáng sống" ở Hà Tĩnh.\r\n\r\nĐược quy hoạch bài bản, hợp lý, biết ứng dụng KHKT vào tất cả các khâu sản xuất; sản phẩm đa dạng và thân thiện với môi trường..., nhiều vườn mẫu ở Hà Tĩnh cho giá trị kinh tế cao.\r\n', '“Ngất ngây” trước những miền quê nông thôn mới Hà Tĩnh', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-04-08 08:49:06', '2018-04-08 08:49:06', '', 50, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-04-08 08:51:47', '2018-04-08 08:51:47', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-08 08:51:47', '2018-04-08 08:51:47', '', 1, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/1-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-04-08 09:39:00', '2018-04-08 09:39:00', 'Đặt chân tới xã Xuân Yên, nhiều người không khỏi ngỡ ngàng trước sự chuyển mình của vùng bãi ngang trước đây vốn nghèo nhất nhì huyện Nghi Xuân, Hà Tĩnh.\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nĐiều kiện tự nhiên bất lợi, tiềm lực kinh tế khó khăn, người dân miền biển Xuân Yên đã đoàn kết, góp sức người, sức của phát triển hạ tầng nông thôn. Chính sức mạnh của lòng dân đã giúp miền quê nghèo về đích nông thôn mới.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-300x200.jpg" alt="" width="300" height="200" class="alignnone size-medium wp-image-55" />\r\nTrong quá trình xây dựng NTM, con em thôn Yên Nam đã đóng góp 2,5 tỷ đồng xây dựng khu dân cư kiểu mẫu. Con đường mẫu, với kinh phí đầu tư gần 140 triệu đồng do chính bà con trong thôn đảm nhận thi công thông qua sự điều phối của Hội Nông dân xã.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNgười dân Xuân Yên hào hứng xây dựng các tuyến hàng rào xanh, tạo cảnh quan sạch đẹp, thân thiện...\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNhững khu vườn được người dân miền biển chăm chút, mang lại giá trị kinh tế cao.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nCòn nhớ trước kia, cái nghèo luôn đeo đuổi người dân vùng bãi ngang này. Giờ đây, họ đã vượt qua sự bất lợi của thiên nhiên để tạo nên những mô hình kinh tế tiềm năng, cho thu nhập cao. Trong ảnh: Mô hình vườn - ao - chuồng của gia đình ông Phan Văn Vinh (thôn Yên Nam) cho thu nhập từ 60 - 80 triệu đồng/năm.', 'Về làng biển Nghi Xuân xem khu dân cư mẫu', '', 'publish', 'open', 'open', '', 've-lang-bien-nghi-xuan-xem-khu-dan-cu-mau', '', '', '2018-04-08 14:24:21', '2018-04-08 14:24:21', '', 0, 'http://nongthon-wp.local/?p=54', 0, 'post', '', 0),
(55, 1, '2018-04-08 09:38:06', '2018-04-08 09:38:06', '', '77d0093609t7970l0', '', 'inherit', 'open', 'closed', '', '77d0093609t7970l0', '', '', '2018-04-08 10:06:06', '2018-04-08 10:06:06', '', 54, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-04-08 09:39:00', '2018-04-08 09:39:00', 'Đặt chân tới xã Xuân Yên, nhiều người không khỏi ngỡ ngàng trước sự chuyển mình của vùng bãi ngang trước đây vốn nghèo nhất nhì huyện Nghi Xuân, Hà Tĩnh.\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nĐiều kiện tự nhiên bất lợi, tiềm lực kinh tế khó khăn, người dân miền biển Xuân Yên đã đoàn kết, góp sức người, sức của phát triển hạ tầng nông thôn. Chính sức mạnh của lòng dân đã giúp miền quê nghèo về đích nông thôn mới.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-300x200.jpg" alt="" width="300" height="200" class="alignnone size-medium wp-image-55" />\r\nTrong quá trình xây dựng NTM, con em thôn Yên Nam đã đóng góp 2,5 tỷ đồng xây dựng khu dân cư kiểu mẫu. Con đường mẫu, với kinh phí đầu tư gần 140 triệu đồng do chính bà con trong thôn đảm nhận thi công thông qua sự điều phối của Hội Nông dân xã.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNgười dân Xuân Yên hào hứng xây dựng các tuyến hàng rào xanh, tạo cảnh quan sạch đẹp, thân thiện...\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNhững khu vườn được người dân miền biển chăm chút, mang lại giá trị kinh tế cao.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nCòn nhớ trước kia, cái nghèo luôn đeo đuổi người dân vùng bãi ngang này. Giờ đây, họ đã vượt qua sự bất lợi của thiên nhiên để tạo nên những mô hình kinh tế tiềm năng, cho thu nhập cao. Trong ảnh: Mô hình vườn - ao - chuồng của gia đình ông Phan Văn Vinh (thôn Yên Nam) cho thu nhập từ 60 - 80 triệu đồng/năm.', 'Về làng biển Nghi Xuân xem khu dân cư mẫu', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-04-08 09:39:00', '2018-04-08 09:39:00', '', 54, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-04-08 09:39:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-08 09:39:20', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?p=57', 0, 'post', '', 0),
(58, 1, '2018-04-08 13:01:09', '2018-04-08 13:01:09', '', 'Field category is home', '', 'publish', 'closed', 'closed', '', 'acf_field-category-is-home', '', '', '2018-04-08 13:01:09', '2018-04-08 13:01:09', '', 0, 'http://nongthon-wp.local/?post_type=acf&#038;p=58', 0, 'acf', '', 0),
(59, 1, '2018-04-08 13:04:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-08 13:04:34', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?p=59', 0, 'post', '', 0),
(60, 1, '2018-04-08 14:23:37', '2018-04-08 14:23:37', '', 'Draft created on April 8, 2018 at 2:08 pm', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-04-08 14:23:37', '2018-04-08 14:23:37', '', 0, 'http://nongthon-wp.local/?p=60', 0, 'post', '', 0),
(61, 1, '2018-04-08 14:08:36', '2018-04-08 14:08:36', '', 'Draft created on April 8, 2018 at 2:08 pm', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-04-08 14:08:36', '2018-04-08 14:08:36', '', 60, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-04-08 14:08:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-08 14:08:45', '0000-00-00 00:00:00', '', 0, 'http://nongthon-wp.local/?p=62', 0, 'post', '', 0),
(63, 1, '2018-04-08 14:11:14', '2018-04-08 14:11:14', '', 'field in post', '', 'publish', 'closed', 'closed', '', 'acf_field-in-post', '', '', '2018-04-08 14:23:24', '2018-04-08 14:23:24', '', 0, 'http://nongthon-wp.local/?post_type=acf&#038;p=63', 0, 'acf', '', 0),
(64, 1, '2018-04-08 14:15:22', '2018-04-08 14:15:22', 'Trung tâm Hành chính công TX Hồng Lĩnh được thành lập theo Quyết định 2042/QĐ-UBND ngày 20/7/2017 của UBND tỉnh, chính thức đi vào hoạt động từ ngày 25/10/2017.\r\n\r\nHiện, Trung tâm đã thực hiện 283/283 thủ tục hành chính thuộc thẩm quyền, trong đó 34/34 thủ tục về bảo hiểm xã hội; 19 thủ tục thuộc thẩm quyền của Công an thị xã; 3 thủ tục thuộc thẩm quyền của Chi cục Thuế, số còn lại thuộc các lĩnh vực khác. Các thủ tục hành chính, địa chỉ tiếp nhận phản ánh, kiến nghị đều được công khai, niêm yết tại bảng và đăng tải trên trang thông tin điện tử của thị xã theo đúng quy định.\r\n\r\nKể từ khi đi vào hoạt động, Trung tâm đã tiếp nhận 12.272 hồ sơ, trong đó 11.908 hồ sơ đã có kết quả, 326 hồ sơ đang giải quyết. Có 37 hồ sơ quá hạn do xử lý trên phần mềm; 31 hồ sơ trả lại thuộc lĩnh vực ngành tài nguyên môi trường, đăng ký kinh doanh do công dân không hoàn thành nghĩa vụ nộp thuế, một số hồ sơ công dân xin rút lại…\r\n\r\nTại buổi làm việc, Trung tâm đã nêu những khó khăn, hạn chế trong hoạt động như: Một số thủ tục hành chính chưa được quy định cụ thể bằng các quyết định công bố thủ tục hành chính mà đang thực hiện trên cơ sở quy định của luật, thông tư, nghị định nên còn chung chung; thủ tục hành chính một số lĩnh vực chưa được sửa đổi kịp thời, chưa quy định thời gian giải quyết; một số thủ tục khác chưa cập nhật đầy đủ tên thủ tục, thành phần hồ sơ… gây khó khăn cho cán bộ thực hiện…\r\n\r\nĐại biểu cũng đề xuất, kiến nghị một số vấn đề như: Nên điều động cán bộ tiếp nhận hồ sơ và trả kết quả thủ tục từ các phòng chuyên môn; ban hành văn bản quy định các chính sách, chế độ đối với cán bộ làm việc tại trung tâm để các địa phương có căn cứ chi trả và đảm bảo thống nhất trên toàn tỉnh; rà soát thủ tục hành chính để ban hành các quyết định công bố áp dụng thống nhất…\r\n\r\nbo sung them thu tuc hanh chinh dac biet trong linh vuc nguoi dan quan tam\r\n\r\nPhát biểu tại buổi làm việc, Trưởng ban Pháp chế HĐND tỉnh Nguyễn Trọng Nhiệu cho rằng, Trung tâm Hành chính công TX Hồng Lĩnh cần đưa thêm các thủ tục hành chính, nhất là những lĩnh vực người dân quan tâm như: Thủ tục cấp giấy chứng minh thư nhân dân; tăng cường công tác truyền thông, tập huấn, đặc biệt là sử dụng dịch vụ công trực tuyến mức độ 3; bổ sung và hoàn chỉnh các phương thức để kiểm soát hoạt động ở trung tâm. Ngoài ra, cần có sự quan tâm, hỗ trợ cán bộ làm việc trong thời gian chờ ban hành chế độ, chính sách...\r\n\r\nRiêng các kiến nghị, đề xuất, đoàn giám sát tổng hợp và làm việc với các ngành liên quan để có giải pháp tháo gỡ.\r\n\r\nTheo Thùy Dương/baohatinh.vn', 'Bổ sung thêm thủ tục hành chính, đặc biệt trong lĩnh vực người dân quan tâm', '', 'publish', 'open', 'open', '', 'bo-sung-them-thu-tuc-hanh-chinh-dac-biet-trong-linh-vuc-nguoi-dan-quan-tam', '', '', '2018-04-08 14:18:34', '2018-04-08 14:18:34', '', 0, 'http://nongthon-wp.local/?p=64', 0, 'post', '', 0),
(65, 1, '2018-04-08 14:14:39', '2018-04-08 14:14:39', '', '77d3055028t3182l0', 'Đại biểu tham quan mô hình hoạt động tại Trung tâm Hành chính công TX Hồng Lĩnh', 'inherit', 'open', 'closed', '', '77d3055028t3182l0', '', '', '2018-04-08 14:15:15', '2018-04-08 14:15:15', '', 64, 'http://nongthon-wp.local/wp-content/uploads/2018/04/77d3055028t3182l0.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-04-08 14:15:22', '2018-04-08 14:15:22', '\r\nTrung tâm Hành chính công TX Hồng Lĩnh được thành lập theo Quyết định 2042/QĐ-UBND ngày 20/7/2017 của UBND tỉnh, chính thức đi vào hoạt động từ ngày 25/10/2017.\r\n\r\nHiện, Trung tâm đã thực hiện 283/283 thủ tục hành chính thuộc thẩm quyền, trong đó 34/34 thủ tục về bảo hiểm xã hội; 19 thủ tục thuộc thẩm quyền của Công an thị xã; 3 thủ tục thuộc thẩm quyền của Chi cục Thuế, số còn lại thuộc các lĩnh vực khác. Các thủ tục hành chính, địa chỉ tiếp nhận phản ánh, kiến nghị đều được công khai, niêm yết tại bảng và đăng tải trên trang thông tin điện tử của thị xã theo đúng quy định.\r\n\r\nKể từ khi đi vào hoạt động, Trung tâm đã tiếp nhận 12.272 hồ sơ, trong đó 11.908 hồ sơ đã có kết quả, 326 hồ sơ đang giải quyết. Có 37 hồ sơ quá hạn do xử lý trên phần mềm; 31 hồ sơ trả lại thuộc lĩnh vực ngành tài nguyên môi trường, đăng ký kinh doanh do công dân không hoàn thành nghĩa vụ nộp thuế, một số hồ sơ công dân xin rút lại…\r\n\r\nTại buổi làm việc, Trung tâm đã nêu những khó khăn, hạn chế trong hoạt động như: Một số thủ tục hành chính chưa được quy định cụ thể bằng các quyết định công bố thủ tục hành chính mà đang thực hiện trên cơ sở quy định của luật, thông tư, nghị định nên còn chung chung; thủ tục hành chính một số lĩnh vực chưa được sửa đổi kịp thời, chưa quy định thời gian giải quyết; một số thủ tục khác chưa cập nhật đầy đủ tên thủ tục, thành phần hồ sơ… gây khó khăn cho cán bộ thực hiện…\r\n\r\nĐại biểu cũng đề xuất, kiến nghị một số vấn đề như: Nên điều động cán bộ tiếp nhận hồ sơ và trả kết quả thủ tục từ các phòng chuyên môn; ban hành văn bản quy định các chính sách, chế độ đối với cán bộ làm việc tại trung tâm để các địa phương có căn cứ chi trả và đảm bảo thống nhất trên toàn tỉnh; rà soát thủ tục hành chính để ban hành các quyết định công bố áp dụng thống nhất…\r\n\r\nbo sung them thu tuc hanh chinh dac biet trong linh vuc nguoi dan quan tam\r\n\r\nPhát biểu tại buổi làm việc, Trưởng ban Pháp chế HĐND tỉnh Nguyễn Trọng Nhiệu cho rằng, Trung tâm Hành chính công TX Hồng Lĩnh cần đưa thêm các thủ tục hành chính, nhất là những lĩnh vực người dân quan tâm như: Thủ tục cấp giấy chứng minh thư nhân dân; tăng cường công tác truyền thông, tập huấn, đặc biệt là sử dụng dịch vụ công trực tuyến mức độ 3; bổ sung và hoàn chỉnh các phương thức để kiểm soát hoạt động ở trung tâm. Ngoài ra, cần có sự quan tâm, hỗ trợ cán bộ làm việc trong thời gian chờ ban hành chế độ, chính sách...\r\n\r\nRiêng các kiến nghị, đề xuất, đoàn giám sát tổng hợp và làm việc với các ngành liên quan để có giải pháp tháo gỡ.\r\n\r\nTheo Thùy Dương/baohatinh.vn', 'Bổ sung thêm thủ tục hành chính, đặc biệt trong lĩnh vực người dân quan tâm', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-04-08 14:15:22', '2018-04-08 14:15:22', '', 64, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/64-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(67, 1, '2018-04-08 14:24:21', '2018-04-08 14:24:21', 'Đặt chân tới xã Xuân Yên, nhiều người không khỏi ngỡ ngàng trước sự chuyển mình của vùng bãi ngang trước đây vốn nghèo nhất nhì huyện Nghi Xuân, Hà Tĩnh.\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nĐiều kiện tự nhiên bất lợi, tiềm lực kinh tế khó khăn, người dân miền biển Xuân Yên đã đoàn kết, góp sức người, sức của phát triển hạ tầng nông thôn. Chính sức mạnh của lòng dân đã giúp miền quê nghèo về đích nông thôn mới.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n<img src="http://nongthon-wp.local/wp-content/uploads/2018/04/77d0093609t7970l0-300x200.jpg" alt="" width="300" height="200" class="alignnone size-medium wp-image-55" />\r\nTrong quá trình xây dựng NTM, con em thôn Yên Nam đã đóng góp 2,5 tỷ đồng xây dựng khu dân cư kiểu mẫu. Con đường mẫu, với kinh phí đầu tư gần 140 triệu đồng do chính bà con trong thôn đảm nhận thi công thông qua sự điều phối của Hội Nông dân xã.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNgười dân Xuân Yên hào hứng xây dựng các tuyến hàng rào xanh, tạo cảnh quan sạch đẹp, thân thiện...\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nNhững khu vườn được người dân miền biển chăm chút, mang lại giá trị kinh tế cao.\r\n\r\nve lang bien nghi xuan xem khu dan cu mau\r\n\r\nCòn nhớ trước kia, cái nghèo luôn đeo đuổi người dân vùng bãi ngang này. Giờ đây, họ đã vượt qua sự bất lợi của thiên nhiên để tạo nên những mô hình kinh tế tiềm năng, cho thu nhập cao. Trong ảnh: Mô hình vườn - ao - chuồng của gia đình ông Phan Văn Vinh (thôn Yên Nam) cho thu nhập từ 60 - 80 triệu đồng/năm.', 'Về làng biển Nghi Xuân xem khu dân cư mẫu', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-04-08 14:24:21', '2018-04-08 14:24:21', '', 54, 'http://nongthon-wp.local/diem-bao-hang-ngay-ve-ntm/54-revision-v1/', 0, 'revision', '', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(19, 'laws', 'laws', 0, 0);

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
(64, 17, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 11, 3),
(2, 2, 'category', '', 11, 0),
(3, 3, 'category', '', 11, 0),
(4, 4, 'category', '', 2, 1),
(5, 5, 'category', '', 2, 2),
(6, 6, 'category', '', 3, 2),
(7, 7, 'category', '', 3, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'nav_menu', '', 0, 7),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 11, 0),
(13, 13, 'category', '', 12, 0),
(14, 14, 'category', '', 12, 0),
(15, 15, 'category', '', 12, 0),
(16, 16, 'category', '', 12, 0),
(17, 17, 'category', '', 11, 1),
(18, 18, 'category', '', 17, 0),
(19, 19, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(18, 1, 'wp_user-settings-time', '1522902242'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(20, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(24, 1, 'nav_menu_recently_edited', '10'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:7:{i:0;s:6:"acf_58";i:1;s:11:"postexcerpt";i:2;s:13:"trackbacksdiv";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}');

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
  MODIFY `id` bigint(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wp_adrotate_stats_archive`
--
ALTER TABLE `wp_adrotate_stats_archive`
  MODIFY `id` bigint(9) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_adrotate_tracker`
--
ALTER TABLE `wp_adrotate_tracker`
  MODIFY `id` bigint(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=593;
--
-- AUTO_INCREMENT for table `wp_adrotate_transactions`
--
ALTER TABLE `wp_adrotate_transactions`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_kstats_raw`
--
ALTER TABLE `wp_kstats_raw`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=383;
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
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
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
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
