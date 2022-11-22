-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 22.11.2022 klo 12:21
-- Palvelimen versio: 5.7.11
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
-- Rakenne taululle `asujat`
--

CREATE TABLE `asujat` (
  `id` int(11) NOT NULL,
  `asukas_id` int(11) DEFAULT NULL,
  `plv_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `asujat`
--

INSERT INTO `asujat` (`id`, `asukas_id`, `plv_id`) VALUES
(1, 1, 1),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Rakenne taululle `asukkaat`
--

CREATE TABLE `asukkaat` (
  `id` int(11) NOT NULL,
  `nimi` varchar(50) DEFAULT NULL,
  `HETU` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `asukkaat`
--

INSERT INTO `asukkaat` (`id`, `nimi`, `HETU`) VALUES
(1, 'Riku Toivonen', ''),
(2, 'Marko Nieminen', ''),
(3, 'Joni Toivonen', '');

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add asujat', 1, 'add_asujat'),
(2, 'Can change asujat', 1, 'change_asujat'),
(3, 'Can delete asujat', 1, 'delete_asujat'),
(4, 'Can view asujat', 1, 'view_asujat'),
(5, 'Can add asukkaat', 2, 'add_asukkaat'),
(6, 'Can change asukkaat', 2, 'change_asukkaat'),
(7, 'Can delete asukkaat', 2, 'delete_asukkaat'),
(8, 'Can view asukkaat', 2, 'view_asukkaat'),
(9, 'Can add palvelut', 3, 'add_palvelut'),
(10, 'Can change palvelut', 3, 'change_palvelut'),
(11, 'Can delete palvelut', 3, 'delete_palvelut'),
(12, 'Can view palvelut', 3, 'view_palvelut'),
(13, 'Can add sopimus', 4, 'add_sopimus'),
(14, 'Can change sopimus', 4, 'change_sopimus'),
(15, 'Can delete sopimus', 4, 'delete_sopimus'),
(16, 'Can view sopimus', 4, 'view_sopimus'),
(17, 'Can add tilaajat', 5, 'add_tilaajat'),
(18, 'Can change tilaajat', 5, 'change_tilaajat'),
(19, 'Can delete tilaajat', 5, 'delete_tilaajat'),
(20, 'Can view tilaajat', 5, 'view_tilaajat'),
(21, 'Can add tyontekijat', 6, 'add_tyontekijat'),
(22, 'Can change tyontekijat', 6, 'change_tyontekijat'),
(23, 'Can delete tyontekijat', 6, 'delete_tyontekijat'),
(24, 'Can view tyontekijat', 6, 'view_tyontekijat'),
(25, 'Can add log entry', 7, 'add_logentry'),
(26, 'Can change log entry', 7, 'change_logentry'),
(27, 'Can delete log entry', 7, 'delete_logentry'),
(28, 'Can view log entry', 7, 'view_logentry'),
(29, 'Can add permission', 8, 'add_permission'),
(30, 'Can change permission', 8, 'change_permission'),
(31, 'Can delete permission', 8, 'delete_permission'),
(32, 'Can view permission', 8, 'view_permission'),
(33, 'Can add group', 9, 'add_group'),
(34, 'Can change group', 9, 'change_group'),
(35, 'Can delete group', 9, 'delete_group'),
(36, 'Can view group', 9, 'view_group'),
(37, 'Can add user', 10, 'add_user'),
(38, 'Can change user', 10, 'change_user'),
(39, 'Can delete user', 10, 'delete_user'),
(40, 'Can view user', 10, 'view_user'),
(41, 'Can add content type', 11, 'add_contenttype'),
(42, 'Can change content type', 11, 'change_contenttype'),
(43, 'Can delete content type', 11, 'delete_contenttype'),
(44, 'Can view content type', 11, 'view_contenttype'),
(45, 'Can add session', 12, 'add_session'),
(46, 'Can change session', 12, 'change_session'),
(47, 'Can delete session', 12, 'delete_session'),
(48, 'Can view session', 12, 'view_session');

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_user`
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
-- Vedos taulusta `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$BCS2DTrTfAxjHZW1pKIEbf$osh449F7d2daxGbKCnIHWwaLwBJv2bu0/E96UI9q7KI=', '2022-11-20 02:04:45.289869', 1, 'ttumppi', '', '', '', 1, 1, '2022-11-20 02:03:52.908023');

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Rakenne taululle `django_admin_log`
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

--
-- Vedos taulusta `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-20 02:05:17.455494', '2', 'Asujat object (2)', 1, '[{"added": {}}]', 1, 1);

-- --------------------------------------------------------

--
-- Rakenne taululle `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(9, 'auth', 'group'),
(8, 'auth', 'permission'),
(10, 'auth', 'user'),
(11, 'contenttypes', 'contenttype'),
(1, 'hoivakoti_browser', 'asujat'),
(2, 'hoivakoti_browser', 'asukkaat'),
(3, 'hoivakoti_browser', 'palvelut'),
(4, 'hoivakoti_browser', 'sopimus'),
(5, 'hoivakoti_browser', 'tilaajat'),
(6, 'hoivakoti_browser', 'tyontekijat'),
(12, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Rakenne taululle `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-20 02:01:18.155947'),
(2, 'auth', '0001_initial', '2022-11-20 02:01:26.025283'),
(3, 'admin', '0001_initial', '2022-11-20 02:01:28.109588'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-20 02:01:28.155677'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-20 02:01:28.199096'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-20 02:01:29.206290'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-20 02:01:29.342959'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-20 02:01:29.493172'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-20 02:01:29.578356'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-20 02:01:30.164643'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-20 02:01:30.215051'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-20 02:01:30.256472'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-20 02:01:30.647258'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-20 02:01:30.776518'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-20 02:01:31.161953'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-20 02:01:31.221341'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-20 02:01:31.361086'),
(18, 'hoivakoti_browser', '0001_initial', '2022-11-20 02:01:31.406416'),
(19, 'sessions', '0001_initial', '2022-11-20 02:01:32.112291');

-- --------------------------------------------------------

--
-- Rakenne taululle `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('46dh8j8ijm3voqh0m85360sodaixgrnm', '.eJxVjMsOwiAUBf-FtSFcaEFcuvcbyH1QqRqalHZl_HfbpAvdzsw5b5VwXUpaW57TKOqiQJ1-GSE_c92FPLDeJ81TXeaR9J7owzZ9myS_rkf7d1CwlW1tPHogdtFZhmCliz0MGzAmsHiSGJlCFsxGqA8DnB1j9M4Kdk6iBfX5AuWMOCA:1owZhN:uZpypZrSHkqlat1AUVrEttnXa0yq8GIlnzDxU6tbkkQ', '2022-12-04 02:04:45.356255');

-- --------------------------------------------------------

--
-- Rakenne taululle `palvelut`
--

CREATE TABLE `palvelut` (
  `id` int(11) NOT NULL,
  `plv_nimi` varchar(50) DEFAULT NULL,
  `kuvaus` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `palvelut`
--

INSERT INTO `palvelut` (`id`, `plv_nimi`, `kuvaus`) VALUES
(1, 'Lääkkeiden anto', 'Annetaan lääkkeet asiakkaalle'),
(2, 'Kylpy', 'Käytetään asiakas kylvyssä');

-- --------------------------------------------------------

--
-- Rakenne taululle `sopimus`
--

CREATE TABLE `sopimus` (
  `id` int(11) NOT NULL,
  `osoite` varchar(50) DEFAULT NULL,
  `asujat_id` int(11) DEFAULT NULL,
  `tilaaja_id` int(11) DEFAULT NULL,
  `plv_vastaava_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `sopimus`
--

INSERT INTO `sopimus` (`id`, `osoite`, `asujat_id`, `tilaaja_id`, `plv_vastaava_id`) VALUES
(1, 'Helsingintie 1', 1, 1, 1);

-- --------------------------------------------------------

--
-- Rakenne taululle `tilaajat`
--

CREATE TABLE `tilaajat` (
  `id` int(11) NOT NULL,
  `nimi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tilaajat`
--

INSERT INTO `tilaajat` (`id`, `nimi`) VALUES
(1, 'Petteri Lahti'),
(2, 'Niina Jakonen');

-- --------------------------------------------------------

--
-- Rakenne taululle `tyontekijat`
--

CREATE TABLE `tyontekijat` (
  `id` int(11) NOT NULL,
  `nimi` varchar(50) DEFAULT NULL,
  `esimies` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tyontekijat`
--

INSERT INTO `tyontekijat` (`id`, `nimi`, `esimies`) VALUES
(1, 'Vesa Virta', NULL),
(2, 'Jaakko Kosola', NULL),
(3, 'Toni Jalonen', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asujat`
--
ALTER TABLE `asujat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_asukkaat` (`asukas_id`),
  ADD KEY `fk_palvelut` (`plv_id`);

--
-- Indexes for table `asukkaat`
--
ALTER TABLE `asukkaat`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `palvelut`
--
ALTER TABLE `palvelut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sopimus`
--
ALTER TABLE `sopimus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tilaajahomma` (`tilaaja_id`),
  ADD KEY `fk_tyontekija` (`plv_vastaava_id`),
  ADD KEY `fk_asujat` (`asujat_id`);

--
-- Indexes for table `tilaajat`
--
ALTER TABLE `tilaajat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tyontekijat`
--
ALTER TABLE `tyontekijat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asujat`
--
ALTER TABLE `asujat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `asukkaat`
--
ALTER TABLE `asukkaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `palvelut`
--
ALTER TABLE `palvelut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sopimus`
--
ALTER TABLE `sopimus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tilaajat`
--
ALTER TABLE `tilaajat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tyontekijat`
--
ALTER TABLE `tyontekijat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `asujat`
--
ALTER TABLE `asujat`
  ADD CONSTRAINT `fk_asukkaat` FOREIGN KEY (`asukas_id`) REFERENCES `asukkaat` (`id`),
  ADD CONSTRAINT `fk_palvelut` FOREIGN KEY (`plv_id`) REFERENCES `palvelut` (`id`);

--
-- Rajoitteet taululle `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Rajoitteet taululle `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Rajoitteet taululle `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Rajoitteet taululle `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Rajoitteet taululle `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Rajoitteet taululle `sopimus`
--
ALTER TABLE `sopimus`
  ADD CONSTRAINT `fk_asujat` FOREIGN KEY (`asujat_id`) REFERENCES `asujat` (`id`),
  ADD CONSTRAINT `fk_tilaajahomma` FOREIGN KEY (`tilaaja_id`) REFERENCES `tilaajat` (`id`),
  ADD CONSTRAINT `fk_tyontekija` FOREIGN KEY (`plv_vastaava_id`) REFERENCES `tyontekijat` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
