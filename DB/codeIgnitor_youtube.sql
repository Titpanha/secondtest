-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2018 at 12:30 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeIgnitor_youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `create_at`) VALUES
(2, 1, 'Technology', '2018-07-19 02:40:17'),
(8, 2, 'News', '2018-07-21 05:22:54'),
(9, 1, 'Business', '2018-08-13 09:43:53'),
(10, 1, 'test', '2018-08-15 07:03:32'),
(11, 2, 'hello', '2018-08-20 07:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `body`, `created_at`) VALUES
(1, 21, 0, 'hello', '2018-07-20 03:48:32'),
(2, 21, 0, 'Thank for your comments', '2018-07-20 04:09:51'),
(3, 26, 0, 'this is greate', '2018-07-31 08:32:32'),
(4, 35, 0, 'wow that cool tablet', '2018-08-14 08:39:32'),
(5, 35, 0, 'HELLO', '2018-08-14 10:09:00'),
(6, 40, 0, 'asdas', '2018-08-27 01:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `gallery_title` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(35, 8, 1, 'Samsung Galaxy Tab A 10.5', 'Samsung-Galaxy-Tab-A-105', '<p>The&nbsp;frequently-leaked&nbsp;Galaxy Tab S4 was finally announced&nbsp;a couple of hours ago, but that&#39;s not the only tablet Samsung took the wraps off of today. The more budget-oriented Galaxy Tab A line now has a 10.5&quot; variant, making it a Tab S4 lookalike for (presumably) a lot less money.</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dimensions</td>\r\n			<td style=\"vertical-align:top\">260.0 x 161.1 x 8.0mm, 529g (Wi-Fi) or 534g (LTE)</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Screen</td>\r\n			<td style=\"vertical-align:top\">10.5&quot; 1920x1200 TFT LCD</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Processor</td>\r\n			<td style=\"vertical-align:top\">Snapdragon 450, octa-core</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RAM</td>\r\n			<td style=\"vertical-align:top\">3GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Storage</td>\r\n			<td style=\"vertical-align:top\">32GB w/ microSD expansion</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Camera (rear)</td>\r\n			<td style=\"vertical-align:top\">8MP w/ flash</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Camera (front)</td>\r\n			<td style=\"vertical-align:top\">5MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Battery</td>\r\n			<td style=\"vertical-align:top\">7,300mAh</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Software</td>\r\n			<td style=\"vertical-align:top\">Android 8.1 Oreo</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>When compared to the Tab S4, the Tab A 10.5&quot; is thicker, taller, and heavier, but a bit narrower in spite of both tablets having 10.5&quot; displays. Its 16:10 screen is a decent 1200p, but Samsung unfortunately chose to go with a TFT LCD over an AMOLED like the Tab S4&#39;s. Power is decent; the Snapdragon 450 and 3GB of RAM will keep things moving at a fair pace. All that is backed up by a pretty sizable 7,300mAh battery.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<a href=\"https://www.androidpolice.com/wp-content/uploads/2018/08/SM-T590_002_Back_Black.jpg\"><img src=\"https://www.androidpolice.com/wp-content/uploads/2018/08/SM-T590_002_Back_Black-e1533174885617-217x217.jpg\" style=\"height:217px; width:217px\" /></a>&nbsp;<a href=\"https://www.androidpolice.com/wp-content/uploads/2018/08/SM-T590_002_Back_Blue.jpg\"><img src=\"https://www.androidpolice.com/wp-content/uploads/2018/08/SM-T590_002_Back_Blue-e1533174909718-217x217.jpg\" style=\"height:217px; width:217px\" /></a>&nbsp;<a href=\"https://www.androidpolice.com/wp-content/uploads/2018/08/SM-T590_002_Back_Gray.jpg\"><img src=\"https://www.androidpolice.com/wp-content/uploads/2018/08/SM-T590_002_Back_Gray-e1533174931397-217x217.jpg\" style=\"height:217px; width:217px\" /></a></p>\r\n\r\n<p>The 8MP rear camera is nothing special, but hey, you shouldn&#39;t be taking pictures with a tablet anyway. The 5MP front-facing camera will do the job for video calls. There are four Dolby Atmos-powered speakers, which should make for an above-average audio experience. Android 8.1 Oreo is present, but anything less would be unfortunate. Speaking of unfortunate, there&#39;s no fingerprint sensor.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<a href=\"https://www.androidpolice.com/wp-content/uploads/2018/08/PC_06_DailyBoard.jpg\"><img alt=\"\" src=\"https://www.androidpolice.com/wp-content/uploads/2018/08/PC_06_DailyBoard-668x376.jpg\" style=\"height:376px; width:668px\" /></a></p>\r\n\r\n<p>The Tab A 10.5&quot; will come in blue, black, and white, and in both Wi-Fi and LTE variants. No pricing or availability information was given out, but expect it to be a fair bit cheaper than the $650 Tab S4.</p>\r\n', 'galaxytabs4.jpeg', '2018-08-02 10:20:58'),
(36, 9, 1, 'profile', 'profile', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', '12.jpg', '2018-08-16 08:05:34'),
(37, 9, 2, 'Post One', 'Post-One', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', '12.jpg', '2018-08-16 08:11:35'),
(38, 8, 2, 'Post two', 'Post-two', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', 'gallery5.png', '2018-08-16 08:12:50'),
(40, 11, 1, 'test', 'test', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', '40_cat.jpg', '2018-08-20 09:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `create_at`) VALUES
(1, 'Admin', '2018-08-14 05:00:46'),
(2, 'User', '2018-08-14 05:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profileImage` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `zipcode`, `email`, `username`, `password`, `profileImage`, `register_date`) VALUES
(1, 'Panha', 1, '123', 'admin@admin.com', 'panha', 'e10adc3949ba59abbe56e057f20f883e', '1_profile.jpg', '2018-08-21 02:16:20'),
(2, 'testing', 2, '1234', 'testing@gmail.com', 'test', 'e10adc3949ba59abbe56e057f20f883e', 'avatar_2x.png', '2018-08-16 02:39:51'),
(4, 'test3', 2, '4557', 'test3@gmail.com', 'test3', 'e10adc3949ba59abbe56e057f20f883e', 'avatar_2x.png', '2018-08-16 02:47:12'),
(5, 'text', 2, '12356', 'text@gmail.com', 'text', 'e10adc3949ba59abbe56e057f20f883e', '5_cat.jpg', '2018-08-21 02:29:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
