-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2024 at 08:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nvr_middleware`
--

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `server` varchar(255) NOT NULL,
  `port` int(255) NOT NULL,
  `prefix` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ftp_url` varchar(255) NOT NULL,
  `ftp_port` int(255) NOT NULL,
  `ftp_user` varchar(255) NOT NULL,
  `ftp_pass` varchar(255) NOT NULL,
  `ftp_dir` varchar(255) NOT NULL,
  `send_interval` int(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `success` int(255) NOT NULL,
  `failed` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `name`, `username`, `password`, `server`, `port`, `prefix`, `created_at`, `updated_at`, `ftp_url`, `ftp_port`, `ftp_user`, `ftp_pass`, `ftp_dir`, `send_interval`, `status`, `success`, `failed`) VALUES
('cmKND9HQcLz44rOW', 'IKN', 'admin', 'telkomiot123', '36.92.168.180', 10180, 'cgi-bin/snapshot.cgi?channel=2&subtype=1', '2024-10-15 04:53:45.598931', '2024-10-07 11:04:35.190000', 'antarescam.id', 21, 'CCTV02FYxfsrT9AZlp', '5Klxi1VEJouu', '/', 5000, 0, 3185, 45),
('eNTD7z4TmlXx4PUl', 'Antares CCTV new44', 'admin', 'telkomiot123', '36.92.168.180', 11080, 'cgi-bin/snapshot.cgi?channel=1&subtype=2', '2024-10-15 04:53:44.451199', '2024-10-10 01:54:37.315000', 'antarescam.id', 21, 'CCTV04ainFGYaMhhj8', 'b6bOk6KbbjfU', '/', 15000, 0, 823, 0),
('HVmzMdlbWOzkzuT0', 'Local CCTV', 'Admin', 'skdfjsdm', '192.168.321.1', 4000, 'alklka/ssnf-edkc/subtype?5', '2024-10-14 10:09:23.136322', '2024-10-14 03:09:23.135000', 'www.gombel.xyz', 21, 'admin', 'password', '/', 5000, 0, 0, 0),
('kf-a0JCQ2HeJRhZa', 'Antares CCTV 4', 'admin', 'telkomiot123', '36.92.168.180', 10180, 'cgi-bin/snapshot.cgi?channel=4&subtype=1', '2024-10-15 04:53:45.791649', '2024-10-09 23:11:37.227000', 'antarescam.id', 21, 'CCTV01KGqdwvRKHGnW', 'lLZWZFhcdzaV', '/', 6000, 0, 3276, 0),
('qP2jfZaCWpDmFPVw', 'Antares CCTV 5', 'admin', 'telkomiot123', '36.92.168.180', 10180, 'cgi-bin/snapshot.cgi?channel=5&subtype=1', '2024-10-15 04:53:47.261764', '2024-10-06 20:30:16.902000', 'antarescam.id', 21, 'CCTV03ZT7U4seUowQJ', 'sKV8yAV52bUK', '/', 5000, 0, 4462, 108);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `update_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `role`, `created_at`, `update_at`) VALUES
('2GoMToxLuUI0ylng', 'telkomiot2024@gmail.com', 'Admin User', '$2a$10$BJy60982vOTxw2yckTgOW.cvHV7roGFChDt/3sXaCnvam/UHZlcX.', 'admin', '2024-10-14 21:04:23.196000', '2024-10-14 21:04:23.196000'),
('Czi2MzeRDhjILDi2', 'ahlulhikam2222@gmail.com', 'Ahmad Hikam', '$2a$10$Ou5ws5Wn.wnL7otk/EpaSOgGi0XqOL/7TcVlPmlah0MchIkJKcLli', 'admin', '2024-10-14 00:02:45.472000', '2024-10-14 00:02:45.472000'),
('K_5uc-pktibK578Z', 'user@gmail.com', 'Default User', '$2a$10$M7gEZOVb1/XbZ2TaktM02e2wBBTJQKcSdvyXrLYaZogplYCNMf2wi', 'user', '2024-10-14 21:16:23.271000', '2024-10-14 21:16:23.271000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
