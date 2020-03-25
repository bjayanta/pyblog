-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2020 at 06:49 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coderill`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_profile`
--

CREATE TABLE `account_profile` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_profile`
--

INSERT INTO `account_profile` (`id`, `phone`, `image`, `user_id`) VALUES
(9, '', 'default.png', 13),
(10, '', 'default.png', 14);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(25, 'Can add posts', 7, 'add_posts'),
(26, 'Can change posts', 7, 'change_posts'),
(27, 'Can delete posts', 7, 'delete_posts'),
(28, 'Can view posts', 7, 'view_posts'),
(29, 'Can add post', 7, 'add_post'),
(30, 'Can change post', 7, 'change_post'),
(31, 'Can delete post', 7, 'delete_post'),
(32, 'Can view post', 7, 'view_post'),
(33, 'Can add posts', 8, 'add_posts'),
(34, 'Can change posts', 8, 'change_posts'),
(35, 'Can delete posts', 8, 'delete_posts'),
(36, 'Can view posts', 8, 'view_posts'),
(37, 'Can add profile', 9, 'add_profile'),
(38, 'Can change profile', 9, 'change_profile'),
(39, 'Can delete profile', 9, 'delete_profile'),
(40, 'Can view profile', 9, 'view_profile');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$uqSwQ6Ff9CAq$khsC00Xi+gbKaael0z/1MdhNBkmCsvJ3CTV623Iel1M=', '2020-03-25 17:35:39.385506', 1, 'coderill', 'Jayanta', 'Biswas', 'admin@coderill.com', 1, 1, '2020-03-16 16:41:25.000000'),
(6, 'pbkdf2_sha256$180000$uqSwQ6Ff9CAq$khsC00Xi+gbKaael0z/1MdhNBkmCsvJ3CTV623Iel1M=', '2020-03-25 16:45:53.019305', 0, 'bjayanta', '', '', 'bjayanta.me@gmail.com', 0, 1, '2020-03-21 18:37:15.911804'),
(13, 'pbkdf2_sha256$180000$0FDyYKytL7bw$wcMoh+pZzoGzh2asvH3TI2cG8ILvF+zPXVVu0Fo095A=', '2020-03-25 17:40:36.824821', 0, 'bsagor', '', '', 'bsagor.neo@gmail.com', 0, 1, '2020-03-25 17:39:08.041328'),
(14, 'pbkdf2_sha256$180000$M7hHxbP0C1qb$yxvJnTVG59NQ3HqXL8X67fa0SeOiSSZy07RjcnoE5tY=', '2020-03-25 17:45:35.632018', 0, 'brobin', '', '', 'brobin.neo@gmail.com', 0, 1, '2020-03-25 17:44:44.231108');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `status` varchar(45) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'blog 1', 'First content.', 'publish', '2020-03-20 06:05:34.146611', '2020-03-20 06:06:18.602483', 1),
(2, 'blog 2', '2nd content.', 'publish', '2020-03-20 06:10:58.473815', '2020-03-20 06:11:09.306177', 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-16 17:00:41.817093', '1', 'bjayanta.me@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\"]}}]', 4, 1),
(2, '2020-03-16 17:00:59.786076', '1', 'coderill', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(3, '2020-03-20 05:42:13.820908', '2', 'testuser', 1, '[{\"added\": {}}]', 4, 1),
(4, '2020-03-25 16:11:28.020816', '1', 'Profile object (1)', 1, '[{\"added\": {}}]', 9, 1),
(5, '2020-03-25 16:14:27.202821', '2', 'Profile object (2)', 1, '[{\"added\": {}}]', 9, 1),
(6, '2020-03-25 16:25:07.715518', '2', 'Profile object (2)', 3, '', 9, 1),
(7, '2020-03-25 16:25:07.785331', '1', 'Profile object (1)', 3, '', 9, 1),
(8, '2020-03-25 16:25:48.393464', '3', 'Profile object (3)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-03-25 16:25:57.198033', '4', 'Profile object (4)', 1, '[{\"added\": {}}]', 9, 1),
(10, '2020-03-25 16:27:23.893135', '4', 'Profile object (4)', 3, '', 9, 1),
(11, '2020-03-25 16:27:23.937016', '3', 'Profile object (3)', 3, '', 9, 1),
(12, '2020-03-25 16:27:38.340486', '5', 'Profile object (5)', 1, '[{\"added\": {}}]', 9, 1),
(13, '2020-03-25 16:28:30.658555', '5', 'Profile object (5)', 3, '', 9, 1),
(14, '2020-03-25 16:28:54.548846', '6', 'Profile object (6)', 1, '[{\"added\": {}}]', 9, 1),
(15, '2020-03-25 16:29:01.705479', '7', 'Profile object (7)', 1, '[{\"added\": {}}]', 9, 1),
(16, '2020-03-25 17:36:01.352741', '8', 'Profile object (8)', 3, '', 9, 1),
(17, '2020-03-25 17:36:01.408591', '7', 'Profile object (7)', 3, '', 9, 1),
(18, '2020-03-25 17:36:01.441809', '6', 'Profile object (6)', 3, '', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'account', 'profile'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'blog', 'post'),
(8, 'blog', 'posts'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-16 16:39:07.632796'),
(2, 'auth', '0001_initial', '2020-03-16 16:39:09.910744'),
(3, 'admin', '0001_initial', '2020-03-16 16:39:17.620081'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-16 16:39:20.614118'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-16 16:39:20.707385'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-16 16:39:22.806325'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-16 16:39:23.921142'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-16 16:39:25.041675'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-16 16:39:25.077581'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-16 16:39:25.802675'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-16 16:39:25.821590'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-16 16:39:25.881431'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-16 16:39:26.965742'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-16 16:39:27.789961'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-16 16:39:28.724796'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-16 16:39:28.841518'),
(17, 'sessions', '0001_initial', '2020-03-16 16:39:29.326587'),
(24, 'blog', '0001_initial', '2020-03-16 18:04:56.086888'),
(25, 'account', '0001_initial', '2020-03-25 15:57:29.302760');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('920wsgtoolilfi1aoaslq764de131nap', 'NzI1MTVkMjNjMWYwMWMxZTA4YWYzZWYzOWZjN2E5NDU1NDc0ZDA5OTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmZWZkNDIxZTRiYjBjOTc4MzA3MjM5NjgyOTZkZjFkMjUxYWJiMDZlIn0=', '2020-04-05 17:53:27.865922'),
('ahqu1exkpcpq7wopvxewp5u8xbpy49rp', 'NDdhOGRmMWQxOWY3MjhkNzIzNjM2NGE4ODYyMWJjODEzOTUzZmJiNDp7fQ==', '2020-04-08 17:34:03.898552'),
('rwdntgpwrm7qx7dvw03odvcf1x6kuxqh', 'ZjQyZDdlYTVkODRiMmVjOGEyYzA0NWExY2RjMjVhNzAyMDc3MmZhMTp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDRhNjk1ODQwOGI2N2FhMjIwYzJlNDdiYWZhOWFhN2MzMGQ3N2NhMCJ9', '2020-04-08 17:45:35.739568');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_profile`
--
ALTER TABLE `account_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_posts_author_id_6f561d00_fk_auth_user_id` (`author_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_profile`
--
ALTER TABLE `account_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_profile`
--
ALTER TABLE `account_profile`
  ADD CONSTRAINT `account_profile_user_id_bdd52018_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_author_id_6f561d00_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
