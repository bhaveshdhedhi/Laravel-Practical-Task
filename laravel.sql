-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2019 at 10:01 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `avatar`, `confirmed`, `token`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bhavesh1', 'Dhedhi1', 'bhavesh@gmail.com', '9876543211', 'default.jpg', 1, '', '$2y$10$kmyBDrS3TyxYqbdJtyH/zOqmM8LrSeAGR7G73AOhS1r4yzcUiVu/e', 'eG8oNS0Gsgj2up3KKuY8v4ZqESvQMbn1CuzT2fdD9ZPbXyl5Jcz9AxbpF1V1', '2019-12-17 10:54:45', '2019-12-17 12:31:21'),
(2, 'bhavesh', 'dhedhi', 'bhavesh1@gmail.com', '91215423154', 'default.jpg', 0, 'LRjNwHhpCDk8qOXpOTyzKfBmT', '$2y$10$Dgd5ahIVdeBxL.rxuWc2sOBdDHO82aka4AkS5dtCE/mR6ZiFU5quq', NULL, '2019-12-17 11:04:21', '2019-12-17 11:04:21'),
(3, 'sdfs', 'sf', 'bhavesh2323@gmail.com', '234', 'default.jpg', 1, '', '$2y$10$U/Fl15vCgdq8JnuObPbAeOr04gm0QfqCgHJGT/4x7hZHSzA1JIEnC', NULL, '2019-12-17 11:05:36', '2019-12-17 12:20:26'),
(4, 'sdfbsdfh', 'jsjfbj', 'bhavesh223423@gmail.com', '3432', 'default.jpg', 1, '', '$2y$10$wT8l7n1gw5UVY7a2IB72oOhPD5ijtn0CxRPpbEcY2s.iiYpii6t7K', 'BSXgWW9MR9UXxNZxLTJ36HQmbmQUvDKqFaJFw3IfqS7eUsbW2UAGf69B4saA', '2019-12-17 11:08:32', '2019-12-17 12:13:07'),
(5, 'asd', 'asd', 'bhavesh2133@gmail.com', '3243243242434', 'default.jpg', 0, 'tfclOBWArrurlnYMCTGj7vo2f', '$2y$10$0Eu/ng6Au/7KfTx8GJzQKeSqwvIaNbslAhggAsdvqfokVk3jb3G.6', NULL, '2019-12-17 11:20:24', '2019-12-17 11:20:24'),
(6, 'sd4werwe', 'wer', 'e324bhavesh@gmail.com', '345345', 'default.jpg', 0, 'BHI5YvsjzcidOGHLX7A03h1ph', '$2y$10$NzN7IvojXaiq.vxYdUYG8u2TnIZOMWkRDgQVdCGkkDnAwbDcIPXWO', NULL, '2019-12-17 11:21:59', '2019-12-17 11:21:59'),
(7, 'bhavesh', 'dhedhi', 'bhavesh34534@gmail.com', '9876541251', 'default.jpg', 0, 'p79og3oQWxHTtYB6AlqTCmoQM', '$2y$10$4a060sUO.fPM01LADjm0sOdKlGB/C4r/pC8amRejCMl19fIZyDGNq', NULL, '2019-12-17 11:25:14', '2019-12-17 11:25:14'),
(8, 'sdf', 'sdf', 'bhavesh3453@gmail.com', '345', 'default.jpg', 0, 'lFKPmTbuOA2tyVDDqT2rO1LqS', '$2y$10$16qv7Ks3bocLi4LE6u7aP.sPMO0rPpjv8bEFdQMY8/usF2qVTstt2', NULL, '2019-12-17 11:28:31', '2019-12-17 11:28:32'),
(9, 'sdfs', 'sd43', 'bhavesh4543@gmail.com', '435', 'default.jpg', 0, '', '$2y$10$54oDLZSFCaEaz/xwPwwQI.ZZ34ZLHkt6mE8fu29bjMpPWvWqjf.R.', NULL, '2019-12-17 11:30:23', '2019-12-17 11:30:23'),
(10, 'hgfdg', '46', 'bhavesh456@gmail.com', '123456', 'default.jpg', 0, '8XQ3ABmuqgiZLNRVAq6eT9Lqx', '$2y$10$paPSLronSbpr/3/i0.YoMuOzV.lVpXVqVNCVtaT8KVAFXzrJ0zIZW', NULL, '2019-12-17 11:31:29', '2019-12-17 11:31:29'),
(11, 'sdf', 'kjdfnj', 'bhavesh345543@gmail.com', '1345', 'default.jpg', 0, 'KSxpPIHVZ22u0deTzWIPVoShv', '$2y$10$u1Fv.sKIlb.ZIuXXO67Lw.jk2GVdrNrwUyiCQPa4t/Qx5/uF3FNx.', NULL, '2019-12-17 11:32:56', '2019-12-17 11:32:58'),
(12, 'dg', '435', '3245bhavesh@gmail.com', '123456', 'default.jpg', 0, '5upSe87kPTpYOhoa4xbyUy3DY', '$2y$10$TOYXODNYoA4Cy8k.liJWAewC.46pToqkWWzmr6mMzib9VfsxIjcTG', NULL, '2019-12-17 11:33:27', '2019-12-17 11:33:27'),
(13, 'dfg54', '56', 'sdnfkj@gmail.com', '123', 'default.jpg', 1, '', '$2y$10$EXql4oTJOvY8XbUcSa2EqewTsOLM7fvpD/qcWQAfa9l.3gcx2DMqK', 'cZmvu6CRxaFMKtfIDz9Mzl2fq3gxQD68SrMej7hMaYDFdmYVce6SeDXm20r4', '2019-12-17 11:34:34', '2019-12-17 12:02:56'),
(14, '54', 'dfg', 'bhavesh5645645wf4@gmail.com', '456', 'default.jpg', 1, '', '$2y$10$sYziokQoWNhgX3gt4eyS6uOES0N9X50ABb/Se1YuqTQWzeRBo3ff.', NULL, '2019-12-17 11:36:51', '2019-12-17 11:37:15'),
(15, 'Jessy', 'Bruen', 'elsa21@example.com', '249.827.9092 x2417', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'BLT3NAulw7', '2019-12-17 13:09:12', '2019-12-17 13:09:12'),
(16, 'Brittany', 'Armstrong', 'olynch@example.com', '635.245.6624', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'gc8EVxblo1', '2019-12-17 13:09:13', '2019-12-17 13:09:13'),
(17, 'Florencio', 'Ebert', 'branson.beahan@example.com', '604-206-5235 x17993', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'igmjW3SqTU', '2019-12-17 13:09:13', '2019-12-17 13:09:13'),
(18, 'Verona', 'Haley', 'norma.kunde@example.net', '1-740-383-5665', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'L0gQEOCaWw', '2019-12-17 13:09:13', '2019-12-17 13:09:13'),
(19, 'Ernesto', 'Funk', 'ahansen@example.com', '1-301-614-0767 x308', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'ROI5zeNBCN', '2019-12-17 13:09:13', '2019-12-17 13:09:13'),
(20, 'Kathleen', 'Harvey', 'tklocko@example.net', '607-803-0811 x789', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'tW4csBZ5wu', '2019-12-17 13:09:13', '2019-12-17 13:09:13'),
(21, 'Odie', 'Haley', 'remard@example.net', '967-353-6856', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'aNeToHjRbz', '2019-12-17 13:09:13', '2019-12-17 13:09:13'),
(22, 'Bertrand', 'Lakin', 'ellen.bradtke@example.org', '+1-756-676-3917', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'g7L33xYN6g', '2019-12-17 13:09:13', '2019-12-17 13:09:13'),
(23, 'Marcelo', 'Barton', 'brenna11@example.org', '847-294-4045', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'FB0BMVlc7J', '2019-12-17 13:09:13', '2019-12-17 13:09:13'),
(24, 'Emelia', 'Cormier', 'cummings.jaime@example.net', '438-594-5495', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'oVP96djCla', '2019-12-17 13:09:13', '2019-12-17 13:09:13'),
(25, 'Marion', 'Tillman', 'hill.janiya@example.net', '(290) 769-2243 x218', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'LLYqKoCG28', '2019-12-17 13:09:13', '2019-12-17 13:09:13'),
(26, 'Danielle', 'Hansen', 'kerluke.roberta@example.net', '240-984-4492', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', '5GGdxZ96lT', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(27, 'Orville', 'Murphy', 'jovan.wisoky@example.com', '(308) 309-6294 x19383', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'zUTpqA6ROt', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(28, 'Nels', 'Windler', 'myron11@example.com', '332.349.7399', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'aD9AmQbqhf', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(29, 'Brigitte', 'Kessler', 'norberto35@example.org', '401-345-0865', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'Ezug06v9VF', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(30, 'Angel', 'Franecki', 'kunde.dax@example.net', '1-276-378-6322 x615', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'heROGocAE8', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(31, 'Delaney', 'Schuster', 'wisoky.ward@example.net', '1-672-640-2238 x471', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', '4jFgcsI8wS', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(32, 'Delilah', 'Hills', 'hkilback@example.com', '(747) 266-9699 x3502', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'rmg61gYmAd', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(33, 'Julia', 'Zemlak', 'gorn@example.com', '(451) 764-5828 x322', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'P3UhwDSbSH', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(34, 'Gilbert', 'Kertzmann', 'trey.ankunding@example.net', '1-631-800-5550', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'gMF7PBZtjR', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(35, 'Sherman', 'Yundt', 'sdare@example.com', '447-910-7074 x7270', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', '0tNbzn4Udv', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(36, 'Eleazar', 'Dare', 'alberta00@example.org', '1-790-940-1663', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'G61PjQacwe', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(37, 'Chadrick', 'Fadel', 'anika29@example.org', '1-456-553-6997 x4488', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'Ty0DxLNuak', '2019-12-17 13:09:14', '2019-12-17 13:09:14'),
(38, 'Vito', 'McCullough', 'fritsch.marlon@example.net', '560.749.4013', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'Uw6SuMBjKI', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(39, 'Winfield', 'Brekke', 'xzavier77@example.org', '485-550-4850 x36238', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'x2GQon3oC7', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(40, 'Alana', 'Connelly', 'malinda.gulgowski@example.org', '1-705-519-4892 x251', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', '8s2rZO4QYv', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(41, 'Gloria', 'O\'Conner', 'gerhold.gregoria@example.com', '416-835-8360', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'cPLY5unJoL', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(42, 'Meta', 'Murazik', 'pwalter@example.com', '669.488.3935', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'laAXitt1Wx', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(43, 'Curt', 'Hayes', 'gulgowski.cole@example.net', '1-980-833-9635 x818', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', '95Q5qmcgjT', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(44, 'Anjali', 'Davis', 'isobel09@example.com', '1-351-572-8217 x358', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'CIAphcBaED', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(45, 'Samara', 'Bahringer', 'cristobal54@example.com', '+1-316-859-7489', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'ithX93bLJg', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(46, 'Della', 'O\'Conner', 'daugherty.catherine@example.org', '1-980-315-5405 x46552', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'Cw0la0BOE9', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(47, 'Toby', 'Kassulke', 'kaelyn54@example.org', '861.204.1457', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'ACOieWvc4I', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(48, 'Ari', 'Ruecker', 'yjacobi@example.com', '735.803.1324', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'zBCGDwrIOs', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(49, 'Zack', 'Hudson', 'travis02@example.com', '(696) 789-0680', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'iRSKQEfguJ', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(50, 'Ramon', 'Robel', 'skiles.victoria@example.net', '+1-847-591-8364', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'y59QlOiqab', '2019-12-17 13:09:15', '2019-12-17 13:09:15'),
(51, 'Davin', 'Dickinson', 'jaden31@example.org', '430.722.2369', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'Mm3piCfi9N', '2019-12-17 13:09:16', '2019-12-17 13:09:16'),
(52, 'Noel', 'Dibbert', 'katherine.predovic@example.com', '525.721.6270', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'jANBbe1YSz', '2019-12-17 13:09:16', '2019-12-17 13:09:16'),
(53, 'Tanya', 'Walker', 'maudie93@example.org', '+1 (539) 689-7218', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'kLzqzcbBKy', '2019-12-17 13:09:16', '2019-12-17 13:09:16'),
(54, 'Ayana', 'Wilderman', 'aletha.reinger@example.org', '809.554.7335', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'GVKiqMyzAq', '2019-12-17 13:09:16', '2019-12-17 13:09:16'),
(55, 'Buddy', 'Kemmer', 'shields.jake@example.net', '+1 (665) 880-4478', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'Vu10JM8fpz', '2019-12-17 13:09:16', '2019-12-17 13:09:16'),
(56, 'Clay', 'Brown', 'hintz.kailey@example.com', '475.536.0590', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', '8GCu9XOXKE', '2019-12-17 13:09:16', '2019-12-17 13:09:16'),
(57, 'Ross', 'Rohan', 'boyer.emanuel@example.org', '(760) 765-9467', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'HhtorB4VO3', '2019-12-17 13:09:17', '2019-12-17 13:09:17'),
(58, 'Flavie', 'Kuphal', 'rhermann@example.com', '754.435.2652 x8164', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'nUwd4rTvwm', '2019-12-17 13:09:17', '2019-12-17 13:09:17'),
(59, 'Brenda', 'Heidenreich', 'palma88@example.net', '(450) 733-2082', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'ry2DjPg210', '2019-12-17 13:09:17', '2019-12-17 13:09:17'),
(60, 'Art', 'Wisoky', 'gcummings@example.org', '848-477-3173 x40789', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'Vd0tFJgCL3', '2019-12-17 13:09:17', '2019-12-17 13:09:17'),
(61, 'Lora', 'Grant', 'hherman@example.org', '1-337-680-5022', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'mP85gEZeVY', '2019-12-17 13:09:17', '2019-12-17 13:09:17'),
(62, 'Lilla', 'Becker', 'lboyer@example.net', '+17098941726', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'hrkyaZgU5j', '2019-12-17 13:09:17', '2019-12-17 13:09:17'),
(63, 'Mekhi', 'Hyatt', 'vern72@example.com', '696-589-9161', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'Bv5cYJBjIB', '2019-12-17 13:09:17', '2019-12-17 13:09:17'),
(64, 'Zetta', 'Hills', 'roberts.esmeralda@example.net', '536-472-6828', 'default.jpg', 0, NULL, '$2y$10$jJy1quZKe.4xaJiYCiND4.c.M6t2yJt137Bw4V26nnvCGBHZwqKPy', 'P6thwH7P22', '2019-12-17 13:09:17', '2019-12-17 13:09:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
