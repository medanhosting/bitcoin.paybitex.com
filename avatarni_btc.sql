-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 17, 2018 lúc 02:03 AM
-- Phiên bản máy phục vụ: 10.0.31-MariaDB-cll-lve
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `avatarni_btc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `btc_blockio_licenses`
--

CREATE TABLE `btc_blockio_licenses` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `secret_pin` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `addresses` int(11) DEFAULT NULL,
  `default_license` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `btc_blockio_licenses`
--

INSERT INTO `btc_blockio_licenses` (`id`, `account`, `license`, `secret_pin`, `address`, `addresses`, `default_license`) VALUES
(1, 'Default API', 'a7bb-2ae0-3147-7998', 'Lokialice1995', '34795WNfQhvMKQeTeputU4Xzf5VFgmde8a', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `btc_faq`
--

CREATE TABLE `btc_faq` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `btc_pages`
--

CREATE TABLE `btc_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `content` text,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `btc_pages`
--

INSERT INTO `btc_pages` (`id`, `title`, `prefix`, `content`, `created`, `updated`) VALUES
(1, 'Terms of service', 'terms-of-services', 'Edit from WebAdmin.', NULL, NULL),
(2, 'Privacy Policy', 'privacy-policy', 'Edit from WebAdmin.', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `btc_prices`
--

CREATE TABLE `btc_prices` (
  `id` int(11) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `btc_prices`
--

INSERT INTO `btc_prices` (`id`, `source`, `price`, `currency`) VALUES
(1, 'bitfinex', 8719, 'EUR'),
(2, 'bitstamp', 10901, 'USD'),
(3, 'bitstamp', 8957, 'EUR'),
(4, 'bitpay', 10938, 'USD'),
(5, 'bitpay', 8938, 'EUR'),
(6, 'bitpay', 7941, 'GBP'),
(7, 'bitpay', 13616, 'CAD'),
(8, 'bitpay', 10523, 'CHF'),
(9, 'bitpay', 11686826, 'KRW'),
(10, 'coinbase', 10949, 'USD'),
(11, 'coinspot', 14900, 'AUD'),
(12, 'bitfinex', 10675, 'USD');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `btc_settings`
--

CREATE TABLE `btc_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `infoemail` varchar(255) DEFAULT NULL,
  `supportemail` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `withdrawal_comission` varchar(255) DEFAULT NULL,
  `max_addresses_per_account` int(11) DEFAULT NULL,
  `profits` varchar(255) DEFAULT NULL,
  `email_verification` int(11) DEFAULT NULL,
  `recaptcha_verification` int(11) DEFAULT NULL,
  `recaptcha_publickey` varchar(255) DEFAULT NULL,
  `recaptcha_privatekey` varchar(255) DEFAULT NULL,
  `fb_link` text,
  `tw_link` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `btc_settings`
--

INSERT INTO `btc_settings` (`id`, `title`, `description`, `keywords`, `name`, `infoemail`, `supportemail`, `url`, `withdrawal_comission`, `max_addresses_per_account`, `profits`, `email_verification`, `recaptcha_verification`, `recaptcha_publickey`, `recaptcha_privatekey`, `fb_link`, `tw_link`) VALUES
(1, 'Bitcoin Wallet', 'dsadasd', 'asadsdaasdasd', 'Bitcoin Wallet', 'lokialicehd@gmail.com', 'lokialicehd@gmail.com', 'http://cryptominingcal.trade/', '0.00008', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `btc_users`
--

CREATE TABLE `btc_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `secret_pin` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified` int(11) DEFAULT NULL,
  `email_hash` text,
  `status` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time_signup` int(11) DEFAULT NULL,
  `time_signin` int(11) DEFAULT NULL,
  `time_activity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `btc_users`
--

INSERT INTO `btc_users` (`id`, `username`, `password`, `secret_pin`, `email`, `email_verified`, `email_hash`, `status`, `ip`, `time_signup`, `time_signin`, `time_activity`) VALUES
(1, 'lokialice', '053dd478ccb43e45211326ab7e001671', NULL, 'lokialicehd@gmail.com', NULL, NULL, '666', NULL, NULL, 1515949427, 1515949427);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `btc_users_addresses`
--

CREATE TABLE `btc_users_addresses` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `available_balance` varchar(255) DEFAULT NULL,
  `pending_received_balance` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `archived` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `btc_users_addresses`
--

INSERT INTO `btc_users_addresses` (`id`, `uid`, `label`, `address`, `lid`, `available_balance`, `pending_received_balance`, `status`, `created`, `updated`, `archived`) VALUES
(1, 1, 'usr_lokialice_bd9155c', '3Dd7LqwKx5SMiCCEqXCkcDJ5dSKUW7hR3m', 1, '0.00000000', '0.00000000', '1', 1515393516, NULL, 0),
(2, 1, 'usr_lokialice_f4ddcaa', '35zEj2RyXRPZRxXiVhXWi6y9PKGCBgZzQY', 1, '0.00000000', '0.00000000', '1', 1515393530, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `btc_users_transactions`
--

CREATE TABLE `btc_users_transactions` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `confirmations` int(11) DEFAULT NULL,
  `txid` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `btc_blockio_licenses`
--
ALTER TABLE `btc_blockio_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `btc_faq`
--
ALTER TABLE `btc_faq`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `btc_pages`
--
ALTER TABLE `btc_pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `btc_prices`
--
ALTER TABLE `btc_prices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `btc_settings`
--
ALTER TABLE `btc_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `btc_users`
--
ALTER TABLE `btc_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `btc_users_addresses`
--
ALTER TABLE `btc_users_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `btc_users_transactions`
--
ALTER TABLE `btc_users_transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `btc_blockio_licenses`
--
ALTER TABLE `btc_blockio_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `btc_faq`
--
ALTER TABLE `btc_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `btc_pages`
--
ALTER TABLE `btc_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `btc_prices`
--
ALTER TABLE `btc_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `btc_settings`
--
ALTER TABLE `btc_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `btc_users`
--
ALTER TABLE `btc_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `btc_users_addresses`
--
ALTER TABLE `btc_users_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `btc_users_transactions`
--
ALTER TABLE `btc_users_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
