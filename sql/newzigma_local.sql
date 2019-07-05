-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2018 at 11:28 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newzigma`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '4'),
(2, 2, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-22 05:30:11', '2017-11-22 05:30:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 66, 'admin', '007rajkumar.n@gmail.com', '', '::1', '2017-11-25 19:42:45', '2017-11-25 19:42:45', 'jhu', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/newzigma', 'yes'),
(2, 'home', 'http://localhost/newzigma', 'yes'),
(3, 'blogname', 'NewZigma', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', '007rajkumar.n@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:158:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=14&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:19:\"jetpack/jetpack.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:97:\"C:\\xampp\\xampp\\htdocs\\newzigma/wp-content/themes/accesspress-store/woocommerce/single-product.php\";i:2;s:105:\"C:\\xampp\\xampp\\htdocs\\newzigma/wp-content/themes/accesspress-store/woocommerce/content-single-product.php\";i:3;s:75:\"C:\\xampp\\xampp\\htdocs\\newzigma/wp-content/themes/accesspress-store/page.php\";i:4;s:76:\"C:\\xampp\\xampp\\htdocs\\newzigma/wp-content/themes/accesspress-store/style.css\";i:5;s:83:\"C:\\xampp\\xampp\\htdocs\\newzigma/wp-content/themes/accesspress-store/sidebar-left.php\";}', 'no'),
(40, 'template', 'accesspress-store', 'yes'),
(41, 'stylesheet', 'accesspress-store', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:5;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:0:{}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:0:\"\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '14', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:131:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:109:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:17:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:22:\"woocommerce_products-3\";i:1;s:27:\"accesspress_store_product-5\";}s:13:\"sidebar-right\";a:1:{i:0;s:12:\"categories-2\";}s:12:\"sidebar-left\";a:1:{i:0;s:8:\"search-2\";}s:4:\"shop\";a:4:{i:0;s:33:\"woocommerce_layered_nav_filters-3\";i:1;s:25:\"woocommerce_layered_nav-2\";i:2;s:26:\"woocommerce_price_filter-3\";i:3;s:32:\"woocommerce_product_categories-5\";}s:20:\"header-callto-action\";a:0:{}s:14:\"promo-widget-1\";a:0:{}s:16:\"product-widget-1\";a:1:{i:0;s:27:\"accesspress_store_product-6\";}s:14:\"promo-widget-2\";a:0:{}s:16:\"product-widget-2\";a:0:{}s:9:\"cta-video\";a:0:{}s:16:\"product-widget-3\";a:2:{i:0;s:28:\"accesspress_store_product2-3\";i:1;s:28:\"accesspress_store_product2-4\";}s:14:\"promo-widget-3\";a:3:{i:0;s:29:\"accesspress_store_icon_text-3\";i:1;s:29:\"accesspress_store_icon_text-4\";i:2;s:29:\"accesspress_store_icon_text-5\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:\"nav_menu\";i:16;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:10:{i:1539925422;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1539925831;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1539926478;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1539927013;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1539927036;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1539928979;a:2:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1539930916;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1539993600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1541419200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1511329732;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(122, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'AccessPress Store', 'yes'),
(139, 'theme_mods_accesspress-store', 'a:31:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:172;s:30:\"accesspress_header_layout_type\";s:9:\"headerone\";s:11:\"show_slider\";i:1;s:10:\"show_pager\";i:1;s:13:\"show_controls\";i:1;s:15:\"auto_transition\";i:1;s:12:\"show_caption\";i:1;s:13:\"slider_1_post\";i:44;s:13:\"slider_2_post\";i:58;s:12:\"slider_speed\";s:3:\"800\";s:12:\"slider_pause\";s:4:\"2000\";s:27:\"accesspress_store_copyright\";s:25:\"Copyright 2017 @ NewZigma\";s:12:\"header_image\";s:13:\"remove-header\";s:36:\"accesspress_background_image_pattern\";s:8:\"pattern4\";s:16:\"background_image\";s:0:\"\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:27:\"accesspress_background_type\";s:5:\"color\";s:16:\"header_textcolor\";s:6:\"000000\";s:16:\"background_color\";s:6:\"ffffff\";s:21:\"accesspress_store_css\";s:0:\"\";s:27:\"accesspress_ticker_checkbox\";s:0:\"\";s:19:\"slider1_button_link\";s:1:\"#\";s:19:\"slider1_button_text\";s:7:\"Buy Now\";s:19:\"slider2_button_link\";s:1:\"#\";s:19:\"slider2_button_text\";s:7:\"Buy Now\";s:18:\"single_page_layout\";s:13:\"right-sidebar\";s:18:\"single_post_layout\";s:13:\"right-sidebar\";s:19:\"archive_page_layout\";s:13:\"right-sidebar\";}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(141, 'widget_accesspress_store_icon_text', 'a:4:{s:12:\"_multiwidget\";i:1;i:3;a:5:{s:15:\"icon_text_title\";s:13:\"FREE DELIVERY\";s:17:\"icon_text_content\";s:306:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rhoncus rutrum posuere. Duis vestibulum quis urna et blandit. Mauris vel hendrerit dolor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rhoncus rutrum posuere. Duis vestibulum quis urna et blandit. Mauris vel hendrerit dolo\";s:14:\"icon_text_icon\";s:0:\"\";s:18:\"icon_text_readmore\";s:0:\"\";s:23:\"icon_text_readmore_link\";s:0:\"\";}i:4;a:5:{s:15:\"icon_text_title\";s:13:\"CUSTOMER CARE\";s:17:\"icon_text_content\";s:80:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rhoncus rutrum \";s:14:\"icon_text_icon\";s:0:\"\";s:18:\"icon_text_readmore\";s:0:\"\";s:23:\"icon_text_readmore_link\";s:0:\"\";}i:5;a:5:{s:15:\"icon_text_title\";s:13:\"REFUND POLICY\";s:17:\"icon_text_content\";s:80:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rhoncus rutrum \";s:14:\"icon_text_icon\";s:0:\"\";s:18:\"icon_text_readmore\";s:0:\"\";s:23:\"icon_text_readmore_link\";s:0:\"\";}}', 'yes'),
(142, 'widget_accesspress_cta_simple', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(143, 'widget_accesspress_storemo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(144, 'widget_accesspress_cta_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'widget_accesspress_store_full_promo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'accesspressstore_plugin_installed_notif', '0', 'yes'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(161, 'woocommerce_store_address', 'Thadagam Road', 'yes'),
(162, 'woocommerce_store_address_2', 'opp to gct college', 'yes'),
(163, 'woocommerce_store_city', 'Coimbatore', 'yes'),
(164, 'woocommerce_default_country', 'IN:TN', 'yes'),
(165, 'woocommerce_store_postcode', '641034', 'yes'),
(166, 'woocommerce_allowed_countries', 'all', 'yes'),
(167, 'woocommerce_all_except_countries', '', 'yes'),
(168, 'woocommerce_specific_allowed_countries', '', 'yes'),
(169, 'woocommerce_ship_to_countries', '', 'yes'),
(170, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(171, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(172, 'woocommerce_calc_taxes', 'no', 'yes'),
(173, 'woocommerce_demo_store', 'no', 'yes'),
(174, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(175, 'woocommerce_currency', 'INR', 'yes'),
(176, 'woocommerce_currency_pos', 'left', 'yes'),
(177, 'woocommerce_price_thousand_sep', ',', 'yes'),
(178, 'woocommerce_price_decimal_sep', '.', 'yes'),
(179, 'woocommerce_price_num_decimals', '2', 'yes'),
(180, 'woocommerce_weight_unit', 'kg', 'yes'),
(181, 'woocommerce_dimension_unit', 'cm', 'yes'),
(182, 'woocommerce_enable_reviews', 'yes', 'yes'),
(183, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(184, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(185, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(186, 'woocommerce_review_rating_required', 'yes', 'no'),
(187, 'woocommerce_shop_page_id', '10', 'yes'),
(188, 'woocommerce_shop_page_display', '', 'yes'),
(189, 'woocommerce_category_archive_display', '', 'yes'),
(190, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(191, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(192, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(193, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:1;}', 'yes'),
(194, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}', 'yes'),
(195, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:1;}', 'yes'),
(196, 'woocommerce_manage_stock', 'yes', 'yes'),
(197, 'woocommerce_hold_stock_minutes', '60', 'no'),
(198, 'woocommerce_notify_low_stock', 'yes', 'no'),
(199, 'woocommerce_notify_no_stock', 'yes', 'no'),
(200, 'woocommerce_stock_email_recipient', '007rajkumar.n@gmail.com', 'no'),
(201, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(202, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(203, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(204, 'woocommerce_stock_format', '', 'yes'),
(205, 'woocommerce_file_download_method', 'force', 'no'),
(206, 'woocommerce_downloads_require_login', 'no', 'no'),
(207, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(208, 'woocommerce_prices_include_tax', 'no', 'yes'),
(209, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(210, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(211, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(212, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(213, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(214, 'woocommerce_tax_display_cart', 'excl', 'no'),
(215, 'woocommerce_price_display_suffix', '', 'yes'),
(216, 'woocommerce_tax_total_display', 'itemized', 'no'),
(217, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(218, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(219, 'woocommerce_ship_to_destination', 'billing', 'no'),
(220, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(221, 'woocommerce_enable_coupons', 'yes', 'yes'),
(222, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(223, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(224, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(225, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(226, 'woocommerce_cart_page_id', '11', 'yes'),
(227, 'woocommerce_checkout_page_id', '12', 'yes'),
(228, 'woocommerce_terms_page_id', '', 'no'),
(229, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(230, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(231, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(232, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(233, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(234, 'woocommerce_myaccount_page_id', '13', 'yes'),
(235, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(236, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(237, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(238, 'woocommerce_registration_generate_username', 'yes', 'no'),
(239, 'woocommerce_registration_generate_password', 'no', 'no'),
(240, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(241, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(242, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(243, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(244, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(245, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(246, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(247, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(248, 'woocommerce_email_from_name', 'NewZigma', 'no'),
(249, 'woocommerce_email_from_address', '007rajkumar.n@gmail.com', 'no'),
(250, 'woocommerce_email_header_image', '', 'no'),
(251, 'woocommerce_email_footer_text', 'NewZigma', 'no'),
(252, 'woocommerce_email_base_color', '#96588a', 'no'),
(253, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(254, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(255, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(256, 'woocommerce_api_enabled', 'yes', 'yes'),
(257, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(259, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_layered_nav_filters', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}i:5;a:0:{}}', 'yes'),
(261, 'widget_woocommerce_layered_nav', 'a:2:{i:2;a:4:{s:5:\"title\";s:4:\"Size\";s:9:\"attribute\";s:4:\"size\";s:12:\"display_type\";s:4:\"list\";s:10:\"query_type\";s:3:\"and\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_price_filter', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(264, 'widget_woocommerce_product_categories', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}i:5;a:8:{s:5:\"title\";s:18:\"Product categories\";s:7:\"orderby\";s:5:\"order\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:1;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}}', 'yes'),
(266, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_products', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:7:{s:5:\"title\";s:3:\"New\";s:6:\"number\";i:4;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}}', 'yes'),
(269, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_accesspress_store_product', 'a:4:{s:12:\"_multiwidget\";i:1;i:3;a:4:{s:13:\"product_title\";s:3:\"New\";s:12:\"product_type\";s:14:\"latest_product\";s:16:\"product_category\";s:0:\"\";s:14:\"number_of_prod\";i:4;}i:5;a:4:{s:13:\"product_title\";s:3:\"New\";s:12:\"product_type\";s:14:\"latest_product\";s:16:\"product_category\";s:0:\"\";s:14:\"number_of_prod\";i:4;}i:6;a:4:{s:13:\"product_title\";s:3:\"New\";s:12:\"product_type\";s:14:\"latest_product\";s:16:\"product_category\";s:0:\"\";s:14:\"number_of_prod\";i:4;}}', 'yes'),
(276, 'widget_accesspress_store_product2', 'a:4:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:17:\"product_alignment\";s:10:\"left_align\";s:16:\"product_category\";s:2:\"39\";}i:4;a:2:{s:17:\"product_alignment\";s:11:\"right_align\";s:16:\"product_category\";s:2:\"18\";}i:6;a:2:{s:17:\"product_alignment\";s:10:\"left_align\";s:16:\"product_category\";s:2:\"21\";}}', 'yes'),
(284, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(285, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(311, 'woocommerce_version', '3.2.4', 'yes'),
(312, 'woocommerce_db_version', '3.2.4', 'yes'),
(318, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(319, 'woocommerce_product_type', 'physical', 'yes'),
(320, 'woocommerce_allow_tracking', 'yes', 'yes'),
(321, 'woocommerce_tracker_last_send', '1539499816', 'yes'),
(322, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(323, 'woocommerce_paypal_settings', 'a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";b:0;}', 'yes'),
(324, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(327, 'jetpack_activated', '1', 'yes'),
(330, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(331, 'jetpack_sync_settings_disable', '0', 'yes'),
(334, 'jetpack_available_modules', 'a:1:{s:3:\"5.5\";a:41:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(335, 'jetpack_options', 'a:4:{s:7:\"version\";s:14:\"5.5:1511331032\";s:11:\"old_version\";s:14:\"5.5:1511331032\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(336, 'jetpack_secrets', 'a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"j5MdcUnVyVO0VzFBeGB37TAKhQESRJA2\";s:8:\"secret_2\";s:32:\"mb0hx1meigY5eLnPAvCBXQXE0cU0FCeO\";s:3:\"exp\";i:1511331641;}}', 'no'),
(338, 'jetpack_testimonial', '0', 'yes'),
(344, 'do_activate', '0', 'yes'),
(349, '_transient_shipping-transient-version', '1511331071', 'yes'),
(359, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:0:{}s:6:\"custom\";a:0:{}}}', 'yes'),
(360, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(371, '_transient_product_query-transient-version', '1513449409', 'yes'),
(374, '_transient_product-transient-version', '1513449410', 'yes'),
(423, 'woocommerce_tracker_ua', 'a:4:{i:0;s:114:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/62.0.3202.94 safari/537.36\";i:1;s:113:\"mozilla/5.0 (windows nt 6.3; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/62.0.3202.94 safari/537.36\";i:2;s:114:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.84 safari/537.36\";i:3;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.108 safari/537.36\";}', 'yes'),
(624, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"size\";s:14:\"attribute_type\";s:4:\"text\";s:17:\"attribute_orderby\";s:8:\"name_num\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(639, '_transient_orders-transient-version', '1511638966', 'yes'),
(642, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"2\";s:14:\"total_comments\";i:2;s:3:\"all\";i:2;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(709, 'category_children', 'a:0:{}', 'yes'),
(793, 'WPLANG', '', 'yes'),
(794, 'new_admin_email', '007rajkumar.n@gmail.com', 'yes'),
(795, 'jetpack_holiday_snow_enabled', '', 'yes'),
(852, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"007rajkumar.n@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533262939;}', 'no'),
(1121, 'product_cat_children', 'a:15:{i:21;a:2:{i:0;i:19;i:1;i:20;}i:19;a:5:{i:0;i:22;i:1;i:23;i:2;i:24;i:3;i:25;i:4;i:26;}i:20;a:2:{i:0;i:27;i:1;i:28;}i:29;a:2:{i:0;i:30;i:1;i:37;}i:30;a:6:{i:0;i:31;i:1;i:32;i:2;i:33;i:3;i:34;i:4;i:35;i:5;i:36;}i:37;a:1:{i:0;i:38;}i:39;a:2:{i:0;i:40;i:1;i:41;}i:40;a:5:{i:0;i:42;i:1;i:43;i:2;i:44;i:3;i:45;i:4;i:46;}i:41;a:1:{i:0;i:47;}i:18;a:2:{i:0;i:48;i:1;i:49;}i:48;a:7:{i:0;i:50;i:1;i:51;i:2;i:52;i:3;i:53;i:4;i:54;i:5;i:55;i:6;i:56;}i:49;a:1:{i:0;i:57;}i:64;a:2:{i:0;i:65;i:1;i:66;}i:66;a:5:{i:0;i:67;i:1;i:70;i:2;i:71;i:3;i:74;i:4;i:75;}i:65;a:5:{i:0;i:68;i:1;i:69;i:2;i:72;i:3;i:73;i:4;i:76;}}', 'yes'),
(1226, 'woocommerce_permalinks', 'a:4:{s:13:\"category_base\";s:0:\"\";s:8:\"tag_base\";s:0:\"\";s:14:\"attribute_base\";s:0:\"\";s:12:\"product_base\";s:0:\"\";}', 'yes'),
(1233, '_transient_is_multi_author', '0', 'yes'),
(4824, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1539914458;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(5400, '_transient_timeout_wc_term_counts', '1542318080', 'no'),
(5401, '_transient_wc_term_counts', 'a:53:{i:64;s:1:\"2\";i:21;s:1:\"2\";i:29;s:1:\"2\";i:39;s:1:\"2\";i:18;s:1:\"2\";i:28;s:0:\"\";i:19;s:0:\"\";i:27;s:0:\"\";i:20;s:0:\"\";i:25;s:0:\"\";i:24;s:0:\"\";i:26;s:0:\"\";i:23;s:0:\"\";i:22;s:0:\"\";i:65;s:0:\"\";i:66;s:0:\"\";i:71;s:0:\"\";i:75;s:0:\"\";i:74;s:0:\"\";i:67;s:0:\"\";i:70;s:0:\"\";i:45;s:0:\"\";i:46;s:0:\"\";i:44;s:0:\"\";i:40;s:0:\"\";i:42;s:0:\"\";i:43;s:0:\"\";i:41;s:0:\"\";i:53;s:0:\"\";i:54;s:0:\"\";i:56;s:0:\"\";i:52;s:0:\"\";i:55;s:0:\"\";i:48;s:0:\"\";i:50;s:0:\"\";i:51;s:0:\"\";i:49;s:0:\"\";i:47;s:0:\"\";i:30;s:0:\"\";i:37;s:0:\"\";i:35;s:0:\"\";i:33;s:0:\"\";i:34;s:0:\"\";i:36;s:0:\"\";i:32;s:0:\"\";i:31;s:0:\"\";i:72;s:0:\"\";i:76;s:0:\"\";i:73;s:0:\"\";i:68;s:0:\"\";i:69;s:0:\"\";i:38;s:0:\"\";i:57;s:0:\"\";}', 'no'),
(5494, '_transient_timeout_external_ip_address_2402:3a80:406:8a6f:8880:8f6d:5f9f:487d', '1539918453', 'no'),
(5495, '_transient_external_ip_address_2402:3a80:406:8a6f:8880:8f6d:5f9f:487d', '66.96.183.12', 'no'),
(5518, '_transient_timeout_external_ip_address_2402:3a80:51c:88fa:b485:1253:6b91:d496', '1540022425', 'no'),
(5519, '_transient_external_ip_address_2402:3a80:51c:88fa:b485:1253:6b91:d496', '66.96.183.12', 'no'),
(5546, '_transient_timeout_external_ip_address_2402:3a80:44b:c1e8:91e3:6f94:c346:82fe', '1540171554', 'no'),
(5547, '_transient_external_ip_address_2402:3a80:44b:c1e8:91e3:6f94:c346:82fe', '66.96.183.12', 'no'),
(5555, '_transient_timeout_wc_shipping_method_count_1_1511331071', '1542158820', 'no'),
(5556, '_transient_wc_shipping_method_count_1_1511331071', '0', 'no'),
(5573, '_transient_timeout_external_ip_address_2402:3a80:404:813a:413a:b6d2:57f7:1c09', '1540268530', 'no'),
(5574, '_transient_external_ip_address_2402:3a80:404:813a:413a:b6d2:57f7:1c09', '66.96.183.12', 'no'),
(5585, '_transient_timeout_external_ip_address_2402:3a80:436:936f:c1c8:d5fa:bdb6:5b2', '1540309540', 'no'),
(5586, '_transient_external_ip_address_2402:3a80:436:936f:c1c8:d5fa:bdb6:5b2', '66.96.183.12', 'no'),
(5587, '_transient_timeout_external_ip_address_2402:3a80:459:7527:7dc6:13c2:9275:c4ad', '1540312901', 'no'),
(5588, '_transient_external_ip_address_2402:3a80:459:7527:7dc6:13c2:9275:c4ad', '503 Over Quota Error &nbsp; Over Quota This application is temporarily over its serving quota. Please try again later.', 'no'),
(5618, '_transient_timeout_wc_layered_nav_counts', '1539938318', 'no'),
(5619, '_transient_wc_layered_nav_counts', 'a:6:{i:0;b:0;s:32:\"a4d45bb138567ce51f38c278640270cd\";a:0:{}s:32:\"1ba788a882a0d771974c6f79d0c2775a\";a:0:{}s:32:\"0e7f81f8c609340ccac747b401ac0c08\";a:5:{i:77;i:1;i:78;i:1;i:79;i:1;i:80;i:1;i:81;i:1;}s:32:\"8d995415a246539af2bb06b546636b33\";a:5:{i:77;i:2;i:78;i:2;i:79;i:2;i:80;i:2;i:81;i:2;}s:32:\"19d07c5b81ff18852b682013c1a4bcf3\";a:0:{}}', 'no'),
(5620, '_transient_timeout_wc_related_65', '1539938319', 'no'),
(5621, '_transient_wc_related_65', 'a:1:{i:0;s:3:\"223\";}', 'no'),
(5624, '_site_transient_timeout_theme_roots', '1539916258', 'no'),
(5625, '_site_transient_theme_roots', 'a:4:{s:17:\"accesspress-store\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(5627, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1539914463;s:7:\"checked\";a:4:{s:17:\"accesspress-store\";s:5:\"2.2.4\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:4:{s:17:\"accesspress-store\";a:4:{s:5:\"theme\";s:17:\"accesspress-store\";s:11:\"new_version\";s:5:\"2.3.4\";s:3:\"url\";s:47:\"https://wordpress.org/themes/accesspress-store/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/accesspress-store.2.3.4.zip\";}s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.0.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(5628, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1539914465;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"6.6.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.6.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.7\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(5629, '_transient_timeout_external_ip_address_2402:3a80:518:d0f1:c42a:ca35:f4fa:f0d3', '1540527677', 'no'),
(5630, '_transient_external_ip_address_2402:3a80:518:d0f1:c42a:ca35:f4fa:f0d3', '66.96.183.12', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(26, 8, '_menu_item_type', 'custom'),
(27, 8, '_menu_item_menu_item_parent', '0'),
(28, 8, '_menu_item_object_id', '8'),
(29, 8, '_menu_item_object', 'custom'),
(30, 8, '_menu_item_target', ''),
(31, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 8, '_menu_item_xfn', ''),
(33, 8, '_menu_item_url', 'http://localhost/newzigma'),
(44, 14, '_edit_last', '1'),
(45, 14, '_edit_lock', '1512142030:1'),
(46, 14, '_wp_page_template', 'template-home.php'),
(47, 14, 'accesspress_store_sidebar_layout', 'no-sidebar'),
(122, 32, '_edit_last', '1'),
(123, 32, '_edit_lock', '1511332703:1'),
(124, 32, '_wp_page_template', 'default'),
(125, 32, 'accesspress_store_sidebar_layout', 'right-sidebar'),
(126, 34, '_edit_last', '1'),
(127, 34, '_wp_page_template', 'default'),
(128, 34, 'accesspress_store_sidebar_layout', 'right-sidebar'),
(129, 34, '_edit_lock', '1511333197:1'),
(195, 44, '_edit_last', '1'),
(196, 44, '_edit_lock', '1513444124:1'),
(197, 45, '_wp_attached_file', '2017/11/2.png'),
(198, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:518;s:4:\"file\";s:13:\"2017/11/2.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-214x300.png\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:13:\"2-370x492.png\";s:5:\"width\";i:370;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:13:\"2-370x252.png\";s:5:\"width\";i:370;s:6:\"height\";i:252;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:13:\"2-370x300.png\";s:5:\"width\";i:370;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 46, '_wp_attached_file', '2017/11/3.png'),
(200, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:518;s:4:\"file\";s:13:\"2017/11/3.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-214x300.png\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:13:\"3-370x492.png\";s:5:\"width\";i:370;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:13:\"3-370x252.png\";s:5:\"width\";i:370;s:6:\"height\";i:252;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:13:\"3-370x300.png\";s:5:\"width\";i:370;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 47, '_wp_attached_file', '2017/11/2-1.png'),
(202, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:518;s:4:\"file\";s:15:\"2017/11/2-1.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-1-214x300.png\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"2-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:15:\"2-1-370x492.png\";s:5:\"width\";i:370;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-370x252.png\";s:5:\"width\";i:370;s:6:\"height\";i:252;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-370x300.png\";s:5:\"width\";i:370;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 48, '_wp_attached_file', '2017/11/1.png'),
(204, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:518;s:4:\"file\";s:13:\"2017/11/1.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-214x300.png\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:13:\"1-370x492.png\";s:5:\"width\";i:370;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:13:\"1-370x252.png\";s:5:\"width\";i:370;s:6:\"height\";i:252;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:13:\"1-370x300.png\";s:5:\"width\";i:370;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 49, '_wp_attached_file', '2017/11/women1.jpg'),
(206, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2017/11/women1.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"women1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"women1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"women1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"women1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"women1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"women1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"women1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:18:\"women1-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:18:\"women1-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:18:\"women1-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:19:\"women1-1200x570.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 50, '_wp_attached_file', '2017/11/logo-9.png'),
(208, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:199;s:6:\"height\";i:66;s:4:\"file\";s:18:\"2017/11/logo-9.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-9-150x66.png\";s:5:\"width\";i:150;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-9-180x66.png\";s:5:\"width\";i:180;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 51, '_wp_attached_file', '2017/11/product-toys-1.jpg'),
(210, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:230;s:4:\"file\";s:26:\"2017/11/product-toys-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"product-toys-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"product-toys-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 52, '_wp_attached_file', '2017/11/product-toys-2.jpg'),
(212, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:230;s:4:\"file\";s:26:\"2017/11/product-toys-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"product-toys-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"product-toys-2-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 53, '_wp_attached_file', '2017/11/product-toys-3.jpg'),
(214, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:230;s:4:\"file\";s:26:\"2017/11/product-toys-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"product-toys-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"product-toys-3-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 54, '_wp_attached_file', '2017/11/product-toys-4.jpg'),
(216, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:230;s:4:\"file\";s:26:\"2017/11/product-toys-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"product-toys-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"product-toys-4-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 55, '_wp_attached_file', '2017/11/fullwidth-1.jpg'),
(218, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2017/11/fullwidth-1.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"fullwidth-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"fullwidth-1-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"fullwidth-1-768x256.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"fullwidth-1-1024x341.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"fullwidth-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"fullwidth-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"fullwidth-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:23:\"fullwidth-1-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:23:\"fullwidth-1-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:23:\"fullwidth-1-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"accesspress-slider\";a:4:{s:4:\"file\";s:24:\"fullwidth-1-1350x570.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 44, '_thumbnail_id', '204'),
(224, 58, '_edit_last', '1'),
(225, 58, '_edit_lock', '1513444027:1'),
(226, 58, '_thumbnail_id', '55'),
(241, 65, '_wc_review_count', '0'),
(242, 65, '_wc_rating_count', 'a:0:{}'),
(243, 65, '_wc_average_rating', '0'),
(244, 65, '_edit_last', '1'),
(245, 65, '_edit_lock', '1513446653:1'),
(246, 65, '_thumbnail_id', '48'),
(247, 65, '_sku', ''),
(248, 65, '_regular_price', '500'),
(249, 65, '_sale_price', '400'),
(250, 65, '_sale_price_dates_from', ''),
(251, 65, '_sale_price_dates_to', ''),
(252, 65, 'total_sales', '0'),
(253, 65, '_tax_status', 'taxable'),
(254, 65, '_tax_class', ''),
(255, 65, '_manage_stock', 'no'),
(256, 65, '_backorders', 'no'),
(257, 65, '_sold_individually', 'no'),
(258, 65, '_weight', ''),
(259, 65, '_length', ''),
(260, 65, '_width', ''),
(261, 65, '_height', ''),
(262, 65, '_upsell_ids', 'a:0:{}'),
(263, 65, '_crosssell_ids', 'a:0:{}'),
(264, 65, '_purchase_note', ''),
(265, 65, '_default_attributes', 'a:0:{}'),
(266, 65, '_virtual', 'no'),
(267, 65, '_downloadable', 'no'),
(268, 65, '_product_image_gallery', '48,48'),
(269, 65, '_download_limit', '-1'),
(270, 65, '_download_expiry', '-1'),
(271, 65, '_stock', NULL),
(272, 65, '_stock_status', 'instock'),
(273, 65, '_product_version', '3.2.4'),
(274, 65, '_price', '400'),
(275, 66, '_wc_review_count', '1'),
(276, 66, '_wc_rating_count', 'a:1:{i:4;i:1;}'),
(277, 66, '_wc_average_rating', '4.00'),
(278, 66, '_edit_last', '1'),
(279, 66, '_edit_lock', '1513446912:1'),
(280, 66, '_thumbnail_id', '49'),
(281, 66, '_sku', ''),
(282, 66, '_regular_price', '800'),
(283, 66, '_sale_price', '700'),
(284, 66, '_sale_price_dates_from', ''),
(285, 66, '_sale_price_dates_to', ''),
(286, 66, 'total_sales', '0'),
(287, 66, '_tax_status', 'taxable'),
(288, 66, '_tax_class', ''),
(289, 66, '_manage_stock', 'no'),
(290, 66, '_backorders', 'no'),
(291, 66, '_sold_individually', 'no'),
(292, 66, '_weight', ''),
(293, 66, '_length', ''),
(294, 66, '_width', ''),
(295, 66, '_height', ''),
(296, 66, '_upsell_ids', 'a:0:{}'),
(297, 66, '_crosssell_ids', 'a:0:{}'),
(298, 66, '_purchase_note', ''),
(299, 66, '_default_attributes', 'a:0:{}'),
(300, 66, '_virtual', 'no'),
(301, 66, '_downloadable', 'no'),
(302, 66, '_product_image_gallery', '49,49,49,49'),
(303, 66, '_download_limit', '-1'),
(304, 66, '_download_expiry', '-1'),
(305, 66, '_stock', NULL),
(306, 66, '_stock_status', 'instock'),
(307, 66, '_product_version', '3.2.4'),
(308, 66, '_price', '700'),
(314, 69, '_wp_attached_file', '2017/11/guess-attic-837156_1280-562x492.jpg'),
(315, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:562;s:6:\"height\";i:492;s:4:\"file\";s:43:\"2017/11/guess-attic-837156_1280-562x492.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"guess-attic-837156_1280-562x492-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"guess-attic-837156_1280-562x492-300x263.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"guess-attic-837156_1280-562x492-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"guess-attic-837156_1280-562x492-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:43:\"guess-attic-837156_1280-562x492-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:43:\"guess-attic-837156_1280-562x492-562x300.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(316, 70, '_wp_attached_file', '2017/11/bow-tie-businessman-fashion-man-562x492.jpg'),
(317, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:562;s:6:\"height\";i:492;s:4:\"file\";s:51:\"2017/11/bow-tie-businessman-fashion-man-562x492.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"bow-tie-businessman-fashion-man-562x492-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"bow-tie-businessman-fashion-man-562x492-300x263.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"bow-tie-businessman-fashion-man-562x492-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:51:\"bow-tie-businessman-fashion-man-562x492-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:51:\"bow-tie-businessman-fashion-man-562x492-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:51:\"bow-tie-businessman-fashion-man-562x492-562x300.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(318, 71, '_wc_review_count', '0'),
(319, 71, '_wc_rating_count', 'a:0:{}'),
(320, 71, '_wc_average_rating', '0'),
(321, 71, '_edit_last', '1'),
(322, 71, '_edit_lock', '1513446276:1'),
(323, 71, '_thumbnail_id', '46'),
(324, 71, '_sku', ''),
(325, 71, '_regular_price', '1500'),
(326, 71, '_sale_price', '900'),
(327, 71, '_sale_price_dates_from', ''),
(328, 71, '_sale_price_dates_to', ''),
(329, 71, 'total_sales', '0'),
(330, 71, '_tax_status', 'taxable'),
(331, 71, '_tax_class', ''),
(332, 71, '_manage_stock', 'no'),
(333, 71, '_backorders', 'no'),
(334, 71, '_sold_individually', 'no'),
(335, 71, '_weight', ''),
(336, 71, '_length', ''),
(337, 71, '_width', ''),
(338, 71, '_height', ''),
(339, 71, '_upsell_ids', 'a:0:{}'),
(340, 71, '_crosssell_ids', 'a:0:{}'),
(341, 71, '_purchase_note', ''),
(342, 71, '_default_attributes', 'a:0:{}'),
(343, 71, '_virtual', 'no'),
(344, 71, '_downloadable', 'no'),
(345, 71, '_product_image_gallery', '46,46,46'),
(346, 71, '_download_limit', '-1'),
(347, 71, '_download_expiry', '-1'),
(348, 71, '_stock', NULL),
(349, 71, '_stock_status', 'instock'),
(350, 71, '_product_version', '3.2.4'),
(351, 71, '_price', '900'),
(352, 72, '_wc_review_count', '0'),
(353, 72, '_wc_rating_count', 'a:0:{}'),
(354, 72, '_wc_average_rating', '0'),
(355, 72, '_edit_last', '1'),
(356, 72, '_edit_lock', '1513446514:1'),
(357, 72, '_thumbnail_id', '47'),
(358, 72, '_sku', ''),
(359, 72, '_regular_price', '700'),
(360, 72, '_sale_price', '300'),
(361, 72, '_sale_price_dates_from', ''),
(362, 72, '_sale_price_dates_to', ''),
(363, 72, 'total_sales', '0'),
(364, 72, '_tax_status', 'taxable'),
(365, 72, '_tax_class', ''),
(366, 72, '_manage_stock', 'no'),
(367, 72, '_backorders', 'no'),
(368, 72, '_sold_individually', 'no'),
(369, 72, '_weight', ''),
(370, 72, '_length', ''),
(371, 72, '_width', ''),
(372, 72, '_height', ''),
(373, 72, '_upsell_ids', 'a:0:{}'),
(374, 72, '_crosssell_ids', 'a:0:{}'),
(375, 72, '_purchase_note', ''),
(376, 72, '_default_attributes', 'a:0:{}'),
(377, 72, '_virtual', 'no'),
(378, 72, '_downloadable', 'no'),
(379, 72, '_product_image_gallery', '47,47,47'),
(380, 72, '_download_limit', '-1'),
(381, 72, '_download_expiry', '-1'),
(382, 72, '_stock', NULL),
(383, 72, '_stock_status', 'instock'),
(384, 72, '_product_version', '3.2.4'),
(385, 72, '_price', '300'),
(408, 82, '_wp_attached_file', '2017/11/cropped-logo-9.png'),
(409, 82, '_wp_attachment_context', 'custom-header'),
(410, 82, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:82;s:4:\"file\";s:26:\"2017/11/cropped-logo-9.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo-9-150x82.png\";s:5:\"width\";i:150;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-logo-9-300x82.png\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo-9-180x82.png\";s:5:\"width\";i:180;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"cropped-logo-9-300x82.png\";s:5:\"width\";i:300;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:50;}'),
(411, 82, '_wp_attachment_custom_header_last_used_accesspress-store', '1511337025'),
(412, 82, '_wp_attachment_is_custom_header', 'accesspress-store'),
(418, 70, '_wp_attachment_is_custom_background', 'accesspress-store'),
(468, 99, '_menu_item_type', 'taxonomy'),
(469, 99, '_menu_item_menu_item_parent', '0'),
(470, 99, '_menu_item_object_id', '21'),
(471, 99, '_menu_item_object', 'product_cat'),
(472, 99, '_menu_item_target', ''),
(473, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(474, 99, '_menu_item_xfn', ''),
(475, 99, '_menu_item_url', ''),
(476, 99, '_menu_item_orphaned', '1511620803'),
(477, 100, '_menu_item_type', 'taxonomy'),
(478, 100, '_menu_item_menu_item_parent', '0'),
(479, 100, '_menu_item_object_id', '19'),
(480, 100, '_menu_item_object', 'product_cat'),
(481, 100, '_menu_item_target', ''),
(482, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(483, 100, '_menu_item_xfn', ''),
(484, 100, '_menu_item_url', ''),
(485, 100, '_menu_item_orphaned', '1511620803'),
(486, 101, '_menu_item_type', 'taxonomy'),
(487, 101, '_menu_item_menu_item_parent', '0'),
(488, 101, '_menu_item_object_id', '25'),
(489, 101, '_menu_item_object', 'product_cat'),
(490, 101, '_menu_item_target', ''),
(491, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(492, 101, '_menu_item_xfn', ''),
(493, 101, '_menu_item_url', ''),
(494, 101, '_menu_item_orphaned', '1511620804'),
(495, 102, '_menu_item_type', 'taxonomy'),
(496, 102, '_menu_item_menu_item_parent', '0'),
(497, 102, '_menu_item_object_id', '24'),
(498, 102, '_menu_item_object', 'product_cat'),
(499, 102, '_menu_item_target', ''),
(500, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(501, 102, '_menu_item_xfn', ''),
(502, 102, '_menu_item_url', ''),
(503, 102, '_menu_item_orphaned', '1511620804'),
(504, 103, '_menu_item_type', 'taxonomy'),
(505, 103, '_menu_item_menu_item_parent', '0'),
(506, 103, '_menu_item_object_id', '26'),
(507, 103, '_menu_item_object', 'product_cat'),
(508, 103, '_menu_item_target', ''),
(509, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(510, 103, '_menu_item_xfn', ''),
(511, 103, '_menu_item_url', ''),
(512, 103, '_menu_item_orphaned', '1511620805'),
(513, 104, '_menu_item_type', 'taxonomy'),
(514, 104, '_menu_item_menu_item_parent', '0'),
(515, 104, '_menu_item_object_id', '23'),
(516, 104, '_menu_item_object', 'product_cat'),
(517, 104, '_menu_item_target', ''),
(518, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(519, 104, '_menu_item_xfn', ''),
(520, 104, '_menu_item_url', ''),
(521, 104, '_menu_item_orphaned', '1511620805'),
(522, 105, '_menu_item_type', 'taxonomy'),
(523, 105, '_menu_item_menu_item_parent', '0'),
(524, 105, '_menu_item_object_id', '22'),
(525, 105, '_menu_item_object', 'product_cat'),
(526, 105, '_menu_item_target', ''),
(527, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(528, 105, '_menu_item_xfn', ''),
(529, 105, '_menu_item_url', ''),
(530, 105, '_menu_item_orphaned', '1511620806'),
(531, 106, '_menu_item_type', 'taxonomy'),
(532, 106, '_menu_item_menu_item_parent', '0'),
(533, 106, '_menu_item_object_id', '20'),
(534, 106, '_menu_item_object', 'product_cat'),
(535, 106, '_menu_item_target', ''),
(536, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(537, 106, '_menu_item_xfn', ''),
(538, 106, '_menu_item_url', ''),
(539, 106, '_menu_item_orphaned', '1511620807'),
(540, 107, '_menu_item_type', 'taxonomy'),
(541, 107, '_menu_item_menu_item_parent', '0'),
(542, 107, '_menu_item_object_id', '28'),
(543, 107, '_menu_item_object', 'product_cat'),
(544, 107, '_menu_item_target', ''),
(545, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(546, 107, '_menu_item_xfn', ''),
(547, 107, '_menu_item_url', ''),
(548, 107, '_menu_item_orphaned', '1511620807'),
(549, 108, '_menu_item_type', 'taxonomy'),
(550, 108, '_menu_item_menu_item_parent', '0'),
(551, 108, '_menu_item_object_id', '27'),
(552, 108, '_menu_item_object', 'product_cat'),
(553, 108, '_menu_item_target', ''),
(554, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(555, 108, '_menu_item_xfn', ''),
(556, 108, '_menu_item_url', ''),
(557, 108, '_menu_item_orphaned', '1511620807'),
(567, 110, '_menu_item_type', 'taxonomy'),
(568, 110, '_menu_item_menu_item_parent', '0'),
(569, 110, '_menu_item_object_id', '18'),
(570, 110, '_menu_item_object', 'product_cat'),
(571, 110, '_menu_item_target', ''),
(572, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(573, 110, '_menu_item_xfn', ''),
(574, 110, '_menu_item_url', ''),
(575, 110, '_menu_item_orphaned', '1511620808'),
(576, 111, '_menu_item_type', 'taxonomy'),
(577, 111, '_menu_item_menu_item_parent', '0'),
(578, 111, '_menu_item_object_id', '21'),
(579, 111, '_menu_item_object', 'product_cat'),
(580, 111, '_menu_item_target', ''),
(581, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(582, 111, '_menu_item_xfn', ''),
(583, 111, '_menu_item_url', ''),
(585, 112, '_menu_item_type', 'taxonomy'),
(586, 112, '_menu_item_menu_item_parent', '111'),
(587, 112, '_menu_item_object_id', '19'),
(588, 112, '_menu_item_object', 'product_cat'),
(589, 112, '_menu_item_target', ''),
(590, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(591, 112, '_menu_item_xfn', ''),
(592, 112, '_menu_item_url', ''),
(594, 113, '_menu_item_type', 'taxonomy'),
(595, 113, '_menu_item_menu_item_parent', '112'),
(596, 113, '_menu_item_object_id', '25'),
(597, 113, '_menu_item_object', 'product_cat'),
(598, 113, '_menu_item_target', ''),
(599, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(600, 113, '_menu_item_xfn', ''),
(601, 113, '_menu_item_url', ''),
(603, 114, '_menu_item_type', 'taxonomy'),
(604, 114, '_menu_item_menu_item_parent', '112'),
(605, 114, '_menu_item_object_id', '24'),
(606, 114, '_menu_item_object', 'product_cat'),
(607, 114, '_menu_item_target', ''),
(608, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(609, 114, '_menu_item_xfn', ''),
(610, 114, '_menu_item_url', ''),
(612, 115, '_menu_item_type', 'taxonomy'),
(613, 115, '_menu_item_menu_item_parent', '112'),
(614, 115, '_menu_item_object_id', '26'),
(615, 115, '_menu_item_object', 'product_cat'),
(616, 115, '_menu_item_target', ''),
(617, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(618, 115, '_menu_item_xfn', ''),
(619, 115, '_menu_item_url', ''),
(621, 116, '_menu_item_type', 'taxonomy'),
(622, 116, '_menu_item_menu_item_parent', '112'),
(623, 116, '_menu_item_object_id', '23'),
(624, 116, '_menu_item_object', 'product_cat'),
(625, 116, '_menu_item_target', ''),
(626, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(627, 116, '_menu_item_xfn', ''),
(628, 116, '_menu_item_url', ''),
(630, 117, '_menu_item_type', 'taxonomy'),
(631, 117, '_menu_item_menu_item_parent', '112'),
(632, 117, '_menu_item_object_id', '22'),
(633, 117, '_menu_item_object', 'product_cat'),
(634, 117, '_menu_item_target', ''),
(635, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(636, 117, '_menu_item_xfn', ''),
(637, 117, '_menu_item_url', ''),
(639, 118, '_menu_item_type', 'taxonomy'),
(640, 118, '_menu_item_menu_item_parent', '111'),
(641, 118, '_menu_item_object_id', '20'),
(642, 118, '_menu_item_object', 'product_cat'),
(643, 118, '_menu_item_target', ''),
(644, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(645, 118, '_menu_item_xfn', ''),
(646, 118, '_menu_item_url', ''),
(648, 119, '_menu_item_type', 'taxonomy'),
(649, 119, '_menu_item_menu_item_parent', '118'),
(650, 119, '_menu_item_object_id', '28'),
(651, 119, '_menu_item_object', 'product_cat'),
(652, 119, '_menu_item_target', ''),
(653, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(654, 119, '_menu_item_xfn', ''),
(655, 119, '_menu_item_url', ''),
(657, 120, '_menu_item_type', 'taxonomy'),
(658, 120, '_menu_item_menu_item_parent', '118'),
(659, 120, '_menu_item_object_id', '27'),
(660, 120, '_menu_item_object', 'product_cat'),
(661, 120, '_menu_item_target', ''),
(662, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(663, 120, '_menu_item_xfn', ''),
(664, 120, '_menu_item_url', ''),
(669, 122, '_menu_item_type', 'taxonomy'),
(670, 122, '_menu_item_menu_item_parent', '0'),
(671, 122, '_menu_item_object_id', '29'),
(672, 122, '_menu_item_object', 'product_cat'),
(673, 122, '_menu_item_target', ''),
(674, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(675, 122, '_menu_item_xfn', ''),
(676, 122, '_menu_item_url', ''),
(678, 123, '_menu_item_type', 'taxonomy'),
(679, 123, '_menu_item_menu_item_parent', '122'),
(680, 123, '_menu_item_object_id', '30'),
(681, 123, '_menu_item_object', 'product_cat'),
(682, 123, '_menu_item_target', ''),
(683, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(684, 123, '_menu_item_xfn', ''),
(685, 123, '_menu_item_url', ''),
(687, 124, '_menu_item_type', 'taxonomy'),
(688, 124, '_menu_item_menu_item_parent', '123'),
(689, 124, '_menu_item_object_id', '35'),
(690, 124, '_menu_item_object', 'product_cat'),
(691, 124, '_menu_item_target', ''),
(692, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(693, 124, '_menu_item_xfn', ''),
(694, 124, '_menu_item_url', ''),
(696, 125, '_menu_item_type', 'taxonomy'),
(697, 125, '_menu_item_menu_item_parent', '123'),
(698, 125, '_menu_item_object_id', '33'),
(699, 125, '_menu_item_object', 'product_cat'),
(700, 125, '_menu_item_target', ''),
(701, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(702, 125, '_menu_item_xfn', ''),
(703, 125, '_menu_item_url', ''),
(705, 126, '_menu_item_type', 'taxonomy'),
(706, 126, '_menu_item_menu_item_parent', '123'),
(707, 126, '_menu_item_object_id', '34'),
(708, 126, '_menu_item_object', 'product_cat'),
(709, 126, '_menu_item_target', ''),
(710, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(711, 126, '_menu_item_xfn', ''),
(712, 126, '_menu_item_url', ''),
(714, 127, '_menu_item_type', 'taxonomy'),
(715, 127, '_menu_item_menu_item_parent', '123'),
(716, 127, '_menu_item_object_id', '36'),
(717, 127, '_menu_item_object', 'product_cat'),
(718, 127, '_menu_item_target', ''),
(719, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(720, 127, '_menu_item_xfn', ''),
(721, 127, '_menu_item_url', ''),
(723, 128, '_menu_item_type', 'taxonomy'),
(724, 128, '_menu_item_menu_item_parent', '123'),
(725, 128, '_menu_item_object_id', '32'),
(726, 128, '_menu_item_object', 'product_cat'),
(727, 128, '_menu_item_target', ''),
(728, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(729, 128, '_menu_item_xfn', ''),
(730, 128, '_menu_item_url', ''),
(732, 129, '_menu_item_type', 'taxonomy'),
(733, 129, '_menu_item_menu_item_parent', '123'),
(734, 129, '_menu_item_object_id', '31'),
(735, 129, '_menu_item_object', 'product_cat'),
(736, 129, '_menu_item_target', ''),
(737, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(738, 129, '_menu_item_xfn', ''),
(739, 129, '_menu_item_url', ''),
(741, 130, '_menu_item_type', 'taxonomy'),
(742, 130, '_menu_item_menu_item_parent', '122'),
(743, 130, '_menu_item_object_id', '37'),
(744, 130, '_menu_item_object', 'product_cat'),
(745, 130, '_menu_item_target', ''),
(746, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(747, 130, '_menu_item_xfn', ''),
(748, 130, '_menu_item_url', ''),
(750, 131, '_menu_item_type', 'taxonomy'),
(751, 131, '_menu_item_menu_item_parent', '130'),
(752, 131, '_menu_item_object_id', '38'),
(753, 131, '_menu_item_object', 'product_cat'),
(754, 131, '_menu_item_target', ''),
(755, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(756, 131, '_menu_item_xfn', ''),
(757, 131, '_menu_item_url', ''),
(759, 132, '_menu_item_type', 'taxonomy'),
(760, 132, '_menu_item_menu_item_parent', '0'),
(761, 132, '_menu_item_object_id', '39'),
(762, 132, '_menu_item_object', 'product_cat'),
(763, 132, '_menu_item_target', ''),
(764, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(765, 132, '_menu_item_xfn', ''),
(766, 132, '_menu_item_url', ''),
(768, 133, '_menu_item_type', 'taxonomy'),
(769, 133, '_menu_item_menu_item_parent', '132'),
(770, 133, '_menu_item_object_id', '40'),
(771, 133, '_menu_item_object', 'product_cat'),
(772, 133, '_menu_item_target', ''),
(773, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(774, 133, '_menu_item_xfn', ''),
(775, 133, '_menu_item_url', ''),
(777, 134, '_menu_item_type', 'taxonomy'),
(778, 134, '_menu_item_menu_item_parent', '133'),
(779, 134, '_menu_item_object_id', '45'),
(780, 134, '_menu_item_object', 'product_cat'),
(781, 134, '_menu_item_target', ''),
(782, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(783, 134, '_menu_item_xfn', ''),
(784, 134, '_menu_item_url', ''),
(786, 135, '_menu_item_type', 'taxonomy'),
(787, 135, '_menu_item_menu_item_parent', '133'),
(788, 135, '_menu_item_object_id', '46'),
(789, 135, '_menu_item_object', 'product_cat'),
(790, 135, '_menu_item_target', ''),
(791, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(792, 135, '_menu_item_xfn', ''),
(793, 135, '_menu_item_url', ''),
(795, 136, '_menu_item_type', 'taxonomy'),
(796, 136, '_menu_item_menu_item_parent', '133'),
(797, 136, '_menu_item_object_id', '44'),
(798, 136, '_menu_item_object', 'product_cat'),
(799, 136, '_menu_item_target', ''),
(800, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(801, 136, '_menu_item_xfn', ''),
(802, 136, '_menu_item_url', ''),
(804, 137, '_menu_item_type', 'taxonomy'),
(805, 137, '_menu_item_menu_item_parent', '133'),
(806, 137, '_menu_item_object_id', '42'),
(807, 137, '_menu_item_object', 'product_cat'),
(808, 137, '_menu_item_target', ''),
(809, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(810, 137, '_menu_item_xfn', ''),
(811, 137, '_menu_item_url', ''),
(813, 138, '_menu_item_type', 'taxonomy'),
(814, 138, '_menu_item_menu_item_parent', '133'),
(815, 138, '_menu_item_object_id', '43'),
(816, 138, '_menu_item_object', 'product_cat'),
(817, 138, '_menu_item_target', ''),
(818, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(819, 138, '_menu_item_xfn', ''),
(820, 138, '_menu_item_url', ''),
(840, 141, '_menu_item_type', 'taxonomy'),
(841, 141, '_menu_item_menu_item_parent', '0'),
(842, 141, '_menu_item_object_id', '18'),
(843, 141, '_menu_item_object', 'product_cat'),
(844, 141, '_menu_item_target', ''),
(845, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(846, 141, '_menu_item_xfn', ''),
(847, 141, '_menu_item_url', ''),
(849, 142, '_menu_item_type', 'taxonomy'),
(850, 142, '_menu_item_menu_item_parent', '141'),
(851, 142, '_menu_item_object_id', '48'),
(852, 142, '_menu_item_object', 'product_cat'),
(853, 142, '_menu_item_target', ''),
(854, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(855, 142, '_menu_item_xfn', ''),
(856, 142, '_menu_item_url', ''),
(858, 143, '_menu_item_type', 'taxonomy'),
(859, 143, '_menu_item_menu_item_parent', '142'),
(860, 143, '_menu_item_object_id', '53'),
(861, 143, '_menu_item_object', 'product_cat'),
(862, 143, '_menu_item_target', ''),
(863, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(864, 143, '_menu_item_xfn', ''),
(865, 143, '_menu_item_url', ''),
(867, 144, '_menu_item_type', 'taxonomy'),
(868, 144, '_menu_item_menu_item_parent', '142'),
(869, 144, '_menu_item_object_id', '54'),
(870, 144, '_menu_item_object', 'product_cat'),
(871, 144, '_menu_item_target', ''),
(872, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(873, 144, '_menu_item_xfn', ''),
(874, 144, '_menu_item_url', ''),
(876, 145, '_menu_item_type', 'taxonomy'),
(877, 145, '_menu_item_menu_item_parent', '142'),
(878, 145, '_menu_item_object_id', '56'),
(879, 145, '_menu_item_object', 'product_cat'),
(880, 145, '_menu_item_target', ''),
(881, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(882, 145, '_menu_item_xfn', ''),
(883, 145, '_menu_item_url', ''),
(885, 146, '_menu_item_type', 'taxonomy'),
(886, 146, '_menu_item_menu_item_parent', '142'),
(887, 146, '_menu_item_object_id', '52'),
(888, 146, '_menu_item_object', 'product_cat'),
(889, 146, '_menu_item_target', ''),
(890, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(891, 146, '_menu_item_xfn', ''),
(892, 146, '_menu_item_url', ''),
(894, 147, '_menu_item_type', 'taxonomy'),
(895, 147, '_menu_item_menu_item_parent', '142'),
(896, 147, '_menu_item_object_id', '55'),
(897, 147, '_menu_item_object', 'product_cat'),
(898, 147, '_menu_item_target', ''),
(899, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(900, 147, '_menu_item_xfn', ''),
(901, 147, '_menu_item_url', ''),
(903, 148, '_menu_item_type', 'taxonomy'),
(904, 148, '_menu_item_menu_item_parent', '142'),
(905, 148, '_menu_item_object_id', '50'),
(906, 148, '_menu_item_object', 'product_cat'),
(907, 148, '_menu_item_target', ''),
(908, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(909, 148, '_menu_item_xfn', ''),
(910, 148, '_menu_item_url', ''),
(912, 149, '_menu_item_type', 'taxonomy'),
(913, 149, '_menu_item_menu_item_parent', '142'),
(914, 149, '_menu_item_object_id', '51'),
(915, 149, '_menu_item_object', 'product_cat'),
(916, 149, '_menu_item_target', ''),
(917, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(918, 149, '_menu_item_xfn', ''),
(919, 149, '_menu_item_url', ''),
(921, 150, '_menu_item_type', 'taxonomy'),
(922, 150, '_menu_item_menu_item_parent', '141'),
(923, 150, '_menu_item_object_id', '49'),
(924, 150, '_menu_item_object', 'product_cat'),
(925, 150, '_menu_item_target', ''),
(926, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(927, 150, '_menu_item_xfn', ''),
(928, 150, '_menu_item_url', ''),
(930, 151, '_menu_item_type', 'taxonomy'),
(931, 151, '_menu_item_menu_item_parent', '150'),
(932, 151, '_menu_item_object_id', '57'),
(933, 151, '_menu_item_object', 'product_cat'),
(934, 151, '_menu_item_target', ''),
(935, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(936, 151, '_menu_item_xfn', ''),
(937, 151, '_menu_item_url', ''),
(939, 152, '_menu_item_type', 'taxonomy'),
(940, 152, '_menu_item_menu_item_parent', '132'),
(941, 152, '_menu_item_object_id', '41'),
(942, 152, '_menu_item_object', 'product_cat'),
(943, 152, '_menu_item_target', ''),
(944, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(945, 152, '_menu_item_xfn', ''),
(946, 152, '_menu_item_url', ''),
(948, 153, '_menu_item_type', 'taxonomy'),
(949, 153, '_menu_item_menu_item_parent', '152'),
(950, 153, '_menu_item_object_id', '47'),
(951, 153, '_menu_item_object', 'product_cat'),
(952, 153, '_menu_item_target', ''),
(953, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(954, 153, '_menu_item_xfn', ''),
(955, 153, '_menu_item_url', ''),
(975, 155, '_menu_item_type', 'post_type'),
(976, 155, '_menu_item_menu_item_parent', '0'),
(977, 155, '_menu_item_object_id', '34'),
(978, 155, '_menu_item_object', 'page'),
(979, 155, '_menu_item_target', ''),
(980, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(981, 155, '_menu_item_xfn', ''),
(982, 155, '_menu_item_url', ''),
(984, 156, '_menu_item_type', 'post_type'),
(985, 156, '_menu_item_menu_item_parent', '0'),
(986, 156, '_menu_item_object_id', '32'),
(987, 156, '_menu_item_object', 'page'),
(988, 156, '_menu_item_target', ''),
(989, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(990, 156, '_menu_item_xfn', ''),
(991, 156, '_menu_item_url', ''),
(1005, 72, '_product_attributes', 'a:1:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1067, 49, '_edit_lock', '1512143916:1'),
(1080, 204, '_wp_attached_file', '2017/12/banner1-1350x570.jpg'),
(1081, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:570;s:4:\"file\";s:28:\"2017/12/banner1-1350x570.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"banner1-1350x570-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"banner1-1350x570-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"banner1-1350x570-768x324.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"banner1-1350x570-1024x432.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"banner1-1350x570-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"banner1-1350x570-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"banner1-1350x570-600x570.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"accesspress-prod-cat-size\";a:4:{s:4:\"file\";s:28:\"banner1-1350x570-562x492.jpg\";s:5:\"width\";i:562;s:6:\"height\";i:492;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:28:\"banner1-1350x570-380x252.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"accesspress-blog-big-thumbnail\";a:4:{s:4:\"file\";s:28:\"banner1-1350x570-760x300.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1084, 207, '_menu_item_type', 'taxonomy'),
(1085, 207, '_menu_item_menu_item_parent', '0'),
(1086, 207, '_menu_item_object_id', '64'),
(1087, 207, '_menu_item_object', 'product_cat'),
(1088, 207, '_menu_item_target', ''),
(1089, 207, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1090, 207, '_menu_item_xfn', ''),
(1091, 207, '_menu_item_url', ''),
(1093, 208, '_menu_item_type', 'taxonomy'),
(1094, 208, '_menu_item_menu_item_parent', '207'),
(1095, 208, '_menu_item_object_id', '65'),
(1096, 208, '_menu_item_object', 'product_cat'),
(1097, 208, '_menu_item_target', ''),
(1098, 208, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1099, 208, '_menu_item_xfn', ''),
(1100, 208, '_menu_item_url', ''),
(1102, 209, '_menu_item_type', 'taxonomy'),
(1103, 209, '_menu_item_menu_item_parent', '208'),
(1104, 209, '_menu_item_object_id', '72'),
(1105, 209, '_menu_item_object', 'product_cat'),
(1106, 209, '_menu_item_target', ''),
(1107, 209, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1108, 209, '_menu_item_xfn', ''),
(1109, 209, '_menu_item_url', ''),
(1111, 210, '_menu_item_type', 'taxonomy'),
(1112, 210, '_menu_item_menu_item_parent', '208'),
(1113, 210, '_menu_item_object_id', '76'),
(1114, 210, '_menu_item_object', 'product_cat'),
(1115, 210, '_menu_item_target', ''),
(1116, 210, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1117, 210, '_menu_item_xfn', ''),
(1118, 210, '_menu_item_url', ''),
(1120, 211, '_menu_item_type', 'taxonomy'),
(1121, 211, '_menu_item_menu_item_parent', '208'),
(1122, 211, '_menu_item_object_id', '73'),
(1123, 211, '_menu_item_object', 'product_cat'),
(1124, 211, '_menu_item_target', ''),
(1125, 211, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1126, 211, '_menu_item_xfn', ''),
(1127, 211, '_menu_item_url', ''),
(1129, 212, '_menu_item_type', 'taxonomy'),
(1130, 212, '_menu_item_menu_item_parent', '208'),
(1131, 212, '_menu_item_object_id', '68'),
(1132, 212, '_menu_item_object', 'product_cat'),
(1133, 212, '_menu_item_target', ''),
(1134, 212, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1135, 212, '_menu_item_xfn', ''),
(1136, 212, '_menu_item_url', ''),
(1138, 213, '_menu_item_type', 'taxonomy'),
(1139, 213, '_menu_item_menu_item_parent', '208'),
(1140, 213, '_menu_item_object_id', '69'),
(1141, 213, '_menu_item_object', 'product_cat'),
(1142, 213, '_menu_item_target', ''),
(1143, 213, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1144, 213, '_menu_item_xfn', ''),
(1145, 213, '_menu_item_url', ''),
(1147, 214, '_menu_item_type', 'taxonomy'),
(1148, 214, '_menu_item_menu_item_parent', '207'),
(1149, 214, '_menu_item_object_id', '66'),
(1150, 214, '_menu_item_object', 'product_cat'),
(1151, 214, '_menu_item_target', ''),
(1152, 214, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1153, 214, '_menu_item_xfn', ''),
(1154, 214, '_menu_item_url', ''),
(1156, 215, '_menu_item_type', 'taxonomy'),
(1157, 215, '_menu_item_menu_item_parent', '214'),
(1158, 215, '_menu_item_object_id', '71'),
(1159, 215, '_menu_item_object', 'product_cat'),
(1160, 215, '_menu_item_target', ''),
(1161, 215, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1162, 215, '_menu_item_xfn', ''),
(1163, 215, '_menu_item_url', ''),
(1165, 216, '_menu_item_type', 'taxonomy'),
(1166, 216, '_menu_item_menu_item_parent', '214'),
(1167, 216, '_menu_item_object_id', '75'),
(1168, 216, '_menu_item_object', 'product_cat'),
(1169, 216, '_menu_item_target', ''),
(1170, 216, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1171, 216, '_menu_item_xfn', ''),
(1172, 216, '_menu_item_url', ''),
(1174, 217, '_menu_item_type', 'taxonomy'),
(1175, 217, '_menu_item_menu_item_parent', '214'),
(1176, 217, '_menu_item_object_id', '74'),
(1177, 217, '_menu_item_object', 'product_cat'),
(1178, 217, '_menu_item_target', ''),
(1179, 217, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1180, 217, '_menu_item_xfn', ''),
(1181, 217, '_menu_item_url', ''),
(1183, 218, '_menu_item_type', 'taxonomy'),
(1184, 218, '_menu_item_menu_item_parent', '214'),
(1185, 218, '_menu_item_object_id', '67'),
(1186, 218, '_menu_item_object', 'product_cat'),
(1187, 218, '_menu_item_target', ''),
(1188, 218, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1189, 218, '_menu_item_xfn', ''),
(1190, 218, '_menu_item_url', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1192, 219, '_menu_item_type', 'taxonomy'),
(1193, 219, '_menu_item_menu_item_parent', '214'),
(1194, 219, '_menu_item_object_id', '70'),
(1195, 219, '_menu_item_object', 'product_cat'),
(1196, 219, '_menu_item_target', ''),
(1197, 219, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1198, 219, '_menu_item_xfn', ''),
(1199, 219, '_menu_item_url', ''),
(1201, 220, '_sku', ''),
(1202, 220, '_regular_price', '1500'),
(1203, 220, '_sale_price', '900'),
(1204, 220, '_sale_price_dates_from', ''),
(1205, 220, '_sale_price_dates_to', ''),
(1206, 220, 'total_sales', '0'),
(1207, 220, '_tax_status', 'taxable'),
(1208, 220, '_tax_class', ''),
(1209, 220, '_manage_stock', 'no'),
(1210, 220, '_backorders', 'no'),
(1211, 220, '_sold_individually', 'no'),
(1212, 220, '_weight', ''),
(1213, 220, '_length', ''),
(1214, 220, '_width', ''),
(1215, 220, '_height', ''),
(1216, 220, '_upsell_ids', 'a:0:{}'),
(1217, 220, '_crosssell_ids', 'a:0:{}'),
(1218, 220, '_purchase_note', ''),
(1219, 220, '_default_attributes', 'a:0:{}'),
(1220, 220, '_virtual', 'no'),
(1221, 220, '_downloadable', 'no'),
(1222, 220, '_product_image_gallery', '53,52'),
(1223, 220, '_download_limit', '-1'),
(1224, 220, '_download_expiry', '-1'),
(1225, 220, '_thumbnail_id', '54'),
(1226, 220, '_stock', NULL),
(1227, 220, '_stock_status', 'instock'),
(1228, 220, '_wc_average_rating', '0'),
(1229, 220, '_wc_rating_count', 'a:0:{}'),
(1230, 220, '_wc_review_count', '0'),
(1231, 220, '_downloadable_files', 'a:0:{}'),
(1232, 220, '_product_attributes', 'a:1:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1233, 220, '_product_version', '3.2.4'),
(1234, 220, '_price', '900'),
(1235, 220, '_edit_lock', '1513446940:1'),
(1236, 220, '_edit_last', '1'),
(1237, 220, '_wp_old_slug', 'tshirt4'),
(1238, 221, '_sku', ''),
(1239, 221, '_regular_price', '1500'),
(1240, 221, '_sale_price', '900'),
(1241, 221, '_sale_price_dates_from', ''),
(1242, 221, '_sale_price_dates_to', ''),
(1243, 221, 'total_sales', '0'),
(1244, 221, '_tax_status', 'taxable'),
(1245, 221, '_tax_class', ''),
(1246, 221, '_manage_stock', 'no'),
(1247, 221, '_backorders', 'no'),
(1248, 221, '_sold_individually', 'no'),
(1249, 221, '_weight', ''),
(1250, 221, '_length', ''),
(1251, 221, '_width', ''),
(1252, 221, '_height', ''),
(1253, 221, '_upsell_ids', 'a:0:{}'),
(1254, 221, '_crosssell_ids', 'a:0:{}'),
(1255, 221, '_purchase_note', ''),
(1256, 221, '_default_attributes', 'a:0:{}'),
(1257, 221, '_virtual', 'no'),
(1258, 221, '_downloadable', 'no'),
(1259, 221, '_product_image_gallery', '46,46'),
(1260, 221, '_download_limit', '-1'),
(1261, 221, '_download_expiry', '-1'),
(1262, 221, '_thumbnail_id', '46'),
(1263, 221, '_stock', NULL),
(1264, 221, '_stock_status', 'instock'),
(1265, 221, '_wc_average_rating', '0'),
(1266, 221, '_wc_rating_count', 'a:0:{}'),
(1267, 221, '_wc_review_count', '0'),
(1268, 221, '_downloadable_files', 'a:0:{}'),
(1269, 221, '_product_attributes', 'a:1:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1270, 221, '_product_version', '3.2.4'),
(1271, 221, '_price', '900'),
(1272, 221, '_edit_lock', '1513447822:1'),
(1273, 221, '_edit_last', '1'),
(1274, 222, '_sku', ''),
(1275, 222, '_regular_price', '700'),
(1276, 222, '_sale_price', '300'),
(1277, 222, '_sale_price_dates_from', ''),
(1278, 222, '_sale_price_dates_to', ''),
(1279, 222, 'total_sales', '0'),
(1280, 222, '_tax_status', 'taxable'),
(1281, 222, '_tax_class', ''),
(1282, 222, '_manage_stock', 'no'),
(1283, 222, '_backorders', 'no'),
(1284, 222, '_sold_individually', 'no'),
(1285, 222, '_weight', ''),
(1286, 222, '_length', ''),
(1287, 222, '_width', ''),
(1288, 222, '_height', ''),
(1289, 222, '_upsell_ids', 'a:0:{}'),
(1290, 222, '_crosssell_ids', 'a:0:{}'),
(1291, 222, '_purchase_note', ''),
(1292, 222, '_default_attributes', 'a:0:{}'),
(1293, 222, '_virtual', 'no'),
(1294, 222, '_downloadable', 'no'),
(1295, 222, '_product_image_gallery', '47'),
(1296, 222, '_download_limit', '-1'),
(1297, 222, '_download_expiry', '-1'),
(1298, 222, '_thumbnail_id', '47'),
(1299, 222, '_stock', NULL),
(1300, 222, '_stock_status', 'instock'),
(1301, 222, '_wc_average_rating', '0'),
(1302, 222, '_wc_rating_count', 'a:0:{}'),
(1303, 222, '_wc_review_count', '0'),
(1304, 222, '_downloadable_files', 'a:0:{}'),
(1305, 222, '_product_attributes', 'a:1:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1306, 222, '_product_version', '3.2.4'),
(1307, 222, '_price', '300'),
(1308, 222, '_edit_lock', '1513446435:1'),
(1309, 222, '_edit_last', '1'),
(1310, 65, '_product_attributes', 'a:1:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1311, 223, '_sku', ''),
(1312, 223, '_regular_price', '500'),
(1313, 223, '_sale_price', '400'),
(1314, 223, '_sale_price_dates_from', ''),
(1315, 223, '_sale_price_dates_to', ''),
(1316, 223, 'total_sales', '0'),
(1317, 223, '_tax_status', 'taxable'),
(1318, 223, '_tax_class', ''),
(1319, 223, '_manage_stock', 'no'),
(1320, 223, '_backorders', 'no'),
(1321, 223, '_sold_individually', 'no'),
(1322, 223, '_weight', ''),
(1323, 223, '_length', ''),
(1324, 223, '_width', ''),
(1325, 223, '_height', ''),
(1326, 223, '_upsell_ids', 'a:0:{}'),
(1327, 223, '_crosssell_ids', 'a:0:{}'),
(1328, 223, '_purchase_note', ''),
(1329, 223, '_default_attributes', 'a:0:{}'),
(1330, 223, '_virtual', 'no'),
(1331, 223, '_downloadable', 'no'),
(1332, 223, '_product_image_gallery', '48'),
(1333, 223, '_download_limit', '-1'),
(1334, 223, '_download_expiry', '-1'),
(1335, 223, '_thumbnail_id', '48'),
(1336, 223, '_stock', NULL),
(1337, 223, '_stock_status', 'instock'),
(1338, 223, '_wc_average_rating', '0'),
(1339, 223, '_wc_rating_count', 'a:0:{}'),
(1340, 223, '_wc_review_count', '0'),
(1341, 223, '_downloadable_files', 'a:0:{}'),
(1342, 223, '_product_attributes', 'a:1:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1343, 223, '_product_version', '3.2.4'),
(1344, 223, '_price', '400'),
(1345, 223, '_edit_lock', '1513446675:1'),
(1346, 223, '_edit_last', '1'),
(1347, 66, '_product_attributes', 'a:1:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1348, 224, '_sku', ''),
(1349, 224, '_regular_price', '800'),
(1350, 224, '_sale_price', '700'),
(1351, 224, '_sale_price_dates_from', ''),
(1352, 224, '_sale_price_dates_to', ''),
(1353, 224, 'total_sales', '0'),
(1354, 224, '_tax_status', 'taxable'),
(1355, 224, '_tax_class', ''),
(1356, 224, '_manage_stock', 'no'),
(1357, 224, '_backorders', 'no'),
(1358, 224, '_sold_individually', 'no'),
(1359, 224, '_weight', ''),
(1360, 224, '_length', ''),
(1361, 224, '_width', ''),
(1362, 224, '_height', ''),
(1363, 224, '_upsell_ids', 'a:0:{}'),
(1364, 224, '_crosssell_ids', 'a:0:{}'),
(1365, 224, '_purchase_note', ''),
(1366, 224, '_default_attributes', 'a:0:{}'),
(1367, 224, '_virtual', 'no'),
(1368, 224, '_downloadable', 'no'),
(1369, 224, '_product_image_gallery', '49'),
(1370, 224, '_download_limit', '-1'),
(1371, 224, '_download_expiry', '-1'),
(1372, 224, '_thumbnail_id', '49'),
(1373, 224, '_stock', NULL),
(1374, 224, '_stock_status', 'instock'),
(1375, 224, '_wc_average_rating', '0'),
(1376, 224, '_wc_rating_count', 'a:0:{}'),
(1377, 224, '_wc_review_count', '0'),
(1378, 224, '_downloadable_files', 'a:0:{}'),
(1379, 224, '_product_attributes', 'a:1:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1380, 224, '_product_version', '3.2.4'),
(1381, 224, '_price', '700'),
(1382, 224, '_edit_lock', '1513449327:1'),
(1383, 224, '_edit_last', '1'),
(1384, 225, '_sku', ''),
(1385, 225, '_regular_price', '1500'),
(1386, 225, '_sale_price', '900'),
(1387, 225, '_sale_price_dates_from', ''),
(1388, 225, '_sale_price_dates_to', ''),
(1389, 225, 'total_sales', '0'),
(1390, 225, '_tax_status', 'taxable'),
(1391, 225, '_tax_class', ''),
(1392, 225, '_manage_stock', 'no'),
(1393, 225, '_backorders', 'no'),
(1394, 225, '_sold_individually', 'no'),
(1395, 225, '_weight', ''),
(1396, 225, '_length', ''),
(1397, 225, '_width', ''),
(1398, 225, '_height', ''),
(1399, 225, '_upsell_ids', 'a:0:{}'),
(1400, 225, '_crosssell_ids', 'a:0:{}'),
(1401, 225, '_purchase_note', ''),
(1402, 225, '_default_attributes', 'a:0:{}'),
(1403, 225, '_virtual', 'no'),
(1404, 225, '_downloadable', 'no'),
(1405, 225, '_product_image_gallery', '51,51,51'),
(1406, 225, '_download_limit', '-1'),
(1407, 225, '_download_expiry', '-1'),
(1408, 225, '_thumbnail_id', '51'),
(1409, 225, '_stock', NULL),
(1410, 225, '_stock_status', 'instock'),
(1411, 225, '_wc_average_rating', '0'),
(1412, 225, '_wc_rating_count', 'a:0:{}'),
(1413, 225, '_wc_review_count', '0'),
(1414, 225, '_downloadable_files', 'a:0:{}'),
(1415, 225, '_product_attributes', 'a:1:{s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1416, 225, '_product_version', '3.2.4'),
(1417, 225, '_price', '900'),
(1418, 225, '_edit_lock', '1513447290:1'),
(1419, 225, '_edit_last', '1'),
(1425, 10, '_edit_lock', '1513449139:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-22 05:30:11', '2017-11-22 05:30:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-11-22 05:30:11', '2017-11-22 05:30:11', '', 0, 'http://localhost/newzigma/?p=1', 0, 'post', '', 1),
(8, 1, '2017-11-22 06:06:37', '2017-11-22 06:06:37', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 0, 'http://localhost/newzigma/?p=8', 1, 'nav_menu_item', '', 0),
(10, 1, '2017-11-22 06:09:43', '2017-11-22 06:09:43', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-11-22 06:09:43', '2017-11-22 06:09:43', '', 0, 'http://localhost/newzigma/shop/', 0, 'page', '', 0),
(11, 1, '2017-11-22 06:09:43', '2017-11-22 06:09:43', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-11-22 06:09:43', '2017-11-22 06:09:43', '', 0, 'http://localhost/newzigma/cart/', 0, 'page', '', 0),
(12, 1, '2017-11-22 06:09:43', '2017-11-22 06:09:43', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-11-22 06:09:43', '2017-11-22 06:09:43', '', 0, 'http://localhost/newzigma/checkout/', 0, 'page', '', 0),
(13, 1, '2017-11-22 06:09:43', '2017-11-22 06:09:43', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-11-22 06:09:43', '2017-11-22 06:09:43', '', 0, 'http://localhost/newzigma/my-account/', 0, 'page', '', 0),
(14, 1, '2017-11-22 06:35:52', '2017-11-22 06:35:52', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-11-22 06:35:52', '2017-11-22 06:35:52', '', 0, 'http://localhost/newzigma/?page_id=14', 0, 'page', '', 0),
(15, 1, '2017-11-22 06:35:52', '2017-11-22 06:35:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-11-22 06:35:52', '2017-11-22 06:35:52', '', 14, 'http://localhost/newzigma/2017/11/22/14-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-11-22 06:40:43', '2017-11-22 06:40:43', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-11-22 06:40:43', '2017-11-22 06:40:43', '', 0, 'http://localhost/newzigma/?page_id=32', 0, 'page', '', 0),
(33, 1, '2017-11-22 06:40:43', '2017-11-22 06:40:43', '', 'About', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-22 06:40:43', '2017-11-22 06:40:43', '', 32, 'http://localhost/newzigma/2017/11/22/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-11-22 06:40:56', '2017-11-22 06:40:56', '', 'contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-11-22 06:40:56', '2017-11-22 06:40:56', '', 0, 'http://localhost/newzigma/?page_id=34', 0, 'page', '', 0),
(35, 1, '2017-11-22 06:40:56', '2017-11-22 06:40:56', '', 'contact us', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2017-11-22 06:40:56', '2017-11-22 06:40:56', '', 34, 'http://localhost/newzigma/2017/11/22/34-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-11-22 06:55:13', '2017-11-22 06:55:13', '<blockquote>\r\n<strong>\r\nHuge Reductions - Up to 50% Off Summer Clothing.The deal is limited , So hurry and get your favorite dress.\r\n</strong>\r\n</blockquote>\r\n\r\n', 'Big Summer Sale has started Now', '', 'publish', 'open', 'open', '', 'summer-sale', '', '', '2017-12-01 16:21:59', '2017-12-01 16:21:59', '', 0, 'http://localhost/newzigma/?p=44', 0, 'post', '', 0),
(45, 1, '2017-11-22 06:52:54', '2017-11-22 06:52:54', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2017-11-22 06:52:54', '2017-11-22 06:52:54', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/2.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2017-11-22 06:52:56', '2017-11-22 06:52:56', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2017-11-22 06:52:56', '2017-11-22 06:52:56', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/3.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2017-11-22 06:53:02', '2017-11-22 06:53:02', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2017-11-22 06:53:02', '2017-11-22 06:53:02', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/2-1.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2017-11-22 06:53:04', '2017-11-22 06:53:04', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2017-11-22 06:53:04', '2017-11-22 06:53:04', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/1.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2017-11-22 06:53:05', '2017-11-22 06:53:05', '', 'women1', '', 'inherit', 'open', 'closed', '', 'women1', '', '', '2017-11-22 06:53:05', '2017-11-22 06:53:05', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/women1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2017-11-22 06:53:08', '2017-11-22 06:53:08', '', 'logo-9', '', 'inherit', 'open', 'closed', '', 'logo-9', '', '', '2017-11-22 06:53:08', '2017-11-22 06:53:08', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/logo-9.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2017-11-22 06:53:45', '2017-11-22 06:53:45', '', 'product-toys-1', '', 'inherit', 'open', 'closed', '', 'product-toys-1', '', '', '2017-11-22 06:53:45', '2017-11-22 06:53:45', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/product-toys-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2017-11-22 06:53:48', '2017-11-22 06:53:48', '', 'product-toys-2', '', 'inherit', 'open', 'closed', '', 'product-toys-2', '', '', '2017-11-22 06:53:48', '2017-11-22 06:53:48', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/product-toys-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2017-11-22 06:53:50', '2017-11-22 06:53:50', '', 'product-toys-3', '', 'inherit', 'open', 'closed', '', 'product-toys-3', '', '', '2017-11-22 06:53:50', '2017-11-22 06:53:50', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/product-toys-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2017-11-22 06:53:52', '2017-11-22 06:53:52', '', 'product-toys-4', '', 'inherit', 'open', 'closed', '', 'product-toys-4', '', '', '2017-11-22 06:53:52', '2017-11-22 06:53:52', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/product-toys-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2017-11-22 06:54:46', '2017-11-22 06:54:46', '', 'fullwidth-1', '', 'inherit', 'open', 'closed', '', 'fullwidth-1', '', '', '2017-11-22 06:54:46', '2017-11-22 06:54:46', '', 44, 'http://localhost/newzigma/wp-content/uploads/2017/11/fullwidth-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2017-11-22 06:55:13', '2017-11-22 06:55:13', '10% Disscount', 'Summer Sale', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-11-22 06:55:13', '2017-11-22 06:55:13', '', 44, 'http://localhost/newzigma/2017/11/22/44-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-11-22 06:55:54', '2017-11-22 06:55:54', '<blockquote>\r\n<strong>\r\nHuge Reductions - Up to 80% Off Winter Clothing.\r\n</strong>\r\n</blockquote>\r\n', 'Winter Sale is Coming Soon', '', 'publish', 'open', 'open', '', 'winter-sale', '', '', '2017-12-01 16:23:38', '2017-12-01 16:23:38', '', 0, 'http://localhost/newzigma/?p=58', 0, 'post', '', 0),
(59, 1, '2017-11-22 06:55:54', '2017-11-22 06:55:54', '50% Dissount', 'Winter Sale', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-11-22 06:55:54', '2017-11-22 06:55:54', '', 58, 'http://localhost/newzigma/2017/11/22/58-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-11-22 07:07:12', '2017-11-22 07:07:12', 'Tshirt1', 'Tshirt1', 'Tshirt1 sdesc', 'publish', 'open', 'closed', '', 'tshirt1', '', '', '2017-12-16 17:52:09', '2017-12-16 17:52:09', '', 0, 'http://localhost/newzigma/?post_type=product&#038;p=65', 0, 'product', '', 0),
(66, 1, '2017-11-22 07:11:03', '2017-11-22 07:11:03', 'tshirt2', 'tshirt2', 'tshirt2 desc ', 'publish', 'open', 'closed', '', 'tshirt2', '', '', '2017-12-16 17:54:53', '2017-12-16 17:54:53', '', 0, 'http://localhost/newzigma/?post_type=product&#038;p=66', 0, 'product', '', 1),
(69, 1, '2017-11-22 07:17:48', '2017-11-22 07:17:48', '', 'guess-attic-837156_1280-562x492', '', 'inherit', 'open', 'closed', '', 'guess-attic-837156_1280-562x492', '', '', '2017-11-22 07:17:48', '2017-11-22 07:17:48', '', 0, 'http://localhost/newzigma/wp-content/uploads/2017/11/guess-attic-837156_1280-562x492.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2017-11-22 07:17:55', '2017-11-22 07:17:55', '', 'bow-tie-businessman-fashion-man-562x492', '', 'inherit', 'open', 'closed', '', 'bow-tie-businessman-fashion-man-562x492', '', '', '2017-11-22 07:17:55', '2017-11-22 07:17:55', '', 0, 'http://localhost/newzigma/wp-content/uploads/2017/11/bow-tie-businessman-fashion-man-562x492.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2017-11-22 07:20:24', '2017-11-22 07:20:24', 'tshirt3', 'tshirt3', 'tshirt3', 'publish', 'open', 'closed', '', 'tshirt3', '', '', '2017-12-16 17:46:33', '2017-12-16 17:46:33', '', 0, 'http://localhost/newzigma/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2017-11-22 07:21:21', '2017-11-22 07:21:21', 'tshirt4', 'tshirt4', 'tshirt4', 'publish', 'open', 'closed', '', 'tshirt4', '', '', '2017-12-16 17:47:59', '2017-12-16 17:47:59', '', 0, 'http://localhost/newzigma/?post_type=product&#038;p=72', 0, 'product', '', 0),
(82, 1, '2017-11-22 07:50:23', '2017-11-22 07:50:23', '', 'cropped-logo-9.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-9-png', '', '', '2017-11-22 07:50:23', '2017-11-22 07:50:23', '', 0, 'http://localhost/newzigma/wp-content/uploads/2017/11/cropped-logo-9.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2017-11-25 14:40:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/newzigma/?p=99', 1, 'nav_menu_item', '', 0),
(100, 1, '2017-11-25 14:40:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:03', '0000-00-00 00:00:00', '', 21, 'http://localhost/newzigma/?p=100', 1, 'nav_menu_item', '', 0),
(101, 1, '2017-11-25 14:40:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:03', '0000-00-00 00:00:00', '', 19, 'http://localhost/newzigma/?p=101', 1, 'nav_menu_item', '', 0),
(102, 1, '2017-11-25 14:40:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:04', '0000-00-00 00:00:00', '', 19, 'http://localhost/newzigma/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2017-11-25 14:40:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:04', '0000-00-00 00:00:00', '', 19, 'http://localhost/newzigma/?p=103', 1, 'nav_menu_item', '', 0),
(104, 1, '2017-11-25 14:40:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:05', '0000-00-00 00:00:00', '', 19, 'http://localhost/newzigma/?p=104', 1, 'nav_menu_item', '', 0),
(105, 1, '2017-11-25 14:40:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:05', '0000-00-00 00:00:00', '', 19, 'http://localhost/newzigma/?p=105', 1, 'nav_menu_item', '', 0),
(106, 1, '2017-11-25 14:40:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:06', '0000-00-00 00:00:00', '', 21, 'http://localhost/newzigma/?p=106', 1, 'nav_menu_item', '', 0),
(107, 1, '2017-11-25 14:40:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:07', '0000-00-00 00:00:00', '', 20, 'http://localhost/newzigma/?p=107', 1, 'nav_menu_item', '', 0),
(108, 1, '2017-11-25 14:40:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:07', '0000-00-00 00:00:00', '', 20, 'http://localhost/newzigma/?p=108', 1, 'nav_menu_item', '', 0),
(110, 1, '2017-11-25 14:40:08', '0000-00-00 00:00:00', '<p>Women&#8217;s Clothing</p>\n', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 14:40:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/newzigma/?p=110', 1, 'nav_menu_item', '', 0),
(111, 1, '2017-11-25 14:44:47', '2017-11-25 14:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 0, 'http://localhost/newzigma/?p=111', 2, 'nav_menu_item', '', 0),
(112, 1, '2017-11-25 14:46:01', '2017-11-25 14:46:01', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 21, 'http://localhost/newzigma/?p=112', 6, 'nav_menu_item', '', 0),
(113, 1, '2017-11-25 14:46:04', '2017-11-25 14:46:04', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 19, 'http://localhost/newzigma/?p=113', 10, 'nav_menu_item', '', 0),
(114, 1, '2017-11-25 14:46:04', '2017-11-25 14:46:04', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 19, 'http://localhost/newzigma/?p=114', 11, 'nav_menu_item', '', 0),
(115, 1, '2017-11-25 14:46:04', '2017-11-25 14:46:04', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 19, 'http://localhost/newzigma/?p=115', 9, 'nav_menu_item', '', 0),
(116, 1, '2017-11-25 14:46:03', '2017-11-25 14:46:03', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 19, 'http://localhost/newzigma/?p=116', 8, 'nav_menu_item', '', 0),
(117, 1, '2017-11-25 14:46:03', '2017-11-25 14:46:03', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 19, 'http://localhost/newzigma/?p=117', 7, 'nav_menu_item', '', 0),
(118, 1, '2017-11-25 14:47:11', '2017-11-25 14:47:11', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 21, 'http://localhost/newzigma/?p=118', 3, 'nav_menu_item', '', 0),
(119, 1, '2017-11-25 14:47:12', '2017-11-25 14:47:12', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 20, 'http://localhost/newzigma/?p=119', 5, 'nav_menu_item', '', 0),
(120, 1, '2017-11-25 14:47:12', '2017-11-25 14:47:12', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 20, 'http://localhost/newzigma/?p=120', 4, 'nav_menu_item', '', 0),
(122, 1, '2017-11-25 16:33:18', '2017-11-25 16:33:18', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 0, 'http://localhost/newzigma/?p=122', 12, 'nav_menu_item', '', 0),
(123, 1, '2017-11-25 16:33:19', '2017-11-25 16:33:19', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 29, 'http://localhost/newzigma/?p=123', 15, 'nav_menu_item', '', 0),
(124, 1, '2017-11-25 16:33:21', '2017-11-25 16:33:21', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 30, 'http://localhost/newzigma/?p=124', 21, 'nav_menu_item', '', 0),
(125, 1, '2017-11-25 16:33:21', '2017-11-25 16:33:21', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 30, 'http://localhost/newzigma/?p=125', 20, 'nav_menu_item', '', 0),
(126, 1, '2017-11-25 16:33:21', '2017-11-25 16:33:21', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 30, 'http://localhost/newzigma/?p=126', 19, 'nav_menu_item', '', 0),
(127, 1, '2017-11-25 16:33:20', '2017-11-25 16:33:20', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 30, 'http://localhost/newzigma/?p=127', 18, 'nav_menu_item', '', 0),
(128, 1, '2017-11-25 16:33:20', '2017-11-25 16:33:20', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 30, 'http://localhost/newzigma/?p=128', 17, 'nav_menu_item', '', 0),
(129, 1, '2017-11-25 16:33:20', '2017-11-25 16:33:20', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 30, 'http://localhost/newzigma/?p=129', 16, 'nav_menu_item', '', 0),
(130, 1, '2017-11-25 16:33:19', '2017-11-25 16:33:19', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 29, 'http://localhost/newzigma/?p=130', 13, 'nav_menu_item', '', 0),
(131, 1, '2017-11-25 16:33:19', '2017-11-25 16:33:19', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 37, 'http://localhost/newzigma/?p=131', 14, 'nav_menu_item', '', 0),
(132, 1, '2017-11-25 17:02:54', '2017-11-25 17:02:54', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 0, 'http://localhost/newzigma/?p=132', 22, 'nav_menu_item', '', 0),
(133, 1, '2017-11-25 17:02:55', '2017-11-25 17:02:55', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 39, 'http://localhost/newzigma/?p=133', 25, 'nav_menu_item', '', 0),
(134, 1, '2017-11-25 17:02:56', '2017-11-25 17:02:56', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 40, 'http://localhost/newzigma/?p=134', 30, 'nav_menu_item', '', 0),
(135, 1, '2017-11-25 17:02:56', '2017-11-25 17:02:56', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 40, 'http://localhost/newzigma/?p=135', 28, 'nav_menu_item', '', 0),
(136, 1, '2017-11-25 17:02:56', '2017-11-25 17:02:56', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 40, 'http://localhost/newzigma/?p=136', 29, 'nav_menu_item', '', 0),
(137, 1, '2017-11-25 17:02:55', '2017-11-25 17:02:55', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 40, 'http://localhost/newzigma/?p=137', 27, 'nav_menu_item', '', 0),
(138, 1, '2017-11-25 17:02:55', '2017-11-25 17:02:55', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 40, 'http://localhost/newzigma/?p=138', 26, 'nav_menu_item', '', 0),
(141, 1, '2017-11-25 17:05:47', '2017-11-25 17:05:47', 'Women’s Clothing', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 0, 'http://localhost/newzigma/?p=141', 31, 'nav_menu_item', '', 0),
(142, 1, '2017-11-25 17:05:48', '2017-11-25 17:05:48', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 18, 'http://localhost/newzigma/?p=142', 34, 'nav_menu_item', '', 0),
(143, 1, '2017-11-25 17:05:50', '2017-11-25 17:05:50', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 48, 'http://localhost/newzigma/?p=143', 41, 'nav_menu_item', '', 0),
(144, 1, '2017-11-25 17:05:50', '2017-11-25 17:05:50', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 48, 'http://localhost/newzigma/?p=144', 40, 'nav_menu_item', '', 0),
(145, 1, '2017-11-25 17:05:49', '2017-11-25 17:05:49', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 48, 'http://localhost/newzigma/?p=145', 39, 'nav_menu_item', '', 0),
(146, 1, '2017-11-25 17:05:49', '2017-11-25 17:05:49', ' ', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 48, 'http://localhost/newzigma/?p=146', 38, 'nav_menu_item', '', 0),
(147, 1, '2017-11-25 17:05:49', '2017-11-25 17:05:49', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 48, 'http://localhost/newzigma/?p=147', 37, 'nav_menu_item', '', 0),
(148, 1, '2017-11-25 17:05:49', '2017-11-25 17:05:49', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 48, 'http://localhost/newzigma/?p=148', 36, 'nav_menu_item', '', 0),
(149, 1, '2017-11-25 17:05:48', '2017-11-25 17:05:48', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 48, 'http://localhost/newzigma/?p=149', 35, 'nav_menu_item', '', 0),
(150, 1, '2017-11-25 17:05:47', '2017-11-25 17:05:47', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 18, 'http://localhost/newzigma/?p=150', 32, 'nav_menu_item', '', 0),
(151, 1, '2017-11-25 17:05:47', '2017-11-25 17:05:47', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 49, 'http://localhost/newzigma/?p=151', 33, 'nav_menu_item', '', 0),
(152, 1, '2017-11-25 17:05:46', '2017-11-25 17:05:46', ' ', '', '', 'publish', 'closed', 'closed', '', '152', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 39, 'http://localhost/newzigma/?p=152', 23, 'nav_menu_item', '', 0),
(153, 1, '2017-11-25 17:05:46', '2017-11-25 17:05:46', ' ', '', '', 'publish', 'closed', 'closed', '', '153', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 41, 'http://localhost/newzigma/?p=153', 24, 'nav_menu_item', '', 0),
(155, 1, '2017-11-25 18:15:20', '2017-11-25 18:15:20', ' ', '', '', 'publish', 'closed', 'closed', '', '155', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 0, 'http://localhost/newzigma/?p=155', 55, 'nav_menu_item', '', 0),
(156, 1, '2017-11-25 18:15:20', '2017-11-25 18:15:20', ' ', '', '', 'publish', 'closed', 'closed', '', '156', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 0, 'http://localhost/newzigma/?p=156', 56, 'nav_menu_item', '', 0),
(172, 1, '2017-11-25 20:11:17', '2017-11-25 20:11:17', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #fff;\n}\n#site-navigation .menu>li li a {\n	color:#fff;\n}\n.main-navigation ul ul li a \n	{\n		background: #63c6ae;\n		 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\n}\n.main-navigation ul ul li:hover > a {\n    background: #49ad95\n}\n.main-navigation ul.menu > li > ul::after {\n	border-bottom-color: #49ad95;\n}\n.main-navigation ul ul li.menu-item-has-children:hover::after {\n	border-left-color: #49ad95;\n}\n.main-navigation ul.menu > li:hover::after {\n    border-top-color: #49ad95;\n}', 'accesspress-store', '', 'publish', 'closed', 'closed', '', 'accesspress-store', '', '', '2017-12-23 09:27:08', '2017-12-23 09:27:08', '', 0, 'http://localhost/newzigma/2017/11/25/accesspress-store/', 0, 'custom_css', '', 0),
(173, 1, '2017-11-25 20:11:17', '2017-11-25 20:11:17', 'body{\ncolor:white !important;}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-11-25 20:11:17', '2017-11-25 20:11:17', '', 172, 'http://localhost/newzigma/2017/11/25/172-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2017-11-25 20:19:02', '2017-11-25 20:19:02', 'body{\ncolor:white !important;}\nlabel-new\n{display:none}\n', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-11-25 20:19:02', '2017-11-25 20:19:02', '', 172, 'http://localhost/newzigma/2017/11/25/172-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2017-11-25 20:19:10', '2017-11-25 20:19:10', 'body{\ncolor:white !important;}\n.label-new\n{display:none}\n', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-11-25 20:19:10', '2017-11-25 20:19:10', '', 172, 'http://localhost/newzigma/2017/11/25/172-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2017-11-25 20:25:52', '2017-11-25 20:25:52', 'h1{\ncolor: #333;}\n.label-new\n{display:none}\n', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-11-25 20:25:52', '2017-11-25 20:25:52', '', 172, 'http://localhost/newzigma/2017/11/25/172-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2017-11-25 20:27:13', '2017-11-25 20:27:13', 'h1{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-11-25 20:27:13', '2017-11-25 20:27:13', '', 172, 'http://localhost/newzigma/2017/11/25/172-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2017-11-25 20:28:11', '2017-11-25 20:28:11', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-11-25 20:28:11', '2017-11-25 20:28:11', '', 172, 'http://localhost/newzigma/2017/11/25/172-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2017-12-01 15:42:04', '2017-12-01 15:42:04', '\n\n<blockquote>\n<strong>\nHuge Reductions - Up to 50% Off Summer Clothing.The deal is limited , So hurry and get your fav\n</strong>\n</blockquote>\n\n', 'Big Summer Sale has started Now', '', 'inherit', 'closed', 'closed', '', '44-autosave-v1', '', '', '2017-12-01 15:42:04', '2017-12-01 15:42:04', '', 44, 'http://vspclothing.com/newzigma/2017/12/01/44-autosave-v1/', 0, 'revision', '', 0),
(196, 1, '2017-12-01 15:42:45', '2017-12-01 15:42:45', '\r\n\r\n<blockquote>\r\n<strong>\r\nHuge Reductions - Up to 50% Off Summer Clothing.The deal is limited , So hurry and get your favorite dress.\r\n</strong>\r\n</blockquote>\r\n\r\n', 'Big Summer Sale has started Now', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-12-01 15:42:45', '2017-12-01 15:42:45', '', 44, 'http://vspclothing.com/newzigma/2017/12/01/44-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2017-12-01 15:44:41', '2017-12-01 15:44:41', '<blockquote>\n<strong>\nHuge Reductions - Up to 80% Off Winter Clothing.The deal is limited , So hurry and get your favorite dress.\n</strong>\n</blockquote>\n', 'Winter Sale is Coming Soon', '', 'inherit', 'closed', 'closed', '', '58-autosave-v1', '', '', '2017-12-01 15:44:41', '2017-12-01 15:44:41', '', 58, 'http://vspclothing.com/newzigma/2017/12/01/58-autosave-v1/', 0, 'revision', '', 0),
(198, 1, '2017-12-01 15:44:54', '2017-12-01 15:44:54', '<blockquote>\r\n<strong>\r\nHuge Reductions - Up to 80% Off Winter Clothing.\r\n</strong>\r\n</blockquote>\r\n', 'Winter Sale is Coming Soon', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-12-01 15:44:54', '2017-12-01 15:44:54', '', 58, 'http://vspclothing.com/newzigma/2017/12/01/58-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2017-12-01 16:21:37', '2017-12-01 16:21:37', '', 'banner1-1350x570', '', 'inherit', 'open', 'closed', '', 'banner1-1350x570', '', '', '2017-12-01 16:21:37', '2017-12-01 16:21:37', '', 0, 'http://vspclothing.com/newzigma/wp-content/uploads/2017/12/banner1-1350x570.jpg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2017-12-16 17:31:14', '2017-12-16 17:31:14', ' ', '', '', 'publish', 'closed', 'closed', '', '207', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 0, 'http://localhost/newzigma/?p=207', 42, 'nav_menu_item', '', 0),
(208, 1, '2017-12-16 17:31:15', '2017-12-16 17:31:15', ' ', '', '', 'publish', 'closed', 'closed', '', '208', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 64, 'http://localhost/newzigma/?p=208', 49, 'nav_menu_item', '', 0),
(209, 1, '2017-12-16 17:31:16', '2017-12-16 17:31:16', ' ', '', '', 'publish', 'closed', 'closed', '', '209', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 65, 'http://localhost/newzigma/?p=209', 54, 'nav_menu_item', '', 0),
(210, 1, '2017-12-16 17:31:16', '2017-12-16 17:31:16', ' ', '', '', 'publish', 'closed', 'closed', '', '210', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 65, 'http://localhost/newzigma/?p=210', 53, 'nav_menu_item', '', 0),
(211, 1, '2017-12-16 17:31:16', '2017-12-16 17:31:16', ' ', '', '', 'publish', 'closed', 'closed', '', '211', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 65, 'http://localhost/newzigma/?p=211', 52, 'nav_menu_item', '', 0),
(212, 1, '2017-12-16 17:31:16', '2017-12-16 17:31:16', ' ', '', '', 'publish', 'closed', 'closed', '', '212', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 65, 'http://localhost/newzigma/?p=212', 51, 'nav_menu_item', '', 0),
(213, 1, '2017-12-16 17:31:16', '2017-12-16 17:31:16', ' ', '', '', 'publish', 'closed', 'closed', '', '213', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 65, 'http://localhost/newzigma/?p=213', 50, 'nav_menu_item', '', 0),
(214, 1, '2017-12-16 17:31:14', '2017-12-16 17:31:14', ' ', '', '', 'publish', 'closed', 'closed', '', '214', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 64, 'http://localhost/newzigma/?p=214', 43, 'nav_menu_item', '', 0),
(215, 1, '2017-12-16 17:31:15', '2017-12-16 17:31:15', ' ', '', '', 'publish', 'closed', 'closed', '', '215', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 66, 'http://localhost/newzigma/?p=215', 48, 'nav_menu_item', '', 0),
(216, 1, '2017-12-16 17:31:15', '2017-12-16 17:31:15', ' ', '', '', 'publish', 'closed', 'closed', '', '216', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 66, 'http://localhost/newzigma/?p=216', 47, 'nav_menu_item', '', 0),
(217, 1, '2017-12-16 17:31:15', '2017-12-16 17:31:15', ' ', '', '', 'publish', 'closed', 'closed', '', '217', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 66, 'http://localhost/newzigma/?p=217', 46, 'nav_menu_item', '', 0),
(218, 1, '2017-12-16 17:31:15', '2017-12-16 17:31:15', ' ', '', '', 'publish', 'closed', 'closed', '', '218', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 66, 'http://localhost/newzigma/?p=218', 45, 'nav_menu_item', '', 0),
(219, 1, '2017-12-16 17:31:14', '2017-12-16 17:31:14', ' ', '', '', 'publish', 'closed', 'closed', '', '219', '', '', '2017-12-23 10:30:50', '2017-12-23 10:30:50', '', 66, 'http://localhost/newzigma/?p=219', 44, 'nav_menu_item', '', 0),
(220, 1, '2017-12-16 17:42:33', '2017-12-16 17:42:33', 'tshirt4', 'tshirt4', 'tshirt3', 'publish', 'open', 'closed', '', 'tshirt4-2', '', '', '2017-12-16 17:57:23', '2017-12-16 17:57:23', '', 0, 'http://localhost/newzigma/?post_type=product&#038;p=220', 0, 'product', '', 0),
(221, 1, '2017-12-16 17:44:56', '2017-12-16 17:44:56', 'tshirt3', 'tshirt3 (Copy)', 'tshirt3', 'publish', 'open', 'closed', '', 'tshirt3-copy', '', '', '2017-12-16 18:05:00', '2017-12-16 18:05:00', '', 0, 'http://localhost/newzigma/?post_type=product&#038;p=221', 0, 'product', '', 0),
(222, 1, '2017-12-16 17:48:48', '2017-12-16 17:48:48', 'tshirt4', 'tshirt4 (Copy)', 'tshirt4', 'publish', 'open', 'closed', '', 'tshirt4-copy', '', '', '2017-12-16 17:48:57', '2017-12-16 17:48:57', '', 0, 'http://localhost/newzigma/?post_type=product&#038;p=222', 0, 'product', '', 0),
(223, 1, '2017-12-16 17:53:23', '2017-12-16 17:53:23', 'Tshirt1', 'Tshirt1 (Copy)', 'Tshirt1 sdesc', 'publish', 'open', 'closed', '', 'tshirt1-copy', '', '', '2017-12-16 17:53:32', '2017-12-16 17:53:32', '', 0, 'http://localhost/newzigma/?post_type=product&#038;p=223', 0, 'product', '', 0),
(224, 1, '2017-12-16 17:55:37', '2017-12-16 17:55:37', 'tshirt2', 'tshirt2 (Copy)', 'tshirt2 desc ', 'publish', 'open', 'closed', '', 'tshirt2-copy', '', '', '2017-12-16 18:36:49', '2017-12-16 18:36:49', '', 0, 'http://localhost/newzigma/?post_type=product&#038;p=224', 0, 'product', '', 0),
(225, 1, '2017-12-16 17:58:11', '2017-12-16 17:58:11', 'tshirt4', 'tshirt4 (Copy)', 'tshirt3', 'publish', 'open', 'closed', '', 'tshirt4-copy-2', '', '', '2017-12-16 17:59:02', '2017-12-16 17:59:02', '', 0, 'http://localhost/newzigma/?post_type=product&#038;p=225', 0, 'product', '', 0),
(235, 1, '2017-12-16 19:38:15', '2017-12-16 19:38:15', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n	background: #63c6ae;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 19:38:15', '2017-12-16 19:38:15', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2017-12-16 19:40:14', '2017-12-16 19:40:14', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n	background: #63c6ae;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 19:40:14', '2017-12-16 19:40:14', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(239, 1, '2017-12-16 19:42:23', '2017-12-16 19:42:23', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n	background: #63c6ae;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	border: 2px solid #63c6ae;}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 19:42:23', '2017-12-16 19:42:23', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2017-12-16 19:43:01', '2017-12-16 19:43:01', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n	background: #63c6ae;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 19:43:01', '2017-12-16 19:43:01', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(243, 1, '2017-12-16 19:43:50', '2017-12-16 19:43:50', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n	background: #63c6ae;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#ccc;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 19:43:50', '2017-12-16 19:43:50', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2017-12-16 19:44:09', '2017-12-16 19:44:09', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n	background: #63c6ae;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 19:44:09', '2017-12-16 19:44:09', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2017-12-16 19:48:13', '2017-12-16 19:48:13', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#63c6ae;\n}\n.menu>li>a{\n	color:#ccc;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 19:48:13', '2017-12-16 19:48:13', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2017-12-16 19:49:45', '2017-12-16 19:49:45', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#63c6ae;\n}\n.menu>li>a{\n	color:#ccc !important;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 19:49:45', '2017-12-16 19:49:45', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(251, 1, '2017-12-16 19:50:03', '2017-12-16 19:50:03', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#63c6ae;\n}\n.menu>li>a{\n	color:black !important;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 19:50:03', '2017-12-16 19:50:03', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(253, 1, '2017-12-16 19:52:06', '2017-12-16 19:52:06', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#63c6ae;\n}\n', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 19:52:06', '2017-12-16 19:52:06', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(255, 1, '2017-12-16 20:09:26', '2017-12-16 20:09:26', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #1fc0a0;\n    border-bottom: 28px solid #1fc0a0;\n}\n.main-navigation ul.menu {\n    background: #1fc0a0;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #1fc0a0;\n}\n.search-form button.searchsubmit {\n	background: #1fc0a0;\n	border: 2px solid #1fc0a0;}\na {\n	color:#63c6ae;\n}\n', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 20:09:26', '2017-12-16 20:09:26', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(257, 1, '2017-12-16 20:10:01', '2017-12-16 20:10:01', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#63c6ae;\n}\n', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-16 20:10:01', '2017-12-16 20:10:01', '', 172, 'http://localhost/newzigma/2017/12/16/172-revision-v1/', 0, 'revision', '', 0),
(259, 1, '2017-12-17 03:32:58', '2017-12-17 03:32:58', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-17 03:32:58', '2017-12-17 03:32:58', '', 172, 'http://localhost/newzigma/2017/12/17/172-revision-v1/', 0, 'revision', '', 0),
(261, 1, '2017-12-17 03:35:20', '2017-12-17 03:35:20', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae;}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-17 03:35:20', '2017-12-17 03:35:20', '', 172, 'http://localhost/newzigma/2017/12/17/172-revision-v1/', 0, 'revision', '', 0),
(263, 1, '2017-12-17 03:36:22', '2017-12-17 03:36:22', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale , span.onsale:after {\n	background: #63c6ae;}\n', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-17 03:36:22', '2017-12-17 03:36:22', '', 172, 'http://localhost/newzigma/2017/12/17/172-revision-v1/', 0, 'revision', '', 0),
(265, 1, '2017-12-17 03:37:03', '2017-12-17 03:37:03', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na {\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-17 03:37:03', '2017-12-17 03:37:03', '', 172, 'http://localhost/newzigma/2017/12/17/172-revision-v1/', 0, 'revision', '', 0),
(267, 1, '2017-12-17 03:38:11', '2017-12-17 03:38:11', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-17 03:38:11', '2017-12-17 03:38:11', '', 172, 'http://localhost/newzigma/2017/12/17/172-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2017-12-17 03:39:04', '2017-12-17 03:39:04', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-17 03:39:04', '2017-12-17 03:39:04', '', 172, 'http://localhost/newzigma/2017/12/17/172-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(271, 1, '2017-12-17 03:52:34', '2017-12-17 03:52:34', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae;\n}\n.added_to_cart {\n	background: rgb(99, 198, 174);}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-17 03:52:34', '2017-12-17 03:52:34', '', 172, 'http://localhost/newzigma/2017/12/17/172-revision-v1/', 0, 'revision', '', 0),
(273, 1, '2017-12-17 03:53:53', '2017-12-17 03:53:53', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-17 03:53:53', '2017-12-17 03:53:53', '', 172, 'http://localhost/newzigma/2017/12/17/172-revision-v1/', 0, 'revision', '', 0),
(275, 1, '2017-12-23 08:33:34', '2017-12-23 08:33:34', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:33:34', '2017-12-23 08:33:34', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(277, 1, '2017-12-23 08:34:19', '2017-12-23 08:34:19', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:34:19', '2017-12-23 08:34:19', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(279, 1, '2017-12-23 08:35:50', '2017-12-23 08:35:50', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:35:50', '2017-12-23 08:35:50', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(281, 1, '2017-12-23 08:37:11', '2017-12-23 08:37:11', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:37:11', '2017-12-23 08:37:11', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(283, 1, '2017-12-23 08:39:33', '2017-12-23 08:39:33', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:39:33', '2017-12-23 08:39:33', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(285, 1, '2017-12-23 08:41:07', '2017-12-23 08:41:07', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:41:07', '2017-12-23 08:41:07', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(287, 1, '2017-12-23 08:42:24', '2017-12-23 08:42:24', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:42:24', '2017-12-23 08:42:24', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(289, 1, '2017-12-23 08:43:21', '2017-12-23 08:43:21', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:43:21', '2017-12-23 08:43:21', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(291, 1, '2017-12-23 08:44:27', '2017-12-23 08:44:27', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:44:27', '2017-12-23 08:44:27', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(293, 1, '2017-12-23 08:44:41', '2017-12-23 08:44:41', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae !important;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:44:41', '2017-12-23 08:44:41', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(295, 1, '2017-12-23 08:46:12', '2017-12-23 08:46:12', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae !important;\n	 border: 2px solid #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:46:12', '2017-12-23 08:46:12', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(297, 1, '2017-12-23 08:46:54', '2017-12-23 08:46:54', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae !important;\n	 border: 2px solid #63c6ae !important;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:46:54', '2017-12-23 08:46:54', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(299, 1, '2017-12-23 08:47:58', '2017-12-23 08:47:58', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:47:58', '2017-12-23 08:47:58', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(301, 1, '2017-12-23 08:50:14', '2017-12-23 08:50:14', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:50:14', '2017-12-23 08:50:14', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(303, 1, '2017-12-23 08:50:52', '2017-12-23 08:50:52', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:50:52', '2017-12-23 08:50:52', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(305, 1, '2017-12-23 08:52:01', '2017-12-23 08:52:01', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n   \n    border-bottom: 2px solid #63c6ae;\n   \n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:52:01', '2017-12-23 08:52:01', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(307, 1, '2017-12-23 08:54:37', '2017-12-23 08:54:37', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n    \n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:54:37', '2017-12-23 08:54:37', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(309, 1, '2017-12-23 08:56:49', '2017-12-23 08:56:49', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:56:49', '2017-12-23 08:56:49', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(311, 1, '2017-12-23 08:58:12', '2017-12-23 08:58:12', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 08:58:12', '2017-12-23 08:58:12', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(313, 1, '2017-12-23 09:00:25', '2017-12-23 09:00:25', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:00:25', '2017-12-23 09:00:25', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(315, 1, '2017-12-23 09:03:11', '2017-12-23 09:03:11', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #63c6ae;\n}\n.main-navigation ul ul li a \n	{\n		background: #fff;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:03:11', '2017-12-23 09:03:11', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(317, 1, '2017-12-23 09:03:42', '2017-12-23 09:03:42', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #fff;\n}\n.main-navigation ul ul li a \n	{\n		background: #fff;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:03:42', '2017-12-23 09:03:42', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(319, 1, '2017-12-23 09:04:46', '2017-12-23 09:04:46', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #fff;\n}\n#site-navigation .menu>li li a {\n	color:#fff;\n}\n.main-navigation ul ul li a \n	{\n		background: #fff;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:04:46', '2017-12-23 09:04:46', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(321, 1, '2017-12-23 09:05:10', '2017-12-23 09:05:10', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #fff;\n}\n#site-navigation .menu>li li a {\n	color:#333;\n}\n.main-navigation ul ul li a \n	{\n		background: #fff;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:05:10', '2017-12-23 09:05:10', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(323, 1, '2017-12-23 09:05:47', '2017-12-23 09:05:47', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #fff;\n}\n#site-navigation .menu>li li a {\n	color:#fff;\n}\n.main-navigation ul ul li a \n	{\n		background: #63c6ae;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:05:47', '2017-12-23 09:05:47', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(325, 1, '2017-12-23 09:09:04', '2017-12-23 09:09:04', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #fff;\n}\n#site-navigation .menu>li li a {\n	color:#fff;\n}\n.main-navigation ul ul li a \n	{\n		background: #63c6ae;\n}\n.main-navigation ul ul li:hover > a {\n    background: #49ad95\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:09:04', '2017-12-23 09:09:04', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(327, 1, '2017-12-23 09:10:26', '2017-12-23 09:10:26', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #fff;\n}\n#site-navigation .menu>li li a {\n	color:#fff;\n}\n.main-navigation ul ul li a \n	{\n		background: #63c6ae;\n}\n.main-navigation ul ul li:hover > a {\n    background: #49ad95\n}\n.main-navigation ul.menu > li > ul::after {\n	border-bottom-color: #49ad95;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:10:26', '2017-12-23 09:10:26', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(329, 1, '2017-12-23 09:11:03', '2017-12-23 09:11:03', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #fff;\n}\n#site-navigation .menu>li li a {\n	color:#fff;\n}\n.main-navigation ul ul li a \n	{\n		background: #63c6ae;\n}\n.main-navigation ul ul li:hover > a {\n    background: #49ad95\n}\n.main-navigation ul.menu > li > ul::after {\n	border-bottom-color: #49ad95;\n}\n.main-navigation ul ul li.menu-item-has-children:hover::after {\n	border-left-color: #49ad95;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:11:03', '2017-12-23 09:11:03', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(331, 1, '2017-12-23 09:12:34', '2017-12-23 09:12:34', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #fff;\n}\n#site-navigation .menu>li li a {\n	color:#fff;\n}\n.main-navigation ul ul li a \n	{\n		background: #63c6ae;\n}\n.main-navigation ul ul li:hover > a {\n    background: #49ad95\n}\n.main-navigation ul.menu > li > ul::after {\n	border-bottom-color: #49ad95;\n}\n.main-navigation ul ul li.menu-item-has-children:hover::after {\n	border-left-color: #49ad95;\n}\n.main-navigation ul.menu > li:hover::after {\n    border-top-color: #49ad95;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:12:34', '2017-12-23 09:12:34', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0),
(333, 1, '2017-12-23 09:27:08', '2017-12-23 09:27:08', '#site-branding h1.site-title{\ncolor: #333;\nfont-size: 36px;\n}\n.label-new\n{display:none}\n\n#menu:after{\n	    border-right: 28px solid #63C6AE;\n    border-bottom: 28px solid #63C6AE;\n}\n.main-navigation ul.menu {\n    background: #63c6ae;\n}\n.inner_home {\n	border-bottom: 5px solid #f2f2f2;}\n.inner_home:after{\n	 background: #63c6ae;\n}\n.search-form button.searchsubmit {\n	background: #63c6ae;\n	border: 2px solid #63c6ae;}\na , #ak-top:before , .price del span{\n	color:#63c6ae;\n}\n.apwidget_title .prod-title::after {\n	border-bottom: 2px solid #63c6ae;}\nspan.onsale {\n	background: #63c6ae !important;}\nspan.onsale:after{\n	border-right: 22px solid #63c6ae !important;\n}\n.page-template .add_to_cart_button, .page-template .product_type_simple, .page-template .product_type_external, .page-template .added_to_cart {\n	background: rgb(99, 198, 174);}\nh1.entry-title {\n	color:#63c6ae !important;\n}\nheader .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae !important;\n}\n#content .page_header_wrap #accesspress-breadcrumb span:after, .woocommerce .entry-header .woocommerce-breadcrumb span:after{\n	    border-right: 20px solid #63c6ae;\n}\n.woocommerce ul.products.grid li.product .onsale, .woocommerce span.onsale\n{\n	    background: #63c6ae;\n}\n.woocommerce #respond input#submit:hover, .woocommerce a.button:hover, .woocommerce button.button:hover, .woocommerce input.button:hover{\n	\n	    color: #63c6ae !important;\n    background: #FFF !important;\n}\n.woocommerce #respond input#submit,\n.woocommerce a.button,\n.woocommerce button.button,\n.woocommerce input.button {\n    background: #63c6ae !important;\n    color: #FFF !important;\n    border-radius: 0px !important;\n    border: 2px solid #63c6ae;\n}\n.woocommerce.single.single-product .entry-summary form button.button:hover:before {\n    color: #63c6ae!important;\n}\n.woocommerce ul.products li.product .price-cart .add_to_cart_button,\n.woocommerce ul.products li.product .price-cart .added_to_cart {\n	background: #63c6ae;\n	 border: 2px solid #63c6ae !important;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active {\n    border: none;\n	border-bottom: 1px solid #63c6ae;\n	background: none;\n}\n.woocommerce.single.single-product .woocommerce-tabs ul.tabs li.active a {\n    line-height: 20px;\n    color: #63c6ae;\n}\n.apwidget_title .top-footer-block .widget-title, .apwidget_title #secondary.sidebar .widget-title, .apwidget_title .comments-title, \n.apwidget_title .comments-area .comment-respond h3.comment-reply-title,\n.apwidget_title.woocommerce-cart .cross-sells h2, .apwidget_title.woocommerce-cart .cart_totals h2 {\n    border-bottom: 2px solid #63c6ae;  \n}\n.woocommerce .content-area .products {\n    border-top: 5px solid #63c6ae;\n}\n#content .page_header_wrap #accesspress-breadcrumb span, .woocommerce .entry-header .woocommerce-breadcrumb span {\n    color: #ffffff;\n	background: #63c6ae;\n}\n.woocommerce a.remove\n{\n	    color: #63c6ae  !important;\n}\n#site-navigation li a:hover{\n	color: #fff;\n}\n#site-navigation .menu>li li a {\n	color:#fff;\n}\n.main-navigation ul ul li a \n	{\n		background: #63c6ae;\n		 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);\n}\n.main-navigation ul ul li:hover > a {\n    background: #49ad95\n}\n.main-navigation ul.menu > li > ul::after {\n	border-bottom-color: #49ad95;\n}\n.main-navigation ul ul li.menu-item-has-children:hover::after {\n	border-left-color: #49ad95;\n}\n.main-navigation ul.menu > li:hover::after {\n    border-top-color: #49ad95;\n}', 'accesspress-store', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-12-23 09:27:08', '2017-12-23 09:27:08', '', 172, 'http://localhost/newzigma/2017/12/23/172-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(4, 18, 'order', '0'),
(5, 18, 'display_type', ''),
(6, 18, 'thumbnail_id', '69'),
(8, 18, 'product_count_product_cat', '2'),
(9, 19, 'order', '0'),
(10, 19, 'display_type', ''),
(11, 19, 'thumbnail_id', '0'),
(12, 20, 'order', '0'),
(13, 20, 'display_type', ''),
(14, 20, 'thumbnail_id', '0'),
(15, 21, 'order', '0'),
(16, 21, 'display_type', ''),
(17, 21, 'thumbnail_id', '0'),
(18, 22, 'order', '0'),
(19, 22, 'display_type', ''),
(20, 22, 'thumbnail_id', '0'),
(21, 23, 'order', '0'),
(22, 23, 'display_type', ''),
(23, 23, 'thumbnail_id', '0'),
(24, 24, 'order', '0'),
(25, 24, 'display_type', ''),
(26, 24, 'thumbnail_id', '0'),
(27, 25, 'order', '0'),
(28, 25, 'display_type', ''),
(29, 25, 'thumbnail_id', '0'),
(30, 26, 'order', '0'),
(31, 26, 'display_type', ''),
(32, 26, 'thumbnail_id', '0'),
(33, 27, 'order', '0'),
(34, 27, 'display_type', ''),
(35, 27, 'thumbnail_id', '0'),
(36, 28, 'order', '0'),
(37, 28, 'display_type', ''),
(38, 28, 'thumbnail_id', '0'),
(39, 29, 'order', '0'),
(40, 29, 'display_type', ''),
(41, 29, 'thumbnail_id', '0'),
(42, 30, 'order', '0'),
(43, 30, 'display_type', ''),
(44, 30, 'thumbnail_id', '0'),
(45, 31, 'order', '0'),
(46, 31, 'display_type', ''),
(47, 31, 'thumbnail_id', '0'),
(48, 32, 'order', '0'),
(49, 32, 'display_type', ''),
(50, 32, 'thumbnail_id', '0'),
(51, 33, 'order', '0'),
(52, 33, 'display_type', ''),
(53, 33, 'thumbnail_id', '0'),
(54, 34, 'order', '0'),
(55, 34, 'display_type', ''),
(56, 34, 'thumbnail_id', '0'),
(57, 35, 'order', '0'),
(58, 35, 'display_type', ''),
(59, 35, 'thumbnail_id', '0'),
(60, 36, 'order', '0'),
(61, 36, 'display_type', ''),
(62, 36, 'thumbnail_id', '0'),
(63, 37, 'order', '0'),
(64, 37, 'display_type', ''),
(65, 37, 'thumbnail_id', '0'),
(66, 38, 'order', '0'),
(67, 38, 'display_type', ''),
(68, 38, 'thumbnail_id', '0'),
(69, 39, 'order', '0'),
(70, 39, 'display_type', ''),
(71, 39, 'thumbnail_id', '70'),
(72, 40, 'order', '0'),
(73, 40, 'display_type', ''),
(74, 40, 'thumbnail_id', '0'),
(75, 41, 'order', '0'),
(76, 41, 'display_type', ''),
(77, 41, 'thumbnail_id', '0'),
(78, 42, 'order', '0'),
(79, 42, 'display_type', ''),
(80, 42, 'thumbnail_id', '0'),
(81, 43, 'order', '0'),
(82, 43, 'display_type', ''),
(83, 43, 'thumbnail_id', '0'),
(84, 44, 'order', '0'),
(85, 44, 'display_type', ''),
(86, 44, 'thumbnail_id', '0'),
(87, 45, 'order', '0'),
(88, 45, 'display_type', ''),
(89, 45, 'thumbnail_id', '0'),
(90, 46, 'order', '0'),
(91, 46, 'display_type', ''),
(92, 46, 'thumbnail_id', '0'),
(93, 47, 'order', '0'),
(94, 47, 'display_type', ''),
(95, 47, 'thumbnail_id', '0'),
(96, 48, 'order', '0'),
(97, 48, 'display_type', ''),
(98, 48, 'thumbnail_id', '0'),
(99, 49, 'order', '0'),
(100, 49, 'display_type', ''),
(101, 49, 'thumbnail_id', '0'),
(102, 50, 'order', '0'),
(103, 50, 'display_type', ''),
(104, 50, 'thumbnail_id', '0'),
(105, 51, 'order', '0'),
(106, 51, 'display_type', ''),
(107, 51, 'thumbnail_id', '0'),
(108, 52, 'order', '0'),
(109, 52, 'display_type', ''),
(110, 52, 'thumbnail_id', '0'),
(111, 53, 'order', '0'),
(112, 53, 'display_type', ''),
(113, 53, 'thumbnail_id', '0'),
(114, 54, 'order', '0'),
(115, 54, 'display_type', ''),
(116, 54, 'thumbnail_id', '0'),
(117, 55, 'order', '0'),
(118, 55, 'display_type', ''),
(119, 55, 'thumbnail_id', '0'),
(120, 56, 'order', '0'),
(121, 56, 'display_type', ''),
(122, 56, 'thumbnail_id', '0'),
(123, 57, 'order', '0'),
(124, 57, 'display_type', ''),
(125, 57, 'thumbnail_id', '0'),
(135, 61, 'order_pa_size', '0'),
(136, 62, 'order_pa_size', '0'),
(137, 63, 'order_pa_size', '0'),
(138, 64, 'order', '0'),
(139, 64, 'display_type', ''),
(140, 64, 'thumbnail_id', '0'),
(141, 65, 'order', '0'),
(142, 65, 'display_type', ''),
(143, 65, 'thumbnail_id', '0'),
(144, 66, 'order', '0'),
(145, 66, 'display_type', ''),
(146, 66, 'thumbnail_id', '0'),
(147, 67, 'order', '0'),
(148, 67, 'display_type', ''),
(149, 67, 'thumbnail_id', '0'),
(150, 68, 'order', '0'),
(151, 68, 'display_type', ''),
(152, 68, 'thumbnail_id', '0'),
(153, 69, 'order', '0'),
(154, 69, 'display_type', ''),
(155, 69, 'thumbnail_id', '0'),
(156, 70, 'order', '0'),
(157, 70, 'display_type', ''),
(158, 70, 'thumbnail_id', '0'),
(159, 71, 'order', '0'),
(160, 71, 'display_type', ''),
(161, 71, 'thumbnail_id', '0'),
(162, 72, 'order', '0'),
(163, 72, 'display_type', ''),
(164, 72, 'thumbnail_id', '0'),
(165, 73, 'order', '0'),
(166, 73, 'display_type', ''),
(167, 73, 'thumbnail_id', '0'),
(168, 74, 'order', '0'),
(169, 74, 'display_type', ''),
(170, 74, 'thumbnail_id', '0'),
(171, 75, 'order', '0'),
(172, 75, 'display_type', ''),
(173, 75, 'thumbnail_id', '0'),
(174, 76, 'order', '0'),
(175, 76, 'display_type', ''),
(176, 76, 'thumbnail_id', '0'),
(177, 21, 'product_count_product_cat', '2'),
(178, 29, 'product_count_product_cat', '2'),
(179, 39, 'product_count_product_cat', '2'),
(180, 77, 'order_pa_size', '0'),
(181, 78, 'order_pa_size', '0'),
(182, 79, 'order_pa_size', '0'),
(183, 80, 'order_pa_size', '0'),
(184, 81, 'order_pa_size', '0'),
(185, 64, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'exclude-from-search', 'exclude-from-search', 0),
(8, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(9, 'featured', 'featured', 0),
(10, 'outofstock', 'outofstock', 0),
(11, 'rated-1', 'rated-1', 0),
(12, 'rated-2', 'rated-2', 0),
(13, 'rated-3', 'rated-3', 0),
(14, 'rated-4', 'rated-4', 0),
(15, 'rated-5', 'rated-5', 0),
(16, 'Main', 'main', 0),
(18, 'Women', 'women', 0),
(19, 'summer', 'summer', 0),
(20, 'winter', 'winter', 0),
(21, 'Boys', 'boys', 0),
(22, 'tshirt', 'tshirt', 0),
(23, 'trouser', 'trouser', 0),
(24, 'pant', 'pant', 0),
(25, 'gymwest', 'gymwest', 0),
(26, 'swimsuite', 'swimsuite', 0),
(27, 'tshirt', 'tshirt-winter', 0),
(28, 'pant', 'pant-winter', 0),
(29, 'Girls', 'girls', 0),
(30, 'summer', 'summer-girls', 0),
(31, 'tshirt', 'tshirt-summer-girls', 0),
(32, 'trouser', 'trouser-summer-girls', 0),
(33, 'pant', 'pant-summer-girls', 0),
(34, 'pyjamas', 'pyjamas', 0),
(35, 'gymwest', 'gymwest-summer-girls', 0),
(36, 'swimsuite', 'swimsuite-summer-girls', 0),
(37, 'winter', 'winter-girls', 0),
(38, 'tshirt', 'tshirt-winter-girls', 0),
(39, 'Mens', 'mens', 0),
(40, 'summer', 'summer-ladies', 0),
(41, 'winter', 'winter-ladies', 0),
(42, 't-shirt', 't-shirt', 0),
(43, 'trouser', 'trouser-summer-ladies', 0),
(44, 'pant', 'pant-summer-ladies', 0),
(45, 'gymwest', 'gymwest-summer-ladies', 0),
(46, 'inner garments', 'inner-garments', 0),
(47, 't-shirts', 't-shirts', 0),
(48, 'summer', 'summer-women', 0),
(49, 'winter', 'winter-women', 0),
(50, 't-shirt', 't-shirt-summer-women', 0),
(51, 'trouser', 'trouser-summer-women', 0),
(52, 'pant', 'pant-summer-women', 0),
(53, 'gymwest', 'gymwest-summer-women', 0),
(54, 'inner garment', 'inner-garment', 0),
(55, 'pyjama west', 'pyjama-west', 0),
(56, 'leggins', 'leggins', 0),
(57, 't-shirts', 't-shirts-winter-women', 0),
(61, '4', '4', 0),
(62, '5', '5', 0),
(63, '6', '6', 0),
(64, 'Babies', 'babies', 0),
(65, 'Boys', 'boys-babies', 0),
(66, 'Girls', 'girls-babies', 0),
(67, 't shirt', 't-shirt-girls-babies', 0),
(68, 't shirt', 't-shirt-boys-babies', 0),
(69, 'trousers', 'trousers', 0),
(70, 'trousers', 'trousers-girls-babies', 0),
(71, 'phant', 'phant', 0),
(72, 'phant', 'phant-boys-babies', 0),
(73, 'set', 'set', 0),
(74, 'set', 'set-girls-babies', 0),
(75, 'romar', 'romar', 0),
(76, 'romar', 'romar-boys-babies', 0),
(77, 'S', 's', 0),
(78, 'M', 'm', 0),
(79, 'L', 'l', 0),
(80, 'XL', 'xl', 0),
(81, 'XXL', 'xxl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 15, 0),
(44, 1, 0),
(58, 1, 0),
(65, 2, 0),
(65, 38, 0),
(65, 76, 0),
(65, 77, 0),
(65, 78, 0),
(65, 79, 0),
(65, 80, 0),
(66, 2, 0),
(66, 13, 0),
(66, 17, 0),
(66, 76, 0),
(66, 77, 0),
(66, 78, 0),
(66, 79, 0),
(66, 80, 0),
(71, 2, 0),
(71, 20, 0),
(72, 2, 0),
(72, 28, 0),
(72, 60, 0),
(72, 61, 0),
(72, 62, 0),
(111, 15, 0),
(112, 15, 0),
(113, 15, 0),
(114, 15, 0),
(115, 15, 0),
(116, 15, 0),
(117, 15, 0),
(118, 15, 0),
(119, 15, 0),
(120, 15, 0),
(122, 15, 0),
(123, 15, 0),
(124, 15, 0),
(125, 15, 0),
(126, 15, 0),
(127, 15, 0),
(128, 15, 0),
(129, 15, 0),
(130, 15, 0),
(131, 15, 0),
(132, 15, 0),
(133, 15, 0),
(134, 15, 0),
(135, 15, 0),
(136, 15, 0),
(137, 15, 0),
(138, 15, 0),
(141, 15, 0),
(142, 15, 0),
(143, 15, 0),
(144, 15, 0),
(145, 15, 0),
(146, 15, 0),
(147, 15, 0),
(148, 15, 0),
(149, 15, 0),
(150, 15, 0),
(151, 15, 0),
(152, 15, 0),
(153, 15, 0),
(155, 15, 0),
(156, 15, 0),
(207, 15, 0),
(208, 15, 0),
(209, 15, 0),
(210, 15, 0),
(211, 15, 0),
(212, 15, 0),
(213, 15, 0),
(214, 15, 0),
(215, 15, 0),
(216, 15, 0),
(217, 15, 0),
(218, 15, 0),
(219, 15, 0),
(220, 2, 0),
(220, 63, 0),
(220, 76, 0),
(220, 77, 0),
(220, 78, 0),
(220, 79, 0),
(220, 80, 0),
(221, 2, 0),
(221, 20, 0),
(221, 76, 0),
(221, 77, 0),
(221, 78, 0),
(221, 79, 0),
(221, 80, 0),
(222, 2, 0),
(222, 28, 0),
(222, 60, 0),
(222, 61, 0),
(222, 62, 0),
(223, 2, 0),
(223, 38, 0),
(223, 76, 0),
(223, 77, 0),
(223, 78, 0),
(223, 79, 0),
(223, 80, 0),
(224, 2, 0),
(224, 17, 0),
(224, 76, 0),
(224, 77, 0),
(224, 78, 0),
(224, 79, 0),
(224, 80, 0),
(225, 2, 0),
(225, 63, 0),
(225, 76, 0),
(225, 77, 0),
(225, 78, 0),
(225, 79, 0),
(225, 80, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 3, 'product_type', '', 0, 10),
(3, 4, 'product_type', '', 0, 0),
(4, 5, 'product_type', '', 0, 0),
(5, 6, 'product_type', '', 0, 0),
(6, 7, 'product_visibility', '', 0, 0),
(7, 8, 'product_visibility', '', 0, 0),
(8, 9, 'product_visibility', '', 0, 0),
(9, 10, 'product_visibility', '', 0, 0),
(10, 11, 'product_visibility', '', 0, 0),
(11, 12, 'product_visibility', '', 0, 0),
(12, 13, 'product_visibility', '', 0, 0),
(13, 14, 'product_visibility', '', 0, 1),
(14, 15, 'product_visibility', '', 0, 0),
(15, 16, 'nav_menu', '', 0, 56),
(17, 18, 'product_cat', 'Women\'s Clothing', 0, 2),
(18, 19, 'product_cat', '', 21, 0),
(19, 20, 'product_cat', '', 21, 0),
(20, 21, 'product_cat', '', 0, 2),
(21, 22, 'product_cat', '', 19, 0),
(22, 23, 'product_cat', '', 19, 0),
(23, 24, 'product_cat', '', 19, 0),
(24, 25, 'product_cat', '', 19, 0),
(25, 26, 'product_cat', '', 19, 0),
(26, 27, 'product_cat', '', 20, 0),
(27, 28, 'product_cat', '', 20, 0),
(28, 29, 'product_cat', '', 0, 2),
(29, 30, 'product_cat', '', 29, 0),
(30, 31, 'product_cat', '', 30, 0),
(31, 32, 'product_cat', '', 30, 0),
(32, 33, 'product_cat', '', 30, 0),
(33, 34, 'product_cat', '', 30, 0),
(34, 35, 'product_cat', '', 30, 0),
(35, 36, 'product_cat', '', 30, 0),
(36, 37, 'product_cat', '', 29, 0),
(37, 38, 'product_cat', '', 37, 0),
(38, 39, 'product_cat', '', 0, 2),
(39, 40, 'product_cat', '', 39, 0),
(40, 41, 'product_cat', '', 39, 0),
(41, 42, 'product_cat', '', 40, 0),
(42, 43, 'product_cat', '', 40, 0),
(43, 44, 'product_cat', '', 40, 0),
(44, 45, 'product_cat', '', 40, 0),
(45, 46, 'product_cat', '', 40, 0),
(46, 47, 'product_cat', '', 41, 0),
(47, 48, 'product_cat', '', 18, 0),
(48, 49, 'product_cat', '', 18, 0),
(49, 50, 'product_cat', '', 48, 0),
(50, 51, 'product_cat', '', 48, 0),
(51, 52, 'product_cat', '', 48, 0),
(52, 53, 'product_cat', '', 48, 0),
(53, 54, 'product_cat', '', 48, 0),
(54, 55, 'product_cat', '', 48, 0),
(55, 56, 'product_cat', '', 48, 0),
(56, 57, 'product_cat', '', 49, 0),
(60, 61, 'pa_size', '', 0, 2),
(61, 62, 'pa_size', '', 0, 2),
(62, 63, 'pa_size', '', 0, 2),
(63, 64, 'product_cat', '', 0, 2),
(64, 65, 'product_cat', '', 64, 0),
(65, 66, 'product_cat', '', 64, 0),
(66, 67, 'product_cat', '', 66, 0),
(67, 68, 'product_cat', '', 65, 0),
(68, 69, 'product_cat', '', 65, 0),
(69, 70, 'product_cat', '', 66, 0),
(70, 71, 'product_cat', '', 66, 0),
(71, 72, 'product_cat', '', 65, 0),
(72, 73, 'product_cat', '', 65, 0),
(73, 74, 'product_cat', '', 66, 0),
(74, 75, 'product_cat', '', 66, 0),
(75, 76, 'product_cat', '', 65, 0),
(76, 77, 'pa_size', '', 0, 7),
(77, 78, 'pa_size', '', 0, 7),
(78, 79, 'pa_size', '', 0, 7),
(79, 80, 'pa_size', '', 0, 7),
(80, 81, 'pa_size', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice,text_widget_custom_html,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '205'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"49.204.131.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:3:{s:32:\"e2c420d928d4bf8ce0ff2ec19b371514\";a:10:{s:3:\"key\";s:32:\"e2c420d928d4bf8ce0ff2ec19b371514\";s:10:\"product_id\";i:71;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:900;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:900;s:8:\"line_tax\";i:0;}s:32:\"060ad92489947d410d897474079c1477\";a:10:{s:3:\"key\";s:32:\"060ad92489947d410d897474079c1477\";s:10:\"product_id\";i:221;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:5;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:4500;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:4500;s:8:\"line_tax\";i:0;}s:32:\"bcbe3365e6ac95ea2c0343a2395834dd\";a:10:{s:3:\"key\";s:32:\"bcbe3365e6ac95ea2c0343a2395834dd\";s:10:\"product_id\";i:222;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";i:300;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";i:300;s:8:\"line_tax\";i:0;}}}'),
(22, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1511938952'),
(24, 1, 'jetpack_tracks_anon_id', 'jetpack:MPDd+rqjqgNzFRFLKaYirr78'),
(25, 1, 'nav_menu_recently_edited', '16'),
(28, 2, 'nickname', 'shop'),
(29, 2, 'first_name', 'j'),
(30, 2, 'last_name', 'm'),
(31, 2, 'description', ''),
(32, 2, 'rich_editing', 'true'),
(33, 2, 'syntax_highlighting', 'true'),
(34, 2, 'comment_shortcuts', 'false'),
(35, 2, 'admin_color', 'fresh'),
(36, 2, 'use_ssl', '0'),
(37, 2, 'show_admin_bar_front', 'true'),
(38, 2, 'locale', ''),
(39, 2, 'wp_capabilities', 'a:1:{s:12:\"shop_manager\";b:1;}'),
(40, 2, 'wp_user_level', '9'),
(41, 2, 'dismissed_wp_pointers', ''),
(43, 2, 'billing_first_name', 'j'),
(44, 2, 'billing_last_name', 'm'),
(45, 2, 'billing_company', ''),
(46, 2, 'billing_address_1', ''),
(47, 2, 'billing_address_2', ''),
(48, 2, 'billing_city', ''),
(49, 2, 'billing_postcode', ''),
(50, 2, 'billing_country', ''),
(51, 2, 'billing_state', ''),
(52, 2, 'billing_phone', ''),
(53, 2, 'billing_email', '007rajkumar@gmail.com'),
(54, 2, 'shipping_first_name', ''),
(55, 2, 'shipping_last_name', ''),
(56, 2, 'shipping_company', ''),
(57, 2, 'shipping_address_1', ''),
(58, 2, 'shipping_address_2', ''),
(59, 2, 'shipping_city', ''),
(60, 2, 'shipping_postcode', ''),
(61, 2, 'shipping_country', ''),
(62, 2, 'shipping_state', ''),
(63, 2, 'last_update', '1511944053'),
(65, 2, 'wp_dashboard_quick_press_last_post_id', '191'),
(66, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(67, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(68, 2, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(69, 2, 'metaboxhidden_dashboard', 'a:0:{}'),
(71, 1, 'closedpostboxes_product', 'a:0:{}'),
(72, 1, 'metaboxhidden_product', 'a:0:{}'),
(73, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:67:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(74, 1, 'screen_layout_product', '1'),
(75, 1, 'session_tokens', 'a:2:{s:64:\"621ae83013f0dda7d27b48e8d3aa9ccd635a69404f4c5c40344acfd12de3e946\";a:4:{s:10:\"expiration\";i:1514193998;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36\";s:5:\"login\";i:1514021198;}s:64:\"0e38548bc6813a8b7520d246bd6a1a0326762c3681f11e5d8cdb7e858f40ee7c\";a:4:{s:10:\"expiration\";i:1514197785;s:2:\"ip\";s:13:\"49.204.131.63\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36\";s:5:\"login\";i:1514024985;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BoGQS26M7cZ1Wdvi94pzBIeScF9vAw.', 'admin', '007rajkumar.n@gmail.com', '', '2017-11-22 05:30:10', '', 0, 'admin'),
(2, 'shop', '$P$BTaJzNX1bTy5Nn.fcsLR1WqA9hb3/E/', 'shop', '007rajkumar@gmail.com', '', '2017-11-29 08:25:42', '1511943943:$P$BvdxaOFSw6MjxVjUwhjR9j6PWexOrU/', 0, 'j m');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'size', 'size', 'text', 'name_num', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5632;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1562;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
