-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2018 at 08:20 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sifdealdjango`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add categories', 8, 'add_categories'),
(30, 'Can change categories', 8, 'change_categories'),
(31, 'Can delete categories', 8, 'delete_categories'),
(32, 'Can view categories', 8, 'view_categories'),
(33, 'Can add author', 9, 'add_author'),
(34, 'Can change author', 9, 'change_author'),
(35, 'Can delete author', 9, 'delete_author'),
(36, 'Can view author', 9, 'view_author'),
(37, 'Can add user profile info', 10, 'add_userprofileinfo'),
(38, 'Can change user profile info', 10, 'change_userprofileinfo'),
(39, 'Can delete user profile info', 10, 'delete_userprofileinfo'),
(40, 'Can view user profile info', 10, 'view_userprofileinfo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$n8oYKh3BvkD2$OVGQhRBMyE7NZzLsSp/RKCA7cdTWIueJ9akyMNdxDUw=', '2018-12-04 05:30:02.087352', 1, 'admin', 'abdul', 'salam2', 'absalam48@gmail.com', 1, 1, '2018-11-25 06:48:45.293937'),
(2, 'pbkdf2_sha256$120000$0IzhvQ7ZYYS3$w7NyW9+pzi0SSoQ4XIq0WYHt28VSGj28szt2Lqcsvt8=', '2018-12-04 06:21:05.002010', 0, 'test', 'abdulhj', 'salamwwq', 'absalam48@gmail.com', 1, 1, '2018-11-26 15:57:09.000000'),
(3, 'pbkdf2_sha256$120000$5AEDi7c0zGOe$YEfLX5kulwZdxKwGkfpyjEC1Bf4tknNYFwOBhqR7KYI=', '2018-12-01 05:16:18.124202', 0, 'test30', 'abdul', 'salam', 'absalam48@gmail.com', 0, 1, '2018-11-27 07:02:26.928739'),
(4, 'pbkdf2_sha256$120000$2yHbAXkVFIdB$80dmpnRkt4a2pHnhOP7yWYiEcrTumYBckLQUjYt7AH8=', '2018-11-27 12:56:42.307027', 0, 'absalam48', '', '', 'absalam48@gmail.com', 0, 1, '2018-11-27 12:56:27.128125'),
(5, 'pbkdf2_sha256$120000$jruBoSoLbp67$gCg57EgKMwU0DlJSiZR1FLXHGUNOOEKJaE1jXStfhHw=', '2018-12-03 16:14:19.789493', 0, 'hamza', '', '', 'hamza@gmail.com', 0, 1, '2018-12-03 16:01:59.598544');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 32),
(2, 2, 25);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-11-25 07:47:32.163656', '1', 'Mobile', 1, '[{"added": {}}]', 8, 1),
(2, '2018-11-25 07:49:52.937832', '1', 'abdul', 1, '[{"added": {}}]', 9, 1),
(3, '2018-11-25 11:16:50.324873', '2', 'Books', 1, '[{"added": {}}]', 8, 1),
(4, '2018-11-25 11:18:15.862635', '4', 'JavaScript', 1, '[{"added": {}}]', 7, 1),
(5, '2018-11-26 11:01:05.518217', '6', 'Galaxy-Note-3', 3, '', 7, 1),
(6, '2018-11-26 11:01:05.522200', '5', 'Galaxy-Note-3', 3, '', 7, 1),
(7, '2018-11-27 06:44:35.036957', '1', 'test', 2, '[{"changed": {"fields": ["name", "address", "city", "state_province", "country"]}}]', 10, 1),
(8, '2018-11-27 07:24:28.785766', '2', 'test', 2, '[{"changed": {"fields": ["is_staff", "user_permissions"]}}]', 4, 1),
(9, '2018-11-27 09:56:50.310616', '2', 'test30', 2, '[{"changed": {"fields": ["name"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'product', 'product'),
(8, 'product', 'categories'),
(9, 'product', 'author'),
(10, 'product', 'userprofileinfo');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-11-25 06:17:54.777670'),
(2, 'auth', '0001_initial', '2018-11-25 06:17:56.461369'),
(3, 'admin', '0001_initial', '2018-11-25 06:17:56.939189'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-11-25 06:17:56.963161'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-11-25 06:17:56.987143'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-11-25 06:17:57.215367'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-11-25 06:17:57.273314'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-11-25 06:17:57.335294'),
(9, 'auth', '0004_alter_user_username_opts', '2018-11-25 06:17:57.347270'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-11-25 06:17:57.388448'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-11-25 06:17:57.392444'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-11-25 06:17:57.403437'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-11-25 06:17:57.449423'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2018-11-25 06:17:57.499452'),
(15, 'sessions', '0001_initial', '2018-11-25 06:17:57.602381'),
(16, 'product', '0001_initial', '2018-11-25 06:50:27.524570'),
(17, 'product', '0002_auto_20181126_1011', '2018-11-26 10:22:31.776667'),
(18, 'product', '0003_auto_20181126_1239', '2018-11-26 10:22:31.776667'),
(19, 'product', '0004_remove_categories_user', '2018-11-26 10:22:31.792273'),
(20, 'product', '0005_auto_20181126_1539', '2018-11-26 10:22:31.798069'),
(21, 'product', '0006_auto_20181126_1554', '2018-11-26 10:25:03.198688'),
(22, 'product', '0007_auto_20181127_1210', '2018-11-27 06:41:23.935907'),
(23, 'product', '0008_categories_user', '2018-11-27 07:07:12.442750'),
(24, 'product', '0009_auto_20181127_1228', '2018-11-27 07:07:12.446746');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2zch5bi3fx3xgx45tu88gmzgxyspkb4x', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 05:22:11.406811'),
('1a8e5yiocg1bbydzm0e97rh61pcon2z1', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 05:26:47.318913'),
('6yuq97hj3ip25nf6hr0qq6icdutz0fmq', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 05:50:20.398069'),
('aa32a9yoypj0jqid5d9j0nmsgticstb8', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 06:03:26.510673'),
('sa4pf0x5r1oc64npyymg4wl1r4gh30ni', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 06:05:54.491448'),
('ht6o5bjn8q0rr6sfyy2aa6fbqed7evw4', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 06:07:22.513651'),
('k0edyb1kme1hxaguteyragosru34v8dp', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 06:08:23.957826'),
('xsrfnjly1r8ot8h4p6igsrtboxwa2h2t', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 06:16:13.077313'),
('i09ypetdj2q2v5h2u4l4obkxg4rrcgwz', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 06:17:21.219081'),
('ifvps07flo8ji6fz991wrskufmzwrmc8', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 07:00:42.968778'),
('vtrwed6gerngv9othbja6xv139e1x1fe', 'NzUzMjFmNDQwOGNhYjE0Y2ExNzgwYThlODM3ZWMxMmM2YWY3OGJiMjp7fQ==', '2018-12-10 07:01:28.323795'),
('qkurfuzkq9xqwnlpkxw1rjj1yjrv26vm', 'MGQwMzM3YTliMDA3Mjk2NmE0YmE1NjlkYmViZmNlZTNhMGRmOGZjZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZTk3MDQ3OGMyNTE0NjllMDJkNWViODE0ZmFhMDY5MGE5YjljM2M1In0=', '2018-12-15 13:08:12.149436'),
('7anmbimpow1jtxgfviqhstarpy341ygo', 'M2E2NzY1MjI3ZGEyYzNlNzg4NjgwNWMzMzk3N2JkZjQ5YmZjOGNjODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZWU4NDgxMjFkYTFhNmI2YzJjYmJmY2ViODEyZWQ3NWUzYzVjNDA4In0=', '2018-12-18 05:30:02.087352');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tagline` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `tagline`) VALUES
(1, 'Mobile', 'Mobile'),
(2, 'Books', 'Books');

-- --------------------------------------------------------

--
-- Table structure for table `product_product`
--

CREATE TABLE `product_product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_product`
--

INSERT INTO `product_product` (`id`, `title`, `description`, `image`, `price`, `pub_date`, `categories_id`) VALUES
(1, 'Iphone', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'iphone-6-or-08.jpg', 65000, '2018-11-25 06:51:27.000000', 1),
(8, 'Oracle', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like', 'Design-Matters1.jpg', 34, '2018-11-25 06:51:27.000000', 2),
(4, 'JavaScript', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'th.jpg', 246, '2018-11-25 06:51:27.000000', 2),
(7, 'Galaxy-Note-3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'nexusae0_Galaxy.jpg', 454, '2018-11-25 06:51:27.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_userprofileinfo`
--

CREATE TABLE `product_userprofileinfo` (
  `id` int(11) NOT NULL,
  `portfolio_site` varchar(200) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(60) NOT NULL,
  `country` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_province` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_userprofileinfo`
--

INSERT INTO `product_userprofileinfo` (`id`, `portfolio_site`, `profile_pic`, `user_id`, `address`, `city`, `country`, `name`, `state_province`) VALUES
(1, 'http://sifdeal.com', 'profile_pics/bulb-s.png', 2, 'test', 'test', 'test', 'test', 'test'),
(2, 'http://sifdeal.com', 'profile_pics/fb-facebook-icon.png', 3, 'thanjore, ALADY STREET', 'thanjore', 'India', 'abdul salam', 'test30'),
(3, 'http://sifdeal.com', 'profile_pics/fb-facebook-icon.png', 4, 'thanjore, ALADY STREET', 'thanjore', 'India', 'abdul salam', 'test30'),
(4, 'http://127.0.0.1:8000/basic_app/register/', 'profile_pics/WIN_20181125_15_24_24_Pro_2PyUqf1.jpg', 5, 'thanjore, ALADY STREET', 'thanjore', 'India', 'hamza', 'dubai');

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
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

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
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

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
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_product`
--
ALTER TABLE `product_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_product_categories_id_f0f33587` (`categories_id`);

--
-- Indexes for table `product_userprofileinfo`
--
ALTER TABLE `product_userprofileinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product_product`
--
ALTER TABLE `product_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `product_userprofileinfo`
--
ALTER TABLE `product_userprofileinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
