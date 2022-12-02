-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2022 at 01:14 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoivakoti_mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `asukkaat`
--

CREATE TABLE `asukkaat` (
  `Id` int(11) NOT NULL,
  `nimi` varchar(30) NOT NULL,
  `osoite_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add asukkaat', 1, 'add_asukkaat'),
(2, 'Can change asukkaat', 1, 'change_asukkaat'),
(3, 'Can delete asukkaat', 1, 'delete_asukkaat'),
(4, 'Can view asukkaat', 1, 'view_asukkaat'),
(5, 'Can add palvelut', 2, 'add_palvelut'),
(6, 'Can change palvelut', 2, 'change_palvelut'),
(7, 'Can delete palvelut', 2, 'delete_palvelut'),
(8, 'Can view palvelut', 2, 'view_palvelut'),
(9, 'Can add sopimus', 3, 'add_sopimus'),
(10, 'Can change sopimus', 3, 'change_sopimus'),
(11, 'Can delete sopimus', 3, 'delete_sopimus'),
(12, 'Can view sopimus', 3, 'view_sopimus'),
(13, 'Can add tilaaja', 4, 'add_tilaaja'),
(14, 'Can change tilaaja', 4, 'change_tilaaja'),
(15, 'Can delete tilaaja', 4, 'delete_tilaaja'),
(16, 'Can view tilaaja', 4, 'view_tilaaja'),
(17, 'Can add tyontekijat', 5, 'add_tyontekijat'),
(18, 'Can change tyontekijat', 5, 'change_tyontekijat'),
(19, 'Can delete tyontekijat', 5, 'delete_tyontekijat'),
(20, 'Can view tyontekijat', 5, 'view_tyontekijat'),
(21, 'Can add osoite', 6, 'add_osoite'),
(22, 'Can change osoite', 6, 'change_osoite'),
(23, 'Can delete osoite', 6, 'delete_osoite'),
(24, 'Can view osoite', 6, 'view_osoite'),
(25, 'Can add palvelukori', 7, 'add_palvelukori'),
(26, 'Can change palvelukori', 7, 'change_palvelukori'),
(27, 'Can delete palvelukori', 7, 'delete_palvelukori'),
(28, 'Can view palvelukori', 7, 'view_palvelukori'),
(29, 'Can add log entry', 8, 'add_logentry'),
(30, 'Can change log entry', 8, 'change_logentry'),
(31, 'Can delete log entry', 8, 'delete_logentry'),
(32, 'Can view log entry', 8, 'view_logentry'),
(33, 'Can add permission', 9, 'add_permission'),
(34, 'Can change permission', 9, 'change_permission'),
(35, 'Can delete permission', 9, 'delete_permission'),
(36, 'Can view permission', 9, 'view_permission'),
(37, 'Can add group', 10, 'add_group'),
(38, 'Can change group', 10, 'change_group'),
(39, 'Can delete group', 10, 'delete_group'),
(40, 'Can view group', 10, 'view_group'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add content type', 12, 'add_contenttype'),
(46, 'Can change content type', 12, 'change_contenttype'),
(47, 'Can delete content type', 12, 'delete_contenttype'),
(48, 'Can view content type', 12, 'view_contenttype'),
(49, 'Can add session', 13, 'add_session'),
(50, 'Can change session', 13, 'change_session'),
(51, 'Can delete session', 13, 'delete_session'),
(52, 'Can view session', 13, 'view_session');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$I0I83J82fwcCoUlcfUVXNP$Pvb98BTcjFDeS9lQw4Bl1ttF14bhL4y6zxsdvwhJBK0=', '2022-12-02 13:13:09.689006', 0, 'Tuomas', '', '', '', 0, 1, '2022-12-02 13:11:28.322652'),
(2, 'pbkdf2_sha256$390000$9AiozW1cdxuGud3ndnCbor$/SlsLJ+5NbRmOOK6NDffZ74Oblcr027+LDWpVJgI4DE=', '2022-12-02 13:13:29.829724', 0, 'ttumppi', '', '', '', 0, 1, '2022-12-02 13:13:29.084534');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'admin', 'logentry'),
(10, 'auth', 'group'),
(9, 'auth', 'permission'),
(11, 'auth', 'user'),
(12, 'contenttypes', 'contenttype'),
(1, 'hoivakoti_browser', 'asukkaat'),
(6, 'hoivakoti_browser', 'osoite'),
(7, 'hoivakoti_browser', 'palvelukori'),
(2, 'hoivakoti_browser', 'palvelut'),
(3, 'hoivakoti_browser', 'sopimus'),
(4, 'hoivakoti_browser', 'tilaaja'),
(5, 'hoivakoti_browser', 'tyontekijat'),
(13, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-02 13:07:34.591784'),
(2, 'auth', '0001_initial', '2022-12-02 13:07:36.289217'),
(3, 'admin', '0001_initial', '2022-12-02 13:07:36.770341'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-02 13:07:36.804349'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-02 13:07:36.855359'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-02 13:07:37.129431'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-02 13:07:37.207448'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-02 13:07:37.285471'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-02 13:07:37.320476'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-02 13:07:37.456510'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-02 13:07:37.514523'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-02 13:07:37.582545'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-02 13:07:37.730582'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-02 13:07:37.833607'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-02 13:07:37.921628'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-02 13:07:37.953638'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-02 13:07:38.014652'),
(18, 'hoivakoti_browser', '0001_initial', '2022-12-02 13:07:39.209954'),
(19, 'sessions', '0001_initial', '2022-12-02 13:07:39.319983');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('rdjs7x8xt54krnjqzi6tjcdyt0yt89pw', '.eJxVjEEOwiAQRe_C2hAZQgGX7j0DmWEGqRqalHbVeHdt0oVu_3vvbyrhutS0dpnTyOqiQJ1-N8L8lLYDfmC7TzpPbZlH0ruiD9r1bWJ5XQ_376Bir99aHEYwBmMYOIONNkRDkSE4J-DFCyAx2VAKRS-DyxbEGgznTIUCe_X-AN76OEg:1p15r7:jh-sIymJPeUAD_76WpnKMpUKhSyR-3NFxKrTRn6mPQo', '2022-12-16 13:13:29.838728'),
('v92py0kkymkp8t689tx545blrxn9orat', 'e30:1p15pB:qbCO1NXSb7Cl2Li8f-BFw0_hLF_tavii6ZGRJd4bimg', '2022-12-16 13:11:29.113851');

-- --------------------------------------------------------

--
-- Table structure for table `osoite`
--

CREATE TABLE `osoite` (
  `Id` int(11) NOT NULL,
  `osoite` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `palvelukori`
--

CREATE TABLE `palvelukori` (
  `Id` int(11) NOT NULL,
  `asukas_id` int(11) NOT NULL,
  `plv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `palvelut`
--

CREATE TABLE `palvelut` (
  `Id` int(11) NOT NULL,
  `plv_nimi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sopimus`
--

CREATE TABLE `sopimus` (
  `Id` int(11) NOT NULL,
  `osoite_id` int(11) NOT NULL,
  `plv_vastaava_id` int(11) NOT NULL,
  `tilaaja_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tilaaja`
--

CREATE TABLE `tilaaja` (
  `Id` int(11) NOT NULL,
  `nimi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tyontekijat`
--

CREATE TABLE `tyontekijat` (
  `Id` int(11) NOT NULL,
  `nimi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asukkaat`
--
ALTER TABLE `asukkaat`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `asukkaat_osoite_id_62aee200_fk_osoite_Id` (`osoite_id`);

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `osoite`
--
ALTER TABLE `osoite`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `palvelukori`
--
ALTER TABLE `palvelukori`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `palvelukori_asukas_id_df20cbe7_fk_asukkaat_Id` (`asukas_id`),
  ADD KEY `palvelukori_plv_id_ac4886a6_fk_palvelut_Id` (`plv_id`);

--
-- Indexes for table `palvelut`
--
ALTER TABLE `palvelut`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sopimus`
--
ALTER TABLE `sopimus`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `sopimus_plv_vastaava_id_97f8a4d8_fk_tyontekijat_Id` (`plv_vastaava_id`),
  ADD KEY `sopimus_tilaaja_id_321a0f2d_fk_tilaaja_Id` (`tilaaja_id`);

--
-- Indexes for table `tilaaja`
--
ALTER TABLE `tilaaja`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tyontekijat`
--
ALTER TABLE `tyontekijat`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asukkaat`
--
ALTER TABLE `asukkaat`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `palvelukori`
--
ALTER TABLE `palvelukori`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `palvelut`
--
ALTER TABLE `palvelut`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sopimus`
--
ALTER TABLE `sopimus`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tilaaja`
--
ALTER TABLE `tilaaja`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tyontekijat`
--
ALTER TABLE `tyontekijat`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `asukkaat`
--
ALTER TABLE `asukkaat`
  ADD CONSTRAINT `asukkaat_osoite_id_62aee200_fk_osoite_Id` FOREIGN KEY (`osoite_id`) REFERENCES `osoite` (`Id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `osoite`
--
ALTER TABLE `osoite`
  ADD CONSTRAINT `osoite_Id_3ecc0c92_fk_sopimus_Id` FOREIGN KEY (`Id`) REFERENCES `sopimus` (`Id`);

--
-- Constraints for table `palvelukori`
--
ALTER TABLE `palvelukori`
  ADD CONSTRAINT `palvelukori_asukas_id_df20cbe7_fk_asukkaat_Id` FOREIGN KEY (`asukas_id`) REFERENCES `asukkaat` (`Id`),
  ADD CONSTRAINT `palvelukori_plv_id_ac4886a6_fk_palvelut_Id` FOREIGN KEY (`plv_id`) REFERENCES `palvelut` (`Id`);

--
-- Constraints for table `sopimus`
--
ALTER TABLE `sopimus`
  ADD CONSTRAINT `sopimus_plv_vastaava_id_97f8a4d8_fk_tyontekijat_Id` FOREIGN KEY (`plv_vastaava_id`) REFERENCES `tyontekijat` (`Id`),
  ADD CONSTRAINT `sopimus_tilaaja_id_321a0f2d_fk_tilaaja_Id` FOREIGN KEY (`tilaaja_id`) REFERENCES `tilaaja` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
