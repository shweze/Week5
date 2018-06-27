-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-06-25 04:39:17
-- 服务器版本： 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopdb`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `detail`
--

CREATE TABLE `detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `orderid` int(11) UNSIGNED DEFAULT NULL,
  `goodsid` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `num` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-04-08 12:22:15.498037'),
(2, 'auth', '0001_initial', '2018-04-08 12:22:15.858037'),
(3, 'admin', '0001_initial', '2018-04-08 12:22:15.943037'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-04-08 12:22:15.960537'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-04-08 12:22:16.020537'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-04-08 12:22:16.050537'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-04-08 12:22:16.095537'),
(8, 'auth', '0004_alter_user_username_opts', '2018-04-08 12:22:16.110537'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-04-08 12:22:16.140037'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-04-08 12:22:16.147037'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-04-08 12:22:16.164037'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-04-08 12:22:16.241037'),
(13, 'sessions', '0001_initial', '2018-04-08 12:22:16.268537');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8i6g2cxek0e732i9dqqu4wx3l30ca42l', 'MDY5ZjkzNTE1NmRhMTMzMzlkNWQyMmZmZjM5ZGI0NzQ3MjdiMDdhMTp7InZlcmlmeWNvZGUiOiI0MjIxIiwiYWRtaW51c2VyIjp7ImlkIjoxLCJ1c2VybmFtZSI6ImFkbWluIiwibmFtZSI6Ilx1N2JhMVx1NzQwNlx1NTQ1ODIiLCJwYXNzd29yZCI6IjIxMjMyZjI5N2E1N2E1YTc0Mzg5NGEwZTRhODAxZmMzIiwiYWRkcmVzcyI6Ilx1NTMxN1x1NGVhY1x1NWUwMlx1NjcxZFx1OTYzM1x1NTMzYVx1NTkyN1x1NWM3MVx1NWI1MDAwN1x1NTNmNyIsInBob25lIjoiMTM1NjY2ODY4NjgiLCJlbWFpbCI6IjEyMjc5NDEwNUBxcS5jb20iLCJzdGF0ZSI6MH19', '2018-04-23 06:42:32.449065'),
('p25i9hoz0f2ikbi994n776c9a0wx1wrq', 'ZDljNWQxMGMzYzVjMTM5NTdlZTI0ZTE3NWVlMTc0ZmZlZWE4ZmM4OTp7InZlcmlmeWNvZGUiOiI0NjIxIiwiYWRtaW51c2VyIjp7ImlkIjoxLCJ1c2VybmFtZSI6ImFkbWluIiwibmFtZSI6Ilx1N2JhMVx1NzQwNlx1NTQ1ODIiLCJwYXNzd29yZCI6IjIxMjMyZjI5N2E1N2E1YTc0Mzg5NGEwZTRhODAxZmMzIiwiYWRkcmVzcyI6Ilx1NTMxN1x1NGVhY1x1NWUwMlx1NjcxZFx1OTYzM1x1NTMzYVx1NTkyN1x1NWM3MVx1NWI1MDAwN1x1NTNmNyIsInBob25lIjoiMTM1NjY2ODY4NjgiLCJlbWFpbCI6IjEyMjc5NDEwNUBxcS5jb20iLCJzdGF0ZSI6MH19', '2018-07-09 02:34:00.381047');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `id` int(11) UNSIGNED NOT NULL,
  `typeid` int(11) UNSIGNED NOT NULL,
  `goods` varchar(32) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `content` text,
  `price` double(6,2) UNSIGNED NOT NULL,
  `picname` varchar(255) DEFAULT NULL,
  `store` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `num` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `clicknum` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `addtime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `typeid`, `goods`, `company`, `content`, `price`, `picname`, `store`, `num`, `clicknum`, `state`, `addtime`) VALUES
(1, 3, '连衣裙', '香奈儿', '香奈儿的连衣裙', 380.00, '1523268599.5389268.jpg', 20, 0, 0, 1, '2018-04-09 10:09:59'),
(2, 6, '联想T4000', '联想', '      联想T4000              ', 3980.00, '1523268691.237927.jpg', 0, 0, 0, 1, '2018-04-09 10:11:31'),
(4, 9, 'Iphone', 'Apple', '<p>334234234234</p>', 5000.00, '1529613873.8663218.jpg', 20, 0, 0, 1, '2018-06-21 20:44:33');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` int(11) UNSIGNED DEFAULT NULL,
  `linkman` varchar(32) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `total` double(8,2) UNSIGNED DEFAULT NULL,
  `state` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE `type` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `pid` int(11) UNSIGNED DEFAULT '0',
  `path` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`id`, `name`, `pid`, `path`) VALUES
(1, '服装', 0, '0,'),
(2, '数码', 0, '0,'),
(3, '女装', 1, '0,1,'),
(4, '数码相机', 2, '0,2,'),
(5, '食品', 0, '0,'),
(6, '电脑', 2, '0,2,'),
(7, '男装', 1, '0,1,'),
(8, '儿童装', 1, '0,1,'),
(9, '手机', 2, '0,2,'),
(11, '特色小吃', 5, '0,5,');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `password` char(32) NOT NULL,
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `address` varchar(255) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `addtime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `sex`, `address`, `code`, `phone`, `email`, `state`, `addtime`) VALUES
(1, 'admin', '管理员2', '21232f297a57a5a743894a0e4a801fc3', 0, '北京市朝阳区大山子007号', '100086', '13566686868', '122794105@qq.com', 0, '2018-04-07 21:20:08'),
(3, 'zhangsan', '张三', 'e10adc3949ba59abbe56e057f20f883e', 1, '北京市三里河蘑菇村102号', '100086', '12345676890', 'zhangsan@11.com', 0, '2018-04-08 11:11:18'),
(4, 'lisi', '李四', '202cb962ac59075b964b07152d234b70', 0, '北京市三里河蘑菇村103号', '100088', '6666666666666', 'lisi@11.com', 2, '2018-04-08 11:12:21'),
(6, 'wangwu', '王五', '202cb962ac59075b964b07152d234b70', 0, '北京市三里河蘑菇村102号', '100086', '12345676890', 'zhangsan@11.com', 0, '2018-04-08 12:58:58'),
(7, 'shweze', '邵邵', 'e10adc3949ba59abbe56e057f20f883e', 1, '天津市河东区', '300000', '18611883322', 'shweze@me.com', 1, '2018-06-21 12:37:08'),
(8, 'wangwu1', '王五1', '202cb962ac59075b964b07152d234b70', 0, '北京市三里河蘑菇村102号', '100086', '12345676890', 'zhangsan@11.com', 0, '2018-04-08 12:58:58'),
(9, 'wangwu2', '王五2', '202cb962ac59075b964b07152d234b70', 0, '北京市三里河蘑菇村102号', '100086', '12345676890', 'zhangsan@11.com', 0, '2018-04-08 12:58:58'),
(10, 'wangwu3', '王五3', '202cb962ac59075b964b07152d234b70', 0, '北京市三里河蘑菇村102号', '100086', '12345676890', 'zhangsan@11.com', 0, '2018-04-08 12:58:58'),
(11, 'wangwu4', '王五4', '202cb962ac59075b964b07152d234b70', 0, '北京市三里河蘑菇村102号', '100086', '12345676890', 'zhangsan@11.com', 0, '2018-04-08 12:58:58'),
(12, 'wangwu5', '王五5', '202cb962ac59075b964b07152d234b70', 0, '北京市三里河蘑菇村102号', '100086', '12345676890', 'zhangsan@11.com', 0, '2018-04-08 12:58:58'),
(13, 'wangwu6', '王五6', '202cb962ac59075b964b07152d234b70', 0, '北京市三里河蘑菇村102号', '100086', '12345676890', 'zhangsan@11.com', 0, '2018-04-08 12:58:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeid` (`typeid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 限制导出的表
--

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
