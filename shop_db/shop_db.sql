-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2024 at 02:51 PM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(119, 11, 'Silent patient', 55, 1, 'silent_patient.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(12, 4, 'Saim', 'Saim885@gmail.com', '03081808805', 'Hello admin'),
(14, 4, 'Saim', 'Saim885@gmail.com', '03081808805', 'How are you?'),
(15, 4, 'Hassan', 'Hassan885@gmail.com', '03088108805', 'Hello, Admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(16, 4, 'saim', '03081808805', 'Saim@885', 'cash on delivery', 'flat no. 12, Depalpur road okara, okara, pakistan - 56300', ', Clever lands (5) ', 100, '12-Aug-2023', 'pending'),
(17, 3, 'usama', '03076570094', 'usama885@gmail.com', 'cash on delivery', 'flat no. 12, Depalpur road okara, okara, pakistan - 56300', ', Freefall (1) ', 50, '12-Aug-2023', 'completed'),
(19, 16, 'Uzair', '000', 'Uzair885@gmail.com', 'cash on delivery', 'flat no. 12, Okara, Okara, Pakistan - 56300', ', Sociology of health and medicine (1) ', 35, '18-Jul-2024', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `price`, `image`) VALUES
(1, 'The Arts', 'art', 20, 'Art1.jpg'),
(2, 'The art of rivalry', 'art', 30, 'Art2.jpg'),
(3, 'The secret lives of color', 'art', 35, 'Art4.jpg'),
(4, 'The art of the con', 'art', 35, 'Art3.jpg'),
(5, 'Bash and lucky', 'best', 40, 'bash_and_lucy.jpg'),
(6, 'Be well be', 'best', 30, 'be_well_bee.jpg'),
(7, 'Boring Girls', 'best', 35, 'boring_girls_a_novel.jpg'),
(8, 'Clever lands', 'best', 50, 'clever_lands.jpg'),
(9, 'Darknet', 'best', 55, 'darknet.jpg'),
(10, 'Economics', 'best', 60, 'economic.jpg'),
(11, 'Forever never', 'best', 55, 'Forever-Never.png'),
(12, 'Freefall', 'best', 30, 'freefall.jpg'),
(13, 'Girl Interrupted', 'best', 70, 'girl_interrupted.jpg'),
(14, 'Holy Ghosts', 'best', 30, 'holy_ghosts.jpg'),
(15, 'King of Pride', 'best', 45, 'king-of-pride.jpg'),
(16, 'Lloyd', 'best', 25, 'lloyd.jpg'),
(17, 'Nightshade', 'best', 50, 'nightshade.jpg'),
(18, 'Radical gardening', 'best', 60, 'radical_gardening.jpg'),
(19, 'Red Queen', 'best', 75, 'red_queen.jpg'),
(20, 'The right move', 'best', 35, 'right_move.jpg'),
(21, 'Silent patient', 'best', 55, 'silent_patient.jpg'),
(22, 'The happy lemon', 'best', 70, 'the_happy_lemon.jpg'),
(23, 'The world', 'best', 60, 'the_world.jpg'),
(24, 'Book of night', 'fantasy', 35, 'fantasy1.jpg'),
(25, 'Prince of throns', 'fantasy', 50, 'fantasy2.jpeg'),
(27, 'Jade city', 'fantasy', 75, 'fantasy4.jpg'),
(28, 'The name of wind', 'fantasy', 50, 'fantasy3.jpg'),
(29, 'Spirit run', 'adventure', 35, 'adventure1.jpg'),
(30, 'Life of pi', 'adventure', 40, 'adventure2.jpg'),
(31, 'Lands of lost borders', 'adventure', 50, 'adventure3.jpg'),
(32, 'Miracle Cure', 'adventure', 55, 'adventure4.jpg'),
(33, 'The Hobbit', 'adventure', 60, 'adventure5.jpg'),
(34, 'Dracula', 'adventure', 25, 'adventure6.jpg'),
(35, 'The Alchemist', 'adventure', 35, 'adventure7.jpg'),
(36, 'The last kids on earth', 'adventure', 55, 'adventure8.jpg'),
(37, 'American royalty', 'romance', 35, 'r1.jpg'),
(38, 'Business or Pleasure', 'romance', 55, 'r2.jpg'),
(39, 'Bridgerton', 'romance', 45, 'r3.jpg'),
(40, 'Captive in the dark', 'romance', 60, 'r4.webp'),
(41, 'The roughest draft', 'romance', 55, 'r5.jpg'),
(42, 'Love match', 'romance', 60, 'r6.jpg'),
(43, 'The first world war', 'history', 50, 'h1.webp'),
(44, 'Ancient world', 'history', 70, 'h2.jpeg'),
(45, 'Hitler', 'history', 60, 'h3.jpg'),
(48, 'The evolution of everything', 'history', 90, 'h5.webp'),
(50, 'How not to die', 'health', 55, 'health1.jpg'),
(51, 'The telemore effect', 'health', 65, 'health2.jpg'),
(52, 'Biohack your brain', 'health', 80, 'health3.jpeg'),
(53, 'The sleep revolution', 'health', 55, 'health4.jpg'),
(54, 'Sociology of health and medicine', 'health', 35, 'health5.jpg'),
(55, 'Cleaning up your menta mess', 'health', 65, 'health6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Admin', 'Admin885@gmail.com', 'adcd4f22a9430cfb3b4ccc803d1be525', 'admin'),
(2, 'Admin', 'Admin8885@gmail.com', 'adcd4f22a9430cfb3b4ccc803d1be525', 'admin'),
(3, 'Usama', 'Usama885@gmail.com', '13e6f03c089a40c954d686a6f213dcf3', 'user'),
(4, 'Saim', 'Saim885@gmail.com', '7ce85d9fa72255f661ac0a50553066d3', 'user'),
(5, 'Haris', 'Haris885@gmail.com', 'e1bfcbfe5f4309dfe0d4fca257d4c297', 'user'),
(6, 'Ali', 'Ali885@gmail.com', '73a1fa0693df3051c901d9d67b988e0e', 'user'),
(7, 'Awais', 'Awais885@gmail.com', '620d63100db12a6974c6331911582dea', 'user'),
(8, 'Zain', 'Zain885@gmail.com', 'e0e4c9bcf28d0b00baa85ff5348bc65d', 'user'),
(9, 'Asad', 'Asad885@gmail.com', 'a147a8ab95083eff96c25a928ba48aed', 'user'),
(10, 'Ahmed', 'Ahmed885@gmail.com', '5c443920dd237eb6d84ab55c6c6c56d5', 'user'),
(11, 'Nawaz', 'Nawaz885@gmail.com', '1db7ae0c5ad887741210b1f815b0a74b', 'user'),
(12, 'Hassan', 'Hassan885@gmail.com', 'b02658c8d0201a95c7967027d54b1f08', 'user'),
(13, 'Saim', 'Saim885@gmail.com', '7ce85d9fa72255f661ac0a50553066d3', 'user'),
(14, 'Nouman', 'Nouman885@gmail.com', 'bd98f8bb7b27522e3cb113efcefa3101', 'user'),
(15, 'namw', 'Saim885@gmail.com', '4f1fc8e3ebf340dba723343a5906a86a', 'user'),
(16, 'Uzair', 'Uzair885@gmail.com', '9108f3a24c5e842dc26c05c1b2e8c1f5', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
