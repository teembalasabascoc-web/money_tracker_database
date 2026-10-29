-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2026 at 07:39 AM
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
-- Database: `money_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` int(11) NOT NULL,
  `id_number` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `expense_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `id_number`, `category`, `description`, `amount`, `expense_date`) VALUES
(1, '103', 'Necessities', 'water', 120.00, '2026-10-07'),
(2, '103', 'Necessities', 'food', 400.00, '2026-10-07'),
(3, '103', 'Food', 'dinner', 600.00, '2026-10-07'),
(4, '103', 'Necessities', 'yeah', 200.00, '2026-10-08'),
(5, '103', 'Necessities', 'clothing', 270.00, '2026-10-13'),
(1, '104', 'Necessities', 'Water', 250.00, '2026-05-10'),
(2, '104', 'Wants', 'Monitor', 1200.00, '2026-05-10'),
(3, '104', 'Food', 'lunch', 50.00, '2026-05-10'),
(4, '104', 'Necessities', 'Electricity', 200.00, '2026-06-10'),
(5, '104', 'Wants', 'keyboar', 600.00, '2026-06-10'),
(6, '104', 'Food', 'Lunch', 100.00, '2026-06-10'),
(7, '104', 'Necessities', 'Water', 150.00, '2026-07-10'),
(8, '104', 'Wants', 'Mouse', 120.00, '2026-07-10'),
(9, '104', 'Food', 'Snacks', 30.00, '2026-07-10'),
(10, '104', 'Necessities', 'Electricity', 200.00, '2026-08-10'),
(11, '104', 'Wants', 'PC', 2500.00, '2026-08-10'),
(12, '104', 'Food', 'Lunch', 150.00, '2026-08-10'),
(13, '104', 'Necessities', 'Debt', 200.00, '2026-09-10'),
(14, '104', 'Wants', 'HDMI + VGA', 500.00, '2026-09-10'),
(15, '104', 'Food', 'Lunch', 150.00, '2026-09-10'),
(16, '104', 'Necessities', 'Electricity', 200.00, '2026-10-10'),
(17, '104', 'Wants', 'SSD SATA', 1000.00, '2026-10-10'),
(18, '104', 'Food', 'Snacks', 200.00, '2026-10-10'),
(1, '105', 'Necessities', 'water', 200.00, '2026-10-12'),
(2, '105', 'Wants', 'keyboard', 500.00, '2026-10-12'),
(3, '105', 'Food', 'Lunch', 120.00, '2026-10-12'),
(4, '105', 'Food', 'snacks', 50.00, '2026-10-12'),
(1, '106', 'Necessities', 'Medicine', 450.00, '2026-10-13'),
(2, '106', 'Wants', 'Gym Memberships', 300.00, '2026-10-13'),
(3, '106', 'Food', 'Egg', 33.00, '2026-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `income_history`
--

CREATE TABLE `income_history` (
  `history_id` int(11) NOT NULL,
  `id_number` varchar(30) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income_history`
--

INSERT INTO `income_history` (`history_id`, `id_number`, `amount`, `date_added`) VALUES
(5, '103', 6000.00, '2026-10-06'),
(6, '103', 500.00, '2026-10-07'),
(7, '104', 3000.00, '2026-05-10'),
(8, '104', 3000.00, '2026-06-10'),
(9, '104', 3000.00, '2026-07-10'),
(10, '104', 2500.00, '2026-08-10'),
(11, '104', 3000.00, '2026-09-10'),
(12, '104', 2500.00, '2026-10-10'),
(13, '104', 200.00, '2026-10-10'),
(14, '105', 6000.00, '2026-10-12'),
(15, '103', 1000.00, '2026-10-13'),
(16, '106', 5000.00, '2026-10-13'),
(17, '107', 6000.00, '2026-10-14'),
(18, '108', 6000.00, '2026-10-14'),
(19, '104', 1000.00, '2026-10-14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_number` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `income` decimal(12,2) NOT NULL,
  `security_answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_number`, `fname`, `lname`, `password`, `income`, `security_answer`) VALUES
(103, 'Teddymar', 'Balasabas', '@Ba12345', 7500.00, 'cat'),
(104, 'Balasabas', 'Teddymar', '@Ba54321', 18200.00, 'cat'),
(105, 'Teddy', 'Mar', '#Aa123654', 6000.00, 'fish'),
(106, 'John', 'Mike', '!Jj78945', 5000.00, 'Dog'),
(107, 'Mar', 'Balasabas', 'Bb@12345', 6000.00, 'cat'),
(108, '123', '123', 'Aa@12345', 6000.00, 'cat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id_number`,`expense_id`);

--
-- Indexes for table `income_history`
--
ALTER TABLE `income_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `income_history`
--
ALTER TABLE `income_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
