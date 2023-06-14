-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 07:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starrel`
--

-- --------------------------------------------------------

--
-- Table structure for table `karakter`
--

CREATE TABLE `karakter` (
  `id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `affiliation` varchar(255) NOT NULL,
  `rarity` varchar(255) NOT NULL,
  `element` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `splash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karakter`
--

INSERT INTO `karakter` (`id`, `name`, `affiliation`, `rarity`, `element`, `path`, `image`, `splash`) VALUES
(1, 'Seele', 'Belobog', '5', 'Quantum', 'The Hunt', 'https://www.prydwen.gg/static/7bf27624888af02b16ed1ad2fdec10f2/e9a79/13_sm.png', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/83ec6441419658fff4dddaf36e61665c_1851986360488807818.png'),
(2, 'Blade', 'Stellaron Hunter', '5', 'Wind', 'Destruction', 'https://www.prydwen.gg/static/36cd284e00b9a2702967c3d2638f0069/60b4d/28_sm_2_.webp', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/d01ef191f3463c7ebc917883ecaa5f7b_5166386610407235058.png'),
(3, 'Kafka', 'Stellaron Hunters', '5', 'Lightning', 'Nihility', 'https://www.prydwen.gg/static/5eaaf9ec3518805762b5f5a69091d86c/60b4d/7_sm.webp', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/d9ab700ee0713acf78eb04d930f5c3fc_5451538034192478718.png'),
(4, 'Tingyun', 'Xianzhou Luofu', '4', 'Lightning', 'Harmony', 'https://www.prydwen.gg/static/03bcec36a01c78f33767b7098f6fa1f0/60b4d/25_sm.webp', 'https://gamefinity-assets.sgp1.digitaloceanspaces.com/wp-content/uploads/2023/05/15194258/Character_Tingyun_Splash_Art-1024x1024.png'),
(5, 'Himeko', 'Astral Express', '5', 'Fire', 'Erudition', 'https://www.prydwen.gg/static/f321ebceb88e9b1f2f0cff4861aca551/60b4d/5_sm.webp', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/ffbdc5dd7bdcc969ba2026af6439efad_2572684293855490328.png'),
(6, 'Welt', 'Astral Express', '5', 'Imaginary', 'Nihility', 'https://www.prydwen.gg/static/b24ce106a4a283e6cf1a077413fbf9d0/e9a79/6_sm.png', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/70c6b8dd2669d3c5158f1ed0935cc0ce_2648254583512580566.png'),
(7, 'Bronya', 'Belobog', '5', 'Wind', 'Harmony', 'https://www.prydwen.gg/static/3c0e87556bcf541135c909a18f87ec6a/60b4d/12_sm.webp', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/3d3aa1617c74e00b70c0dc1e396c7349_6287628408166093818.png'),
(8, 'Clara', 'Belobog', '5', 'Fire', 'Destruction', 'https://www.prydwen.gg/static/a3d2d3e7db3d202b575b6fa1d95baf2c/e9a79/18_sm.png', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/1f05b9ca08710d0579e37c196093e119_3027371680021679980.png'),
(9, 'Sampo', 'Belobog', '4', 'Wind', 'Nihility', 'https://www.prydwen.gg/static/0b758a75ced25955b92c9f055b71c87f/e9a79/19_sm.png', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/b82eefaf3431d2417565b3ef9e7fe711_3293112108286371035.png'),
(10, 'March 7th', 'Astral Express', '4', 'Ice', 'Preservation', 'https://www.prydwen.gg/static/63e84a0b75c737e0499f63f57b48c4d9/e9a79/3_sm.png', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/0011f0330bc59d73d1b59db7b99c7210_6817566525832438327.png'),
(11, 'Herta', 'Herta Space Station', '4', 'Ice', 'Erudition', 'https://www.prydwen.gg/static/183866486154f984ec92b8eedf87d7c6/60b4d/11_sm.webp', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/6f2bb7c621fb703f9980c0536b3682c3_2071736025467404354.png'),
(12, 'Asta', 'Herta Space Station', '4', 'Fire', 'Harmony', 'https://www.prydwen.gg/static/cae9b5e5ada7da3d4432d0e1d01dbf4d/60b4d/10_sm.webp', 'https://upload-os-bbs.hoyolab.com/upload/2022/05/26/7934611/0cbb70dc9be0fdb941fd3a47ed389aa5_6177555487189134369.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karakter`
--
ALTER TABLE `karakter`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
