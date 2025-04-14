-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 14 2025 г., 13:58
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `doopet`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'dXIDXg2H3E67bFoeaTdD5XRFzuAm4GktlqnjFyUNEWeuBr6QKsEgK1RAuEdDYehr0knz72nECuYTbEyPaSzFM5tXZUW1vE5XiEvWuUb7axSFpoy4CqZDOnvCyLfpeOlzhKTII2ITUe9JOgwPKWBzFxcihTvOWR1H2vqgLLg1n5ZZy39VzTQSf7wxOsSuyCw4prs55a6To84CFwPp0w72wtsXFTPSKV3rfbwPzYZ63J9o8ZU6nUd6tLdpLrFiZOkg', 1, '2025-03-06 12:46:42', '2025-03-06 12:46:42');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Баннерна  на главной странице', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(100, 7, 1, 'Banner 2', '#', 'catalog/banner/photo_2025-03-10_13-43-21.jpg', 1),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(99, 7, 1, 'Banner 1', '#', 'catalog/banner/photo_2025-03-10_13-43-21.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bf_attribute_value`
--

CREATE TABLE `oc_bf_attribute_value` (
  `attribute_value_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bf_filter`
--

CREATE TABLE `oc_bf_filter` (
  `product_id` int(11) NOT NULL,
  `filter_group` varchar(10) NOT NULL,
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `out_of_stock` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_bf_filter`
--

INSERT INTO `oc_bf_filter` (`product_id`, `filter_group`, `filter_id`, `language_id`, `out_of_stock`) VALUES
(65, 'm0', 16, 1, 0),
(62, 'm0', 14, 1, 0),
(63, 'm0', 14, 1, 0),
(64, 'm0', 0, 1, 0),
(54, 'm0', 12, 1, 0),
(55, 'm0', 12, 1, 0),
(56, 'm0', 12, 1, 0),
(57, 'm0', 12, 1, 0),
(58, 'm0', 13, 1, 0),
(59, 'm0', 14, 1, 0),
(60, 'm0', 14, 1, 0),
(61, 'm0', 14, 1, 0),
(50, 'c0', 61, 1, 0),
(51, 'm0', 12, 1, 0),
(52, 'm0', 12, 1, 0),
(53, 'm0', 12, 1, 1),
(66, 'm0', 16, 1, 0),
(67, 'm0', 16, 1, 0),
(68, 'm0', 16, 1, 0),
(69, 'm0', 17, 1, 0),
(70, 'm0', 19, 1, 0),
(71, 'm0', 19, 1, 0),
(72, 'm0', 19, 1, 0),
(73, 'm0', 19, 1, 0),
(65, 's0', 7, 1, 0),
(62, 's0', 7, 1, 0),
(63, 's0', 7, 1, 0),
(64, 's0', 7, 1, 0),
(54, 's0', 7, 1, 0),
(55, 's0', 7, 1, 0),
(56, 's0', 7, 1, 0),
(57, 's0', 7, 1, 0),
(58, 's0', 7, 1, 0),
(59, 's0', 7, 1, 0),
(60, 's0', 7, 1, 0),
(61, 's0', 7, 1, 0),
(50, 'c0', 59, 1, 0),
(51, 's0', 7, 1, 0),
(52, 's0', 7, 1, 0),
(66, 's0', 7, 1, 0),
(67, 's0', 7, 1, 0),
(68, 's0', 7, 1, 0),
(69, 's0', 7, 1, 0),
(70, 's0', 7, 1, 0),
(71, 's0', 7, 1, 0),
(72, 's0', 7, 1, 0),
(73, 's0', 7, 1, 0),
(65, 'c0', 59, 1, 0),
(65, 'c0', 61, 1, 0),
(62, 'c0', 59, 1, 0),
(62, 'c0', 61, 1, 0),
(63, 'c0', 59, 1, 0),
(63, 'c0', 61, 1, 0),
(54, 'c0', 59, 1, 0),
(54, 'c0', 61, 1, 0),
(55, 'c0', 59, 1, 0),
(55, 'c0', 61, 1, 0),
(56, 'c0', 59, 1, 0),
(56, 'c0', 61, 1, 0),
(57, 'c0', 59, 1, 0),
(57, 'c0', 61, 1, 0),
(58, 'c0', 59, 1, 0),
(58, 'c0', 61, 1, 0),
(59, 'c0', 59, 1, 0),
(59, 'c0', 61, 1, 0),
(60, 'c0', 59, 1, 0),
(60, 'c0', 61, 1, 0),
(61, 'c0', 59, 1, 0),
(61, 'c0', 61, 1, 0),
(50, 's0', 7, 1, 0),
(50, 'm0', 11, 1, 0),
(51, 'c0', 59, 1, 0),
(51, 'c0', 61, 1, 0),
(52, 'c0', 59, 1, 0),
(52, 'c0', 61, 1, 0),
(66, 'c0', 59, 1, 0),
(66, 'c0', 61, 1, 0),
(67, 'c0', 59, 1, 0),
(67, 'c0', 61, 1, 0),
(68, 'c0', 59, 1, 0),
(68, 'c0', 61, 1, 0),
(69, 'c0', 60, 1, 0),
(69, 'c0', 62, 1, 0),
(70, 'c0', 60, 1, 0),
(70, 'c0', 62, 1, 0),
(71, 'c0', 60, 1, 0),
(71, 'c0', 62, 1, 0),
(72, 'c0', 60, 1, 0),
(72, 'c0', 62, 1, 0),
(53, 'c0', 61, 1, 1),
(53, 'c0', 59, 1, 1),
(53, 's0', 7, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bf_product_attribute_value`
--

CREATE TABLE `oc_bf_product_attribute_value` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bf_tax_rate`
--

CREATE TABLE `oc_bf_tax_rate` (
  `id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `percent_rate` decimal(15,4) NOT NULL,
  `fixed_rate` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_bf_tax_rate`
--

INSERT INTO `oc_bf_tax_rate` (`id`, `customer_group_id`, `country_id`, `zone_id`, `tax_class_id`, `based`, `percent_rate`, `fixed_rate`) VALUES
(1, 1, 176, 0, 9, 'shipping', 0.0000, 18.0000),
(2, 1, 176, 0, 10, 'store', 0.0000, 18.0000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `information` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `information`) VALUES
(59, '', 0, 1, 1, 0, 1, '2025-03-10 17:32:42', '2025-03-10 17:32:42', 0),
(60, '', 0, 1, 1, 0, 1, '2025-03-10 17:36:18', '2025-03-10 17:36:18', 0),
(61, '', 59, 1, 1, 0, 1, '2025-03-10 18:23:04', '2025-03-10 18:25:02', 0),
(62, '', 60, 1, 1, 0, 1, '2025-03-10 18:25:50', '2025-03-10 18:25:50', 0),
(63, '', 0, 0, 1, 0, 1, '2025-04-05 07:09:19', '2025-04-06 19:26:48', 1),
(64, '', 60, 0, 1, 0, 1, '2025-04-08 20:25:28', '2025-04-08 20:25:28', 0),
(65, '', 59, 0, 1, 0, 1, '2025-04-08 20:26:11', '2025-04-08 20:26:11', 0),
(66, '', 60, 0, 1, 0, 1, '2025-04-08 20:26:45', '2025-04-08 20:26:45', 0),
(67, '', 0, 0, 1, 0, 1, '2025-04-08 20:27:29', '2025-04-08 20:28:28', 0),
(68, '', 0, 0, 1, 0, 1, '2025-04-08 20:28:59', '2025-04-08 20:28:59', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `header`, `short_description`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(59, 1, 'Для кошек ', '', '', '', 'Для кошек ', '', ''),
(60, 1, 'Для собак ', '', '', '', 'Для собак ', '', ''),
(61, 1, 'Корм для кошек', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Корм для кошек', '', ''),
(62, 1, 'Корм для собак ', '', '', '', 'Корм для собак ', '', ''),
(63, 1, 'Блог ', 'Блог ', 'Полезные статьи ', '', 'Полезные статьи ', '', ''),
(64, 1, 'Консервы для собак', 'Консервы для собак', '', '', 'Консервы для собак', '', ''),
(65, 1, 'Консервы для котов', 'Консервы для котов', '', '', 'Консервы для котов', '', ''),
(66, 1, 'Лакомства для собак', 'Лакомства для собак', '', '', 'Лакомства для собак', '', ''),
(67, 1, 'Наполнители туалетов', 'Наполнители туалетов', '', '', 'Наполнители туалетов', '', ''),
(68, 1, 'Контейнеры для перевозки', 'Контейнеры для перевозки', '', '', 'Контейнеры для перевозки', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_image`
--

CREATE TABLE `oc_category_image` (
  `category_image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(67, 67, 0),
(68, 68, 0),
(66, 66, 1),
(66, 60, 0),
(65, 65, 1),
(65, 59, 0),
(64, 64, 1),
(59, 59, 0),
(64, 60, 0),
(63, 63, 0),
(62, 62, 1),
(62, 60, 0),
(61, 61, 1),
(60, 60, 0),
(61, 59, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
(220, 'Украина', 'UA', 'UKR', '', 0, 1),
(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1),
(227, 'Латвия', 'LV', 'LVA', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Рубль', 'RUB', '', 'р.', '0', 96.21630000, 1, '2025-04-14 11:56:13'),
(2, 'Евро', 'EUR', '', '€', '2', 1.00000000, 1, '2025-04-14 11:56:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'jamshidbekmirzakarimov6@gmail.com', '::1', 1, '2025-03-06 07:55:04', '2025-03-06 07:55:04'),
(2, 'jamshidbekdoopet@gmail.com', '::1', 4, '2025-03-06 07:55:29', '2025-03-06 07:55:31');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('::1', 0, 'http://localhost/doopet/dlya-koshek/cat-s-best-original-cat-litter', 'http://localhost/doopet/dlya-koshek', '2025-04-14 10:54:55');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `informations` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturnHistory/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0),
(46, 'ajax_live_search', 'catalog/view/common/header/after', 'extension/module/live_search/injectLiveSearch', 1, 0),
(47, 'optimblog_admin_language_category', 'admin/language/catalog/category/after', 'extension/module/optimblog/languageCategory', 1, 0),
(48, 'optimblog_admin_language_product', 'admin/language/catalog/product/after', 'extension/module/optimblog/languageProduct', 1, 0),
(49, 'optimblog_admin_language_information', 'admin/language/catalog/information/after', 'extension/module/optimblog/languageInformation', 1, 0),
(50, 'optimblog_admin_language_review', 'admin/language/catalog/review/after', 'extension/module/optimblog/languageReview', 1, 0),
(51, 'optimblog_admin_language_customer_search', 'admin/language/extension/report/customer_search/after', 'extension/module/optimblog/languageCustomerSearch', 1, 0),
(52, 'optimblog_catalog_language_product', 'catalog/language/product/product/after', 'extension/module/optimblog/languageProduct', 1, 0),
(53, 'optimblog_catalog_language_information', 'catalog/language/information/information/after', 'extension/module/optimblog/languageInformation', 1, 0),
(54, 'optimblog_catalog_language_review', 'catalog/language/mail/review/after', 'extension/module/optimblog/languageReview', 1, 0),
(55, 'optimblog_catalog_category_type', 'catalog/controller/product/category/before', 'extension/module/optimblog/controllerCategoryType', 1, 0),
(56, 'optimblog_catalog_view_header', 'catalog/view/common/header/before', 'extension/module/optimblog/viewHeaderBefore', 1, 0),
(57, 'optimblog_catalog_view_category', 'catalog/view/product/category/before', 'extension/module/optimblog/viewCategory', 1, 0),
(58, 'optimblog_catalog_view_product', 'catalog/view/product/product/before', 'extension/module/optimblog/viewProduct', 1, 0),
(59, 'optimblog_catalog_view_information', 'catalog/view/information/information/before', 'extension/module/optimblog/viewInformationBefore', 1, 0),
(60, 'optimblog_catalog_information_review', 'catalog/controller/information/information/review/before', 'extension/module/optimblog/informationReview', 1, 0),
(61, 'optimblog_catalog_information_write', 'catalog/controller/information/information/write/before', 'extension/module/optimblog/informationWrite', 1, 0),
(62, 'optimblog_catalog_model_information_get', 'catalog/model/catalog/information/getInformation/before', 'extension/module/optimblog/getInformation', 1, 0),
(63, 'optimblog_catalog_model_informations_get', 'catalog/model/catalog/information/getInformations/before', 'extension/module/optimblog/getInformations', 1, 0),
(64, 'optimblog_catalog_model_product_related', 'catalog/model/catalog/product/getProductRelated/before', 'extension/module/optimblog/getProductRelated', 1, 0),
(65, 'optimblog_catalog_model_product_review', 'catalog/model/catalog/review/getReviewsByProductId/before', 'extension/module/optimblog/getReviewsByProductId', 1, 0),
(66, 'optimblog_catalog_model_product_review_total', 'catalog/model/catalog/review/getTotalReviewsByProductId/before', 'extension/module/optimblog/getTotalReviewsByProductId', 1, 0),
(67, 'brainyfilter', 'admin/model/catalog/product/addProduct/after', 'extension/module/brainyfilter/eventAddProduct', 1, 0),
(68, 'brainyfilter', 'admin/model/catalog/product/editProduct/after', 'extension/module/brainyfilter/eventEditProduct', 1, 0),
(69, 'brainyfilter', 'admin/model/catalog/product/deleteProduct/after', 'extension/module/brainyfilter/eventDeleteProduct', 1, 0),
(70, 'brainyfilter', 'admin/model/catalog/review/addReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(71, 'brainyfilter', 'admin/model/catalog/review/editReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(72, 'brainyfilter', 'admin/model/catalog/review/deleteReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(73, 'brainyfilter', 'admin/model/catalog/product/addProduct/after', 'extension/module/brainyfilter/eventAddProduct', 1, 0),
(74, 'brainyfilter', 'admin/model/catalog/product/editProduct/after', 'extension/module/brainyfilter/eventEditProduct', 1, 0),
(75, 'brainyfilter', 'admin/model/catalog/product/deleteProduct/after', 'extension/module/brainyfilter/eventDeleteProduct', 1, 0),
(76, 'brainyfilter', 'admin/model/catalog/review/addReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(77, 'brainyfilter', 'admin/model/catalog/review/editReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(78, 'brainyfilter', 'admin/model/catalog/review/deleteReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(79, 'brainyfilter', 'admin/model/catalog/product/addProduct/after', 'extension/module/brainyfilter/eventAddProduct', 1, 0),
(80, 'brainyfilter', 'admin/model/catalog/product/editProduct/after', 'extension/module/brainyfilter/eventEditProduct', 1, 0),
(81, 'brainyfilter', 'admin/model/catalog/product/deleteProduct/after', 'extension/module/brainyfilter/eventDeleteProduct', 1, 0),
(82, 'brainyfilter', 'admin/model/catalog/review/addReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(83, 'brainyfilter', 'admin/model/catalog/review/editReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(84, 'brainyfilter', 'admin/model/catalog/review/deleteReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(85, 'brainyfilter', 'admin/model/catalog/product/addProduct/after', 'extension/module/brainyfilter/eventAddProduct', 1, 0),
(86, 'brainyfilter', 'admin/model/catalog/product/editProduct/after', 'extension/module/brainyfilter/eventEditProduct', 1, 0),
(87, 'brainyfilter', 'admin/model/catalog/product/deleteProduct/after', 'extension/module/brainyfilter/eventDeleteProduct', 1, 0),
(88, 'brainyfilter', 'admin/model/catalog/review/addReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(89, 'brainyfilter', 'admin/model/catalog/review/editReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(90, 'brainyfilter', 'admin/model/catalog/review/deleteReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(91, 'brainyfilter', 'admin/model/catalog/product/addProduct/after', 'extension/module/brainyfilter/eventAddProduct', 1, 0),
(92, 'brainyfilter', 'admin/model/catalog/product/editProduct/after', 'extension/module/brainyfilter/eventEditProduct', 1, 0),
(93, 'brainyfilter', 'admin/model/catalog/product/deleteProduct/after', 'extension/module/brainyfilter/eventDeleteProduct', 1, 0),
(94, 'brainyfilter', 'admin/model/catalog/review/addReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(95, 'brainyfilter', 'admin/model/catalog/review/editReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0),
(96, 'brainyfilter', 'admin/model/catalog/review/deleteReview/after', 'extension/module/brainyfilter/eventEditReview', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'module', 'live_search'),
(44, 'module', 'html'),
(45, 'module', 'bestseller'),
(47, 'module', 'xdstickers'),
(48, 'module', 'optimblog'),
(51, 'module', 'latest_information'),
(52, 'module', 'newsletter'),
(61, 'module', 'brainyfilter');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'headerdata.ocmod.zip', '2025-03-08 07:35:26'),
(2, 0, 'livesearch3.ocmod.zip', '2025-03-09 17:59:44'),
(3, 0, 'auto-seo-url-oc3.ocmod.zip', '2025-03-10 17:06:49'),
(4, 0, 'quicksave-3x.ocmod.zip', '2025-03-10 18:19:23'),
(7, 0, 'xdstickers_v.1.3.4.oc3.0.ocmod.zip', '2025-04-03 12:20:25'),
(21, 0, 'optimblog.update.ocmod.zip', '2025-04-06 19:21:01'),
(20, 0, 'optimblog-module-latest-information.update.ocmod.zip', '2025-04-06 17:31:51'),
(23, 0, 'localcopy_oc3.ocmod.zip', '2025-04-07 17:19:44'),
(25, 0, 'optimblog-module-latest-information.update.ocmod.zip', '2025-04-07 17:24:25'),
(28, 0, 'newsletter-subscription_oc3.update.ocmod.zip', '2025-04-07 19:52:38'),
(27, 0, 'footerdata.ocmod.zip', '2025-04-07 18:50:00'),
(29, 0, 'footersocialmedialink.ocmod.zip', '2025-04-08 17:08:04'),
(31, 0, 'xdstickers_v.1.3.4.oc3.0.ocmod.zip', '2025-04-13 08:24:40'),
(38, 0, 'um-filter_oc3_update.ocmod.zip', '2025-04-13 11:34:09'),
(39, 0, 'productdata.ocmod.zip', '2025-04-14 05:15:53');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 2, 'admin/language/russian', '2025-03-09 17:59:44'),
(2, 2, 'admin/language/zh-TW', '2025-03-09 17:59:44'),
(3, 2, 'admin/language/russian/extension', '2025-03-09 17:59:44'),
(4, 2, 'admin/language/zh-TW/extension', '2025-03-09 17:59:44'),
(5, 2, 'catalog/view/javascript/live_search', '2025-03-09 17:59:44'),
(6, 2, 'admin/controller/extension/module/live_search.php', '2025-03-09 17:59:44'),
(7, 2, 'admin/language/russian/extension/module', '2025-03-09 17:59:45'),
(8, 2, 'admin/language/zh-TW/extension/module', '2025-03-09 17:59:45'),
(9, 2, 'catalog/controller/extension/module/live_search.php', '2025-03-09 17:59:45'),
(10, 2, 'catalog/view/javascript/live_search/live_search.css', '2025-03-09 17:59:45'),
(11, 2, 'catalog/view/javascript/live_search/live_search.js', '2025-03-09 17:59:45'),
(12, 2, 'catalog/view/javascript/live_search/loading.gif', '2025-03-09 17:59:45'),
(13, 2, 'admin/language/en-gb/extension/module/live_search.php', '2025-03-09 17:59:45'),
(14, 2, 'admin/language/russian/extension/module/live_search.php', '2025-03-09 17:59:45'),
(15, 2, 'admin/language/zh-TW/extension/module/live_search.php', '2025-03-09 17:59:45'),
(16, 2, 'admin/view/template/extension/module/live_search.twig', '2025-03-09 17:59:45'),
(87, 7, 'admin/view/stylesheet/css', '2025-04-03 12:20:25'),
(88, 7, 'admin/view/stylesheet/images', '2025-04-03 12:20:25'),
(89, 7, 'admin/controller/extension/module/xdstickers.php', '2025-04-03 12:20:25'),
(90, 7, 'admin/model/extension/module/xdstickers.php', '2025-04-03 12:20:25'),
(91, 7, 'admin/view/javascript/jquery/colorpicker.js', '2025-04-03 12:20:25'),
(92, 7, 'admin/view/stylesheet/css/colorpicker.css', '2025-04-03 12:20:25'),
(93, 7, 'admin/view/stylesheet/images/blank.gif', '2025-04-03 12:20:25'),
(94, 7, 'admin/view/stylesheet/images/colorpicker_background.png', '2025-04-03 12:20:25'),
(95, 7, 'admin/view/stylesheet/images/colorpicker_hex.png', '2025-04-03 12:20:25'),
(96, 7, 'admin/view/stylesheet/images/colorpicker_hsb_b.png', '2025-04-03 12:20:25'),
(97, 7, 'admin/view/stylesheet/images/colorpicker_hsb_h.png', '2025-04-03 12:20:25'),
(98, 7, 'admin/view/stylesheet/images/colorpicker_hsb_s.png', '2025-04-03 12:20:25'),
(99, 7, 'admin/view/stylesheet/images/colorpicker_indic.gif', '2025-04-03 12:20:25'),
(100, 7, 'admin/view/stylesheet/images/colorpicker_overlay.png', '2025-04-03 12:20:25'),
(101, 7, 'admin/view/stylesheet/images/colorpicker_rgb_b.png', '2025-04-03 12:20:25'),
(102, 7, 'admin/view/stylesheet/images/colorpicker_rgb_g.png', '2025-04-03 12:20:25'),
(103, 7, 'admin/view/stylesheet/images/colorpicker_rgb_r.png', '2025-04-03 12:20:25'),
(104, 7, 'admin/view/stylesheet/images/colorpicker_select.gif', '2025-04-03 12:20:25'),
(105, 7, 'admin/view/stylesheet/images/colorpicker_submit.png', '2025-04-03 12:20:25'),
(106, 7, 'admin/view/stylesheet/images/custom_background.png', '2025-04-03 12:20:25'),
(107, 7, 'admin/view/stylesheet/images/custom_hex.png', '2025-04-03 12:20:25'),
(108, 7, 'admin/view/stylesheet/images/custom_hsb_b.png', '2025-04-03 12:20:25'),
(109, 7, 'admin/view/stylesheet/images/custom_hsb_h.png', '2025-04-03 12:20:25'),
(110, 7, 'admin/view/stylesheet/images/custom_hsb_s.png', '2025-04-03 12:20:25'),
(111, 7, 'admin/view/stylesheet/images/custom_indic.gif', '2025-04-03 12:20:25'),
(112, 7, 'admin/view/stylesheet/images/custom_rgb_b.png', '2025-04-03 12:20:25'),
(113, 7, 'admin/view/stylesheet/images/custom_rgb_g.png', '2025-04-03 12:20:25'),
(114, 7, 'admin/view/stylesheet/images/custom_rgb_r.png', '2025-04-03 12:20:25'),
(115, 7, 'admin/view/stylesheet/images/custom_submit.png', '2025-04-03 12:20:25'),
(116, 7, 'admin/view/stylesheet/images/select.png', '2025-04-03 12:20:25'),
(117, 7, 'admin/view/stylesheet/images/select2.png', '2025-04-03 12:20:25'),
(118, 7, 'admin/view/stylesheet/images/slider.png', '2025-04-03 12:20:25'),
(119, 7, 'catalog/model/extension/module/xdstickers.php', '2025-04-03 12:20:25'),
(120, 7, 'admin/language/en-gb/extension/module/xdstickers.php', '2025-04-03 12:20:25'),
(121, 7, 'admin/language/ru-ru/extension/module/xdstickers.php', '2025-04-03 12:20:25'),
(122, 7, 'admin/view/template/extension/module/xdstickers.twig', '2025-04-03 12:20:25'),
(295, 21, 'catalog/controller/extension/information', '2025-04-06 19:21:01'),
(296, 21, 'catalog/view/javascript/optimblog.js', '2025-04-06 19:21:01'),
(297, 21, 'admin/controller/extension/module/optimblog.php', '2025-04-06 19:21:01'),
(298, 21, 'admin/model/extension/module/optimblog.php', '2025-04-06 19:21:01'),
(299, 21, 'catalog/controller/extension/information/category.php', '2025-04-06 19:21:01'),
(300, 21, 'catalog/controller/extension/module/optimblog.php', '2025-04-06 19:21:01'),
(301, 21, 'catalog/language/en-gb/information/category.php', '2025-04-06 19:21:01'),
(302, 21, 'catalog/language/ru-ru/information/category.php', '2025-04-06 19:21:01'),
(303, 21, 'catalog/model/extension/module/optimblog_category.php', '2025-04-06 19:21:01'),
(304, 21, 'catalog/model/extension/module/optimblog_information.php', '2025-04-06 19:21:01'),
(305, 21, 'catalog/model/extension/module/optimblog_product.php', '2025-04-06 19:21:01'),
(306, 21, 'catalog/model/extension/module/optimblog_review.php', '2025-04-06 19:21:01'),
(307, 21, 'admin/language/en-gb/extension/module/optimblog.php', '2025-04-06 19:21:01'),
(308, 21, 'admin/language/en-gb/extension/module/optimblog_admin_category.php', '2025-04-06 19:21:01'),
(309, 21, 'admin/language/en-gb/extension/module/optimblog_admin_information.php', '2025-04-06 19:21:01'),
(310, 21, 'admin/language/en-gb/extension/module/optimblog_admin_product.php', '2025-04-06 19:21:01'),
(311, 21, 'admin/language/en-gb/extension/module/optimblog_admin_review.php', '2025-04-06 19:21:01'),
(312, 21, 'admin/language/en-gb/extension/module/optimblog_customer_search.php', '2025-04-06 19:21:01'),
(313, 21, 'admin/language/ru-ru/extension/module/optimblog.php', '2025-04-06 19:21:01'),
(314, 21, 'admin/language/ru-ru/extension/module/optimblog_admin_category.php', '2025-04-06 19:21:01'),
(315, 21, 'admin/language/ru-ru/extension/module/optimblog_admin_information.php', '2025-04-06 19:21:01'),
(316, 21, 'admin/language/ru-ru/extension/module/optimblog_admin_product.php', '2025-04-06 19:21:01'),
(317, 21, 'admin/language/ru-ru/extension/module/optimblog_admin_review.php', '2025-04-06 19:21:01'),
(318, 21, 'admin/language/ru-ru/extension/module/optimblog_customer_search.php', '2025-04-06 19:21:01'),
(319, 21, 'admin/view/template/extension/module/optimblog_extension.twig', '2025-04-06 19:21:01'),
(320, 21, 'admin/view/template/extension/module/optimblog_form.twig', '2025-04-06 19:21:01'),
(321, 21, 'admin/view/template/extension/module/optimblog_list.twig', '2025-04-06 19:21:01'),
(322, 21, 'catalog/language/en-gb/extension/module/optimblog_information.php', '2025-04-06 19:21:01'),
(323, 21, 'catalog/language/en-gb/extension/module/optimblog_product.php', '2025-04-06 19:21:01'),
(324, 21, 'catalog/language/en-gb/extension/module/optimblog_review.php', '2025-04-06 19:21:01'),
(325, 21, 'catalog/language/ru-ru/extension/module/optimblog_information.php', '2025-04-06 19:21:01'),
(326, 21, 'catalog/language/ru-ru/extension/module/optimblog_product.php', '2025-04-06 19:21:01'),
(327, 21, 'catalog/language/ru-ru/extension/module/optimblog_review.php', '2025-04-06 19:21:01'),
(328, 21, 'catalog/view/theme/default/template/information/category.twig', '2025-04-06 19:21:01'),
(329, 21, 'catalog/view/theme/default/template/extension/module/optimblog', '2025-04-06 19:21:01'),
(287, 20, 'admin/controller/extension/module/latest_information.php', '2025-04-06 17:31:51'),
(288, 20, 'catalog/controller/extension/module/latest_information.php', '2025-04-06 17:31:51'),
(289, 20, 'admin/language/en-gb/extension/module/latest_information.php', '2025-04-06 17:31:51'),
(290, 20, 'admin/language/ru-ru/extension/module/latest_information.php', '2025-04-06 17:31:51'),
(291, 20, 'admin/view/template/extension/module/latest_information.twig', '2025-04-06 17:31:51'),
(292, 20, 'catalog/language/en-gb/extension/module/latest_information.php', '2025-04-06 17:31:51'),
(293, 20, 'catalog/language/ru-ru/extension/module/latest_information.php', '2025-04-06 17:31:51'),
(294, 20, 'catalog/view/theme/default/template/extension/module/latest_information.twig', '2025-04-06 17:31:51'),
(338, 25, 'admin/controller/extension/module/latest_information.php', '2025-04-07 17:24:25'),
(339, 25, 'catalog/controller/extension/module/latest_information.php', '2025-04-07 17:24:25'),
(340, 25, 'admin/language/en-gb/extension/module/latest_information.php', '2025-04-07 17:24:25'),
(341, 25, 'admin/language/ru-ru/extension/module/latest_information.php', '2025-04-07 17:24:25'),
(342, 25, 'admin/view/template/extension/module/latest_information.twig', '2025-04-07 17:24:25'),
(343, 25, 'catalog/language/en-gb/extension/module/latest_information.php', '2025-04-07 17:24:25'),
(344, 25, 'catalog/language/ru-ru/extension/module/latest_information.php', '2025-04-07 17:24:25'),
(345, 25, 'catalog/view/theme/default/template/extension/module/latest_information.twig', '2025-04-07 17:24:25'),
(362, 28, 'admin/model/common', '2025-04-07 19:52:38'),
(363, 28, 'admin/controller/common/newsletter.php', '2025-04-07 19:52:38'),
(364, 28, 'admin/model/common/newsletter.php', '2025-04-07 19:52:38'),
(365, 28, 'admin/controller/extension/module/newsletter.php', '2025-04-07 19:52:38'),
(366, 28, 'admin/model/extension/module/newsletter.php', '2025-04-07 19:52:38'),
(367, 28, 'admin/view/template/common/newsletter.twig', '2025-04-07 19:52:38'),
(368, 28, 'catalog/controller/extension/module/newsletter.php', '2025-04-07 19:52:38'),
(369, 28, 'catalog/model/extension/module/newsletter.php', '2025-04-07 19:52:38'),
(370, 28, 'catalog/view/javascript/jquery/jquery.cookie.js', '2025-04-07 19:52:38'),
(371, 28, 'admin/language/en-gb/extension/module/newsletter.php', '2025-04-07 19:52:38'),
(372, 28, 'admin/language/ru-ru/extension/module/newsletter.php', '2025-04-07 19:52:38'),
(373, 28, 'admin/view/template/extension/module/newsletter.twig', '2025-04-07 19:52:38'),
(374, 28, 'catalog/language/en-gb/extension/module/newsletter.php', '2025-04-07 19:52:38'),
(375, 28, 'catalog/language/ru-ru/extension/module/newsletter.php', '2025-04-07 19:52:38'),
(376, 28, 'catalog/view/theme/default/stylesheet/newsletter.css', '2025-04-07 19:52:38'),
(377, 28, 'catalog/view/theme/default/template/extension/module/newsletter.twig', '2025-04-07 19:52:38'),
(439, 31, 'admin/controller/extension/module/xdstickers.php', '2025-04-13 08:24:40'),
(440, 31, 'admin/model/extension/module/xdstickers.php', '2025-04-13 08:24:40'),
(441, 31, 'admin/view/javascript/jquery/colorpicker.js', '2025-04-13 08:24:40'),
(442, 31, 'admin/view/stylesheet/css/colorpicker.css', '2025-04-13 08:24:40'),
(443, 31, 'admin/view/stylesheet/images/blank.gif', '2025-04-13 08:24:40'),
(444, 31, 'admin/view/stylesheet/images/colorpicker_background.png', '2025-04-13 08:24:40'),
(445, 31, 'admin/view/stylesheet/images/colorpicker_hex.png', '2025-04-13 08:24:40'),
(446, 31, 'admin/view/stylesheet/images/colorpicker_hsb_b.png', '2025-04-13 08:24:40'),
(447, 31, 'admin/view/stylesheet/images/colorpicker_hsb_h.png', '2025-04-13 08:24:40'),
(448, 31, 'admin/view/stylesheet/images/colorpicker_hsb_s.png', '2025-04-13 08:24:40'),
(449, 31, 'admin/view/stylesheet/images/colorpicker_indic.gif', '2025-04-13 08:24:40'),
(450, 31, 'admin/view/stylesheet/images/colorpicker_overlay.png', '2025-04-13 08:24:40'),
(451, 31, 'admin/view/stylesheet/images/colorpicker_rgb_b.png', '2025-04-13 08:24:40'),
(452, 31, 'admin/view/stylesheet/images/colorpicker_rgb_g.png', '2025-04-13 08:24:40'),
(453, 31, 'admin/view/stylesheet/images/colorpicker_rgb_r.png', '2025-04-13 08:24:40'),
(454, 31, 'admin/view/stylesheet/images/colorpicker_select.gif', '2025-04-13 08:24:40'),
(455, 31, 'admin/view/stylesheet/images/colorpicker_submit.png', '2025-04-13 08:24:40'),
(456, 31, 'admin/view/stylesheet/images/custom_background.png', '2025-04-13 08:24:40'),
(457, 31, 'admin/view/stylesheet/images/custom_hex.png', '2025-04-13 08:24:40'),
(458, 31, 'admin/view/stylesheet/images/custom_hsb_b.png', '2025-04-13 08:24:40'),
(459, 31, 'admin/view/stylesheet/images/custom_hsb_h.png', '2025-04-13 08:24:40'),
(460, 31, 'admin/view/stylesheet/images/custom_hsb_s.png', '2025-04-13 08:24:40'),
(461, 31, 'admin/view/stylesheet/images/custom_indic.gif', '2025-04-13 08:24:40'),
(462, 31, 'admin/view/stylesheet/images/custom_rgb_b.png', '2025-04-13 08:24:40'),
(463, 31, 'admin/view/stylesheet/images/custom_rgb_g.png', '2025-04-13 08:24:40'),
(464, 31, 'admin/view/stylesheet/images/custom_rgb_r.png', '2025-04-13 08:24:40'),
(465, 31, 'admin/view/stylesheet/images/custom_submit.png', '2025-04-13 08:24:40'),
(466, 31, 'admin/view/stylesheet/images/select.png', '2025-04-13 08:24:40'),
(467, 31, 'admin/view/stylesheet/images/select2.png', '2025-04-13 08:24:40'),
(468, 31, 'admin/view/stylesheet/images/slider.png', '2025-04-13 08:24:40'),
(469, 31, 'catalog/model/extension/module/xdstickers.php', '2025-04-13 08:24:40'),
(470, 31, 'admin/language/en-gb/extension/module/xdstickers.php', '2025-04-13 08:24:40'),
(471, 31, 'admin/language/ru-ru/extension/module/xdstickers.php', '2025-04-13 08:24:40'),
(472, 31, 'admin/view/template/extension/module/xdstickers.twig', '2025-04-13 08:24:40'),
(839, 38, 'system/library/sqllib.php', '2025-04-13 11:34:10'),
(840, 38, 'admin/view/image/brainyfilter', '2025-04-13 11:34:10'),
(841, 38, 'admin/view/javascript/bootstrap.colorpickersliders.min.js', '2025-04-13 11:34:10'),
(842, 38, 'admin/view/javascript/brainyfilter.js', '2025-04-13 11:34:10'),
(843, 38, 'admin/view/javascript/jquery.autocomplete.min.js', '2025-04-13 11:34:10'),
(844, 38, 'admin/view/javascript/jquery.fn.sortable.min.js', '2025-04-13 11:34:10'),
(845, 38, 'admin/view/javascript/tinycolor.js', '2025-04-13 11:34:10'),
(846, 38, 'admin/view/stylesheet/bootstrap.colorpickersliders.min.css', '2025-04-13 11:34:10'),
(847, 38, 'admin/view/stylesheet/brainyfilter.css', '2025-04-13 11:34:10'),
(848, 38, 'catalog/view/javascript/brainyfilter.js', '2025-04-13 11:34:10'),
(849, 38, 'catalog/view/javascript/jquery-ui.slider.min.js', '2025-04-13 11:34:10'),
(850, 38, 'catalog/view/javascript/jquery.ui.touch-punch.min.js', '2025-04-13 11:34:10'),
(851, 38, 'admin/controller/extension/module/brainyfilter.php', '2025-04-13 11:34:10'),
(852, 38, 'admin/model/extension/module/brainyfilter.php', '2025-04-13 11:34:10'),
(853, 38, 'admin/view/image/brainyfilter/bf-alert.png', '2025-04-13 11:34:10'),
(854, 38, 'admin/view/image/brainyfilter/bf-arrows.png', '2025-04-13 11:34:10'),
(855, 38, 'admin/view/image/brainyfilter/bf-move-arrows.png', '2025-04-13 11:34:10'),
(856, 38, 'admin/view/image/brainyfilter/bf-note.png', '2025-04-13 11:34:10'),
(857, 38, 'admin/view/image/brainyfilter/bf-update-cache.png', '2025-04-13 11:34:10'),
(858, 38, 'admin/view/image/brainyfilter/bf-update.png', '2025-04-13 11:34:10'),
(859, 38, 'admin/view/image/brainyfilter/info.png', '2025-04-13 11:34:10'),
(860, 38, 'admin/view/image/brainyfilter/menu-icons.png', '2025-04-13 11:34:10'),
(861, 38, 'admin/view/image/brainyfilter/plus.png', '2025-04-13 11:34:10'),
(862, 38, 'admin/view/image/brainyfilter/save-menu-sprite.png', '2025-04-13 11:34:10'),
(863, 38, 'admin/view/image/brainyfilter/sprite.png', '2025-04-13 11:34:10'),
(864, 38, 'catalog/controller/extension/module/brainyfilter.php', '2025-04-13 11:34:10'),
(865, 38, 'catalog/model/extension/module/brainyfilter.php', '2025-04-13 11:34:10'),
(866, 38, 'admin/language/en-gb/extension/module/brainyfilter.php', '2025-04-13 11:34:10'),
(867, 38, 'admin/language/ru-ru/extension/module/brainyfilter.php', '2025-04-13 11:34:10'),
(868, 38, 'admin/view/template/extension/module/brainyfilter.twig', '2025-04-13 11:34:10'),
(869, 38, 'admin/view/template/extension/module/brainyfilter_ocmod.twig', '2025-04-13 11:34:10'),
(870, 38, 'catalog/language/en-gb/extension/module/brainyfilter.php', '2025-04-13 11:34:10'),
(871, 38, 'catalog/language/ru-ru/extension/module/brainyfilter.php', '2025-04-13 11:34:10'),
(872, 38, 'catalog/view/theme/default/image/brainyfilter', '2025-04-13 11:34:10'),
(873, 38, 'catalog/view/theme/default/stylesheet/brainyfilter.css', '2025-04-13 11:34:10'),
(874, 38, 'catalog/view/theme/default/stylesheet/jquery-ui.slider.min.css', '2025-04-13 11:34:10'),
(875, 38, 'catalog/view/theme/default/image/brainyfilter/bf-hl-arrows.png', '2025-04-13 11:34:10'),
(876, 38, 'catalog/view/theme/default/image/brainyfilter/bf-hl-arrows@2x.png', '2025-04-13 11:34:10'),
(877, 38, 'catalog/view/theme/default/image/brainyfilter/loading-big.gif', '2025-04-13 11:34:10'),
(878, 38, 'catalog/view/theme/default/image/brainyfilter/loading-big@2x.gif', '2025-04-13 11:34:10'),
(879, 38, 'catalog/view/theme/default/image/brainyfilter/loading.gif', '2025-04-13 11:34:10'),
(880, 38, 'catalog/view/theme/default/image/brainyfilter/loading@2x.gif', '2025-04-13 11:34:10'),
(881, 38, 'catalog/view/theme/default/image/brainyfilter/responsive-layout-icons.png', '2025-04-13 11:34:10'),
(882, 38, 'catalog/view/theme/default/image/brainyfilter/responsive-layout-icons@2x.png', '2025-04-13 11:34:10'),
(883, 38, 'catalog/view/theme/default/image/brainyfilter/search.png', '2025-04-13 11:34:10'),
(884, 38, 'catalog/view/theme/default/image/brainyfilter/search@2x.png', '2025-04-13 11:34:10'),
(885, 38, 'catalog/view/theme/default/image/brainyfilter/showmore-cover.png', '2025-04-13 11:34:10'),
(886, 38, 'catalog/view/theme/default/image/brainyfilter/sprite.png', '2025-04-13 11:34:10'),
(887, 38, 'catalog/view/theme/default/image/brainyfilter/sprite@2x.png', '2025-04-13 11:34:10'),
(888, 38, 'catalog/view/theme/default/image/brainyfilter/stars-1.png', '2025-04-13 11:34:10'),
(889, 38, 'catalog/view/theme/default/image/brainyfilter/stars-1@2x.png', '2025-04-13 11:34:10'),
(890, 38, 'catalog/view/theme/default/image/brainyfilter/stars-2.png', '2025-04-13 11:34:10'),
(891, 38, 'catalog/view/theme/default/image/brainyfilter/stars-2@2x.png', '2025-04-13 11:34:10'),
(892, 38, 'catalog/view/theme/default/image/brainyfilter/stars-3.png', '2025-04-13 11:34:10'),
(893, 38, 'catalog/view/theme/default/image/brainyfilter/stars-3@2x.png', '2025-04-13 11:34:10'),
(894, 38, 'catalog/view/theme/default/image/brainyfilter/stars-4.png', '2025-04-13 11:34:10'),
(895, 38, 'catalog/view/theme/default/image/brainyfilter/stars-4@2x.png', '2025-04-13 11:34:10'),
(896, 38, 'catalog/view/theme/default/image/brainyfilter/stars-5.png', '2025-04-13 11:34:10'),
(897, 38, 'catalog/view/theme/default/image/brainyfilter/stars-5@2x.png', '2025-04-13 11:34:10'),
(898, 38, 'catalog/view/theme/default/image/brainyfilter/subcategory-arrow.png', '2025-04-13 11:34:10'),
(899, 38, 'catalog/view/theme/default/template/extension/module/brainyfilter.twig', '2025-04-13 11:34:10');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'Зона НДС', 'Облагаемые НДС', '2014-05-21 22:30:20', '2014-09-09 11:48:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_category`
--

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `conversions` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `conversion_value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_googleshopping_product`
--

INSERT INTO `oc_googleshopping_product` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(1, 50, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 51, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 52, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 53, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 54, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 55, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 56, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 57, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 58, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 59, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 60, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 61, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 62, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 63, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 64, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 65, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 66, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 67, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 68, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 69, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 70, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 71, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 72, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 73, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_product_status`
--

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_product_target`
--

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_target`
--

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_available` datetime NOT NULL DEFAULT '2018-01-01 00:00:00',
  `date_end` datetime NOT NULL DEFAULT '2100-01-01 00:00:00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `image`, `manufacturer_id`, `bottom`, `sort_order`, `status`, `viewed`, `date_available`, `date_end`, `date_added`, `date_modified`) VALUES
(3, NULL, 0, 0, 3, 1, 0, '2018-01-01 00:00:00', '2100-01-01 00:00:00', '2025-04-05 07:03:17', '2025-04-05 07:03:17'),
(4, NULL, 0, 1, 1, 1, 9, '2018-01-01 00:00:00', '2100-01-01 00:00:00', '2025-04-05 07:03:17', '2025-04-05 07:03:17'),
(5, NULL, 0, 0, 4, 1, 0, '2018-01-01 00:00:00', '2100-01-01 00:00:00', '2025-04-05 07:03:17', '2025-04-05 07:03:17'),
(6, '', 0, 1, 3, 1, 0, '2018-01-01 00:00:00', '2100-01-01 00:00:00', '2025-04-05 07:03:17', '2025-04-05 07:24:01'),
(7, NULL, 0, 1, 0, 1, 2, '2018-01-01 00:00:00', '2100-01-01 00:00:00', '2025-04-05 07:03:17', '2025-04-05 07:03:17'),
(10, 'catalog/blog/cat-dog-cuddling333.jpg', 0, 0, 0, 1, 10, '2025-04-05 18:37:22', '2100-01-01 00:00:00', '2025-04-05 18:49:20', '2025-04-05 21:42:38'),
(11, 'catalog/blog/cat-dog-cuddling2.jpg', 0, 0, 0, 1, 3, '2025-04-05 21:29:56', '2100-01-01 00:00:00', '2025-04-05 21:31:45', '2025-04-05 21:41:28'),
(12, 'catalog/blog/cat-dog-cuddling111.jpg', 0, 0, 0, 1, 1, '2025-04-05 21:35:19', '2100-01-01 00:00:00', '2025-04-05 21:36:47', '2025-04-05 21:36:47');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_attribute`
--

CREATE TABLE `oc_information_attribute` (
  `information_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `header` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `header`, `short_description`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'О нас', '', '', '&lt;p&gt;\r\n	About Us&lt;/p&gt;', '', 'О нас', '', ''),
(5, 1, 'Условия соглашения', '', '', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;', '', 'Условия соглашения', '', ''),
(3, 1, 'Политика Безопасности', '', '', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;', '', 'Политика Безопасности', '', ''),
(6, 1, 'Доставка и оплата', '', '', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', '', 'Доставка', '', ''),
(7, 1, 'Акции', '', '', '&lt;p&gt;Акции&lt;/p&gt;', '', 'stock', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `header`, `short_description`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(12, 1, 'Уход за кошками и собаками', 'Уход за кошками и собаками', 'Советы и рекомендации от опытных владельцев питомцев и экспертов в области ветеринарии...', '&lt;p&gt;&lt;span data-metadata=&quot;&lt;!--(figmeta)eyJmaWxlS2V5IjoiUHFxdE5yMXFyR01BdzU3YVoxWDJnVyIsInBhc3RlSUQiOjE2OTI4MTcxMzEsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)--&gt;&quot;&gt;&lt;/span&gt;&lt;span data-buffer=&quot;&lt;!--(figma)ZmlnLWtpd2lQAAAACV8AALW9C5xkSVXgHffmo6q6+jU972EYXsPD9zAzPHybr6rK7nxN3qzqmVnXMqvyVlfSWZll3qyebvaFiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiCzLsnwsy7Isy7rf/5yI+8jqGvT7fb+d33TdiBMnTpw4ceLEiRNxb/5FrhlGUf9C2LuyHxpz09l2vbUZ9ErdnuG/Vrta26yslVqrtYCstx7Uupm8r9i1VpV0LqivtkoNUvmgd1+jRqKgic2gJrSKiquUN4Nz9c5mt9Zol6TmQqvdq6/ctxmstdcb1c31zmq3VJX6iy65WW23JL8U57u1lW4tWAN0LKjUWrVNwJ21zXvWa937AC5ngd1apyHA49X6ygrPE5VGvdbqbZa7tF4pBcLbyQxvZ9vrXfpRE85OBb1urdS0JeRPu7zt8TX1Vq/WLVV69Q062ajDmBUNZWe6tUq71apV6GyGmZjDa48ujnm9Tvmhlc16q9KtNeG31KDU1QHjeh0Z+OqtB2mrN7i+dala62oXbixdHkaM1L2kjdD2StvbjDggulLdbLe0RaOZ8916T+h4rckg7Oz2oxA0GCj1lBZIzfaGJr3zw/FgOL7QPRgJTqvdur/WbVNg2lUtFwpWpe6isAbIVNuVdekKSa9Sam2UAlL+are93iGRW+mWmoKXL7fbjVqptdnuIN1evd0CWNig3+0uqSKdludCo65kF2uNRr0TSHIJCfUQhSrfsW5tdb1R6m522o37VpXIMk0hmCrySfGO92r3CksnGMGKAE4G9zXLbVHkU/UWjbUUytDXK+dEVNcEa6VObfN8vbe26eqecQOjDF5bkaEpN9qVc+SuO1+vruoEuB5aTenpDc1atV4iceNafXWtwT8pvimAgO3szS65ibC7jZI0esv5UrBW3+zRMrmHbJS69VJZ+b+15xIP1cRmBXmQuy1GcdPvYXRPJ9XDS0FQDxjQTSi316XsEVcrcq2hWkfhIxNCwk2XQoCParar69rq7RZ/lQJyj7a5bvs8mccwRzvtVqBUlYnHqmgq7SZgS/1xIsHNTqknk/lrtDgj9K9VQKNe7pZ02nyd5lfq2vLXa4ZO1ETq31DurqtF+MZmqVVapXvM1XprFcg39bqlVrDS7jbJ3FFpBpvdeiUZu8cz6UTBhcidwW5/Pzw/nO32wsszq763Bfesl7o1Sg2SdZrmMYDNtloBn2ZUlzBcZHNJtto+L4OZP0rpCp1St9RoYAGZ+E34sTpQnAc3aisCXai1VjerJYa3pI0vSh5Lsi6ZJck4iRzTdLvB3Ce3TLc7tfvbOjDHO5iD2gpTprrZ6bYrtUAm3wl0qtaQ8pPx5NwMEJpSO5WAmuuNXr2jwNNIdx1bVG91VHWuWavdW7Kz60xlrbbR1eS1Hao58HVtum2TMgOEsxs6jXVp/sZSF02Ju3mTzcWyuDlYbzbhZfPsegvNVAK36AR7SNCp1RjA8noZtQRwq+ovRpsxb3cZfGAPLY/C8aCJFRJ20PnN3hojsSoqwrLWbepS5VVL3XM1Ie27Toqa5cS0YDnKrARk85V2o53kCjphtU4xwDZqSo0RNaptJjv5RVslzi7J1EFTSR4L2is9VBoa5JbXSl0mosvpEoXdtsp/onZvBTnZnp9c09E+FWDwE6N4WlshcU1jHVG1g3pPmjjT6Q/HTntpjhkJ0KBR1TrDQmvCKhAvAclT5YE1JikgNFWsJ7BcAgPJKX2+3rRiLrAinK2TKG4w8WUBWGAyy2iQXGy166qxS/U9PIxguz8K7YjgInRrvYoOxkpd+u6hw8pBz+pyrrazE267XizWMa9dHIQSk4pCU+22O2nWY27XZB1hwSw31oVpv1yqnJsH5exEJ5XHwjdrPTUpBXpXF2aLMbMLMvcruvYV22hjHcUCbNY7rEc8vUb7vCZgtWd5DdCmxmal1BGtzqc5JmO3outlQYhWw+3JtD8bTsbUiVdFOEQ3GBPSHmKpn6ulmurPVwtmV2S5zSWDWm0ja0l550sb0h2/EfZlXe5Nh3vk4kZgZnOt5tTMax3sbYXT9fFwFkGsWxIZmk793lojIOHRTXwSwfQrk3E0m6bqtICaATdSrjLwmiXxLHwYd+OZCyp4TyTyK1CsbtoaBZdR7GIwm04uhqXR8MKYCgkxg+lHi0h4LEwu6VvkSn8f9Y/7g3xUD73EOPvWeoggpRM5m63ds15viHHXIcw7BRZ7aR28AvJG07HWCaiYXZQX0mV38/HkFzP5O8kvZfJ3kT+Wyd9NfjmTfwL545n8E8mfqNS7lWzrJ21vz06GIpkm7lgXqCnXNmrSAy/uuF+eTEZhf9zeD61q0Lv1ljULiJFq4kOQ9oL1MguBpv171VrkRKlU+GuT6fCpk/GsP6K6M8OZsUX5VQr+2XW8n5W6cpjW3ginsyFzWmDtDkWZqmUUs90k5TcnB1FYOZhGkynyYA0qYWgpMJVuO2AK17ukvdp9NZnTqB45H39Wm+owNfHU1yvMCfJ5lhUeBR6VeoNUsSnmW6osMMTsTUgtJuOn2aUGtl/s0rENzMlk2hxOp8JJMv90+Hl6msDuYY9ZR9Uh8av9aNdaLL/C2g/IpJruqVWzEyPfUVfDnO3U5OkFG/LwO1XZcuRql/cn09nhyZTDa2QhYcl1M8bEAHxGbd+LAcnc9Rv9K5OD2ep0OLBE8nZ+ZUSfMujb6ZZL63T6s1k4HVMEVr2jU4WVQY2JpwN7MJt0w2j4VEgnIlJ2VDIJH16SUhPVmx6Mt50e+tV6IP6i0DRsRFjDSXhqu4LQ9Z0x7AZtZ1l77Kl4eBXUzCrNSpeZyyiLScv1aviLzgPMx2QQ5ixMJJkYRKy5rlUkvXiNwoL0ty/aYczHfVrDtN+PdJUDj+UZ917TLIFKKqe1VNGpdpWUrWj9MlonNoe0rVCZHMDY1NUrPlg9xO8GKVda74l+5jOkCkrq7EE0G+5cIfugVDqlCr76Rs1u4nI2X671zlu3JC9jXtkdjgaOn7xrzFiKXkIxVhVtOLDDryYbINu+oH5/bbPXxk6pZOcAaCvaUW922D+RkxJwrNA7k2goWsGKBChuvFRmvNbtTlPRzk/FurNasQMtdQAb97TFWZm6cQc7pna40x4oY+Y6zVrtOBaPOcYExwQ3UTbP5L31ro54GV+BZ67SaKsHkGe3shlve8gX1ju437VN3bdtdtdbvbruVItMz2pdnDHVnIVstU12SIKz2C6fxRIze1BHQQW2VKcP036GxdNs9jAwyoYprcDmprTBKkjea7aJu+Byk/Zt2hbkqLUmriXpvC3AIRK0gs3pjqQIFt6/OvyEWlQUi1XcZJ5LlJ2r3RdXO0Z2o223wcukbYfXdNCPJ3nmNPkTtolYgU7aLBv3Dal9qjftj+3Y2x7ewtrO9qe3yWLEKu8kYbAV6IJW8VYI7fD07R5ypdtOdkC5DChelPIZmF1+ChlIsv4UO2wLLcwRW0ghMa3FFGRJLaWAhNIxiX1YmKO0nEJiSsdTkKWEmGJAQumkZZRBBCkmdmoOGNM7PQe1JK+ZgyVUz2hLDuqIXpuFxTSvywItyeuzoITiDRjQegVN1vG5Eb+W+JhVZAHcxPanjaebQm6u9SOmuh3xk4SwKuvleoUCI6TjjMdWJZP1xejZnQY1ZC4mRXnBm4MUbN05WNGuG0l+Iei4nf/iKurJXEwASw41ARyzKZ0gzF47O5bngb3zYmeOHwKusfUDfCLYnk5Go+pwak0OTLs59lWWGCSspt/WxV7NxBqEA6zdLKS8dm+H1dYa3woUxH/TnLe6zuLk+RERPBojvWC80QQnTJN+ZTLCufHyU7NkvAv88bf4k+vzJ2/9HypfJudd4Y/fBQR2CniAP7ld/uSVUjCb7FNhW9JmYLx9Z85BsE0JwkZ/avzctmQFRxMCe2bR+JkKuWZ/Nh1eNl5x7447yHt7dzyeh793x508cnuPF2B+7/ECLOw9XoDFTn+Kra+PByH1/AsHw4HZynCxbHy7laHwUn90EFLHO9BtzW3GX0Gsrf5eaLzcTn9vOLoCvheJ+0BCOJtF29Ph/oxcTnDhedinysFeOB1urwwvHEwZC5wgFysw6CkKQMIjxKKhbdLazHzVYL+/zSyYq0vMBR9GrJ7mPYI5bnt9BIEV0QbpYJYClpcoiqZx8dB/VYhs7Up/P0L70ypMWN1Tezw244zfqbFvFdZzADaTnGwfCIdLsgCIzq6SLGbod2K5Z9lie8Ffdhk4dCSUn0CFzOAkWHUmgc5NLwj3IDXcPh8OL+zO5pAIukqXEpQ6+5Lh9hxKSqeCOxeM6fHuhPZ02uQZn56NY5igxfZ7DUNmu+G1ZWX1Y+gmgUy7FWpMYs+QPtlpi1T464mJcQEEFyP32WzparYS9meqHP/oddhZU2Qqd3YsW1aCfqUTCDwnkuSpwuVZcFHyIlE22RkstLvVFs/F0kpXypeqLbW8x1rrTeFvmY2MRIqP4xxIP05U7fOk7HB4niJyIM/TpZJuqq6p2OcZdpXyvDaw+eu6GxqRuV6sEM8bgvMaLL2xEpyX500olsBvrlQ0RH1LYJ3Th6wRKuZ5q/PqHtrutoS/22QgeD6MxVzG7OHVnsYOHrHSKEk/Htlc7YrEHxUwT3jezi5N2n/0CnsJno9Zs8/Hrtl2H9ez+a+5xz6/tmOfXyc7T55f31gpS/4b2h19fmO3p89v6tj6d3TOtUROj29gK3neyVP4vKvba0j+bp6Sf0Kp3N3g+cRSeUPyT+IpfD95w9L55g0Y4vkt5cZ5GZ9v5Sl438ZT8L69dG5N+vEdlbO6o/7OyopO4u+qdDRfqqx3Ba+MXyP5CpZcntUVS79GBFb4WeF5J89VnnfxXKNZaa/OU+ifXbP9obVV4aex1j4reoPbrs5Yq47XxLN9tvOkJ/PsnO08Wejcc7bzzXfw7J7t3HE3z6Bxtin1epxGCP46S7iMy4Z4cjzP8xQ+7m2eawr8vlZDfdD7W+vnejz/Faud8PXdPAOe/3oDgfP8nk7QE/gmT4F/b/dcV/L9bmdNnlvd9bKM+3bAtoDnoGf5CHst3ertMEwyfhc2iGfy3N2w5cMN2++nbJxTfbm40e11eY543slzLwhYNYwZ85T8hOddPPd53s3z+3g+geeU5xN5RjyfxHPGU+R0wPObeV4KAtYbYx7gKfQu8xR6V3gKvafyFHr/hqfQ+7c8hd6/4yn0/j1PofcfeAq9p3lBcKcQ/H6vsqEcPl0SQvIHJCE0nyEJIfqDkhCqz5SEkP0hSQjdZ0lCCP+wJITys0koqz8iCaH8HEkI5R+VhFB+riSE8o9JQig/TxJC+cclIZSfLwmh/BOSEMovIKE8/6QkhPILJSGUf0oSQvlFkhDKPy0JofxiSQjln5GEUH6JJITyz0pCKL+UxF1C+eckIZRfJgmh/POSEMovl4RQ/gVJCOVXSEIo/6IkhPIrJSGUf0kSQvlVJO4Wyr8sCaH8akkI5V+RhFB+jSSE8q9KQii/VhJC+dckIZRfJwmh/OuSEMqvJ/EEofwbkhDKb5CEUP5NSQjlN0pCKP+WJITymyQhlH9bEkL5zZIQyr8jCaH8FhJPFMq/Kwmh/FZJCOXfk4RQfpskhPLvS0Iov10SQvkPJCGU3yEJofyHkhDK7yTxJKH8R5IQyu+ShFD+Y0kI5XdLQij/iSSE8nskIZT/VBJC+b2SEMp/Jgmh/D4STxbKfy4Jofx+SQjlv5CEUP6AJITyX0pCKH9QEkL5ryQhlD8kCaH815IQyh8moSbqbyQhlD8iCaH8t5IQyh+VhFD+O0kI5Y9JQij/vSSE8sclIZT/QRJC+RPe4TAbbuGM5do80Xixe+iLA93s7++Lg+b5O9PJnriUswl//fJoQtrbujILI5PzbHzP+DkOwnclPxZvEt9x0J/1FXfB5DaGg3BifD/Gie5an44EqdOPZmEwOZhuQ8KPpniUOEXigk63W+Jx0CAgAgEV8ZhLg6ccRHC8OBPG8WOj3f5g8kBE0t/FVSL2sYtfi6c8CGf94YhUPqS/kTgieMyXiI2EBPdIF2fhnoaFbdHCpeEWm3HYWGKjK3Kxzbp7H8Y/9n+3yW08winCIL20NRWaY1omd0yZMf7tOkinjd06sIfwJ+JBz2RHkrs0jIZbCM4zeR7uRO+kKUTsPCLzFK8I7XG0M5numbFZGOqIPd8zi5rq7bI9GAvrgJb6Y4DssupSJJDTFoJLi8fN0C6Ya8hnD6rOmGMWsjs5GA0qwl+zPwYAPzdMJ/idVIbN5UiqkDi+o7JVTDekL/LMiX3p6YoWYUHNyXBv8pShuLAdAv3IeME7dUkV6QWeOUNQ/sJwzJZOWj4/HMx24ezaOeia9Z4XzHXb0hIOumy3rh9Kmcs8TCUkmZF340wEsdaPdsuca2Fols1NCQitvTlSPRW1rMsW65ZIBoAZsmQesm9Dxj20tyfj9DLP3HrJRf5LqMh4jy0a5tw8dBcW7WnCHPy2oZB8eH80k0gxTT9iPBlGlthLPfPIQSiBIhnsR2mBRh93zO0tySgWe0fODOo956BzhNN2aa+6HieZcPOMcrJF4I2ovttoZfbjxLH11Fp9mWRnPgeNyaVdYbvO8XWPMtw6F/XybCxMdz1NJkkVy2D8wsXwimEu7wBtDMfxaDGtBFIdXghRixzbUnJ2r/Q01FtybldU4LyMHIM3tBrm5/qXh1Gvf4Eh9yTZEn3FysR2TU9lbOvXbu/2ZQMZTiMwvCSnLdWromx+JOk2w0h8OOz1mVnm+TA0gtnIfCDvHR/pkcEGNKT5BbO40x+NtojFCl+RmXnH9oZxLDbp3jW2lhvA/Ba6Zim+zvMKF0ZX9ncj1lmvOEgONCNWWW9ha8Qu7PsOJmJ23+h5p3egm0jzFZ63tMt4TiF1sTy5DM5rPG95lpw4sPubuhhBwZxw8HCQcHVyNLkgyqoovUkllkd7ZycKZ6wFZsk7JSMMLUv/tZ53ZsBG/FI4aCj/H8x711YtIJWzk5HrrTfXWz/tLcZzrreYsbneFg73tnh1bxdcr6Ax19tFB8/0dulf0Ntjh3u7PLCdayj/9Pb4WoYHFHqLCPwgMruEV+zq5mIxue09tHJ6IZyZL+VNYTeuxeatQEg6aWaORDRLukDICpsep3ND7NUIwsyGPVv3HDNpwRTKTrjGX2T9sVEIZP6AGkfmlZTdR0I1OJFFXnKlaBtS5BaYyJNp2MgckLM67Qyn0SyRkrQFQ9l8cVWG0vhL25O9vT5dKNuVPw1D7Rg7n+g0fZDhVJ2g/auJ9weX3LpYvHoNWFBQXYx4gETfWjSLmTVmqZooEg7FlNAd0vSQZty0+C9OszAYl5yNLrMCIHQFN/tTBtSNQ5ZpGxtUDZSakmmFswcmoLveIro9xuapBCn5k/T5ahsiEwTbuRvIKMMoVsyaKMzh9IH+VEZXvTBBMr4nmhSZLc8LruxtTUaOh0gzMIdDZtNxS5G04hPlg9xeQAfDFaSL38Dox2RRc3XwfB9lgsI+MPxwIkmIezUci6eCGF1bkyxl7yAKV1CbVfEg6eyVsS6EHl7fcGenPR5d6TJKl/ojxc5V7cSp7+0dzEQE6khYuv48XTLOlvqlKApn9QFc0n+UczoE512e57mCGqArEOhLVmYAZlzT9QHeu6vfDRkD/6ItjYkzM7UQRH9BJCu97wtE0N9N3Qh9onOTg/36AMff5HQYSb+PSWclTeb9Hu6drD50iewHPFOMs4FS/5BHmD1Lyo9NwnxzgaP+YMVxgw9SvuEaRRH+GYw2IhBh1wf/HGZAB6oPhoTXd0Bzgwcr52x8H0POmAeQeVC03m6491WYllnfGOIiT6/UB18NCZfxqzAjGJXJHgyFRMkfHK0/vtSPRPXr4ORinCiWPYN9tVqoTe72x+LqSmlqsdFYa7Frl7dHByIKgPAyGvW31D5dCsUGtPfpP1Xx9dFM0tTcxvZgCDVzVA3rt/kcFeKS4VeZaq1R69VIEO89hB0wbfb3w0F7v3swliub4tr41uTSh097xpsejBvh+AJzn+b27VnCIKLIy03DLZaUQXsMmxaU/+dbaEy2WchmwuRnhLxK51NIT1N2j1AO6/QQYSKjbohSRgjQ5LZZFWi+LFvL+rh8sLPDekDVvGOkKxQEULiKDW2ehW9oOzXXD7u/hZncNCaQ19RXY6bgmMFaFF3zGTksOFBXyAjBxTmOOiPsorCFrHeH7DGmV9r7kUhH6n8WIzYPFZl9DkYdVGQ6vlCxDDgxYEa3d6W1qDcpIfDxwHz+yPEIR6xMKBODMEabRYl3huFoIMMbaWGG7dw2gpqVZitTGqPX+RkkNhCBEKCfhXQq9yhRQ6UmAmx/Ae/2vHMubBtixMXdBgEbsgJNXQefWTS5GNhgwXC+B+B8ApY98jRwOypKEsva6U/7F6b9/d1MYXHMAsLILKyM+vtuQhQ6HLMyCUytWdZTH47KK7WOvSjpcyKy2pJ7umRycqN7vSzwfIAnFaoh6kwn7JX9xZlkYhHIquH4CNSUYdL9WSwJGcz3MU/YdABiKHTje8Am4ErgJC0yHUblyXTg9rtHIBSigy05ZdvCcZbGnUkqRtvk+jErC/hmkVuWwwEDtlcNI7w1CCymvZhfLp/m4zFky2oUyKI5kzzd+ShzRdO291+hdwGemCzpYvfgJGQi4Yr5SztY2XN2IY20EANFdOaSZU/3yJwRit3s9BPnIiJohzMvExoNLoysORcPpDcJXK9BEwABWq+4HRtq29LCwXhnJFtMuRuTJbk4jNbjIpXhkmW7Etdv9gksxb7adgy1VL39g63RMNqFmDQs7PYmvbC/10jZk0b8w41g7zHyiCNeR4OZdDt1joRUeyd4AE7FmkSKLD4VRn2OhXm352i6G3f+iyiP5GA7yIxIXMWRpt0pCiPL4ApDWLMaAEM2jxJ8HCqH0ZgJiRY9Gy0qjw6mydKTHjVyYrvKoYe8vUDO64b7nPo5LA5H7Y0FwzGGPXH01jl3dsXJVVrTrTVK8lYFSUehLdMFnJV293ypK5MZJCIQgeLYS88lNvig3AvEvrJjwca/dSYNXGe8ie7m8MKx+4PhgUTT8mmkrMAjiZQVo/1p2B+AsRDtTh5AmYjxlUNUZNASDOaYpbHBRgEDxD6Huewyx2xll1u+7BLHr7jECV3RmcAnp9q7nvD3PN+c6ksXXuib0wexWJ7vm2sm2vkX+ObMVir05/rmWgZ9OmvHnboO7pPMrVrWVRbpxPXKngQJo3B7Mh6g1BUHuWksESM1yzvmhu3RcJ+ZKC900Mcb0yjTzYqmTb/UM7ekscaH9KYulIjohlj9qSJJHMldHDeZi+NecK52nqd/VS2JqErFF/uZgfLT4WHSWqGx+GeFVoiFVswKbSER2mJ0MXzgXhhdksR9JI5p27oLrY93JAw9k1r3G29wgC0FDJKPAZxNpKAaXhpu256nt1TkZE9v13oVzlr19NlXGIEyua9Anl2OVOzGe1GZJrZypXJ+U6P53qFG8A4kY16GDCI7Ij6qhCzqjMTMygmjSi1L8+W+ybeZ3gRVOm5j3RMCuB9wosE202t34otNnqSTEl9y8fWmXJlj/3ZySSvvsglywQFi/KJ9pYXUgmOgTJzrAr6w+LmYWraXcEMrSa/lnuBmu2Wv7Mm1KXdX3buKgO1DUpNT23p1M35t42r0EjYQp0AMoO9vJWCl8mpEmYJipfdbfeLwKkPFMoVWaaO+au9jmTaWxb534gXn9aaCL89NIpmKkHNXuPQmZb5GcF/OT6DMcO5gK8GI3wICwQTdVb3twel2B7Kbnbs2N+4G4NuaAZ4OKw8G9niEaze8zAh7QwlnKGt3G58ZG81kZz3jGNPkoksXZB1ricuDN0G2XmUWheYNzAZy7YPZCKdKXBDKWUIZDkIlsgsnvwDGyoS4daB35lkXL0aAF9nBl7aiyehgFrpgB4vodrZXr/PNse/DV7HzfpkK5eH2wdZwO+jv7Y/QTM8cd13aWHUssS1Z2WzVau5aVqlxvnRfQMJraBhQbtoa/8RMOvpkozFa48/N+vHBXoAVZ6AiQ3DMWQbOUSILDWSaEBe6cMCqPHW5BeWbcV7cl8V6OjbfYpYylJwdPmapudxyZEuFhgMdT6k6yIlV/BnUTCPLsBqbKgzGBUpYbnMdVmYQHmCpYFj1Vc9Fw/I6Fwdjcyj+YpVkLpBkT0Qg15CsysurDTy8oNdtnxOI7168y9VWVgjQk8rX7pXLUaQK7vJ1sTw9iHbbrNEcJ0hXqHb0iqmItsnMpWoTVPQtJFJe9cq4v8fQqpIEiYrmdqbh9x3gAYoKEEm8cIHu0flobzLBbxTLmSO8pFI7VDV/AVd0rhKbjoNRf3p2KOgAUrvGwkz1cLa9y2OOijfJdO+tDAADo+64bjw0KAiX+84YQohdvQtl+rhALpljhcM7VMlnfFo7KtYji6NDzpGN3WBBYM7AsMxBmooE4qpE6H4nbpo6Mm1sEUKRS4t4EBgeVBOA2hCZCwz2vbXq5vm1GrZxrd6obrZXNm1xvbW6Gb/hiy5gN+9zJVLRL023Ey5Y7pFQaWxli68m2hdn/eGYfULiDuSse9gg5kzdg+kQDr3BMNof9a+0xKwsIyybVSsC/53RAQdprrV9zaBzVCOod6AVLtqOdrSsG476BNl3bYX8vgJthb3QnqBSxU0KkrlhVGUDhMPJpM83D0azobQeTldkG7lhh4IBUicAZSEsko2R+JUJHZSAZrMvx6tyF8zNJHfhXZY+Hr5b33J2OSOVj1e0QrLWFaXOZnrwBWihZt9JXMzcwl9KGq2NB/tO80KXFC8R1rbYXMQKwWK+Z7n7sG9ySWUS6PioI7XoYQbd2kOqgWJxZTQCUlJO2K1erTb0hQJWJrUEJgXZMzYiQK5qe2enBDkeERxkLu6VWe54euVaQ98LnG+tObT9oWsRQGn4Y37W7JHK0P14tmfoF6sM04Pmao1y+7xdBDA4JSdzvKeufTU+06o1S4l/oXc4mQOkvNJ47EwEixKnJrMrFvtmZy+FtrWX3nm2lGLU/OSdm1yz3tqMwXnJJEWFZunepAjX5t60aMGSTEoXK+2uvFYpe5h1mYVLiUU+JjaasbB3XJc1p3GGeV06vkJqc6XUrOsFyROadVcFT2rmfNz4KSxALeXlNHE9VHRTXt7ANAC5hpHHmUoBZyygU6pWLeBaC3AvVlxnc8qV80+ub0tlvXB4Q/Yl8xuVlbg3N10teuN7M5H+p9GHtLRCNOICMauO+q1IswVBCJhSRd6frpfrDdsYCreG06U+nS/3tW2zuSrLVKPdcdzl9fWTUsU51YWrG6roWm8W76s1rAKbdpfza2nT61rd6tRbcj8vR2tIkFS+3FgXhEKvpkNSXO3a12AWjqB/QAxuD/3f1oY+R2+3FVTRPP4LAbdQzvdyV1emmnoF3r4Vx2fxbmxt83mmylUVZHvtxzEUDJs3nIV7kfmC7/kpLgY1bhK6OhhS7zMgKZxAAcxsW4oSK98y+bR2M+zLXRQ5KhQjFYg/Y/LWPJrELHrOUPqxeczwmqFAHGgo9L0d4k9CjrQ/m7gU3oKFaiNf9gknTnAWbZYdt65K1nLIgiEhS0xKEccwBq8ML7Mk4NFZmoEeF6mHRahjEWfEurnLZsnFapqTS6Hb1U1Gg3O6JhH9ZcFeSRZjP4O7ZiOsdcRMlUM3OljQJV85FKthsxaOROzKtB4AX2RMxrYa7e2kTY0oc0tqTtLrehKcx1vh+LcjlpXVzOegUOvSZG0w5NBAOpCfDVkrZzjX9Wjy5Cfe8XgqykHbFEShTKcEORyUZFuc2ybmEGfyUhCb0sVqTb4ywxia82v1Xq3ctg6hp2/EiAnzmXOb8vpoWz/2kgvAEni+0pbPiZAqYF/Z6CYv0RdX6qvNklraBdyhi7alXKnRWZObqPLmipguUp6+Ze8+TeFOihx2bBkCLBWLVvx+mV5biXN+wKKAzgWoHr5LWqm8jqfE0xObxay2M30O24qxEGnGPDdHbAyZre8PkNP6eHi5F8sXialzyMmF1Ea6uUTOeWbupSAhUWgxUhUNvBv/7zS8KaMmT3vR5An7u30ODIrG14QFPnEf55HzBzkAMvsml8lahCfNRCTHmCA8LejJY6s2BXla0DcPo44NVco0YAa91ptn+63+KFVt7f4/+eZpWaDTd/O0nPfTzmX7PfVTS3L4JQHsd3rm/1hHGP9lwTzeJS0H4TBaGY5GgcBo/2e9YeQ8dAf5eSBt7BcbO41eyvSMy75kyfboonmLb37B02x1rge/F/vdpH9FtZ2DajzZjQT6Y7lDbvbb/MlTCOgEB8xIxp9tg4yROo7mPb75a2Jel5qTyZiNa2M4ulIVlxT4RwjnBpOdmfM7A+EFJl9HB1qTsdUSJ+Zf95D4Ed4/VF6TLUq3Eu/2za96w/EuB93YMCcw5LlF9MyBM3LTgpfHBYnIFPxLMdhtrZOCVyUFGudMC345LpDddQp+dQzO8EMgwLJB+W97kQIHAAWFkww6mMIsYlzyp5kSYVhg783ALFMC/bMMVDgS2PsyYZpOHyMYmZd43u97R3JYTlDh8u0Mj8xGe+zK2Pw9bMfZjl0MibOyJ2lLBDAy7817n43HSHc96SA93TdPhZpC5+fVvyGVVMieM/zbbEGqk//egpOFIqMjz/DNi9wBybymP887iA8ToJ5t5BVy6WMbE3V08Sfi8wrEJAbig26ZathZfk4n9Y/kHJKO/V9J/MGyZos/hBgrd9LTv46Jhckua9l8WHbZbNgq85W+klIRSVfDnci8NO89258DI9/IvCjv/Yjvei1SeKtnvi/NWlsi48OK74QpcDmg+HfjENkRQ2RYGaRuGBF9qY1lYGRv+Oz4BISAqK2oHfyxedYwZpyEiYOCYuW95xBF5TirNA3LB1uO0K8n5yKBHK6YZ/rel7w5EG7Us3zvy2rbY5djEmdsF/bjCg1xCUzB/L6/l65wz8lhflGw0UQCcX+WveR0fZy2dOosCPZQU9YE3Kolc8MhkEU8m0Dj088lc+NhmEU9N2NaluQi5hqjaa+Ymq81Dz8CbCv0kpINJpHcgjJfbx5xFdAirwu8wgJnbjCPjNO2aEOymWtXN5lHzUMs2nncofjkd2oel+Zs8XeLhFosfWZmviZO26J/reREX17lma+NM7bse5xS9RwUs2f+o94g1UDRmEDt3t5k3JDoLz6sRDn/w1wpDtnl2UGf4EiK8TQmZIJSHTKLQ+kHky2L9f1ZLLvOiryyKE/PomCg5Goy4B/IggOcFGbj/eF0QtEzskWtA/umo33L8pL5wSMKnQ6Yy+aZR5SuxHH5p5ofyhZX+pz2/lvzrCwsWWL/vflhjzUSixYTn5pftJiJyXg3GH36Y68I3mre7ouPRL5DGAh5KiHP/HkMbiAf8n9BSORyg6GX6O7f+UiJSXzU7YLIfMnzfj6OQTA/nT/2MVb3DEh9nuflzD/4Mwis4z40NNAcM7pg/sSTEhbT0ZATrMOlz8nNJhKelLsdPffGIgeenvenXlywszNf8l4vucBpvpg3f+eJ2RFqX8mbD6SaJ6DIvNLznqGslYeDYdrsTymsN0VWimi+w7wISUVr/UG31+hRhqxe4YeHbzr+UC6yp/kH9sb+GqrDYDwr8wJA0SXt9PgWTocvqv1bsCkL/lbJNPGa0ADz+lx6urfokhbt26CTHJEuJRlb+O0R5oxo1bI8Leg7ObWwp3xmbI4nGVv4XQOYxZSiVmOz5J3IZC1CaY+NBZyelqcFVeMIcVvXJ1p7VU5K61HbHnqAfmYOYOutCExt8rNz5nczzkfbdo+eXnsV0FZdxWqxS01ip9dl8xZlLVLXyF1DXzK3ZPMWpWVBakjNI81DM1mLcI+FMA/N7ea2JGMLuzav3zd6jLyjEOdscbCDv5S6UY9Js7b8flvBggTjsVmAxflXoTpsrNy+93UubUs2U8HEEY87D4Es4o60uxpO9kK5UfBm37srC7A4F2zLMVCw7p4HWbzdGTqfrhgrELLcCvs/k5svDS4O9+vMPs+8REvWWTBlPobM1YiJMjU/q/C0Rm93uH0RoxNR9nOHytTqmFvMy3KJwqLkevZK6773Rzm5RYwVY05N9hvhDotGqhEM/497WYSuKMEhjOenGOXJjGDQEVR+4jDOUYRekCKlJUNxGORCGHYImfzkYZzeBKeJ0hTlhRpGYndB9yOWQEYEYauZ+CmPkwVCFaVoHypdkZB5ftH8kmyQrzovfLq/NRGvjm6vqYcG7OcczHYiAb/MgaXnCfDnHVC7mkBf7qDoI/sl5qbM8lc6IE3ZeYY0fsnBbFMJ+FUOLE0lwF92QG0qgb7aQQNVSQtmTcnK6lf83UnsNyWimpmHm1uPgltt7kTyQR60KDRVw8LnMrbwKZqXfrEswsPFbN6ijBTU6Q9kgQVlL5u3KDQIqMJIYEDVrpg1c1mBZw/sF5HOmiuat6Ur7MM0u5aw7QjSwJ/bIhYodfnSgvfbAsJX+MMt8xc2a/028h+w+Q4+AM5RMHyq1GqZf5wDa/t1Am4RLH3SFmUZt0Ur5j+6IvkSk6u6Op3IxzY+ZUscWzqEQP/THNQqAeBPW7CSUfpBONpBOJ+x8NjLoYrpmB9lswqwizs/jcL7ZegvM+g/ZsH6xaWu+QObczy7kaKld/h7wzGdDmWG/KF4NnHmnXM1lAt0hK3dzPTMX/kS0AhZSi9BR/mk3eE27kXBe2HuAvuLrrxg+Nmc+Q3NYXMP9nAmALxBARSvwtmS+U3N2nILeaNCQChxGofx3jK/pRCLkwDfpEDQ6I04JL+teYvkQG/OgCI6Bq/m8znzYQVTMwP7G4VpTzacCmmfTcN8JC1aSxQvLvxbjgGDMbN8tb+HVbGvPXzIZyrhE8ogSWBH93s/IhbLXp0JMFAa8dGC56QFZSR+IV2kWLd+1EtJqaf4Ut/8dAbWo5a537w4A6qmV4J+xiPuTQ8V67tZiFKsDr5gOL0UBnrKC9O/yX6U4LZ6poq/Yd6YAckntJbNb6W8ElJmwHHxzJs8zEZ8faZHkbnX/E6mKQlaTg5E39+SxWz2yfBPjfbvemTikkwP3irhQo6JNY+LdIllsi+XQt6WaSDQS9AB021W0jc9xdz+WcpqPSUdmY/lvY97k62n0C2LHENfnUsq6AAhN412m8/lzf/07Hmw7s8+4HvvcXkJp+MB20PjD/re38QSk+ATNAjZmc+nsBoBISD/LYU06L9dvj/pmy+kcK2NN4Vr9d9TKPUt7IsprII+MoTKamQ+6nv/Oy0rh08dhldj/B0HQw6jhyORHJh+wjf/J63cQxDmU775734/OUdhT+N7/9XfQ63YTMi2ITJf8b2n5VKUCuLnEEeOd77omz/MEWc69Knl4+a/egpdRwOdIV4y/4OR1n3wEe/YvMMz//TgxRsYPhpm2pn3+2OmlbtiDEyKCcCZz9GtQViWPUMDv+KA/Yh5Z978AHEgB+7JFWLzrrz5dT30YHpcGoYPaP2nF8wLfWXYbXfommdeHG/jKohXBJGs/j/j6zu+HRR1iwlt3pczrxFrurev5J5WML8a16UZ3D2d2G8vcr62T/hM3LdAWiNaNRyrgpsPFs1P5x7QExh5U4kIFMIOzYdy5sf9FFyxX99cMM93wKoVWXCwNePcyRV/MGd+wpVX+tvs2zGpzDFKnpEzL3Al9fH+wSy5+/HmvPlZVyCu2Gy4jy14qYOsTS6xpKgOfyBnfoHw0XmFB1jRizJQiOQXkZ/MUWTk2IjacvEeNK0OyqccuWY46w9ETm/JE+GysNolEbB5U977IQfp4P1hp680w/GBXX3fkfd+2BUq86JuLUZXVe7tefPjOdUazH68fkbm0yxHvoKxtywScyW/aUuoYHUUTc+ZN1qgRT8vPoWCf8tn/qBzDComVTa4aMXOUG+9ySj9t6vKO8xvtvMsVDboA9IXfKKn7l2AL3tEFiNBDPZDlpdpayJqt2x+UBYcdg/7DKsUI7kX52aivCwmH/XM//IjAfcEooSfv2D+dwZGWJa5ZJ5piffCPVE5iZG7478ftgUEX+R7Wy9YML+TBQThPpE70ZVl867cYChBvL1On+A0BzGsZf+ZMz4JT3QnBBC3OGe32Viu1PqM72o1tEQum2mHn5/npNkVOYLqybwgb/6fGG6rdPoHEWvGC/McbHO6xFSuDmXCiRJ9xcqZGFVtfLC3ghFDs8278+Z/2fWFAhFKXPCevPl+v6+fQh1jTCBwMs1ZL7UsU9iuybUkpHvqKqBFroR64sHYq0Vo2/uL11wNtei1vSE8NYY8MIA383A5W9ycocI9lOYiSxEID8nmLUqbuYMaZf13/PpHXw216PdZTgIiY5CIzOt97xvmQRYPjSCEqpKIxB/8NvON8xCLtjXSAVnFPYqYGd43ZfIWY3uHYUPnoovEIFVQyCO6CmiRsVFKe7KCPDzDApNkLcKlLYzP3MeQH2duPwyzqPcStBtw8qVfAaZj5g7z9YdAFvF7txlFOYA+pgkL/I6I5bfOOjgNkKJEv2+ah1i0Rt/dZnufb/6AU0BZNTX/Js/ckWYt8sACEj433Kq1YH5Zt/MEknYDGpmZN3Okl7PDUmawrZ7FokIwD0hEH2PwJt97tsfYqlqLVlH2XC9Shy79TuH3mJ9j8ZNddLDHrNyl5/TnZQ7PxRt2CPPZFnuwUoqCjVVJQPDXHCKqhCZt4/TDJEvP95rXQzaBMVAQ+Q1vR24/qK88DcfxvFw2b3BUkhXlvT7dpAxzmDlNaaj+xJIpsO6PQScYTVatxGvxKPTIY3To+vgrfU6BXYE4ZWJnYwQY+6O4LBVoXQQH84LwKt+862qMEkYWa8fqyPpt/lgRUG01lFvmL7X7ffy3Kee4Ijp3ziz78NIYD15kLp7CR+y2rQJNmkRUMgQt87cpATkJFgoPQuCj3sXwClHqCxcQ5hfy5mPepQm+d01Wxc7ulGMMRPwPnnAq67hoUjncmUzxIAiCSwe3vP/sTvQaODcRfpL3X7wZIyxBbZG8eR92lgGB0d02530oOYziY02wokT4ScPID/oj8Nldue3js4jvboUDJfBPefNcn3j9bjPEXCvoowXzPALk2HFOGsVB4a8qD4vdT/rRkLWHXX58btbpj8ORdPclfn+bnmgMeK3XbMj8eUGRsZegdJfZbl5YNL+WQWrIFSJE8LrkvT1t/plFDFwMqWAKD/bomWw89tnUmd9IyiSyUb4S4HtQ8vEcJ/1xicAojMyzit6bslAW2w955rcTUDcksIQuqzJ+vECUMC4RVvR0l9B70fxOAu8xyuMWhhDGP5pAg+3JPpjPLXp/L2+yUozKXM377+LB4xpcQX8um0/m2DzohaFAT1UJjuHK7bMwKjfPypkfzUWqVXqJehXrgf6+NXmfUd2YjuwAIvMu3/u93ODIm9Rv983bchHuLxwdKnqHb35fmjji+vM7ffP23Ja0q8y8zTfvyG0xGyjccO2DWx+IOP9nfMCJHx0XUvIBDxf6UB3AXy6aL+MA4IrJa4jIpnaZ9XUgpSjR9+emWLsY/RxTdtk8PSdLwGRnJ0ALDyKR5euK5j/5SIp6sbkQ8NPy5o8cuMmcGDCGAn5mHgHtDfFFBNFSMS8qmj+Gj8zFDJp/t88swIXBsX9mzvwJ+wz28zitOzha5qVF85e+nWvMCJ2W9Of9HjvIbTGdXXsuldrwlxfNh5lICrVu0bL5G38w2eaIjJOwLO2XFc3fQpuzXRQpe90rovvex60nWIIsB1biD3IEb4XzCZ1epdlsOtwiQhqZVxfNP2ovVCe1K68vmv/C1mUPpzX5sufTPfZ5Mcx9yvMZnvkfkLOeLnK274sK51hAEc9P4MUyZdzJGQoA7Adyg3CnfzCazRUgmC1OzXD0bDytjBgu7ouyUuXdbNkVmlYRl1/r/HFuD1rDGh1YZfYp7L0EwmNEaPO/VdIX5TiB23JrU2Q+VDQvyEU6lyqQQzgvZb5l3lIO0rIveOYtVB1NoNObCAiJTmGJBj9G7DWHlcOysyhStMIIReY5vvkL6NlsJfvS/ic9tlB2Hbbvx1aACxZlH/fMa7RWTctbmAYYe208MSqUcFBM55Ax6J/wzK8qOtGpzMdTn8mKntve7bPN0jvt9H3B+4M5RPpu/gSBV4CVnUwM56C5Pu7fymTKQka/PfOXud1+VA5DJowd3244hikZ3g8qwQpD5fpRxZUjXuaZv0IeNFuHURZM8/IF89eKK52UdYsufUgBcctVpp55Yc58NLe9FxEHZUbAzkvYaArgkGV8dc68QsBdlqFe6I5jpeB1OfOeXF+VIdTXIStYggu0Go4GLd3ZyHdZftKhqMI33KLyopx+aqA67TO/hZl3F81PZWDnhrPaiInk9nHvLZqX0wEIMPmwZg6aM7/ooPGWS+EvWzB/mts92JLux1OPvhDcNK/kmFC+QMaSKd6qor85Z97JZg+G5ehUp+TnC+b9uQo9SobPL+zjVCBczp3iW+87xse1wbfShXzH5LZV7VyugL3An+jgu426KPjELJi80JwbBD8nw4tEvOE2LC4bjbWIVWdf6uW6R84s/8xsOMMsUWsQ4gMmd4l8VpIRKLK8soM1srJofjhOHI4lk4+h/csZaCGGDscN7ZWuYBQU4wJO6OcKFkYMN60u7tAfuF/r66nzUjTZHvbdp9Ys6NiFyYRzpxIu9RUMWsRCv2yWtyREFOANbuvdlsu0gTIf3z7A39JJuoZxZobhvS+bE/PgGkG/ZXMyBZYngysx7ql5sMU97bik7S1zTYZHBZzJSNp1l9rG+N3airtOHlRKjRpPr9IMkjnj55kZFcwYWcYAG8Gg7Oi36ipT5gXWHzvHwOjMfGVOPhPGXlR1oRmsZBDRBY4KWOtl8Dl1jMkwn3Oefwh5yMoZoxq/WepV1jbtp5eNy7T0bj3VYlZtdRQOhnWKWl4n+8xuw1K6h2c0jNhCiVtFSe6qum0mmoYpjFe7Z73UCGjBZLAC+kgnDtGXc7TyFQ7oje0EJW0HM35JfsCxWtc3FEy1lskJ6xUGJGOI0jfPX5Pzri6vUXhF2k+h2hrm3HhzTAkjlcNYiLEeyBVkGjf6zka11JNLzNLSVbYv5eX1lpc5jBplwkokmcqozwHzG2BiRnk1jLZlwiLGN1qRzNW0yGZprVYSQcgnPo1L30nSc+m7SPsufTfpnEvL5z7zLi1f/NSfylvtljryykqxYd9/WCg32pVz96y39fWlxQwLGeZ85VZ5Qmbv82j6aovq+7sWCApj7TIta9H8Zv+wqbUf9wNzG7sDeZI+RoC9PylMOUBckLflTN6lA5y5vT7OgCnMUavMFRtv4w56YuZQWsxfOz/yMpoUm0q7VSn1ai3+kfM6jXX701Z+p1Gq1Nba7rf/clfRgfGZkHqrG0SBaYfezhBuTzR8zWmK+kkKfwe2l8OMaX+UgN5Fr1ijtsPdyQj1T+DvOdy3XrYBP3mxzptDqqSNlqKr0CNk6M1X6Cg3PemFKboPqRt7h96zv9Hgr+gr+bmmtR35dm9NxTHPnaUz16aPP4qfusOpiPC5PeHUUtQjwpX05rXA1hYumEQ1N0tEJ96JZJV1OD+kOZ1UaHPNevPNVtQRyLgHPrZHbgf1RxtCWD57gaJQKT1E8PPifu2TZeHxcLOG/QZkyPich6jXxVHL5IEK6jad6D463xQs8fXRf3MMzRFhmU5p3b5S22uvyksMAt+MgX7TvimYW2+5VN6hSXYzgRb0p33TV3WLmi+XKuccYEEB+iLjYlDraStSvNm1Kr3E0kyoXqP/OnWNX9wh/NFJfZeIjsRXfgSQ/Vwsm4uVBBtvQ7oLLMhUsdDCMGrbajZftO1WWZjYrs+fjGAF8YqRFuvsgmiHBmxI+k3ZSojwwynawHgxnGpSPyzKO1dYoyRWFcb6kgwoieSzZDLgoGVofBQah0prFEEkN0aFVtTmw8+lDI4EN5KggcX4GBN5Yw5iHptZJw6/BOgl9jbzLp6fAuutqn2fLRe41wnjd/ry9o28tFbBAjr2Db74gwzyA74ZqH1da2EeGL+qtTgPTt7pWtqoB/Wy+jL2VUW30C3H7zYeT940POG+Aouq0pQysXm4zyfncbT1q5BOpUiWj6Npnb4K7Why15TbXYy1NpiI8IwDupoJ/FoH1xYT6HUOahtIwNfrb1C1mFtdeeepV69JezdYUVba6/IaYmaUbmzW05dJb5I3RuPMzVKSCPIWKUpyD9F3KpNXP2/VbPyK5UM1p2z06u2WNH9b+m7mw7TUvSb68MbhF0EfyRqfeVP09vZGrdutV9G6zUB/mXmTaWjMo9fuo3Pgij/wGDyAzaBGew3IVpEIDmRWMR4bNNoyBvSdtpXA4+JJIW5yEuZLp98nMtMvi1KjXObgJVcGFHqEqZKJKNiAttKZCE5NolDOiICcE9feBuqgmWn2UzQ7V1ajgPaSM2DzvKI05cxHT8hzFokDz8ljNlaVkvwMJB8UrwaSkB8OYDh9xRvS8rGojsuDmCH4OQgeKq1R9OBk5OinR1Rdf1oO7AytLzhah1FqlKcEZ3GJ+SKL6xwuOHt6WYmF1nyJBXJPbyu53BwusBVO6pUz962cL1PBCnPpKtyeIOBUNGr6KSb9uAHPQ7IEV/jNdOmf6NKRODUQ0j5FAKXVksYTOxMrMtAypJ6e97yrymsUpmT2XYHI2qLWZ+Ge4929e2jUX+bpiGWDl2ljz0oay5TXKEwbE6B5dj5uKcZjkR731WW2L1I/Awx2siyoLVQZjd8yudlwL+SojNjEc/Imf4lza808N28KewcRMULJPS9vipZ0L0HHj5d0I/6Uo+NxI6aAx0iyIqtyWtpMSLJ6E4SDB5iLYGrWg1qTuI7xq9nz4+TIWaSmXqXpdWvy9BxeB0+CIJps9I0XfyVlTv4O0RJ0B9JCDiLmPjXDzG1iXBKMIzIrbxjhmI+RkV2ZYZ9gJ7xiO5462dsahitE0MTRa1nxssPIVG8lFV+MSLMfnihUjsYzhXTlnN8iPoiZ9estfOg6pr7eaFgDbwtyV1tUYkOZRku4TPbNJZzUuFdurr0M/cA2bmgGlyU3Ci/0t68470u2D1XRqlfjvc3RrIq8jlm5j61EONlH/M5DFsJEaOdeqszv67C56nWpa7dCL0fXsjJb2J/KC3WcSSmtyLwibxazXC5BiUbx/fCmd4YXzCvz5tgcfxbVz8vhs02zLMzojs28yrMf17E55sTOaNJ3ZQS15kj1hEU2um39oR8dKx5e/O0oxoUFvVWpbcoHnQDkWuvNst3t1Jv2h0+LMkQ8F+YIdw71kvnB9JcjFM0ue97QnbzJN/kc9A15z+8c6j1znohjKEcM+w70+rzBPcZiTEbmVYxxJIH+GP81jM1Io6fIMj+Uyziu5NXYgIhx2I4Br2NoDjXHXyVr8pnfENb3vqXPXvyD9H5Qa+CAkcrVMy343gFqIg3br0Y6oizjrB0KZtWQJ8IIOdBBJQNlSA49USMfdUUQUuDZPqB5FiOmRBxKUCPzWsxo67BkiLK5DiAXzzVKtEwb5YzMNpqvZ0Q/P1CwMBOVeCPV7R7Cf3DknmAaX14ox5Spu25QF3Zq8pNmoi6e3e/U5KwYlbG/3ul+BtRU5LtmPD3Rus1alelPVAuAX+rhRa7hYeknfOSHToPNyhrurq6MbAnW8TGlpfUs3H0kQAckjh2D7X7kFTO7rlENkvaVebw6yfi2WjNZZCQgwXYYS4Itt+kNwotIXUHumlcLtSGXO685GQP208mNMCuaheQ7HCaoyeamp7MqnV5VfGcnjpwCcS9FsbTU7X1JFWBVJOW2j9nGrHbIzQ5RC4ZvYhOwPsM8sDUk6bqokulhJ8RSWw59vPBVNshiYeUzSSpIkzi2pN0QZtuUDhp/ad+BnCSy7Q3B0AbeymyUYDLAvOWMkEvec/MwHLQVRik2smdfGMOYLeyiZwAXWZZwbg5skJpzRsqWxG0tEwxL71Ka0z289KDSrevPoJlKRwbcc78O5lcCWRJzZ0sbRFEdTl6O9nkWzgY6PkXddt4joIXOfb01BS6uypK6FCj4WHC+rjvL5XNt+VYDqePd9UAgJ8ol/Z27k4QZ6qxUKrdTCZ960gndlfrq2VKTpVB/HM1Uu6XKekNXRff7Igy+ZP0ky26lBiAXA2qlrm6Z8jGAEEhNWSjEkIbb0BTrEj0gplMbp1fRWH/tNyDiwioKHxfiAPHQBbxkClgwObJbnR75mjh6tu+ADJNdbsWo+6JdjSGHUxDGGo1IMmmgtnVA6N/ewH0/JnuIe8POQwY/fhWYgP/YXfQjly+nFQixyQ7U6uZ6K814SZgA74euqyhyloexjVT4x0YklcyH8gbXjGAPq3PBHDuCBXw4OVpNjr4536CDH86bpcE86COo9TxIJIqN+yge0mDywBj/jM1V0liBKRAhi3C8zeFLDC2KeBBz8lHSgnyieEUO9xow3d5pUI7KL1ZTj0UKbMe8eQaEJ09Kta8EtEUXEYdx4orF4yUCjCG+uu1xmDsnUXFd7fLBUdIw8U+Jm4b+aJ7X1d+e9A+j+bbY2GKc22yxkxaLS9P+oDcopnZvkk4/9CmY7JWkJj7sUPwqj9Gi8sdRI1vAdjbv5bJOVj5iYNkLSXR0D2RnvxFwIaFcUyr+wjBtoQfY3MsRYwqae08AtU0KMq8J5Fgpe4RQ3QUpdh2cZyr55H5UYTaN3xeQjQF+O/WKexIiXRvqXoH8QsLbhtvR93R3w2yj4x/AyRtjU+wMHQ377GpR2UocRSbYrIyJr9V3KeQinpJFkKU//UxrSVGMf3vKWQvqzFYknMJ6oJr72WclkGzHw36ET6c4323yKY50yPYx0/FAL2EfelGiCHty459yJbNhFiQoOzryIt3S1RfyjqX0cU6iuZdKli17yWZ8yTvODJr2LYKbczvyaz4xiS4UOCyR4qRZz9x8CKEea8GlMPF5JeR9S9oX+8LKIiZyvD4d1cet8AH26uCcGQ3HF9XplOF4JMdtboy/lDePmmkyHnwdipPzsA2xtOYTBXNqHm4+kTfXzoPUStDGdaplJWWL03pz+lBvbKQ/7e01ii+3vHsTGUcG8foEVL5S2tMt8JK5QYEdRmqLnWNXhnPJ3I4IrLZFtO3dmGRT7fxk3rtpntMAkWq46iHz8CTCdes8HPxz6ps+tK96BFlVh8/kzW0pRKvUB1R/WALs7Mp0/HTePDwBBWIpzGfz5hGlGGSxME7WfqrH7yWl2lT6mTb3e/L241Cb+hPsEj8FlP2JeQ2eAmM/m8CIyQLJZyA2IAuwkLRm2RO3To8RELGdnDsSo2P6JvMZxKnceujo7SSC984rG4SRHlVCi2z6uURcV2ezqnr/gkbP1e4ru29dscyea+GYpo6hGHPv3nL73k3bcb8T3M0jh1sk5+hEgcnlGRdHFZ4vhlfECZLX8mBaoa6tz2O712B6KrMBP+FAv/KlXw5hvPy5WYHfGI7r6QyS8/Y6/mUH2+6wfL0MUpe6coAtpWSWOTlhZtJZu5DBc2ZTV2l37tusrsuSE28KLLIsCUppz+bDwTpmpa70ElD5SgLM7XCUe071MR/Zhr6cJ9oUo1rEOoNySiy+g8YELHyhhttjb7L6J5wwoun2uqb8+BJLevnGFuQfcBdMCrv2NhxLSiiEeoiW8oUEvy73N9bsHZP4FkoWJr78JeyAHBAei08Dxd0gv8wIZjTouLawYRdUFcAJVM+9XeTnDrRXQCVchjoG7kxLQOx6QUz7DijXQAEw3MnrTv7igfbNizstjmbMWm6elfyR/Ssc0b/iPOZ5J7fDAoqluLgBO3JHDNV0d5WYfqF7b3uXXaFcVnJso5K+5qsSedcpmrOVVq0655uTA+yJX9i2B33fiJJquRJtcKyv/dlB71NwgC+jBlN+12z3MEVLaU3vqnZZ5ai+QDRuNNy+SMwQHEJ8+2oIoBocWs90skDF3YpP1kG/x8AzR9mVXWJmylmvfjyIlGvX253Mov3JzGX9iJCAS8fGJKlsR7MwsTmH9dUIMM7WktXj5XUydmV5V63M4rdPFGlWH5i3eKaQtBmki0NJK9rW89LTFbmWwyqEnzLZ35vgcW9z6CoaCT8zNSBxXWAo3DxMKaF609DesY7hsjix5WGXfgQTUvj/hxFIWYtyiBmhCz7szMPBB8wKmt9gqkwCWTQqesnQtl+w6C1bneaGkSzcsCLam2QCUXAgOfRLopmy/BPC9vJ97Yt8T0Bdu0jmMTpWqIktGISDTjx2tjnVMNtQlMz/BZYMhAhZRCUMgie/AeSkUBVspy2ReW6BvaSsc6qzyeYBE86W1x3ym8wHupGobuKkI+KO2M5jyid4nNrYiwrGG4cPJBn/Kp2qik7lSMXaBwTdG0ZrFrM+boUPHOoCSjhImHsxW7phHC2bybjopVKoLtRTcDwyjEokOW3FO9xszF4wRwfuophOBpzf30WQ5hVsb8RoV9Q6YIyjeSPizRkR/YROi4Fyed03B3ENRBfFaWqjBrtsJb5qfckHcZ2udnEHGw1UsNoSDJWdFHpW33F10Eu6UQlHIw6x6gIpJhACPgpZmB/TjnbV5OQ36jn41TiAfJS5a5PE1prNOoe9kvHnqzKl9OUvJLOvVBCYvKd9gTGVr4Ow0Ma6jQ0PZHA4mpLvyDGDI2Usljjh2WgWK52lbl5SMP7V4AAyB5F5JQGOLPk8ao/xTejntub1MJ4KdaIU8ntofqT4ibHOxV2zH15kuK5uWjg6gtEg4cgRdUxE5tUFb55JXUM4FEvXqILE6Sy1FZGlJck8KFIpkVdkXlXwFigjrKo3vZnroghYLgTOssmK2LN5f0N2y2n0VfarsokKBxWif2gAVUoIZsQ2LlZsWeEAz6as3DX7CiQc+DHayvBCpz8CbVsjh8OnWuap4Zxify3EWd4K+zN0BINSk3i1hp5NuVQ5l+S8dfwUeiE99B8Xm7Iqw5FyKQ07shybSYxygM0Qd8LuAQviI6gv8QzMwx4dJ75PoCeKZ4rZ8hYnWzQkX7PA2C4NQvyX+HLgMYwL9kaXds5OC96yHbN4OY/Mswve8Vm8BrWt1kTmOQXvBE1N4XbZnFQliHHWrGVhap2ag3diI16XMc/YotNzaO35rxfECvqYWYLgeKjKeGLIr9knl6pqZF5T8M5sZ3TjtQVz7aU5LXhdwVyHsTkvd3gR8PXyQ+ErbLcDdAzV9cwNGUMYG9TIvLTg3ThDrZyevKxgbpJskIj65QVzczJyJV3fAni/ZWeCqrTHPZBdXTaju4mSvLHAFjTuXpAuuyWlWhWOn1fwHnppeMTa+4KCd9v2SH6DAVkum4dpU1CR86H6AOk+/CjKstBnqD+/4D2i77TbMfj6gnlkeOTy+8KC96g+dRGXNBLVFEuoJng0e7tFkQ1aEsRQfh4dN+Sm0RsK5rEoNudR7v0TkVIq0i965nGJwrgma6NQNjpWCthOOmwV0euPJ+MrMgnWY5D1Fao0nMMMw0dke4Fn1aJExHkQxZQsMj74llzQkxI9fH9eTrzcUH9PdX/3noNweiVzADS36Wv1CIvWW6ubHXt6KZdbV3Wjf5iCYf3EbZJNTItWYZC99D7mH2O8FVN/K2ZdSi2DUaLAvrc1YlJrrM7ZbIyGHTocdkSF6Hz7szXrdsMjyuiuIizikdljfRaCGfBuuGdXTnujgEFkewZcs7kZKRHmgsnTUFn8xgJbArmNsECQuR/NuhgRBmcQAO2BTcf29rXyQgRofR1UdobN9DoDdj5lgQoyUUGicalACnP31SnjOAWzyT77PUgUOgwuKiH3eTmW7Nv++3MmdRhVZEYT9pcaibPoZDKPO06pvLtg/IpOsPJ00h9swxSHxnPY2/Nyfwc1ZvA6Ne9k+Pbjdsx7OHbYj6dIJwu2d0fMu7DgTQgjC9YDwUJvvGxTPmZOE4SjuyEL1DjaG2oxXXr0ONUU8/ycp/Mizr+p4BWG0p4weeQ8enPBPFwoBKr4DviWgrldVc08z/OKkir3Iyy4Ncq3yeWI/sitJQv97W14NXmzGMkhRMCOwJYsxfme9Om7zLE4X8FngwMFl82yvudJ/wrmuCadahND1exKEgk5aRvu9K+MGBMAp6K52SUXgd5W8E5Lf2xP0rnz9oK5ZgdKGzbGQDfOKPU6Gsl0xCu40j6YRSKf8faIdZAQr7giSPhaRZTIkJqy61ApotAsICM8mNH6eCDmefuieV/Bu0FB3TADunErVqDIvLfg3TQNt+1aEdjf8IlPpxbMzdpOmeHd3mXTRMxnBYZt12/Rshphz8lU5fasnHnIvmz3roy3SwwuJg60W5PvCJfkS+LiEItZeyjbidkVeWutPmaB748asEQPHrY9Gu5vySeeEtPbDS/wNzLvKHqPgDsk6UwNRlGG//2sELi53XCfNQwhVexYQuxRotk9ZkAks5X402OO/ILOF3zvsTQLbjeE4jQcJGP0paJ5XO2INu1O143oIet3uCS5auWL2lpYgq2Xjy22hUXmAwUvL3f4SvLdi0zTRDQuID3GO37hDJLV4c5OZfdAoovLKSnskudZ379o/IH9yZ4WxUxH3Dfd3tSFUt6m3fQo2FydTjJB0WtkWNwW6lFJP/2IdHu7KJuAaGJhi4MH0VZEtzZkSk+3d6/QhLe4fzVs6SjkVTok6nBs/2j4svRPtcv45W6pVVljTcMYmVabYLK9ExEQqdVrsxy+7ezEU9FfGNPfWBy0b1cqMR8IxAktMh9kKyDZsjAnaPktSXWUndY8hcL+UdCiVFcWP4S7K2/ONEMODBRi/FKr3pTd2yYPXYjNBmFwiSF7CWpVNM0n6Ep6zQbyvGlcqHQ+UmD/0Lcuk2ArUO4xtxu1kizqZqXR1h9V9IJe14rILzXqJb0RoDcuSMgvg3GOHtirGoWm3hcpZu+nLdjLxHIvjdyiHPFzjq9X2pbqrQ0oCtYxFf5KvdaobgLSRpaJVieZ40TJO5vdmvxoxIm44yebpRYpuewiHCbI8ls2clHg9Nlgs7ve6tWbtaTsGrlzpbF5jr8ti2diOXRDG6hK5XH8q8sjEYPteCHb8eJcxxeyHV+MO7DkGD12BKPLVzN6PGa0NLY3Cox/5kFusi0bf+7uWq6vx56chObxSOX3QwU+MIXw8v6UlQ3zZUGfKrDVctfKzGdQv8i9524h7+dMfQdrGMgqZ0GfLZglaVikZiGv8syxMSqtdqkkDVv4FwpmmUOGDORLshxO9Z6lBXylYE6oa2eznyuYk3t9OYseBDj74wuZus8osgsjBm5zX8yb00+JuhywDffka7cx1pdZEqPRJF6O4348vWjO1JKu47JjiVgwzbXyJkNy82i93OsmF5E8FL3d2KjZe/P27oTehuqoqchV6zIPSeWTVxcLLYZQc2SKDSbKZg8DQ2YhyWy2uwnK4mq3xtTuagH5pWw+i3ispLvsZdW+47TC44TVy/qKcHOSWq2S/hDqKfjVH2XabLTb5/Ry2elWzf0C5TV1uOiu99YEMyMRjEeYZBLxfLJg5HMzDlyaXjgQJ0vPKxNj0oyVR0+xUER7xwWc1OCAgwuv8Mh8mjOuuGCFUVLVYgtBOF+HXGp6/WhF1FnSvgwt6MKRNE1ASxSmIyfDIYvMhpDFWA8Fap7PtNBULz6wEJDf1014OKhLkUCK/ZFe8ILhHGu4HuNooTvawCufA9uDEAK5lhK8WE+KfUHSknO/ZSowf1lkZ3FJ7KAxTVuUphOFfuNZIAkJl/UmUqgxrTEJxTJfLBB2Fo+hPT2n8tVdlJYpBWu4/Lk3iNwtQzlq7GyWKLA/ySUqKi+Waj1axjI4B4mVnIEbJqeBO0Jek7mzc5OMYRxNJhcP9i0vcvskncw+2z57oddrZicxID9xPPriw1HFvJthmUPrpG/loTC1sb3nftE2dElbgLUgO7lpMqY7R8rx6u9lgfWB+ScUej9tZkOIRuZpGXUWq4ZoLkmJ3B7wBgBUxh8rGJ+ZML9ifJxtUVw1CPUjNLIjVI7Goh9wzIYqe/85t68+QKZW3R5IWLiQAEDEN8aQxjaEH3rkgaEe53OK6SxKEWqUitD2hEgVIsgtxZHJk3Q0kI8nGHNDSa6Rc8RbE+3Qa83xIkSWGPH8W1JyC7K3lr4NlFvVlTAvVORGuuAUVrolFjbJkisGa6VOkrProsssYsHa+ktPSza1Ga+5x+wv3yX5ZZePF+Dj6dtL7kfu3Lprf+UueQ3qlGbdq02nWX0zLzJdc9WbTmfk4qleb8wAr02ByR2665QsdpawOouFdPr6CiJn3zLrX+6M3ItBJne+Jr/Pa7De3TbjgUCHbcH27W3OPoZBrqQyrpdk/NgeenLdUr6kZJrx7bFSt1evaO+8ACHQIEm/VdrgkSsFbhFakxe7C2t38re4dhd/F9bu5u/imrzAvbT2RP4eW5N4rYzXcnJ17fhKu40USJ1gKWTJC0ieFJxTawI9jb/H45q5m29n9A78tevy9zosyzrP6xt1/t5QFdiN1R5/b6pKj29eqa+uK41bSFVKHdeBhzQJL/G8lXWUx0PFUbqt1uTvw0QZVPYPD5ooFolHCFePZMSFzqPu4c/t1RWp/ehSuSxsPsZdYX1sV1p+XFc68DXO/fpa8bN4fl2FRZHn1zNwPL4hKDUF7RvPlYXPb2L153FHoAJ6vHTmTgHcJZ27u2mvoj6hXJWCJ5arMjJPCjq6bD9ZWfjm8/r4lk690rMd/tagvd7Ve6nfVm9Kf76dCLr08DsapXJN+vWd8TX57yqv93oql5K910yqLPy7m4dM0F48eFXSVoY1mU0lfAbSK+31nqW1itnHkdCRXGuCI2zV1dkO9DcKzzZqq/b++DlxYaQrDdHl7oSF2HxvrHctFhEed5c6Hb36Ydu8rVxqYRJIVWShadQYf3gQ4Ved4ai3VoRAzfV2xY30Kiorv4Rt6axxlmBT9aBW6urPBJ/N3v0+ker9w5j3681WorSPIlBJbNJRur1al3c828rDY6rp72M/NpbY10tNO52/wY7ENzq53iFP1Er4fDzbLOHiTvwrafUJqH72Z9ef1NWvdjyZR0z4m0kLbeXqW3py/57Ed/TYRZRVyUrJuHqVtVrlXLktr6758rPKlZqqdg6rJKqVh+l1x0khTmfqFGOY2GIR70KiBovxgNs2l2KMY0Gl2244TthfMNaSOhl06q2Er1NwzeMaHmizauUZUSvb6rW9bq0mrZK+jvEuty38eukBzxtEfhZ0ozDI8yZ52jZvVk5iYd1CE4JO8iFCluet8nSkHipSw7smWS41ajqRzzXaMlqNZql7z7rWaNqXGUihZ03tT1uxq/WSRe4kqXusYln2jtvrV6ROz9myh6cm6RFuSB5ZZQo62KNrzc4aRlZafNxKTQ9LvwZDZmf41zKPat16heTX1VsBbNha3xRPu7tEn3X1IPPEIDZs34qxYXDsDftvw+RwOh9nv52aIu7vlP7x/K5499gVTUOLNx9PJogzd5LpxZm7yKzHmbvJbMSZJ5BRVZXME8ncKxnl8b5kCbhfFhM7dP8qXWq+W+avm9pk/7UMI5ETK6vvwSFYVauy2Tz0wTXcwWhQGYX9sf6cmpf4rXh3FIb4KuLJvARPJltUA44Pk/wA4o7A8bP1xLhpfy+D0N6hOGOuIttc3NEdwovMsKC7KmptqvWg05APJ4hovCpHSrKFmUfOYQ9LFbEexlXz5qr5lSO/9oYnbi2kkWuMm712cnfR04RApASAX8K8xp85yWznC3Pb+Yhy994XfuKhDf1QXEZJE3q3iKXptO8ILXuFuRbE21P/1BQyEQ3Uj9En4cV+lV/XIc3Zkviae/4qWriUMyH3yqJ4lNLiK3Al59Aihi4zqq9hVK8qr1HI0Pr9GEg3Hb1XQW+tT9g589W/GD3WhN1suR5lrWUh1Mgw8FoYqBFaVj/X7czCOE8FOSR+IziR+x5XZN7ANqCWYDgwtXZko2eRx+hpZVcCdyuilVb7JFSaqSik4SPS55uolBSh1CrFNyNFDglDOcxSntLwd65GVpEVko2Z4ZsH+LK1nhpTbx1rw9NPTuVywX2BNdR51oLeZqkjrkqh3dKbqgwvuaKs7UFpo0Z6oSTli4HV5g5bm5C9OJtkiFpbpsbOSEP6zplmvdrcL0WhBHgHNQpwF9Rt8A5F3VeYcm6TmsyXThebpsu1h5lpt6o248/xYscsT9x/JJvKU8Zje7qPby3bo1OcS7lci9FBkLKPhve3FE2+8iAHAMw3u8cSZZKhlPiwjxnJHI20bVx8x7BN43CiLnFcOVx48JOU/E7Sw7cV2fzISynxF+cUin1pVzSMYxp1QtDaV8/Jwp/DR9vcfncmNd/JpEjL3US8wOmQtbPIAcyLVHvXHOK55FN3PaGSyr0sv2yLJmzqCgjA07WZiCpLu40ZADySkm3csvUe9LeD6GWTE8gX8LGk+/qGk8m7rZ3YGjZ0JDxxJnj6FkJLdgsn13JSCmV3TNwT+qiy7BlBwu/F/2LbJjW8UnWD+L1ym0Ll5lJKJ+YEW1DDEIj12Hcg8z7YllGXUEtElMWbr1pNP+Pvc9RpKzk6YlA+wFTeyrL5foSeRHhaEIYmsiZRdmisgfJS1UXzcZruc8Dbn5pPUGt3colF65NFlAxVj8ynUFrVIvNpNMhdWyG+NRr1L5vPFE3Rgnqcotnr7J8rmgV7VGs+XzSLe/0pyyEB16JZ2qZ988WidyxmQmu5fhVDjiY4gRH2v9u4Xx1Jwn1L3oO8vDIIOfwhkXlvJS4mnCBhhYKiuEyxpF1NGdBbGyiH3CQgKllSQ9JbIxbJGot1qbc2N+r6qSi/jS/TvQqcwzvCk920nr51S/Lxay+ZFTlvbaN7UdR3q29Ol2MS+QaDkbAlQjC+3D2iirDG089iYH1mgvQxRu9Arx74+9g9rEcO7RjX5ZbjeWJzE7nZnJ/vtPGXZq7fH6H6IOHxo4z/ZLYbys8HUgitkGAWQoolaz6MNigsUIvGeRtRe2zJHEZRQAnCwv6ofyVq4xDByWKSceOxtCb6lnKWGWUh5UUxGb8j6vgvQVwRbf2XIAaqubEypzXy/cucln0PqPthOEC3iK3Z4exNOiJkppIWuT7kLaGetCNTIKbUc0LGnjCCaXTn/6N6HU3c+IszR/+z9Gpu2A51ObfDQXQQdzs/k7Nymy4kw0GfiklG+uVlBo78ndLRxYrO65SFHF5ItD+Z3YuQ4lvh95H2txVx1TpHuaa1AWm9wpzOpXLGqzngSHky2WeFFYsX6hfp56V9FJIrK1SwMGkz/jbZ7L2oT+DJbsf5Dna0xOmB/fAEzn7e81meSXcPH5T7efzdAa4Oaxqy1a/lBqgjHYAqc+8QMN4CUIj7T1cnegNBCeThVaOc9UGbKK9Nt5kEU1ZwKsjnAyyQDIdkOKE2m8H5oIcfBI/6RdMNKRdZlkRtvcKMCB18jsUFgLW9odpJ+XwAVnIQ6veRN9SxXTKFo6nYYkyuJXVJs4xPgh3Yg5HkSy77k2gW6Usd5PwH7DkFrQ5n/dFwmyHMR7OpfNobYOHSVU1F5p+KXjGhviJbH/2WWxg3QN9FsIjT3+nvDVELdavgghj5gpfP0ATylaJXOIj0CEeimdv2S/Sw4dpQCoyyEPd84u0WAk25XZ5kbH8DaSWLrACKBTdOW1RbU2FRUmNHgS3JUCeSQlvGiRHeuVaMATG2ecYC7r+gmmfFOOrdxpplPBR5EOrVXnHyvRQFKqic/ACqysuL6Lqg+JGrS4R+wcuJcLQS2h3plyU3EhmzsaUH5ulUmjrOno0ih5b8czmA0ptNPWolezBJo+AfFY11hBCL4tm9iElft9N4D09xsd2S6UvYIcnlem3ii5uERdYwhVUiTQDzc8AUuSB+DVuf+CpqTxZGk9PNQZPQE8YXLKKXhEp6nJZmgJ4EdjJ5PQLLkJKzOzFh1rl8IdqHWrmXnmYc0VUQIgaDbF5u45TkcK4gn1CosKZE5sULXlFy3TBi0mFiFryFuIUecMHCis5cUunqFxhayJy0359eiM5GKkr13uKKluBXrTpVlLhyBXPJSu72JT3pDTGl9cC+qWh6CLWHuDpt3WV7EvhjX9WKAbLr6pU0txlw8KsRplwG2Gl3OZ+uC27egiGtu4mCzapjVVwpVWrs+s+Br3QXEkBFPiq02VmzO7XFBF7bwPO3pcCXEnipCo2kzWNZeMLgMsFEeqU7TtB1K3o87moSKz4x19m0tl7dSOGZ1k7PlzQ4QwkI1Umla9KibpsNRy1t50xS5KLHadG1aVF1jtx12YKEM84zUiiCgZru4W64j0D7ernGGf16s9wq1QV4YwxMWrsphuiY3CwCqaylxbestturcEdohiCc7tAt5kPiglIXd0ZBtzpQk52PAh4aA9rltPO26DZXFJy7D5eZ/jn4wyrSwlq7W79f9k7CM4FPQJmePWJef63NsZPypZgr3fPbD8KzK6JkqOnIvEIsY1qInRrb6QEGUDlt9/9fmNcAAOz9B5hVxdbvjVZ3QwNNkCQ5NDRZckYJSxRERBADoKAkCSogigHzhO5ec5JzRjJIzjkuchS6AQHJSSRnkOz9/0etxVjud5/znfPc9z7PPd/ZvTf27PmbY9SoUaOqRlWtEBERaaJMugNHFu5Ol76fqWpMhjc+++yLhp+X++zzV15/8etKVVq/V65Z+Q5NTRaT1UQ8a3KbvKZARMQz4zJGRmRanSNKZFKYlPhPighjIk2KiJQvf9r2y87tunxhoiNS/2SMScf/4Mf+ijBSpilgUkSmfKN1h3ax5f7tg1n432fwtImU5wvy+Ve7fNHu8y6tO8U26tLpm9iXWnf5qnU3E23+h9L9I6AAdlJDBEpMnzJpdNL8pJWxSQuT+yQtSo5PWpW0PGlh0vzknsl9Y5N7JK1NWkD+fGzSRFwvTFoC0Cc2aXHSquQBsUnLwBYkrU3uacWS+yQnxiYn4sFlyQOSliQtjE0aHFIbpixpeWyp2OR+kFobm7QmaUksr6CwLxDu4ClIQzVuL5Hba3A9IDbZxa8eKL9vWME0BjK02MPTq/mU2Jjs4HciRNcmLcK/1bA52YEhi5KWlGSpEFoOUZQB0yFky4AiGJ+0Gv9diltrQ+Wtgzpbfdyg4ELcQHEUgSQrBwgZ3APEs8tQXjwMWMJyUO5KEViHskShGJwcL4KsbXLf0rFJE/CEOCt5AJ5eA9dB2hYtt+EfFP1fPAYd62gqbi0Q+xai5P7JPWOTE9Aqy1AkfdKDz8LieHpvMZ6n2oXJfZP7B61B4SuoC1rgXRRVkmWJn3D335cAGTGxBwphu6/Cv0W4/pcCFwDMB1hLNbA7Hg8sT+5fGvERDAQpGhdodNQKOlejZWEiW5yK5qtv5/MXak2p1bCRcCUA3GW9hEiEHPRAJZ6R2tBIaANZjvIZUmtLIlZEyQIW1QM+QbSFBMUoKnVwV5qZ8svRMD2lYWACmkJqgweWhe4F+wXL7wEjUfZaCCWWji2Huk7Ak2IhtDi0AHVjYdQEQTyoAf+UsVj4lGL4jXpMxC+pEsXW4P5SCM9na0CEZdNt/ygInSHxn4rgsuTEkiwYDQFTUTB7wnzegbb/gSnqYTzIHghnwm94NhYP4T+oKZ5CKctQllU7vyRKBnVwdzH8jAL+TVSuiIW2lXicTRcsMWk5XDYYDQPZJTAKYc/mhoTWPwyybPwxH5pXQy/Lw/Dzb/1ToWypymURYSgNHCXBGbGQDDOAFv3TYXAM9DFG1khfHYdr9HwQhEl4Ddnw8JTYCQhNyf3wJE1Cz4D8ClQCZQLir6fhC6ciEB38V/omFLFIVAJumo/7eBqu5MAEi+hsltkTYAm8gcfwkDQS/0C7sTvTDnL4AwZAG+yFeXj2349UqNVY/M04Q0WA8WzI19Lp4C0Iwj3/Usxi6FkOIsUkDygJvawiHgsaQL9TB+oJs/EkO+G/K2E1/tT6QTH8B02wXQqELhQHr0Itao8rcSEDQZ4HSVoBM//dwFk6tjwqOB63FuN/bA6aAb9JCcHncQNNx9lgLW7hBqIYmhnm83FTSpsIZk2GWbxkhSTAKPCPngcjEcnJfeGRdbiWQQXe4LCPSzZrsHT83ZfeCnUw2AEMSTyJSxiD4IE/aYrV4Udbws24ZhwCwQkgsbAFNv6L39EFoBoxjYrDPYzfOfZpmCVOhxTsR1H/ZiKAI1xYtRBGYuTHbT4VtA3Rx0LoBG0dFJyA6jp4PGQaxFECjVqD/3HsRf0ZDzQPv9biLiq0AA/CRpqCMdUWU5IPoSEB8ASqYm/DdujDfYiggZPjS8dWQL1GQnABilkEveJaisDTwQ61DmglnoemMSwHCjCo0JHyFPVwQqRb4HC4LR6mxovGxeJ7aSrck6kDD0IGj+IR2ECtcgO9CbJ8XlSH7qFY3EX1aZU2ETQi4nF3ZUgv/EBzg1WhZbbCKJ1Ci+S/aIXSNqBXQyfKYmZj5e1wso5K8NR/bVE4go0Os2mhbX2XJcDlsaw4/DUA3QD2xUK+B5pzPmK6L3SjDNgRHsuoSR/oXQ6jnrr8X2qMB3AT4xBUod0Zh+ghwcdoBh5E9VFl/B92ogA80BfzSHxII+ab5F6ACClY3T8WTzBYkMCEtEEO91Ag3MiSoBOBJ3ayYktIYZI0DGxZWzq2YunYpImw048bqB/+y1LwF7QljQ+zjR7TlJUjDx6Gf/5LU0J3yBTq+adWKPkfNAfsGI+/lgGz4gNCleZz0A6nsQQUKIGAv1kECkMzMaNldVBVVYixFDf4/1XJ/fFYX/4dCg54AbMUG4vl6UiD2mBKR1PBIFQSj/WCAYysAbBvDkVxO1gKAWoP6yAUnBOCdbdS7LIIfWiCq+EFuB0jK+ZoKw8r/2EPfqEkUNwRp/EOLWCLBzMRmIZqiE5bc4QtSH+oC7LSsZVg6hRUKjy/kMQeBUITawtbWQxrPBLtGxwZEOL/lOJYjzLWiadYQ9YKvmCVUdmwNucjoUiRKGaN8Sf71jpc4k/UFMXBV/+18VEKSoBFNjThNfwl1sELeHwNZpb+iD2Uzt6P1pbEeRCuUQ+oCMYKTEl2UROKoTbA7EnolyVjcRP11EcXxhYUw1bANNyELIxakzygIB9lpTEEU03waYgGaxps4X91FTTFQtG/OFhKZjGLbdVgH0MDj1o1ZFBNghZgrf+Lb9CglVHXyShJjIHavuRcQXgQEDeFJDFsUScfhM/R4TDOTAw9Gqw6ZOELWIgY+5+VmjQMf8MDsbiJh+ETFG0jkxktpqCgQpFFPXriHgc8Dk6w6r9qgMPmo+w1eJLNuARUmhrPsPFRLXgzaXUpcFRDJKjRwVN2yfqvZaJ1oWMV/sBz1BQsdzz+QqCiTZ9mLOugSEYQVDDUOKKDUv+1+tCNCgfVogA8jZAX+aBCmehtz8OSDv2auTWfgqd0IcWMCFSqAH0YRjlb8Aa6ER6HKSgZhdFAYFlH4WpF6dgqqMhkaP/HpAIPUj1swaP/MBky6MxwEvwmf7Kv+OVvK4ehpA8EQ6pgTVA3LO8r5UMbLKDSf6OfETEHkmgZmr8WI7R4BvrFH1ICbmPfIZYP2eGJXRULC/qJwY9LVBUDhEBO6v2DHQLOc3ABv6GcwXgE2wFoP0YyLcL/cQ/68ShMpUFoExZlOxIwIFQgZmiD9Db8s8Mvpg/ottkTLmk1JkBRTbsZdwwlVI7/6Pz/lk0bUbmQKJS1LIYt4B5chqwivKMi7ktSKR4ORh6HEXJRBSJDOLShBIymcB4eZgnSeNCOyqIU3IAC1JjFyYAFFxCzqekTVFkKQBPgCTEBGlBJqoYkXUDN7BNoWpn4JlqXoV9DH5XZgjHfUNAWzJEBdRLdKAVGD+DTHApRWUD+RuGMs3/piPAaJK1jbCxAZ9DjJQHQzLglSnGTRVEPdDztVChWbsBc0OBMGIoN0YxUgTpRRWxFmGfjjYktYIolGnMtsnijru26xL7Vuks382a7Dl92av254R3eePPTzq27lArdLRHx/9Odwpj/lqDDM4wUhDQqjfL7hhVMYyBDi+lptB4GXN6G6/6zU/hfp3RJ7WEbnqdaJNpIQ6w1KPy/BCpcIPb/j0qAjJiICRh1hUn4xwHyXwr8v36nMCbmv2urMCZpIn5JnSiGzASewSzA5oAIC6ff/lEQegOmqXBF8Nl/tgoxoJKjJDgjFpJhBtCifzoMjoE+BondahmHa3R9EMRJeA3Z8vCU2AkITeFpPuT/s1XIPTpk6lD5ryWsxp9aPyiG/6AJtkuB0IXi4FWoRe1xJS5kIMjzIFj/IOB591/aD53wv2Wv8F96IC9ZI4kwCvyj68FKhDL3lqAkfH+FtyED/bZ0/N2X7gr1MNgBDEk8iUsYg+iBQ2mK1SFLIYQkq4NyYmEMSSxsQV3+xfHoA1CNoEbF4R8G8Bz7NMwSr0MK9qOofzMVwBH/R+wVxsT872wWxvxnsxB6UG4sLtj8sp0Bn8ey4vAXth4ghl6JPoD2xKoWHV7KgB3hwYya/J+5WRgTU7F0bNJEGMqdPFQQ/2Ux+Ct5QMx/dgu5V8cOC2/AvjkUxe1gKQSoPayDUHBaCNbdSrHTIvahCb6GF+B3jK2Ypq08rPyHPfiFkkBxR5zGO7SATR5MRmAaqiE6bc0RtyDcswgytGkl2DoFtQrPMSS7R4lQxerCWJaT3DcGwwU6E4tH0QmA4VIY7mNRyDpxFavIasEZrDNqG9bofCQUKhLHrDL+ZO9ah0v8iarCw3DWf219lIISYJENTrgNf8E6NB6K+799uzAm5v+b/ULO18FHg3WHLJwBExFl/5Ni/8tuH5SwSpCStBbTUFChyKIi/9kvlKfgKV1OMSsClSpAHwZSThi8gX6Ex2EKSkZhNBBYVlO4WoFm/9/fMER3hpfgOPmTveU/G4ZSIGYQ6LYpFC5pNSZBUU27GXiMJVSO/+j9/5a9G1G5kCiUuSyGLeD/2TBk2U97IrwGSesYGwvQGfR4SQA0M26JUtxkUdQDHU97FYqVGzAXNDgZhmJDNCNboE5UETsSJnJF5hT/+z/mPz//Z/ygrf6XfvDof37+j/9BQ/6v/ODJ/5f/oJL/gx/A//z8+x945x8/uPV/1w/q/O9/wP5v+EFN/x9+8ND/XT+o8//4JyqiXIpiP7XvNM+EnbTW/rTTh/9yzCq3dkSUMwmRJjHSmHQ5IkyMiTRpTCqTmm8S+c8f/4t/mD8jIzxjevcyAS+yYoSJNytbRnqBWZFRJgVOvk+mwn/KpjTRFSCWYI6Nj/Scgz2jcPNkGK4Q7Y8AT3SuvgLZnIlRCUBh3B8RfSj4wLpIz5fbi8JpesewBw5FRM+IxAN+31+58UDRRD4QrmFGZPTD4ANNYUKbnlF+Y0qGPfAwMnpXlH1gSGSiGf6QD4QXsSsq+kjwgT2RhnRKGD0SFX2U1J3wMGWka4r14QPhBhyNik5IYR+IQx0/8KJcYzKEPZCQIvpQ8IEX8cCH3/CBcAsPpYientI+0BJVONqRD9QPe2B6yujbwQd+iPTM3i58ILwKt1NGr4+2D4zBAwd+4gP+sAfWR0cPSGUfWAE39svGB8KrOSBV9I7gAwfhBNANYXRHquidQXoHThg6lA+EO2FnqugbfMBLepwG+i/15gNPwh64kSp6U2r7QA7UMWvzKMRWuJc2pY7ul8Y+UBRe+qEyH8gb9kC/NNF7gw9UhoWg4T7cmyZ6X5DWgYVF5IEXwh7Ylyb6SvCBt2Gh+xMfCHfylTTRgRj7QFs8UNzhA++GPRCIiR6Y1j7wOavg8YHwVhiYNvpU8IEesKFQEz7wddgDp9JGu+nsAwNtFcLbyE0X7QXp+Ei/eeDjA8PCHvDSRY8MPjAXrXziQz4Q3ogj00WfCT6wBlWo+zkfWBT2wJl00fPT2wd24YEvPuED4Q09P330g+ADR2CDG8sHksMeeJA+2stgH7hoqxAeBl6G6F5Beh/iibf5wLWwB3pliJ7EB3qd/zEFDJgkVQiPk0kZoi/ZB56kRR2nOlG9jBMd9sClDNGrnpEHfsyCVmj8OR74RyCteibayygPPMkFCyH+bBj1Mkb3svTHgpGuM/49PPCPMOuVMXqWfeBJcRiQ6kM84BQKe2BWxuh79oEfy8GAFd/jgX+E4r2M0dsyyQNPqqKOd1vjAadC2APbMkUPyiwP/OjDiHS3HR74R6wOyhw9xj7w5BVbhdphdEzm6LGW/tgIYZYhBx74RySPzRy9wj7wpAkMyObiAadx2AMrMkf3yyIP/PgB6vhWJzzwj1DvlyX6sH3gSTu0Y48ueMBpFfbA4SzR1+wDP3ZGb53IIv7RF65lid6QVR548gUeaOzgAefTsAc2ZI0e9Kw88OP3sCFrWzzwj84y6NnoI/aBJ/GwIcU+POD8GPbAkWejbz1roo4+G4FJi7MTWSxmpB+NaZYGs1lEZE9j4pVEgPgqkURGxpuRnyqJBDE1SKIiE8ztjEqion8wJoYkBUiLykpSUKY2SUqQywOVpATxLSKJRvMuTqkkGtqcCySpQIoVU5KKMnEkqUGKNFaSmqQ+SRqQCT8pSQMS6EqSAiRhkZIYEGtbBMiuk0rSglgfxMCpxaOVpCPJTZIWJEcuJelJnieJAqlUVkkG1Md6Jx3IgGpKnqFMKpL0INkaKMkIYn2dAaRVGyWZQJyaJBEgm7sryQxirY4E8foryQJitT0DsneKkqy0rRAJrc42T8mzJGJ1RpCuy5VkgzZfXRJa3W6PkuwgtpwUIPP+UJKDRHydCeStR0pygjilSWLQT3elVpILxPo6ZaTrbMysJDeJxE4UZLIUVJLnqdWZQQJFlOSFjHmbJDXI4vJK8oHY2MmCct6sqSQ/iFOGhOU8qack9mk5WUFmva6kAGR8eUgioG1WUyUFSaR9MkCmXxslcSC2TdNDZl1nJYVArEfhHedsdyWFQax3WJ+jPZUUIalPkgYy34bFQVGQUF9wnW5jlBQDse1DX2+epqQ4iPX1syjn2aVKSoCYYiT0zg8BJc899Q5lSmxWUvKpDGpqBofFTikSqSk9uuywktIg1qNsn2VnlZQBse2TCTJtrykpSyJRxZqmfKCkHIitabZIw5Tc3q6A24H6vJ0dA2KrL5RUBPH1IskRGW+8EUoqoZrOCpKcHNzSKKkMGQdrBBORCyTjm0qqgJjCJBxEu09RUhXarNNyg5zcrqQaiHORJA8Gqq9SKXme2iqS5AXZUl7JCyBOWZJ8ICPfV1KdRNyZH2R0opIaJKlJYkF2zVRSk6QOSRTI4ENKasE2a3UBkLqXlPhAnFdJOLTUiFDyIoiVKQgyIkZJbRDnPkkcSOs8Sl4CMadJ8oC8VUrJy7DN+iAK5GFtJXUoI+UUAnmngZK6lHmZpDBI3rZKXgFx8pNQ29tfK6n3VFscyFxHyaskT22bMEhJfWiztuUCqfeLktdICpMUATm9SkkDEgnd/CD5kpW8DmLbh+UsO6OkIYgtJwqk5X0ljWibWJ0HHaFFWCu88VQmL0jZdEoag9jYKYpu9Uc2JW+SyKBTDDJHY5W8xXKukeSDzMDiSt6mjMRbHGQGVlDyDmXEb4VB0lRX0oQy0gq5oK1wXSVNQUJ+c83nbyhpRiJ+KwSSsbmSd0mktWnbF+2VvAdibUNNnS+6KmlOIjWNgkynb5W0oNXi0eIgOX9S8j5kApVJWE7q3ko+ALHl5EY5qYcqaQlttm/HQWbmWCWtQKx3WNO4qUpaQ5utaRTI+nlK2lAmhgTtY7osVtKWJNQ+ToE1Sj6ENmsb4sAU3KqkHYnEAWPnQFgktgexsRMHMvOokg4sR6zODhL3h5KOkLHjaBTKuX9TyUeUEatRjpn2l5KPIWPLiUL6Gz6GfPJUpgTWF0OilHSiTBGSfCBrUyvpDGJr+hyy7bXplXQh2UpSGDKBZ5V8SiKRWBKrhN25lHQl+ZqEtnUsoOSzp7ZhceSsjVPyOWRshKAcUzmsl3QDseXEwbaXSiv5gtqCHvV8TnklX0LGerQUtH1STclXJNVIUE7gSk0lX4PYckrDtocvKekOYtKRFAJZUE/JNyTSf/KAtG2o5FsSaZ8cIL++peQ7WG3nRsiY+U2VfP9UBh41ud5X8gPIU48GFrVV8iO0WY+WgQ9iwnrwT5DxSWvDB06VT5Q4EUTViHJCaGVY5+5BZOdn2l39S0U9I1CUNRyuM/m/URQvUuK7srCv5I+KEihl0hDBdNPDUZQoSGwvhN1W7PHZ+9jUgx+CXu1pnE6KXEHioqjIeOO0VeSptligN+Yq6kWp0CSdgAxXUW+VygOUp5miPpSyZcUBrQ5T2FekJPKYxSTcVNRPpAoTMVX4qqCi/kTWjOJA1d9QNIDIhn8hoHvfKRpIZL3BfMWboWgQke22RYF6JysaLCg4SieajvcVDRHjpcolMCVmiFY0lFJGYobz6MpcioYJEm8UA2pTVtFwUSgjaEmg7S8qGkEpG7hUWLaFopFEVmE5oEOfKRpF5OtOxPSkcV9Fo4msN6gw52RFYwSJwtxA65crGksLQ3MJ9gJ2KPqZyDYl0427hxWNE4XB2cRvyl9XNF6kYojKA/UNc+8ESjmSrpfCOH8tlaKJRLbfcTi/k1nRJCJrfAmg7XkVTRYkjYJkwOQvpmgKke13nD2fL69oKi0MVRmroOcVTSOyVY4FeuclRb+IQgnRKCjc0lDRdJGKIYKFTre3FM2glLWQVd7+vqKZRLbKNH5PR0WziKzxJSF18XNFswVJ2CD7MPkcRXMEBQPbdZ7trWiuWog8x9nQX9E8Stmw4SRfZLSi+US2E0GhKTpF0QJVCPea/dMVLSSy7qU3vlygaBEVWm+gys7OVYoWE9kql4PCPzcrWkJkY55ScfsULSWyUnCUqXVM0TJB4igY73x+UdFyWmiNp4X5rylaQSlrIeLQ+TIselcKkjgshpEcg9FTtEoUSjfHVOP8GDZurKaUTxRiQgnMSqtoDZEjEwqmVVM6o6K1RHZe5YRyNquidUS2ypg1AjdyKgqIGVKvWExe9fIoWi9Swej1TERBRRtUChY6TQsp2ihSYmF+lPV7MUWbBMm6AnOocUop2kwUCmwvEFlB0RYia3x5lJWxqqKtgmRwoPFTayjaJkiMj0NZH4T1yu1ivHTYIlA4+hVFOygVGqM850IDRTtFSqqMRND4GinaJVLSXsgEzSdvK/qVyHYHpIK+T95VtFuQ5ILwoencWtEeQeJDmOG71k5RkpqRG46q01FRMlGoE3nO8E6K9lKhtRDHOc76zxTtI7IjAELUt+YrRfup0IYoHGWyf6foN0pZR1UAah82pBwQqfRENH5jT0UHBcUQVZQUZZ29f0i0STcpzBTlPUW/E9nW567IvYaKDlObzaByAtXbqeiISIkDmVFsY6QF0VEim1EUBSrrKDpGZF1RCujyHkXHiWx8ohObdFkVnSCyg2F2oLEvKjpJZBPnwkA3uys6RWTrxYyi1URFp1kv66XyQFkXKzojUhLwpYBWnlR0lshayKm8I8eTIPqDyLo3B1BG9vEgOseyQj70m9HPKfqTUiEf+s1kdq4gOk9kfcitgxpvKrpAZPt4LNCBDxVdFFSHiAnACoZTEF2iGbbKTFGyJCq6TCnrXm6hHBmj6ApRyId+k3m+oquqMA6o0wpF1wRJ96ejPtih6DoVWkexytFh7r0hqDARE5sJtxXdFCR9IT8mlKspFN0ist7g1PB8BkW3iWxZnGsy5FR0RywU4zFROqvyKrpLZPt4eZT1fhFFf1GhjQ2W5S+n6B6RLYsK36uu6L4qhJR59LKiByrFBXtSI0UPieyKnQoTwjrsI1UYB6kibRU9JrKexxxqxn+i6AkV2gEqJ9CdLxX9TWTjsBLKuv+jIieSaDoRyzrXT1GPyKdlRQG1HK6op6AYospA6cIiKp4KfV2IkMs5V39RlEBko5dbHq0WKUoUhTJOUirLakV+leImTuJWRS6RXaQgRTFf7FXkEdnApnsHHFXUi2VZ9zLYyv2hqLdIpSZCUzo/XFXUh8g2JXIep/F9RX2JbM6DacipHaWonyDxPEbywKZUivrTDOtDzhq5YxQNECTeQGJjvsygaCAV+qSVsVj3TcqiaBCRtRC5gS9dTkWDiUIjm2cG5FM0hMhKYcoz9+MUDRUkZXHyKlRc0TBBpYkqAXUrrWg4kY0oVNl3oZKiEVIvqTLKCtSqqmgkpWxZSAACH9dQNIroaQJgPqmtaLQgSQCY83Sqr2iMIAmAKmiUb8O63lhBElG0sMI7in5WC5kb9GqqaByRDRv40DncXNF4KrQ+zAv0cmtFE4hsN2e9xrVXNFGQ1Atp3j/68iRBqYmYldXpqmiyIDEeOxvmyZeKptDCpzsbvje7K5oqKIYIO0aB6d8qmkaFdnZAvQLvOYp+EST1gsLApkRF01VhbKTx+/7Kbe/PoIg1Lwp5SNkuimaqSO7IeHM+QtEsIuvb8kCmr6LZojA4JieYBvkVzSGy5vEY5vKXiuaqQkrdW6lonkrxIGZXakXziWxj5QYaV0HRAlUYB1SoiaKFRHacLAGUuruiRVRoozonUKuJihYTOTIyVAL6fLOiJYKmE3HmHRzm3qVaVhRQQiZFywTFEHGWP55L0XJRKH2B6NkyilYoosIGLylaqQq5pTCtgaJVIiWNwp2N+20UraaUdRSzl+pfKFojUhIbpYHy91G0lsiuvJhR/PWzonWCpL2YUYxfpCggqDARpaptU7RekEgxYTt1TNEGsXAFES385IqijZSyFnKuKRqpaBORzjXZ0ivaTGR9yLmmXHZFW6Qs8Qbnmn1h0btVpFITca7JX1zRNiJrPOeaWxUUbScKzTWw8EVFOwRJRGG+dp6rr2gnzbBNiTzEOdRQ0S6Rkpjn+U2/dxX9SmTdiz0Kc7itot1EduzKAYWHOyvaw7Kse1mv8WG9MolStl5IvZxujqJkIhtRkDI/h8XGXiIrRQs/G65onyCxkN5YO0HRfiLrDTSls2GGot+IbFMy2ViwWNEBIhsAyJRMXEDRQUHTiSpA6pk9ig6xyqH1mmt27FP0uyDxfDagrw8pOkyF9hybUrnOKjqiUgWBtp5XdJQodO7qmtk3FB0jsoMDfVj4gaLjLMv6kLPh92GBfYLIVhmDvK9SakUnRaGYwdmwT4yiU0Q2sOOg8GgGRaeJrBmY8kzOLIrOSFkSNpDy5cyh6KxKIdkIvJNH0R+UsskGZ/kpBRSdI7JdLwpmLCyi6E9RGEPEw4s0xRWdFynpRNmhcFIZRReI7HqTCvtVVnRRFSK/MmerKrokUtWIUOVA+5qKLhPZKsOHpsNLiq5QofUhUGDZK4quKkJu4KQOG3uvicLURCxr7huKrguSssqhrHnvKLpBFNrN83yvt1B0k8j6kI5q3lrRLUHiKHgjcLuDotu00HoDuZzvtY8V3aGUnfVgoe+rTxXdJbIWoiznqy8U/SUoVJYv43eK7mlZTFHa/6DoPqVsYEMqkNRT0QOVipMUpam9/1DuS6TxNCf2GUWPVFvJyHiTVFHRYyJrXtnIBJMihaInojANURRQPUZaEP0tSGzIDzS/oSInigqD7Zhgso5S1EOQeIlSOS4o6ilIpKKQNqzNqSg+6mlZzEM+L6kogVK2RbjBsoOBEUSJRDbgcwDF9lPkp0I7kjN7qThbkUspR0bXXEB1kxR5RHZM5nnTt/cV9SKyQw0PeiZwZAii3kTWwnxADYop6kNkvREH9Hp1RX1poW1KbinUel1RP0rZQSMK6Ls2ivqLlDiK2ctvnygaQGT7XR6gHIy0IBooCiU28gIFBisaRGTnUBpffLqiwYLEeO7zlFitaIigYFP6zcbdiobSDGshU6+8hxQNEymZKEsBdb2qaDhRaBRynRqRikYQWTO4b1AznaKRRNbzmA3N0GyKRhHZ9sLM66QsqGg0kW3lIkBvllQ0RpB4nqce1ysrGisouNZwnbdrK/pZkLi3LFCxsKYcJ95IQxQFC5MbKxovSByFWd782ETRBCq0s3wcUGcOa0E0UaQkbGCGOfeRokmUsmYgUzIrv1A0mci2Ml8v0eUnRVOIbCeKgtTL/RRNlbLEQiSH5sYgRdOIbLCVgcLBoxX9IgqlUZhtXpmiaDqRHa7ZKKnnKZpBZBuFAfDOCkUziWwAxEFhk42KZtEM6w00pdmzU9FsStmmjALqfEDRHJGKIWKKkuuIorlEmqL8fUbRPCJbFj3f/bKi+VKWeD4KqMFfihaIlJTF6L3/UNFCkRJHYVJ2ikYpWkRkuwOnvJmpFS0msj7ENGSWp1e0RJCM89jnDzTOqmipINncxlzjvJ5T0TK1ECcsZkpuRctFKthhvUDVAopWEFkLscx3VjF7CaKVRLbrwQzfFyUVrRIkZsShrK7lFK0WM8S9WOY7syspWkMp2/WQ8zgfvKBoLZGNXnjD92pYr1xHZL0RhbLO1FMUkLKkyjS+2muK1ouUGA8p3803FG1QKTgqUO8tRRtFShyFWd451kzRJiIbG7mAXvlA0WZBhYnQyqZLW0VbiGwrY4ct8F1HRVvFDNlho6N+66RoG6XUUe7nirYTqaM+/0bRDiJ1VDpH0U4pS6pcRvKQIfb+Lor4JHRzIQ95gw4Mol+JbKWKRsab7vUV7Sayrc8XnFy/oGiPFlQiMsG0yqUoiVJGymKykbGzomQiOzJwFyXrGkV7qdAOUEw2MkYo2kdky+ILXTdlUbSfCm1jcYMlay1FvxHZIZRSMvAG0QEiK8W0ofIwRQeJbDiVBnq0QdEhIrtvUAFo9nlFv4uFsiirGsk3eqW0949SJFCI96vB7RNeVXRMRARx8+rkFUXHBUl9n4fbAy8qOkGFzotEmYBG3lV0UpCMn9Hwbas3FJ2iwtBbJ5A0DlN0mlKh904kmJf/VHRGUH2iLKhvnoKKzhLZV1i/ALSjgaI/iGxIVwd671tF5wS9RZQeKHqmoj8FSX9MBzT6gKLzRPbdEDFA0x8quiBI4pNvu9iYSdFFQU/fd3GyqKJL9IZ1bxqg58spukwp+0p4SpV8TdEVlcoM5H9b0VVKhd5D4DddOim6RmR9yLJmxSu6TmTLigH6+WdFN4hsvTIB9V2g6CaRbWWWlbxF0S0iWxa9keG4otuCxBvVgZ67regOUahRXMdEK7orKNgorlM4k6K/iEKN4pqPcim6J0iMTwupVoUU3RckZnDa/bSMogfq3hpAeSoqekipwOtELwAdrqXoEZENNhhvaoa112NBYnw0UNsmip6wrFB3cI1pqehvSoW6g+vU+kiRk4KoPhHLOv6Foh5EtqxIoChHUU9FNWVkiLP3E3jfqc37XBgmfawokciOTnkj4830Nor8RHZM49B6j40VRK4gGVq5jnvE+gaRJ0iS/1igVhMV9RIkwx2Xk5cfKeqdAl6yLcIz9BJs/SDqQynrdi7WVtZU1JfIkcVaOaBdYcb3I7LbAmWA1o5Q1F9QcMpINMXWKxpAZOvFvesSFxQNFDSdKA5R3SWzokFi/GkiLrtaxSkaTGQnGuy5mskVFQ0RhRK6UUCD6ykaSinrjRJAlxsrGkYpI8ZTamR7RcNViguom58qGkEpm49xn/xxoqKRRDaX4H5yxdGKRlFhaJnsN2tnKBotUuJ57l1vXaVoDFFoiveb1kmKxhLZKtPCN84q+pnIWshT/uYPFI0jsgHA5cmg1IrGE9m8pTT6QodsiiYQ2QmU3X9ffkUTWS/rKOzWGqeQokmUcqQHlUJZM8oomkxkLWSGP+95RVOIbCfCprGJr6NoKssK+dA19V5XNI1SIR+6ToMmin4hsj7E7rozqpWi6US2f2EphExD0QxBEr3whnOum6KZRNYbXIS++YOiWbRQF6EPeyiaLUgcxRX0dL+iOVQY6suuk3OworkqhaWrs2W4onmUsktXGO8smahoPpE1PjfKWjpL0QIqtJ0oDlJNFytaSGS7HhrFSVqtaBEV2kah1JStiharFM3IGxaiSyhlzYiCGfkOK1oqUjFE9MbO44qWidRTb1S/qGi5SnEtfOGqohWU8klfRgCYl+8rWklkA4BrkG0RilYR2bLikKv3SKVotZQl9cKSIbAmraI1IiXdnAuNnRkVrSWyZWGD2tx8VtE6QZIAYDVhXsytKCBIeiUWNeZWrKL1gsTz2P417xdRtIEWhprSC8wpoWgjkTUeZvgulla0SRSKGVFA1Soq2ixSMUTYrQ0MqKxoi0iJe7HeCax8QdFWIjtu8LX3U2sr2kaFoQ7rGa+uou2UcoId1vPFvKZoB5H1IXaGA2XfULSTKBRRnin3jqJdLMsaj3Wc4zZV9Kuga0RQ6DvVXNFuVYgqO6daKdpDZKvMsEnXXlESkQ0bNIpv8yeKklmWbRRImWxdFe1VqTjUa/eXivZRyrZXFBSm/VbRfkExRIiNQOvvFf1GhTY24oB29lB0QKSeKkztV3RQkCiMlcTmRXv/ELVZ80pH8lBe0e9EdsTjcvIQB94gOqzaSgBNH6noiEiJA3m8noKzRhAdFSSWFwOaQlcE0TFRKI3FFwf6Vik6Tik7azDZWJpG0Qki2465gZaXU3SSCm2LxAHVfFvRKSLrJSos+JWi06qwLFChcYrOiFQaoiigLfMVnRUUQ8SXFH67UdEfolBmwzxAsdcVnSOy3uBUvjy9oj+JbJXzAG2MU3SeyEqVAfqkmqILRD7xfHag2IaKLgrqRcScZ+dHii6p8TzyLswpL4guU8rGBqVS91Z0RaUqA7UZougqpUKv8vKbonMUXSOyCosBxWxSdF0USgBQ6rPfFN1QqeJAb19WdJPIzobcC80ZoegWkR2uMRs6FdMqus2ybGwgNzAHsii6I1KSG3A2LJhX0V0i6/kqQHeLKvqLyFqIyct0rKDoHsuyjsJEaZ6tqui+SEmwwQznWQ6hQfRAkJgRB6k2ryl6KAolejmHHnlL0SOREjNKQGGDlooeExmJDW68TwoLgCeCgtOQ60R/qehvQVJl+vDwT4qclDDD+pAWfu8p6kGkFt4ZqKhnSii0FvKgvP1YRfEilZ4oClIFJipKEBRDxIPy3VMVJVJhoD4RpT5boMivUjDe5FuqyCWyxjNHXbdWkUeFtusxojZvV9SLyEYU85CT+xT1JvKF3GteOK6oD5F1LxWOv6CoL5FVWBIKV95S1E+Q7BnypVxfh43Y/Wl8aCDyfDsjFQ0QFEOEGSpQIKWigUS2yphQnM/TKBrEsmwr8yVqRzMoGkwUWsB6gcpZFQ0RFIxez1TJqWioIIlezIa+Y2GdaJggCQAYb4aHjWzDaeFT453LhRWNILLGY5/cV6OEopFUGGovzwS43AiiUUTWvWVg/K8VFY0mCrWXZx5WUzSGyLYXjDdzaikaS2SNLw2F7eoo+pkoNFd6gdz1FY2j8bZeNP7zBorGU8oaD/eaO40VTSCy7kVi47vTRNFEUShDJbaaTaPmiiaJlIQNvBE431rRZEHiDZjh3G2vaAqRNQOx4fumk6KpRDY2kCn5znymaJog8SGq7MvwtaJfxEKpciFJNlra+9NFRHybE8mGw4KCaAaRI5lhuch4mzQG0Uyi0EZEgimWXtEsQWIDN1getVQ0m8g6sBKQma9ojqDpRHGYlBdmUTRXLJexixnF8EqK5hHZIOQbGPM0UzRfFMqqPArowU+KFlDKuqIE0Fyu8oJoIaWMGE+p6NWKFqlULaCVuxUtplSgEJEP6OpfipYoKoCJclBGRUup0H6Mw4tAz+VRtEylfECbyyparogJQEsGfBCtoEJrId9HuaKhopWUskEYCxT7kaJVgqQHcY9Cdt6CaDVRKDaQogxXtIbIxkYc0P7pitaKGdJePF7fskLROpGSAOBLCrf+qihAFOqtfjP+pKL1olDqRYX3LyjaQCmrkOf1Dx4r2igoNVEcRvJXUyvaJArFQsyGzoaMijaLlHgD87WpGNYoW4hsbHBC6V1E0VZB4ijM1+ZqOUXbBElvRYpiNlRXtJ3IlhUFMyrUU7RDLJQqYzPHOdlA0U6RkvQVE6WJCYv5XUShQcN1nmmr6FciawY2c5wznRXtZlmhtaHrTP9S0R5K2VbmWn7Oj4qSiOzaEJmSeeApSiaynqd764b1r72C6hChymb5z4r20QxbZXq+3SRF+yllPU+pVbMV/aZSSABMxwWKDlDKJ1KY5Z0NqxQdJLIDL5vy+GZFh4hsUxYBqp2s6HdBpYmQKZmTRxQdFjNCmZIzOix6jwgSC2sDvfKHoqNU6OtPROPr31J0TJAYDwudKY8VHSeyFmKG8iWkUHSCKNQdPCchjaKTgqRRMKEESmRQdIrIxgZmjcDQLIpOq/E4//VdelbRGUrZOIRCDLWKzhJZhZjXzMVYRX8QhULUC3QK60TniKwUc4MDzyn6k8h6A5seJkU5RecF9SKi8VerKLqgxiN78dV5XtFFIjtxQMoMr6noEpGVwvTqXPYpusyyTMgMJ3tdRVeIrBksK/J1RVep0JaFKpu3Giu6RilbZbSXWdNE0XWip+3la9tc0Q0iK1UF6NdWim4ShfqXZ/ztFd2iGbZeBSUB+MHev8379uUfhZAATMij6A612UgrHBlvBr6s6C6R7UGlgOqdU/QXkW3iHJjl33hN0T0pawURj1G691J0n1LW8sJAKdhNguiBICmrCqbX67kUPRQkUtwcWFpP0SOWFcrJE00zOjCIHgsSV8QBpeui6IkgmRq4EXF9gKK/paxg50o0N5cpcqKJpLFigQodU9RDkFjIQ4ovUyrqKUjqxSlvdk5F8fykPmsh57XoOEUJIiVlcTYcX0lRoqCghX57Vh5EfkEixbKqtVDkalk89RjSTpFHKTvIs6xS3yrqRWTLygtUur+i3oJkhcJdlBGTFfUhsrFBhZNWKOpLZBVyF2Xyr4r6Efmk33HvpdlpRf2JbF9gWeaeogFEtqzsGEJTplI0UFAvIgzX5khWRYPUG5i8jJdT0WBK2aaElHO/kKIhKsWZd1pxRUMpZS3EvOZ8W1HRMEFSL54pJHEUCqLhRHYXBXsUzrpXFY0gso5iAhB4S9FIIltlTMrO5g8UjSKyAcB6Ze6oaLQgqRePUeK7KRoj9UpDhCqbkt0VjRUkVcZK2fz+vaKfRaFkm/RGut6KxhFZbzAPOTlU0XgqtIMD85CpYxVNoJQjeUgcypo5VdFEStkOGwUUN1fRJEFiIZIok7RQ0WRRGJy80JRrFE0hshbGAf26TdFUUShlwfNO3WRF0yhlPY9kwzQ4qugXItvN80KqQ9hQOV2Q9BSYYfLcUDSDyJqBsDHXHyqaKUjCBgmAiYtSNIvIxkYcpoa41Ipmq/E4iQi0TKdoDqVsYhMFNDeTorkiJT7ERoQvZVZF8ygVMt5zWob1lPlE1nicKTjb8ylaIKgwEcww1+MULRQkZvCdg7WKK1pEpO8c9JVTtFiQuBfGOw0rK1qixmMqN1OrKlpKKetDpihJNRQtIwo1pRd48yVFy4lsWVjmO63qKVohSGIeUr4HDRWtFCRS3NlI/baiVUR2huXOxsp3Fa0msr0S9Qp83lLRGq0XFPq2c0shiNZSyipEbPi+66BoHZGNDSh0vuukKKAKc0tuMMbeX8/7NnUpgdygbFZFG6jNOpC5QfcyijYS2fpy36BssqJNRHbfgLP8928q2kxkpUoCNZusaIsg8W0UptdvoxVtpYXWcq7lS+dUtI1S1kLu8/trK9ouSOKzGNCBzop2iELZyeFLLKYMVLSTUj5RyNdsZFipaBeRHaD4mrfY44p+JbIL28KYoc5HKNpNZKtcASh/NkV7xIzggsJvhuZXlCRIqvwS0NViipJF4S4iTpSNXlW0l8hWmbP8Xx8o2ieoMBGlBnH8D6L9gkSqDFC1Xop+I7Le4NHG1Z8VHRDUi6gk0KgVig4ShZoS8/V+RYe0XnzByXvHFP1OZOOQFv58VdFhKrQWcnQtGKnoCJEdoDCHmoPpFB0VJH2BE+XBMM8fEyQTJaUKxSo6LkikMOU5hUooOiEoWC/XNKui6CSNt/XCUs6krK7oFKVsb8WUZz56RdFpIhtR5VBW5zcUnSGynYgKZ76v6CyRVcgJJcNHiv4QJI6ihafDWvmcWggfmgHdFf1JKetDKHReild0nsgqxOaAk72/oguCJKKwiHY+HKnooqDgIO86kZMVXSIKDfKuiV6k6LIg6Skw3imwRtEVNR6LaGf3ekVXKWVDlHNo8V2KrhEZQUyHfjqg6DqRHXjp+eunFN0gsp6nhaWuKbpJZC1Eozj17iu6RWQbBYO8r0lYiN4msmUVxfj/TGpFdwTJBiaOGwIx6RXdlSqnIcJIblo+o+gvQeINTHnOkkyK7lGhrTKknJPZFN1XqTgolIODIHogSNIGzvLd8ip6KAolAKKAjhVU9EikRCHMMBULK3osUmIGZ96WYZ3oCZHOvKfKKPqbyLqXM++1ioqcVETS9eBDX68XFPUQJD6EhSbRp6hnqqcWYuntHKmtKF6kgiOAF+gR1isTBMkIACnTs4GiREEihbJ8xRor8mtZ2EUJ/PiWIlekgomo52R5V5FHZN1bDuiHsBG7F5GNQ0RUIHc7Rb2JbEQx9dr/saI+RLZXZofxDz9V1JcoNGJ7gT++UtSPyLoX9XJ++kFRf62XTRtW2PsDeD80XAfThiAaSG22UnxlpoyTQTSIyA41+YAmnFY0WFDQ7Qnm7RcVDREkbudxw/I+ioYKEilmFKuPKBomKFipRDO7oKLhNN5WqiRQK66vg2iESjGjKE3fBtFIIlsvvi/vx2GKRlFhaF2TaAYvVjSaUo4M8nFAUw4pGkMp2++igLwHisYKEgvLYzYcx3QoiH4WhcFw8psbeRSNI7IWciofVV7ReCKfdElKNWTAB9EEIitVBehuC0UTiWykxQH93k3RJLFQjI8F2pmgaLJKRQHNHaNoikhJvfICpZ6qaKpISWzQws9WKppGZC1kYpMzSdEvggoTMfVadFbRdCI7nhBdvKdohiLONQPD3DtTLWTaUCOtolkiJXGIidL0zqpoNpG1EMtG8wFzuSCaQ2RHPEg5bUsomktkpeKAqlRSNE/MEPfSjPk1FM2nlDWD89rjuooWCKpDhMnL6fKmooWCQlU2vcNaeZGUJVWmwiqtFS0WKVEIKWd6J0VLVAoH/c47nylaSmQHB67K//pG0TJRGIxe14lNVLScyHqDVb49QNEKIltlSJkXRylaSWSlqgA9O0XRKiJrPOdr/zxFq4nsfJ0d6GJYsK0hsuMkfGgC2xStJXrqQ+fIXkXrWGXrDVTZ8Q4qCoiUVJmxsfC0ovVEGhvLrijaQGTrxV2UPmHRu5FlhUYbTENhw/ImStnRhlPDzBSKNhPZnsJ5LTmNoi1E1r2Ya3xfZ1C0VVAdIn4mXvg4v41m2PXLyzI13LH3d1LEHl9Wi8Ru86uKdomIoKdv5wmiXwWJA+tEBt/OE0S7qdD5gSg9BvmS6RTtITI1iDIDvd1OUZKgt0Po9iZFyYoyYeCtn1nRXiJHctcXgPZXV7SPyMZMXaAPP1a0X9A6ojRAvhmKfiOyb2BJAST7xkF0gMjUJorAAFU5paKDRPbrLl4Bup9L0SEiqzAG6FJFRb8T+SQXygR0uJ6iw0S2XhyT8zPTCKIj6vkaQN90UHSUUqE3lfjNnR8VHSOy3kgDtGaYouNE1sIUQPPY74LoBJGtckqgt7YoOklkvyujHtDNs4pOEQUaEVUHGvxI0Wmip2/MMRVjFJ0RJLGRCejdZxWdJQp5w3UecrgOoj/UGy8ATS+k6BylbJX57STpyir6k8i2VzqUdfV5RecFpSKqAalyLyu6QGTdmwboWiNFFwWJD6HQOd9C0SUiqxBmmJLtFV0WJGZUh1R6jslBdIXIOopl3fte0VUiWxYc5dzopegakXVUzUh+51Yae/+G3Jd2ZPqX9LGim0R24GL6N72NoltEdopnIncvWtFtQZLIMf171ETRHUHB0YlvzFF0V5CMTvaNOYr+0nZkIlcik6J7lApZiL2m6oruE1kLKdWgg6IHRFaqHNDYwYoeEtlcnSdK/bcqekRk68U35gy8puixoOlEcYjqic8qeiLGnyaKAhpSRNHfgqRepYCulFHkpIZCO5sUBrpXR1EPIjtz5QAq856inqmhMDSb+M2KjxTFi1RwNvGbDd8pSiCys0lRoBYDFSUSOTIK0cLXpijyE1kLCwE1WanIJbKdKw9QvmRFniDxfG6gLecU9RLjLxLFAaW5p6g3kfUhNyh+SKGojyiUqOZpSO5nFPUVqTREGBnMpiyK+gmKIcIUbz7Loag/FToy1OSBwtFxigYQWeOxceV0Ka1oIBXaY9k4oLeqKBpEZI2nwl21FA1WhSWBJtRXNITILl6417S/qaKhgqQpoyB1qJWiYVKW1Cs3UGI7RcOJQu51TdEuikYQWQu5hzbhK0UjpSyJ+VJQOMFRNIrIBgClpvVRNJrISlWB1LRhisYIqkNEM3KEjQBj1Qxma4NmKPpZpCTmWa/ZixSNo5StF2LDNFytaDylbGxEAV3eomgCpayjuNc0aqeiiSIly6vsQNd+UzSJyOaTTOQ2nVE0mQpDXc91el1SNIVStr2w82b631Y0lch2PabrR54omkZkHYU9GV+RlIp+IbIWYsfD1zhG0XQi6/k4JI2Nw7rDDFpo3cujnP5ZFM2kVMhRnjkW1h1miZQ4KjcUVsitaDaR9TwtTMivaI4oFAuxT+KbV0jRXEES89g18uUsoWgekW3lHDCjaBlF86UscS8UOmkqKFpAKasQxjvdqipaSClrPHZyzI7nFS2ilO3myJMDH/gULRYkno+Dwux1FS0RheJDmGHerq9oKaWsGdiTMWsbKVpGZPvyqyiraRNFywX5iNCU5kFzRSsESVNGwVEPWilaKWZIveD5wBttFa2ilPU8pALfdVS0WqVgvG/vx4rWiJQYXwaoeldFa4l8ohCnV85HXypaRxQa5z0n93eKAoJEIcxwEh1F69UMeN4c7aloA6Ws5yEVGOop2qhScZK95LD3N8n9YIvw86YUbaa2kA38vClFW0RKtPHMa8JPirZSyiYAPPNaXFzRNiIbn0xRBn6raLsq5KdD3BuvaAeljDiwFND0m4p2EtkhlJ+//XFhRbuIbFnc1zr0uqJfBUk48WW00+jAINotSOZrbkMlzFS0Ry3k62GqrlGUJFKpiZjzfHxaUbIgCcJymJQrp1S0l8g6ijtU8/Ir2idIqpwd6MMwz+8XJENoFaBn3lD0G1Go9bFqaK/ogBrPshp0VXSQUrYsZkoRiYoOEVkfMkWpOkrR70Q2dIsAmfmKDguSwZDHfNU3KzoiZqQnooULdis6KkgsrA+U9pCiY1QYqE0UB7T+qqLjInWaiJnSor8VnaBUKHpdZ06MopMiJWUhe3HeC4v5U5SywxqSDZOQS9FpIqsQyYZpVljRGSIbUZBy+pRXdJbISpUDallD0R9ENgA4X4+tr+gckfV8HKSWva3oTzFeqhwFVPZ9RecFSb0wKTvHWiu6QIVGWhnJhlOhk6KLRDZEcURlKn6l6JKgrUSw0KniV3RZkFhYBVJvDVR0RVAwDjHLj1F0VS1kHvLZBEXXiOxsCB+aLDMUXadC68O8QH8uUnSDyC5SWK8xaxXdFCT1wh6aGbtN0S1B0mFZr/NMsIPotiCpF4w3KY4qukMLrfHFgRacVHSXUvb1S8hezARmL0H0F5HNXtgoU24rukdkG4XeePBE0X2WZb0Rh0F+d5SiB0Q2ADB5OTGpFT1UhZxQKqVX9EiQ+JBS4zMreixIpDCHOjuyK3pCZH0IMwI78ij6W81AOuRLVUCRkwZSdgSIAmpSRFGPNJSKIUI6FJhdTFFPIltlJDbO45KK4qnQNgpflpO2vKIEQRIAOA5z2lVRlCgoOJh7vtbVFflZljUDCgPLaipyRUoUwocm88uKPCLrQ+womu9fVdRLUGEiGj+poaLeRNZ4IN/8txT1UQQLzdpmivqqhfllvi5q7/cTEQldztcDiyvqT2TN4+dDpq6taACRHaAqYw6dEKNoIJF9syTfLbv4M0WDiKxCzrxvb1M0mMjOvHGY8nwZFQ0RyyUwCgEVYmMF0VBK2VmDWwqLWyoaJkjKigJK0UfRcFEoruDLTZf/rGgEpUJDDc6hdioaqVI8hyp/XNEokQp2Sb8pGKFoNJHtC5wNdz+raAyRbSyu5VOWUDSWyHqDUhl9in4mslKcQ195W9E4IusNomc+UTReEee1gz0UTRAkjioL9NMIRROlymmIooCSJiiaJEi8EQdUYqaiyYKkvfIB5VmlaArLst0/P1DePYqmCpI4jAJaekrRNFEoZVEq4yVFv6gUy5rxWNF0QcGyXPNbakUzBIkUxmSnQGZFM7UszBrO7myKZlHKOopHHpMKKJotSNzLWSO6lKI5RNYMlGVSVVE0V8viNLT4BUXzREoGDYz/Tse6iuYLkmArA6nOjRQtIPIFg811tr6raCGRDZs4SJ1pq2iRmCHtFQXUopOixYLEwmJAacL68hJB14jojdXfKFrKstQbsYmKlhFZb8RBYYEBipaLQjGD+wajRyhaQSk7/mNPyVSdpGilSAVD1HVOTlO0SpAYjwBw+s1StJoKbQCglc3hxYrWENlWxpaCmbtO0VoqtGteer4btyKDaB2lrOdZ5V+TFQWIbJVhodl9RNF6KrQWIpcz351UtIFSNpdDWTi9UrRRUKgsk/meok1Etqw4TA1pIhRtlrKC7vUCdVIq2kIp694ooKExiraKlFiIBbvvUjpF2yhlM1u+EMUJ60TbiezwhSkvEJlD0Q6ikHu9QKe8inayLOteHr01KqBoF6UciXlMlE5yYUW/EtmJkkdv90oo2k1kW5kKx5VRtEeQKMTRmxNbUVESzbBritdkoqxj7++jSKAQ79ujN0X7RUSQPXpT9JsgcWCDSB69KTpAhc5UoqyYDTtlV3SQyCftmAGoawdFh4jsV7JnAkqxXtHvgqQdozFDpUur6DDNsB84FgHklFJ0hFL2XOMVoOh3FR0lsocXMUAX+yo6RuSTXCgT0LbFio4TWTM4h755QtEJmmG9URco+qaik5Syx3w8sJMd4CA6RWQtfAGoYmlFp4nsUJMS6BGTqyA6Q2TPvDihjOGIF0Rn1Qyer93ppOgPStkqU+pPv6JzKsWzvBcHKvpTpF4nygS05hdF54msNyKBItcoukBkpAelBmqwT9FFIl99Inqj10VFlwSJN16X+Hzb3r/C+6Yj7/M70cwwRVeJQoN/vKnK+gbRNamUDAt5gLbdUnSdUrar8vU/CW8oukFk0z9+PHjsSkU3RWEaIu7JfMjWD6JbgmKISqD120cquk2FRsY0xsza5xTdUalyQJ/XVHSXUnaQ5D7Jh90U/UXkSA8qBdR+jKJ7RHZ04sbL91sV3ScKjRiJZu5lRQ8EyYhRCS3SiulEED0UNJ2IMVOtiKJHajxfazSEQ1AQPRYpaX2mZOfqKHpCZD3PE6X+zRX9TYV2kKRUjk8UOTFPpbgnE3AU9SDyiXt5DvVlWGz0JLL1Yvr34y+K4mNQVqgp/WbPfEUJgqReVFg8LAASVWFeoPK7FPkFlSUqDDTmlCJXkIQojd97R5FHZI3HnrzzUkpFvYhsuh6HqXBJRkW9xUIJbORCpnRORX1ESsriMvnVOEV9KWXXjExCLj2nqB+ljHRkJiG9KivqT6mQo3AM/YKiAYJiiLDGd47XUjSQCu0aPw7o1/qKBomUGI/8xKn7lqLBlLKtHAWU6wNFQ0RKyuI21NY2ioZSygYbjo3Mjc6KhhHZ7sCy7nZXNJzIloVcyNkRr2gEy7JxyAR1QB9FIynlSADweGXoUEWjiEKTtWtOjVM0msh2PWQ1TqnpisYIkr6MKpvSCxWNpRlPq2yOLFX0s0iFquyk2KBoHNHTKpuYXxWNJ7JVLg10/KCiCYLSEVGqflj0ThQkUsjWTL7LiiYRafR2v6toMlEoej1zxyiaIvWSAIhCflIuLOanCpIqY+PFeKkUTaNCI2VByixKp+gXlUIi56R5RtF0SoUchTQpq6IZRCFHeaZALkUziWyVSwP1ya9oliBxFLI182IhRbMFFSbi1lCH4ormENlWxpFHoANn+SCaS+STeuHIwwyroGgekU0AaOEr1RTNFyQWYp/ELKipaAGRHQHgqMDalxQtVEfBvb5n6ypaRCkjZtBRvtcULSayjmJZG99QtITIloVzqEDSO4qWCpJplHtNH7dQtEyQ5Few0Ne+taLlaiG3vFa3VbSCyA5fyHid9B0VrRSF0ivjIDWgk6JVlLLBBh/6dnVVtJpS1ofIrn2Vv1K0hsh22LIo6+i3itaKwuB46AXK/qBonaAYouKSvbS19wPUFhoMkUK/r2i9iATNizdOZUUbKGXN4+thAmcUbSSyc0125CEJryjaRGSPPJiilF2qaLOUJebx9TAjjyjaQinbW/mmp8G5FW0VKVkL80UvrRhpQbRNpMQMniiV/0jRdkESGExsJgxStINIE5vBWxTtJLLdJA5o6FVFu8QMcRTPUKqnVvQrpezkxam8e15Fu0VKqswUZW8RRXsoZUcGzteFayhKEiTGc/OqRWNFyUShvuA3HToo2ktkpZjYjPtO0T6aYScUKizWR9F+SqnCChMV/UZkFXLn7eMlig4Q2d7KraFsOxQdJLI+5IlS9uOKDtEMu/qjo/r+qeh3QeKohkDnris6TIWBL4g4NQzkcB1ER4hsiPKU58OMio4S2e7PLZQReRUdI7LDGmeNh8UUHSeycRgHhZ0rKjohFkoAMOc5V13RSZESRyF7cSJeUXRKpNIQRUFq5muKTguSKiN7MU3fUHSGCkMd1jV1mys6K1JiBr2xrq2iPyhlvREFNKSLonMiJWUxbfB1U/SnSBUmQm5g+v2g6DyRbUokAE4/V9EFQRK92SG1bLCii0ShEcB1+k5QdEnN4PFKtamKLlMqFFHIeeYpukJkzeCZ18AViq4KenrmNWS7omuCpFGqQGrePkXXBdUhooWxJxTdUAuZvv56RtFNIjv+0/OfXlZ0iwqt57nZ+NJfim4T2TEKk3LgoVF0R5DUC+O/eZRS0V1BMv7HYmqYFKPoL0FB4z3TPKOie7TQGo/Z0FmQWdF9kZLuwGnotZyKHhBZ47Fr5FuST9FDKrTjBqa8wIiCih5RyglNeSZXUUWPKWVDNApmNHlO0RNBYiHMMHNKKfqbCq0Z5YCyV1DkpAWyIzYSAN+Saop6ENlWLg6pjTUV9SSynagIzHj+ZUXxRKER23N6vaooIe1TC5kOnXxNUaJIybiBpjSDw4ZlP5FtSij0DW6iyFWFcG/gfDNFHpF1L7zh29lCUS8qtN5gOlSpjaLeRHbERmJjlndQ1IfIJjbwRmBRJ0V9iaw36MPnPlfUj8j6EGFjqn2tqL8gCRvUK7A3bHAYQONtvfJJsvG5vT9QRMQVuZFsyPFKEA2iiO1BlSPjTWwJRYMpZQ+2+AarevcUDSGyCvn18cUaKBpKZMeuIkADxykaJqg0URyQc0vRcJph45Npw5TcikZQyrqCn9ki54lBNFKk0hBFAS1mEwfRKEExRPxA144fKRotCmWc5CFahuGKxhDZJi4I9MF6RWOpMPQCy0Rz86yin4ms8dyj+CRK0ThVyLc2Z8mpaDyRbUduKXxbQdEEQdKROSnH11E0UcqSejEBONZQ0SRK2eE6O1CvtoomE9nxn3sUFX9SNIXIDoZ879XPQxVNFVSHiCmKM0vRNCIb8Ew2+oQ56hciGxtVgPr+pmi6IFEYByTDdRDNkHqJD5nztH6saKZISQBgajC7UiuaJVLiDcyG5pv0imaLlLQyl8OTciiaQ2SN56wxPU7RXCLbXlwOf19a0TxBwVWea85XUTRfUGEiTJSmUm1FC4isN7BSdio1ULSQyCfthXTIDGyiaBGRHdayA91urWgxkW1KTq/bP1W0hEgd9cc3ipaqo5iVDf5R0TKRkjikws19FC0XJAox85pTwxStoEI7bsRBquc4RSuJbFPCG87DaYpWiULxRhQUPpqvaLVIxRDBUWbGEkVrKGUdBc87UQFFa4ms54sCvbFD0ToiO/CyrHr7FQW0LIbNnUOK1ovU07DJF9bNNxBp2BS6pmgjkQ0bbByZe/cVbWJZdkLBfO0cN4o2U8p2c+wbBFqlVLSFyNaL05Abo2irICkLKYrvxjOKthHZFAVTgzMiq6LtNMNWGdmLuZpN0Q6RqkMEqcC0PIp2/kPK9zifol0qhVW5WVpI0a+UsrGBvZdAdHFFu0VK3It6OWPC+tceIlsveMNJWVFRkqDCREgbTMlqipIFyZxSDOi7mor20gy7SoXnA/vDeuU+SlnPV4FU01cU7RdUhygOUs+8rug3USiBzfm6AZONIDogUtJToqDwvSaKDopUDBEsdOY3U3RIkFiI7MUX876i30Wh9JRGkIppo+iwoJ1EbJR8Hys6IihkvDn4qaKjUpYYjyTKyfKFomOUsqMNHOVs/kbRcSLrqErwxis/KjohaDpRFMpam6jopJQlVc4jeUgPe/8URWwT50Ue4ryn6DSRnYZyRsYbj14KojOCxAZ+Un3SeUVniYyMDEw2crAdg+gPQRIYUUCpxyo6p+bx02i7rlf0J6V8opDffFowRtF5IhuERYGacL4OogtEoaEm0VRsruiilpUb6HxnRZeIbDdhHtJloKLLVBhyFI6HVim6QmQdxa2SgecUXRUkMcPXjbyaStE1QamJeOpxOqei6zQjlERht4GzYRDdEBRDxEm5X0lFN0WhBHxuoE0+RbcoZevFd/qkelPRbUpZHzLZmNhe0R0iG7o0I+EHRXep0JpREOi4X9FfRKGszG+mj1R0j8gGPLOy0TMU3WdZ1r1RQLXXKXogUlIWX1MkL3oMoociJd2E3pCTviB6RGS9wbLG3FL0mMiWhXWoMzGFoidEtimZbDR5RtHfRDbZ4FyzIYciJx2RKOREOTysvXoQ2ejlLsr1Uop6Eln3MgFoU01RvCBJAFCWM6yuogQiW1YFoI844gVRYjo6SjaO3pA+Pt7e9ygSKMT7T182EES9RERQFJC8bCCIegsSt2eMxMbmi4r6UKGvLlF6oI73FfUlMjKbNEZHPvqOon5EvlZEaYDMCkX9ieyRN18bIDtUQTSAyJ41pwa6+IKigYLqE/FtuR9+rGgQkVWYFajeOEWDiXzSJVlW/S2KhgiSshoDJd1QNFRQ0Hi/WZBJ0TAiW1YWoMnPKRpOZL8isKG0yFx7fyTv2826UnD7hMmKRhGFUpp4U6ynotFEtun5sZyLsysaw8YKpTRBtwfRWEo5hogLQ0NXBNHPRLbv812ZHa8rGkdkRye+QLF9XkXjBdUh4tBa8jVFE2iGjZkCQLKFHkQTiexnZVMq65eKJhFZKS7xtrmKJhOFBpNE02KWoilEocEk0fh+VTSVFlpHRQENvKdomkhJWRwWJqVU9ItKxQHVz61oukhJWRw/q3PUDaIZIlWYiOPnAZ+imUTWUcWBVjRVNIvI7jNwTBvRWdFsIjum0cKWCYrmCBILOdylGq1oLpEd7qKAas5VNE+MlypzfTpymaL5lDJFiLicfHmXogVENg5ZVqPTihYS2bK4gvbfVbRIkAxcTP6/Sq1osaDgjOyaLpkVLVELOX7mzq5oKaV8YiEXGl8WULSMyHqeZW14TtFyIi1rZSVFK7QsLqA6PK9oJZGdJTnqpn5J0SoqtJ5/Fejo64pWE9m3a2GENwXeVbRGUB0iLrsGf6horSAZhVAvuwsdROuIbL2o8GR3RQEiq7AYFDZOULSexocSV9ek7Kdog0hJWTQ+5QhFGwU9Nb7+JEWbBElZQM6qOYo2K6J7S61QtEXMiCHC3rU5vEbRVkoZaUpaWHabom1E1kLsXTtl9yraLii0d20qnla0Q5DEYRVINbqsaKegpxau/0vRLrWQAdDlkaJfiUIB4AXcSEW7qdAGAF9dfyOVoj1ENmfAksE0SK8oSZDUiwvDBpkVJQsKDrCeczObor2CxPgKkJqVR9E+WmineGT4Tur8ivYLiiFqCDNahvWU36jQTjeol3OlqKIDRLZeXAo1LaXooCiUiOIx9IJyig6JlDQlFPqOVlb0uyBRiDWjr251RYcFFSYqCh92elHRESLbYbH6c+TFxkF0VFAdojgoLNBA0TGxUIZlrP4C77+h6LhISWxEQeEn7yg6IVLiKEiZDU0VnVQpmBHY00LRKUFiBhV6bRSdVoUlZJZfY++foYj1Evd4A/UVnaWIjTS+HK57GUV/ENlKlQJKvUzROSoMjckJZn4FRX8SWcuLA/XlyBBE54nsXMOPZZC3/wTRBSIbn3GYKFNkU3RRzSgCJHtrQXSJUnYdxwVUK7oiiC5TytaLK7JzYWZcoZRt4iigTbMVXaWUdSAVdl+n6BqRVUipJ6cUXSeyUvycz4W3Fd1gWT7xPOe1DM8ouilIfMg93pyFFd0icgwRj4YLhlX5Nsuy+RVn+dmMzyC6I1ISGJwNB7yv6K4gmQ0pdfdrRX8JEinO17/3V3SPZdl6cR1XYaSi+0TWG8wNvpqh6AEV2n7H/eR8YT58SBQaoPzG3a/okSAJAK5PvfOKHguSAYpSBR4qeiJIpLhyGZRK0d+CglV2nU1ZFTnpiYJVdk3lWEU90qNetsqQMmcKKer5Dynn7bKK4lUKc6gTUUlRAqXsUFMJqGEtRYlEdpOEycYLDRX5iWzYFIHUsGaKXCIb86iyU6GtIo/oaZVNh66KegmqQ8Qj70PfKeotxqchQr1MD0dRH0FSr+JApRMV9aVC25fjgPIOVNRPpKTDInsxw0cq6k+pUGy45uPJigYQ2djIDgvzzVU0kMhua0dB6vYqRYOkLLEQW7JmYkDRYJGqRoRZ3pm2U9EQIhs2yF7ML78pGioKg3ON67x3XNEwShlpFLjXmR8WosOJrHshZQreVjSCyErBDNP9iaKRRNaMOEwo1VMoGiVmiA+xqxnonlrRaErZAIgC2ppe0RiREm9gH8+XL6OisSIlyTxyA1/Ss4p+JrJmYHp1knIpGkdkjc8O9DC/ovFEtlGYUZwromgCke2wzCj6PqdooiBxFIz31eFUHkST1HhM5YExYXPKZEqFwsYLpKymaAqRDRvshdqXGwXRVEGyF4rpNdCtrqJpgmSSgqOcHq8p+oXIOorGV2isaDqRNR5pg+9yE0UzBMmcgkzJnG+uaKbUK5Qp+ep8oGiWIKlyfVg4ppWi2VQYel+253u1vaI5InWaiI5K/FjRXEpZR0UBXftU0TyRkrLsvusue3++ijA3kH3XIFpAkdAgzw/YVLRQpfhis5FnFS0isi3C3OD6K4oWCwq6PcHs4sgQREuIrNuJLt9StFQR19f+ooqWCRIzOCkfeFPRchpv68sX2Pdup2iFSElUc5v0dH9FK4lsXygHdHapolVE9lUNfOvlgUuKVhOFLPTb15oG0RpBQQv9pnlBRWvVQr7Me8lzitZRyicWcpn/sU9RgMhOKPxApBTvKFpPZIOQZd3qqGiDltUI6PXPFW0UqWA3wa7mYEWbBAXby2/2TVO0mchWmfP1mDWKthDZ7k9vVExStJXIeoM7AEf/ULRNkFSZxnsPFG1X4zHwmhsRinZQynZJTA1OGw6GQbRTpThRPpNZ0S6RkomSM9RLHNaC6FciayGmcpO9hKLdggoTUUo+OCKI9ggSKU7lVWspSiLySb04rw1+VVGyIBlCucfbsamivUR2jxf1MvtbKdqn9eKysUc7RfuJQh3WdQp2UfSbKBQLMfPaV7YH0QEi22E5Q82KV3RQkHSH/JCa1U/RIUHSysgozL3hin6nGU8zCmfCGEWHBcUQIaNwXp+g6AgVPs0onOqzFB0VqeCI5zpLFik6RimtV6+1io4T2XrB86bmdkUniKznoyCV5aCik1KWWMiyAkcUnaKULQuH8s7Qc4pOC5LugBB17t1QdIboaYiajx8rOqtl4ZzUSRsW2H8Q2aaMw/jfIqWic0TWG5jKAyPTKPpTypL2wprXjMqg6DyRjV7Oa+uyKLpAFLLQ83XPqeiilBVDxLlmd25FlyhlvcFJuWoBRZeJrOc5KcvHygXRFUEy2sCMwLTSiq4KEjPiYGHLsP51TcyQKmMqN2OrKrouUjJGocqBGTUU3SCyVUYS5UuqreimIEmikAD48tdTdEuQNCVyHl/y64puE9mw4SuvVr+t6A6RHVJYr3eaK7orqA5RFOqVobWiv6Re4l5ImXZtFd37h1Qg70eK7qtUGZnKj9j7Dyhihxpu5r/xmqKHgiQZ5hGqaaLoEZEji01+3FC9c4oeE9kpj1N56vcVPSEKuT3BnJ2j6G8i63Z+FGGRMAudDEB2ycOzy0MvKOohSGKG0+vM9op6EoVaJNE8P1RRPFGoRbDBvlNRAlGoRfymTJgZiYLqEFUAypxdkT8DfSvZ2pvi2/v2fi+KBArx/tOjqyDqLSKCnh5dBVEfQdJSb8G3cnQVRH2p0LecKA0cuCmPon5E9hyHb4aVLZQg6k/kkw5OqYH7FQ0gslL14IqS+RQNFNSIKBNQp9cVDSJypCOkA5KdgSAaTGQ//zMSKMXPioYQ2cO1CKCR2xUNJbJHV1mA8t1RNIzIHkJxij/3jKLh6ii+x9PHISiIRlDKKowEiiqjaCSRNSMG6PU6ikYR+SQXSgNU/V1Fo4mso1IAle6maAyRqU1UHWhvL0VjBb1FlB5o+kRFPwsSM9IB3VymaByR9SEt/GaHovGCxMK0QB2PK5og6HmityNNr/M/prD3J/G+SeT9HIi0CUsUTaYD7b4QN+timyqaQinb9/nuj9VRiqYKku7DF0J0/FzRNCq0LcJ3fySNUPQLpWz3oVSLW4qmq1RltH6bdIpmUMq+ZJQHeZdrKZpJZBUWA1rYWdEsUXiNiFLOQEWzVao4UN21iuYQ2VyCLxmNvKhoLpEduLipVTWNonksy865zGm/y6VovkilJuJgkrWUogWCxAzmz3+9pGihICmLAV+6maJFLMs6irt/XmtFi0VKBmS+CWVQN0VLBEmklQI620vRUiLbytwluzZe0TIiRwaNckDXFylaTmRH+EJAH+1WtILIvEzEepX7Q9FKIlsvSnW8r2gVkZVCImRypFa0msg6isdkvbIoWiNI+gJzpB55Fa1VR3FrpXRBResoZWS+Q6pmEkoqCgiS5IQKm1VRtP6fClNWV7RBpEQhd5Oa11W0kci6F6c/TqvGijYRWW9goWG+b65osyCZg1jleR0VbRH0tMq/hHW9rWohX4L49teKtolUMABc54eeirYTWQvpjfh+inYQWW/wJYhNRyraybLsuJETKM8ERbsoZeMQSyEndoaiX4nsFI+ynM6LFO0WJGVxyfBiWK/cQ2Q7Eavcf6uiJJphq0wfvrBLUbJIiQ9ZVpffFe0lsmWhXk7ts4r2UeHTejmpLivaTylbrziUle6Oot8oZfPMKKDEx4oOCBILyyNVyxmh6KAolEZhkjwnWtEhImshMsZA9nSKficK1Yvv/lB0mMhKFQfKnUPRESI7siGnNUPyKjpKZEoTIWM0pwsqOqbGl4DCqoUVHRcpiXmsJpy2JRSdILLjxnMwvm0ZRScFbSVCQu60q6LolCDpDlWQP3cL61+nBdUhooUlays6oxZyKdTzZUVnieywDEf59tVT9AcVWkdhDeKr0VDROSKbT7JeI95S9KcgqRe2LgMjmik6L0hCFPUyNd9XdEGQ1AvGB15ro+giLbTGl4o0vc4/SWvvX6KI7ZL5MF/Pb6XoMpG1IXdkvGn1hqIr1GbrWxqo+2FFVylltwX4eWJjqyq6JkhcwRcuVh+g6DqRT5qYUhlPK7pBZKW4S9Ysj6KbgkSKu2Tz6yi6RWSNjwPifB1Ct2m87UE8rRseZsYdSoXiM9FkWKnorkjFEPGllRt2KfpLpAoTMQG4i94aQveIbDg9h2noeCZF9wVJfHKG+qOcogdEdobih1fMQTiF0EMiuzwh8rdX9EgRp/KWCYoeq/EFgVb0U/SEyL5qiGbEY1IOob+p0JrB6fW1pYqcZ4BspHGW77lDUQ8iG1E8Gex3UlHPZ1jWCiKmKNmvK4qnlHUUDqHMD1GKEgRJveRVfBiFQiiRCu1SiINhoeyK/IKkyu8AJedW5FKhtZAz1IEiijxFGMnN0bBG6UVk45CbWvOrK+rNsmx3wPaU0zgsDvtQysZhFUi92UhRX0FS5ThIbXxPUT8qtCHKqbx6W0X9RUo8HwWFzTorGiBSMUScoVJ+rmigSMlIzlm+6k+KBgmSWR77XaZsL0WDiexIzrLyD1U0RMtiErVrpKKhlLL14qRcY4qiYUShnuI6vecqGk5kpVjWoxWKRmhZlYFmYL4OoZGUshk7m7LPTkWjBElToiwz6ICi0US2LDSlExk22oxhWbYpsVlnplxUNFakZLiGQqdZWDf/WZAoLIsxuZ1RNI4KQzuNnm9FpKLxgmKIsLUSeCalogmqMAemhm0xiiZSynaiUihrVgZFkyhlq4wJJVAqq6LJRKE49EzpnIqmCJKy4iB1Lp+iqSwrFIeeLy5O0TSRCsahZ8oVU/SLSEm9OJW7JRRNp5QdsSHlLCyjaIZKNYHCNOUVzRQ0koiJzfhKimZRoSY2FV5QNJvIdlhUOfCzT9EcIltl5DxOk7qK5gqSngIf+q43UDRPUMiHzvXGiuYLEoWol29GU0ULxHipF8oK/P2uooUiJWXBvc6oVooWCRL3cvfvl3aKFhPZYZlnfO9+omgJke3L9OE7XRUtFTPEhwzRS90ULRP0NERrfaVouSAxniE6rLuiFVJWqMpOwx8VrVSpnJEGSUgWe3+ViEhaWwbJxsBYRauJfBIYhSPjzXU0cQitIbKuyAU0/aCitUSh8QQZRU1F64iseXFA20YpCoh5wajGDtUxRetFSspiAlA5u6INIiWVYh5ysbiijZQyYjw/var2W4o2EdkuyWV+Mwy8IbSZyJZVEmjLL4q2CJLA4EuDhh5VtFWQNDFn+WoYT0Jom1pYBmhIWkXbKeUTC3laVy/M8zuIrA95Wne6oqKdRFpWcj1Fu7SsykDPvanoV0rZMZmz/PVPFO0mso1SDGhfT0V7RGFwF8WPHVRFSSpVHCjvLEXJRHaGYoryMKBoL5F1L3dRyv+maB/LsoM8d1G+PKdov0ilJsoDlOG+ot+IQuMJlt6pFB0gshZi8nJ2ZVZ0kGVZRzE3+CYsog6JlIwnWIeabwso+l2QmBEHqS0YQkPosCiU6OU0VKuCoiMiJWZw32BBWHc4SmQkAHAwZFK9quiYIBlPmPN88rai44KkypgoTa2Wik7QDOtDWniyg6KTRGrhuxiFQugUFVoLeSS38ztFp0UqOAq5TjdH0RlBMUTYbXBiExWdFYXB8d819Qcq+oPIGs8Tz3xjF', '', 'Уход за кошками и собаками', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `header`, `short_description`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(10, 1, 'Как выгуливать собак?', 'Как выгуливать собак?', 'Узнайте секреты успешного выгула вашей собаки. В нашем блоге мы предоставляем практические...', '&lt;p&gt;&lt;span data-metadata=&quot;&lt;!--(figmeta)eyJmaWxlS2V5IjoiUHFxdE5yMXFyR01BdzU3YVoxWDJnVyIsInBhc3RlSUQiOjE3NjQzNTE2OTUsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)--&gt;&quot;&gt;&lt;/span&gt;&lt;/p&gt;', '', 'Как выгуливать собак?', '', ''),
(11, 1, 'Хвостатые Друзья', 'Хвостатые Друзья', 'Наши хвостатые друзья - искренние спутники, которые приносят радость и тепло в наши жизни...', '&lt;p&gt;&lt;span data-metadata=&quot;&lt;!--(figmeta)eyJmaWxlS2V5IjoiUHFxdE5yMXFyR01BdzU3YVoxWDJnVyIsInBhc3RlSUQiOjIxMzA4OTcyMjgsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)--&gt;&quot;&gt;&lt;/span&gt;&lt;/p&gt;', '', 'Хвостатые Друзья', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_filter`
--

CREATE TABLE `oc_information_filter` (
  `information_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_image`
--

CREATE TABLE `oc_information_image` (
  `information_image_id` int(11) NOT NULL,
  `information_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_product_related`
--

CREATE TABLE `oc_information_product_related` (
  `information_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `route` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_related`
--

CREATE TABLE `oc_information_related` (
  `information_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `route` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_category`
--

CREATE TABLE `oc_information_to_category` (
  `information_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_information_to_category`
--

INSERT INTO `oc_information_to_category` (`information_id`, `category_id`, `main_category`) VALUES
(10, 63, 0),
(11, 63, 0),
(12, 63, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(7, 0, 0),
(10, 0, 0),
(6, 0, 0),
(5, 0, 0),
(3, 0, 0),
(11, 0, 0),
(12, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(10, 0),
(11, 0),
(12, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_user`
--

CREATE TABLE `oc_information_to_user` (
  `information_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_information_to_user`
--

INSERT INTO `oc_information_to_user` (`information_id`, `user_id`) VALUES
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian', 'ru-ru.png', 'russian', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Главная / Home'),
(2, 'Товары / Product'),
(3, 'Категории / Category'),
(4, 'По умолчанию / Default'),
(5, 'Производители / Manufacturer'),
(6, 'Личный кабинет / Account'),
(7, 'Оформление заказа / Checkout'),
(8, 'Контакты / Contact'),
(9, 'Карта сайта / Sitemap'),
(10, 'Партнеры / Affiliate'),
(11, 'Статьи / Information'),
(12, 'Сравнение / Compare'),
(13, 'Поиск / Search'),
(14, 'Категория информация / Categoriy Information'),
(19, 'Brainy Filter Layout');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(195, 1, 'html.41', 'content_top', 7),
(209, 3, 'brainyfilter.47', 'column_left', 0),
(193, 1, 'html.35', 'content_top', 5),
(194, 1, 'latest_information.39', 'content_top', 6),
(192, 1, 'featured.28', 'content_top', 4),
(191, 1, 'bestseller.34', 'content_top', 3),
(190, 1, 'html.33', 'content_top', 2),
(189, 1, 'html.32', 'content_top', 1),
(188, 1, 'slideshow.27', 'content_top', 0),
(196, 1, 'newsletter.42', 'content_top', 8),
(208, 19, 'brainyfilter.47', 'column_left', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(89, 3, 0, 'product/category'),
(76, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(68, 14, 0, 'information/category'),
(88, 19, 0, 'extension/module/brainyfilter/filter');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 10.00000000),
(3, 0.39370000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Сантиметр', 'см'),
(2, 1, 'Миллиметр', 'мм');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(16, 'Purizon ', '', 0),
(12, 'Cosma Pure Love', '', 0),
(13, 'Greenwoods', '', 0),
(14, 'Hill\'s Science', '', 0),
(15, 'PURINA PRO PLAN', '', 0),
(11, 'Cat\'s Best', '', 0),
(17, 'Royal Canin', '', 0),
(18, 'Sanabelle', '', 0),
(19, 'Black Angus', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 1, 'Header data', 'Code', 'Ivan Ivanov', '1.0', 'https://www.uroki-verstki.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>Header data</name>\r\n  <code>Code</code>\r\n  <version>1.0</version>\r\n  <author>Ivan Ivanov</author>\r\n  <link>https://www.uroki-verstki.ru</link>\r\n \r\n<file path=\"catalog/controller/common/header.php\">\r\n\r\n  <operation>\r\n    <search>\r\n      <![CDATA[\r\n        $data[\'telephone\'] = $this->config->get(\'config_telephone\');\r\n      ]]>\r\n    </search>\r\n    <add position=\"after\">\r\n      <![CDATA[\r\n        $data[\'address\'] = nl2br($this->config->get(\'config_address\'));\r\n        $data[\'email\'] = nl2br($this->config->get(\'config_email\'));\r\n      ]]>\r\n    </add>\r\n  </operation>\r\n\r\n  <operation>\r\n    <search>\r\n      <![CDATA[\r\n        $this->load->language(\'common/header\');\r\n      ]]>\r\n    </search>\r\n    <add position=\"after\">\r\n      <![CDATA[\r\n        $data[\'informations\'] = array();\r\n\r\n        foreach ($this->model_catalog_information->getInformations() as $result) {\r\n          if ($result[\'bottom\']) {\r\n            $data[\'informations\'][] = array(\r\n              \'title\' => $result[\'title\'],\r\n              \'href\'  => $this->url->link(\'information/information\', \'information_id=\' . $result[\'information_id\'])\r\n            );\r\n          }\r\n        }\r\n      ]]>\r\n    </add>\r\n  </operation>\r\n\r\n</file>\r\n \r\n</modification>', 1, '2025-03-08 07:35:27'),
(2, 3, 'Auto SEO URL', 'Auto-SEO-URL', 'opencart3x.ru', '3.x', 'https://opencart3x.ru', '﻿<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r<modification>\r	<name>Auto SEO URL</name>\r	<code>Auto-SEO-URL</code>	\r	<version>3.x</version>\r	<author>opencart3x.ru</author>\r	<link>https://opencart3x.ru</link>\r\r	<file path=\"admin/view/template/common/footer.twig\">\r		<operation>\r			<search><![CDATA[</body>]]></search>\r			<add position=\"before\">\r			<![CDATA[\r			<script type=\"text/javascript\"><!--\r				function seoUrlFill(string,pageType,lang=\'en\',langId=\'1\'){var delimiter=\'-\',keyword=$(\'input[name=\"\'+pageType+\'_seo_url[0][\'+langId+\']\"]\'),abc={\'ß\':\'ss\',\'à\':\'a\',\'á\':\'a\',\'â\':\'a\',\'ã\':\'a\',\'ä\':\'a\',\'å\':\'a\',\'æ\':\'ae\',\'ç\':\'c\',\'è\':\'e\',\'é\':\'e\',\'ê\':\'e\',\'ë\':\'e\',\'ì\':\'i\',\'í\':\'i\',\'î\':\'i\',\'ï\':\'i\',\'ð\':\'d\',\'ñ\':\'n\',\'ò\':\'o\',\'ó\':\'o\',\'ô\':\'o\',\'õ\':\'o\',\'ö\':\'o\',\'ő\':\'o\',\'ø\':\'o\',\'ù\':\'u\',\'ú\':\'u\',\'û\':\'u\',\'ü\':\'u\',\'ű\':\'u\',\'ý\':\'y\',\'þ\':\'th\',\'ÿ\':\'y\',\'α\':\'a\',\'β\':\'b\',\'γ\':\'g\',\'δ\':\'d\',\'ε\':\'e\',\'ζ\':\'z\',\'η\':\'h\',\'θ\':\'8\',\'ι\':\'i\',\'κ\':\'k\',\'λ\':\'l\',\'μ\':\'m\',\'ν\':\'n\',\'ξ\':\'3\',\'ο\':\'o\',\'π\':\'p\',\'ρ\':\'r\',\'σ\':\'s\',\'τ\':\'t\',\'υ\':\'y\',\'φ\':\'f\',\'χ\':\'x\',\'ψ\':\'ps\',\'ω\':\'w\',\'ά\':\'a\',\'έ\':\'e\',\'ί\':\'i\',\'ό\':\'o\',\'ύ\':\'y\',\'ή\':\'h\',\'ώ\':\'w\',\'ς\':\'s\',\'ϊ\':\'i\',\'ΰ\':\'y\',\'ϋ\':\'y\',\'ΐ\':\'i\',\'ş\':\'s\',\'ı\':\'i\',\'ç\':\'c\',\'ü\':\'u\',\'ö\':\'o\',\'ğ\':\'g\',\'а\':\'a\',\'б\':\'b\',\'в\':\'v\',\'г\':\'g\',\'д\':\'d\',\'е\':\'e\',\'ё\':\'yo\',\'ж\':\'zh\',\'з\':\'z\',\'и\':\'i\',\'й\':\'j\',\'к\':\'k\',\'л\':\'l\',\'м\':\'m\',\'н\':\'n\',\'о\':\'o\',\'п\':\'p\',\'р\':\'r\',\'с\':\'s\',\'т\':\'t\',\'у\':\'u\',\'ф\':\'f\',\'х\':\'h\',\'ц\':\'c\',\'ч\':\'ch\',\'ш\':\'sh\',\'щ\':\'sh\',\'ъ\':\'\',\'ы\':\'y\',\'ь\':\'\',\'э\':\'e\',\'ю\':\'yu\',\'я\':\'ya\',\'є\':\'ye\',\'і\':\'i\',\'ї\':\'yi\',\'ґ\':\'g\',\'č\':\'c\',\'ď\':\'d\',\'ě\':\'e\',\'ň\':\'n\',\'ř\':\'r\',\'š\':\'s\',\'ť\':\'t\',\'ů\':\'u\',\'ž\':\'z\',\'ą\':\'a\',\'ć\':\'c\',\'ę\':\'e\',\'ł\':\'l\',\'ń\':\'n\',\'ó\':\'o\',\'ś\':\'s\',\'ź\':\'z\',\'ż\':\'z\',\'ā\':\'a\',\'č\':\'c\',\'ē\':\'e\',\'ģ\':\'g\',\'ī\':\'i\',\'ķ\':\'k\',\'ļ\':\'l\',\'ņ\':\'n\',\'š\':\'s\',\'ū\':\'u\',\'ž\':\'z\',\'ө\':\'o\',\'ң\':\'n\',\'ү\':\'u\',\'ә\':\'a\',\'ғ\':\'g\',\'қ\':\'q\',\'ұ\':\'u\',\'ა\':\'a\',\'ბ\':\'b\',\'გ\':\'g\',\'დ\':\'d\',\'ე\':\'e\',\'ვ\':\'v\',\'ზ\':\'z\',\'თ\':\'th\',\'ი\':\'i\',\'კ\':\'k\',\'ლ\':\'l\',\'მ\':\'m\',\'ნ\':\'n\',\'ო\':\'o\',\'პ\':\'p\',\'ჟ\':\'zh\',\'რ\':\'r\',\'ს\':\'s\',\'ტ\':\'t\',\'უ\':\'u\',\'ფ\':\'ph\',\'ქ\':\'q\',\'ღ\':\'gh\',\'ყ\':\'qh\',\'შ\':\'sh\',\'ჩ\':\'ch\',\'ც\':\'ts\',\'ძ\':\'dz\',\'წ\':\'ts\',\'ჭ\':\'tch\',\'ხ\':\'kh\',\'ჯ\':\'j\',\'ჰ\':\'h\'};switch(lang){case\'bg\':abc[\'щ\']=\'sht\';abc[\'ъ\']=\'a\';break;case\'uk\':abc[\'и\']=\'y\';break;}\r				string=string.toLowerCase();for(var k in abc){string=string.replace(RegExp(k,\'g\'),abc[k]);}\r				var alnum=(typeof(XRegExp)===\'undefined\')?RegExp(\'[^a-z0-9]+\',\'ig\'):XRegExp(\'[^\\\\p{L}\\\\p{N}]+\',\'ig\');string=string.replace(alnum,delimiter);string=string.replace(RegExp(\'[\'+delimiter+\']{2,}\',\'g\'),delimiter);string=string.replace(RegExp(\'(^\'+delimiter+\'|\'+delimiter+\'$)\',\'g\'),\'\');if(keyword.length&&keyword.val()==\'\'){keyword.val(string);}}\r			//--></script>\r			]]>\r			</add>\r		</operation>\r	</file>	\r	\r	<file path=\"admin/view/template/catalog/product_form.twig\">\r		<operation>\r			<search><![CDATA[name=\"product_description[{{ language.language_id }}][name]\"]]></search>\r			<add position=\"replace\">\r				<![CDATA[name=\"product_description[{{ language.language_id }}][name]\" onchange=\"seoUrlFill(this.value,\'product\',\'{{ language.code|slice(0,2)|lower }}\',{{ language.language_id }});\"]]>\r			</add>\r		</operation>\r	</file>\r  	<file path=\"admin/view/template/catalog/category_form.twig\">\r		<operation>\r			<search><![CDATA[name=\"category_description[{{ language.language_id }}][name]\"]]></search>\r			<add position=\"replace\">\r				<![CDATA[name=\"category_description[{{ language.language_id }}][name]\" onchange=\"seoUrlFill(this.value,\'category\',\'{{ language.code|slice(0,2)|lower }}\',{{ language.language_id }});\"]]>\r			</add>\r		</operation>\r	</file>	\r\r	<file path=\"admin/view/template/catalog/manufacturer_form.twig\">\r		<operation>\r			<search><![CDATA[name=\"name\"]]></search>\r			<add position=\"replace\">\r				<![CDATA[name=\"name\" onchange=\"seoUrlFill(this.value,\'manufacturer\');\"]]>\r			</add>\r		</operation>\r	</file>\r	\r	<file path=\"admin/view/template/catalog/information_form.twig\">\r		<operation>\r			<search><![CDATA[name=\"information_description[{{ language.language_id }}][title]\"]]></search>\r			<add position=\"replace\">\r				<![CDATA[name=\"information_description[{{ language.language_id }}][title]\" onchange=\"seoUrlFill(this.value,\'information\',\'{{ language.code|slice(0,2)|lower }}\',{{ language.language_id }});\"]]>\r			</add>\r		</operation>\r	</file>\r\r	<file path=\"admin/view/template/blog/blog_form.twig\" error=\"skip\">\r		<operation error=\"skip\">\r			<search><![CDATA[name=\"blog_description[{{ language.language_id }}][title]\"]]></search>\r			<add position=\"replace\">\r				<![CDATA[name=\"blog_description[{{ language.language_id }}][title]\" onchange=\"seoUrlFill(this.value,\'blog\',\'{{ language.code|slice(0,2)|lower }}\',{{ language.language_id }});\"]]>\r			</add>\r		</operation>\r	</file>\r\r	<file path=\"admin/view/template/blog/blog_category_form.twig\" error=\"skip\">\r		<operation error=\"skip\">\r			<search><![CDATA[name=\"blog_category_description[{{ language.language_id }}][name]\"]]></search>\r			<add position=\"replace\">\r				<![CDATA[name=\"blog_category_description[{{ language.language_id }}][name]\" onchange=\"seoUrlFill(this.value,\'blogcategory\',\'{{ language.code|slice(0,2)|lower }}\',{{ language.language_id }});\"]]>\r			</add>\r		</operation>\r	</file>\r</modification>', 1, '2025-03-10 17:06:50'),
(3, 4, 'Quick Save 3x', 'quicksave-adw', 'AlexDW', '1.03', 'https://opencart.club/profile/227-alexdw/content/?type=downloads_file', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Quick Save 3x</name>\r\n	<version>1.03</version>\r\n	<author>AlexDW</author>\r\n	<link><![CDATA[https://opencart.club/profile/227-alexdw/content/?type=downloads_file]]></link>\r\n	<code>quicksave-adw</code>\r\n	<file path=\"admin/view/template/catalog/product_form.twig\">\r\n		<operation>\r\n			<search><![CDATA[\r\n<button type=\"submit\"\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<!-- quicksave -->\r\n	  {% if pidqs %}\r\n	  <button id=\"qsave\" style=\"margin: 0 10px;\" data-toggle=\"tooltip\" title=\"Quick Save\" class=\"btn btn-warning\"><i class=\"fa fa-save\"></i></button>\r\n	  {% endif %}\r\n<!-- quicksave end -->\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n{{ footer }}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n//quicksave\r\n$(\"#qsave\").on(\"click\",function(){for(var e=$(\".note-editor\").length,r=0;e>r;r++){var t=$(\".note-editor\").eq(r).parent().children(\"textarea\").attr(\"id\");if(\"function\"==typeof $().code)var a=$(\"#\"+t).code();else a=$(\"#\"+t).summernote(\"code\");$(\"#\"+t).html(a)}$(\"textarea\").each(function(){var t,a=$(this).attr(\"id\");\"undefined\"!=typeof CKEDITOR&&void 0!==CKEDITOR.instances[a]&&(t=CKEDITOR.instances[a].getData(),$(\"#\"+a).html(t))});$.ajax({type:\"post\",data:$(\"form\").serialize(),url:\"index.php?route=catalog/product/qsave&user_token={{ user_token }}&product_id={{ pidqs }}\",dataType:\"json\",beforeSend:function(){$(\"#qsave\").prop(\"disabled\",!0)},complete:function(){$(\"#qsave\").prop(\"disabled\",!1)},success:function(e){if($(\".alert\").remove(),$(\".text-danger\").remove(),$(\"div\").removeClass(\"has-error\"),e.error){if(html=\'<div class=\"alert alert-danger\">\',html+=\" \"+e.error.warning+\' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></br>\',e.error.name){var t=\"\";for(r in e.error.name){var a=$(\"#input-name\"+r);$(a).after(\'<div class=\"text-danger\">\'+e.error.name[r]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.name[r]}html+=t}if(e.error.meta_title){t=\"\";for(r in e.error.meta_title){a=$(\"#input-meta-title\"+r);$(a).after(\'<div class=\"text-danger\">\'+e.error.meta_title[r]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.meta_title[r]}html+=t}if(e.error.model&&($(\"#input-model\").after(\'<div class=\"text-danger\">\'+e.error.model+\"</div>\"),$(\"#input-model\").parent().addClass(\"has-error\"),html+=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.model),e.error.keyword){t=\"\";for(s in e.error.keyword)for(r in e.error.keyword[s]){a=$(\'[name=\"product_seo_url[\'+s+\"][\"+r+\']\"]\');$(a).parent().after(\'<div class=\"text-danger\">\'+e.error.keyword[s][r]+\"</div>\"),$(a).parent(\".input-group\").addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.keyword[s][r],html+=t}}html+=\" </div>\",$(\"#content > .container-fluid\").prepend(html)}e.success&&$(\"#content > .container-fluid\").prepend(\'<div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> \'+e.success+\'  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\')},error:function(e,r,t){alert(t+\"\\r\\n\"+e.statusText+\"\\r\\n\"+e.responseText)}})});\r\n//quicksave end\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\npublic function index() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	public function qsave() {\r\n		$this->language->load(\'catalog/product\');\r\n		$this->load->model(\'catalog/product\');\r\n		$json = array();\r\n		if ($this->validateForm()) {\r\n			$this->model_catalog_product->editProduct($this->request->get[\'product_id\'], $this->request->post);\r\n			$json[\'success\'] = ($this->language->get(\'text_success\')).\' --- \'.(date(\"Y-m-d - H:i:s\"));\r\n		} else {\r\n			$json[\'error\'] = $this->error;\r\n		}\r\n		$this->response->addHeader(\'Content-Type: application/json; charset=utf-8\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n$data[\'cancel\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	$data[\'pidqs\'] = isset($this->request->get[\'product_id\']) ? $this->request->get[\'product_id\'] : \'\';\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/view/template/catalog/category_form.twig\">\r\n		<operation>\r\n			<search><![CDATA[\r\n<button type=\"submit\"\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<!-- quicksave -->\r\n	  {% if pidqs %}\r\n	  <button id=\"qsave\" style=\"margin: 0 10px;\" data-toggle=\"tooltip\" title=\"Quick Save\" class=\"btn btn-warning\"><i class=\"fa fa-save\"></i></button>\r\n	  {% endif %}\r\n<!-- quicksave end -->\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n{{ footer }}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n//quicksave\r\n$(\"#qsave\").on(\"click\",function(){for(var e=$(\".note-editor\").length,r=0;e>r;r++){var t=$(\".note-editor\").eq(r).parent().children(\"textarea\").attr(\"id\");if(\"function\"==typeof $().code)var a=$(\"#\"+t).code();else a=$(\"#\"+t).summernote(\"code\");$(\"#\"+t).html(a)}$(\"textarea\").each(function(){var t,a=$(this).attr(\"id\");\"undefined\"!=typeof CKEDITOR&&void 0!==CKEDITOR.instances[a]&&(t=CKEDITOR.instances[a].getData(),$(\"#\"+a).html(t))});$.ajax({type:\"post\",data:$(\"form\").serialize(),url:\"index.php?route=catalog/category/qsave&user_token={{ user_token }}&category_id={{ pidqs }}\",dataType:\"json\",beforeSend:function(){$(\"#qsave\").prop(\"disabled\",!0)},complete:function(){$(\"#qsave\").prop(\"disabled\",!1)},success:function(e){if($(\".alert\").remove(),$(\".text-danger\").remove(),$(\"div\").removeClass(\"has-error\"),e.error){if(html=\'<div class=\"alert alert-danger\">\',html+=\" \"+e.error.warning+\' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></br>\',e.error.name){var t=\"\";for(r in e.error.name){var a=$(\"#input-name\"+r);$(a).after(\'<div class=\"text-danger\">\'+e.error.name[r]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.name[r]}html+=t}if(e.error.meta_title){t=\"\";for(r in e.error.meta_title){a=$(\"#input-meta-title\"+r);$(a).after(\'<div class=\"text-danger\">\'+e.error.meta_title[r]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.meta_title[r]}html+=t}if(e.error.parent&&($(\"#input-parent\").after(\'<div class=\"text-danger\">\'+e.error.parent+\"</div>\"),$(\"#input-parent\").parent().addClass(\"has-error\"),html+=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.parent),e.error.keyword){t=\"\";for(s in e.error.keyword)for(r in e.error.keyword[s]){a=$(\'[name=\"category_seo_url[\'+s+\"][\"+r+\']\"]\');$(a).parent().after(\'<div class=\"text-danger\">\'+e.error.keyword[s][r]+\"</div>\"),$(a).parent(\".input-group\").addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.keyword[s][r],html+=t}}html+=\" </div>\",$(\"#content > .container-fluid\").prepend(html)}e.success&&$(\"#content > .container-fluid\").prepend(\'<div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> \'+e.success+\'  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\')},error:function(e,r,t){alert(t+\"\\r\\n\"+e.statusText+\"\\r\\n\"+e.responseText)}})});\r\n//quicksave end\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/category.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\npublic function index() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	public function qsave() {\r\n		$this->language->load(\'catalog/category\');\r\n		$this->load->model(\'catalog/category\');\r\n		$json = array();\r\n		if ($this->validateForm()) {\r\n			$this->model_catalog_category->editCategory($this->request->get[\'category_id\'], $this->request->post);\r\n			$json[\'success\'] = ($this->language->get(\'text_success\')).\' --- \'.(date(\"Y-m-d - H:i:s\"));\r\n		} else {\r\n			$json[\'error\'] = $this->error;\r\n		}\r\n		$this->response->addHeader(\'Content-Type: application/json; charset=utf-8\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n$data[\'cancel\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	$data[\'pidqs\'] = isset($this->request->get[\'category_id\']) ? $this->request->get[\'category_id\'] : \'\';\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/view/template/catalog/manufacturer_form.twig\">\r\n		<operation>\r\n			<search><![CDATA[\r\n<button type=\"submit\"\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<!-- quicksave -->\r\n	  {% if pidqs %}\r\n	  <button id=\"qsave\" style=\"margin: 0 10px;\" data-toggle=\"tooltip\" title=\"Quick Save\" class=\"btn btn-warning\"><i class=\"fa fa-save\"></i></button>\r\n	  {% endif %}\r\n<!-- quicksave end -->\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n{{ footer }}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n//quicksave\r\n$(\"#qsave\").on(\"click\",function(){for(var e=$(\".note-editor\").length,r=0;e>r;r++){var t=$(\".note-editor\").eq(r).parent().children(\"textarea\").attr(\"id\");if(\"function\"==typeof $().code)var a=$(\"#\"+t).code();else a=$(\"#\"+t).summernote(\"code\");$(\"#\"+t).html(a)}$(\"textarea\").each(function(){var t,a=$(this).attr(\"id\");\"undefined\"!=typeof CKEDITOR&&void 0!==CKEDITOR.instances[a]&&(t=CKEDITOR.instances[a].getData(),$(\"#\"+a).html(t))});$.ajax({type:\"post\",data:$(\"form\").serialize(),url:\"index.php?route=catalog/manufacturer/qsave&user_token={{ user_token }}&manufacturer_id={{ pidqs }}\",dataType:\"json\",beforeSend:function(){$(\"#qsave\").prop(\"disabled\",!0)},complete:function(){$(\"#qsave\").prop(\"disabled\",!1)},success:function(e){if($(\".alert\").remove(),$(\".text-danger\").remove(),$(\"div\").removeClass(\"has-error\"),e.error){if(html=\'<div class=\"alert alert-danger\">\',html+=\" \"+e.error.warning+\' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></br>\',e.error.name&&($(\"#input-name\").after(\'<div class=\"text-danger\">\'+e.error.name+\"</div>\"),$(\"#input-name\").parent().addClass(\"has-error\"),html+=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.name),e.error.keyword){var t=\"\";for(s in e.error.keyword)for(r in e.error.keyword[s]){var a=$(\'[name=\"manufacturer_seo_url[\'+s+\"][\"+r+\']\"]\');$(a).parent().after(\'<div class=\"text-danger\">\'+e.error.keyword[s][r]+\"</div>\"),$(a).parent(\".input-group\").addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.keyword[s][r],html+=t}}html+=\" </div>\",$(\"#content > .container-fluid\").prepend(html)}e.success&&$(\"#content > .container-fluid\").prepend(\'<div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> \'+e.success+\'  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\')},error:function(e,r,t){alert(t+\"\\r\\n\"+e.statusText+\"\\r\\n\"+e.responseText)}})});\r\n//quicksave end\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\npublic function index() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	public function qsave() {\r\n		$this->language->load(\'catalog/manufacturer\');\r\n		$this->load->model(\'catalog/manufacturer\');\r\n		$json = array();\r\n		if ($this->validateForm()) {\r\n			$this->model_catalog_manufacturer->editManufacturer($this->request->get[\'manufacturer_id\'], $this->request->post);\r\n			$json[\'success\'] = ($this->language->get(\'text_success\')).\' --- \'.(date(\"Y-m-d - H:i:s\"));\r\n		} else {\r\n			$json[\'error\'] = $this->error;\r\n\r\n			//fix for manufacturer error\r\n			if ($this->error && !isset($this->error[\'warning\'])) {\r\n				$this->language->load(\'catalog/information\');\r\n				$json[\'error\'][\'warning\'] = $this->language->get(\'error_warning\');\r\n			}\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json; charset=utf-8\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n$data[\'cancel\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	$data[\'pidqs\'] = isset($this->request->get[\'manufacturer_id\']) ? $this->request->get[\'manufacturer_id\'] : \'\';\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/view/template/catalog/information_form.twig\">\r\n		<operation>\r\n			<search><![CDATA[\r\n<button type=\"submit\"\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<!-- quicksave -->\r\n	  {% if pidqs %}\r\n	  <button id=\"qsave\" style=\"margin: 0 10px;\" data-toggle=\"tooltip\" title=\"Quick Save\" class=\"btn btn-warning\"><i class=\"fa fa-save\"></i></button>\r\n	  {% endif %}\r\n<!-- quicksave end -->\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n{{ footer }}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n//quicksave\r\n$(\"#qsave\").on(\"click\",function(){for(var r=$(\".note-editor\").length,e=0;r>e;e++){var t=$(\".note-editor\").eq(e).parent().children(\"textarea\").attr(\"id\");if(\"function\"==typeof $().code)var a=$(\"#\"+t).code();else a=$(\"#\"+t).summernote(\"code\");$(\"#\"+t).html(a)}$(\"textarea\").each(function(){var t,a=$(this).attr(\"id\");\"undefined\"!=typeof CKEDITOR&&void 0!==CKEDITOR.instances[a]&&(t=CKEDITOR.instances[a].getData(),$(\"#\"+a).html(t))});$.ajax({type:\"post\",data:$(\"form\").serialize(),url:\"index.php?route=catalog/information/qsave&user_token={{ user_token }}&information_id={{ pidqs }}\",dataType:\"json\",beforeSend:function(){$(\"#qsave\").prop(\"disabled\",!0)},complete:function(){$(\"#qsave\").prop(\"disabled\",!1)},success:function(r){if($(\".alert\").remove(),$(\".text-danger\").remove(),$(\"div\").removeClass(\"has-error\"),r.error){if(html=\'<div class=\"alert alert-danger\">\',html+=\" \"+r.error.warning+\' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></br>\',r.error.title){var t=\"\";for(e in r.error.title){var a=$(\"#input-title\"+e);$(a).after(\'<div class=\"text-danger\">\'+r.error.title[e]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+r.error.title[e]}html+=t}if(r.error.description){t=\"\";for(e in r.error.description){a=$(\"#input-description\"+e);$(a).after(\'<div class=\"text-danger\">\'+r.error.description[e]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+r.error.description[e]}html+=t}if(r.error.meta_title){t=\"\";for(e in r.error.meta_title){a=$(\"#input-meta-title\"+e);$(a).after(\'<div class=\"text-danger\">\'+r.error.meta_title[e]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+r.error.meta_title[e]}html+=t}if(r.error.keyword){t=\"\";for(s in r.error.keyword)for(e in r.error.keyword[s]){a=$(\'[name=\"information_seo_url[\'+s+\"][\"+e+\']\"]\');$(a).parent().after(\'<div class=\"text-danger\">\'+r.error.keyword[s][e]+\"</div>\"),$(a).parent(\".input-group\").addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+r.error.keyword[s][e],html+=t}}html+=\" </div>\",$(\"#content > .container-fluid\").prepend(html)}r.success&&$(\"#content > .container-fluid\").prepend(\'<div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> \'+r.success+\'  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\')},error:function(r,e,t){alert(t+\"\\r\\n\"+r.statusText+\"\\r\\n\"+r.responseText)}})});\r\n//quicksave end\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/information.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\npublic function index() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	public function qsave() {\r\n		$this->language->load(\'catalog/information\');\r\n		$this->load->model(\'catalog/information\');\r\n		$json = array();\r\n		if ($this->validateForm()) {\r\n			$this->model_catalog_information->editInformation($this->request->get[\'information_id\'], $this->request->post);\r\n			$json[\'success\'] = ($this->language->get(\'text_success\')).\' --- \'.(date(\"Y-m-d - H:i:s\"));\r\n		} else {\r\n			$json[\'error\'] = $this->error;\r\n		}\r\n		$this->response->addHeader(\'Content-Type: application/json; charset=utf-8\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n$data[\'cancel\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	$data[\'pidqs\'] = isset($this->request->get[\'information_id\']) ? $this->request->get[\'information_id\'] : \'\';\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>', 1, '2025-03-10 18:19:23');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(18, 31, 'XD Stickers for Opencart | ocStore 3.x', '9638944134', 'Domus159@gmail.com', '1.3.4', '//xdomus.ru/opencart/modul-stikery-dlya-opencart-besplatno/', '﻿<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>XD Stickers for Opencart | ocStore 3.x</name>\r\n	<code>9638944134</code>\r\n	<version>1.3.4</version>\r\n    <author>Domus159@gmail.com</author>\r\n    <link>//xdomus.ru/opencart/modul-stikery-dlya-opencart-besplatno/</link>\r\n	<file path=\"admin/model/catalog/product.php\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$this->cache->delete(\'product\');\r\n				]]>\r\n			</search>\r\n			<add position=\"before\">\r\n				<![CDATA[\r\n					// XD Stickers start\r\n					$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"xdstickers_product WHERE product_id = \" . (int)$product_id);\r\n					// var_dump($data[\'xdstickers\']);\r\n					if (isset($data[\'xdstickers\'])) {\r\n						foreach ($data[\'xdstickers\'] as $xdsticker) {\r\n							$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"xdstickers_product SET product_id = \" . (int)$product_id . \", xdsticker_id = \".(int)$xdsticker[\'xdsticker_id\']);\r\n						}\r\n					}\r\n					// XD Stickers end\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$data[\'layouts\'] = $this->model_design_layout->getLayouts();\r\n				]]>\r\n			</search>\r\n			<add position=\"after\">\r\n				<![CDATA[\r\n					// XD Stickers start\r\n					$this->load->language(\'catalog/product\');\r\n					$data[\'heading_title\'] = $this->language->get(\'heading_title\');	\r\n					\r\n					$this->load->language(\'extension/module/xdstickers\');\r\n					$this->load->model(\'extension/module/xdstickers\');\r\n					$data[\'xdstickers_product\'] = array();\r\n					$data[\'tab_xdstickers\'] = $this->language->get(\'tab_xdstickers\');\r\n					$data[\'entry_xdstickers\'] = $this->language->get(\'entry_xdstickers\');\r\n					$data[\'xdstickers\'] = $this->model_extension_module_xdstickers->getCustomXDStickers();\r\n					if (isset($this->request->post[\'product_layout\'])) {\r\n						$data[\'xdstickers_product\'] = $this->request->post[\'xdstickers\'];\r\n					} elseif (isset($this->request->get[\'product_id\'])) {\r\n						$xdstickers_products = array();\r\n						$xdstickers_products = $this->model_extension_module_xdstickers->getCustomXDStickersProduct($this->request->get[\'product_id\']);\r\n						foreach ($xdstickers_products as $xdstickers_product) {\r\n							$data[\'xdstickers_product\'][] = $xdstickers_product[\'xdsticker_id\'];\r\n						}\r\n					} else {\r\n						$data[\'xdstickers_product\'] = array();\r\n					}\r\n					// XD Stickers end\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/product_form.twig\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					<li><a href=\"#tab-design\" data-toggle=\"tab\">{{ tab_design }}</a></li>\r\n				]]>\r\n			</search>\r\n			<add position=\"after\">\r\n				<![CDATA[\r\n					<!-- XD Stickers start -->\r\n						<li><a href=\"#tab-xdstickers\" data-toggle=\"tab\">{{ tab_xdstickers }}</a></li>\r\n					<!-- XD Stickers start -->\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					<div class=\"tab-pane\" id=\"tab-design\">\r\n				]]>\r\n			</search>\r\n			<add position=\"before\"><![CDATA[\r\n				<!-- XD Stickers start -->\r\n				<div class=\"tab-pane\" id=\"tab-xdstickers\">\r\n				  <div class=\"table-responsive\">\r\n					<div class=\"form-group\" style=\"margin: 0px\">\r\n					  <label class=\"col-sm-2 control-label\" for=\"input-xdstickers\">{{ entry_xdstickers }}</label>\r\n					  <div class=\"col-sm-10\">\r\n						<div class=\"well well-sm\" style=\"height: 150px; overflow: auto;\">\r\n							{% for xdsticker in xdstickers %}\r\n								<div class=\"checkbox\">\r\n									<label>\r\n										<input type=\"checkbox\" name=\"xdstickers[{{xdsticker.xdsticker_id}}][xdsticker_id]\" value=\"{{xdsticker.xdsticker_id}}\"{% if xdsticker.xdsticker_id in xdstickers_product %} checked=\"checked\"{% endif %} /> {{xdsticker.name}}\r\n									</label>\r\n								</div>\r\n							{% endfor %}\r\n						</div>\r\n					  </div>\r\n					</div>\r\n				  </div>\r\n				</div>\r\n				<!-- XD Stickers start -->\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					public function index() {\r\n				]]>\r\n			</search>\r\n			<add position=\"after\">\r\n				<![CDATA[\r\n					// XD Stickers start\r\n						$this->load->model(\'setting/setting\');\r\n						$xdstickers = $this->config->get(\'xdstickers\');\r\n						$data[\'xdstickers_status\'] = $this->config->get(\'module_xdstickers_status\');\r\n						if ($data[\'xdstickers_status\']) {\r\n							$data[\'xdstickers\'] = array();\r\n							$data[\'xdstickers_position\'] = $xdstickers[\'position\'];\r\n							$data[\'xdstickers_inline_styles\'] = $xdstickers[\'inline_styles\'];\r\n							$data[\'xdstickers\'][] = array(\r\n								\'id\'			=> \'xdsticker_sale\',\r\n								\'bg\'			=> $xdstickers[\'sale\'][\'bg\'],\r\n								\'color\'			=> $xdstickers[\'sale\'][\'color\'],\r\n								\'status\'		=> $xdstickers[\'sale\'][\'status\'],\r\n							);\r\n							$data[\'xdstickers\'][] = array(\r\n								\'id\'			=> \'xdsticker_bestseller\',\r\n								\'bg\'			=> $xdstickers[\'bestseller\'][\'bg\'],\r\n								\'color\'			=> $xdstickers[\'bestseller\'][\'color\'],\r\n								\'status\'		=> $xdstickers[\'bestseller\'][\'status\'],\r\n							);\r\n							$data[\'xdstickers\'][] = array(\r\n								\'id\'			=> \'xdsticker_novelty\',\r\n								\'bg\'			=> $xdstickers[\'novelty\'][\'bg\'],\r\n								\'color\'			=> $xdstickers[\'novelty\'][\'color\'],\r\n								\'status\'		=> $xdstickers[\'novelty\'][\'status\'],\r\n							);\r\n							$data[\'xdstickers\'][] = array(\r\n								\'id\'			=> \'xdsticker_last\',\r\n								\'bg\'			=> $xdstickers[\'last\'][\'bg\'],\r\n								\'color\'			=> $xdstickers[\'last\'][\'color\'],\r\n								\'status\'		=> $xdstickers[\'last\'][\'status\'],\r\n							);\r\n							$data[\'xdstickers\'][] = array(\r\n								\'id\'			=> \'xdsticker_freeshipping\',\r\n								\'bg\'			=> $xdstickers[\'freeshipping\'][\'bg\'],\r\n								\'color\'			=> $xdstickers[\'freeshipping\'][\'color\'],\r\n								\'status\'		=> $xdstickers[\'freeshipping\'][\'status\'],\r\n							);\r\n\r\n							if (isset($xdstickers[\'stock\']) && !empty($xdstickers[\'stock\'])) {\r\n								foreach($xdstickers[\'stock\'] as $key => $value) {\r\n									if (isset($value[\'status\']) && $value[\'status\'] == \'1\') {\r\n										$data[\'xdstickers\'][] = array(\r\n											\'id\'			=> \'xdsticker_stock_\' . $key,\r\n											\'bg\'			=> $value[\'bg\'],\r\n											\'color\'			=> $value[\'color\'],\r\n											\'status\'		=> $value[\'status\'],\r\n										);\r\n									}\r\n								}\r\n							}\r\n\r\n							// CUSTOM stickers\r\n							$this->load->model(\'extension/module/xdstickers\');\r\n							$custom_xdstickers = $this->model_extension_module_xdstickers->getCustomXDStickers();\r\n							if (!empty($custom_xdstickers)) {\r\n								foreach ($custom_xdstickers as $custom_xdsticker) {\r\n									$custom_sticker_id = \'xdsticker_\' . $custom_xdsticker[\'xdsticker_id\'];\r\n									$data[\'xdstickers\'][] = array(\r\n										\'id\'			=> $custom_sticker_id,\r\n										\'bg\'			=> $custom_xdsticker[\'bg_color\'],\r\n										\'color\'			=> $custom_xdsticker[\'color_color\'],\r\n										\'status\'		=> $custom_xdsticker[\'status\'],\r\n									);\r\n								}\r\n							}\r\n						}\r\n					// XD Stickers end\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/view/theme/*/template/common/header.twig\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					</head>\r\n				]]>\r\n			</search>\r\n			<add position=\"before\">\r\n				<![CDATA[\r\n					<!-- XD stickers start -->\r\n					{% if xdstickers is not empty %}\r\n					<style type=\'text/css\'>\r\n					{{xdstickers_inline_styles}}\r\n					{% for xdsticker in xdstickers %}\r\n						{% if xdsticker.status == \'1\' %}\r\n							.{{xdsticker.id}} {\r\n								background-color:{{ xdsticker.bg }};\r\n								color:{{ xdsticker.color }};\r\n							}\r\n						{% endif %}\r\n					{% endfor %}\r\n					</style>\r\n					{% endif %}\r\n					<!-- XD stickers end -->\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/model/catalog/product.php\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					\'stock_status\'     => $query->row[\'stock_status\'],\r\n				]]>\r\n			</search>\r\n			<add position=\"after\">\r\n				<![CDATA[\r\n					\'stock_status_id\'     => $query->row[\'stock_status_id\'],\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$data[\'products\'] = array();\r\n				]]>\r\n			</search>\r\n			<add position=\"before\">\r\n				<![CDATA[\r\n					// XD Stickers start\r\n						$this->load->model(\'setting/setting\');\r\n						$xdstickers = $this->config->get(\'xdstickers\');\r\n						$current_language_id = $this->config->get(\'config_language_id\');\r\n						$data[\'xdstickers\'] = array();\r\n						$data[\'xdstickers_position\'] = ($xdstickers[\'position\'] == \'0\') ? \' position_upleft\' : \' position_upright\';\r\n						$data[\'xdstickers_status\'] = $this->config->get(\'module_xdstickers_status\');\r\n						if ($data[\'xdstickers_status\']) {\r\n							$data[\'xdstickers\'] = array();\r\n							if ($xdstickers[\'sale\'][\'status\'] == \'1\' && $data[\'special\']) {\r\n								if ($xdstickers[\'sale\'][\'discount_status\'] == \'1\') {\r\n									$sale_value = ceil(((float)$product_info[\'price\'] - (float)$product_info[\'special\']) / ((float)$product_info[\'price\'] * 0.01));\r\n									$sale_text = $xdstickers[\'sale\'][\'text\'][$current_language_id] . \' -\' . strval($sale_value) . \'%\';\r\n								} else {\r\n									$sale_text = $xdstickers[\'sale\'][\'text\'][$current_language_id];\r\n								}\r\n								$data[\'xdstickers\'][] = array(\r\n									\'id\'			=> \'xdsticker_sale\',\r\n									\'text\'			=> $sale_text\r\n								);\r\n							}\r\n							if ($xdstickers[\'bestseller\'][\'status\'] == \'1\') {\r\n								$bestsellers = $this->model_catalog_product->getBestSellerProducts((int)$xdstickers[\'bestseller\'][\'property\']);\r\n								foreach ($bestsellers as $bestseller) {\r\n									if ($bestseller[\'product_id\'] == $this->request->get[\'product_id\']) {\r\n										$data[\'xdstickers\'][] = array(\r\n											\'id\'			=> \'xdsticker_bestseller\',\r\n											\'text\'			=> $xdstickers[\'bestseller\'][\'text\'][$current_language_id]\r\n										);\r\n									}\r\n								}\r\n							}\r\n							if ($xdstickers[\'novelty\'][\'status\'] == \'1\') {\r\n								if ((strtotime($product_info[\'date_added\']) + intval($xdstickers[\'novelty\'][\'property\']) * 24 * 3600) > time()) {\r\n									$data[\'xdstickers\'][] = array(\r\n										\'id\'			=> \'xdsticker_novelty\',\r\n										\'text\'			=> $xdstickers[\'novelty\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							if ($xdstickers[\'last\'][\'status\'] == \'1\') {\r\n								if ($product_info[\'quantity\'] <= intval($xdstickers[\'last\'][\'property\']) && $product_info[\'quantity\'] > 0) {\r\n									$data[\'xdstickers\'][] = array(\r\n										\'id\'			=> \'xdsticker_last\',\r\n										\'text\'			=> $xdstickers[\'last\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							if ($xdstickers[\'freeshipping\'][\'status\'] == \'1\') {\r\n								if ((float)$product_info[\'special\'] >= intval($xdstickers[\'freeshipping\'][\'property\'])) {\r\n									$data[\'xdstickers\'][] = array(\r\n										\'id\'			=> \'xdsticker_freeshipping\',\r\n										\'text\'			=> $xdstickers[\'freeshipping\'][\'text\'][$current_language_id]\r\n									);\r\n								} else if ((float)$product_info[\'price\'] >= intval($xdstickers[\'freeshipping\'][\'property\'])) {\r\n									$data[\'xdstickers\'][] = array(\r\n										\'id\'			=> \'xdsticker_freeshipping\',\r\n										\'text\'			=> $xdstickers[\'freeshipping\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n\r\n							// STOCK stickers\r\n							if (isset($xdstickers[\'stock\']) && !empty($xdstickers[\'stock\'])) {\r\n								foreach($xdstickers[\'stock\'] as $key => $value) {\r\n									// var_dump($value);\r\n									if (isset($value[\'status\']) && $value[\'status\'] == \'1\' && $key == $product_info[\'stock_status_id\'] && $product_info[\'quantity\'] <= 0) {\r\n										$data[\'xdstickers\'][] = array(\r\n											\'id\'			=> \'xdsticker_stock_\' . $key,\r\n											\'text\'			=> $product_info[\'stock_status\']\r\n										);\r\n									}\r\n								}\r\n							}\r\n\r\n							// CUSTOM stickers\r\n							$this->load->model(\'extension/module/xdstickers\');\r\n							$custom_xdstickers_id = $this->model_extension_module_xdstickers->getCustomXDStickersProduct($this->request->get[\'product_id\']);\r\n							if (!empty($custom_xdstickers_id)) {\r\n								foreach ($custom_xdstickers_id as $custom_xdsticker_id) {\r\n									$custom_xdsticker = $this->model_extension_module_xdstickers->getCustomXDSticker($custom_xdsticker_id[\'xdsticker_id\']);\r\n									$custom_xdsticker_text = json_decode($custom_xdsticker[\'text\'], true);\r\n									// var_dump($custom_xdsticker);\r\n									if ($custom_xdsticker[\'status\'] == \'1\') {\r\n										$custom_sticker_class = \'xdsticker_\' . $custom_xdsticker_id[\'xdsticker_id\'];\r\n										$data[\'xdstickers\'][] = array(\r\n											\'id\'			=> $custom_sticker_class,\r\n											\'text\'			=> $custom_xdsticker_text[$current_language_id]\r\n										);\r\n									}\r\n								}\r\n							}\r\n						}\r\n					// XD Stickers end\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$data[\'products\'][] = array(\r\n				]]>\r\n			</search>\r\n			<add position=\"before\">\r\n				<![CDATA[\r\n					// XD Stickers start\r\n						$product_xdstickers = array();\r\n						if ($data[\'xdstickers_status\']) {\r\n							if ($xdstickers[\'sale\'][\'status\'] == \'1\' && $special) {\r\n								if ($xdstickers[\'sale\'][\'discount_status\'] == \'1\') {\r\n									$sale_value = ceil(((float)$result[\'price\'] - (float)$result[\'special\']) / ((float)$result[\'price\'] * 0.01));\r\n									$sale_text = $xdstickers[\'sale\'][\'text\'][$current_language_id] . \' -\' . strval($sale_value) . \'%\';\r\n								} else {\r\n									$sale_text = $xdstickers[\'sale\'][\'text\'][$current_language_id];\r\n								}								\r\n								$product_xdstickers[] = array(\r\n									\'id\'			=> \'xdsticker_sale\',\r\n									\'text\'			=> $sale_text\r\n								);\r\n							}\r\n							if ($xdstickers[\'bestseller\'][\'status\'] == \'1\') {\r\n								$bestsellers = $this->model_catalog_product->getBestSellerProducts((int)$xdstickers[\'bestseller\'][\'property\']);\r\n								foreach ($bestsellers as $bestseller) {\r\n									if ($bestseller[\'product_id\'] == $result[\'product_id\']) {\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> \'xdsticker_bestseller\',\r\n											\'text\'			=> $xdstickers[\'bestseller\'][\'text\'][$current_language_id]\r\n										);\r\n									}\r\n								}\r\n							}\r\n							if ($xdstickers[\'novelty\'][\'status\'] == \'1\') {\r\n								if ((strtotime($result[\'date_added\']) + intval($xdstickers[\'novelty\'][\'property\']) * 24 * 3600) > time()) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_novelty\',\r\n										\'text\'			=> $xdstickers[\'novelty\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							if ($xdstickers[\'last\'][\'status\'] == \'1\') {\r\n								if ($result[\'quantity\'] <= intval($xdstickers[\'last\'][\'property\']) && $result[\'quantity\'] > 0) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_last\',\r\n										\'text\'			=> $xdstickers[\'last\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							if ($xdstickers[\'freeshipping\'][\'status\'] == \'1\') {\r\n								if ((float)$result[\'special\'] >= intval($xdstickers[\'freeshipping\'][\'property\'])) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_freeshipping\',\r\n										\'text\'			=> $xdstickers[\'freeshipping\'][\'text\'][$current_language_id]\r\n									);\r\n								} else if ((float)$result[\'price\'] >= intval($xdstickers[\'freeshipping\'][\'property\'])) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_freeshipping\',\r\n										\'text\'			=> $xdstickers[\'freeshipping\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n\r\n							// STOCK stickers\r\n							if (isset($xdstickers[\'stock\']) && !empty($xdstickers[\'stock\'])) {\r\n								foreach($xdstickers[\'stock\'] as $key => $value) {\r\n									if (isset($value[\'status\']) && $value[\'status\'] == \'1\' && $key == $result[\'stock_status_id\'] && $result[\'quantity\'] <= 0) {\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> \'xdsticker_stock_\' . $key,\r\n											\'text\'			=> $result[\'stock_status\']\r\n										);\r\n									}\r\n								}\r\n							}\r\n\r\n							// CUSTOM stickers\r\n							$this->load->model(\'extension/module/xdstickers\');\r\n							$custom_xdstickers_id = $this->model_extension_module_xdstickers->getCustomXDStickersProduct($result[\'product_id\']);\r\n							if (!empty($custom_xdstickers_id)) {\r\n								foreach ($custom_xdstickers_id as $custom_xdsticker_id) {\r\n									$custom_xdsticker = $this->model_extension_module_xdstickers->getCustomXDSticker($custom_xdsticker_id[\'xdsticker_id\']);\r\n									$custom_xdsticker_text = json_decode($custom_xdsticker[\'text\'], true);\r\n									// var_dump($custom_xdsticker);\r\n									if ($custom_xdsticker[\'status\'] == \'1\') {\r\n										$custom_sticker_class = \'xdsticker_\' . $custom_xdsticker_id[\'xdsticker_id\'];\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> $custom_sticker_class,\r\n											\'text\'			=> $custom_xdsticker_text[$current_language_id]\r\n										);\r\n									}\r\n								}\r\n							}\r\n						}\r\n					// XD Stickers end\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$data[\'products\'][] = array(\r\n				]]>\r\n			</search>\r\n			<add position=\"after\">\r\n				<![CDATA[\r\n					\'product_xdstickers\'  => $product_xdstickers,\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/view/theme/*/template/product/product.twig\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					<div class=\"{{ class }}\"> {% if thumb or images %}\r\n				]]>\r\n			</search>\r\n			<add position=\"after\">\r\n				<![CDATA[\r\n					<!-- XD stickers start -->\r\n					{% if xdstickers is not empty %}\r\n					<div class=\"xdstickers_wrapper {{xdstickers_position}}\">\r\n						{% for xdsticker in xdstickers %}\r\n							<div class=\"xdstickers {{xdsticker.id}}\">\r\n								{{xdsticker.text}}\r\n							</div>\r\n						{% endfor %}\r\n					</div>\r\n					{% endif %}\r\n					<!-- XD stickers end -->\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					<a href=\"{{ product.href }}\"><img src=\"{{ product.thumb }}\" alt=\"{{ product.name }}\" title=\"{{ product.name }}\" class=\"img-responsive\" /></a>\r\n				]]>\r\n			</search>\r\n			<add position=\"before\">\r\n				<![CDATA[\r\n					<!-- XD stickers start -->\r\n					{% if product.product_xdstickers is not empty %}\r\n					<div class=\"xdstickers_wrapper {{xdstickers_position}}\">\r\n						{% for xdsticker in product.product_xdstickers %}\r\n							<div class=\"xdstickers {{xdsticker.id}}\">\r\n								{{xdsticker.text}}\r\n							</div>\r\n						{% endfor %}\r\n					</div>\r\n					{% endif %}\r\n					<!-- XD stickers end -->\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/product/{category.php,manufacturer.php,special.php,search.php}\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$data[\'products\'][] = array(\r\n				]]>\r\n			</search>\r\n			<add position=\"before\">\r\n				<![CDATA[\r\n					// XD Stickers start\r\n						$this->load->model(\'setting/setting\');\r\n						$xdstickers = $this->config->get(\'xdstickers\');\r\n						$current_language_id = $this->config->get(\'config_language_id\');\r\n						$product_xdstickers = array();\r\n						$data[\'xdstickers_position\'] = ($xdstickers[\'position\'] == \'0\') ? \' position_upleft\' : \' position_upright\';\r\n						$data[\'xdstickers_status\'] = $this->config->get(\'module_xdstickers_status\');\r\n						if ($data[\'xdstickers_status\']) {\r\n							if ($xdstickers[\'sale\'][\'status\'] == \'1\' && $special) {\r\n								if ($xdstickers[\'sale\'][\'discount_status\'] == \'1\') {\r\n									$sale_value = ceil(((float)$result[\'price\'] - (float)$result[\'special\']) / ((float)$result[\'price\'] * 0.01));\r\n									$sale_text = $xdstickers[\'sale\'][\'text\'][$current_language_id] . \' -\' . strval($sale_value) . \'%\';\r\n								} else {\r\n									$sale_text = $xdstickers[\'sale\'][\'text\'][$current_language_id];\r\n								}								\r\n								$product_xdstickers[] = array(\r\n									\'id\'			=> \'xdsticker_sale\',\r\n									\'text\'			=> $sale_text\r\n								);\r\n							}\r\n							if ($xdstickers[\'bestseller\'][\'status\'] == \'1\') {\r\n								$bestsellers = $this->model_catalog_product->getBestSellerProducts((int)$xdstickers[\'bestseller\'][\'property\']);\r\n								foreach ($bestsellers as $bestseller) {\r\n									if ($bestseller[\'product_id\'] == $result[\'product_id\']) {\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> \'xdsticker_bestseller\',\r\n											\'text\'			=> $xdstickers[\'bestseller\'][\'text\'][$current_language_id]\r\n										);\r\n									}\r\n								}\r\n							}\r\n							if ($xdstickers[\'novelty\'][\'status\'] == \'1\') {\r\n								if ((strtotime($result[\'date_added\']) + intval($xdstickers[\'novelty\'][\'property\']) * 24 * 3600) > time()) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_novelty\',\r\n										\'text\'			=> $xdstickers[\'novelty\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							if ($xdstickers[\'last\'][\'status\'] == \'1\') {\r\n								if ($result[\'quantity\'] <= intval($xdstickers[\'last\'][\'property\']) && $result[\'quantity\'] > 0) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_last\',\r\n										\'text\'			=> $xdstickers[\'last\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							if ($xdstickers[\'freeshipping\'][\'status\'] == \'1\') {\r\n								if ((float)$result[\'special\'] >= intval($xdstickers[\'freeshipping\'][\'property\'])) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_freeshipping\',\r\n										\'text\'			=> $xdstickers[\'freeshipping\'][\'text\'][$current_language_id]\r\n									);\r\n								} else if ((float)$result[\'price\'] >= intval($xdstickers[\'freeshipping\'][\'property\'])) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_freeshipping\',\r\n										\'text\'			=> $xdstickers[\'freeshipping\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n\r\n							// STOCK stickers\r\n							if (isset($xdstickers[\'stock\']) && !empty($xdstickers[\'stock\'])) {\r\n								foreach($xdstickers[\'stock\'] as $key => $value) {\r\n									if (isset($value[\'status\']) && $value[\'status\'] == \'1\' && $key == $result[\'stock_status_id\'] && $result[\'quantity\'] <= 0) {\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> \'xdsticker_stock_\' . $key,\r\n											\'text\'			=> $result[\'stock_status\']\r\n										);\r\n									}\r\n								}\r\n							}\r\n\r\n							// CUSTOM stickers\r\n							$this->load->model(\'extension/module/xdstickers\');\r\n							$custom_xdstickers_id = $this->model_extension_module_xdstickers->getCustomXDStickersProduct($result[\'product_id\']);\r\n							if (!empty($custom_xdstickers_id)) {\r\n								foreach ($custom_xdstickers_id as $custom_xdsticker_id) {\r\n									$custom_xdsticker = $this->model_extension_module_xdstickers->getCustomXDSticker($custom_xdsticker_id[\'xdsticker_id\']);\r\n									$custom_xdsticker_text = json_decode($custom_xdsticker[\'text\'], true);\r\n									// var_dump($custom_xdsticker);\r\n									if ($custom_xdsticker[\'status\'] == \'1\') {\r\n										$custom_sticker_class = \'xdsticker_\' . $custom_xdsticker_id[\'xdsticker_id\'];\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> $custom_sticker_class,\r\n											\'text\'			=> $custom_xdsticker_text[$current_language_id]\r\n										);\r\n									}\r\n								}\r\n							}\r\n						}\r\n					// XD Stickers end\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$data[\'products\'][] = array(\r\n				]]>\r\n			</search>\r\n			<add position=\"after\">\r\n				<![CDATA[\r\n					\'product_xdstickers\'  => $product_xdstickers,\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/view/theme/*/template/product/{category.twig,manufacturer_info.twig,special.twig,search.twig}\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					<a href=\"{{ product.href }}\"><img src=\"{{ product.thumb }}\" alt=\"{{ product.name }}\" title=\"{{ product.name }}\" class=\"img-responsive\" />\r\n				]]>\r\n			</search>\r\n			<add position=\"before\">\r\n				<![CDATA[\r\n					<!-- XD stickers start -->\r\n					{% if product.product_xdstickers is not empty %}\r\n					<div class=\"xdstickers_wrapper {{xdstickers_position}}\">\r\n						{% for xdsticker in product.product_xdstickers %}\r\n							<div class=\"xdstickers {{xdsticker.id}}\">\r\n								{{xdsticker.text}}\r\n							</div>\r\n						{% endfor %}\r\n					</div>\r\n					{% endif %}\r\n					<!-- XD stickers end -->\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/extension/module/{bestseller.php,latest.php,special.php}\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$data[\'products\'][] = array(\r\n				]]>\r\n			</search>\r\n			<add position=\"before\">\r\n				<![CDATA[\r\n					// XD Stickers start\r\n						$this->load->model(\'setting/setting\');\r\n						$xdstickers = $this->config->get(\'xdstickers\');\r\n						$current_language_id = $this->config->get(\'config_language_id\');\r\n						$product_xdstickers = array();\r\n						$data[\'xdstickers_position\'] = ($xdstickers[\'position\'] == \'0\') ? \' position_upleft\' : \' position_upright\';\r\n						$data[\'xdstickers_status\'] = $this->config->get(\'module_xdstickers_status\');\r\n						if ($data[\'xdstickers_status\']) {\r\n							if ($xdstickers[\'sale\'][\'status\'] == \'1\' && $special) {\r\n								if ($xdstickers[\'sale\'][\'discount_status\'] == \'1\') {\r\n									$sale_value = ceil(((float)$result[\'price\'] - (float)$result[\'special\']) / ((float)$result[\'price\'] * 0.01));\r\n									$sale_text = $xdstickers[\'sale\'][\'text\'][$current_language_id] . \' -\' . strval($sale_value) . \'%\';\r\n								} else {\r\n									$sale_text = $xdstickers[\'sale\'][\'text\'][$current_language_id];\r\n								}								\r\n								$product_xdstickers[] = array(\r\n									\'id\'			=> \'xdsticker_sale\',\r\n									\'text\'			=> $sale_text\r\n								);\r\n							}\r\n							if ($xdstickers[\'bestseller\'][\'status\'] == \'1\') {\r\n								$bestsellers = $this->model_catalog_product->getBestSellerProducts((int)$xdstickers[\'bestseller\'][\'property\']);\r\n								foreach ($bestsellers as $bestseller) {\r\n									if ($bestseller[\'product_id\'] == $result[\'product_id\']) {\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> \'xdsticker_bestseller\',\r\n											\'text\'			=> $xdstickers[\'bestseller\'][\'text\'][$current_language_id]\r\n										);\r\n									}\r\n								}\r\n							}\r\n							if ($xdstickers[\'novelty\'][\'status\'] == \'1\') {\r\n								if ((strtotime($result[\'date_added\']) + intval($xdstickers[\'novelty\'][\'property\']) * 24 * 3600) > time()) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_novelty\',\r\n										\'text\'			=> $xdstickers[\'novelty\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							if ($xdstickers[\'last\'][\'status\'] == \'1\') {\r\n								if ($result[\'quantity\'] <= intval($xdstickers[\'last\'][\'property\']) && $result[\'quantity\'] > 0) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_last\',\r\n										\'text\'			=> $xdstickers[\'last\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							if ($xdstickers[\'freeshipping\'][\'status\'] == \'1\') {\r\n								if ((float)$result[\'special\'] >= intval($xdstickers[\'freeshipping\'][\'property\'])) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_freeshipping\',\r\n										\'text\'			=> $xdstickers[\'freeshipping\'][\'text\'][$current_language_id]\r\n									);\r\n								} else if ((float)$result[\'price\'] >= intval($xdstickers[\'freeshipping\'][\'property\'])) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_freeshipping\',\r\n										\'text\'			=> $xdstickers[\'freeshipping\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n\r\n							// STOCK stickers\r\n							if (isset($xdstickers[\'stock\']) && !empty($xdstickers[\'stock\'])) {\r\n								foreach($xdstickers[\'stock\'] as $key => $value) {\r\n									if (isset($value[\'status\']) && $value[\'status\'] == \'1\' && $key == $result[\'stock_status_id\'] && $result[\'quantity\'] <= 0) {\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> \'xdsticker_stock_\' . $key,\r\n											\'text\'			=> $result[\'stock_status\']\r\n										);\r\n									}\r\n								}\r\n							}\r\n\r\n							// CUSTOM stickers\r\n							$this->load->model(\'extension/module/xdstickers\');\r\n							$custom_xdstickers_id = $this->model_extension_module_xdstickers->getCustomXDStickersProduct($result[\'product_id\']);\r\n							if (!empty($custom_xdstickers_id)) {\r\n								foreach ($custom_xdstickers_id as $custom_xdsticker_id) {\r\n									$custom_xdsticker = $this->model_extension_module_xdstickers->getCustomXDSticker($custom_xdsticker_id[\'xdsticker_id\']);\r\n									$custom_xdsticker_text = json_decode($custom_xdsticker[\'text\'], true);\r\n									// var_dump($custom_xdsticker);\r\n									if ($custom_xdsticker[\'status\'] == \'1\') {\r\n										$custom_sticker_class = \'xdsticker_\' . $custom_xdsticker_id[\'xdsticker_id\'];\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> $custom_sticker_class,\r\n											\'text\'			=> $custom_xdsticker_text[$current_language_id]\r\n										);\r\n									}\r\n								}\r\n							}\r\n						}\r\n					// XD Stickers end\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$data[\'products\'][] = array(\r\n				]]>\r\n			</search>\r\n			<add position=\"after\">\r\n				<![CDATA[\r\n					\'product_xdstickers\'  => $product_xdstickers,\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/extension/module/featured.php\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$data[\'products\'][] = array(\r\n				]]>\r\n			</search>\r\n			<add position=\"before\">\r\n				<![CDATA[\r\n					// XD Stickers start\r\n						$this->load->model(\'setting/setting\');\r\n						$xdstickers = $this->config->get(\'xdstickers\');\r\n						$current_language_id = $this->config->get(\'config_language_id\');\r\n						$product_xdstickers = array();\r\n						$data[\'xdstickers_position\'] = ($xdstickers[\'position\'] == \'0\') ? \' position_upleft\' : \' position_upright\';\r\n						$data[\'xdstickers_status\'] = $this->config->get(\'module_xdstickers_status\');\r\n						if ($data[\'xdstickers_status\']) {\r\n							if ($xdstickers[\'sale\'][\'status\'] == \'1\' && $special) {\r\n								if ($xdstickers[\'sale\'][\'discount_status\'] == \'1\') {\r\n									$sale_value = ceil(((float)$product_info[\'price\'] - (float)$product_info[\'special\']) / ((float)$product_info[\'price\'] * 0.01));\r\n									$sale_text = $xdstickers[\'sale\'][\'text\'][$current_language_id] . \' -\' . strval($sale_value) . \'%\';\r\n								} else {\r\n									$sale_text = $xdstickers[\'sale\'][\'text\'][$current_language_id];\r\n								}								\r\n								$product_xdstickers[] = array(\r\n									\'id\'			=> \'xdsticker_sale\',\r\n									\'text\'			=> $sale_text\r\n								);\r\n							}\r\n							if ($xdstickers[\'bestseller\'][\'status\'] == \'1\') {\r\n								$bestsellers = $this->model_catalog_product->getBestSellerProducts((int)$xdstickers[\'bestseller\'][\'property\']);\r\n								foreach ($bestsellers as $bestseller) {\r\n									if ($bestseller[\'product_id\'] == $product_info[\'product_id\']) {\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> \'xdsticker_bestseller\',\r\n											\'text\'			=> $xdstickers[\'bestseller\'][\'text\'][$current_language_id]\r\n										);\r\n									}\r\n								}\r\n							}\r\n							if ($xdstickers[\'novelty\'][\'status\'] == \'1\') {\r\n								if ((strtotime($product_info[\'date_added\']) + intval($xdstickers[\'novelty\'][\'property\']) * 24 * 3600) > time()) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_novelty\',\r\n										\'text\'			=> $xdstickers[\'novelty\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							if ($xdstickers[\'last\'][\'status\'] == \'1\') {\r\n								if ($product_info[\'quantity\'] <= intval($xdstickers[\'last\'][\'property\']) && $product_info[\'quantity\'] > 0) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_last\',\r\n										\'text\'			=> $xdstickers[\'last\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							if ($xdstickers[\'freeshipping\'][\'status\'] == \'1\') {\r\n								if ((float)$product_info[\'special\'] >= intval($xdstickers[\'freeshipping\'][\'property\'])) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_freeshipping\',\r\n										\'text\'			=> $xdstickers[\'freeshipping\'][\'text\'][$current_language_id]\r\n									);\r\n								} else if ((float)$product_info[\'price\'] >= intval($xdstickers[\'freeshipping\'][\'property\'])) {\r\n									$product_xdstickers[] = array(\r\n										\'id\'			=> \'xdsticker_freeshipping\',\r\n										\'text\'			=> $xdstickers[\'freeshipping\'][\'text\'][$current_language_id]\r\n									);\r\n								}\r\n							}\r\n							\r\n							// STOCK stickers\r\n							if (isset($xdstickers[\'stock\']) && !empty($xdstickers[\'stock\'])) {\r\n								foreach($xdstickers[\'stock\'] as $key => $value) {\r\n									if (isset($value[\'status\']) && $value[\'status\'] == \'1\' && $key == $product_info[\'stock_status_id\'] && $product_info[\'quantity\'] <= 0) {\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> \'xdsticker_stock_\' . $key,\r\n											\'text\'			=> $product_info[\'stock_status\']\r\n										);\r\n									}\r\n								}		\r\n							}								\r\n\r\n							// CUSTOM stickers\r\n							$this->load->model(\'extension/module/xdstickers\');\r\n							$custom_xdstickers_id = $this->model_extension_module_xdstickers->getCustomXDStickersProduct($product_info[\'product_id\']);\r\n							if (!empty($custom_xdstickers_id)) {\r\n								foreach ($custom_xdstickers_id as $custom_xdsticker_id) {\r\n									$custom_xdsticker = $this->model_extension_module_xdstickers->getCustomXDSticker($custom_xdsticker_id[\'xdsticker_id\']);\r\n									$custom_xdsticker_text = json_decode($custom_xdsticker[\'text\'], true);\r\n									// var_dump($custom_xdsticker);\r\n									if ($custom_xdsticker[\'status\'] == \'1\') {\r\n										$custom_sticker_class = \'xdsticker_\' . $custom_xdsticker_id[\'xdsticker_id\'];\r\n										$product_xdstickers[] = array(\r\n											\'id\'			=> $custom_sticker_class,\r\n											\'text\'			=> $custom_xdsticker_text[$current_language_id]\r\n										);\r\n									}\r\n								}\r\n							}\r\n						}\r\n					// XD Stickers end\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$data[\'products\'][] = array(\r\n				]]>\r\n			</search>\r\n			<add position=\"after\">\r\n				<![CDATA[\r\n					\'product_xdstickers\'  => $product_xdstickers,\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/view/theme/*/template/extension/module/{bestseller.twig,latest.twig,special.twig,featured.twig}\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					<a href=\"{{ product.href }}\"><img src=\"{{ product.thumb }}\" alt=\"{{ product.name }}\" title=\"{{ product.name }}\" class=\"img-responsive\" />\r\n				]]>\r\n			</search>\r\n			<add position=\"before\">\r\n				<![CDATA[\r\n					<!-- XD stickers start -->\r\n					{% if product.product_xdstickers is not empty %}\r\n					<div class=\"xdstickers_wrapper {{xdstickers_position}}\">\r\n						{% for xdsticker in product.product_xdstickers %}\r\n							<div class=\"xdstickers {{xdsticker.id}}\">\r\n								{{xdsticker.text}}\r\n							</div>\r\n						{% endfor %}\r\n					</div>\r\n					{% endif %}\r\n					<!-- XD stickers end -->\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2025-04-13 08:24:40');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(11, 21, '  OptimBlog', 'optimblog', 'Dmitriy Khokhlov | optimlab.com', '3.1.0.1', 'https://optimcart.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>  OptimBlog</name>\n  <code>optimblog</code>\n  <version>3.1.0.1</version>\n  <author>Dmitriy Khokhlov | optimlab.com</author>\n  <link>https://optimcart.com</link>\n\n<!-- optimblog-admin.ocmod -->\n\n  <file path=\"admin/controller/startup/permission.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$extension = array(\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'extension/information\',\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Category -->\n  <file path=\"admin/controller/catalog/category.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'placeholder\'] = $this->model_tool_image->resize(\'no_image.png\', 100, 100);\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		// Images\n		if (isset($this->request->post[\'category_image\'])) {\n			$category_images = $this->request->post[\'category_image\'];\n		} elseif (isset($this->request->get[\'category_id\'])) {\n			$category_images = $this->model_catalog_category->getCategoryImages($this->request->get[\'category_id\']);\n		} else {\n			$category_images = array();\n		}\n\n		$data[\'category_images\'] = array();\n\n		foreach ($category_images as $category_image) {\n			if (is_file(DIR_IMAGE . $category_image[\'image\'])) {\n				$image = $category_image[\'image\'];\n				$thumb = $category_image[\'image\'];\n			} else {\n				$image = \'\';\n				$thumb = \'no_image.png\';\n			}\n\n			$data[\'category_images\'][] = array(\n				\'image\'      => $image,\n				\'thumb\'      => $this->model_tool_image->resize($thumb, 100, 100),\n				\'sort_order\' => $category_image[\'sort_order\']\n			);\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'category_seo_url\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($this->request->post[\'information\'])) {\n			$data[\'information\'] = $this->request->post[\'information\'];\n		} elseif (!empty($category_info)) {\n			$data[\'information\'] = $category_info[\'information\'];\n		} else {\n			$data[\'information\'] = isset($this->request->get[\'filter_information\']) ? $this->request->get[\'filter_information\'] : \'\';\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'filter_name\' => $this->request->get[\'filter_name\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'filter_information\' => isset($this->request->get[\'filter_information\']) ? $this->request->get[\'filter_information\'] : \'\',\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$url = \'\';\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'filter_information\'])) {\n			$url .= \'&filter_information=\' . $this->request->get[\'filter_information\'];\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'sort_sort_order\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=sort_order\' . $url, true);\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n        $data[\'sort_information\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=information\' . $url, true);\n\n		$url = \'\';\n\n		if (isset($this->request->get[\'sort\'])) {\n			$url .= \'&sort=\' . $this->request->get[\'sort\'];\n		}\n\n		if (isset($this->request->get[\'order\'])) {\n			$url .= \'&order=\' . $this->request->get[\'order\'];\n		}\n\n		if (isset($this->request->get[\'page\'])) {\n			$url .= \'&page=\' . $this->request->get[\'page\'];\n		}\n\n		$data[\'type_all\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n		$data[\'type_product\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&filter_information=0\' . $url, true);\n		$data[\'type_information\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&filter_information=1\' . $url, true);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$category_total = $this->model_catalog_category->getTotalCategories();\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$category_total = $this->model_catalog_category->getTotalCategories($filter_data);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	protected function getList() {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'filter_information\'])) {\n			$filter_information = $this->request->get[\'filter_information\'];\n		} else {\n			$filter_information = null;\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			\'order\' => $order,\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			\'filter_information\' => $filter_information,\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'sort_order\'  => $result[\'sort_order\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'information\' => $result[\'information\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'order\'] = $order;\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$data[\'filter_information\'] = $filter_information;\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->get[\'category_id\']) && $this->request->post[\'parent_id\']) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if ($this->request->post[\'parent_id\']) {\n			$results = $this->model_catalog_category->getCategoryPath($this->request->post[\'parent_id\']);\n			\n			foreach ($results as $result) {\n				$path_info = $this->model_catalog_category->getCategory($result[\'path_id\']);\n\n				if (($path_info[\'information\'] && !isset($this->request->post[\'information\'])) || (!$path_info[\'information\'] && isset($this->request->post[\'information\']))) {\n					$this->error[\'parent\'] = $this->language->get(\'error_parent\');\n					\n					break;\n				}\n			}\n		}\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/model/catalog/category.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[description = \'\" . $this->db->escape($value[\'description\']) . \"\', ]]></search>\n        <add position=\"replace\"><![CDATA[header = \'\" . $this->db->escape($value[\'header\']) . \"\', short_description = \'\" . $this->db->escape($value[\'short_description\']) . \"\', description = \'\" . $this->db->escape($value[\'description\']) . \"\', ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'name\'             => $result[\'name\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'header\'            => $result[\'header\'],\n				\'short_description\' => $result[\'short_description\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[date_modified = NOW()]]></search>\n        <add position=\"replace\"><![CDATA[information = \'\" . (isset($data[\'information\']) ? (int)$data[\'information\'] : 0) . \"\', date_modified = NOW()]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n		foreach ($data[\'category_description\'] as $language_id => $value) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($data[\'category_image\'])) {\n			foreach ($data[\'category_image\'] as $category_image) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"category_image SET category_id = \'\" . (int)$category_id . \"\', image = \'\" . $this->db->escape($category_image[\'image\']) . \"\', sort_order = \'\" . (int)$category_image[\'sort_order\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"category_description WHERE category_id = \'\" . (int)$category_id . \"\'\");\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"category_image WHERE category_id = \'\" . (int)$category_id . \"\'\");\n\n		if (isset($data[\'category_image\'])) {\n			foreach ($data[\'category_image\'] as $category_image) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"category_image SET category_id = \'\" . (int)$category_id . \"\', image = \'\" . $this->db->escape($category_image[\'image\']) . \"\', sort_order = \'\" . (int)$category_image[\'sort_order\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"category_description WHERE category_id = \'\" . (int)$category_id . \"\'\");\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"category_image WHERE category_id = \'\" . (int)$category_id . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function getCategorySeoUrls($category_id) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function getCategoryImages($category_id) {\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"category_image WHERE category_id = \'\" . (int)$category_id . \"\' ORDER BY sort_order ASC\");\n\n		return $query->rows;\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[c1.sort_order]]></search>\n        <add position=\"replace\"><![CDATA[c1.sort_order, c1.information]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$sql .= \" GROUP BY cp.category_id\";\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($data[\'filter_information\']) && ($data[\'filter_information\'] == \'0\' || $data[\'filter_information\'] == \'1\')) {\n			$sql .= \" AND c1.information = \'\" . (int)$data[\'filter_information\'] . \"\' AND c2.information = \'\" . (int)$data[\'filter_information\'] . \"\'\";\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$sort_data = array(\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			\'information\',\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[getTotalCategories()]]></search>\n        <add position=\"replace\"><![CDATA[getTotalCategories($data = array())]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$query = $this->db->query(\"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"category\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$sql = \"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"category\";\n\n		$sql .= \" WHERE category_id != \'\'\";\n\n		if (isset($data[\'filter_information\']) && ($data[\'filter_information\'] == \'0\' || $data[\'filter_information\'] == \'1\')) {\n			$sql .= \" AND information = \'\" . (int)$data[\'filter_information\'] . \"\'\";\n		}\n\n		$query = $this->db->query($sql);\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/category_form.twig\">\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n                  <div class=\"form-group\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-header{{ language.language_id }}\"><span data-toggle=\"tooltip\" title=\"{{ help_header }}\">{{ entry_header }}</span></label>\n                    <div class=\"col-sm-10\">\n                      <input type=\"text\" name=\"category_description[{{ language.language_id }}][header]\" value=\"{{ category_description[language.language_id] ? category_description[language.language_id].header }}\" placeholder=\"{{ entry_header }}\" id=\"input-header{{ language.language_id }}\" class=\"form-control\" />\n                    </div>\n                  </div>\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-short-description{{ language.language_id }}\">{{ entry_short_description }}<br /><button type=\"button\" class=\"btn btn-primary btn-xs summernote\" data-toggle=\"button\" aria-pressed=\"false\" autocomplete=\"off\" data-language=\"{{ language.language_id }}\">Summernote</button></label>\n                    <div class=\"col-sm-10\">\n                      <textarea name=\"category_description[{{ language.language_id }}][short_description]\" placeholder=\"{{ entry_short_description }}\" id=\"input-short-description{{ language.language_id }}\" class=\"form-control\">{{ category_description[language.language_id] ? category_description[language.language_id].short_description }}</textarea>\n                    </div>\n                  </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <li><a href=\"#tab-seo\" data-toggle=\"tab\">{{ tab_seo }}</a></li>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n            <li><a href=\"#tab-image\" data-toggle=\"tab\">{{ tab_image }}</a></li>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <div class=\"tab-pane\" id=\"tab-seo\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n            <div class=\"tab-pane\" id=\"tab-image\">\n              <div class=\"table-responsive\">\n                <table id=\"images\" class=\"table table-striped table-bordered table-hover\">\n                  <thead>\n                    <tr>\n                      <td class=\"text-left\">{{ entry_additional_image }}</td>\n                      <td class=\"text-right\">{{ entry_sort_order }}</td>\n                      <td></td>\n                    </tr>\n                  </thead>\n                  <tbody>\n                  {% set image_row = 0 %}\n                  {% for category_image in category_images %}\n                  <tr id=\"image-row{{ image_row }}\">\n                    <td class=\"text-left\"><a href=\"\" id=\"thumb-image{{ image_row }}\" data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ category_image.thumb }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a>\n                      <input type=\"hidden\" name=\"category_image[{{ image_row }}][image]\" value=\"{{ category_image.image }}\" id=\"input-image{{ image_row }}\" /></td>\n                    <td class=\"text-right\"><input type=\"text\" name=\"category_image[{{ image_row }}][sort_order]\" value=\"{{ category_image.sort_order }}\" placeholder=\"{{ entry_sort_order }}\" class=\"form-control\" /></td>\n                    <td class=\"text-left\"><button type=\"button\" onclick=\"$(\'#image-row{{ image_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\n                  </tr>\n                  {% set image_row = image_row + 1 %}\n                  {% endfor %}\n                  </tbody>\n                  <tfoot>\n                    <tr>\n                      <td colspan=\"2\"></td>\n                      <td class=\"text-left\"><button type=\"button\" onclick=\"addImage();\" data-toggle=\"tooltip\" title=\"{{ button_image_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>\n                    </tr>\n                  </tfoot>\n                </table>\n              </div>\n            </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                <label class=\"col-sm-2 control-label\" for=\"input-status\">{{ entry_status }}</label>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                <label class=\"col-sm-2 control-label\" for=\"input-information\"><span data-toggle=\"tooltip\" title=\"{{ help_information }}\">{{ entry_information }}</span></label>\n                <div class=\"col-sm-10\">\n                  <div class=\"checkbox\">\n                    <label>\n                      {% if information %}\n                      <input type=\"checkbox\" name=\"information\" value=\"1\" checked=\"checked\" id=\"input-information\" />\n                      {% else %}\n                      <input type=\"checkbox\" name=\"information\" value=\"1\" id=\"input-information\" />\n                      {% endif %}\n                      &nbsp; </label>\n                  </div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[catalog/category/autocomplete&user_token={{ user_token }}]]></search>\n        <add position=\"replace\"><![CDATA[catalog/category/autocomplete&user_token={{ user_token }}{% if information != \'\' %}&filter_information={{ information }}{% endif %}]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"2\"><![CDATA[\n  <script type=\"text/javascript\"><!--\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  <script type=\"text/javascript\"><!--\nvar image_row = {{ image_row }};\n\nfunction addImage() {\n	html  = \'<tr id=\"image-row\' + image_row + \'\">\';\n	html += \'  <td class=\"text-left\"><a href=\"\" id=\"thumb-image\' + image_row + \'\"data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ placeholder }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a><input type=\"hidden\" name=\"category_image[\' + image_row + \'][image]\" value=\"\" id=\"input-image\' + image_row + \'\" /></td>\';\n	html += \'  <td class=\"text-right\"><input type=\"text\" name=\"category_image[\' + image_row + \'][sort_order]\" value=\"\" placeholder=\"{{ entry_sort_order }}\" class=\"form-control\" /></td>\';\n	html += \'  <td class=\"text-left\"><button type=\"button\" onclick=\"$(\\\'#image-row\' + image_row  + \'\\\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\';\n	html += \'</tr>\';\n\n	$(\'#images tbody\').append(html);\n\n	image_row++;\n}\n//--></script> \n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n{{ footer }} \n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  <script type=\"text/javascript\"><!--\n$(\'.summernote\').on(\'click\', function () {\n	if ($(this).hasClass(\'active\')) {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote(\'destroy\');\n	} else {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote({\n			focus: true,\n			lang: \'{{ summernote }}\'\n		});\n	}\n})\n\n$(document).ready(function() {\n	$(\'[name*=\\\'[short_description]\\\']\').each(function() {\n		if ($(this).val()) {\n            $(this).parent().prev().children(\'.summernote\').trigger(\'click\');\n		}\n	});\n});\n//--></script>\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/category_list.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n      <div class=\"pull-right\"><a href=\"{{ add }}\" data-toggle=\"tooltip\" title=\"{{ button_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a> <a href=\"{{ repair }}\" data-toggle=\"tooltip\" title=\"{{ button_rebuild }}\" class=\"btn btn-default\"><i class=\"fa fa-refresh\"></i></a>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n      <div class=\"pull-right\">\n        <div class=\"btn-group\">\n          {% if filter_information is not null %}\n          <span class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ filter_information ? text_type_information : text_type_product }}\">\n          {{ filter_information ? \'<i class=\"fa fa-file-text-o fa-fw\"></i>\' : \'<i class=\"fa fa-shopping-cart fa-fw\"></i>\' }} \n          {% else %}\n          <span class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ text_type_all }}\">\n            <i class=\"fa fa-list fa-fw\"></i>\n          {% endif %}\n          </span>\n          <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">{{ button_type_category }} <span class=\"caret\"></span></button>\n          <ul class=\"dropdown-menu dropdown-menu-right\">\n            <li><a href=\"{{ type_all }}\"><i class=\"fa fa-list fa-fw\"></i> {{ text_type_all }}</a></li>\n            <li class=\"divider\"></li>\n            <li><a href=\"{{ type_product }}\"><i class=\"fa fa-shopping-cart fa-fw\"></i> {{ text_type_product }}</a></li>\n            <li><a href=\"{{ type_information }}\"><i class=\"fa fa-file-text-o fa-fw\"></i> {{ text_type_information }}</a></li>\n          </ul>\n        </div>\n        <a href=\"{{ add }}\" data-toggle=\"tooltip\" title=\"{{ button_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\n        <a href=\"{{ repair }}\" data-toggle=\"tooltip\" title=\"{{ button_rebuild }}\" class=\"btn btn-default\"><i class=\"fa fa-refresh\"></i></a>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-left\">{% if sort %}\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n                  <td class=\"text-left\">{% if sort == \'name\' %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-right\">{% if sort == \'sort_order\' %}\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <td class=\"text-right\">{% if sort == \'information\' %}\n                    <a href=\"{{ sort_information }}\" class=\"{{ order|lower }}\">{{ column_type }}</a>\n                    {% else %}\n                    <a href=\"{{ sort_information }}\">{{ column_type }}</a>\n                    {% endif %}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-right\">{{ category.sort_order }}</td>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <td class=\"text-right\">{{ category.information ? text_type_information : text_type_product }}</td>\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Information -->\n  <file path=\"admin/controller/catalog/information.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'bottom\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($this->request->get[\'information_id\'])) {\n			$data[\'information_id\'] = $this->request->get[\'information_id\'];\n		}\n\n		if (isset($this->request->post[\'date_available\'])) {\n			$data[\'date_available\'] = $this->request->post[\'date_available\'];\n		} elseif (!empty($information_info)) {\n			$data[\'date_available\'] = $information_info[\'date_available\'];\n		} else {\n			$data[\'date_available\'] = date(\'Y-m-d H:i:s\');\n		}\n\n		if (isset($this->request->post[\'date_end\'])) {\n			$data[\'date_end\'] = $this->request->post[\'date_end\'];\n		} elseif (!empty($information_info)) {\n			$data[\'date_end\'] = $information_info[\'date_end\'];\n		} else {\n			$data[\'date_end\'] = \'2100-01-01 00:00:00\';\n		}\n\n		if (isset($this->request->post[\'date_added\'])) {\n			$data[\'date_added\'] = $this->request->post[\'date_added\'];\n		} elseif (!empty($information_info)) {\n			$data[\'date_added\'] = $information_info[\'date_added\'];\n		} else {\n			$data[\'date_added\'] = date(\'Y-m-d H:i:s\');\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'information_seo_url\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		// User\n		$this->load->model(\'user/user\');\n		$this->load->model(\'user/user_group\');\n\n		$user_groups = $this->model_user_user_group->getUserGroups();\n\n		foreach ($user_groups as $group) {\n			$users = array();\n\n			$users = $this->model_user_user->getUsersByGroup($group[\'user_group_id\']);\n\n			if ($users) {\n				$data[\'user_groups\'][] = array(\n					\'name\'  => $group[\'name\'],\n					\'users\' => $users\n				);\n			}\n		}\n\n		if (isset($this->request->post[\'user_id\'])) {\n			$data[\'user_id\'] = $this->request->post[\'user_id\'];\n		} elseif (!empty($information_info)) {\n			$data[\'user_id\'] = $this->model_catalog_information->getInformationUser($this->request->get[\'information_id\']);\n		} else {\n			$data[\'user_id\'] = $this->user->getId();\n		}\n\n		// Manufacturer\n		$this->load->model(\'catalog/manufacturer\');\n\n		if (isset($this->request->post[\'manufacturer_id\'])) {\n			$data[\'manufacturer_id\'] = $this->request->post[\'manufacturer_id\'];\n		} elseif (!empty($information_info)) {\n			$data[\'manufacturer_id\'] = $information_info[\'manufacturer_id\'];\n		} else {\n			$data[\'manufacturer_id\'] = 0;\n		}\n\n		if (isset($this->request->post[\'manufacturer\'])) {\n			$data[\'manufacturer\'] = $this->request->post[\'manufacturer\'];\n		} elseif (!empty($information_info)) {\n			$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($information_info[\'manufacturer_id\']);\n\n			if ($manufacturer_info) {\n				$data[\'manufacturer\'] = $manufacturer_info[\'name\'];\n			} else {\n				$data[\'manufacturer\'] = \'\';\n			}\n		} else {\n			$data[\'manufacturer\'] = \'\';\n		}\n\n		// Categories\n		$this->load->model(\'catalog/category\');\n\n		if (isset($this->request->post[\'information_category\'])) {\n			$categories = $this->request->post[\'information_category\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$categories = $this->model_catalog_information->getInformationCategories($this->request->get[\'information_id\']);\n		} else {\n			$categories = array();\n		}\n\n		$data[\'information_categories\'] = array();\n\n		foreach ($categories as $category_id) {\n			$category_info = $this->model_catalog_category->getCategory($category_id);\n\n			if ($category_info) {\n				$data[\'information_categories\'][] = array(\n					\'category_id\' => $category_info[\'category_id\'],\n					\'name\'        => ($category_info[\'path\']) ? $category_info[\'path\'] . \' &gt; \' . $category_info[\'name\'] : $category_info[\'name\']\n				);\n			}\n		}\n\n		if (isset($this->request->post[\'main_category\'])) {\n			$data[\'main_category\'] = $this->request->post[\'main_category\'];\n		} elseif (isset($this->request->get[\'information_id\']) && $categories) {\n			$data[\'main_category\'] = $this->model_catalog_information->getMainCategory($this->request->get[\'information_id\']);\n		} else {\n			$data[\'main_category\'] = \'\';\n		}\n\n		// Filters\n		$this->load->model(\'catalog/filter\');\n\n		if (isset($this->request->post[\'information_filter\'])) {\n			$filters = $this->request->post[\'information_filter\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$filters = $this->model_catalog_information->getInformationFilters($this->request->get[\'information_id\']);\n		} else {\n			$filters = array();\n		}\n\n		$data[\'information_filters\'] = array();\n\n		foreach ($filters as $filter_id) {\n			$filter_info = $this->model_catalog_filter->getFilter($filter_id);\n\n			if ($filter_info) {\n				$data[\'information_filters\'][] = array(\n					\'filter_id\' => $filter_info[\'filter_id\'],\n					\'name\'      => $filter_info[\'group\'] . \' &gt; \' . $filter_info[\'name\']\n				);\n			}\n		}\n\n		// Attributes\n		$this->load->model(\'catalog/attribute\');\n\n		if (isset($this->request->post[\'information_attribute\'])) {\n			$information_attributes = $this->request->post[\'information_attribute\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$information_attributes = $this->model_catalog_information->getInformationAttributes($this->request->get[\'information_id\']);\n		} else {\n			$information_attributes = array();\n		}\n\n		$data[\'information_attributes\'] = array();\n\n		foreach ($information_attributes as $information_attribute) {\n			$attribute_info = $this->model_catalog_attribute->getAttribute($information_attribute[\'attribute_id\']);\n\n			if ($attribute_info) {\n				$data[\'information_attributes\'][] = array(\n					\'attribute_id\'                  => $information_attribute[\'attribute_id\'],\n					\'name\'                          => $attribute_info[\'name\'],\n					\'information_attribute_description\' => $information_attribute[\'information_attribute_description\']\n				);\n			}\n		}\n\n		// Image\n		if (isset($this->request->post[\'image\'])) {\n			$data[\'image\'] = $this->request->post[\'image\'];\n		} elseif (!empty($information_info)) {\n			$data[\'image\'] = $information_info[\'image\'];\n		} else {\n			$data[\'image\'] = \'\';\n		}\n\n		$this->load->model(\'tool/image\');\n\n		if (isset($this->request->post[\'image\']) && is_file(DIR_IMAGE . $this->request->post[\'image\'])) {\n			$data[\'thumb\'] = $this->model_tool_image->resize($this->request->post[\'image\'], 100, 100);\n		} elseif (!empty($information_info) && is_file(DIR_IMAGE . $information_info[\'image\'])) {\n			$data[\'thumb\'] = $this->model_tool_image->resize($information_info[\'image\'], 100, 100);\n		} else {\n			$data[\'thumb\'] = $this->model_tool_image->resize(\'no_image.png\', 100, 100);\n		}\n\n		$data[\'placeholder\'] = $this->model_tool_image->resize(\'no_image.png\', 100, 100);\n\n		// Images\n		if (isset($this->request->post[\'information_image\'])) {\n			$information_images = $this->request->post[\'information_image\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$information_images = $this->model_catalog_information->getInformationImages($this->request->get[\'information_id\']);\n		} else {\n			$information_images = array();\n		}\n\n		$data[\'information_images\'] = array();\n\n		foreach ($information_images as $information_image) {\n			if (is_file(DIR_IMAGE . $information_image[\'image\'])) {\n				$image = $information_image[\'image\'];\n				$thumb = $information_image[\'image\'];\n			} else {\n				$image = \'\';\n				$thumb = \'no_image.png\';\n			}\n\n			$data[\'information_images\'][] = array(\n				\'image\'      => $image,\n				\'thumb\'      => $this->model_tool_image->resize($thumb, 100, 100),\n				\'sort_order\' => $information_image[\'sort_order\']\n			);\n		}\n\n		// Information Related\n		if (isset($this->request->post[\'information_related\'])) {\n			$informations = $this->request->post[\'information_related\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$informations = $this->model_catalog_information->getInformationRelated($this->request->get[\'information_id\']);\n		} else {\n			$informations = array();\n		}\n\n		$data[\'information_relateds\'] = array();\n\n		foreach ($informations as $information_related) {\n			$related_info = $this->model_catalog_information->getInformation($information_related[\'information_id\']);\n\n			if ($related_info) {\n				$data[\'information_relateds\'][] = array(\n					\'information_id\' => $related_info[\'information_id\'],\n					\'title\'          => $related_info[\'title\'],\n                    \'route\'          => $information_related[\'route\']\n				);\n			}\n		}\n        \n		// Product Related\n		if (isset($this->request->post[\'product_related\'])) {\n			$products = $this->request->post[\'product_related\'];\n		} elseif (isset($this->request->get[\'information_id\'])) {\n			$products = $this->model_catalog_information->getProductRelated($this->request->get[\'information_id\']);\n		} else {\n			$products = array();\n		}\n\n		$data[\'product_relateds\'] = array();\n\n        $this->load->model(\'catalog/product\');\n\n		foreach ($products as $product_related) {\n			$related_info = $this->model_catalog_product->getProduct($product_related[\'product_id\']);\n\n			if ($related_info) {\n				$data[\'product_relateds\'][] = array(\n					\'product_id\' => $related_info[\'product_id\'],\n					\'name\'       => $related_info[\'name\'],\n                    \'route\'      => $product_related[\'route\']\n				);\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	protected function validateForm() {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	protected function validateCopy() {\n		if (!$this->user->hasPermission(\'modify\', \'catalog/information\')) {\n			$this->error[\'warning\'] = $this->language->get(\'error_permission\');\n		}\n\n		return !$this->error;\n	}\n\n	public function autocomplete() {\n		$json = array();\n\n		if (isset($this->request->get[\'filter_name\'])) {\n			$this->load->model(\'catalog/information\');\n\n			if (isset($this->request->get[\'filter_name\'])) {\n				$filter_name = $this->request->get[\'filter_name\'];\n			} else {\n				$filter_name = \'\';\n			}\n\n			if (isset($this->request->get[\'limit\'])) {\n				$limit = $this->request->get[\'limit\'];\n			} else {\n				$limit = 5;\n			}\n\n			$filter_data = array(\n				\'filter_name\'  => $filter_name,\n				\'start\'        => 0,\n				\'limit\'        => $limit\n			);\n\n			$results = $this->model_catalog_information->getInformations($filter_data);\n\n			foreach ($results as $result) {\n				if (isset($this->request->get[\'information_id\']) && $this->request->get[\'information_id\'] == $result[\'information_id\']) {\n					continue;\n				}\n        \n				$json[] = array(\n					\'information_id\' => $result[\'information_id\'],\n					\'title\'          => strip_tags(html_entity_decode($result[\'title\'], ENT_QUOTES, \'UTF-8\'))\n				);	\n			}\n		}\n\n		$this->response->addHeader(\'Content-Type: application/json\');\n		$this->response->setOutput(json_encode($json));\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	protected function getList() {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function copy() {\n		$this->load->language(\'catalog/information\');\n\n		$this->document->setTitle($this->language->get(\'heading_title\'));\n\n		$this->load->model(\'catalog/information\');\n\n		if (isset($this->request->post[\'selected\']) && $this->validateCopy()) {\n			foreach ($this->request->post[\'selected\'] as $information_id) {\n				$this->model_catalog_information->copyInformation($information_id);\n			}\n\n			$this->session->data[\'success\'] = $this->language->get(\'text_success\');\n\n			$url = \'\';\n\n			if (isset($this->request->get[\'sort\'])) {\n				$url .= \'&sort=\' . $this->request->get[\'sort\'];\n			}\n\n			if (isset($this->request->get[\'order\'])) {\n				$url .= \'&order=\' . $this->request->get[\'order\'];\n			}\n\n			if (isset($this->request->get[\'page\'])) {\n				$url .= \'&page=\' . $this->request->get[\'page\'];\n			}\n\n			$this->response->redirect($this->url->link(\'catalog/information\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\n		}\n\n		$this->getList();\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	protected function getList() {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'filter_name\'])) {\n			$filter_name = $this->request->get[\'filter_name\'];\n		} else {\n			$filter_name = \'\';\n		}\n\n		if (isset($this->request->get[\'filter_viewed\'])) {\n			$filter_viewed = $this->request->get[\'filter_viewed\'];\n		} else {\n			$filter_viewed = \'\';\n		}\n\n		if (isset($this->request->get[\'filter_status\'])) {\n			$filter_status = $this->request->get[\'filter_status\'];\n		} else {\n			$filter_status = \'\';\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$url = \'\';\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'filter_name\'])) {\n			$url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($this->request->get[\'filter_viewed\'])) {\n			$url .= \'&filter_viewed=\' . urlencode(html_entity_decode($this->request->get[\'filter_viewed\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($this->request->get[\'filter_status\'])) {\n			$url .= \'&filter_status=\' . $this->request->get[\'filter_status\'];\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'delete\'] = $this->url->link(\'catalog/information/delete\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$data[\'copy\'] = $this->url->link(\'catalog/information/copy\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			\'start\' => ($page - 1) * $this->config->get(\'config_limit_admin\'),\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			\'filter_name\'	  => $filter_name,\n			\'filter_viewed\'	  => $filter_viewed,\n			\'filter_status\'   => $filter_status,\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$information_total = $this->model_catalog_information->getTotalInformations();\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$information_total = $this->model_catalog_information->getTotalInformations($filter_data);\n\n		$this->load->model(\'tool/image\');\n\n		$data[\'user_token\'] = $this->session->data[\'user_token\'];\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$data[\'informations\'][] = array(\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n			if (is_file(DIR_IMAGE . $result[\'image\'])) {\n				$image = $this->model_tool_image->resize($result[\'image\'], 40, 40);\n			} else {\n				$image = $this->model_tool_image->resize(\'no_image.png\', 40, 40);\n			}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$data[\'informations\'][] = array(\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'image\'          => $image,\n                \'status\'         => $result[\'status\'] ? $this->language->get(\'text_enabled\') : $this->language->get(\'text_disabled\'),\n				\'viewed\'         => $result[\'viewed\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'sort_sort_order\'] = $this->url->link(\'catalog/information\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=i.sort_order\' . $url, true);\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$data[\'sort_viewed\'] = $this->url->link(\'catalog/information\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=i.viewed\' . $url, true);\n		$data[\'sort_status\'] = $this->url->link(\'catalog/information\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=i.status\' . $url, true);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'sort\'] = $sort;\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$data[\'filter_name\'] = $filter_name;\n		$data[\'filter_viewed\'] = $filter_viewed;\n		$data[\'filter_status\'] = $filter_status;\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/model/catalog/information.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[description = \'\" . $this->db->escape($value[\'description\']) . \"\']]></search>\n        <add position=\"replace\"><![CDATA[header = \'\" . $this->db->escape($value[\'header\']) . \"\', short_description = \'\" . $this->db->escape($value[\'short_description\']) . \"\', description = \'\" . $this->db->escape($value[\'description\']) . \"\', tag = \'\" . $this->db->escape($value[\'tag\']) . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'id.title\',\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'i.viewed\',\n				\'i.status\',\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'title\'            => $result[\'title\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'header\'            => $result[\'header\'],\n				\'short_description\' => $result[\'short_description\'],\n				\'tag\'               => $result[\'tag\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[status = \'\" . (int)$data[\'status\'] . \"\']]></search>\n        <add position=\"replace\"><![CDATA[manufacturer_id = \'\" . (int)$data[\'manufacturer_id\'] . \"\', date_available = \'\" . $this->db->escape($data[\'date_available\']) . \"\', date_end = \'\" . $this->db->escape($data[\'date_end\']) . \"\', date_added = NOW(), date_modified = NOW(), status = \'\" . (int)$data[\'status\'] . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[status = \'\" . (int)$data[\'status\'] . \"\']]></search>\n        <add position=\"replace\"><![CDATA[manufacturer_id = \'\" . (int)$data[\'manufacturer_id\'] . \"\', date_available = \'\" . $this->db->escape($data[\'date_available\']) . \"\', date_end = \'\" . $this->db->escape($data[\'date_end\']) . \"\', date_added = \'\" . $this->db->escape($data[\'date_added\']) . \"\',  date_modified = NOW(), status = \'\" . (int)$data[\'status\'] . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		// SEO URL\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (!empty($data[\'user_id\'])) {\n			$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_user SET information_id = \'\" . (int)$information_id . \"\', user_id = \'\" . (int)$data[\'user_id\'] . \"\'\");\n		}\n\n		if (isset($data[\'information_attribute\'])) {\n			foreach ($data[\'information_attribute\'] as $information_attribute) {\n				if ($information_attribute[\'attribute_id\']) {\n					// Removes duplicates\n					$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\' AND attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\'\");\n\n					foreach ($information_attribute[\'information_attribute_description\'] as $language_id => $information_attribute_description) {\n						$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\' AND attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\' AND language_id = \'\" . (int)$language_id . \"\'\");\n\n						$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_attribute SET information_id = \'\" . (int)$information_id . \"\', attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\', language_id = \'\" . (int)$language_id . \"\', text = \'\" .  $this->db->escape($information_attribute_description[\'text\']) . \"\'\");\n					}\n				}\n			}\n		}\n\n		if (isset($data[\'image\'])) {\n			$this->db->query(\"UPDATE \" . DB_PREFIX . \"information SET image = \'\" . $this->db->escape($data[\'image\']) . \"\' WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		}\n\n		if (isset($data[\'information_image\'])) {\n			foreach ($data[\'information_image\'] as $information_image) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_image SET information_id = \'\" . (int)$information_id . \"\', image = \'\" . $this->db->escape($information_image[\'image\']) . \"\', sort_order = \'\" . (int)$information_image[\'sort_order\'] . \"\'\");\n			}\n		}\n\n		if (isset($data[\'information_category\'])) {\n			foreach ($data[\'information_category\'] as $category_id) {\n				if (!empty($data[\'main_category\']) && $data[\'main_category\'] == (int)$category_id) {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_category SET information_id = \'\" . (int)$information_id . \"\', category_id = \'\" . (int)$category_id . \"\', main_category = \'1\'\");\n				} else {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_category SET information_id = \'\" . (int)$information_id . \"\', category_id = \'\" . (int)$category_id . \"\'\");\n				}\n			}\n		}\n\n		if (isset($data[\'information_filter\'])) {\n			foreach ($data[\'information_filter\'] as $filter_id) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_filter SET information_id = \'\" . (int)$information_id . \"\', filter_id = \'\" . (int)$filter_id . \"\'\");\n			}\n		}\n\n		if (isset($data[\'information_related\'])) {\n			foreach ($data[\'information_related\'] as $information_related) {\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_id . \"\' AND related_id = \'\" . (int)$information_related[\'information_id\'] . \"\'\");\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_related SET information_id = \'\" . (int)$information_id . \"\', related_id = \'\" . (int)$information_related[\'information_id\'] . \"\', route = \'\" . (int)$information_related[\'route\'] . \"\'\");\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_related[\'information_id\'] . \"\' AND related_id = \'\" . (int)$information_id . \"\'\");\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_related SET information_id = \'\" . (int)$information_related[\'information_id\'] . \"\', related_id = \'\" . (int)$information_id . \"\', route = \'\" . (int)$information_related[\'route\'] * -1 . \"\'\");\n			}\n		}\n\n		if (isset($data[\'product_related\'])) {\n			$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_product_related WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n			foreach ($data[\'product_related\'] as $product_related) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_product_related SET information_id = \'\" . (int)$information_id . \"\', product_id = \'\" . (int)$product_related[\'product_id\'] . \"\', route = \'\" . (int)$product_related[\'route\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"seo_url WHERE query = \'information_id=\" . (int)$information_id . \"\'\");\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_to_user WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (!empty($data[\'user_id\'])) {\n			$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_user SET information_id = \'\" . (int)$information_id . \"\', user_id = \'\" . (int)$data[\'user_id\'] . \"\'\");\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (!empty($data[\'information_attribute\'])) {\n			foreach ($data[\'information_attribute\'] as $information_attribute) {\n				if ($information_attribute[\'attribute_id\']) {\n					// Removes duplicates\n					$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\' AND attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\'\");\n\n					foreach ($information_attribute[\'information_attribute_description\'] as $language_id => $information_attribute_description) {\n						$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_attribute SET information_id = \'\" . (int)$information_id . \"\', attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\', language_id = \'\" . (int)$language_id . \"\', text = \'\" .  $this->db->escape($information_attribute_description[\'text\']) . \"\'\");\n					}\n				}\n			}\n		}\n\n		if (isset($data[\'image\'])) {\n			$this->db->query(\"UPDATE \" . DB_PREFIX . \"information SET image = \'\" . $this->db->escape($data[\'image\']) . \"\' WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_image WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (isset($data[\'information_image\'])) {\n			foreach ($data[\'information_image\'] as $information_image) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_image SET information_id = \'\" . (int)$information_id . \"\', image = \'\" . $this->db->escape($information_image[\'image\']) . \"\', sort_order = \'\" . (int)$information_image[\'sort_order\'] . \"\'\");\n			}\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_to_category WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (isset($data[\'information_category\'])) {\n			foreach ($data[\'information_category\'] as $category_id) {\n				if (!empty($data[\'main_category\']) && $data[\'main_category\'] == (int)$category_id) {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_category SET information_id = \'\" . (int)$information_id . \"\', category_id = \'\" . (int)$category_id . \"\', main_category = \'1\'\");\n				} else {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_to_category SET information_id = \'\" . (int)$information_id . \"\', category_id = \'\" . (int)$category_id . \"\'\");\n				}\n			}\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_filter WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (isset($data[\'information_filter\'])) {\n			foreach ($data[\'information_filter\'] as $filter_id) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_filter SET information_id = \'\" . (int)$information_id . \"\', filter_id = \'\" . (int)$filter_id . \"\'\");\n			}\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE related_id = \'\" . (int)$information_id . \"\'\");\n\n		if (isset($data[\'information_related\'])) {\n			foreach ($data[\'information_related\'] as $information_related) {\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_id . \"\' AND related_id = \'\" . (int)$information_related[\'information_id\'] . \"\'\");\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_related SET information_id = \'\" . (int)$information_id . \"\', related_id = \'\" . (int)$information_related[\'information_id\'] . \"\', route = \'\" . (int)$information_related[\'route\'] . \"\'\");\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_related[\'information_id\'] . \"\' AND related_id = \'\" . (int)$information_id . \"\'\");\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_related SET information_id = \'\" . (int)$information_related[\'information_id\'] . \"\', related_id = \'\" . (int)$information_id . \"\', route = \'\" . (int)$information_related[\'route\'] * -1 . \"\'\");\n			}\n		}\n\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_product_related WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if (isset($data[\'product_related\'])) {\n			foreach ($data[\'product_related\'] as $product_related) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_product_related SET information_id = \'\" . (int)$information_id . \"\', product_id = \'\" . (int)$product_related[\'product_id\'] . \"\', route = \'\" . (int)$product_related[\'route\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\" . DB_PREFIX . \"information WHERE information_id = \'\" . (int)$information_id . \"\']]></search>\n        <add position=\"replace\"><![CDATA[\" . DB_PREFIX . \"information i LEFT JOIN \" . DB_PREFIX . \"information_description id ON (i.information_id = id.information_id) WHERE i.information_id = \'\" . (int)$information_id . \"\' AND id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function deleteInformation($information_id) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function copyInformation($information_id) {\n		$query = $this->db->query(\"SELECT DISTINCT * FROM \" . DB_PREFIX . \"information WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		if ($query->num_rows) {\n			$data = $query->row;\n\n			$data[\'viewed\'] = \'0\';\n			$data[\'keyword\'] = \'\';\n			$data[\'status\'] = \'0\';\n\n			$data[\'information_attribute\'] = $this->getInformationAttributes($information_id);\n			$data[\'information_description\'] = $this->getInformationDescriptions($information_id);\n			$data[\'information_filter\'] = $this->getInformationFilters($information_id);\n			$data[\'information_image\'] = $this->getInformationImages($information_id);\n			$data[\'information_related\'] = $this->getInformationRelated($information_id);\n			$data[\'product_related\'] = $this->getProductRelated($information_id);\n			$data[\'information_category\'] = $this->getInformationCategories($information_id);\n			$data[\'main_category\'] = $this->getMainCategory($information_id);\n			$data[\'information_layout\'] = $this->getInformationLayouts($information_id);\n			$data[\'information_store\'] = $this->getInformationStores($information_id);\n			$data[\'user_id\'] = $this->getInformationUser($information_id);\n\n			$this->addInformation($data);\n		}\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"seo_url` WHERE query = \'information_id=\" . (int)$information_id . \"\'\");\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_attribute` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_filter` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_image` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_related` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_related` WHERE related_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_product_related` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_to_category` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"information_to_user` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n		$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"review` WHERE information_id = \'\" . (int)$information_id . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function getTotalInformations() {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function getInformationUser($information_id) {\n		$query = $this->db->query(\"SELECT user_id FROM \" . DB_PREFIX . \"information_to_user WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		return $query->row[\'user_id\'];\n	}\n\n	public function getInformationsByCategoryId($category_id) {\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information i LEFT JOIN \" . DB_PREFIX . \"information_description id ON (i.information_id = id.information_id) LEFT JOIN \" . DB_PREFIX . \"information_to_category i2c ON (i.information_id = i2c.information_id) WHERE id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\' AND i2c.category_id = \'\" . (int)$category_id . \"\' ORDER BY id.title ASC\");\n\n		return $query->rows;\n	}\n\n	public function getInformationCategories($information_id) {\n		$information_category_data = array();\n\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_to_category WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		foreach ($query->rows as $result) {\n			$information_category_data[] = $result[\'category_id\'];\n		}\n\n		return $information_category_data;\n	}\n\n	public function getMainCategory($information_id) {\n		$query = $this->db->query(\"SELECT category_id FROM \" . DB_PREFIX . \"information_to_category WHERE information_id = \'\" . (int)$information_id . \"\' AND main_category = \'1\'\");\n\n		if ($query->row) {\n			return $query->row[\'category_id\'];\n		} else {\n			return \'\';\n		}\n	}\n\n	public function getInformationFilters($information_id) {\n		$information_filter_data = array();\n\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_filter WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		foreach ($query->rows as $result) {\n			$information_filter_data[] = $result[\'filter_id\'];\n		}\n\n		return $information_filter_data;\n	}\n\n	public function getInformationAttributes($information_id) {\n		$information_attribute_data = array();\n\n		$information_attribute_query = $this->db->query(\"SELECT attribute_id FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\' GROUP BY attribute_id\");\n\n		foreach ($information_attribute_query->rows as $information_attribute) {\n			$information_attribute_description_data = array();\n\n			$information_attribute_description_query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_attribute WHERE information_id = \'\" . (int)$information_id . \"\' AND attribute_id = \'\" . (int)$information_attribute[\'attribute_id\'] . \"\'\");\n\n			foreach ($information_attribute_description_query->rows as $information_attribute_description) {\n				$information_attribute_description_data[$information_attribute_description[\'language_id\']] = array(\'text\' => $information_attribute_description[\'text\']);\n			}\n\n			$information_attribute_data[] = array(\n				\'attribute_id\'                  => $information_attribute[\'attribute_id\'],\n				\'information_attribute_description\' => $information_attribute_description_data\n			);\n		}\n\n		return $information_attribute_data;\n	}\n\n	public function getInformationImages($information_id) {\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_image WHERE information_id = \'\" . (int)$information_id . \"\' ORDER BY sort_order ASC\");\n\n		return $query->rows;\n	}\n	\n	public function getInformationRelated($information_id) {\n		$information_related_data = array();\n\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_related WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		foreach ($query->rows as $result) {\n			$information_related_data[] = array(\n				\'information_id\' => $result[\'related_id\'],\n				\'route\'          => $result[\'route\']\n            );\n		}\n\n		return $information_related_data;\n	}\n\n	public function getProductRelated($information_id) {\n		$product_related_data = array();\n\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_product_related WHERE information_id = \'\" . (int)$information_id . \"\'\");\n\n		foreach ($query->rows as $result) {\n			$product_related_data[] = array(\n				\'product_id\' => $result[\'product_id\'],\n				\'route\'      => $result[\'route\']\n            );\n		}\n\n		return $product_related_data;\n	}\n\n	public function getTotalInformationsByManufacturerId($manufacturer_id) {\n		$query = $this->db->query(\"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"information WHERE manufacturer_id = \'\" . (int)$manufacturer_id . \"\'\");\n\n		return $query->row[\'total\'];\n	}\n\n	public function getTotalInformationsByAttributeId($attribute_id) {\n		$query = $this->db->query(\"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"information_attribute WHERE attribute_id = \'\" . (int)$attribute_id . \"\'\");\n\n		return $query->row[\'total\'];\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$sort_data = array(\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (!empty($data[\'filter_name\'])) {\n			$sql .= \" AND id.title LIKE \'\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";\n		}\n\n		if (!empty($data[\'filter_viewed\'])) {\n			$sql .= \" AND i.viewed LIKE \'\" . $this->db->escape($data[\'filter_viewed\']) . \"%\'\";\n		}\n\n		if (isset($data[\'filter_status\']) && $data[\'filter_status\'] !== \'\') {\n			$sql .= \" AND i.status = \'\" . (int)$data[\'filter_status\'] . \"\'\";\n		}\n\n		$sql .= \" GROUP BY i.information_id\";\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function getTotalInformations() {\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n	public function getTotalInformations($data = array()) {\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$query = $this->db->query(\"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"information\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$sql = \"SELECT COUNT(DISTINCT i.information_id) AS total FROM \" . DB_PREFIX . \"information i LEFT JOIN \" . DB_PREFIX . \"information_description id ON (i.information_id = id.information_id)\";\n\n		$sql .= \" WHERE id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\n\n		if (!empty($data[\'filter_name\'])) {\n			$sql .= \" AND id.title LIKE \'\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";\n		}\n\n		if (isset($data[\'filter_viewed\']) && $data[\'filter_viewed\'] !== \'\') {\n			$sql .= \" AND i.viewed = \'\" . (int)$data[\'filter_viewed\'] . \"\'\";\n		}\n\n		if (isset($data[\'filter_status\']) && $data[\'filter_status\'] !== \'\') {\n			$sql .= \" AND i.status = \'\" . (int)$data[\'filter_status\'] . \"\'\";\n		}\n\n		$query = $this->db->query($sql);\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/information_form.twig\">\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[\n                  <div class=\"form-group required\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-header{{ language.language_id }}\"><span data-toggle=\"tooltip\" title=\"{{ help_header }}\">{{ entry_header }}</span></label>\n                    <div class=\"col-sm-10\">\n                      <input type=\"text\" name=\"information_description[{{ language.language_id }}][header]\" value=\"{{ information_description[language.language_id] ? information_description[language.language_id].header }}\" placeholder=\"{{ entry_header }}\" id=\"input-header{{ language.language_id }}\" class=\"form-control\" />\n                    </div>\n                  </div>\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-short-description{{ language.language_id }}\">{{ entry_short_description }}<br /><button type=\"button\" class=\"btn btn-primary btn-xs summernote\" data-toggle=\"button\" aria-pressed=\"false\" autocomplete=\"off\" data-language=\"{{ language.language_id }}\">Summernote</button></label>\n                    <div class=\"col-sm-10\">\n                      <textarea name=\"information_description[{{ language.language_id }}][short_description]\" placeholder=\"{{ entry_short_description }}\" id=\"input-short-description{{ language.language_id }}\" class=\"form-control\">{{ information_description[language.language_id] ? information_description[language.language_id].short_description }}</textarea>\n                     </div>\n                  </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                      <textarea name=\"information_description[{{ language.language_id }}][meta_keyword]\" rows=\"5\" placeholder=\"{{ entry_meta_keyword }}\" id=\"input-meta-keyword{{ language.language_id }}\" class=\"form-control\">{{ information_description[language.language_id] ? information_description[language.language_id].meta_keyword }}</textarea>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                    </div>\n                  </div>\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-tag{{ language.language_id }}\"><span data-toggle=\"tooltip\" title=\"{{ help_tag }}\">{{ entry_tag }}</span></label>\n                    <div class=\"col-sm-10\">\n                      <input type=\"text\" name=\"information_description[{{ language.language_id }}][tag]\" value=\"{{ information_description[language.language_id] ? information_description[language.language_id].tag }}\" placeholder=\"{{ entry_tag }}\" id=\"input-tag{{ language.language_id }}\" class=\"form-control\" />\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <div class=\"tab-pane\" id=\"tab-data\">\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-date-added\">{{ entry_date_added }}</label>\n                <div class=\"col-sm-3\">\n                  <div class=\"input-group datetime\">\n                    <input type=\"text\" name=\"date_added\" value=\"{{ date_added }}\" placeholder=\"{{ entry_date_added }}\" data-date-format=\"YYYY-MM-DD HH:mm:ss\" id=\"input-date-added\" class=\"form-control\" />\n                    <span class=\"input-group-btn\">\n                    <button class=\"btn btn-default\" type=\"button\"><i class=\"fa fa-calendar\"></i></button>\n                    </span></div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-date-available\">{{ entry_date_available }}</label>\n                <div class=\"col-sm-3\">\n                  <div class=\"input-group datetime\">\n                    <input type=\"text\" name=\"date_available\" value=\"{{ date_available }}\" placeholder=\"{{ entry_date_available }}\" data-date-format=\"YYYY-MM-DD HH:mm:ss\" id=\"input-date-available\" class=\"form-control\" />\n                    <span class=\"input-group-btn\">\n                    <button class=\"btn btn-default\" type=\"button\"><i class=\"fa fa-calendar\"></i></button>\n                    </span></div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-date-end\">{{ entry_date_end }}</label>\n                <div class=\"col-sm-3\">\n                  <div class=\"input-group datetime\">\n                    <input type=\"text\" name=\"date_end\" value=\"{{ date_end }}\" placeholder=\"{{ entry_date_end }}\" data-date-format=\"YYYY-MM-DD HH:mm:ss\" id=\"input-date-end\" class=\"form-control\" />\n                    <span class=\"input-group-btn\">\n                    <button class=\"btn btn-default\" type=\"button\"><i class=\"fa fa-calendar\"></i></button>\n                    </span></div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-user\">{{ entry_user }}</label>\n                <div class=\"col-sm-10\">\n                  <select name=\"user_id\" id=\"input-user\" class=\"form-control\">\n                    {% for user_group in user_groups %}\n                    <optgroup label=\"{{ user_group.name }}\">\n                    {% for user in user_group.users %}\n                    {% if user.user_id == user_id %}\n                    <option value=\"{{ user.user_id }}\" selected=\"selected\">{{ user.username }}</option>\n                    {% else %}\n                    <option value=\"{{ user.user_id }}\">{{ user.username }}</option>\n                    {% endif %}\n                    {% endfor %}\n                    </optgroup>\n                    {% endfor %}\n                  </select>\n                </div>\n              </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n  <script type=\"text/javascript\" src=\"view/javascript/summernote/opencart.js\"></script> \n        ]]></search>\n        <add position=\"after\"><![CDATA[\n  <script type=\"text/javascript\"><!--\n// Manufacturer\n$(\'input[name=\\\'manufacturer\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/manufacturer/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				json.unshift({\n					manufacturer_id: 0,\n					name: \'{{ text_none }}\'\n				});\n\n				response($.map(json, function(item) {\n					return {\n						label: item[\'name\'],\n						value: item[\'manufacturer_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'manufacturer\\\']\').val(item[\'label\']);\n		$(\'input[name=\\\'manufacturer_id\\\']\').val(item[\'value\']);\n	}\n});\n\n// Category\n$(\'input[name=\\\'category\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/category/autocomplete&user_token={{ user_token }}&filter_information=1&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'name\'],\n						value: item[\'category_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'category\\\']\').val(\'\');\n\n		$(\'#information-category\' + item[\'value\']).remove();\n\n		$(\'#information-category\').append(\'<div id=\"information-category\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category_add }}\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"information_category[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');\n	}\n});\n\n$(\'#information-category\').delegate(\'.fa-minus-circle\', \'click\', function() {\n	$(this).parent().remove();\n});\n\n$(\'#information-category\').delegate(\'.fa-circle-o\', \'click\', function() {\n	$(\'#information-category div\').children(\'.fa-dot-circle-o\').toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(\'#information-category div\').removeClass(\'text-success\');\n    $(this).toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(this).parent().addClass(\'text-success\');\n    $(\'input[name=\\\'main_category\\\']\').remove();\n    $(this).parent().append(\'<input type=\"hidden\" name=\"main_category\" value=\"\' + $(this).parent().find(\'input[name=\\\'information_category[]\\\']\').val() + \'\" />\');\n	$(\'#information-category div\').children(\'.fa-circle-o\').attr({\'title\':\'{{ help_main_category_add }}\', \'data-original-title\':\'{{ help_main_category_add }}\'});\n    $(this).attr({\'title\':\'{{ help_main_category }}\', \'data-original-title\':\'{{ help_main_category }}\'});\n});\n$(\'#information-category\').delegate(\'.fa-dot-circle-o\', \'click\', function() {\n    $(this).toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(\'input[name=\\\'main_category\\\']\').remove();\n    $(this).parent().removeClass(\'text-success\');\n    $(this).attr({\'title\':\'{{ help_main_category_add }}\', \'data-original-title\':\'{{ help_main_category_add }}\'});\n});\n\n// Filter\n$(\'input[name=\\\'filter\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/filter/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'name\'],\n						value: item[\'filter_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'filter\\\']\').val(\'\');\n\n		$(\'#information-filter\' + item[\'value\']).remove();\n\n		$(\'#information-filter\').append(\'<div id=\"information-filter\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"information_filter[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');\n	}\n});\n\n$(\'#information-filter\').delegate(\'.fa-minus-circle\', \'click\', function() {\n	$(this).parent().remove();\n});\n\n// Related Information\n$(\'input[name=\\\'related_information\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/information/autocomplete&user_token={{ user_token }}{% if information_id %}&information_id={{ information_id }}{% endif %}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'title\'],\n						value: item[\'information_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'related_information\\\']\').val(\'\');\n\n		$(\'#information-related\' + item[\'value\']).remove();\n\n		$(\'#information-related\').append(\'<div id=\"information-related\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-exchange\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"information_related[\' + item[\'value\'] + \'][information_id]\" value=\"\' + item[\'value\'] + \'\" /><input type=\"hidden\" name=\"information_related[\' + item[\'value\'] + \'][route]\" value=\"0\" /></div>\');\n	}\n});\n\n$(\'#information-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n	$(this).parent().remove();\n});\n\n$(\'#information-related\').delegate(\'.fa-exchange\', \'click\', function() {\n    $(this).toggleClass(\'fa-exchange fa-long-arrow-right\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'1\');\n});\n$(\'#information-related\').delegate(\'.fa-long-arrow-right\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-right fa-long-arrow-left\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'-1\');\n});\n$(\'#information-related\').delegate(\'.fa-long-arrow-left\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-left fa-exchange\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'0\');\n});\n\n// Related Product\n$(\'input[name=\\\'related_product\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/product/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'name\'],\n						value: item[\'product_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'related_product\\\']\').val(\'\');\n\n		$(\'#product-related\' + item[\'value\']).remove();\n\n		$(\'#product-related\').append(\'<div id=\"product-related\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-exchange\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_related[\' + item[\'value\'] + \'][product_id]\" value=\"\' + item[\'value\'] + \'\" /><input type=\"hidden\" name=\"product_related[\' + item[\'value\'] + \'][route]\" value=\"0\" /></div>\');\n	}\n});\n\n$(\'#product-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n	$(this).parent().remove();\n});\n\n$(\'#product-related\').delegate(\'.fa-exchange\', \'click\', function() {\n    $(this).toggleClass(\'fa-exchange fa-long-arrow-right\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'1\');\n});\n$(\'#product-related\').delegate(\'.fa-long-arrow-right\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-right fa-long-arrow-left\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'-1\');\n});\n$(\'#product-related\').delegate(\'.fa-long-arrow-left\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-left fa-exchange\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'0\');\n});\n//--></script> \n  <script type=\"text/javascript\"><!--\nvar attribute_row = {{ attribute_row }};\n\nfunction addAttribute() {\n    html  = \'<tr id=\"attribute-row\' + attribute_row + \'\">\';\n	html += \'  <td class=\"text-left\" style=\"width: 20%;\"><input type=\"text\" name=\"information_attribute[\' + attribute_row + \'][name]\" value=\"\" placeholder=\"{{ entry_attribute }}\" class=\"form-control\" /><input type=\"hidden\" name=\"information_attribute[\' + attribute_row + \'][attribute_id]\" value=\"\" /></td>\';\n	html += \'  <td class=\"text-left\">\';\n	{% for language in languages %}\n	html += \'<div class=\"input-group\"><span class=\"input-group-addon\"><img src=\"language/{{ language.code }}/{{ language.code }}.png\" title=\"{{ language.name }}\" /></span><textarea name=\"information_attribute[\' + attribute_row + \'][information_attribute_description][{{ language.language_id }}][text]\" rows=\"5\" placeholder=\"{{ entry_text }}\" class=\"form-control\"></textarea></div>\';\n    {% endfor %}\n	html += \'  </td>\';\n	html += \'  <td class=\"text-right\"><button type=\"button\" onclick=\"$(\\\'#attribute-row\' + attribute_row + \'\\\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\';\n    html += \'</tr>\';\n\n	$(\'#attribute tbody\').append(html);\n\n	attributeautocomplete(attribute_row);\n\n	attribute_row++;\n}\n\nfunction attributeautocomplete(attribute_row) {\n	$(\'input[name=\\\'information_attribute[\' + attribute_row + \'][name]\\\']\').autocomplete({\n		\'source\': function(request, response) {\n			$.ajax({\n				url: \'index.php?route=catalog/attribute/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n				dataType: \'json\',\n				success: function(json) {\n					response($.map(json, function(item) {\n						return {\n							category: item.attribute_group,\n							label: item.name,\n							value: item.attribute_id\n						}\n					}));\n				}\n			});\n		},\n		\'select\': function(item) {\n			$(\'input[name=\\\'information_attribute[\' + attribute_row + \'][name]\\\']\').val(item[\'label\']);\n			$(\'input[name=\\\'information_attribute[\' + attribute_row + \'][attribute_id]\\\']\').val(item[\'value\']);\n		}\n	});\n}\n\n$(\'#attribute tbody tr\').each(function(index, element) {\n	attributeautocomplete(index);\n});\n//--></script> \n  <script type=\"text/javascript\"><!--\nvar image_row = {{ image_row }};\n\nfunction addImage() {\n	html  = \'<tr id=\"image-row\' + image_row + \'\">\';\n	html += \'  <td class=\"text-left\"><a href=\"\" id=\"thumb-image\' + image_row + \'\"data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ placeholder }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a><input type=\"hidden\" name=\"information_image[\' + image_row + \'][image]\" value=\"\" id=\"input-image\' + image_row + \'\" /></td>\';\n	html += \'  <td class=\"text-right\"><input type=\"text\" name=\"information_image[\' + image_row + \'][sort_order]\" value=\"\" placeholder=\"{{ entry_sort_order }}\" class=\"form-control\" /></td>\';\n	html += \'  <td class=\"text-left\"><button type=\"button\" onclick=\"$(\\\'#image-row\' + image_row  + \'\\\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\';\n	html += \'</tr>\';\n\n	$(\'#images tbody\').append(html);\n\n	image_row++;\n}\n//--></script> \n  <script type=\"text/javascript\"><!--\n$(\'.date\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickTime: false\n});\n\n$(\'.time\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickDate: false\n});\n\n$(\'.datetime\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickDate: true,\n	pickTime: true\n});\n//--></script> \n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <li><a href=\"#tab-seo\" data-toggle=\"tab\">{{ tab_seo }}</a></li>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n            <li><a href=\"#tab-links\" data-toggle=\"tab\">{{ tab_links }}</a></li>\n            <li><a href=\"#tab-attribute\" data-toggle=\"tab\">{{ tab_attribute }}</a></li>\n            <li><a href=\"#tab-image\" data-toggle=\"tab\">{{ tab_image }}</a></li>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n{{ footer }} \n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  <style type=\"text/css\"><!--\n#information-category .fa-circle-o {\n    display: none;\n}\n#information-category div:hover .fa-circle-o {\n    display: inline;\n}\n--></style>\n  <script type=\"text/javascript\"><!--\n$(\'.summernote\').on(\'click\', function () {\n	if ($(this).hasClass(\'active\')) {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote(\'destroy\');\n	} else {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote({\n			focus: true,\n			lang: \'{{ summernote }}\'\n		});\n	}\n})\n\n$(document).ready(function() {\n	$(\'[name*=\\\'[short_description]\\\']\').each(function() {\n		if ($(this).val()) {\n            $(this).parent().prev().children(\'.summernote\').trigger(\'click\');\n		}\n	});\n});\n//--></script>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <div class=\"tab-pane\" id=\"tab-seo\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n            <div class=\"tab-pane\" id=\"tab-links\">\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-manufacturer\"><span data-toggle=\"tooltip\" title=\"{{ help_manufacturer }}\">{{ entry_manufacturer }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"manufacturer\" value=\"{{ manufacturer }}\" placeholder=\"{{ entry_manufacturer }}\" id=\"input-manufacturer\" class=\"form-control\" />\n                  <input type=\"hidden\" name=\"manufacturer_id\" value=\"{{ manufacturer_id }}\" />\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-category\"><span data-toggle=\"tooltip\" title=\"{{ help_category }}\">{{ entry_category }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"category\" value=\"\" placeholder=\"{{ entry_category }}\" id=\"input-category\" class=\"form-control\" />\n                  <div id=\"information-category\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"> {% for information_category in information_categories %}\n                    {% if main_category and main_category == information_category.category_id %}\n                    <div id=\"information-category{{ information_category.category_id }}\" class=\"text-success\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-dot-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category }}\"></i> {{ information_category.name }}\n                      <input type=\"hidden\" name=\"information_category[]\" value=\"{{ information_category.category_id }}\" />\n                      <input type=\"hidden\" name=\"main_category\" value=\"{{ information_category.category_id }}\" />\n                    </div>\n                    {% else %}\n                    <div id=\"information-category{{ information_category.category_id }}\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category_add }}\"></i> {{ information_category.name }}\n                      <input type=\"hidden\" name=\"information_category[]\" value=\"{{ information_category.category_id }}\" />\n                    </div>\n                    {% endif %}\n                    {% endfor %}</div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-filter\"><span data-toggle=\"tooltip\" title=\"{{ help_filter }}\">{{ entry_filter }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"filter\" value=\"\" placeholder=\"{{ entry_filter }}\" id=\"input-filter\" class=\"form-control\" />\n                  <div id=\"information-filter\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"> {% for information_filter in information_filters %}\n                    <div id=\"information-filter{{ information_filter.filter_id }}\"><i class=\"fa fa-minus-circle\"></i> {{ information_filter.name }}\n                      <input type=\"hidden\" name=\"information_filter[]\" value=\"{{ information_filter.filter_id }}\" />\n                    </div>\n                    {% endfor %}</div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-related-product\"><span data-toggle=\"tooltip\" title=\"{{ help_related }}\">{{ entry_related_product }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"related_product\" value=\"\" placeholder=\"{{ entry_related_product }}\" id=\"input-related-product\" class=\"form-control\" />\n                  <div id=\"product-related\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"> {% for product_related in product_relateds %}\n                    <div id=\"product-related{{ product_related.product_id }}\"><i class=\"fa fa-minus-circle\"></i> \n                      {% if product_related.route and product_related.route > 0 %}\n                      <i class=\"fa fa-long-arrow-right\"></i> \n                      {% elseif product_related.route and product_related.route < 0 %}\n                      <i class=\"fa fa-long-arrow-left\"></i> \n                      {% else %}\n                      <i class=\"fa fa-exchange\"></i> \n                      {% endif %}\n                      {{ product_related.name }}\n                      <input type=\"hidden\" name=\"product_related[{{ product_related.product_id }}][product_id]\" value=\"{{ product_related.product_id }}\" />\n                      <input type=\"hidden\" name=\"product_related[{{ product_related.product_id }}][route]\" value=\"{{ product_related.route }}\" />\n                    </div>\n                    {% endfor %}</div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-related-information\"><span data-toggle=\"tooltip\" title=\"{{ help_related }}\">{{ entry_related_information }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"related_information\" value=\"\" placeholder=\"{{ entry_related_information }}\" id=\"input-related-information\" class=\"form-control\" />\n                  <div id=\"information-related\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"> {% for information_related in information_relateds %}\n                    <div id=\"information-related{{ information_related.information_id }}\"><i class=\"fa fa-minus-circle\"></i> \n                      {% if information_related.route and information_related.route > 0 %}\n                      <i class=\"fa fa-long-arrow-right\"></i> \n                      {% elseif information_related.route and information_related.route < 0 %}\n                      <i class=\"fa fa-long-arrow-left\"></i> \n                      {% else %}\n                      <i class=\"fa fa-exchange\"></i> \n                      {% endif %}\n                      {{ information_related.title }}\n                      <input type=\"hidden\" name=\"information_related[{{ information_related.information_id }}][information_id]\" value=\"{{ information_related.information_id }}\" />\n                      <input type=\"hidden\" name=\"information_related[{{ information_related.information_id }}][route]\" value=\"{{ information_related.route }}\" />\n                    </div>\n                    {% endfor %}</div>\n                </div>\n              </div>\n            </div>\n            <div class=\"tab-pane\" id=\"tab-attribute\">\n              <div class=\"table-responsive\">\n                <table id=\"attribute\" class=\"table table-striped table-bordered table-hover\">\n                  <thead>\n                    <tr>\n                      <td class=\"text-left\">{{ entry_attribute }}</td>\n                      <td class=\"text-left\">{{ entry_text }}</td>\n                      <td></td>\n                    </tr>\n                  </thead>\n                  <tbody>\n                    {% set attribute_row = 0 %}\n                    {% for information_attribute in information_attributes %}\n                    <tr id=\"attribute-row{{ attribute_row }}\">\n                      <td class=\"text-left\" style=\"width: 40%;\"><input type=\"text\" name=\"information_attribute[{{ attribute_row }}][name]\" value=\"{{ information_attribute.name }}\" placeholder=\"{{ entry_attribute }}\" class=\"form-control\" />\n                      <input type=\"hidden\" name=\"information_attribute[{{ attribute_row }}][attribute_id]\" value=\"{{ information_attribute.attribute_id }}\" /></td>\n                      <td class=\"text-left\">{% for language in languages %}\n                        <div class=\"input-group\"><span class=\"input-group-addon\"><img src=\"language/{{ language.code }}/{{ language.code }}.png\" title=\"{{ language.name }}\" /></span>\n                          <textarea name=\"information_attribute[{{ attribute_row }}][information_attribute_description][{{ language.language_id }}][text]\" rows=\"5\" placeholder=\"{{ entry_text }}\" class=\"form-control\">{{ information_attribute.information_attribute_description[language.language_id] ? information_attribute.information_attribute_description[language.language_id].text }}</textarea>\n                        </div>\n                        {% endfor %}</td>\n                      <td class=\"text-right\"><button type=\"button\" onclick=\"$(\'#attribute-row{{ attribute_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\n                    </tr>\n                    {% set attribute_row = attribute_row + 1 %}\n                    {% endfor %}\n                  </tbody>\n                  <tfoot>\n                    <tr>\n                      <td colspan=\"2\"></td>\n                      <td class=\"text-right\"><button type=\"button\" onclick=\"addAttribute();\" data-toggle=\"tooltip\" title=\"{{ button_attribute_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>\n                    </tr>\n                  </tfoot>\n                </table>\n              </div>\n            </div>\n            <div class=\"tab-pane\" id=\"tab-image\">\n              <div class=\"table-responsive\">\n                <table class=\"table table-striped table-bordered table-hover\">\n                  <thead>\n                    <tr>\n                      <td class=\"text-left\">{{ entry_image }}</td>\n                    </tr>\n                  </thead>\n                  <tbody>\n                    <tr>\n                      <td class=\"text-left\"><a href=\"\" id=\"thumb-image\" data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ thumb }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a>\n                        <input type=\"hidden\" name=\"image\" value=\"{{ image }}\" id=\"input-image\" /></td>\n                    </tr>\n                  </tbody>\n                </table>\n              </div>\n              <div class=\"table-responsive\">\n                <table id=\"images\" class=\"table table-striped table-bordered table-hover\">\n                  <thead>\n                    <tr>\n                      <td class=\"text-left\">{{ entry_additional_image }}</td>\n                      <td class=\"text-right\">{{ entry_sort_order }}</td>\n                      <td></td>\n                    </tr>\n                  </thead>\n                  <tbody>\n                    {% set image_row = 0 %}\n                    {% for information_image in information_images %}\n                    <tr id=\"image-row{{ image_row }}\">\n                      <td class=\"text-left\"><a href=\"\" id=\"thumb-image{{ image_row }}\" data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ information_image.thumb }}\" alt=\"\" title=\"\" data-placeholder=\"{{ placeholder }}\" /></a>\n                        <input type=\"hidden\" name=\"information_image[{{ image_row }}][image]\" value=\"{{ information_image.image }}\" id=\"input-image{{ image_row }}\" /></td>\n                      <td class=\"text-right\"><input type=\"text\" name=\"information_image[{{ image_row }}][sort_order]\" value=\"{{ information_image.sort_order }}\" placeholder=\"{{ entry_sort_order }}\" class=\"form-control\" /></td>\n                      <td class=\"text-left\"><button type=\"button\" onclick=\"$(\'#image-row{{ image_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\n                    </tr>\n                    {% set image_row = image_row + 1 %}\n                    {% endfor %}\n                  </tbody>\n                  <tfoot>\n                    <tr>\n                      <td colspan=\"2\"></td>\n                      <td class=\"text-left\"><button type=\"button\" onclick=\"addImage();\" data-toggle=\"tooltip\" title=\"{{ button_image_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus-circle\"></i></button></td>\n                    </tr>\n                  </tfoot>\n                </table>\n              </div>\n            </div>\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/information_list.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n      <div class=\"pull-right\"><a href=\"{{ add }}\" data-toggle=\"tooltip\" title=\"{{ button_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n      <div class=\"pull-right\">\n        <button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_filter }}\" onclick=\"$(\'#filter-information\').toggleClass(\'hidden-sm hidden-xs\');\" class=\"btn btn-default hidden-md hidden-lg\"><i class=\"fa fa-filter\"></i></button>\n        <a href=\"{{ add }}\" data-toggle=\"tooltip\" title=\"{{ button_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n        <button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\" onclick=\"confirm(\'{{ text_confirm }}\') ? $(\'#form-information\').submit() : false;\"><i class=\"fa fa-trash-o\"></i></button>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n        <button type=\"submit\" form=\"form-information\" formaction=\"{{ copy }}\" data-toggle=\"tooltip\" title=\"{{ button_copy }}\" class=\"btn btn-default\"><i class=\"fa fa-copy\"></i></button>\n        <button type=\"button\" form=\"form-information\" formaction=\"{{ delete }}\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\" onclick=\"confirm(\'{{ text_confirm }}\') ? $(\'#form-information\').submit() : false;\"><i class=\"fa fa-trash-o\"></i></button>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n    <div class=\"panel panel-default\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n    <div class=\"row\">\n      <div id=\"filter-information\" class=\"col-md-3 col-md-push-9 col-sm-12 hidden-sm hidden-xs\">\n        <div class=\"panel panel-default\">\n          <div class=\"panel-heading\">\n            <h3 class=\"panel-title\"><i class=\"fa fa-filter\"></i> {{ text_filter }}</h3>\n          </div>\n          <div class=\"panel-body\">\n            <div class=\"form-group\">\n              <label class=\"control-label\" for=\"input-title\">{{ entry_title }}</label>\n              <input type=\"text\" name=\"filter_name\" value=\"{{ filter_name }}\" placeholder=\"{{ entry_title }}\" id=\"input-title\" class=\"form-control\" />\n            </div>\n            <div class=\"form-group\">\n              <label class=\"control-label\" for=\"input-viewed\">{{ entry_viewed }}</label>\n              <input type=\"text\" name=\"filter_viewed\" value=\"{{ filter_viewed }}\" placeholder=\"{{ entry_viewed }}\" id=\"input-viewed\" class=\"form-control\" />\n            </div>\n            <div class=\"form-group\">\n              <label class=\"control-label\" for=\"input-status\">{{ entry_status }}</label>\n              <select name=\"filter_status\" id=\"input-status\" class=\"form-control\">\n                <option value=\"\"></option>\n                  {% if filter_status == \'1\' %}\n                <option value=\"1\" selected=\"selected\">{{ text_enabled }}</option>\n                  {% else %}\n                <option value=\"1\">{{ text_enabled }}</option>\n                  {% endif %}\n                  {% if filter_status == \'0\' %}\n                <option value=\"0\" selected=\"selected\">{{ text_disabled }}</option>\n                  {% else %}\n                <option value=\"0\">{{ text_disabled }}</option>\n                  {% endif %}\n              </select>\n            </div>\n            <div class=\"form-group text-right\">\n              <button type=\"button\" id=\"button-filter\" class=\"btn btn-default\"><i class=\"fa fa-filter\"></i> {{ button_filter }}</button>\n            </div>\n          </div>\n        </div>\n      </div>\n      <div class=\"col-md-9 col-md-pull-3 col-sm-12\">\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n{{ footer }} \n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  </div>\n  <script type=\"text/javascript\"><!--\n$(\'#button-filter\').on(\'click\', function() {\n	var url = \'\';\n\n	var filter_name = $(\'input[name=\\\'filter_name\\\']\').val();\n\n	if (filter_name) {\n		url += \'&filter_name=\' + encodeURIComponent(filter_name);\n	}\n\n	var filter_viewed = $(\'input[name=\\\'filter_viewed\\\']\').val();\n\n	if (filter_viewed) {\n		url += \'&filter_viewed=\' + encodeURIComponent(filter_viewed);\n	}\n\n	var filter_status = $(\'select[name=\\\'filter_status\\\']\').val();\n\n	if (filter_status != \'\') {\n		url += \'&filter_status=\' + encodeURIComponent(filter_status);\n	}\n\n	location = \'index.php?route=catalog/information&user_token={{ user_token }}\' + url;\n});\n//--></script> \n  <script type=\"text/javascript\"><!--\n// IE and Edge fix!\n$(\'button[form=\\\'form-information\\\']\').on(\'click\', function(e) {\n	$(\'#form-information\').attr(\'action\', $(this).attr(\'formaction\'));\n});\n  \n$(\'input[name=\\\'filter_name\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/information/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'title\'],\n						value: item[\'information_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'filter_name\\\']\').val(item[\'label\']);\n	}\n});\n//--></script></div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td style=\"width: 1px;\" class=\"text-center\"><input type=\"checkbox\" onclick=\"$(\'input[name*=\\\'selected\\\']\').prop(\'checked\', this.checked);\" /></td>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                  <td class=\"text-center\">{{ column_image }}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-left\">{{ information.title }}</td>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                    <td class=\"text-center\">{% if information.image %} <img src=\"{{ information.image }}\" alt=\"{{ information.title }}\" class=\"img-thumbnail\" /> {% else %} <span class=\"img-thumbnail list\"><i class=\"fa fa-camera fa-2x\"></i></span> {% endif %}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-right\">{% if sort == \'i.sort_order\' %}\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <td class=\"text-right\">{% if sort == \'i.viewed\' %}\n                    <a href=\"{{ sort_viewed }}\" class=\"{{ order|lower }}\">{{ column_viewed }}</a>\n                    {% else %}\n                    <a href=\"{{ sort_viewed }}\">{{ column_viewed }}</a>\n                    {% endif %}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-right\">{{ column_action }}</td>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <td class=\"text-left\">{% if sort == \'i.status\' %}\n                    <a href=\"{{ sort_status }}\" class=\"{{ order|lower }}\">{{ column_status }}</a>\n                    {% else %}\n                    <a href=\"{{ sort_status }}\">{{ column_status }}</a>\n                    {% endif %}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                  <td class=\"text-right\">{{ information.sort_order }}</td>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n                  <td class=\"text-right\">{{ information.viewed }}</td>\n                  <td class=\"text-right\">{{ information.sort_order }}</td>\n                  <td class=\"text-left\">{{ information.status }}</td>\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Product -->\n  <file path=\"admin/controller/catalog/product.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'points\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		// Information Related\n		if (isset($this->request->post[\'information_related\'])) {\n			$informations = $this->request->post[\'information_related\'];\n		} elseif (isset($this->request->get[\'product_id\'])) {\n			$informations = $this->model_catalog_product->getInformationRelated($this->request->get[\'product_id\']);\n		} else {\n			$informations = array();\n		}\n\n		$data[\'information_relateds\'] = array();\n\n        $this->load->model(\'catalog/information\');\n\n		foreach ($informations as $information_related) {\n			$related_info = $this->model_catalog_information->getInformation($information_related[\'information_id\']);\n\n			if ($related_info) {\n				$data[\'information_relateds\'][] = array(\n					\'information_id\' => $related_info[\'information_id\'],\n					\'title\'          => $related_info[\'title\'],\n                    \'route\'          => $information_related[\'route\']\n				);\n			}\n		}\n\n		if (isset($this->request->post[\'main_category\'])) {\n			$data[\'main_category\'] = $this->request->post[\'main_category\'];\n		} elseif (isset($this->request->get[\'product_id\']) && $categories) {\n			$data[\'main_category\'] = $this->model_catalog_product->getMainCategory($this->request->get[\'product_id\']);\n		} else {\n			$data[\'main_category\'] = \'\';\n		}\n\n		if (isset($this->request->get[\'product_id\'])) {\n			$data[\'product_id\'] = $this->request->get[\'product_id\'];\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		foreach ($products as $product_id) {\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		foreach ($products as $product) {\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$related_info = $this->model_catalog_product->getProduct($product_id);\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n			$related_info = $this->model_catalog_product->getProduct($product[\'product_id\']);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n					\'product_id\' => $related_info[\'product_id\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                    \'route\'      => $product[\'route\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$option_data = array();\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n				if (isset($this->request->get[\'product_id\']) && $this->request->get[\'product_id\'] == $result[\'product_id\']) {\n					continue;\n				}\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/model/catalog/product.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[description = \'\" . $this->db->escape($value[\'description\']) . \"\']]></search>\n        <add position=\"replace\"><![CDATA[header = \'\" . $this->db->escape($value[\'header\']) . \"\', short_description = \'\" . $this->db->escape($value[\'short_description\']) . \"\', description = \'\" . $this->db->escape($value[\'description\']) . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'description\'      => $result[\'description\'],\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n				\'header\'            => $result[\'header\'],\n				\'short_description\' => $result[\'short_description\'],\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function getProductRelated($product_id) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function getMainCategory($product_id) {\n		$query = $this->db->query(\"SELECT category_id FROM \" . DB_PREFIX . \"product_to_category WHERE product_id = \'\" . (int)$product_id . \"\' AND main_category = \'1\'\");\n\n		if ($query->row) {\n			return $query->row[\'category_id\'];\n		} else {\n			return \'\';\n		}\n	}\n\n	public function getInformationRelated($product_id) {\n		$information_related_data = array();\n\n		$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"information_product_related WHERE product_id = \'\" . (int)$product_id . \"\'\");\n\n		foreach ($query->rows as $result) {\n			$information_related_data[] = array(\n				\'information_id\' => $result[\'information_id\'],\n				\'route\'          => $result[\'route\']\n            );\n		}\n\n		return $information_related_data;\n	}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_to_category SET product_id = \'\" . (int)$product_id . \"\', category_id = \'\" . (int)$category_id . \"\'\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				if (!empty($data[\'main_category\']) && $data[\'main_category\'] == (int)$category_id) {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_to_category SET product_id = \'\" . (int)$product_id . \"\', category_id = \'\" . (int)$category_id . \"\', main_category = \'1\'\");\n				} else {\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_to_category SET product_id = \'\" . (int)$product_id . \"\', category_id = \'\" . (int)$category_id . \"\'\");\n				}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$product_related_data[] = $result[\'related_id\'];\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n			$product_related_data[] = array(\n				\'product_id\' => $result[\'related_id\'],\n				\'route\'      => $result[\'route\']\n            );\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			foreach ($data[\'product_related\'] as $related_id) {\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n			foreach ($data[\'product_related\'] as $product_related) {\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_related WHERE product_id = \'\" . (int)$product_id . \"\' AND related_id = \'\" . (int)$related_id . \"\'\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_related WHERE product_id = \'\" . (int)$product_id . \"\' AND related_id = \'\" . (int)$product_related[\'product_id\'] . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_related SET product_id = \'\" . (int)$product_id . \"\', related_id = \'\" . (int)$related_id . \"\'\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_related SET product_id = \'\" . (int)$product_id . \"\', related_id = \'\" . (int)$product_related[\'product_id\'] . \"\', route = \'\" . (int)$product_related[\'route\'] . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_related WHERE product_id = \'\" . (int)$related_id . \"\' AND related_id = \'\" . (int)$product_id . \"\'\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_related WHERE product_id = \'\" . (int)$product_related[\'product_id\'] . \"\' AND related_id = \'\" . (int)$product_id . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_related SET product_id = \'\" . (int)$related_id . \"\', related_id = \'\" . (int)$product_id . \"\'\");\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_related SET product_id = \'\" . (int)$product_related[\'product_id\'] . \"\', related_id = \'\" . (int)$product_id . \"\', route = \'\" . (int)$product_related[\'route\'] * -1 . \"\'\");\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n		if (isset($data[\'product_reward\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($data[\'information_related\'])) {\n			$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_product_related WHERE product_id = \'\" . (int)$product_id . \"\'\");\n\n			foreach ($data[\'information_related\'] as $information_related) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_product_related SET product_id = \'\" . (int)$product_id . \"\', information_id = \'\" . (int)$information_related[\'information_id\'] . \"\', route = \'\" . (int)$information_related[\'route\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[\n		if (isset($data[\'product_reward\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_product_related WHERE product_id = \'\" . (int)$product_id . \"\'\");\n\n		if (isset($data[\'information_related\'])) {\n			foreach ($data[\'information_related\'] as $information_related) {\n				$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"information_product_related SET product_id = \'\" . (int)$product_id . \"\', information_id = \'\" . (int)$information_related[\'information_id\'] . \"\', route = \'\" . (int)$information_related[\'route\'] . \"\'\");\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$data[\'product_related\'] = $this->getProductRelated($product_id);\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			$data[\'information_related\'] = $this->getInformationRelated($product_id);\n			$data[\'main_category\'] = $this->getMainCategory($product_id);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_related WHERE related_id = \'\" . (int)$product_id . \"\'\");\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"information_product_related WHERE product_id = \'\" . (int)$product_id . \"\'\");\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/product_form.twig\">\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n                  <div class=\"form-group\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-header{{ language.language_id }}\"><span data-toggle=\"tooltip\" title=\"{{ help_header }}\">{{ entry_header }}</span></label>\n                    <div class=\"col-sm-10\">\n                      <input type=\"text\" name=\"product_description[{{ language.language_id }}][header]\" value=\"{{ product_description[language.language_id] ? product_description[language.language_id].header }}\" placeholder=\"{{ entry_header }}\" id=\"input-header{{ language.language_id }}\" class=\"form-control\" />\n                    </div>\n                  </div>\n                  <div class=\"form-group\">\n                    <label class=\"col-sm-2 control-label\" for=\"input-short-description{{ language.language_id }}\">{{ entry_short_description }}<br /><button type=\"button\" class=\"btn btn-primary btn-xs summernote\" data-toggle=\"button\" aria-pressed=\"false\" autocomplete=\"off\" data-language=\"{{ language.language_id }}\">Summernote</button></label>\n                    <div class=\"col-sm-10\">\n                      <textarea name=\"product_description[{{ language.language_id }}][short_description]\" placeholder=\"{{ entry_short_description }}\" id=\"input-short-description{{ language.language_id }}\" class=\"form-control\">{{ product_description[language.language_id] ? product_description[language.language_id].short_description }}</textarea>\n                     </div>\n                  </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                    <div id=\"product-category{{ product_category.category_id }}\"><i class=\"fa fa-minus-circle\"></i> {{ product_category.name }}\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n                    {% if main_category and main_category == product_category.category_id %}\n                    <div id=\"product-category{{ product_category.category_id }}\" class=\"text-success\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-dot-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category }}\"></i> {{ product_category.name }}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                      <input type=\"hidden\" name=\"product_category[]\" value=\"{{ product_category.category_id }}\"\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                      <input type=\"hidden\" name=\"main_category\" value=\"{{ product_category.category_id }}\" />\n                    </div>\n                    {% else %}\n                    <div id=\"product-category{{ product_category.category_id }}\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category_add }}\"></i> {{ product_category.name }}\n                      <input type=\"hidden\" name=\"product_category[]\" value=\"{{ product_category.category_id }}\" />\n                    </div>\n                    {% endif %}\n                    <div class=\"hidden\">\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[catalog/category/autocomplete&user_token={{ user_token }}]]></search>\n        <add position=\"replace\"><![CDATA[catalog/category/autocomplete&user_token={{ user_token }}&filter_information=0]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$(\'#product-category\').append(\'<div id=\"product-category\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_category[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n        $(\'#product-category\').append(\'<div id=\"product-category\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-circle-o\" data-toggle=\"tooltip\" title=\"{{ help_main_category_add }}\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_category[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n// Filter\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n$(\'#product-category\').delegate(\'.fa-circle-o\', \'click\', function() {\n	$(\'#product-category div\').children(\'.fa-dot-circle-o\').toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(\'#product-category div\').removeClass(\'text-success\');\n    $(this).toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(this).parent().addClass(\'text-success\');\n    $(\'input[name=\\\'main_category\\\']\').remove();\n    $(this).parent().append(\'<input type=\"hidden\" name=\"main_category\" value=\"\' + $(this).parent().find(\'input[name=\\\'product_category[]\\\']\').val() + \'\" />\');\n	$(\'#product-category div\').children(\'.fa-circle-o\').attr({\'title\':\'{{ help_main_category_add }}\', \'data-original-title\':\'{{ help_main_category_add }}\'});\n    $(this).attr({\'title\':\'{{ help_main_category }}\', \'data-original-title\':\'{{ help_main_category }}\'});\n});\n$(\'#product-category\').delegate(\'.fa-dot-circle-o\', \'click\', function() {\n    $(this).toggleClass(\'fa-circle-o fa-dot-circle-o\');\n    $(\'input[name=\\\'main_category\\\']\').remove();\n    $(this).parent().removeClass(\'text-success\');\n    $(this).attr({\'title\':\'{{ help_main_category_add }}\', \'data-original-title\':\'{{ help_main_category_add }}\'});\n});\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                    <div id=\"product-related{{ product_related.product_id }}\"><i class=\"fa fa-minus-circle\"></i> {{ product_related.name }}\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n                    <div id=\"product-related{{ product_related.product_id }}\"><i class=\"fa fa-minus-circle\"></i> \n                      {% if product_related.route and product_related.route > 0 %}\n                      <i class=\"fa fa-long-arrow-right\"></i> \n                      {% elseif product_related.route and product_related.route < 0 %}\n                      <i class=\"fa fa-long-arrow-left\"></i> \n                      {% else %}\n                      <i class=\"fa fa-exchange\"></i> \n                      {% endif %}\n                      {{ product_related.name }}\n                      <input type=\"hidden\" name=\"product_related[{{ product_related.product_id }}][product_id]\" value=\"{{ product_related.product_id }}\" />\n                      <input type=\"hidden\" name=\"product_related[{{ product_related.product_id }}][route]\" value=\"{{ product_related.route }}\" />\n                    </div>\n                    {% endfor %}</div>\n                </div>\n              </div>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-related-information\"><span data-toggle=\"tooltip\" title=\"{{ help_related }}\">{{ entry_related_information }}</span></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"related_information\" value=\"\" placeholder=\"{{ entry_related_information }}\" id=\"input-related-information\" class=\"form-control\" />\n                  <div id=\"information-related\" class=\"well well-sm\" style=\"height: 150px; overflow: auto;\"> {% for information_related in information_relateds %}\n                    <div id=\"information-related{{ information_related.information_id }}\"><i class=\"fa fa-minus-circle\"></i> \n                      {% if information_related.route and information_related.route > 0 %}\n                      <i class=\"fa fa-long-arrow-right\"></i> \n                      {% elseif information_related.route and information_related.route < 0 %}\n                      <i class=\"fa fa-long-arrow-left\"></i> \n                      {% else %}\n                      <i class=\"fa fa-exchange\"></i> \n                      {% endif %}\n                      {{ information_related.title }}\n                      <input type=\"hidden\" name=\"information_related[{{ information_related.information_id }}][information_id]\" value=\"{{ information_related.information_id }}\" />\n                      <input type=\"hidden\" name=\"information_related[{{ information_related.information_id }}][route]\" value=\"{{ information_related.route }}\" />\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		  <input type=\"hidden\" name=\"product_related[]\" value=\"{{ product_related.product_id }}\" />\n        ]]></search>\n        <add position=\"replace\"><![CDATA[]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		  <input type=\"hidden\" name=\"product_related[]\" value=\"{{ product_related.product_id }}\"/>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[index.php?route=catalog/product/autocomplete&user_token={{ user_token }}]]></search>\n        <add position=\"replace\"><![CDATA[index.php?route=catalog/product/autocomplete&user_token={{ user_token }}{% if product_id %}&product_id={{ product_id }}{% endif %}]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$(\'#product-related\').append(\'<div id=\"product-related\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_related[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$(\'#product-related\').append(\'<div id=\"product-related\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-exchange\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_related[\' + item[\'value\'] + \'][product_id]\" value=\"\' + item[\'value\'] + \'\" /><input type=\"hidden\" name=\"product_related[\' + item[\'value\'] + \'][route]\" value=\"0\" /></div>\');\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n$(\'#product-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n$(\'#product-related\').delegate(\'.fa-exchange\', \'click\', function() {\n    $(this).toggleClass(\'fa-exchange fa-long-arrow-right\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'1\');\n});\n$(\'#product-related\').delegate(\'.fa-long-arrow-right\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-right fa-long-arrow-left\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'-1\');\n});\n$(\'#product-related\').delegate(\'.fa-long-arrow-left\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-left fa-exchange\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'0\');\n});\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n$(\'#product-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n	$(this).parent().remove();\n});\n\n// Related Information\n$(\'input[name=\\\'related_information\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/information/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'title\'],\n						value: item[\'information_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'related_information\\\']\').val(\'\');\n\n		$(\'#information-related\' + item[\'value\']).remove();\n\n		$(\'#information-related\').append(\'<div id=\"information-related\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> <i class=\"fa fa-exchange\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"information_related[\' + item[\'value\'] + \'][information_id]\" value=\"\' + item[\'value\'] + \'\" /><input type=\"hidden\" name=\"information_related[\' + item[\'value\'] + \'][route]\" value=\"0\" /></div>\');\n	}\n});\n\n$(\'#information-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n	$(this).parent().remove();\n});\n\n$(\'#information-related\').delegate(\'.fa-exchange\', \'click\', function() {\n    $(this).toggleClass(\'fa-exchange fa-long-arrow-right\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'1\');\n});\n$(\'#information-related\').delegate(\'.fa-long-arrow-right\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-right fa-long-arrow-left\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'-1\');\n});\n$(\'#information-related\').delegate(\'.fa-long-arrow-left\', \'click\', function() {\n    $(this).toggleClass(\'fa-long-arrow-left fa-exchange\');\n	$(this).parent().find(\'input[name$=\\\'[route]\\\']\').val(\'0\');\n});\n\n$(\'#information-related\').delegate(\'.fa-minus-circle\', \'click\', function() {\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n{{ footer }} \n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  <style type=\"text/css\"><!--\n#product-category .fa-circle-o {\n    display: none;\n}\n#product-category div:hover .fa-circle-o {\n    display: inline;\n}\n--></style>\n  <script type=\"text/javascript\"><!--\n$(\'.summernote\').on(\'click\', function () {\n	if ($(this).hasClass(\'active\')) {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote(\'destroy\');\n	} else {\n		$(\'#input-short-description\' + $(this).data(\'language\')).summernote({\n			focus: true,\n			lang: \'{{ summernote }}\'\n		});\n	}\n})\n\n$(document).ready(function() {\n	$(\'[name*=\\\'[short_description]\\\']\').each(function() {\n		if ($(this).val()) {\n            $(this).parent().prev().children(\'.summernote\').trigger(\'click\');\n		}\n	});\n});\n//--></script>\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- User -->\n  <file path=\"admin/model/user/user.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n	public function getTotalUsers() {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n	public function getUsersByGroup($user_group_id) {\n		$query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"user` WHERE user_group_id = \'\" . (int)$user_group_id . \"\' ORDER BY username\");\n\n		return $query->rows;\n	}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Review -->\n  <file path=\"admin/controller/catalog/review.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'rating\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($this->request->post[\'reply\'])) {\n			$data[\'reply\'] = $this->request->post[\'reply\'];\n		} elseif (!empty($review_info)) {\n			$data[\'reply\'] = $review_info[\'reply\'];\n		} else {\n			$data[\'reply\'] = \'\';\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$url = \'\';\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'information\'])) {\n			$url .= \'&information=\' . $this->request->get[\'information\'];\n		}\n        \n		if (isset($this->request->get[\'filter_information\'])) {\n			$url .= \'&filter_information=\' . urlencode(html_entity_decode($this->request->get[\'filter_information\'], ENT_QUOTES, \'UTF-8\'));\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	protected function getList() {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		if (isset($this->request->get[\'filter_information\'])) {\n			$filter_information = $this->request->get[\'filter_information\'];\n		} else {\n			$filter_information = \'\';\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$filter_data = array(\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			\'information\'        => isset($this->request->get[\'information\']) ? $this->request->get[\'information\'] : \'\',\n			\'filter_information\' => $filter_information,\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'name\'       => $result[\'name\'],\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				\'name\'       => isset($result[\'name\']) ? $result[\'name\'] : \'\',\n				\'title\'      => isset($result[\'title\']) ? $result[\'title\'] : \'\',\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'sort_product\'] = $this->url->link(\'catalog/review\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=pd.name\' . $url, true);\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$data[\'sort_information\'] = $this->url->link(\'catalog/review\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=id.title\' . $url, true);\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$data[\'filter_product\'] = $filter_product;\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		$url = \'\';\n\n		if (isset($this->request->get[\'sort\'])) {\n			$url .= \'&sort=\' . $this->request->get[\'sort\'];\n		}\n\n		if (isset($this->request->get[\'order\'])) {\n			$url .= \'&order=\' . $this->request->get[\'order\'];\n		}\n\n		if (isset($this->request->get[\'information\'])) {\n			$data[\'information\'] = true;\n			$data[\'type_url\'] = $this->url->link(\'catalog/review\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n		} else {\n			$data[\'information\'] = false;\n			$data[\'type_url\'] = $this->url->link(\'catalog/review\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&information=1\' . $url, true);\n		}\n		\n		$data[\'filter_information\'] = $filter_information;\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->error[\'author\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($this->error[\'information\'])) {\n			$data[\'error_information\'] = $this->error[\'information\'];\n		} else {\n			$data[\'error_information\'] = \'\';\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (isset($this->request->post[\'author\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (isset($this->request->post[\'information_id\'])) {\n			$data[\'information_id\'] = $this->request->post[\'information_id\'];\n		} elseif (!empty($review_info)) {\n			$data[\'information_id\'] = $review_info[\'information_id\'];\n		} else {\n			$data[\'information_id\'] = \'\';\n		}\n\n		if (isset($this->request->post[\'information\'])) {\n			$data[\'information\'] = $this->request->post[\'information\'];\n		} elseif (!empty($review_info)) {\n			$data[\'information\'] = $review_info[\'information\'];\n		} else {\n			$data[\'information\'] = \'\';\n		}\n\n		if (isset($this->request->get[\'information\'])) {\n			$data[\'information_type\'] = 1;\n		} else {\n			$data[\'information_type\'] = 0;\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		if (!$this->request->post[\'product_id\']) {\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		if (isset($this->request->post[\'product_id\']) && empty($this->request->post[\'product_id\'])) {\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n			$this->error[\'product\'] = $this->language->get(\'error_product\');\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		} elseif (isset($this->request->post[\'information_id\']) && empty($this->request->post[\'information_id\'])) {\n			$this->error[\'information\'] = $this->language->get(\'error_information\');\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/model/catalog/review.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[product_id = \'\" . (int)$data[\'product_id\'] . \"\']]></search>\n        <add position=\"replace\"><![CDATA[product_id = \'\" . (isset($data[\'product_id\']) ? (int)$data[\'product_id\'] : \'\') . \"\', information_id = \'\" . (isset($data[\'information_id\']) ? (int)$data[\'information_id\'] : \'\') . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[text = \'\" . $this->db->escape(strip_tags($data[\'text\'])) . \"\']]></search>\n        <add position=\"replace\"><![CDATA[text = \'\" . $this->db->escape(strip_tags($data[\'text\'])) . \"\', reply = \'\" . $this->db->escape(strip_tags($data[\'reply\'])) . \"\']]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[AS product]]></search>\n        <add position=\"replace\"><![CDATA[AS product, (SELECT id.title FROM \" . DB_PREFIX . \"information_description id WHERE id.information_id = r.information_id AND id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\') AS information]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n		if (!empty($data[\'filter_author\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (!empty($data[\'information\'])) {\n			$sql = \"SELECT r.review_id, id.title, r.author, r.rating, r.status, r.date_added FROM \" . DB_PREFIX . \"review r LEFT JOIN \" . DB_PREFIX . \"information_description id ON (r.information_id = id.information_id) WHERE id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\n\n			if (!empty($data[\'filter_information\'])) {\n				$sql .= \" AND id.title LIKE \'\" . $this->db->escape($data[\'filter_information\']) . \"%\'\";\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[\n		if (!empty($data[\'filter_author\'])) {\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n		if (!empty($data[\'information\'])) {\n			$sql = \"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"review r LEFT JOIN \" . DB_PREFIX . \"information_description id ON (r.information_id = id.information_id) WHERE id.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";\n\n			if (!empty($data[\'filter_information\'])) {\n				$sql .= \" AND id.title LIKE \'\" . $this->db->escape($data[\'filter_information\']) . \"%\'\";\n			}\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$sort_data = array(\n        ]]></search>\n        <add position=\"after\"><![CDATA[			\'id.title\',]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n		$this->cache->delete(\'product\');\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		if (isset($data[\'product_id\'])) {\n			$this->cache->delete(\'product\');\n		}\n\n		if (isset($data[\'information_id\'])) {\n			$this->cache->delete(\'information\');\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"1\"><![CDATA[\n		$this->cache->delete(\'product\');\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		if (isset($data[\'product_id\'])) {\n			$this->cache->delete(\'product\');\n		}\n\n		if (isset($data[\'information_id\'])) {\n			$this->cache->delete(\'information\');\n		}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"2\"><![CDATA[\n		$this->cache->delete(\'product\');\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n		$this->cache->delete(\'product\');\n		$this->cache->delete(\'information\');\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/review_form.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n            <label class=\"col-sm-2 control-label\" for=\"input-product\"><span data-toggle=\"tooltip\" title=\"{{ help_product }}\">{{ entry_product }}</span></label>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n            {% if information_type %}\n            <label class=\"col-sm-2 control-label\" for=\"input-information\"><span data-toggle=\"tooltip\" title=\"{{ help_information }}\">{{ entry_information }}</span></label>\n            <div class=\"col-sm-10\">\n              <input type=\"text\" name=\"information\" value=\"{{ information }}\" placeholder=\"{{ entry_information }}\" id=\"input-information\" class=\"form-control\" />\n              <input type=\"hidden\" name=\"information_id\" value=\"{{ information_id }}\" />\n              {% if error_information %}\n              <div class=\"text-danger\">{{ error_information }}</div>\n              {% endif %} </div>\n            {% else %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n              <div class=\"text-danger\">{{ error_product }}</div>\n        ]]></search>\n        <add position=\"after\" offset=\"1\"><![CDATA[\n            {% endif %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"3\"><![CDATA[\n          <div class=\"form-group required\">\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n          <div class=\"form-group\">\n            <label class=\"col-sm-2 control-label\" for=\"input-reply\">{{ entry_reply }}</label>\n            <div class=\"col-sm-10\">\n              <textarea name=\"reply\" cols=\"60\" rows=\"8\" placeholder=\"{{ entry_reply }}\" id=\"input-reply\" data-toggle=\"summernote\" data-lang=\"{{ summernote }}\" class=\"form-control\">{{ reply }}</textarea>\n            </div>\n          </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n$(\'input[name=\\\'product\\\']\').autocomplete({\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n$(\'input[name=\\\'information\\\']\').autocomplete({\n	\'source\': function(request, response) {\n		$.ajax({\n			url: \'index.php?route=catalog/information/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\n			dataType: \'json\',			\n			success: function(json) {\n				response($.map(json, function(item) {\n					return {\n						label: item[\'title\'],\n						value: item[\'information_id\']\n					}\n				}));\n			}\n		});\n	},\n	\'select\': function(item) {\n		$(\'input[name=\\\'information\\\']\').val(item[\'label\']);\n		$(\'input[name=\\\'information_id\\\']\').val(item[\'value\']);		\n	}	\n});\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search index=\"0\"><![CDATA[\n  <script type=\"text/javascript\"><!--\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n  <link href=\"view/javascript/codemirror/lib/codemirror.css\" rel=\"stylesheet\" />\n  <link href=\"view/javascript/codemirror/theme/monokai.css\" rel=\"stylesheet\" />\n  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/codemirror.js\"></script> \n  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/xml.js\"></script> \n  <script type=\"text/javascript\" src=\"view/javascript/codemirror/lib/formatting.js\"></script> \n  <script type=\"text/javascript\" src=\"view/javascript/summernote/summernote.js\"></script>\n  <link href=\"view/javascript/summernote/summernote.css\" rel=\"stylesheet\" />\n  <script type=\"text/javascript\" src=\"view/javascript/summernote/summernote-image-attributes.js\"></script> \n  <script type=\"text/javascript\" src=\"view/javascript/summernote/opencart.js\"></script> \n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/catalog/review_list.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n      <div class=\"pull-right\">\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n        <div class=\"btn-group\">\n          {% if information %}\n          <span class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ entry_review_information }}\"><i class=\"fa fa-file-text-o fa-fw\"></i></span>\n          <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">{{ entry_review_information }} <span class=\"caret\"></span></button>\n          <ul class=\"dropdown-menu dropdown-menu-right\"><li><a href=\"{{ type_url }}\"><i class=\"fa fa-shopping-cart fa-fw\"></i> {{ entry_review_product }}</a></li></ul>\n          {% else %}\n          <span class=\"btn btn-default\" data-toggle=\"tooltip\" title=\"{{ entry_review_product }}\"><i class=\"fa fa-shopping-cart fa-fw\"></i></span>\n          <button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">{{ entry_review_product }} <span class=\"caret\"></span></button>\n          <ul class=\"dropdown-menu dropdown-menu-right\"><li><a href=\"{{ type_url }}\"><i class=\"fa fa-file-text-o fa-fw\"></i> {{ entry_review_information }}</a></li></ul>\n          {% endif %}\n        </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n              <label class=\"control-label\" for=\"input-product\">{{ entry_product }}</label>\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n              {% if information %}\n              <label class=\"control-label\" for=\"input-information\">{{ entry_information }}</label>\n              <input type=\"text\" name=\"filter_information\" value=\"{{ filter_information }}\" placeholder=\"{{ entry_information }}\" id=\"input-product\" class=\"form-control\" />\n              {% else %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n              <input type=\"text\" name=\"filter_product\" value=\"{{ filter_product }}\" placeholder=\"{{ entry_product }}\" id=\"input-product\" class=\"form-control\" />\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n              {% endif %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                      <td style=\"width: 1px;\" class=\"text-center\"><input type=\"checkbox\" onclick=\"$(\'input[name*=\\\'selected\\\']\').prop(\'checked\', this.checked);\" /></td>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                      {% if information %}\n                      <td class=\"text-left\">{% if sort == \'id.title\' %} <a href=\"{{ sort_information }}\" class=\"{{ order|lower }}\">{{ column_information }}</a> {% else %} <a href=\"{{ sort_information }}\">{{ column_information }}</a> {% endif %}</td>\n                      {% else %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                      <td class=\"text-left\">{% if sort == \'pd.name\' %} <a href=\"{{ sort_product }}\" class=\"{{ order|lower }}\">{{ column_product }}</a> {% else %} <a href=\"{{ sort_product }}\">{{ column_product }}</a> {% endif %}</td>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                      {% endif %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n                    <td class=\"text-left\">{{ review.name }}</td>\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n                    {% if information %}\n                    <td class=\"text-left\">{{ review.title }}</td>\n                    {% else %}\n                    <td class=\"text-left\">{{ review.name }}</td>\n                    {% endif %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	var filter_product = $(\'input[name=\\\'filter_product\\\']\').val();\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n    {% if information %}\n	url += \'&information=1\';\n\n	var filter_information = $(\'input[name=\\\'filter_information\\\']\').val();\n	\n	if (filter_information) {\n		url += \'&filter_information=\' + encodeURIComponent(filter_information);\n	}\n    {% else %}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n	var filter_author = $(\'input[name=\\\'filter_author\\\']\').val();\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n    {% endif %}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Report -->\n  <file path=\"admin/controller/extension/report/customer_search.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'products\'    => $result[\'products\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'informations\' => $result[\'informations\'],\n        ]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/model/extension/report/customer.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[cs.products,]]></search>\n        <add position=\"replace\"><![CDATA[cs.products, cs.informations,]]></add>\n      </operation>\n  </file>\n\n  <file path=\"admin/view/template/extension/report/customer_search_info.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n                <td class=\"text-left\">{{ column_products }}</td>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n                <td class=\"text-left\">{{ column_informations }}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n              <td class=\"text-left\">{{ search.products }}</td>\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n              <td class=\"text-left\">{{ search.informations }}</td>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[colspan=\"6\"]]></search>\n        <add position=\"replace\"><![CDATA[colspan=\"7\"]]></add>\n      </operation>\n  </file>\n\n<!-- optimblog-category.ocmod -->\n\n  <!-- Category -->\n  <file path=\"catalog/controller/product/category.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[utf8_substr(trim(strip_tags(html_entity_decode($result[\'description\']]]></search>\n        <add position=\"replace\"><![CDATA[!empty($result[\'short_description\']) ? trim(html_entity_decode($result[\'short_description\'], ENT_QUOTES, \'UTF-8\')) : utf8_substr(trim(strip_tags(html_entity_decode($result[\'description\']]]></add>\n      </operation>\n  </file>\n\n  <!-- Product -->\n  <file path=\"catalog/controller/product/product.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n				\'text\'       => nl2br($result[\'text\']),\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'reply\'      => html_entity_decode($result[\'reply\'], ENT_QUOTES, \'UTF-8\'),\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Common Menu -->\n  <file path=\"catalog/controller/common/menu.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$this->load->model(\'catalog/product\');\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$this->load->model(\'extension/module/optimblog_information\');\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\')]]></search>\n        <add position=\"replace\"><![CDATA[($category[\'information\'] ? ($category[\'information\'] && $this->config->get(\'information_optimblog_information_count\') ? \' (\' . $this->model_extension_information_optimblog_information->getTotalInformations($filter_data) . \')\' : \'\') : ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'))]]></add>\n      </operation>\n  </file>\n\n  <!-- Common Layout -->\n  <file path=\"catalog/controller/common/{content_top,content_bottom,column_left,column_right}.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[$route == \'product/product\']]></search>\n        <add position=\"before\"><![CDATA[\n		if ($route == \'information/category\' && isset($this->request->get[\'path\'])) {\n			$this->load->model(\'catalog/category\');\n\n			$path = explode(\'_\', (string)$this->request->get[\'path\']);\n\n			$layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));\n		}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Information Sitemap -->\n  <file path=\"catalog/controller/information/sitemap.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		foreach ($categories_1 as $category_1) {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			if ($category_1[\'information\']) {\n				$level_2_data = array();\n\n				$categories_2 = $this->model_catalog_category->getCategories($category_1[\'category_id\']);\n\n				foreach ($categories_2 as $category_2) {\n					$level_3_data = array();\n\n					$categories_3 = $this->model_catalog_category->getCategories($category_2[\'category_id\']);\n\n					foreach ($categories_3 as $category_3) {\n					$level_3_data[] = array(\n							\'name\' => $category_3[\'name\'],\n							\'href\' => $this->url->link(\'product/category\', \'path=\' . $category_1[\'category_id\'] . \'_\' . $category_2[\'category_id\'] . \'_\' . $category_3[\'category_id\'])\n						);\n					}\n\n					$level_2_data[] = array(\n						\'name\'     => $category_2[\'name\'],\n						\'children\' => $level_3_data,\n						\'href\'     => $this->url->link(\'product/category\', \'path=\' . $category_1[\'category_id\'] . \'_\' . $category_2[\'category_id\'])\n					);\n				}\n\n				$data[\'information_categories\'][] = array(\n					\'name\'     => $category_1[\'name\'],\n					\'children\' => $level_2_data,\n					\'href\'     => $this->url->link(\'product/category\', \'path=\' . $category_1[\'category_id\'])\n				);\n\n				continue;\n			}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		$this->load->model(\'catalog/information\');\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n		$this->load->model(\'extension/module/optimblog_information\');\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n		foreach ($this->model_catalog_information->getInformations() as $result) {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			if ($this->model_extension_module_optimblog_information->getMainCategory($result[\'information_id\'])) {\n				continue;\n			}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Product Search -->\n  <file path=\"catalog/controller/product/search.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		foreach ($categories_1 as $category_1) {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			if ($category_1[\'information\']) {\n				continue;\n			}\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n					\'products\'      => $product_total,\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n					\'informations\'  => 0,\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Account Search -->\n  <file path=\"catalog/model/account/search.php\">\n  	  <operation error=\"skip\">\n        <search><![CDATA[`products` = \'\" . (int)$data[\'products\'] . \"\',]]></search>\n        <add position=\"replace\"><![CDATA[`products` = \'\" . (int)$data[\'products\'] . \"\', `informations` = \'\" . (int)$data[\'informations\'] . \"\',]]></add>\n      </operation>\n  </file>\n\n  <!-- Module Category -->\n  <file path=\"catalog/controller/extension/module/category.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n		foreach ($categories as $category) {\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n			if ($category[\'information\']) {\n				continue;\n			}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Seo Url -->\n  <file path=\"catalog/controller/startup/seo_url.php\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n				} elseif (isset($this->request->get[\'path\'])) {\n        ]]></search>\n        <add position=\"replace\"><![CDATA[\n				} elseif (isset($this->request->get[\'path\']) && !isset($this->request->get[\'information_id\'])) {\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Product Model -->\n  <file path=\"catalog/model/catalog/product.php\">\n  	  <operation error=\"skip\">\n        <search><![CDATA[\n				\'name\'             => $query->row[\'name\'],\n        ]]></search>\n        <add position=\"after\"><![CDATA[\n				\'header\'           => $query->row[\'header\'],\n				\'short_description\'=> $query->row[\'short_description\'],\n        ]]></add>\n      </operation>\n  </file>\n\n<!-- optimblog-category-theme-default.ocmod -->\n\n  <!-- Information -->\n  <file path=\"catalog/view/theme/tuvs/template/information/information.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[{{ description }}]]></search>\n        <add position=\"replace\"><![CDATA[\n      {% if not information_exclusion %}\n      <ul class=\"list-inline text-muted\">\n        {% if show_date %}\n        <li><i class=\"fa fa-calendar-o\" aria-hidden=\"true\"></i> {{ date_added }}</li>\n        {% endif %}\n        {% if show_author %}\n        <li><i class=\"fa fa-user-o\" aria-hidden=\"true\"></i> {{ author }}</li>\n        {% endif %}\n        {% if manufacturer and show_manufacturer %}\n        <li>{{ text_manufacturer }} <a href=\"{{ manufacturers }}\">{{ manufacturer }}</a></li>\n        {% endif %}\n        {% if show_review %}\n        <li><a href=\"\" onclick=\"$(\'html, body\').animate({ scrollTop: $(\'#review\').offset().top }, \'slow\'); return false;\"><i class=\"fa fa-comment-o\" aria-hidden=\"true\"></i> {{ reviews }}</a></li>\n        <li class=\"rating\">{% for i in 1..5 %}\n          {% if rating < i %}<span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-1x\"></i></span>{% else %}<span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-1x\"></i><i class=\"fa fa-star-o fa-stack-1x\"></i></span>{% endif %}\n          {% endfor %}</li>\n        {% endif %}\n      </ul>\n      {% endif %}\n      {% if thumb and not images %}\n      <div class=\"images\">\n        <a class=\"thumbnail\" href=\"{{ popup }}\" title=\"{{ heading_title }}\"><img src=\"{{ thumb }}\" title=\"{{ heading_title }}\" alt=\"{{ heading_title }}\" class=\"img-responsive\" /></a>\n      </div>\n      {% elseif not thumb and images|length == 1 %}\n      <div class=\"images\">\n      {% for image in images %}\n        <a class=\"thumbnail\" href=\"{{ image.popup }}\" title=\"{{ heading_title }}\"> <img src=\"{{ image.thumb }}\" title=\"{{ heading_title }}\" alt=\"{{ heading_title }}\" /></a>\n      {% endfor %}\n      </div>\n      {% elseif images|length > 1 %}\n      <div class=\"swiper-viewport\">\n        <div id=\"slideshow-information\" class=\"swiper-container\">\n          <div class=\"swiper-wrapper images\">\n            {% if thumb %}\n            <div class=\"swiper-slide text-center\">\n              <a href=\"{{ popup }}\" title=\"{{ heading_title }}\"><img src=\"{{ thumb }}\" title=\"{{ heading_title }}\" alt=\"{{ heading_title }}\" class=\"img-responsive\" /></a>\n            </div>\n            {% endif %}\n            {% for image in images %}\n            <div class=\"swiper-slide text-center\">\n              <a href=\"{{ image.popup }}\" title=\"{{ heading_title }}\"><img src=\"{{ image.thumb }}\" title=\"{{ heading_title }}\" alt=\"{{ heading_title }}\" class=\"img-responsive\" /></a>\n            </div>\n            {% endfor %}\n          </div>\n        </div>\n        <div class=\"swiper-pagination slideshow-information\"></div>\n        <div class=\"swiper-pager\">\n          <div class=\"swiper-button-next\"></div>\n          <div class=\"swiper-button-prev\"></div>\n        </div>\n      </div>\n      <script type=\"text/javascript\"><!--\n      $(\'#slideshow-information\').swiper({\n      	mode: \'horizontal\',\n      	slidesPerView: 1,\n      	pagination: \'.slideshow-information\',\n      	paginationClickable: true,\n      	nextButton: \'.swiper-button-next\',\n      	prevButton: \'.swiper-button-prev\',\n      	spaceBetween: 30,\n      	autoplay: 5000,\n      	autoplayDisableOnInteraction: true\n      });\n      --></script>\n      {% endif %}\n	  {{ description }}\n      {% if attribute_groups %}\n      <div id=\"specification\">\n        <h3>{{ text_attribute }}</h3>\n        <table class=\"table table-bordered\">\n          {% for attribute_group in attribute_groups %}\n          <thead>\n            <tr>\n              <td colspan=\"2\"><strong>{{ attribute_group.name }}</strong></td>\n            </tr>\n          </thead>\n          <tbody>\n            {% for attribute in attribute_group.attribute %}\n            <tr>\n              <td>{{ attribute.name }}</td>\n              <td>{{ attribute.text }}</td>\n            </tr>\n            {% endfor %}\n          </tbody>\n          {% endfor %}\n        </table>\n      </div>\n      {% endif %}\n      {% if show_review and not information_exclusion %}\n      <h3>{{ text_review }}</h3>\n      <div id=\"review\"></div>\n      {% endif %}\n      {% if review_status and not information_exclusion %}\n      <form class=\"form-horizontal\" id=\"form-review\">\n        <h4>{{ text_write }}</h4>\n        {% if review_guest %}\n        <div class=\"form-group required\">\n          <div class=\"col-sm-12\">\n            <label class=\"control-label\" for=\"input-name\">{{ entry_name }}</label>\n            <input type=\"text\" name=\"name\" value=\"{{ customer_name }}\" id=\"input-name\" class=\"form-control\" />\n          </div>\n        </div>\n        <div class=\"form-group required\">\n          <div class=\"col-sm-12\">\n            <label class=\"control-label\" for=\"input-review\">{{ entry_review }}</label>\n            <textarea name=\"text\" rows=\"5\" id=\"input-review\" class=\"form-control\"></textarea>\n            <div class=\"help-block\">{{ text_note }}</div>\n          </div>\n        </div>\n        <div class=\"form-group required\">\n          <div class=\"col-sm-12\">\n            <label class=\"control-label\">{{ entry_rating }}</label>\n            &nbsp;&nbsp;&nbsp; {{ entry_bad }}&nbsp;\n            <input type=\"radio\" name=\"rating\" value=\"1\" />\n            &nbsp;\n            <input type=\"radio\" name=\"rating\" value=\"2\" />\n            &nbsp;\n            <input type=\"radio\" name=\"rating\" value=\"3\" />\n            &nbsp;\n            <input type=\"radio\" name=\"rating\" value=\"4\" />\n            &nbsp;\n            <input type=\"radio\" name=\"rating\" value=\"5\" />\n            &nbsp;{{ entry_good }}</div>\n        </div>\n        {{ captcha }}\n        <div class=\"buttons clearfix\">\n          <div class=\"pull-right\">\n            <button type=\"button\" id=\"button-review\" data-loading-text=\"{{ text_loading }}\" class=\"btn btn-primary\">{{ button_continue }}</button>\n          </div>\n        </div>\n        {% else %}\n        {{ text_login }}\n        {% endif %}\n      </form>\n      {% endif %}\n      {% if tags %}\n      <p>{{ text_tags }}\n      {% for i in 0..tags|length %}\n      {% if i < (tags|length - 1) %} <a href=\"{{ tags[i].href }}\">{{ tags[i].tag }}</a>,\n      {% else %} <a href=\"{{ tags[i].href }}\">{{ tags[i].tag }}</a> {% endif %}\n      {% endfor %} </p>\n      {% endif %}\n      <hr>\n      {{ share }}\n\n      {% if informations %}\n      <h3>{{ text_related }}</h3>\n      <div class=\"row\"> {% set i = 0 %}\n        {% for information in informations %}\n        {% if column_left and column_right %}\n        {% set class = \'col-xs-8 col-sm-6\' %}\n        {% elseif column_left or column_right %}\n        {% set class = \'col-xs-6 col-md-4\' %}\n        {% else %}\n        {% set class = \'col-xs-6 col-sm-3\' %}\n        {% endif %}\n        <div class=\"{{ class }}\">\n          <div class=\"thumbnail\">\n            <div class=\"image\"><a href=\"{{ information.href }}\"><img src=\"{{ information.thumb }}\" alt=\"{{ information.name }}\" title=\"{{ information.name }}\" class=\"img-responsive\" /></a></div>\n            <div class=\"caption\">\n              <h4><a href=\"{{ information.href }}\">{{ information.title }}</a></h4>\n              {% if show_related_author or show_related_date or show_related_review %}\n              <ul class=\"list-inline text-muted small\">\n                {% if show_related_date %}\n                <li><i class=\"fa fa-calendar-o\" aria-hidden=\"true\"></i> {{ information.date_added }}</li>\n                {% endif %}\n                {% if show_related_author %}\n                <li><i class=\"fa fa-user-o\" aria-hidden=\"true\"></i> {{ information.author }}</li>\n                {% endif %}\n                {% if show_related_review %}\n                <li><i class=\"fa fa-comment-o\" aria-hidden=\"true\"></i> {{ information.reviews }}</li>\n                {% endif %}\n                {% if information.rating %}\n                <li class=\"rating\"> {% for j in 1..5 %}\n                  {% if information.rating < j %} <span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% else %} <span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-1x\"></i><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% endif %}\n                  {% endfor %}</li>\n                {% endif %}\n              </ul>\n              {% endif %}\n              <p>{{ information.description }}</p>\n              <a href=\"{{ information.href }}\" class=\"btn btn-primary btn-xs\" role=\"button\">{{ text_read }}</a>\n            </div>\n          </div>\n        </div>\n        {% if column_left and column_right and (i + 1) % 2 == 0 %}\n        <div class=\"clearfix visible-md visible-sm\"></div>\n        {% elseif column_left or column_right and (i + 1) % 3 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% elseif (i + 1) % 4 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% endif %}\n        {% set i = i + 1 %}\n        {% endfor %} </div>\n        {% endif %}\n      {% if products %}\n      <h3>{{ text_related_product }}</h3>\n      <div class=\"row\"> {% set i = 0 %}\n        {% for product in products %}\n        {% if column_left and column_right %}\n        {% set class = \'col-xs-8 col-sm-6\' %}\n        {% elseif column_left or column_right %}\n        {% set class = \'col-xs-6 col-md-4\' %}\n        {% else %}\n        {% set class = \'col-xs-6 col-sm-3\' %}\n        {% endif %}\n        <div class=\"{{ class }}\">\n          <div class=\"product-thumb transition\">\n            <div class=\"image\"><a href=\"{{ product.href }}\"><img src=\"{{ product.thumb }}\" alt=\"{{ product.name }}\" title=\"{{ product.name }}\" class=\"img-responsive\" /></a></div>\n            <div class=\"caption\">\n              <h4><a href=\"{{ product.href }}\">{{ product.name }}</a></h4>\n              <p>{{ product.description }}</p>\n              {% if product.rating %}\n              <div class=\"rating\"> {% for j in 1..5 %}\n                {% if product.rating < j %} <span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% else %} <span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-1x\"></i><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% endif %}\n                {% endfor %} </div>\n              {% endif %}\n              {% if product.price %}\n              <p class=\"price\"> {% if not product.special %}\n                {{ product.price }}\n                {% else %} <span class=\"price-new\">{{ product.special }}</span> <span class=\"price-old\">{{ product.price }}</span> {% endif %}\n                {% if product.tax %} <span class=\"price-tax\">{{ text_tax }} {{ product.tax }}</span> {% endif %} </p>\n              {% endif %} </div>\n            <div class=\"button-group\">\n              <button type=\"button\" onclick=\"cart.add(\'{{ product.product_id }}\', \'{{ product.minimum }}\');\"><span class=\"hidden-xs hidden-sm hidden-md\">{{ button_cart }}</span> <i class=\"fa fa-shopping-cart\"></i></button>\n              <button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_wishlist }}\" onclick=\"wishlist.add(\'{{ product.product_id }}\');\"><i class=\"fa fa-heart\"></i></button>\n              <button type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_compare }}\" onclick=\"compare.add(\'{{ product.product_id }}\');\"><i class=\"fa fa-exchange\"></i></button>\n            </div>\n          </div>\n        </div>\n        {% if column_left and column_right and (i + 1) % 2 == 0 %}\n        <div class=\"clearfix visible-md visible-sm\"></div>\n        {% elseif column_left or column_right and (i + 1) % 3 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% elseif (i + 1) % 4 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% endif %}\n        {% set i = i + 1 %}\n        {% endfor %} </div>\n        {% endif %} </div>\n        ]]></add>\n      </operation>\n      <operation error=\"skip\">\n        <search><![CDATA[\n        {{ footer }}\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n<script type=\"text/javascript\"><!--\n$(\'#review\').delegate(\'.pagination a\', \'click\', function(e) {\n    e.preventDefault();\n\n    $(\'#review\').fadeOut(\'slow\');\n\n    $(\'#review\').load(this.href);\n\n    $(\'#review\').fadeIn(\'slow\');\n});\n\n$(\'#review\').load(\'index.php?route=information/information/review&information_id={{ information_id }}\');\n\n$(\'#button-review\').on(\'click\', function() {\n	$.ajax({\n		url: \'index.php?route=information/information/write&information_id={{ information_id }}\',\n		type: \'post\',\n		dataType: \'json\',\n		data: $(\"#form-review\").serialize(),\n		beforeSend: function() {\n			$(\'#button-review\').button(\'loading\');\n		},\n		complete: function() {\n			$(\'#button-review\').button(\'reset\');\n		},\n		success: function(json) {\n			$(\'.alert-dismissible\').remove();\n\n			if (json[\'error\']) {\n				$(\'#review\').after(\'<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa fa-exclamation-circle\"></i> \' + json[\'error\'] + \'</div>\');\n			}\n\n			if (json[\'success\']) {\n				$(\'#review\').after(\'<div class=\"alert alert-success alert-dismissible\"><i class=\"fa fa-check-circle\"></i> \' + json[\'success\'] + \'</div>\');\n\n				$(\'input[name=\\\'name\\\']\').val(\'\');\n				$(\'textarea[name=\\\'text\\\']\').val(\'\');\n				$(\'input[name=\\\'rating\\\']:checked\').prop(\'checked\', false);\n			}\n		}\n	});\n});\n\n$(document).ready(function() {\n	$(\'.images\').magnificPopup({\n		type:\'image\',\n		delegate: \'a\',\n		gallery: {\n			enabled: true\n		}\n	});\n});\n//--></script> \n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Product -->\n  <file path=\"catalog/view/theme/default/template/product/product.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[\n        {% if tags %}\n        ]]></search>\n        <add position=\"before\"><![CDATA[\n      {% if informations %}\n      <h3>{{ text_related_information }}</h3>\n      <div class=\"row\"> {% set i = 0 %}\n        {% for information in informations %}\n        {% if column_left and column_right %}\n        {% set class = \'col-xs-8 col-sm-6\' %}\n        {% elseif column_left or column_right %}\n        {% set class = \'col-xs-6 col-md-4\' %}\n        {% else %}\n        {% set class = \'col-xs-6 col-sm-3\' %}\n        {% endif %}\n        <div class=\"{{ class }}\">\n          <div class=\"thumbnail\">\n            <div class=\"image\"><a href=\"{{ information.href }}\"><img src=\"{{ information.thumb }}\" alt=\"{{ information.name }}\" title=\"{{ information.name }}\" class=\"img-responsive\" /></a></div>\n            <div class=\"caption\">\n              <h4><a href=\"{{ information.href }}\">{{ information.title }}</a></h4>\n              {% if show_related_author or show_related_date or show_related_review %}\n              <ul class=\"list-inline text-muted small\">\n                {% if show_related_date %}\n                <li><i class=\"fa fa-calendar-o\" aria-hidden=\"true\"></i> {{ information.date_added }}</li>\n                {% endif %}\n                {% if show_related_author %}\n                <li><i class=\"fa fa-user-o\" aria-hidden=\"true\"></i> {{ information.author }}</li>\n                {% endif %}\n                {% if show_related_review %}\n                <li><i class=\"fa fa-comment-o\" aria-hidden=\"true\"></i> {{ information.reviews }}</li>\n                {% endif %}\n                {% if information.rating %}\n                <li class=\"rating\"> {% for j in 1..5 %}\n                  {% if information.rating < j %} <span class=\"fa fa-stack\"><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% else %} <span class=\"fa fa-stack\"><i class=\"fa fa-star fa-stack-1x\"></i><i class=\"fa fa-star-o fa-stack-1x\"></i></span> {% endif %}\n                  {% endfor %}</li>\n                {% endif %}\n              </ul>\n              {% endif %}\n              <p>{{ information.description }}</p>\n              <a href=\"{{ information.href }}\" class=\"btn btn-primary btn-xs\" role=\"button\">{{ text_read }}</a>\n            </div>\n          </div>\n        </div>\n        {% if column_left and column_right and (i + 1) % 2 == 0 %}\n        <div class=\"clearfix visible-md visible-sm\"></div>\n        {% elseif column_left or column_right and (i + 1) % 3 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% elseif (i + 1) % 4 == 0 %}\n        <div class=\"clearfix visible-md\"></div>\n        {% endif %}\n        {% set i = i + 1 %}\n        {% endfor %} </div>\n        {% endif %}\n        ]]></add>\n      </operation>\n  </file>\n\n  <!-- Review -->\n  <file path=\"catalog/view/theme/default/template/product/review.twig\">\n      <operation error=\"skip\">\n        <search><![CDATA[{% endfor %}</td>]]></search>\n        <add position=\"replace\"><![CDATA[{% endfor %}\n      {% if review.reply %}\n      <div class=\"well well-sm\">{{ review.reply }}</div>\n      {% endif %}\n    </td>]]></add>\n      </operation>\n  </file>\n\n  <!-- Information Sitemap -->\n  <file path=\"catalog/view/theme/default/template/information/sitemap.twig\">\n      <operation error=\"skip\">\n        <search index=\"6\"><![CDATA[</ul>]]></search>\n        <add position=\"before\"><![CDATA[\n            {% for category_1 in information_categories %}\n            <li><a href=\"{{ category_1.href }}\">{{ category_1.name }}</a>\n              {% if category_1.children %}\n              <ul>\n                {% for category_2 in category_1.children %}\n                <li><a href=\"{{ category_2.href }}\">{{ category_2.name }}</a>\n                  {% if category_2.children %}\n                  <ul>\n                    {% for category_3 in category_2.children %}\n                    <li><a href=\"{{ category_3.href }}\">{{ category_3.name }}</a></li>\n                    {% endfor %}\n                  </ul>\n                  {% endif %}\n                </li>\n                {% endfor %}\n              </ul>\n              {% endif %}\n            </li>\n            {% endfor %}\n        ]]></add>\n      </operation>\n  </file>\n</modification>', 1, '2025-04-06 19:21:01');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(12, 23, 'Localcopy OCMOD Install Fix', 'localcopy-oc3', 'opencart3x.ru', '1.0', 'https://opencart3x.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>Localcopy OCMOD Install Fix</name>\n  <code>localcopy-oc3</code>\n  <version>1.0</version>\n  <author>opencart3x.ru</author>\n  <link>https://opencart3x.ru</link>\n\n  <file path=\"admin/controller/marketplace/install.php\">\n	<operation>\n      <search>\n        <![CDATA[if ($safe) {]]>\n      </search>\n      <add position=\"before\">\n        <![CDATA[		\n		    $safe = true;\n		    ]]>\n      </add>\n    </operation>\n    <operation>\n      <search>\n        <![CDATA[if (is_dir($file) && !is_dir($path)) {]]>\n      </search>\n      <add position=\"before\">\n        <![CDATA[		\n			  if ($path == \'\') {\n  				$app_root = explode(\'/\',DIR_APPLICATION);\n  				unset($app_root[count($app_root)-2]);\n  				$app_root = implode(\'/\',$app_root);\n  				$path = $app_root . $destination;\n			  }\n		    ]]>\n      </add>\n    </operation>\n  </file> \n</modification>\n', 1, '2025-04-07 17:19:44'),
(15, 28, 'Newsletter Subscription', 'NewsletterSubscription', 'opencart3x.ru', '3.0', 'https://opencart3x.ru/', '<modification>\n    <name>Newsletter Subscription</name>\n    <code>NewsletterSubscription</code>\n    <version>3.0</version>\n    <author>opencart3x.ru</author>\n    <link>https://opencart3x.ru/</link>\n\n    <file path=\"admin/controller/common/column_left.php\">\n        <operation>\n            <search><![CDATA[\n               if ($this->user->hasPermission(\'access\', \'marketing/contact\')) {\n            ]]></search>\n            <add position=\"before\"><![CDATA[\n                if ($this->user->hasPermission(\'access\', \'common/newsletter\')) {       \n                    $marketing[] = array(\n                        \'name\'     => \'Подписчики\',\n                        \'href\'     => $this->url->link(\'common/newsletter\', \'user_token=\' . $this->session->data[\'user_token\'], true),\n                        \'children\' => array()       \n                    );                  \n                }   \n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/view/template/marketing/contact.twig\">\n            <operation>\n                <search><![CDATA[<option value=\"product\">{{ text_product }}</option>]]></search>\n                <add position=\"after\">\n                <![CDATA[\n                    <option value=\"only_newsletter\">{{ text_only_newsletter }}</option>\n                ]]>\n                </add>\n            </operation>\n        </file>\n        \n        <file path=\"admin/language/en-gb/marketing/contact.php\">\n            <operation>\n                <search><![CDATA[$_[\'text_product\']]]></search>\n                <add position=\"before\">\n                <![CDATA[\n                    $_[\'text_only_newsletter\']      = \'Subscribers from module\';\n                ]]>\n                </add>\n            </operation>\n        </file>\n        \n        <file path=\"admin/language/ru-ru/marketing/contact.php\">\n            <operation>\n                <search><![CDATA[$_[\'text_product\']]]></search>\n                <add position=\"before\">\n                <![CDATA[\n                    $_[\'text_only_newsletter\']      = \'Подписчики из модуля\';\n                ]]>\n                </add>\n            </operation>\n        </file>\n        \n        <file path=\"admin/controller/marketing/contact.php\">\n            <operation>\n                <search><![CDATA[$email_total = $this->model_customer_customer->getTotalCustomers($customer_data);]]></search>\n                <add position=\"replace\">\n                <![CDATA[\n                    $email_total = $this->model_customer_customer->getTotalCustomersEmail($customer_data);\n                    \n                    $results_emails = $this->model_customer_customer->getCustomersEmail($customer_data);\n                                                \n                    foreach ($results_emails as $result) {\n            $emails[] = $result[\'email\'];\n                    }\n                    \n                ]]>\n                </add>\n            </operation>\n        </file>\n        \n        <file path=\"admin/controller/marketing/contact.php\">\n            <operation>\n                <search><![CDATA[case \'product\':]]></search>\n                <add position=\"before\">\n                <![CDATA[\n                    case \'only_newsletter\':\n                            $customer_data = array(\n                \'start\' => ($page - 1) * 10,\n                \'limit\' => 10\n                            );\n                                                    \n                            $email_total = $this->model_customer_customer->getTotalCustomersEmail($customer_data);\n                    \n                            $results_emails = $this->model_customer_customer->getCustomersEmail($customer_data);\n\n                            foreach ($results_emails as $result) {\n                                $emails[] = $result[\'email\'];\n                            }\n            \n            break;\n                    \n                ]]>\n                </add>\n            </operation>\n        </file>\n        \n        <file path=\"admin/model/customer/customer.php\">\n            <operation>\n                <search><![CDATA[public function getTotalCustomers($data = array()) {]]></search>\n                <add position=\"before\">\n                <![CDATA[\n                    public function getTotalCustomersEmail($data = array()) {\n                        $sql = \"SELECT COUNT(*) AS total FROM \" . DB_PREFIX . \"customer\";\n\n                        $implode = array();\n\n                        if (!empty($data[\'filter_name\'])) {\n                                $implode[] = \"CONCAT(firstname, \' \', lastname) LIKE \'%\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";\n                        }\n\n                        if (!empty($data[\'filter_email\'])) {\n                                $implode[] = \"email LIKE \'\" . $this->db->escape($data[\'filter_email\']) . \"%\'\";\n                        }\n\n                        if (isset($data[\'filter_newsletter\']) && !is_null($data[\'filter_newsletter\'])) {\n                                $implode[] = \"newsletter = \'\" . (int)$data[\'filter_newsletter\'] . \"\'\";\n                        }\n\n                        if (!empty($data[\'filter_customer_group_id\'])) {\n                                $implode[] = \"customer_group_id = \'\" . (int)$data[\'filter_customer_group_id\'] . \"\'\";\n                        }\n\n                        if (!empty($data[\'filter_ip\'])) {\n                                $implode[] = \"customer_id IN (SELECT customer_id FROM \" . DB_PREFIX . \"customer_ip WHERE ip = \'\" . $this->db->escape($data[\'filter_ip\']) . \"\')\";\n                        }\n\n                        if (isset($data[\'filter_status\']) && !is_null($data[\'filter_status\'])) {\n                                $implode[] = \"status = \'\" . (int)$data[\'filter_status\'] . \"\'\";\n                        }\n\n                        if (isset($data[\'filter_approved\']) && !is_null($data[\'filter_approved\'])) {\n                                $implode[] = \"approved = \'\" . (int)$data[\'filter_approved\'] . \"\'\";\n                        }\n\n                        if (!empty($data[\'filter_date_added\'])) {\n                                $implode[] = \"DATE(date_added) = DATE(\'\" . $this->db->escape($data[\'filter_date_added\']) . \"\')\";\n                        }\n\n                        if ($implode) {\n                                $sql .= \" WHERE \" . implode(\" AND \", $implode);\n                        }\n\n                        $query = $this->db->query($sql);\n\n                        $registerd_total = $query->row[\'total\'];\n\n                        $sql_email = \"SELECT COUNT(email) AS total FROM \" . DB_PREFIX . \"newsletter\";\n\n                        $query_email = $this->db->query($sql_email);\n\n                        $subcribe_total = $query_email->row[\'total\'];\n\n                        $final_count = $registerd_total + $subcribe_total;\n\n                        return $final_count;\n                    }\n                    \n                    public function getCustomersEmail($data = array()) {\n        \n                        $sql = \"SELECT email FROM \" . DB_PREFIX . \"newsletter \";\n\n                        if (isset($data[\'start\']) || isset($data[\'limit\'])) {\n                                if ($data[\'start\'] < 0) {\n                                        $data[\'start\'] = 0;\n                                }\n\n                                if ($data[\'limit\'] < 1) {\n                                        $data[\'limit\'] = 20;\n                                }\n\n                                $sql .= \" LIMIT \" . (int)$data[\'start\'] . \",\" . (int)$data[\'limit\'];\n                        }\n\n                        $query = $this->db->query($sql);\n\n                        return $query->rows;\n                    }\n\n                ]]>\n                </add>\n            </operation>\n        </file>\n</modification>', 1, '2025-04-07 19:52:39'),
(14, 27, 'Footer data', 'Code Footer', 'Ivan Ivanov', '1.0', 'https://www.uroki-verstki.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>Footer data</name>\r\n  <code>Code Footer</code>\r\n  <version>1.0</version>\r\n  <author>Ivan Ivanov</author>\r\n  <link>https://www.uroki-verstki.ru</link>\r\n \r\n<file path=\"catalog/controller/common/footer.php\">\r\n\r\n  <operation>\r\n    <search>\r\n      <![CDATA[\r\n        $this->config->get(\'config_name\'), date(\'Y\', time()));\r\n      ]]>\r\n    </search>\r\n    <add position=\"after\">\r\n      <![CDATA[\r\n        if ($this->request->server[\'HTTPS\']) {\r\n          $server = $this->config->get(\'config_ssl\');\r\n        } else {\r\n          $server = $this->config->get(\'config_url\');\r\n        }\r\n\r\n        $data[\'home\'] = $this->url->link(\'common/home\');\r\n        $data[\'name\'] = $this->config->get(\'config_name\');\r\n        $data[\'description\'] = $this->document->getDescription();\r\n        $data[\'menu_footer\'] = $this->load->controller(\'common/menu_footer\');\r\n		    $data[\'telephone\'] = $this->config->get(\'config_telephone\');\r\n        $data[\'address\'] = nl2br($this->config->get(\'config_address\'));\r\n        $data[\'email\'] = nl2br($this->config->get(\'config_email\'));\r\n\r\n        if (is_file(DIR_IMAGE . $this->config->get(\'config_logo\'))) {\r\n          $data[\'logo\'] = $server . \'image/\' . $this->config->get(\'config_logo\');\r\n        } else {\r\n          $data[\'logo\'] = \'\';\r\n        }\r\n      ]]>\r\n    </add>\r\n  </operation>\r\n\r\n</file>\r\n \r\n</modification>', 1, '2025-04-07 18:50:00'),
(16, 29, 'Footer Social Media Link( 3.x )', 'footer_social_media_link', 'Amit Dholiya', '1.0', '', '<modification>\n	<id><![CDATA[Footer Social Media Link( 3.x )]]></id>\n	<version><![CDATA[1.0]]></version>\n	<author><![CDATA[Amit Dholiya]]></author>\n    <name>Footer Social Media Link( 3.x )</name>\n    <code>footer_social_media_link</code>	\n	\n	<file path=\"admin/controller/setting/setting.php\">\n		<operation error=\"skip\">\n		  <search><![CDATA[if (isset($this->request->post[\'config_image\'])) {]]></search>\n			<add position=\"before\"><![CDATA[if (isset($this->request->post[\'config_youtube_link\'])) {\n			$data[\'config_youtube_link\'] = $this->request->post[\'config_youtube_link\'];\n		} else {\n			$data[\'config_youtube_link\'] = $this->config->get(\'config_youtube_link\');\n		}\n\n		if (isset($this->request->post[\'config_blog_link\'])) {\n			$data[\'config_blog_link\'] = $this->request->post[\'config_blog_link\'];\n		} else {\n			$data[\'config_blog_link\'] = $this->config->get(\'config_blog_link\');\n		}\n\n		if (isset($this->request->post[\'config_facebook_link\'])) {\n			$data[\'config_facebook_link\'] = $this->request->post[\'config_facebook_link\'];\n		} else {\n			$data[\'config_facebook_link\'] = $this->config->get(\'config_facebook_link\');\n		}\n\n		if (isset($this->request->post[\'config_twitter_link\'])) {\n			$data[\'config_twitter_link\'] = $this->request->post[\'config_twitter_link\'];\n		} else {\n			$data[\'config_twitter_link\'] = $this->config->get(\'config_twitter_link\');\n		}\n\n		if (isset($this->request->post[\'config_pinterest_link\'])) {\n			$data[\'config_pinterest_link\'] = $this->request->post[\'config_pinterest_link\'];\n		} else {\n			$data[\'config_pinterest_link\'] = $this->config->get(\'config_pinterest_link\');\n		}\n\n		if (isset($this->request->post[\'config_googlep_link\'])) {\n			$data[\'config_googlep_link\'] = $this->request->post[\'config_googlep_link\'];\n		} else {\n			$data[\'config_googlep_link\'] = $this->config->get(\'config_googlep_link\');\n		}\n\n		if (isset($this->request->post[\'config_linkedin_link\'])) {\n			$data[\'config_linkedin_link\'] = $this->request->post[\'config_linkedin_link\'];\n		} else {\n			$data[\'config_linkedin_link\'] = $this->config->get(\'config_linkedin_link\');\n		}\n\n\n		if (isset($this->request->post[\'config_instagram_link\'])) {\n			$data[\'config_instagram_link\'] = $this->request->post[\'config_instagram_link\'];\n		} else {\n			$data[\'config_instagram_link\'] = $this->config->get(\'config_instagram_link\');\n		}\n\n		if (isset($this->request->post[\'config_whatsapp_link\'])) {\n			$data[\'config_whatsapp_link\'] = $this->request->post[\'config_whatsapp_link\'];\n		} else {\n			$data[\'config_whatsapp_link\'] = $this->config->get(\'config_whatsapp_link\');\n		}\n    \n    if (isset($this->request->post[\'config_telegram_link\'])) {\n			$data[\'config_telegram_link\'] = $this->request->post[\'config_telegram_link\'];\n		} else {\n			$data[\'config_telegram_link\'] = $this->config->get(\'config_telegram_link\');\n		}]]></add>\n		</operation>\n	</file>\n    \n    <file path=\"admin/view/template/setting/setting.twig\">\n		<operation error=\"skip\">\n		  <search><![CDATA[{% if locations %}]]></search>\n			<add position=\"before\"><![CDATA[ <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-blog-link\"><i class=\"fa fa-wordpress fa-2x\" aria-hidden=\"true\" style=\"color:#00405d\"></i><!-- {{ entry_blog_link }} --></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"config_blog_link\" value=\"{{ config_blog_link }}\" placeholder=\"{{ entry_blog_link }}\" id=\"input-blog-link\" class=\"form-control\" />\n                </div>\n              </div>\n\n               <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-youtube-link\"><i class=\"fa fa-youtube-square fa-2x\" aria-hidden=\"true\" style=\"color:#ED3833\"></i> <!-- {{ entry_youtube_link }} --></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"config_youtube_link\" value=\"{{ config_youtube_link }}\" placeholder=\"{{ entry_youtube_link }}\" id=\"input-youtube-link\" class=\"form-control\" />\n                </div>\n              </div>\n\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-facebook-link\"><i class=\"fa fa-facebook-square fa-2x\" aria-hidden=\"true\" style=\"color:#4267b2\"></i><!-- {{ entry_facebook_link }} --></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"config_facebook_link\" value=\"{{ config_facebook_link }}\" placeholder=\"{{ entry_facebook_link }}\" id=\"input-facebook-link\" class=\"form-control\" />\n                </div>\n              </div>\n\n               <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-twitter-link\"><i class=\"fa fa-twitter-square fa-2x\" aria-hidden=\"true\" style=\"color:#38A1F3\"></i><!-- {{ entry_twitter_link }} --></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"config_twitter_link\" value=\"{{ config_twitter_link }}\" placeholder=\"{{ entry_twitter_link }}\" id=\"input-twitter-link\" class=\"form-control\" />\n                </div>\n              </div>\n\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-pinterest-link\"><i class=\"fa fa-pinterest-square fa-2x\" aria-hidden=\"true\" style=\"color:#BD081C\"></i><!-- {{ entry_pinterest_link }} --></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"config_pinterest_link\" value=\"{{ config_pinterest_link }}\" placeholder=\"{{ entry_pinterest_link }}\" id=\"input-pinterest-link\" class=\"form-control\" />\n                </div>\n              </div>\n\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-googlep-link\"><i class=\"fa fa-google-plus-square fa-2x\" aria-hidden=\"true\" style=\"color:#dc4e41\"></i><!-- {{ entry_googlep_link }} --></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"config_googlep_link\" value=\"{{ config_googlep_link }}\" placeholder=\"{{ entry_googlep_link }}\" id=\"input-googlep-link\" class=\"form-control\" />\n                </div>\n              </div>\n\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-linkedin-link\"><i class=\"fa fa-linkedin-square fa-2x\" aria-hidden=\"true\" style=\"color:#0077B5\"></i><!-- {{ entry_linkedin_link }} --></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"config_linkedin_link\" value=\"{{ config_linkedin_link }}\" placeholder=\"{{ entry_linkedin_link }}\" id=\"input-linkedin-link\" class=\"form-control\" />\n                </div>\n              </div>\n\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-instagram-link\"><i class=\"fa fa-instagram fa-2x\" aria-hidden=\"true\" style=\"color:#e4405f\"></i><!-- {{ entry_instagram_link }} --></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"config_instagram_link\" value=\"{{ config_instagram_link }}\" placeholder=\"{{ entry_instagram_link }}\" id=\"input-instagram-link\" class=\"form-control\" />\n                </div>\n              </div>\n\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-whatsapp-link\"><i class=\"fa fa-whatsapp fa-2x\" aria-hidden=\"true\" style=\"background-color:#43d854;color:#FFF\"></i><!-- {{ entry_whatsapp_link }} --></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"config_whatsapp_link\" value=\"{{ config_whatsapp_link }}\" placeholder=\"{{ entry_whatsapp_link }}\" id=\"input-whatsapp-link\" class=\"form-control\" />\n                </div>\n              </div>\n              \n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-telegram-link\"><i class=\"fa fa-telegram fa-2x\" aria-hidden=\"true\" style=\"background-color:#43d854;color:#FFF\"></i><!-- {{ entry_telegram_link }} --></label>\n                <div class=\"col-sm-10\">\n                  <input type=\"text\" name=\"config_telegram_link\" value=\"{{ config_telegram_link }}\" placeholder=\"{{ entry_telegram_link }}\" id=\"input-telegram-link\" class=\"form-control\" />\n                </div>\n              </div>]]></add>\n		</operation>\n	</file>\n\n  <file path=\"catalog/controller/common/footer.php\">\n		<operation error=\"skip\">\n			<search position=\"replace\"><![CDATA[$data[\'scripts\'] = $this->document->getScripts(\'footer\');]]></search>\n			<add><![CDATA[$data[\'scripts\'] = $this->document->getScripts(\'footer\');\n    $data[\'whatsapp_no\'] = $this->config->get(\'config_whatsapp_link\');\n    $data[\'telegram_link\'] = $this->config->get(\'config_telegram_link\');\n		$data[\'blog_link\'] = $this->config->get(\'config_blog_link\');\n		$data[\'youtube_link\'] = $this->config->get(\'config_youtube_link\');\n		$data[\'facebook_link\'] = $this->config->get(\'config_facebook_link\');\n		$data[\'twitter_link\'] = $this->config->get(\'config_twitter_link\');\n		$data[\'pinterest_link\'] = $this->config->get(\'config_pinterest_link\');\n		$data[\'googlep_link\'] = $this->config->get(\'config_googlep_link\');\n		$data[\'linkedin_link\'] = $this->config->get(\'config_linkedin_link\');\n		$data[\'instagram_link\'] = $this->config->get(\'config_instagram_link\');\n			]]></add>\n		</operation>\n	</file>\n    \n      <file path=\"catalog/view/theme/doopet/template/common/footer.twig\">\n		<operation error=\"skip\">\n			<search position=\"replace\"><![CDATA[ \n        <ul class=\"footer-social\"></ul>\n      ]]></search>\n			<add><![CDATA[\n        <ul class=\"footer-social\">\n          {% if facebook_link %}\n              <li><a href=\"{{ facebook_link }}\" title=\"Facebook\" target=\"_blank\" style=\"background-color: #4867AA;\"><i class=\"social-icon fa fa-facebook fa-4x\" style=\"color: #fff;\" aria-hidden=\"true\"></i></a>\n          {% endif %}\n\n          {% if whatsapp_no %}\n              <a href=\"https://api.whatsapp.com/send?phone={{ whatsapp_no }}&amp;text=Hey!\" target=\"_blank\"><i style=\"color: #fff;\" class=\"social-icon fa fa-whatsapp fa-4x\" aria-hidden=\"true\"></i></a>\n          {% endif %}\n\n          {% if telegram_link %}\n              <a href=\"{{ telegram_link }}\" title=\"Telegram\" target=\"_new\" style=\"background-color: #27A6E6;\"><i style=\"color: #fff;\" class=\"social-icon fa fa-telegram\" aria-hidden=\"true\"></i></a>\n          {% endif %} \n\n          {% if instagram_link %}\n              <a href=\"{{ instagram_link }}\" title=\"Instagram\" target=\"_blank\" style=\"background-color: #C814A3;\"><i style=\"color: #fff;\"class=\"social-icon fa fa-instagram fa-4x\" aria-hidden=\"true\"></i> </a>\n          {% endif %}\n\n          {% if youtube_link %}\n              <a href=\"{{ youtube_link }}\" title=\"Youtube\" target=\"_blank\"><i style=\"color: #fff;\" class=\"social-icon fa fa-youtube-square\" aria-hidden=\"true\"></i> </a>\n          {% endif %}\n\n          {% if blog_link %}\n              <a href=\"{{ blog_link }}\" title=\"Blog\" target=\"_blank\"><i style=\"color: #fff;\" class=\"social-icon fa fa-wordpress\" aria-hidden=\"true\"></i> </a>\n          {% endif %}\n\n          {% if twitter_link %}\n              <a href=\"{{ twitter_link }}\"  title=\"Twitter\" target=\"_blank\"><i style=\"color: #fff;\" class=\"social-icon fa fa-twitter-square\" aria-hidden=\"true\"></i> </a>\n          {% endif %}\n\n          {% if pinterest_link %}\n            <a href=\"{{ pinterest_link }}\" title=\"Pinterest\" target=\"_new\"><i style=\"color: #fff;\" class=\"social-icon fa fa-pinterest\" aria-hidden=\"true\"></i></a>\n          {% endif %}\n\n          {% if linkedin_link %}\n              <a href=\"{{ linkedin_link }}\" title=\"Linkedin\" target=\"_new\"><i style=\"color: #fff;\" class=\"social-icon fa fa-linkedin\" aria-hidden=\"true\"></i></a></li> \n          {% endif %}\n        </ul>\n  <style type=\"text/css\">\n    .social-icon{ padding: 2px;\n    background-color: #FFF;\n    height: 25px;\n    width: 25px;\n    text-align: center;\n    margin: 0 2px;\n    display: inline-block;\n    font-size: 20px;\n    border-radius: 2px;\n    }\n</style>\n			]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2025-04-08 17:08:05'),
(25, 38, 'DEV-OPENCART.COM - Умный фильтр товаров', 'dev_opencart_com_filter_um', 'DEV-OPENCART.COM', '1', 'https://dev-opencart.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>  \n   <name>DEV-OPENCART.COM - Умный фильтр товаров</name>\n    <version>1</version>\n    <link>https://dev-opencart.com</link>\n    <author>DEV-OPENCART.COM</author>\n    <code>dev_opencart_com_filter_um</code>\n   \n   <file path=\"catalog/controller/product/*.php\">\n       <operation>\n           <search><![CDATA[$this->model_catalog_product->getProducts($filter_data)]]></search>\n           <add position=\"before\"><![CDATA[            $filter_data[\'filter_bfilter\'] = true;]]></add>\n       </operation>\n       <operation>\n           <search><![CDATA[= $this->model_catalog_product->getTotalProducts($filter_data)]]></search>\n           <add position=\"before\"><![CDATA[            $filter_data[\'filter_bfilter\'] = true;]]></add>\n       </operation>\n   </file>\n   \n   <file path=\"catalog/controller/product/category.php\">\n	  <operation>\n			<search><![CDATA[$category_info = $this->model_catalog_category->getCategory($category_id);]]></search>\n            <add position=\"after\"><![CDATA[\n                /* Brainy Filter (brainyfilter.xml) - Start ->*/\n                if (!$category_info) {\n                    $this->load->language(\'extension/module/brainyfilter\');\n                    $category_info = array(\n                        \'name\' => $this->language->get(\'text_bf_page_title\'),\n                        \'description\' => \'\',\n                        \'meta_description\' => \'\',\n                        \'meta_keyword\' => \'\',\n                        \'meta_title\' => $this->language->get(\'text_bf_page_title\'),\n                        \'image\' => \'\',\n                    );\n                    $this->request->get[\'path\'] = 0;\n                    $showCategories = false;\n                    $route = \'extension/module/brainyfilter/filter\';\n                    $path  = \'\';\n                } else {\n                    $route = \'product/category\';\n                    $path  = \'path=\' . $this->request->get[\'path\'];\n                    $showCategories = true;\n                }\n                /* Brainy Filter (brainyfilter.xml) - End ->*/\n                ]]>\n			</add>\n	  </operation>\n	  <operation>\n			<search><![CDATA[$results = $this->model_catalog_category->getCategories($category_id);]]></search>\n            <add position=\"replace\"><![CDATA[\n                /* Brainy Filter (brainyfilter.xml) - Start ->*/\n                if ($showCategories) {\n                $results = $this->model_catalog_category->getCategories($category_id);\n                } else {\n                    $results = array();\n                }\n                /* Brainy Filter (brainyfilter.xml) - End ->*/\n            ]]>\n			</add>\n	  </operation>\n	  <operation>\n			<search regex=\"true\"><![CDATA[/\\\'product\\/category\\\', \\\'path\\=\\\' \\. \\$this\\-\\>request\\-\\>get\\[\\\'path\\\'\\]/]]></search>\n            <add position=\"replace\"><![CDATA[$route, $path]]>\n			</add>\n	  </operation>\n        <operation>\n            <search><![CDATA[if ($page == 1) {]]></search>\n            <add position=\"before\">\n                <![CDATA[\n                /* Brainy Filter (brainyfilter.xml) - Start ->*/\n                if (isset($category_info[\'category_id\'])) {\n                /* Brainy Filter (brainyfilter.xml) - End ->*/]]>\n            </add>\n        </operation>\n        <operation>\n            <search><![CDATA[if ($limit && ceil($product_total / $limit) > $page) {]]></search>\n            <add position=\"after\" offset=\"2\">\n                <![CDATA[\n                /* Brainy Filter (brainyfilter.xml) - Start ->*/\n                }\n                /* Brainy Filter (brainyfilter.xml) - End ->*/]]>\n            </add>\n        </operation>\n   </file>\n   \n   <file path=\"catalog/controller/product/special.php\">\n        <operation>\n            <search><![CDATA[$product_total = $this->model_catalog_product->getTotalProductSpecials();]]></search>\n            <add position=\"replace\"><![CDATA[\n                $filter_data[\'filter_bfilter\'] = true;\n                $filter_data[\'filter_specials_only\'] = true;\n                $product_total = $this->model_catalog_product->getTotalProducts($filter_data);\n            ]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[$results = $this->model_catalog_product->getProductSpecials($filter_data);]]></search>\n            <add position=\"replace\"><![CDATA[\n                $results = $this->model_catalog_product->getProducts($filter_data);\n            ]]></add>\n        </operation>\n   </file>\n   \n   <file path=\"catalog/controller/product/search.php\">\n       <operation>\n           <search><![CDATA[if (isset($this->request->get[\'search\']) || isset($this->request->get[\'tag\'])) {]]></search>\n           <add position=\"replace\"><![CDATA[\n                    /* Brainy Filter (brainyfilter.xml) - Start ->*/\n                    /* Show product list in any case */\n					if (true) {\n                    /* Brainy Filter (brainyfilter.xml) - End ->*/\n                ]]>\n           </add>\n       </operation>\n   </file>\n   \n    <file path=\"catalog/model/catalog/product.php\">\n        <operation>\n            <search><![CDATA[public function getProducts($data = array()) {]]></search>\n            <add>\n                <![CDATA[\n    /**\n     * Custom getProducts() method added by Brainy Filter extension\n     */\n    public function getProducts($data = array()) \n    {\n        if (!isset($data[\'filter_bfilter\'])) {\n            return $this->getProductsOriginal($data);\n        }\n        $settings = $this->config->get(\'brainyfilter_layout_basic\');\n        if (isset($settings[\'global\'][\'subcategories_fix\']) && $settings[\'global\'][\'subcategories_fix\']) {\n            $data[\'filter_sub_category\'] = true;\n        }\n        $this->load->model(\'extension/module/brainyfilter\');\n        $model = new ModelExtensionModuleBrainyFilter($this->registry);\n        $model->setData($data);\n        $sql = $model->prepareQueryForCategory();\n        $query = $this->db->query($sql);\n\n        $product_data = array();\n		foreach ($query->rows as $result) {\n			$product_data[$result[\'product_id\']] = $this->getProduct($result[\'product_id\']);\n		}\n\n		return $product_data;\n    }\n    \n    /** \n     * It is the original getProducts() method, which was renamed by Brainy Filter modification.\n     * A custom getProduct() method was added instead. \n     * Disable the Brainy Filter OCMOD modification in order to reset the method.\n     * Note: disabling of Brainy Filter modification will break the work of Brainy Filter extension.\n     */\n     public function getProductsOriginal($data = array()) { ]]>\n            </add>\n        </operation>\n        \n        <operation>\n            <search><![CDATA[public function getTotalProducts($data = array()) {]]></search>\n            <add>\n                <![CDATA[\n    /**\n     * Custom getTotalProducts() method added by Brainy Filter extension\n     */\n    public function getTotalProducts($data = array())\n    {\n        if (!isset($data[\'filter_bfilter\'])) {\n            return $this->getTotalProductsOriginal($data);\n        }\n        $settings = $this->config->get(\'brainyfilter_layout_basic\');\n        if (isset($settings[\'global\'][\'subcategories_fix\']) && $settings[\'global\'][\'subcategories_fix\']) {\n            $data[\'filter_sub_category\'] = true;\n        }\n        $this->load->model(\'extension/module/brainyfilter\');\n        $model = new ModelExtensionModuleBrainyFilter($this->registry);\n        $model->setData($data);\n        $sql = $model->prepareQueryForTotal();\n		$query = $this->db->query($sql);\n\n		return $query->row[\'total\'];\n    }\n    \n    /** \n     * It is the original getTotalProducts() method, which was renamed by Brainy Filter modification.\n     * A custom getTotalProducts() method was added instead. \n     * Disable the Brainy Filter OCMOD modification in order to reset the method.\n     * Note: disabling of Brainy Filter modification will break the work of Brainy Filter extension.\n     */\n     public function getTotalProductsOriginal($data = array()) { ]]>\n            </add>\n        </operation>\n    </file>\n    <file path=\"catalog/model/checkout/order.php\">\n        <operation>\n            <search><![CDATA[$this->cache->delete(\'product\');]]></search>\n            <add position=\"before\"><![CDATA[\n                require_once \'admin/model/extension/module/brainyfilter.php\';\n                $bfModel = new ModelExtensionModuleBrainyFilter($this->registry);\n                $prodIds = array();\n                $res = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"order_product WHERE order_id = \'\" . (int)$order_id . \"\'\");\n                foreach($res->rows as $prod) {\n                    $prodIds[] = $prod[\'product_id\'];\n                }\n                $bfModel->updateStockCache($prodIds);\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2025-04-13 11:34:10'),
(26, 39, 'Product data', 'Code Product', 'Ivan Ivanov', '1.0', 'https://www.uroki-verstki.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>Product data</name>\r\n  <code>Code Product</code>\r\n  <version>1.0</version>\r\n  <author>Ivan Ivanov</author>\r\n  <link>https://www.uroki-verstki.ru</link>\r\n \r\n  <file path=\"catalog/controller/product/product.php\">\r\n\r\n    <operation>\r\n      <search>\r\n        <![CDATA[\r\n          $data[\'model\'] = $product_info[\'model\'];\r\n        ]]>\r\n      </search>\r\n      <add position=\"after\">\r\n        <![CDATA[\r\n          $data[\'sku\'] = $product_info[\'sku\'];\r\n        ]]>\r\n      </add>\r\n    </operation>\r\n\r\n  </file>\r\n \r\n</modification>', 1, '2025-04-14 05:15:53');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Рекомендуемиые товары ', 'featured', '{\"name\":\"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\\u0438\\u044b\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \",\"product_name\":\"\",\"product\":[\"69\",\"50\",\"70\",\"72\",\"71\",\"54\",\"51\",\"73\"],\"limit\":\"8\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1200\",\"height\":\"387\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Преимущества ', 'html', '{\"name\":\"\\u041f\\u0440\\u0435\\u0438\\u043c\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0430 \",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;features-wrap&quot;&gt;\\r\\n\\t&lt;div class=&quot;container&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;row&quot;&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col-sm-3&quot;&gt;\\r\\n              &lt;div class=&quot;features-icon&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;svg width=&quot;43&quot; height=&quot;43&quot; viewBox=&quot;0 0 43 43&quot; fill=&quot;none&quot; xmlns=&quot;http:\\/\\/www.w3.org\\/2000\\/svg&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M9.95247 15.2469L27.651 5.7835L21.5 2.6875L3.25119 11.8734L9.95247 15.2469Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M33.026 8.48914L15.3275 17.9525L21.5 21.0599L39.7488 11.8734L33.026 8.48914Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M20.9961 21.94L14.7812 18.8118V25.6851L12.0938 22.9794H9.40625V16.1062L2.6875 12.7246V31.0964L20.9961 40.3125V21.94Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M22.0039 21.94V40.3125L40.3125 31.0964V12.7246L22.0039 21.94Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t&lt;\\/svg&gt;\\r\\n                &lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;h4 class=&quot;features-title&quot;&gt;\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430&lt;\\/h4&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;features-desc&quot;&gt;\\u043f\\u043e \\u0420\\u0438\\u0433\\u0435 \\u043d\\u0430 \\u0432\\u0441\\u0435 \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0438 \\u0441\\u0432\\u044b\\u0448e 20\\u20ac&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col-sm-3&quot;&gt;\\r\\n                   &lt;div class=&quot;features-icon&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;svg width=&quot;46&quot; height=&quot;27&quot; viewBox=&quot;0 0 46 27&quot; fill=&quot;none&quot; xmlns=&quot;http:\\/\\/www.w3.org\\/2000\\/svg&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;g clip-path=&quot;url(#clip0_8_1287)&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path fill-rule=&quot;evenodd&quot; clip-rule=&quot;evenodd&quot; d=&quot;M32.7747 0.262426C36.7607 1.15882 38.2854 3.41765 40.1971 6.52665H32.7747V0.262426ZM9.48025 6.78771C10.2607 6.78771 10.8272 7.1528 10.8272 8.00602C10.8272 8.72565 10.2263 9.30931 9.48411 9.31135H1.34691C0.602951 9.31135 0 9.89603 0 10.6167C0 11.3377 0.602951 11.922 1.34691 11.922H13.4691C14.22 11.922 14.8212 12.506 14.8212 13.2273C14.8212 13.9483 14.2183 14.5327 13.4743 14.5327H1.34691C0.602951 14.5327 0 15.117 0 15.838C0 16.559 0.602951 17.1433 1.34691 17.1433H4.3101V21.0593C4.3101 21.7803 4.91305 22.3646 5.657 22.3646H8.36449C8.84713 24.6687 10.9478 26.3676 13.4242 26.3676C15.9005 26.3676 18.0012 24.6687 18.4838 22.3646H32.1598C32.6425 24.6687 34.7431 26.3676 37.2195 26.3676C39.6958 26.3676 41.7965 24.6687 42.2791 22.3646H44.6275C45.3714 22.3646 45.9744 21.7803 45.9744 21.0593V13.2273C45.9744 9.39735 41.806 9.14308 41.8021 9.1373H31.4278C30.6838 9.1373 30.0809 8.55297 30.0809 7.83197V0H5.657C4.91305 0 4.3101 0.584339 4.3101 1.30533V4.17705H2.69381C1.94986 4.17705 1.34691 4.76139 1.34691 5.48238C1.34691 6.20337 1.94986 6.78771 2.69381 6.78771H9.48025ZM38.9655 19.6717C39.9298 20.6062 39.9298 22.1219 38.9655 23.0564C37.4145 24.5596 34.7502 23.4901 34.7502 21.3639C34.7502 19.238 37.4145 18.1686 38.9655 19.6717ZM15.1702 19.6717C16.1345 20.6062 16.1345 22.1219 15.1702 23.0564C13.6192 24.5596 10.9548 23.4901 10.9548 21.3639C10.9548 19.238 13.6192 18.1686 15.1702 19.6717Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/g&gt;\\r\\n\\t\\t\\t\\t\\t&lt;defs&gt;\\r\\n\\t\\t\\t\\t\\t&lt;clipPath id=&quot;clip0_8_1287&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;rect width=&quot;45.9744&quot; height=&quot;26.3676&quot; fill=&quot;white&quot;&gt;&lt;\\/rect&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/clipPath&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/defs&gt;\\r\\n\\t\\t\\t\\t&lt;\\/svg&gt;\\t\\t\\r\\n              &lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;h4 class=&quot;features-title&quot;&gt;\\u0411\\u044b\\u0441\\u0442\\u0440\\u043e \\u0438 \\u043d\\u0430\\u0434\\u0435\\u0436\\u043d\\u043e&lt;\\/h4&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;features-desc&quot;&gt;\\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0432 \\u0434\\u0435\\u043d\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col-sm-3&quot;&gt;\\r\\n                   &lt;div class=&quot;features-icon&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;svg width=&quot;37&quot; height=&quot;37&quot; viewBox=&quot;0 0 37 37&quot; fill=&quot;none&quot; xmlns=&quot;http:\\/\\/www.w3.org\\/2000\\/svg&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M36.9653 12.4389L34.8725 4.06306C34.6158 3.034 33.6908 2.3125 32.6294 2.3125H4.37294C3.3115 2.3125 2.3865 3.034 2.1275 4.06306L0.0346875 12.4389C0.0115625 12.5291 0 12.6239 0 12.7188C0 15.9054 2.46281 18.5 5.49219 18.5C7.252 18.5 8.82219 17.6236 9.82812 16.2638C10.8341 17.6236 12.4043 18.5 14.1641 18.5C15.9239 18.5 17.4941 17.6236 18.5 16.2638C19.5059 17.6236 21.0738 18.5 22.8359 18.5C24.5981 18.5 26.1659 17.6236 27.1719 16.2638C28.1778 17.6236 29.7457 18.5 31.5078 18.5C34.5372 18.5 37 15.9054 37 12.7188C37 12.6239 36.9884 12.5291 36.9653 12.4389Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M31.5078 20.8125C29.933 20.8125 28.4368 20.3315 27.1719 19.4528C24.642 21.2126 21.0299 21.2126 18.5 19.4528C15.9701 21.2126 12.358 21.2126 9.82812 19.4528C8.56319 20.3315 7.067 20.8125 5.49219 20.8125C4.35675 20.8125 3.28606 20.5466 2.3125 20.0933V32.375C2.3125 33.6515 3.3485 34.6875 4.625 34.6875H13.875V25.4375H23.125V34.6875H32.375C33.6515 34.6875 34.6875 33.6515 34.6875 32.375V20.0933C33.7139 20.5466 32.6432 20.8125 31.5078 20.8125Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t&lt;\\/svg&gt;\\t\\r\\n              &lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;h4 class=&quot;features-title&quot;&gt;\\u041f\\u043e\\u043b\\u0443\\u0447\\u0438 \\u0442\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435&lt;\\/h4&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;features-desc&quot;&gt;\\u0432\\u044b\\u0431\\u0435\\u0440\\u0438 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u0439 \\u0434\\u043b\\u044f \\u0441\\u0435\\u0431\\u044f \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;div class=&quot;col-sm-3&quot;&gt;\\r\\n                   &lt;div class=&quot;features-icon&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;svg width=&quot;35&quot; height=&quot;35&quot; viewBox=&quot;0 0 35 35&quot; fill=&quot;none&quot; xmlns=&quot;http:\\/\\/www.w3.org\\/2000\\/svg&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;g clip-path=&quot;url(#clip0_8_1327)&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M22.722 19.0777C23.0486 18.5623 24.6898 15.9074 24.9087 14.2796C24.9354 14.0805 24.9113 13.8777 24.8389 13.6902C24.6115 13.1023 22.9217 9.68899 20.9156 8.72664C20.9139 8.72566 19.353 8.00207 19.353 8.00207L18.6721 7.42738L17.6215 8.47305L18.652 15.3624C18.6554 15.3855 18.6496 15.4091 18.6358 15.428L17.5854 16.8657C17.5685 16.8886 17.542 16.9022 17.5136 16.9022C17.4852 16.9022 17.4584 16.8886 17.4419 16.8657L16.3913 15.428C16.3776 15.4091 16.3718 15.3855 16.3753 15.3624L17.4059 8.47206L16.3563 7.42731L15.675 8.00199C15.675 8.00199 14.1228 8.71173 14.084 8.7303C12.0782 9.69264 10.3884 13.1058 10.161 13.6938C10.0885 13.8815 10.0645 14.084 10.091 14.2834C10.3099 15.9112 11.9511 18.5659 12.2778 19.0815C12.5053 19.44 12.8917 19.6362 13.2871 19.6361C13.495 19.6361 13.7053 19.581 13.896 19.4675C13.9921 19.7372 14.1289 19.9883 14.2973 20.2187L14.298 33.5521C14.2982 34.3518 14.9466 34.9999 15.7461 34.9998C16.5461 34.9998 17.1942 34.3516 17.194 33.5519L17.2095 21.7991C17.3116 21.8077 17.4135 21.8128 17.5138 21.8128C17.6106 21.8128 17.7086 21.808 17.8068 21.7998L17.8065 33.552C17.8065 34.3517 18.4546 34.9998 19.2543 34.9998C20.0539 34.9998 20.7022 34.3517 20.7022 33.5521L20.7024 20.2563C20.8814 20.0188 21.027 19.7586 21.1278 19.478C21.3122 19.582 21.5134 19.6325 21.7125 19.6325C22.1078 19.6326 22.4945 19.4363 22.722 19.0777Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M17.5139 7.3799C19.2593 7.3799 20.5622 5.75309 20.5918 3.02583C20.6107 1.13278 19.7094 0 17.5139 0C15.3181 0 14.4168 1.13278 14.4353 3.02583C14.4654 5.75309 15.7676 7.3799 17.5139 7.3799Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M32.6912 17.5635C32.5051 17.0824 31.1224 14.2895 29.4809 13.5022C29.4794 13.5013 28.2023 12.9093 28.2023 12.9093L27.645 12.4391L26.773 13.3071C26.7731 13.3075 26.7734 13.3079 26.7735 13.3084L27.5536 19.1069C27.5562 19.1238 27.552 19.1409 27.5419 19.1547L26.7752 20.2042C26.763 20.221 26.7434 20.2308 26.7229 20.2308C26.7023 20.2308 26.6826 20.221 26.6705 20.2042L25.9037 19.1547C25.8937 19.1409 25.8894 19.1238 25.892 19.1069L26.6189 13.3083C26.6192 13.3069 26.62 13.3058 26.6203 13.3045L25.7507 12.4391L25.4663 12.6791C25.6615 13.0698 25.7681 13.3196 25.7719 13.3295C25.905 13.6736 25.9493 14.0484 25.9 14.4135C25.6662 16.1533 24.1374 18.7064 23.6081 19.5481L23.4169 19.821C23.0024 20.3332 22.3825 20.6326 21.7128 20.6326C21.7096 20.6326 21.7063 20.6326 21.7029 20.6326V20.7632C22.0173 21.3408 22.3047 21.8031 22.4135 21.9751C22.5996 22.2683 22.9158 22.4289 23.2393 22.4288C23.4094 22.4288 23.5815 22.3837 23.7377 22.2909C23.8162 22.5115 23.9282 22.7171 24.0658 22.9055L24.0666 33.8155C24.0666 34.4699 24.5973 35.0002 25.2513 35.0001C25.906 35.0001 26.4362 34.4697 26.436 33.8153L26.4488 24.1988C26.5324 24.2058 26.6155 24.2099 26.6977 24.2099C26.777 24.2099 26.8572 24.2059 26.9373 24.1993L26.9371 33.8154C26.9371 34.4698 27.4673 35.0001 28.1219 35.0001C28.776 35.0001 29.3063 34.4698 29.3063 33.8155L29.3066 22.9363C29.453 22.7419 29.5722 22.529 29.6547 22.2995C29.8055 22.3847 29.9701 22.426 30.133 22.426C30.4565 22.426 30.7728 22.2653 30.9589 21.972C31.2262 21.5501 32.569 19.3779 32.7481 18.0459C32.7703 17.883 32.7506 17.717 32.6912 17.5635ZM29.7876 20.1222L29.788 16.4228C30.1932 16.9781 30.5601 17.6023 30.7612 18.0221C30.6109 18.5583 30.1975 19.3939 29.7876 20.1222Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M26.6975 12.4001C28.1257 12.4001 29.1918 11.069 29.2161 8.83737C29.2314 7.28846 28.4941 6.36157 26.6975 6.36157C24.9007 6.36157 24.1633 7.28846 24.1787 8.83737C24.2031 11.069 25.2688 12.4001 26.6975 12.4001Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M11.5808 19.822L11.4152 19.5885C10.9086 18.7864 9.3376 16.1846 9.09983 14.4169C9.05114 14.0509 9.0955 13.6767 9.22827 13.3336C9.232 13.3234 9.34156 13.0667 9.54213 12.6666L9.2727 12.4392L8.39976 13.3081C8.39976 13.3083 8.39983 13.3084 8.39983 13.3085L9.17995 19.107C9.18254 19.1239 9.17835 19.1411 9.16823 19.1549L8.40151 20.2044C8.38926 20.2211 8.36978 20.2311 8.34916 20.2311C8.32846 20.2311 8.30891 20.2211 8.29681 20.2044L7.53001 19.1549C7.51996 19.1411 7.5157 19.1239 7.51829 19.107L8.24515 13.3084C8.24538 13.3068 8.24636 13.3055 8.24675 13.3038L7.37829 12.4391L6.8208 12.9094C6.8208 12.9094 5.55053 13.4901 5.51888 13.5052C3.8776 14.2927 2.49495 17.0855 2.30884 17.5666C2.24965 17.7202 2.23002 17.8859 2.25178 18.0489C2.43089 19.3809 3.77367 21.5532 4.04111 21.9751C4.22722 22.2684 4.54336 22.4288 4.86696 22.4288C5.03709 22.4288 5.20913 22.3836 5.36518 22.2909C5.44378 22.5115 5.55555 22.7171 5.6935 22.9054L5.6941 33.8155C5.6941 34.4699 6.22481 35.0001 6.87901 35.0001C7.53358 35.0001 8.06376 34.4697 8.06368 33.8153L8.07646 24.1988C8.15985 24.2058 8.24325 24.2099 8.32542 24.2099C8.4047 24.2099 8.48467 24.2058 8.56494 24.1992L8.56471 33.8153C8.56471 34.4697 9.09496 35 9.74939 35C10.4037 35 10.9341 34.4697 10.9341 33.8154L10.9343 22.9362C11.0808 22.7418 11.1999 22.5289 11.2825 22.2994C11.4332 22.3846 11.5978 22.4259 11.7608 22.4259C12.0842 22.4259 12.4006 22.2652 12.5868 21.972C12.6955 21.8 12.9829 21.3377 13.2974 20.7601V20.6363C13.2938 20.6363 13.2905 20.6363 13.2871 20.6363C12.616 20.6364 11.9949 20.3356 11.5808 19.822ZM4.23848 18.0251C4.44354 17.5975 4.82047 16.9573 5.23461 16.3942L5.23545 20.1665C4.81781 19.4292 4.39157 18.5724 4.23848 18.0251Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;path d=&quot;M8.32525 12.4001C9.75332 12.4001 10.8194 11.069 10.8438 8.83737C10.859 7.28846 10.1217 6.36157 8.32525 6.36157C6.52845 6.36157 5.79102 7.28846 5.80639 8.83737C5.83081 11.069 6.89656 12.4001 8.32525 12.4001Z&quot; fill=&quot;#323030&quot;&gt;&lt;\\/path&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/g&gt;\\r\\n\\t\\t\\t\\t\\t&lt;defs&gt;\\r\\n\\t\\t\\t\\t\\t&lt;clipPath id=&quot;clip0_8_1327&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;rect width=&quot;35&quot; height=&quot;35&quot; fill=&quot;white&quot;&gt;&lt;\\/rect&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/clipPath&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/defs&gt;\\r\\n\\t\\t\\t\\t&lt;\\/svg&gt;\\t\\t\\r\\n              &lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;h4 class=&quot;features-title&quot;&gt;\\u041a\\u043e\\u043c\\u0430\\u043d\\u0434\\u0430 \\u041f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u043e\\u0432&lt;\\/h4&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;features-desc&quot;&gt;\\u043d\\u0430\\u0448\\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u044b \\u0434\\u0430\\u0434\\u0443\\u0442 \\u0432\\u0430\\u043c \\u0446\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u0438&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(33, 'Категории на главной странице ', 'html', '{\"name\":\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438 \\u043d\\u0430 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435 \",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;category-wrap&quot;&gt;\\r\\n\\t&lt;div class=&quot;container&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;category-row&quot;&gt;\\r\\n\\t\\t\\t&lt;a href=&quot;dlya-sobak&quot; class=&quot;category-item&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;category-image&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/dog-image.png&quot; alt=&quot;\\u0414\\u043b\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;category-name&quot;&gt;\\u0414\\u043b\\u044f \\u0441\\u043e\\u0431\\u0430\\u043a&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;a href=&quot;dlya-koshek&quot; class=&quot;category-item&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;category-image&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/cat-image.jpg&quot; alt=&quot;\\u0414\\u043b\\u044f \\u043a\\u043e\\u0448\\u0435\\u043a&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;div class=&quot;category-name&quot;&gt;\\u0414\\u043b\\u044f \\u043a\\u043e\\u0448\\u0435\\u043a&lt;\\/div&gt;\\r\\n\\t\\t\\t&lt;\\/a&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(34, 'Хиты продаж ', 'bestseller', '{\"name\":\"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436 \",\"limit\":\"8\",\"width\":\"200\",\"height\":\"200\",\"status\":\"0\"}'),
(35, 'Скидки ', 'html', '{\"name\":\"\\u0421\\u043a\\u0438\\u0434\\u043a\\u0438 \",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;stock-wrap&quot;&gt;\\r\\n\\t&lt;div class=&quot;container&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;row stock-row&quot;&gt;\\r\\n\\r\\n\\t\\t\\t&lt;div class=&quot;col-sm-6&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;stock-item&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;stock-image&quot;&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/stock-1.png&quot; width=&quot;230&quot; alt=&quot;Image&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;stock-text&quot;&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;h5 class=&quot;stock-subtitle&quot;&gt;\\u041a\\u043e\\u0440\\u043c \\u0434\\u043b\\u044f \\u043a\\u043e\\u0442\\u043e\\u0432&lt;\\/h5&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;h3 class=&quot;stock-title&quot;&gt;\\u0411\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438&lt;\\/h3&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;div class=&quot;stock-btn&quot;&gt;\\u042d\\u043a\\u043e\\u043d\\u043e\\u043c\\u044c\\u0442\\u0435 50%&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;stock-paws&quot;&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/paws.svg&quot; alt=&quot;Paws&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\r\\n\\t\\t\\t&lt;div class=&quot;col-sm-6&quot;&gt;\\r\\n\\t\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;stock-item&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;stock-image&quot;&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/stock-2.png&quot; width=&quot;170&quot; alt=&quot;Image&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;stock-text&quot;&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;h5 class=&quot;stock-subtitle&quot;&gt;\\u041a\\u043e\\u0440\\u043c \\u0434\\u043b\\u044f \\u043a\\u043e\\u0442\\u043e\\u0432&lt;\\/h5&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;h3 class=&quot;stock-title&quot;&gt;KMR Kitten milk&lt;\\/h3&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;div class=&quot;stock-btn&quot;&gt;\\u042d\\u043a\\u043e\\u043d\\u043e\\u043c\\u044c\\u0442\\u0435 50%&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t\\t&lt;div class=&quot;stock-paws&quot;&gt;\\r\\n\\t\\t\\t\\t\\t\\t&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/paws.svg&quot; alt=&quot;Paws&quot;&gt;\\r\\n\\t\\t\\t\\t\\t&lt;\\/div&gt;\\r\\n\\t\\t\\t\\t&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;\\/div&gt;\\r\\n\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(39, 'Блог', 'latest_information', '{\"name\":\"\\u0411\\u043b\\u043e\\u0433\",\"title\":{\"1\":\"\\u0411\\u043b\\u043e\\u0433\"},\"category\":\"\\u0411\\u043b\\u043e\\u0433 \",\"category_id\":\"63\",\"limit\":\"3\",\"width\":\"385\",\"height\":\"237\",\"author\":\"0\",\"date\":\"1\",\"review\":\"0\",\"rating\":\"0\",\"status\":\"1\"}'),
(41, 'Партнеры', 'html', '{\"name\":\"\\u041f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u044b\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;partners-wrap jama&quot;&gt;\\r\\n\\t&lt;div class=&quot;container&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;partners-row&quot;&gt;\\r\\n\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;partners-item&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/partner-logo-1.png&quot; alt=&quot;Partner image&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;partners-item&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/partner-logo-2.png&quot; alt=&quot;Partner image&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;partners-item&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/partner-logo-3.png&quot; alt=&quot;Partner image&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;partners-item&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/partner-logo-4.png&quot; alt=&quot;Partner image&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t\\t&lt;a href=&quot;#&quot; class=&quot;partners-item&quot;&gt;&lt;img src=&quot;catalog\\/view\\/theme\\/doopet\\/image\\/partner-logo-5.png&quot; alt=&quot;Partner image&quot;&gt;&lt;\\/a&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(42, 'Форма подписки ', 'newsletter', '{\"name\":\"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0438 \",\"module_description\":{\"1\":{\"success_message\":\"\\u0412\\u044b \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043b\\u0438\\u0441 \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443!\",\"title\":\"\\u0411\\u0443\\u0434\\u044c\\u0442\\u0435 \\u0432 \\u043a\\u0443\\u0440\\u0441\\u0435 &lt;br&gt;  \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0430\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0435\\u0439\",\"description\":\"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0448\\u0438\\u0442\\u0435\\u0441\\u044c \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443 \\u0438 \\u043f\\u0435\\u0440\\u0432\\u044b\\u043c &lt;br&gt; \\u0443\\u0437\\u043d\\u0430\\u0432\\u0430\\u0439\\u0442\\u0435 \\u043e \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430\\u0445\"}},\"type\":\"module\",\"image\":\"\",\"delay\":\"0\",\"only_once\":\"0\",\"unsubscribe\":\"0\",\"status\":\"1\"}'),
(47, 'Brainy Filter Layout / Левая колонка', 'brainyfilter', '{\"layout_id\":\"19\",\"position\":\"column_left\",\"sort_order\":\"0\",\"status\":\"1\",\"bf_layout_id\":\"new\",\"name\":\"Brainy Filter Layout \\/ \\u041b\\u0435\\u0432\\u0430\\u044f \\u043a\\u043e\\u043b\\u043e\\u043d\\u043a\\u0430\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_newsletter`
--

CREATE TABLE `oc_newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(96) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Ожидание'),
(2, 1, 'В обработке'),
(3, 1, 'Доставлено'),
(7, 1, 'Отменено'),
(5, 1, 'Сделка завершена'),
(8, 1, 'Возврат'),
(9, 1, 'Отмена и аннулирование'),
(10, 1, 'Неудавшийся'),
(11, 1, 'Возмещенный'),
(12, 1, 'Полностью измененный'),
(13, 1, 'Полный возврат'),
(16, 1, 'Аннулированный'),
(15, 1, 'Обработанный'),
(14, 1, 'Просроченный');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(65, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/purizon-adult-grain-free-fish/1.jpg', 16, 1, 20.0000, 0, 0, '2025-03-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-13 07:11:51', '2025-03-13 07:11:51'),
(62, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/hills-science-plan-mature-adult-chicken/1.jpg', 14, 1, 18.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-12 17:37:27', '2025-03-12 17:37:27'),
(63, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/hills-science-plan-sterilised-cat-young-adult-chicken/1.jpg', 14, 1, 20.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-12 17:39:31', '2025-03-12 17:39:31'),
(64, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/purina-pro-plan-cat-sterilized-adult-delicate-digestion/1.jpg', 0, 1, 18.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-12 17:41:23', '2025-03-12 17:41:53'),
(54, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/cosma-nature-pouches-6-x-50g/1.jpg', 12, 1, 7.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 2, '2025-03-12 16:40:56', '2025-03-12 16:40:56'),
(55, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/cosma-nature-pouches-mixed-trial-pack/1.jpg', 12, 1, 9.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-12 16:42:52', '2025-03-12 16:44:50'),
(56, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/cosma-nature-saver-pack-12-x-140g/1.jpg', 12, 1, 20.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-12 16:48:00', '2025-03-12 16:48:00'),
(57, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/cosma-nature-saver-pack-48-x-70g/1.jpg', 12, 1, 22.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-12 16:53:37', '2025-03-12 16:53:37'),
(58, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/greenwoods-natural-clay-clumping-cat-litter/1.jpg', 13, 1, 35.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-12 17:01:30', '2025-03-12 17:01:30'),
(59, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/hills-science-plan-adult-chicken/1.jpg', 14, 1, 21.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-12 17:30:44', '2025-03-12 17:30:44'),
(60, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/hills-science-plan-adult-light-chicken/1.jpg', 14, 1, 12.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-12 17:32:11', '2025-03-12 17:32:11'),
(61, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/hills-science-plan-adult-oral-care-chicken/1.jpg', 14, 1, 30.0000, 0, 0, '2025-03-12', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-12 17:35:43', '2025-03-12 17:35:43'),
(50, '-', 'LEDF01', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/cats-best-original-cat-litter/3.jpg', 11, 1, 10.5000, 0, 0, '2025-03-10', 1.00000000, 1, 10.00000000, 20.00000000, 20.00000000, 1, 1, 1, 1, 1, 152, '2025-03-10 18:16:48', '2025-04-14 07:47:45'),
(51, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/cosma-advent-calendar-cats/1.jpg', 12, 1, 30.8000, 0, 0, '2025-03-11', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 4, '2025-03-11 17:21:27', '2025-03-11 17:26:58'),
(52, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/cosma-nature-6-x-280g/1.jpg', 12, 1, 25.0000, 0, 0, '2025-03-11', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 1, '2025-03-11 17:32:28', '2025-03-11 17:32:28'),
(53, '-', '', '', '', '', '', '', '', 0, 7, 'catalog/products/cats/cosma-nature-kitten-heart-box-3-x-70g/1.jpg', 12, 1, 15.0000, 0, 0, '2025-03-11', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 17, '2025-03-11 17:37:03', '2025-04-13 19:52:56'),
(66, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/purizon-adult-grain-free-lamb-fish/1.jpg', 16, 1, 21.0000, 0, 0, '2025-03-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-13 07:24:42', '2025-03-13 07:24:42'),
(67, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/purizon-cold-pressed-turkey-hemp-oil/1.jpg', 16, 1, 18.0000, 0, 0, '2025-03-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-13 07:26:54', '2025-03-13 07:26:54'),
(68, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/cats/purizon-single-meat-chicken-camomile-blossoms/1.jpg', 16, 1, 20.0000, 0, 0, '2025-03-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-03-13 07:29:45', '2025-03-13 07:29:45'),
(69, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/dogs/8kg-royal-canin-mini-adult-dog-food-1kg-free/1.jpg', 17, 1, 30.0000, 0, 0, '2025-03-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 7, '2025-03-13 07:31:56', '2025-04-02 19:30:21'),
(70, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/dogs/black-angus-adult/1.jpg', 19, 1, 32.0000, 0, 0, '2025-03-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 16, '2025-03-13 07:36:11', '2025-03-13 07:36:11'),
(71, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/dogs/black-angus-junior/1.jpg', 19, 1, 30.0000, 0, 0, '2025-03-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 5, '2025-03-13 07:38:09', '2025-03-13 07:38:09'),
(72, '-', '', '', '', '', '', '', '', 1, 7, 'catalog/products/dogs/black-angus-senior/1.jpg', 19, 1, 27.0000, 0, 0, '2025-03-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 1, '2025-03-13 07:40:31', '2025-03-13 07:40:31'),
(73, '-', '', '', '', '', '', '', '', 1, 7, '', 19, 1, 10.0000, 0, 0, '2025-04-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2025-04-03 06:56:34', '2025-04-03 06:56:34');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `header`, `short_description`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(50, 1, 'Cat\'s Best Original Cat litter', '', '', '&lt;p&gt;&lt;span data-metadata=&quot;&lt;!--(figmeta)eyJmaWxlS2V5IjoidG9RcERGWW9QM082RGFzWjFraHQ5MyIsInBhc3RlSUQiOjkyNTA1MDIwLCJkYXRhVHlwZSI6InNjZW5lIn0K(/figmeta)--&gt;&quot;&gt;&lt;/span&gt;&lt;span data-buffer=&quot;&lt;!--(figma)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(/figma)--&gt;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;white-space-collapse: preserve;&quot;&gt;Наш корм для собак - это забота о вашем верном спутнике, выраженная в каждой грануле. Мы создаем уникальные рецепты, богатые натуральными ингредиентами, которые специально разработаны для удовлетворения потребностей вашей собаки в питательных веществах и вкусе. Наши продукты вдохновлены природой и разработаны с учетом здоровья и благополучия вашего пушистого друга. Каждая упаковка - это обещание качества и заботы. Подарите вашей собаке лучший опыт питания, который она заслуживает, с нашим кормом для собак.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;white-space-collapse: preserve;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;white-space-collapse: preserve;&quot;&gt;&lt;b&gt;Натуральные ингредиенты:&lt;/b&gt; Наш корм для собак содержит только натуральные ингредиенты, без искусственных красителей, ароматизаторов или консервантов. Мы гордимся тем, что предлагаем вашей собаке высококачественное питание, которое способствует ее здоровью и благополучию.&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;white-space-collapse: preserve;&quot;&gt;&lt;b&gt;Баланс питательных веществ: &lt;/b&gt;Наши рецепты разработаны с учетом оптимального баланса белков, углеводов, жиров и важных витаминов и минералов. Это помогает поддерживать здоровое тело.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', '', 'Cat\'s Best Original Cat litter', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `header`, `short_description`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(51, 1, 'Cosma Advent Calendar for Cats', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Cosma Advent Calendar for Cats', '', ''),
(52, 1, 'Cosma Nature 6 x 280g', '', '', '', '', 'Cosma Nature 6 x 280g', '', ''),
(54, 1, 'Cosma Nature Pouches 6 x 50g', '', '', '', '', 'Cosma Nature Pouches 6 x 50g', '', ''),
(55, 1, 'Cosma Nature Pouches Mixed Trial Pack', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Cosma Nature Pouches Mixed Trial Pack', '', ''),
(56, 1, 'Cosma Nature Saver Pack 12 x 140g', '', '', '', '', 'Cosma Nature Saver Pack 12 x 140g', '', ''),
(57, 1, 'Cosma Nature Saver Pack 48 x 70g', '', '', '', '', 'Cosma Nature Saver Pack 48 x 70g', '', ''),
(58, 1, 'Greenwoods Natural Clay Clumping Cat Litter', '', '', '', '', 'Greenwoods Natural Clay Clumping Cat Litter', '', ''),
(59, 1, 'Hill\'s Science Plan Adult Chicken', '', '', '', '', 'Hill\'s Science Plan Adult Chicken', '', ''),
(60, 1, 'Hill\'s Science Plan Adult Light Chicken', '', '', '', '', 'Hill\'s Science Plan Adult Light Chicken', '', ''),
(61, 1, 'Hill\'s Science Plan Adult Oral Care Chicken', '', '', '', '', 'Hill\'s Science Plan Adult Oral Care Chicken', '', ''),
(62, 1, 'Hill\'s Science Plan Mature Adult Chicken', '', '', '', '', 'Hill\'s Science Plan Mature Adult Chicken', '', ''),
(63, 1, 'Hill\'s Science Plan Sterilised Cat Young Adult Chicken', '', '', '', '', 'Hill\'s Science Plan Sterilised Cat Young Adult Chicken', '', ''),
(64, 1, 'PURINA PRO PLAN Cat Sterilized Adult Delicate Digestion', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'PURINA PRO PLAN Cat Sterilized Adult Delicate Digestion', '', ''),
(65, 1, 'Purizon Adult Grain-Free Fish', '', '', '', '', 'Purizon Adult Grain-Free Fish', '', ''),
(66, 1, 'Purizon Adult Grain-Free Lamb with Fish', '', '', '', '', 'Purizon Adult Grain-Free Lamb with Fish', '', ''),
(67, 1, 'Purizon Cold-Pressed Turkey with Hemp Oil', '', '', '', '', 'Purizon Cold-Pressed Turkey with Hemp Oil', '', ''),
(68, 1, 'Purizon Single Meat Chicken with Camomile Blossoms', '', '', '', '', 'Purizon Single Meat Chicken with Camomile Blossoms', '', ''),
(70, 1, 'Black Angus Adult', '', '', '', '', 'Black Angus Adult', '', ''),
(71, 1, 'Black Angus Junior', '', '', '', '', 'Black Angus Junior', '', ''),
(72, 1, 'Black Angus Senior', '', '', '', '', 'Black Angus Senior', '', ''),
(69, 1, '8kg Royal Canin Mini Adult Dog Food + 1kg Free!', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '8kg Royal Canin Mini Adult Dog Food + 1kg Free!', '', ''),
(73, 1, 'test', '', '', '', '', 'test', '', ''),
(53, 1, 'Cosma Nature Kitten Heart Box 3 x 70g', '', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Cosma Nature Kitten Heart Box 3 x 70g', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2393, 67, 'catalog/products/cats/purizon-cold-pressed-turkey-hemp-oil/2.jpg', 1),
(2392, 66, 'catalog/products/cats/purizon-adult-grain-free-lamb-fish/2.jpg', 0),
(2391, 65, 'catalog/products/cats/purizon-adult-grain-free-fish/2.jpg', 0),
(2386, 58, 'catalog/products/cats/greenwoods-natural-clay-clumping-cat-litter/4.jpg', 3),
(2384, 58, 'catalog/products/cats/greenwoods-natural-clay-clumping-cat-litter/2.jpg', 1),
(2383, 57, 'catalog/products/cats/cosma-nature-saver-pack-48-x-70g/3.jpg', 2),
(2382, 57, 'catalog/products/cats/cosma-nature-saver-pack-48-x-70g/2.jpg', 1),
(2381, 56, 'catalog/products/cats/cosma-nature-saver-pack-12-x-140g/2.jpg', 0),
(2380, 55, 'catalog/products/cats/cosma-nature-pouches-mixed-trial-pack/4.jpg', 3),
(2379, 55, 'catalog/products/cats/cosma-nature-pouches-mixed-trial-pack/3.jpg', 2),
(2417, 53, 'catalog/products/cats/cosma-nature-kitten-heart-box-3-x-70g/4.jpg', 3),
(2416, 53, 'catalog/products/cats/cosma-nature-kitten-heart-box-3-x-70g/3.jpg', 2),
(2415, 53, 'catalog/products/cats/cosma-nature-kitten-heart-box-3-x-70g/2.jpg', 1),
(2373, 54, 'catalog/products/cats/cosma-nature-pouches-6-x-50g/2.jpg', 1),
(2374, 54, 'catalog/products/cats/cosma-nature-pouches-6-x-50g/3.jpg', 2),
(2390, 64, 'catalog/products/cats/purina-pro-plan-cat-sterilized-adult-delicate-digestion/2.jpg', 0),
(2387, 63, 'catalog/products/cats/hills-science-plan-sterilised-cat-young-adult-chicken/2.jpg', 0),
(2385, 58, 'catalog/products/cats/greenwoods-natural-clay-clumping-cat-litter/3.jpg', 2),
(2378, 55, 'catalog/products/cats/cosma-nature-pouches-mixed-trial-pack/2.jpg', 1),
(2369, 52, 'catalog/products/cats/cosma-nature-6-x-280g/2.jpg', 0),
(2368, 51, 'catalog/products/cats/cosma-advent-calendar-cats/2.jpg', 0),
(2420, 50, 'catalog/products/cats/cats-best-original-cat-litter/4.jpg', 3),
(2419, 50, 'catalog/products/cats/cats-best-original-cat-litter/2.jpg', 2),
(2418, 50, 'catalog/products/cats/cats-best-original-cat-litter/1.jpg', 1),
(2394, 67, 'catalog/products/cats/purizon-cold-pressed-turkey-hemp-oil/3.jpg', 2),
(2395, 67, 'catalog/products/cats/purizon-cold-pressed-turkey-hemp-oil/4.jpg', 3),
(2396, 68, 'catalog/products/cats/purizon-single-meat-chicken-camomile-blossoms/2.jpg', 1),
(2397, 68, 'catalog/products/cats/purizon-single-meat-chicken-camomile-blossoms/3.jpg', 2),
(2398, 68, 'catalog/products/cats/purizon-single-meat-chicken-camomile-blossoms/4.jpg', 3),
(2408, 69, 'catalog/products/dogs/8kg-royal-canin-mini-adult-dog-food-1kg-free/2.jpg', 0),
(2400, 70, 'catalog/products/dogs/black-angus-adult/2.jpg', 1),
(2401, 70, 'catalog/products/dogs/black-angus-adult/3.jpg', 2),
(2402, 70, 'catalog/products/dogs/black-angus-adult/4.jpg', 3),
(2403, 71, 'catalog/products/dogs/black-angus-junior/2.jpg', 1),
(2404, 71, 'catalog/products/dogs/black-angus-junior/3.jpg', 2),
(2405, 72, 'catalog/products/dogs/black-angus-senior/2.jpg', 1),
(2406, 72, 'catalog/products/dogs/black-angus-senior/3.jpg', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `route` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(444, 52, 1, 0, 21.0000, '2025-03-11', '2025-04-17'),
(443, 51, 1, 0, 30.4000, '2025-03-11', '2025-04-24'),
(460, 50, 1, 0, 10.0000, '2025-03-11', '2025-04-24'),
(459, 53, 1, 0, 12.0000, '2025-03-11', '2025-04-18'),
(446, 54, 1, 0, 5.0000, '2025-03-12', '2025-04-29'),
(449, 55, 1, 0, 7.0000, '2025-03-12', '2025-04-25'),
(450, 56, 1, 0, 18.0000, '2025-03-12', '2025-04-16'),
(451, 58, 1, 0, 33.0000, '2025-03-14', '2025-04-22'),
(454, 64, 1, 0, 16.0000, '2025-03-13', '2025-04-30'),
(455, 70, 1, 0, 30.0000, '2025-03-13', '2025-04-30'),
(456, 71, 1, 0, 28.0000, '2025-03-20', '2025-04-10');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`, `main_category`) VALUES
(60, 59, 0),
(51, 61, 0),
(59, 61, 0),
(50, 61, 0),
(59, 59, 0),
(62, 61, 0),
(62, 59, 0),
(65, 61, 0),
(58, 61, 0),
(61, 61, 0),
(65, 59, 0),
(58, 59, 0),
(63, 61, 0),
(57, 61, 0),
(50, 59, 0),
(60, 61, 0),
(57, 59, 0),
(61, 59, 0),
(54, 59, 0),
(56, 61, 0),
(53, 61, 0),
(56, 59, 0),
(53, 59, 0),
(52, 61, 0),
(55, 61, 0),
(52, 59, 0),
(55, 59, 0),
(54, 61, 0),
(63, 59, 0),
(51, 59, 0),
(66, 59, 0),
(66, 61, 0),
(67, 59, 0),
(67, 61, 0),
(68, 59, 0),
(68, 61, 0),
(69, 60, 0),
(69, 62, 0),
(70, 60, 0),
(70, 62, 0),
(71, 60, 0),
(71, 62, 0),
(72, 60, 0),
(72, 62, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Возвращены средства'),
(2, 1, 'Выдан в кредит'),
(3, 1, 'Отправлен другой товар для замены');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Получен/доставлен неисправным (сломан)'),
(2, 1, 'Получен не тот (ошибочный) товар'),
(3, 1, 'Ошибочный заказ'),
(4, 1, 'Ошибка, пожалуйста укажите/приложите подробности'),
(5, 1, 'Другое (другая причина), пожалуйста укажите/приложите подробности');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Рассматриваемый'),
(3, 1, 'Готов (к отправке)'),
(2, 1, 'Заказ в ожидании');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `information_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `reply` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(913, 0, 1, 'manufacturer_id=19', 'black'),
(917, 0, 1, 'product_id=51', 'cosma-advent-calendar-for-cats'),
(772, 0, 1, 'information_id=4', 'about_us'),
(982, 0, 1, 'product_id=53', 'cosma-nature-kitten-heart-box-3-x-70g'),
(926, 0, 1, 'product_id=58', 'greenwoods-natural-clay-clumping-cat-litter'),
(927, 0, 1, 'product_id=59', 'hill-s-science-plan-adult-chicken'),
(928, 0, 1, 'product_id=60', 'hill-s-science-plan-adult-light-chicken'),
(929, 0, 1, 'product_id=61', 'hill-s-science-plan-adult-oral-care-chicken'),
(930, 0, 1, 'product_id=62', 'hill-s-science-plan-mature-adult-chicken'),
(925, 0, 1, 'product_id=57', 'cosma-nature-saver-pack-48-x-70g'),
(920, 0, 1, 'product_id=54', 'cosma-nature-pouches-6-x-50g'),
(923, 0, 1, 'product_id=55', 'cosma-nature-pouches-mixed-trial-pack'),
(924, 0, 1, 'product_id=56', 'cosma-nature-saver-pack-12-x-140g'),
(936, 0, 1, 'product_id=66', 'purizon-adult-grain-free-lamb-with-fish'),
(935, 0, 1, 'product_id=65', 'Purizon Adult Grain-FreeFish'),
(934, 0, 1, 'product_id=64', 'purina-pro-plan-cat-sterilized-adult-delicate-digestion'),
(931, 0, 1, 'product_id=63', 'hill-s-science-plan-sterilised-cat-young-adult-chicken'),
(937, 0, 1, 'product_id=67', 'purizon-cold-pressed-turkey-with-hemp-oil'),
(918, 0, 1, 'product_id=52', 'cosma-nature-6-x-280g'),
(912, 0, 1, 'manufacturer_id=18', 'sanabelle'),
(911, 0, 1, 'manufacturer_id=17', 'royal'),
(910, 0, 1, 'manufacturer_id=16', 'purizon-adult-grain-free-fish'),
(909, 0, 1, 'manufacturer_id=15', 'purina-pro-plan'),
(908, 0, 1, 'manufacturer_id=14', 'hill-s-science'),
(901, 0, 1, 'category_id=61', 'korm-dlya-koshek'),
(902, 0, 1, 'category_id=62', 'korm-dlya-sobak'),
(904, 0, 1, 'manufacturer_id=11', 'cat-s-best'),
(906, 0, 1, 'manufacturer_id=12', 'cosma'),
(983, 0, 1, 'product_id=50', 'cat-s-best-original-cat-litter'),
(896, 0, 1, 'category_id=60', 'dlya-sobak'),
(907, 0, 1, 'manufacturer_id=13', 'greenwoods'),
(895, 0, 1, 'category_id=59', 'dlya-koshek'),
(952, 0, 1, 'information_id=6', 'delivery'),
(894, 0, 1, 'information_id=3', 'privacy'),
(893, 0, 1, 'information_id=5', 'terms'),
(845, 0, 1, 'common/home', ''),
(846, 0, 1, 'information/contact', 'contact'),
(847, 0, 1, 'information/sitemap', 'sitemap'),
(848, 0, 1, 'product/special', 'specials'),
(849, 0, 1, 'product/manufacturer', 'brands'),
(850, 0, 1, 'product/compare', 'compare-products'),
(851, 0, 1, 'product/search', 'search'),
(852, 0, 1, 'checkout/cart', 'cart'),
(853, 0, 1, 'checkout/checkout', 'checkout'),
(854, 0, 1, 'account/login', 'login'),
(855, 0, 1, 'account/logout', 'logout'),
(856, 0, 1, 'account/voucher', 'vouchers'),
(857, 0, 1, 'account/wishlist', 'wishlist'),
(858, 0, 1, 'account/account', 'my-account'),
(859, 0, 1, 'account/order', 'order-history'),
(860, 0, 1, 'account/newsletter', 'newsletter'),
(861, 0, 1, 'account/return/add', 'return-add'),
(862, 0, 1, 'account/forgotten', 'forgot-password'),
(863, 0, 1, 'account/download', 'downloads'),
(864, 0, 1, 'account/return', 'returns'),
(865, 0, 1, 'account/transaction', 'transactions'),
(866, 0, 1, 'account/register', 'create-account'),
(867, 0, 1, 'account/recurring', 'recurring'),
(868, 0, 1, 'account/address', 'address-book'),
(869, 0, 1, 'account/reward', 'reward-points'),
(870, 0, 1, 'account/edit', 'edit-account'),
(871, 0, 1, 'account/password', 'change-password'),
(880, 0, 1, 'affiliate/forgotten', 'affiliate-forgot-password'),
(881, 0, 1, 'affiliate/register', 'create-affiliate-account'),
(882, 0, 1, 'affiliate/login', 'affiliate-login'),
(883, 0, 1, 'affiliate/payment', 'affiliate-payment'),
(884, 0, 1, 'affiliate/tracking', 'affiliate-tracking'),
(885, 0, 1, 'affiliate/transaction', 'affiliate-transaction'),
(886, 0, 1, 'affiliate/account', 'affiliates'),
(887, 0, 1, 'information_id=7', 'stock'),
(972, 0, 1, 'information_id=10', 'kak-vygulivat-sobak'),
(938, 0, 1, 'product_id=68', 'purizon-single-meat-chicken-with-camomile-blossoms'),
(944, 0, 1, 'product_id=69', '8kg-royal-canin-mini-adult-dog-food-1kg-free'),
(940, 0, 1, 'product_id=70', 'black-angus-adult'),
(941, 0, 1, 'product_id=71', 'black-angus-junior'),
(942, 0, 1, 'product_id=72', 'black-angus-senior'),
(945, 0, 1, 'product_id=73', 'test'),
(946, 0, 1, 'information/search', 'search-information'),
(973, 0, 1, 'category_id=63', 'blog-category'),
(971, 0, 1, 'information_id=11', 'hvostatye-druzya'),
(967, 0, 1, 'information_id=12', 'uhod-za-koshkami-i-sobakami'),
(974, 0, 1, 'category_id=64', 'konservy-dlya-sobak'),
(975, 0, 1, 'category_id=65', 'konservy-dlya-kotov'),
(976, 0, 1, 'category_id=66', 'lakomstva-dlya-sobak'),
(978, 0, 1, 'category_id=67', 'napolniteli-tualetov'),
(979, 0, 1, 'category_id=68', 'kontejnery-dlya-perevozki');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('e78f8e8afcb58c2141efe47302', '{\"user_id\":\"1\",\"user_token\":\"WQhHrkaRUd7AD6lDrSEoMrl5z7UVJgc9\"}', '2025-04-14 12:20:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(2167, 0, 'config', 'config_error_display', '0', 0),
(2168, 0, 'config', 'config_error_log', '1', 0),
(2200, 0, 'brainyfilter', 'brainyfilter_layout_43', '{\"behaviour\":{\"attribute_groups\":1,\"product_count\":1,\"hide_empty\":0,\"limit_height\":{\"enabled\":0,\"height\":144},\"limit_items\":{\"enabled\":0,\"number_to_show\":4,\"number_to_hide\":2},\"sections\":{\"search\":{\"enabled\":0,\"collapsed\":0},\"price\":{\"enabled\":1,\"collapsed\":0,\"control\":\"slider\"},\"category\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"stock_status\":{\"enabled\":1,\"collapsed\":0},\"manufacturer\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"attribute\":{\"enabled\":1,\"collapsed\":0},\"option\":{\"enabled\":0,\"collapsed\":0},\"filter\":{\"enabled\":0,\"collapsed\":0},\"rating\":{\"enabled\":0,\"collapsed\":0}},\"sort_order\":{\"enabled\":0,\"search\":0,\"price\":1,\"category\":2,\"stock_status\":3,\"manufacturer\":4,\"attribute\":5,\"option\":6,\"filter\":7,\"rating\":8}},\"submission\":{\"submit_type\":\"button\",\"submit_button_type\":\"float\",\"submit_delay_time\":1000,\"hide_panel\":1},\"global\":{\"instock_status_id\":7,\"subcategories_fix\":0,\"multiple_attributes\":0,\"attribute_separator\":\",\",\"cron_secret_key\":\"\",\"hide_out_of_stock\":0,\"postponed_count\":1},\"style\":{\"block_header_background\":{\"val\":\"#f7f7f7\"},\"block_header_text\":{\"val\":\"#000000\"},\"product_quantity_background\":{\"val\":\"#F46234\"},\"product_quantity_text\":{\"val\":\"#ffffff\"},\"price_slider_background\":{\"val\":\"#eeeeee\"},\"price_slider_area_background\":{\"val\":\"#f6a828\"},\"price_slider_border\":{\"val\":\"#dddddd\"},\"price_slider_handle_background\":{\"val\":\"#f6f6f6\"},\"price_slider_handle_border\":{\"val\":\"#cccccc\"},\"group_block_header_background\":{\"val\":\"#CECBCB\"},\"group_block_header_text\":{\"val\":\"#000000\"},\"resp_show_btn_color\":{\"val\":\"#19A3DF\"},\"resp_reset_btn_color\":{\"val\":\"#F53838\"},\"responsive\":{\"enabled\":0,\"collapsed\":1,\"max_screen_width\":768,\"max_width\":300,\"position\":\"left\",\"offset\":80}},\"attributes_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"options_default\":{\"enable_all\":1,\"control\":\"checkbox\",\"mode\":\"label\"},\"filters_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"attributes\":[],\"options\":[],\"filters\":[],\"current_adm_tab\":\"embedding\",\"module_id\":\"new\",\"layout_position\":\"column_left\",\"layout_sort_order\":\"0\",\"layout_enabled\":\"1\",\"layout_id\":\"15\"}', 1),
(2169, 0, 'config', 'config_error_filename', 'error.log', 0),
(2075, 0, 'config', 'config_meta_keyword', '', 0),
(2076, 0, 'config', 'config_theme', 'default', 0),
(2077, 0, 'config', 'config_layout_id', '4', 0),
(2078, 0, 'config', 'config_name', 'Интернет магазин Doopet', 0),
(2079, 0, 'config', 'config_owner', 'Иванов Иван', 0),
(2080, 0, 'config', 'config_address', 'Madonas novads, LV-4877, Латвия', 0),
(2081, 0, 'config', 'config_geocode', '', 0),
(2082, 0, 'config', 'config_email', 'jamshidbekmirzakarimov6@gmail.com', 0),
(2083, 0, 'config', 'config_telephone', '+371 28840340', 0),
(2084, 0, 'config', 'config_fax', '', 0),
(2085, 0, 'config', 'config_image', '', 0),
(2086, 0, 'config', 'config_open', '', 0),
(2087, 0, 'config', 'config_comment', '', 0),
(2088, 0, 'config', 'config_blog_link', '', 0),
(2089, 0, 'config', 'config_youtube_link', '', 0),
(2090, 0, 'config', 'config_facebook_link', 'https://www.facebook.com/share/1BeSjGZ3W8/', 0),
(2091, 0, 'config', 'config_twitter_link', '', 0),
(2092, 0, 'config', 'config_pinterest_link', '', 0),
(2093, 0, 'config', 'config_googlep_link', '', 0),
(2094, 0, 'config', 'config_linkedin_link', '', 0),
(2095, 0, 'config', 'config_instagram_link', 'https://www.instagram.com/jamshidbek_codes/', 0),
(2096, 0, 'config', 'config_whatsapp_link', '', 0),
(2097, 0, 'config', 'config_telegram_link', 'https://t.me/jamshidbek_codes', 0),
(2098, 0, 'config', 'config_country_id', '227', 0),
(2099, 0, 'config', 'config_zone_id', '0', 0),
(2100, 0, 'config', 'config_timezone', 'UTC', 0),
(2101, 0, 'config', 'config_language', 'ru-ru', 0),
(2102, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(2103, 0, 'config', 'config_currency', 'EUR', 0),
(2104, 0, 'config', 'config_currency_auto', '1', 0),
(2105, 0, 'config', 'config_length_class_id', '1', 0),
(2106, 0, 'config', 'config_weight_class_id', '1', 0),
(2107, 0, 'config', 'config_product_count', '0', 0),
(2108, 0, 'config', 'config_limit_admin', '20', 0),
(2109, 0, 'config', 'config_review_status', '1', 0),
(2110, 0, 'config', 'config_review_guest', '1', 0),
(2111, 0, 'config', 'config_voucher_min', '1', 0),
(2112, 0, 'config', 'config_voucher_max', '1000', 0),
(2113, 0, 'config', 'config_tax', '0', 0),
(2114, 0, 'config', 'config_tax_default', 'shipping', 0),
(2115, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2116, 0, 'config', 'config_customer_online', '1', 0),
(2117, 0, 'config', 'config_customer_activity', '1', 0),
(2252, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(2250, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(2159, 0, 'config', 'config_compression', '0', 0),
(2160, 0, 'config', 'config_secure', '0', 0),
(2161, 0, 'config', 'config_password', '1', 0),
(2162, 0, 'config', 'config_shared', '0', 0),
(2163, 0, 'config', 'config_encryption', '9c6JmvJenOvBIOGxnlQ0xKg9RuyOmTQmEdIpcax5Z6DnqugbVUsHE00i0JZKxjlynq1FxGha44m6FTWQoUCK21MsK9fEvGfYPHsgv7SuFKYG5DVTDRVJtelJyNcpesE0CVVbWP3s133InVT831WCIXvpxvdP8bjm6prk4EXkoBY71s7UMs6kyVfuP7F6GTmjj03OlLDYxyFFBhE7HedVuXUI9TXqS0HUPcVw51oxiON8CI4E9mEcW1vpuTCFmqqeeRUjbrRvzMsg79ADFI1aQTniNRjRTXwnSW8ZiftzEbfStaaRIXLSOEJRad1eda8XMDnGNmNAG3qIeRMTGl5K3HsrvTrOlMAiWjhg3qaNCB7lgo26xMlfQ8YYMpPJb6JpzVdxNpLULJfSVo6j8eXd3bg4SLYEt30Mr8qavNMsJTolImpBsP0xBohmbgbzzwuaFYhnObAS4dJzHoi8AMTO7CCVVUGgmZl4DM1gvNrusC1B7c3QV1E9x1spac7rBX0NuT0Uh4n1AEtSvqT5I2sqiFItLAbCN03N2XbTmrB7cMQaKOaDHB61E7j4nzqLWcqrgHEioAsMf9Ozhtjy5ADtH1AlwTaE0la9ZIPf7mmoBFIu8MVkbvc5pLyQK6womMN7UMv5fXmsCdPdGxmEAFsEchqQpgAs1NottUWCwX1WZzwAHSX1g0Phgawuc98krt8QZrqkejRx3SzMPoOCOuqZOlFMRvd2Pd5jul5HQ8ULHqUWGzd5yIrBrofGDTqGEFzPT0ixtbdVBTcPaCw5kCT8LDYIwEGnB96gDJJNT74IBram7z9yeFmRRP4QMbDf5dK6qa6G118BuFBVWZVXeOM4JUwxUdzvl1y380V79l8A6Kpg0sY08zIFUhpO4jy8y0O6dML7YmViHKRzAeyBjkm6LFl3ancqEH8pIqiy2952vAgrAf5SdAnGzAse92aKgPGEI5hseLx6cvLjqIJksdTUl4sOuctJgBMFomhEgkbjDS3MoroyY35DPVMMhJSlQ2BW', 0),
(2164, 0, 'config', 'config_file_max_size', '300000', 0),
(2165, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nwebp\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(2166, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\nimage/webp\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(94, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', 0),
(96, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(97, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(98, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(99, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(100, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(101, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(102, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(105, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(106, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(107, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(108, 0, 'total_sub_total', 'total_sub_total_sort_order', '1', 0),
(109, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(110, 0, 'total_tax', 'total_tax_status', '0', 0),
(111, 0, 'total_total', 'total_total_sort_order', '9', 0),
(112, 0, 'total_total', 'total_total_status', '1', 0),
(113, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(114, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(115, 0, 'total_credit', 'total_credit_status', '1', 0),
(116, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(117, 0, 'total_reward', 'total_reward_status', '1', 0),
(118, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(120, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(121, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(122, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(123, 0, 'total_voucher', 'total_voucher_status', '1', 0),
(124, 0, 'module_category', 'module_category_status', '1', 0),
(125, 0, 'module_account', 'module_account_status', '1', 0),
(2251, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2248, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(2249, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(2246, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(2247, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(2245, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(2244, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(2242, 0, 'theme_default', 'theme_default_image_additional_height', '110', 0),
(2243, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(2241, 0, 'theme_default', 'theme_default_image_additional_width', '110', 0),
(2240, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(2239, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(2238, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(2235, 0, 'theme_default', 'theme_default_image_thumb_width', '480', 0),
(2236, 0, 'theme_default', 'theme_default_image_thumb_height', '480', 0),
(2237, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(2234, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(2232, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(2233, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(151, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(153, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(155, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(157, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(158, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(159, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(160, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(161, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(162, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(164, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(165, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(166, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(167, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(168, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(169, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(171, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(172, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(173, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(175, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(177, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(179, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(181, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(183, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(185, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(187, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(188, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(189, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(190, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(191, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(193, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(195, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(197, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(198, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(199, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(200, 0, 'developer', 'developer_theme', '1', 0),
(201, 0, 'developer', 'developer_sass', '1', 0),
(2158, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2157, 0, 'config', 'config_seo_url', '1', 0),
(2156, 0, 'config', 'config_maintenance', '1', 0),
(2155, 0, 'config', 'config_mail_alert_email', '', 0),
(2154, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(2153, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(2152, 0, 'config', 'config_mail_smtp_port', '25', 0),
(2151, 0, 'config', 'config_mail_smtp_password', '', 0),
(2150, 0, 'config', 'config_mail_smtp_username', '', 0),
(2149, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(2148, 0, 'config', 'config_mail_parameter', '', 0),
(2131, 0, 'config', 'config_fraud_status_id', '16', 0),
(2132, 0, 'config', 'config_api_id', '1', 0),
(2133, 0, 'config', 'config_stock_display', '1', 0),
(2134, 0, 'config', 'config_stock_warning', '1', 0),
(2135, 0, 'config', 'config_stock_checkout', '0', 0),
(2136, 0, 'config', 'config_affiliate_group_id', '1', 0),
(2137, 0, 'config', 'config_affiliate_approval', '0', 0),
(2138, 0, 'config', 'config_affiliate_auto', '0', 0),
(2139, 0, 'config', 'config_affiliate_commission', '5', 0),
(2140, 0, 'config', 'config_affiliate_id', '4', 0),
(2141, 0, 'config', 'config_return_id', '0', 0),
(2142, 0, 'config', 'config_return_status_id', '2', 0),
(2143, 0, 'config', 'config_captcha', '', 0),
(2144, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(2145, 0, 'config', 'config_logo', 'catalog/common/logo.png', 0),
(2146, 0, 'config', 'config_icon', 'catalog/common/v987-11a-ai1.png', 0),
(2147, 0, 'config', 'config_mail_engine', 'mail', 0),
(2231, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(2230, 0, 'theme_default', 'theme_default_status', '1', 0),
(596, 0, 'module_live_search', 'module_live_search_min_length', '1', 0),
(595, 0, 'module_live_search', 'module_live_search_description_length', '100', 0),
(594, 0, 'module_live_search', 'module_live_search_title_length', '100', 0),
(593, 0, 'module_live_search', 'module_live_search_image_height', '50', 0),
(592, 0, 'module_live_search', 'module_live_search_image_width', '50', 0),
(591, 0, 'module_live_search', 'module_live_search_limit', '5', 0),
(590, 0, 'module_live_search', 'module_live_search_view_all_results', '{\"1\":{\"name\":\"  \\u0421\\u043c\\u043e\\u0442\\u0440\\u0438\\u0442\\u0435 \\u0432\\u0441\\u0435 \\u0440\\u0435\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b  \"}}', 1),
(587, 0, 'module_live_search', 'module_live_search_show_price', '1', 0),
(589, 0, 'module_live_search', 'module_live_search_show_add_button', '1', 0),
(588, 0, 'module_live_search', 'module_live_search_show_description', '0', 0),
(586, 0, 'module_live_search', 'module_live_search_show_image', '1', 0),
(633, 0, 'module_xdstickers', 'module_xdstickers_status', '1', 0),
(631, 0, 'xdstickers', 'xdstickers_apply', '', 0),
(632, 0, 'xdstickers', 'xdstickers', '{\"position\":\"0\",\"inline_styles\":\".xdstickers_wrapper {position:absolute; z-index:999; color:#fff; text-transform:uppercase; font-weight:bold; line-height:1.75;}\\r\\n.xdstickers_wrapper.position_upleft {top:5px; left:15px; right:auto;}\\r\\n.xdstickers_wrapper.position_upright {top:5px; right:15px; left:auto;}\\r\\n.xdstickers {padding:0 10px; margin-bottom:5px;}\",\"sale\":{\"text\":{\"1\":\"\\u0420\\u0410\\u0421\\u041f\\u0420\\u041e\\u0414\\u0410\\u0416\\u0410\"},\"color\":\"#ffffff\",\"bg\":\"#7684E7\",\"discount_status\":\"0\",\"status\":\"1\"},\"bestseller\":{\"text\":{\"1\":\"\\u0425\\u0418\\u0422 \\u041f\\u0420\\u041e\\u0414\\u0410\\u0416\"},\"color\":\"#fff\",\"bg\":\"#4CE26D\",\"property\":\"\",\"status\":\"1\"},\"novelty\":{\"text\":{\"1\":\"\\u041d\\u041e\\u0412\\u0418\\u041d\\u041a\\u0410\"},\"color\":\"\",\"bg\":\"#00b7ff\",\"property\":\"15\",\"status\":\"1\"},\"last\":{\"text\":{\"1\":\"\\u041f\\u041e\\u0421\\u041b\\u0415\\u0414\\u041d\\u0418\\u0419\"},\"color\":\"\",\"bg\":\"\",\"property\":\"\",\"status\":\"1\"},\"freeshipping\":{\"text\":{\"1\":\"\\u0411\\u0415\\u0421\\u041f\\u041b\\u0410\\u0422\\u041d\\u0410\\u042f \\u0414\\u041e\\u0421\\u0422\\u0410\\u0412\\u041a\\u0410\"},\"color\":\"\",\"bg\":\"#4CE26D\",\"property\":\"\",\"status\":\"1\"},\"stock\":{\"7\":{\"color\":\"\",\"bg\":\"\",\"status\":\"1\"},\"5\":{\"color\":\"\",\"bg\":\"\",\"status\":\"1\"},\"6\":{\"color\":\"\",\"bg\":\"\",\"status\":\"1\"},\"8\":{\"color\":\"\",\"bg\":\"\",\"status\":\"1\"}}}', 1),
(597, 0, 'module_live_search', 'module_live_search_status', '1', 0),
(2130, 0, 'config', 'config_complete_status', '[\"3\",\"5\"]', 1),
(2129, 0, 'config', 'config_processing_status', '[\"2\",\"3\",\"1\",\"12\",\"5\"]', 1),
(2128, 0, 'config', 'config_order_status_id', '1', 0),
(1500, 0, 'module_optimblog', 'module_optimblog_version', '3.1.0.1', 0),
(1499, 0, 'module_optimblog', 'module_optimblog_image_category_additional_height', '74', 0),
(1498, 0, 'module_optimblog', 'module_optimblog_image_category_additional_width', '74', 0),
(1497, 0, 'module_optimblog', 'module_optimblog_image_category_popup_height', '500', 0),
(1496, 0, 'module_optimblog', 'module_optimblog_image_category_popup_width', '500', 0),
(1495, 0, 'module_optimblog', 'module_optimblog_image_related_height', '200', 0),
(1493, 0, 'module_optimblog', 'module_optimblog_image_additional_height', '240', 0),
(1494, 0, 'module_optimblog', 'module_optimblog_image_related_width', '200', 0),
(1492, 0, 'module_optimblog', 'module_optimblog_image_additional_width', '840', 0),
(1491, 0, 'module_optimblog', 'module_optimblog_image_information_height', '227', 0),
(1488, 0, 'module_optimblog', 'module_optimblog_image_popup_width', '1680', 0),
(1489, 0, 'module_optimblog', 'module_optimblog_image_popup_height', '480', 0),
(1490, 0, 'module_optimblog', 'module_optimblog_image_information_width', '370', 0),
(1486, 0, 'module_optimblog', 'module_optimblog_image_thumb_width', '385', 0),
(1487, 0, 'module_optimblog', 'module_optimblog_image_thumb_height', '236', 0),
(1485, 0, 'module_optimblog', 'module_optimblog_image_category_height', '80', 0),
(1484, 0, 'module_optimblog', 'module_optimblog_image_category_width', '80', 0),
(1483, 0, 'module_optimblog', 'module_optimblog_category_limit_show', '0', 0),
(1482, 0, 'module_optimblog', 'module_optimblog_information_limit', '15', 0),
(1481, 0, 'module_optimblog', 'module_optimblog_category_sort_show', '0', 0),
(1480, 0, 'module_optimblog', 'module_optimblog_category_sort', 'i.sort_order-ASC', 0),
(1479, 0, 'module_optimblog', 'module_optimblog_category_view_show', '1', 0),
(1478, 0, 'module_optimblog', 'module_optimblog_category_view', 'grid', 0),
(1477, 0, 'module_optimblog', 'module_optimblog_exclusion_categories_review', '', 0),
(1476, 0, 'module_optimblog', 'module_optimblog_category_review', '0', 0),
(1475, 0, 'module_optimblog', 'module_optimblog_exclusion_categories_date', '', 0),
(1474, 0, 'module_optimblog', 'module_optimblog_category_date', '0', 0),
(1473, 0, 'module_optimblog', 'module_optimblog_exclusion_categories_author', '', 0),
(1472, 0, 'module_optimblog', 'module_optimblog_category_author', '0', 0),
(1469, 0, 'module_optimblog', 'module_optimblog_information_show', '1', 0),
(1470, 0, 'module_optimblog', 'module_optimblog_information_description_length', '100', 0),
(1471, 0, 'module_optimblog', 'module_optimblog_information_count', '0', 0),
(1468, 0, 'module_optimblog', 'module_optimblog_information_script', '{\"header\":[\"catalog\\/view\\/javascript\\/jquery\\/magnific\\/jquery.magnific-popup.min.js\",\"catalog\\/view\\/javascript\\/jquery\\/swiper\\/js\\/swiper.jquery.js\"]}', 1),
(1467, 0, 'module_optimblog', 'module_optimblog_information_style', '[\"catalog\\/view\\/javascript\\/jquery\\/magnific\\/magnific-popup.css\",\"catalog\\/view\\/javascript\\/jquery\\/swiper\\/css\\/swiper.min.css\",\"catalog\\/view\\/javascript\\/jquery\\/swiper\\/css\\/opencart.css\"]', 1),
(1466, 0, 'module_optimblog', 'module_optimblog_information_thumb', '1', 0),
(1465, 0, 'module_optimblog', 'module_optimblog_share', '', 0),
(1464, 0, 'module_optimblog', 'module_optimblog_exclusion_informations_review', '', 0),
(1463, 0, 'module_optimblog', 'module_optimblog_exclusion_categories_review_information', '', 0),
(1462, 0, 'module_optimblog', 'module_optimblog_information_review', '0', 0),
(1456, 0, 'module_optimblog', 'module_optimblog_information_manufacturer', '0', 0),
(1457, 0, 'module_optimblog', 'module_optimblog_exclusion_categories_manufacturer_information', '', 0),
(1461, 0, 'module_optimblog', 'module_optimblog_captcha', '', 0),
(1460, 0, 'module_optimblog', 'module_optimblog_review_guest', '0', 0),
(1459, 0, 'module_optimblog', 'module_optimblog_review_status', '0', 0),
(1458, 0, 'module_optimblog', 'module_optimblog_exclusion_informations_manufacturer', '', 0),
(1454, 0, 'module_optimblog', 'module_optimblog_exclusion_categories_date_information', '', 0),
(1455, 0, 'module_optimblog', 'module_optimblog_exclusion_informations_date', '', 0),
(1453, 0, 'module_optimblog', 'module_optimblog_information_date', '1', 0),
(1448, 0, 'module_optimblog', 'module_optimblog_breadcrumbs_information', '1', 0),
(1449, 0, 'module_optimblog', 'module_optimblog_exclusion_informations', '', 0),
(1450, 0, 'module_optimblog', 'module_optimblog_information_author', '0', 0),
(1451, 0, 'module_optimblog', 'module_optimblog_exclusion_categories_author_information', '', 0),
(1452, 0, 'module_optimblog', 'module_optimblog_exclusion_informations_author', '', 0),
(1446, 0, 'module_optimblog', 'module_optimblog_breadcrumbs_category_information', '1', 0),
(1447, 0, 'module_optimblog', 'module_optimblog_breadcrumbs_product', '1', 0),
(1445, 0, 'module_optimblog', 'module_optimblog_breadcrumbs_category_product', '1', 0),
(1444, 0, 'module_optimblog', 'module_optimblog_canonical_information', '1', 0),
(1443, 0, 'module_optimblog', 'module_optimblog_canonical_category_information', '1', 0),
(1442, 0, 'module_optimblog', 'module_optimblog_canonical_category_product', '1', 0),
(1441, 0, 'module_optimblog', 'module_optimblog_status', '1', 0),
(2126, 0, 'config', 'config_checkout_guest', '1', 0),
(2127, 0, 'config', 'config_checkout_id', '5', 0),
(2121, 0, 'config', 'config_customer_price', '0', 0),
(2122, 0, 'config', 'config_login_attempts', '15', 0),
(2123, 0, 'config', 'config_account_id', '3', 0),
(2124, 0, 'config', 'config_invoice_prefix', 'INV-2025-00', 0),
(2125, 0, 'config', 'config_cart_weight', '1', 0),
(2120, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(2119, 0, 'config', 'config_customer_group_id', '1', 0),
(2118, 0, 'config', 'config_customer_search', '1', 0),
(2074, 0, 'config', 'config_meta_description', 'Мы - лидеры в области предоставления высококачестевного корма для ваших домашних любимцев. Наша миссия - обеспечить заботу и благополучие вашим животным через лучшие продукты на рынке.', 0),
(2073, 0, 'config', 'config_meta_title', 'Интернет магазин Doopet', 0),
(2203, 0, 'brainyfilter', 'brainyfilter_layout_45', '{\"behaviour\":{\"attribute_groups\":1,\"product_count\":1,\"hide_empty\":0,\"limit_height\":{\"enabled\":0,\"height\":144},\"limit_items\":{\"enabled\":0,\"number_to_show\":4,\"number_to_hide\":2},\"sections\":{\"search\":{\"enabled\":0,\"collapsed\":0},\"price\":{\"enabled\":1,\"collapsed\":0,\"control\":\"slider\"},\"category\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"stock_status\":{\"enabled\":1,\"collapsed\":0},\"manufacturer\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"attribute\":{\"enabled\":1,\"collapsed\":0},\"option\":{\"enabled\":0,\"collapsed\":0},\"filter\":{\"enabled\":0,\"collapsed\":0},\"rating\":{\"enabled\":0,\"collapsed\":0}},\"sort_order\":{\"enabled\":0,\"search\":0,\"price\":1,\"category\":2,\"stock_status\":3,\"manufacturer\":4,\"attribute\":5,\"option\":6,\"filter\":7,\"rating\":8}},\"submission\":{\"submit_type\":\"button\",\"submit_button_type\":\"float\",\"submit_delay_time\":1000,\"hide_panel\":1},\"global\":{\"instock_status_id\":7,\"subcategories_fix\":0,\"multiple_attributes\":0,\"attribute_separator\":\",\",\"cron_secret_key\":\"\",\"hide_out_of_stock\":0,\"postponed_count\":1},\"style\":{\"block_header_background\":{\"val\":\"#f7f7f7\"},\"block_header_text\":{\"val\":\"#000000\"},\"product_quantity_background\":{\"val\":\"#F46234\"},\"product_quantity_text\":{\"val\":\"#ffffff\"},\"price_slider_background\":{\"val\":\"#eeeeee\"},\"price_slider_area_background\":{\"val\":\"#f6a828\"},\"price_slider_border\":{\"val\":\"#dddddd\"},\"price_slider_handle_background\":{\"val\":\"#f6f6f6\"},\"price_slider_handle_border\":{\"val\":\"#cccccc\"},\"group_block_header_background\":{\"val\":\"#CECBCB\"},\"group_block_header_text\":{\"val\":\"#000000\"},\"resp_show_btn_color\":{\"val\":\"#19A3DF\"},\"resp_reset_btn_color\":{\"val\":\"#F53838\"},\"responsive\":{\"enabled\":0,\"collapsed\":1,\"max_screen_width\":768,\"max_width\":300,\"position\":\"left\",\"offset\":80}},\"attributes_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"options_default\":{\"enable_all\":1,\"control\":\"checkbox\",\"mode\":\"label\"},\"filters_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"attributes\":[],\"options\":[],\"filters\":[],\"current_adm_tab\":\"embedding\",\"module_id\":\"new\",\"layout_position\":\"column_left\",\"layout_sort_order\":\"0\",\"layout_enabled\":\"1\",\"layout_id\":\"17\"}', 1),
(2202, 0, 'brainyfilter', 'brainyfilter_layout_basic', '{\"behaviour\":{\"containerSelector\":\"#content .row:nth-last-of-type(2)\",\"paginatorSelector\":\"#content .row:nth-last-of-type(1)\",\"attribute_groups\":1,\"product_count\":1,\"hide_empty\":0,\"limit_height\":{\"enabled\":0,\"height\":144},\"limit_items\":{\"enabled\":0,\"number_to_show\":4,\"number_to_hide\":2},\"sections\":{\"search\":{\"enabled\":0,\"collapsed\":0},\"price\":{\"enabled\":1,\"collapsed\":0,\"control\":\"slider\"},\"category\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"stock_status\":{\"enabled\":1,\"collapsed\":0},\"manufacturer\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"attribute\":{\"enabled\":1,\"collapsed\":0},\"option\":{\"enabled\":0,\"collapsed\":0},\"filter\":{\"enabled\":0,\"collapsed\":0},\"rating\":{\"enabled\":0,\"collapsed\":0}},\"sort_order\":{\"enabled\":0,\"search\":0,\"price\":1,\"category\":2,\"stock_status\":3,\"manufacturer\":4,\"attribute\":5,\"option\":6,\"filter\":7,\"rating\":8}},\"submission\":{\"submit_type\":\"button\",\"submit_button_type\":\"float\",\"submit_delay_time\":1000,\"hide_panel\":1},\"global\":{\"instock_status_id\":7,\"subcategories_fix\":0,\"multiple_attributes\":0,\"attribute_separator\":\",\",\"cron_secret_key\":\"\",\"hide_out_of_stock\":0,\"postponed_count\":1},\"style\":{\"block_header_background\":{\"val\":\"#f7f7f7\"},\"block_header_text\":{\"val\":\"#000000\"},\"product_quantity_background\":{\"val\":\"#F46234\"},\"product_quantity_text\":{\"val\":\"#ffffff\"},\"price_slider_background\":{\"val\":\"#eeeeee\"},\"price_slider_area_background\":{\"val\":\"#f6a828\"},\"price_slider_border\":{\"val\":\"#dddddd\"},\"price_slider_handle_background\":{\"val\":\"#f6f6f6\"},\"price_slider_handle_border\":{\"val\":\"#cccccc\"},\"group_block_header_background\":{\"val\":\"#CECBCB\"},\"group_block_header_text\":{\"val\":\"#000000\"},\"resp_show_btn_color\":{\"val\":\"#19A3DF\"},\"resp_reset_btn_color\":{\"val\":\"#F53838\"},\"responsive\":{\"enabled\":0,\"collapsed\":1,\"max_screen_width\":768,\"max_width\":300,\"position\":\"left\",\"offset\":80}},\"attributes_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"options_default\":{\"enable_all\":1,\"control\":\"checkbox\",\"mode\":\"label\"},\"filters_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"attributes\":[],\"options\":[],\"filters\":[],\"current_adm_tab\":\"embedding\",\"module_id\":\"basic\"}', 1),
(2201, 0, 'brainyfilter', 'brainyfilter_layout_46', '{\"behaviour\":{\"attribute_groups\":1,\"product_count\":1,\"hide_empty\":0,\"limit_height\":{\"enabled\":0,\"height\":144},\"limit_items\":{\"enabled\":0,\"number_to_show\":4,\"number_to_hide\":2},\"sections\":{\"search\":{\"enabled\":0,\"collapsed\":0},\"price\":{\"enabled\":1,\"collapsed\":0,\"control\":\"slider\"},\"category\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"stock_status\":{\"enabled\":1,\"collapsed\":0},\"manufacturer\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"attribute\":{\"enabled\":1,\"collapsed\":0},\"option\":{\"enabled\":0,\"collapsed\":0},\"filter\":{\"enabled\":0,\"collapsed\":0},\"rating\":{\"enabled\":0,\"collapsed\":0}},\"sort_order\":{\"enabled\":0,\"search\":0,\"price\":1,\"category\":2,\"stock_status\":3,\"manufacturer\":4,\"attribute\":5,\"option\":6,\"filter\":7,\"rating\":8}},\"submission\":{\"submit_type\":\"button\",\"submit_button_type\":\"float\",\"submit_delay_time\":1000,\"hide_panel\":1},\"global\":{\"instock_status_id\":7,\"subcategories_fix\":0,\"multiple_attributes\":0,\"attribute_separator\":\",\",\"cron_secret_key\":\"\",\"hide_out_of_stock\":0,\"postponed_count\":1},\"style\":{\"block_header_background\":{\"val\":\"#f7f7f7\"},\"block_header_text\":{\"val\":\"#000000\"},\"product_quantity_background\":{\"val\":\"#F46234\"},\"product_quantity_text\":{\"val\":\"#ffffff\"},\"price_slider_background\":{\"val\":\"#eeeeee\"},\"price_slider_area_background\":{\"val\":\"#f6a828\"},\"price_slider_border\":{\"val\":\"#dddddd\"},\"price_slider_handle_background\":{\"val\":\"#f6f6f6\"},\"price_slider_handle_border\":{\"val\":\"#cccccc\"},\"group_block_header_background\":{\"val\":\"#CECBCB\"},\"group_block_header_text\":{\"val\":\"#000000\"},\"resp_show_btn_color\":{\"val\":\"#19A3DF\"},\"resp_reset_btn_color\":{\"val\":\"#F53838\"},\"responsive\":{\"enabled\":0,\"collapsed\":1,\"max_screen_width\":768,\"max_width\":300,\"position\":\"left\",\"offset\":80}},\"attributes_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"options_default\":{\"enable_all\":1,\"control\":\"checkbox\",\"mode\":\"label\"},\"filters_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"attributes\":[],\"options\":[],\"filters\":[],\"current_adm_tab\":\"embedding\",\"module_id\":\"new\",\"layout_position\":\"column_left\",\"layout_sort_order\":\"0\",\"layout_enabled\":\"1\",\"layout_id\":\"18\"}', 1),
(2199, 0, 'brainyfilter', 'brainyfilter_layout_44', '{\"behaviour\":{\"attribute_groups\":1,\"product_count\":1,\"hide_empty\":0,\"limit_height\":{\"enabled\":0,\"height\":144},\"limit_items\":{\"enabled\":0,\"number_to_show\":4,\"number_to_hide\":2},\"sections\":{\"search\":{\"enabled\":0,\"collapsed\":0},\"price\":{\"enabled\":1,\"collapsed\":0,\"control\":\"slider\"},\"category\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"stock_status\":{\"enabled\":1,\"collapsed\":0},\"manufacturer\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"attribute\":{\"enabled\":1,\"collapsed\":0},\"option\":{\"enabled\":0,\"collapsed\":0},\"filter\":{\"enabled\":0,\"collapsed\":0},\"rating\":{\"enabled\":0,\"collapsed\":0}},\"sort_order\":{\"enabled\":0,\"search\":0,\"price\":1,\"category\":2,\"stock_status\":3,\"manufacturer\":4,\"attribute\":5,\"option\":6,\"filter\":7,\"rating\":8}},\"submission\":{\"submit_type\":\"button\",\"submit_button_type\":\"float\",\"submit_delay_time\":1000,\"hide_panel\":1},\"global\":{\"instock_status_id\":7,\"subcategories_fix\":0,\"multiple_attributes\":0,\"attribute_separator\":\",\",\"cron_secret_key\":\"\",\"hide_out_of_stock\":0,\"postponed_count\":1},\"style\":{\"block_header_background\":{\"val\":\"#f7f7f7\"},\"block_header_text\":{\"val\":\"#000000\"},\"product_quantity_background\":{\"val\":\"#F46234\"},\"product_quantity_text\":{\"val\":\"#ffffff\"},\"price_slider_background\":{\"val\":\"#eeeeee\"},\"price_slider_area_background\":{\"val\":\"#f6a828\"},\"price_slider_border\":{\"val\":\"#dddddd\"},\"price_slider_handle_background\":{\"val\":\"#f6f6f6\"},\"price_slider_handle_border\":{\"val\":\"#cccccc\"},\"group_block_header_background\":{\"val\":\"#CECBCB\"},\"group_block_header_text\":{\"val\":\"#000000\"},\"resp_show_btn_color\":{\"val\":\"#19A3DF\"},\"resp_reset_btn_color\":{\"val\":\"#F53838\"},\"responsive\":{\"enabled\":0,\"collapsed\":1,\"max_screen_width\":768,\"max_width\":300,\"position\":\"left\",\"offset\":80}},\"attributes_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"options_default\":{\"enable_all\":1,\"control\":\"checkbox\",\"mode\":\"label\"},\"filters_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"attributes\":[],\"options\":[],\"filters\":[],\"current_adm_tab\":\"embedding\",\"module_id\":\"new\",\"layout_position\":\"column_left\",\"layout_sort_order\":\"0\",\"layout_enabled\":\"1\",\"layout_id\":\"16\"}', 1),
(2204, 0, 'brainyfilter', 'brainyfilter_layout_47', '{\"behaviour\":{\"attribute_groups\":1,\"product_count\":1,\"hide_empty\":0,\"limit_height\":{\"enabled\":0,\"height\":144},\"limit_items\":{\"enabled\":0,\"number_to_show\":4,\"number_to_hide\":2},\"sections\":{\"search\":{\"enabled\":0,\"collapsed\":0},\"price\":{\"enabled\":1,\"collapsed\":0,\"control\":\"slider\"},\"category\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"stock_status\":{\"enabled\":1,\"collapsed\":0},\"manufacturer\":{\"enabled\":1,\"collapsed\":0,\"control\":\"checkbox\"},\"attribute\":{\"enabled\":1,\"collapsed\":0},\"option\":{\"enabled\":0,\"collapsed\":0},\"filter\":{\"enabled\":0,\"collapsed\":0},\"rating\":{\"enabled\":0,\"collapsed\":0}},\"sort_order\":{\"enabled\":0,\"search\":0,\"price\":1,\"category\":2,\"stock_status\":3,\"manufacturer\":4,\"attribute\":5,\"option\":6,\"filter\":7,\"rating\":8}},\"submission\":{\"submit_type\":\"button\",\"submit_button_type\":\"float\",\"submit_delay_time\":1000,\"hide_panel\":1},\"global\":{\"instock_status_id\":7,\"subcategories_fix\":0,\"multiple_attributes\":0,\"attribute_separator\":\",\",\"cron_secret_key\":\"\",\"hide_out_of_stock\":0,\"postponed_count\":1},\"style\":{\"block_header_background\":{\"val\":\"#f7f7f7\"},\"block_header_text\":{\"val\":\"#000000\"},\"product_quantity_background\":{\"val\":\"#F46234\"},\"product_quantity_text\":{\"val\":\"#ffffff\"},\"price_slider_background\":{\"val\":\"#eeeeee\"},\"price_slider_area_background\":{\"val\":\"#f6a828\"},\"price_slider_border\":{\"val\":\"#dddddd\"},\"price_slider_handle_background\":{\"val\":\"#f6f6f6\"},\"price_slider_handle_border\":{\"val\":\"#cccccc\"},\"group_block_header_background\":{\"val\":\"#CECBCB\"},\"group_block_header_text\":{\"val\":\"#000000\"},\"resp_show_btn_color\":{\"val\":\"#19A3DF\"},\"resp_reset_btn_color\":{\"val\":\"#F53838\"},\"responsive\":{\"enabled\":0,\"collapsed\":1,\"max_screen_width\":768,\"max_width\":300,\"position\":\"left\",\"offset\":80}},\"attributes_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"options_default\":{\"enable_all\":1,\"control\":\"checkbox\",\"mode\":\"label\"},\"filters_default\":{\"enable_all\":1,\"control\":\"checkbox\"},\"attributes\":[],\"options\":[],\"filters\":[],\"current_adm_tab\":\"embedding\",\"module_id\":\"new\",\"layout_position\":\"column_left\",\"layout_sort_order\":\"0\",\"layout_enabled\":\"1\",\"layout_id\":\"19\"}', 1),
(2229, 0, 'theme_default', 'theme_default_directory', 'doopet', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', 0.0000),
(2, 'order_processing', 0.0000),
(3, 'order_complete', 0.0000),
(4, 'order_other', 0.0000),
(5, 'returns', 0.0000),
(6, 'product', 0.0000),
(7, 'review', 0.0000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'В наличии'),
(8, 1, 'Предзаказ'),
(5, 1, 'Нет в наличии'),
(6, 1, 'Ожидание 2-3 дня');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Налоги', 'Облагаемые налогом', '2020-06-06 23:00:00', '2020-09-09 11:50:31');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(87, 3, 'НДС', 18.0000, 'F', '2020-09-21 21:49:23', '2020-09-09 11:49:32');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '4b108db9ccefa88faff6fa723638aa0f5211be30', 'WBCIh1MY6', 'John', 'Doe', 'jamshidbekmirzakarimov6@gmail.com', 'catalog/photo_2025-02-09_15-30-15.jpg', '', '::1', 1, '2025-03-06 12:46:42');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/live_search\",\"extension\\/module\\/html\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/xdstickers\",\"extension\\/module\\/xdstickers\",\"extension\\/module\\/optimblog\",\"extension\\/module\\/latest_information\",\"extension\\/module\\/latest_information\",\"extension\\/module\\/latest_information\",\"extension\\/module\\/newsletter\",\"sale\\/subscriber\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/event\",\"marketplace\\/api\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/live_search\",\"extension\\/module\\/html\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/xdstickers\",\"extension\\/module\\/xdstickers\",\"extension\\/module\\/optimblog\",\"extension\\/module\\/latest_information\",\"extension\\/module\\/latest_information\",\"extension\\/module\\/latest_information\",\"extension\\/module\\/newsletter\",\"sale\\/subscriber\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\",\"extension\\/module\\/brainyfilter\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Новый год'),
(7, 1, 'День рождения'),
(8, 1, 'Другое');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 1000.00000000),
(5, 2.20460000),
(6, 35.27400000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Килограмм', 'кг'),
(2, 1, 'Грамм', 'г');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_xdstickers`
--

CREATE TABLE `oc_xdstickers` (
  `id` int(11) NOT NULL,
  `xdsticker_id` int(11) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `bg_color` char(100) DEFAULT NULL,
  `color_color` char(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_xdstickers`
--

INSERT INTO `oc_xdstickers` (`id`, `xdsticker_id`, `name`, `text`, `bg_color`, `color_color`, `status`) VALUES
(1, 0, 'Tест', '{\"1\":\"T\\u0435\\u0441\\u0442 \"}', '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_xdstickers_product`
--

CREATE TABLE `oc_xdstickers_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `xdsticker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_xdstickers_product`
--

INSERT INTO `oc_xdstickers_product` (`id`, `product_id`, `xdsticker_id`) VALUES
(2, 51, 0),
(3, 52, 0),
(5, 54, 0),
(6, 55, 0),
(7, 56, 0),
(8, 57, 0),
(9, 58, 0),
(10, 59, 0),
(11, 60, 0),
(12, 61, 0),
(13, 62, 0),
(14, 63, 0),
(15, 64, 0),
(16, 65, 0),
(17, 66, 0),
(18, 67, 0),
(19, 68, 0),
(21, 70, 0),
(22, 71, 0),
(23, 72, 0),
(25, 69, 0),
(28, 53, 0),
(29, 50, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 20, 'Брест', 'BR', 1),
(2, 20, 'Гомель', 'HO', 1),
(3, 20, 'Минск', 'HM', 1),
(4, 20, 'Гродно', 'HR', 1),
(5, 20, 'Могилев', 'MA', 1),
(6, 20, 'Минская область', 'MI', 1),
(7, 20, 'Витебск', 'VI', 1),
(8, 80, 'Abkhazia', 'AB', 1),
(9, 80, 'Ajaria', 'AJ', 1),
(10, 80, 'Tbilisi', 'TB', 1),
(11, 80, 'Guria', 'GU', 1),
(12, 80, 'Imereti', 'IM', 1),
(13, 80, 'Kakheti', 'KA', 1),
(14, 80, 'Kvemo Kartli', 'KK', 1),
(15, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(16, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(17, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(18, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(19, 80, 'Shida Kartli', 'SK', 1),
(20, 109, 'Алматинская область', 'AL', 1),
(21, 109, 'Алматы - город республ-го значения', 'AC', 1),
(22, 109, 'Акмолинская область', 'AM', 1),
(23, 109, 'Актюбинская область', 'AQ', 1),
(24, 109, 'Астана - город республ-го значения', 'AS', 1),
(25, 109, 'Атырауская область', 'AT', 1),
(26, 109, 'Западно-Казахстанская область', 'BA', 1),
(27, 109, 'Байконур - город республ-го значения', 'BY', 1),
(28, 109, 'Мангистауская область', 'MA', 1),
(29, 109, 'Южно-Казахстанская область', 'ON', 1),
(30, 109, 'Павлодарская область', 'PA', 1),
(31, 109, 'Карагандинская область', 'QA', 1),
(32, 109, 'Костанайская область', 'QO', 1),
(33, 109, 'Кызылординская область', 'QY', 1),
(34, 109, 'Восточно-Казахстанская область', 'SH', 1),
(35, 109, 'Северо-Казахстанская область', 'SO', 1),
(36, 109, 'Жамбылская область', 'ZH', 1),
(37, 115, 'Bishkek', 'GB', 1),
(38, 115, 'Batken', 'B', 1),
(39, 115, 'Chu', 'C', 1),
(40, 115, 'Jalal-Abad', 'J', 1),
(41, 115, 'Naryn', 'N', 1),
(42, 115, 'Osh', 'O', 1),
(43, 115, 'Talas', 'T', 1),
(44, 115, 'Ysyk-Kol', 'Y', 1),
(45, 176, 'Республика Хакасия', 'KK', 1),
(46, 176, 'Московская область', 'MOS', 1),
(47, 176, 'Чукотский АО', 'CHU', 1),
(48, 176, 'Архангельская область', 'ARK', 1),
(49, 176, 'Астраханская область', 'AST', 1),
(50, 176, 'Алтайский край', 'ALT', 1),
(51, 176, 'Белгородская область', 'BEL', 1),
(52, 176, 'Еврейская АО', 'YEV', 1),
(53, 176, 'Амурская область', 'AMU', 1),
(54, 176, 'Брянская область', 'BRY', 1),
(55, 176, 'Чувашская Республика', 'CU', 1),
(56, 176, 'Челябинская область', 'CHE', 1),
(57, 176, 'Карачаево-Черкесия', 'KC', 1),
(58, 176, 'Забайкальский край', 'ZAB', 1),
(59, 176, 'Ленинградская область', 'LEN', 1),
(60, 176, 'Республика Калмыкия', 'KL', 1),
(61, 176, 'Сахалинская область', 'SAK', 1),
(62, 176, 'Республика Алтай', 'AL', 1),
(63, 176, 'Чеченская Республика', 'CE', 1),
(64, 176, 'Иркутская область', 'IRK', 1),
(65, 176, 'Ивановская область', 'IVA', 1),
(66, 176, 'Удмуртская Республика', 'UD', 1),
(67, 176, 'Калининградская область', 'KGD', 1),
(68, 176, 'Калужская область', 'KLU', 1),
(69, 176, 'Республика Татарстан', 'TA', 1),
(70, 176, 'Кемеровская область', 'KEM', 1),
(71, 176, 'Хабаровский край', 'KHA', 1),
(72, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
(73, 176, 'Костромская область', 'KOS', 1),
(74, 176, 'Краснодарский край', 'KDA', 1),
(75, 176, 'Красноярский край', 'KYA', 1),
(76, 176, 'Курганская область', 'KGN', 1),
(77, 176, 'Курская область', 'KRS', 1),
(78, 176, 'Республика Тыва', 'TY', 1),
(79, 176, 'Липецкая область', 'LIP', 1),
(80, 176, 'Магаданская область', 'MAG', 1),
(81, 176, 'Республика Дагестан', 'DA', 1),
(82, 176, 'Республика Адыгея', 'AD', 1),
(83, 176, 'Москва', 'MOW', 1),
(84, 176, 'Мурманская область', 'MUR', 1),
(85, 176, 'Республика Кабардино-Балкария', 'KB', 1),
(86, 176, 'Ненецкий АО', 'NEN', 1),
(87, 176, 'Республика Ингушетия', 'IN', 1),
(88, 176, 'Нижегородская область', 'NIZ', 1),
(89, 176, 'Новгородская область', 'NGR', 1),
(90, 176, 'Новосибирская область', 'NVS', 1),
(91, 176, 'Омская область', 'OMS', 1),
(92, 176, 'Орловская область', 'ORL', 1),
(93, 176, 'Оренбургская область', 'ORE', 1),
(94, 176, 'Пензенская область', 'PNZ', 1),
(95, 176, 'Пермский край', 'PER', 1),
(96, 176, 'Камчатский край', 'KAM', 1),
(97, 176, 'Республика Карелия', 'KR', 1),
(98, 176, 'Псковская область', 'PSK', 1),
(99, 176, 'Ростовская область', 'ROS', 1),
(100, 176, 'Рязанская область', 'RYA', 1),
(101, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
(102, 176, 'Самарская область', 'SAM', 1),
(103, 176, 'Республика Мордовия', 'MO', 1),
(104, 176, 'Саратовская область', 'SAR', 1),
(105, 176, 'Смоленская область', 'SMO', 1),
(106, 176, 'Санкт-Петербург', 'SPE', 1),
(107, 176, 'Ставропольский край', 'STA', 1),
(108, 176, 'Республика Коми', 'KO', 1),
(109, 176, 'Тамбовская область', 'TAM', 1),
(110, 176, 'Томская область', 'TOM', 1),
(111, 176, 'Тульская область', 'TUL', 1),
(112, 176, 'Тверская область', 'TVE', 1),
(113, 176, 'Тюменская область', 'TYU', 1),
(114, 176, 'Республика Башкортостан', 'BA', 1),
(115, 176, 'Ульяновская область', 'ULY', 1),
(116, 176, 'Республика Бурятия', 'BU', 1),
(117, 176, 'Республика Северная Осетия', 'SE', 1),
(118, 176, 'Владимирская область', 'VLA', 1),
(119, 176, 'Приморский край', 'PRI', 1),
(120, 176, 'Волгоградская область', 'VGG', 1),
(121, 176, 'Вологодская область', 'VLG', 1),
(122, 176, 'Воронежская область', 'VOR', 1),
(123, 176, 'Кировская область', 'KIR', 1),
(124, 176, 'Республика Саха', 'SA', 1),
(125, 176, 'Ярославская область', 'YAR', 1),
(126, 176, 'Свердловская область', 'SVE', 1),
(127, 176, 'Республика Марий Эл', 'ME', 1),
(291, 176, 'Республика Крым', 'KRM', 1),
(292, 176, 'Севастополь', 'SEV', 1),
(293, 176, 'Донецкая Народная Республика', 'DNR', 1),
(294, 176, 'Луганская Народная Республика', 'LNR', 1),
(295, 176, 'Запорожская область', 'ZAP', 1),
(296, 176, 'Херсонская область', 'HER', 1),
(129, 220, 'Черкассы', 'CK', 1),
(130, 220, 'Чернигов', 'CH', 1),
(131, 220, 'Черновцы', 'CV', 1),
(132, 220, 'Днепропетровск', 'DN', 1),
(133, 220, 'Донецк', 'DO', 1),
(134, 220, 'Ивано-Франковск', 'IV', 1),
(135, 220, 'Харьков', 'KH', 1),
(136, 220, 'Хмельницкий', 'KM', 1),
(137, 220, 'Кировоград', 'KR', 1),
(138, 220, 'Киевская область', 'KV', 1),
(139, 220, 'Киев', 'KY', 1),
(140, 220, 'Луганск', 'LU', 1),
(141, 220, 'Львов', 'LV', 1),
(142, 220, 'Николаев', 'MY', 1),
(143, 220, 'Одесса', 'OD', 1),
(144, 220, 'Полтава', 'PO', 1),
(145, 220, 'Ровно', 'RI', 1),
(147, 220, 'Сумы', 'SU', 1),
(148, 220, 'Тернополь', 'TE', 1),
(149, 220, 'Винница', 'VI', 1),
(150, 220, 'Луцк', 'VO', 1),
(151, 220, 'Ужгород', 'ZK', 1),
(152, 220, 'Запорожье', 'ZA', 1),
(153, 220, 'Житомир', 'ZH', 1),
(154, 220, 'Херсон', 'KE', 1),
(155, 226, 'Andijon', 'AN', 1),
(156, 226, 'Buxoro', 'BU', 1),
(157, 226, 'Farg\'ona', 'FA', 1),
(158, 226, 'Jizzax', 'JI', 1),
(159, 226, 'Namangan', 'NG', 1),
(160, 226, 'Navoiy', 'NW', 1),
(161, 226, 'Qashqadaryo', 'QA', 1),
(162, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(163, 226, 'Samarqand', 'SA', 1),
(164, 226, 'Sirdaryo', 'SI', 1),
(165, 226, 'Surxondaryo', 'SU', 1),
(166, 226, 'Toshkent City', 'TK', 1),
(167, 226, 'Toshkent Region', 'TO', 1),
(168, 226, 'Xorazm', 'XO', 1),
(169, 176, 'Байконур - город республ-го значения', 'BY', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 176, 0, 3, '2020-09-09 11:48:13', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_bf_attribute_value`
--
ALTER TABLE `oc_bf_attribute_value`
  ADD PRIMARY KEY (`attribute_value_id`),
  ADD UNIQUE KEY `attribute_id` (`attribute_id`,`language_id`,`value`),
  ADD KEY `sort_order` (`sort_order`);

--
-- Индексы таблицы `oc_bf_filter`
--
ALTER TABLE `oc_bf_filter`
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_bf_product_attribute_value`
--
ALTER TABLE `oc_bf_product_attribute_value`
  ADD PRIMARY KEY (`product_id`,`attribute_value_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_bf_tax_rate`
--
ALTER TABLE `oc_bf_tax_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_group_id` (`customer_group_id`,`country_id`,`zone_id`),
  ADD KEY `tax_class_id` (`tax_class_id`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_image`
--
ALTER TABLE `oc_category_image`
  ADD PRIMARY KEY (`category_image_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_googleshopping_category`
--
ALTER TABLE `oc_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_googleshopping_product_status`
--
ALTER TABLE `oc_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Индексы таблицы `oc_googleshopping_product_target`
--
ALTER TABLE `oc_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Индексы таблицы `oc_googleshopping_target`
--
ALTER TABLE `oc_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_attribute`
--
ALTER TABLE `oc_information_attribute`
  ADD PRIMARY KEY (`information_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_filter`
--
ALTER TABLE `oc_information_filter`
  ADD PRIMARY KEY (`information_id`,`filter_id`);

--
-- Индексы таблицы `oc_information_image`
--
ALTER TABLE `oc_information_image`
  ADD PRIMARY KEY (`information_image_id`),
  ADD KEY `information_id` (`information_id`);

--
-- Индексы таблицы `oc_information_product_related`
--
ALTER TABLE `oc_information_product_related`
  ADD PRIMARY KEY (`information_id`,`product_id`);

--
-- Индексы таблицы `oc_information_related`
--
ALTER TABLE `oc_information_related`
  ADD PRIMARY KEY (`information_id`,`related_id`);

--
-- Индексы таблицы `oc_information_to_category`
--
ALTER TABLE `oc_information_to_category`
  ADD PRIMARY KEY (`information_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_user`
--
ALTER TABLE `oc_information_to_user`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`),
  ADD KEY `bf_product_option_value` (`product_id`,`option_value_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `information_id` (`information_id`);

--
-- Индексы таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Индексы таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_xdstickers`
--
ALTER TABLE `oc_xdstickers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oc_xdstickers_product`
--
ALTER TABLE `oc_xdstickers_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `oc_bf_attribute_value`
--
ALTER TABLE `oc_bf_attribute_value`
  MODIFY `attribute_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_bf_tax_rate`
--
ALTER TABLE `oc_bf_tax_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `oc_category_image`
--
ALTER TABLE `oc_category_image`
  MODIFY `category_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900;

--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oc_information_image`
--
ALTER TABLE `oc_information_image`
  MODIFY `information_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2421;

--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=984;

--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2253;

--
-- AUTO_INCREMENT для таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_xdstickers`
--
ALTER TABLE `oc_xdstickers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_xdstickers_product`
--
ALTER TABLE `oc_xdstickers_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
