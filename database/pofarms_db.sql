-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 03:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pofarms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `type` enum('Administrator','Admin','Staff','Affordable','Premium') NOT NULL DEFAULT 'Admin',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `telephone`, `u_name`, `email`, `password`, `address`, `type`, `date`) VALUES
(1, 'Poultry Farm', '9841111111', 'Nischal Baidar', 'nis@gmail.com', '354b28c72430b1b5380fa28fd26acd4c', 'Banepa', 'Admin', '2020-07-31 11:31:12'),
(32, 'Poultry Farm', '9863341660', 'Sushant', 'sus@gmail.com', 'dea5687d7786d43266cf55d7be014530', 'Banepa', 'Premium', '2024-09-04 08:21:37'),
(33, 'Poultry Farm', '9863341660', 'Mukesh', 'muk@gmail.com', 'a883bde368145d717b99c70594fd6069', 'Banepa', 'Affordable', '2024-09-04 08:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `bank_acc`
--

CREATE TABLE `bank_acc` (
  `id` int(11) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_bal`
--

CREATE TABLE `bank_bal` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `no` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` double(9,2) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chicken_sale`
--

CREATE TABLE `chicken_sale` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `paid` double(9,2) NOT NULL,
  `l_no` varchar(15) NOT NULL,
  `u_price` double(9,2) NOT NULL,
  `no_chickens` varchar(25) NOT NULL,
  `t_amount` double(9,2) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chicken_sale`
--

INSERT INTO `chicken_sale` (`id`, `name_idd`, `customer`, `paid`, `l_no`, `u_price`, `no_chickens`, `t_amount`, `date`) VALUES
(7, 'Poultry Farm', 'Bainash bai', 12.00, '12', 1.00, '122', 122.00, '09/04/2024');

-- --------------------------------------------------------

--
-- Table structure for table `chick_purchase`
--

CREATE TABLE `chick_purchase` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `date` varchar(25) NOT NULL,
  `b_no` varchar(15) NOT NULL,
  `l_no` varchar(15) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `u_price` double(9,2) NOT NULL,
  `t_amount` double(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chick_purchase`
--

INSERT INTO `chick_purchase` (`id`, `name_idd`, `date`, `b_no`, `l_no`, `supplier`, `qty`, `u_price`, `t_amount`) VALUES
(8, 'Poultry Farm', '09/04/2024', '1', '12', 'Bainash', '12', 123.00, 1476.00),
(9, 'Poultry Farm', '09/04/2024', '12', '12312', 'Bainash', '1', 12.00, 12.00),
(10, 'Poultry Farm', '09/03/2024', '12', '12312', 'Bainash', '12', 12.00, 144.00);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `name_idd`, `customer`, `telephone`, `address`) VALUES
(5, 'Poultry Farm', 'Bainash bai', '9863341660', 'Banepa');

-- --------------------------------------------------------

--
-- Table structure for table `client_balance`
--

CREATE TABLE `client_balance` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `amount` double(9,2) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `egg_sale`
--

CREATE TABLE `egg_sale` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `l_no` varchar(15) NOT NULL,
  `paid` double(9,2) NOT NULL,
  `u_price` double(9,2) NOT NULL,
  `t_trays` varchar(10) NOT NULL,
  `t_amount` double(9,2) NOT NULL,
  `date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `egg_sale`
--

INSERT INTO `egg_sale` (`id`, `name_idd`, `customer`, `l_no`, `paid`, `u_price`, `t_trays`, `t_amount`, `date`) VALUES
(7, 'Poultry Farm', 'Bainash bai', '12', 12.00, 12.00, '12', 144.00, '09/04/2024');

-- --------------------------------------------------------

--
-- Table structure for table `egg_tray`
--

CREATE TABLE `egg_tray` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `tray` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `egg_tray`
--

INSERT INTO `egg_tray` (`id`, `name_idd`, `tray`) VALUES
(1, 'Poultry Farm', 50),
(2, 'Poultry Farm', 600),
(3, 'Poultry Farm', 300),
(4, 'Poultry Farm', 350),
(5, 'Poultry Farm', 123);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `name_idd`, `type`) VALUES
(4, 'Poultry Farm', 'Administration expenses'),
(3, 'Poultry Farm', 'Cost of goods sold'),
(6, 'Poultry Farm', 'Depreciation'),
(5, 'Poultry Farm', 'Finance costs'),
(7, 'Poultry Farm', 'Impairment losses'),
(1, 'Poultry Farm', 'Salaries and wages'),
(2, 'Poultry Farm', 'Utility expenses');

-- --------------------------------------------------------

--
-- Table structure for table `expense_entry`
--

CREATE TABLE `expense_entry` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` double(9,2) NOT NULL,
  `date` varchar(25) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense_entry`
--

INSERT INTO `expense_entry` (`id`, `name_idd`, `type`, `amount`, `date`, `comments`) VALUES
(5, 'Poultry Farm', 'Administration expenses', 2.00, '09/04/2024', '`1');

-- --------------------------------------------------------

--
-- Table structure for table `fcr`
--

CREATE TABLE `fcr` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `date` varchar(15) NOT NULL,
  `a_chicks` varchar(15) NOT NULL,
  `chick_weight` double(9,2) NOT NULL,
  `feed_con` double(9,2) NOT NULL,
  `fcr` double(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feed_consumption`
--

CREATE TABLE `feed_consumption` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `no_bags` int(15) NOT NULL,
  `date` varchar(25) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feed_purchase`
--

CREATE TABLE `feed_purchase` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `date` varchar(25) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `u_price` double(9,2) NOT NULL,
  `t_amount` double(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feed_purchase`
--

INSERT INTO `feed_purchase` (`id`, `name_idd`, `date`, `qty`, `type`, `supplier`, `u_price`, `t_amount`) VALUES
(9, 'Poultry Farm', '09/04/2024', '12', 'Broiler Feed', 'Bainash', 12.00, 144.00);

-- --------------------------------------------------------

--
-- Table structure for table `feed_type`
--

CREATE TABLE `feed_type` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feed_type`
--

INSERT INTO `feed_type` (`id`, `name_idd`, `type`) VALUES
(2, 'Poultry Farm', 'Cracked Corn'),
(3, 'Poultry Farm', 'Fermented Feed'),
(4, 'Poultry Farm', 'Game Bird Feed'),
(5, 'Poultry Farm', 'Broiler Feed'),
(6, 'Poultry Farm', 'Flock Raiser'),
(7, 'Poultry Farm', 'Grower Feed'),
(8, 'Poultry Farm', 'Chick Starter');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_name`
--

CREATE TABLE `medicine_name` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_name`
--

INSERT INTO `medicine_name` (`id`, `name_idd`, `name`) VALUES
(1, 'Poultry Farm', 'Aminoglycosides'),
(2, 'Poultry Farm', 'Bambermycins'),
(3, 'Poultry Farm', 'Beta-Lactams'),
(4, 'Poultry Farm', 'Penicillins'),
(5, 'Poultry Farm', 'Cephalosporins'),
(6, 'Poultry Farm', 'Ionophores'),
(7, 'Poultry Farm', 'Lincosamides'),
(8, 'Poultry Farm', 'Macrolides');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_puchase`
--

CREATE TABLE `medicine_puchase` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `date` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `t_amount` double(9,2) NOT NULL,
  `supplier` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_puchase`
--

INSERT INTO `medicine_puchase` (`id`, `name_idd`, `date`, `name`, `rate`, `qty`, `t_amount`, `supplier`) VALUES
(9, 'Poultry Farm', '09/04/2024', '', '12', '12', 1213.00, 'Bainash');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(15) NOT NULL,
  `name_idd` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name_idd`, `name`, `telephone`, `city`, `state`, `country`, `address`) VALUES
(4, 'Poultry Farm', 'Bainash', '9863341660', 'Banepa', 'Banepa', 'Nepal', 'Banepa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `u_name` (`u_name`);

--
-- Indexes for table `bank_acc`
--
ALTER TABLE `bank_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_bal`
--
ALTER TABLE `bank_bal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chicken_sale`
--
ALTER TABLE `chicken_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer`);

--
-- Indexes for table `chick_purchase`
--
ALTER TABLE `chick_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idd` (`name_idd`,`supplier`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idd` (`name_idd`,`customer`);

--
-- Indexes for table `client_balance`
--
ALTER TABLE `client_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idd` (`name_idd`,`customer`);

--
-- Indexes for table `egg_sale`
--
ALTER TABLE `egg_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idd` (`name_idd`,`customer`);

--
-- Indexes for table `egg_tray`
--
ALTER TABLE `egg_tray`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idd` (`name_idd`,`type`);

--
-- Indexes for table `expense_entry`
--
ALTER TABLE `expense_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `name_idd` (`name_idd`,`type`);

--
-- Indexes for table `fcr`
--
ALTER TABLE `fcr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idd` (`name_idd`,`fcr`);

--
-- Indexes for table `feed_consumption`
--
ALTER TABLE `feed_consumption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_purchase`
--
ALTER TABLE `feed_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idd` (`name_idd`,`supplier`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `feed_type`
--
ALTER TABLE `feed_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idd` (`name_idd`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `medicine_name`
--
ALTER TABLE `medicine_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_puchase`
--
ALTER TABLE `medicine_puchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idd` (`name_idd`,`name`,`supplier`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_idd` (`name_idd`,`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `bank_acc`
--
ALTER TABLE `bank_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bank_bal`
--
ALTER TABLE `bank_bal`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chicken_sale`
--
ALTER TABLE `chicken_sale`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chick_purchase`
--
ALTER TABLE `chick_purchase`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client_balance`
--
ALTER TABLE `client_balance`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `egg_sale`
--
ALTER TABLE `egg_sale`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `egg_tray`
--
ALTER TABLE `egg_tray`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `expense_entry`
--
ALTER TABLE `expense_entry`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fcr`
--
ALTER TABLE `fcr`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_consumption`
--
ALTER TABLE `feed_consumption`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feed_purchase`
--
ALTER TABLE `feed_purchase`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feed_type`
--
ALTER TABLE `feed_type`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicine_name`
--
ALTER TABLE `medicine_name`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medicine_puchase`
--
ALTER TABLE `medicine_puchase`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chick_purchase`
--
ALTER TABLE `chick_purchase`
  ADD CONSTRAINT `chick_purchase_ibfk_1` FOREIGN KEY (`name_idd`) REFERENCES `accounts` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
