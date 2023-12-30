-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 01:39 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project_unisnu`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` longtext NOT NULL,
  `citizen_id` varchar(16) DEFAULT NULL,
  `birth_place` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `blood_type` enum('A','B','AB','O') DEFAULT NULL,
  `address` text DEFAULT NULL,
  `village_id` char(13) DEFAULT NULL,
  `religion_id` int(11) DEFAULT NULL,
  `marital_id` int(11) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `citizen_type` enum('WNI','WNA') DEFAULT NULL,
  `issued_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fullname`, `user_name`, `user_password`, `citizen_id`, `birth_place`, `birth_date`, `gender`, `blood_type`, `address`, `village_id`, `religion_id`, `marital_id`, `job_title`, `citizen_type`, `issued_date`) VALUES
(3, 'SHEARLY ', 'SHEARLY', '1234', 'SHRLY', 'JEPARA', '2004-07-27', 'Perempuan', 'A', 'desa pulodarat rt 04 rw 01 pecangaan jepara jawa tengah', '1101012001', 1, 1, 'mahasiswa', 'WNI', '2023-12-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_user_reg_villages1` (`village_id`),
  ADD KEY `fk_user_religion1` (`religion_id`),
  ADD KEY `fk_user_marital1` (`marital_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_marital1` FOREIGN KEY (`marital_id`) REFERENCES `marital` (`marital_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_reg_villages1` FOREIGN KEY (`village_id`) REFERENCES `reg_villages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_religion1` FOREIGN KEY (`religion_id`) REFERENCES `religion` (`religion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
