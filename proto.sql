-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 03:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proto`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `addedby` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `datetime`, `username`, `password`, `aname`, `addedby`) VALUES
(1, '2020-04-19 21:47:46', 'admina', '12345', '', 'Tahir'),
(2, '2020-04-19 21:49:03', 'iqra', '12345', 'iqra i', 'Tahir'),
(3, '2020-04-19 22:04:45', 'aa', '12345', '', 'Tahir'),
(4, '2020-04-19 22:05:23', 'tom', '12345', 'tom', 'Tahir');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `datetime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `author`, `datetime`) VALUES
(1, 'Laravel', 'Tahir', '2020-04-18 23:25:49'),
(2, 'PHP', 'Tahir', '2020-04-18 23:25:54'),
(3, 'MySQL', 'Tahir', '2020-04-18 23:26:13'),
(4, 'HTML', 'Tahir', '2020-04-18 23:26:27'),
(5, 'CSS3', 'Tahir', '2020-04-18 23:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `approvedby` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL,
  `post_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `datetime`, `name`, `email`, `comment`, `approvedby`, `status`, `post_id`) VALUES
(4, 'April-19-2020 00:08:21', 'iqra', 'iq@gm.com', 'Lorem ipsum dolor sit amet, consectetur adipisicin', 'Pending', 'ON', 8),
(5, 'April-19-2020 00:13:59', 'com 1', 'com1@gm.com', 'Lorem ipsum dolor sit amet, consectetur adipisicin', 'Pending', 'ON', 8),
(6, 'April-20-2020 18:32:35', 'com 2', 'com2@gm.com', '\r\nLorem ipsum dolor sit amet, consectetur adipisic', 'Pending', 'OFF', 8);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `title` varchar(300) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `post` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `datetime`, `title`, `category`, `author`, `image`, `post`) VALUES
(1, '2020-04-18 23:28:47', 'laravel post 1', 'Laravel', 'Tahir', '001.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor iusto iure sint quidem inventore, sapiente, quo architecto adipisci eligendi voluptate cum beatae assumenda enim eius? Aspernatur, accusantium. Error blanditiis rem voluptatum quaerat necessitatibus incidunt aliquam nam, cupiditate rerum corrupti mollitia. Provident libero temporibus corporis distinctio maiores quidem magnam perferendis eum?'),
(2, '2020-04-18 23:29:19', 'laravel post 2', 'Laravel', 'Tahir', '002.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor iusto iure sint quidem inventore, sapiente, quo architecto adipisci eligendi voluptate cum beatae assumenda enim eius? Aspernatur, accusantium. Error blanditiis rem voluptatum quaerat necessitatibus incidunt aliquam nam, cupiditate rerum corrupti mollitia. Provident libero temporibus corporis distinctio maiores quidem magnam perferendis eum?'),
(3, '2020-04-18 23:29:40', 'laravel post 3', 'Laravel', 'Tahir', '003.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor iusto iure sint quidem inventore, sapiente, quo architecto adipisci eligendi voluptate cum beatae assumenda enim eius? Aspernatur, accusantium. Error blanditiis rem voluptatum quaerat necessitatibus incidunt aliquam nam, cupiditate rerum corrupti mollitia. Provident libero temporibus corporis distinctio maiores quidem magnam perferendis eum?'),
(4, '2020-04-18 23:30:04', 'php post 1', 'PHP', 'Tahir', '008.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor iusto iure sint quidem inventore, sapiente, quo architecto adipisci eligendi voluptate cum beatae assumenda enim eius? Aspernatur, accusantium. Error blanditiis rem voluptatum quaerat necessitatibus incidunt aliquam nam, cupiditate rerum corrupti mollitia. Provident libero temporibus corporis distinctio maiores quidem magnam perferendis eum?'),
(5, '2020-04-18 23:30:23', 'php post 2', 'PHP', 'Tahir', '007.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor iusto iure sint quidem inventore, sapiente, quo architecto adipisci eligendi voluptate cum beatae assumenda enim eius? Aspernatur, accusantium. Error blanditiis rem voluptatum quaerat necessitatibus incidunt aliquam nam, cupiditate rerum corrupti mollitia. Provident libero temporibus corporis distinctio maiores quidem magnam perferendis eum?'),
(6, '2020-04-18 23:30:52', 'php post 2', 'PHP', 'Tahir', '006.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor iusto iure sint quidem inventore, sapiente, quo architecto adipisci eligendi voluptate cum beatae assumenda enim eius? Aspernatur, accusantium. Error blanditiis rem voluptatum quaerat necessitatibus incidunt aliquam nam, cupiditate rerum corrupti mollitia. Provident libero temporibus corporis distinctio maiores quidem magnam perferendis eum?'),
(7, '2020-04-18 23:31:22', 'html post 1', 'HTML', 'Tahir', '005.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor iusto iure sint quidem inventore, sapiente, quo architecto adipisci eligendi voluptate cum beatae assumenda enim eius? Aspernatur, accusantium. Error blanditiis rem voluptatum quaerat necessitatibus incidunt aliquam nam, cupiditate rerum corrupti mollitia. Provident libero temporibus corporis distinctio maiores quidem magnam perferendis eum?'),
(8, '2020-04-18 23:31:56', 'html post 2', 'HTML', 'Tahir', '004.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor iusto iure sint quidem inventore, sapiente, quo architecto adipisci eligendi voluptate cum beatae assumenda enim eius? Aspernatur, accusantium. Error blanditiis rem voluptatum quaerat necessitatibus incidunt aliquam nam, cupiditate rerum corrupti mollitia. Provident libero temporibus corporis distinctio maiores quidem magnam perferendis eum?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`) USING BTREE;

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `Foreign_Relation` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
