-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 10, 2022 at 01:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbfood`
--

CREATE TABLE `tbfood` (
  `food_id` int(11) NOT NULL,
  `fldvendor_id` int(11) NOT NULL,
  `foodname` varchar(100) NOT NULL,
  `cost` bigint(15) NOT NULL,
  `cuisines` varchar(50) NOT NULL,
  `paymentmode` varchar(50) NOT NULL,
  `fldimage` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbfood`
--

INSERT INTO `tbfood` (`food_id`, `fldvendor_id`, `foodname`, `cost`, `cuisines`, `paymentmode`, `fldimage`) VALUES
(5, 27, 'Chole Kulche', 50, 'Indian', 'Veg', 'maxresdefault.jpg'),
(6, 27, 'Shahi Panner', 118, 'Indian', 'Veg', 'Shahi-Paneer-Recipe.jpg'),
(7, 26, 'Sushi', 200, 'Japanese', 'Non-Veg', 'makisushi.jpg'),
(9, 27, 'Dal Fry', 200, 'Indian', 'Veg', 'Dhaba_Style_Dal_Fry_Recipe-1.jpg'),
(12, 25, 'Falafel', 500, 'Asian', 'Veg', 'maxresdefault (2).jpg'),
(13, 28, 'Jamaican Patty', 30, 'Asian', 'Veg', 'Jamaican-Beef-Patties-Featured-1.jpg'),
(14, 29, 'Vegan Burger', 120, 'American', 'Veg', 'Veganburger.jpg'),
(15, 29, '\r\nVegan Spaghetti Bolognese', 230, 'Italian', 'Veg', 'spaghettibolognese.jpg'),
(16, 29, 'BBQ Jackfruit Sandwich', 170, 'American', 'Veg', 'jackfruitsandwich.jpg'),
(17, 29, 'Sesame Soba Noodles', 240, 'Italian', 'Veg', 'sobanoodles.jpg'),
(18, 29, 'Roasted Cauliflower Salad', 260, 'American', 'Veg', 'cauliflowersalad.jpg'),
(19, 30, 'BLT with Iced Coffee', 230, 'American', 'Non-Veg', 'bltandicedcoffee.jpg'),
(20, 30, 'Beef Tacos', 180, 'American', 'Non-Veg', 'beeftacos.jpg'),
(21, 30, 'Lasagna', 190, 'Italian', 'Non-Veg', 'lasagna.jpg'),
(22, 30, 'Fried Chicken', 150, 'American', 'Non-Veg', 'friedchicken.jpg'),
(23, 30, 'Burger and Fries', 230, 'American', 'Non-Veg', 'burgerandfries.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `fld_cart_id` int(11) NOT NULL,
  `fld_product_id` bigint(11) NOT NULL,
  `fld_customer_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `fld_cust_id` int(10) NOT NULL,
  `fld_name` varchar(30) NOT NULL,
  `fld_email` varchar(30) NOT NULL,
  `fld_mobile` bigint(10) NOT NULL,
  `fld_preference` text NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`fld_cust_id`, `fld_name`, `fld_email`, `fld_mobile`, `fld_preference`, `password`) VALUES
(1, 'Sam', 'sam@email.com', 9956247821, 'Veg', '123456'),
(2, 'Anish', 'anish@email.com', 9725632148, 'Non-Veg', '123456'),
(3, 'Rahul', 'rahul@email.com', 9326587412, 'Non-Veg', '123456'),
(4, 'Sweta', 'sweta@email.com', 9154823657, 'Veg', '123456'),
(5, 'John Doe', 'johndoe@email.com', 9124245424, 'Non-Veg', 'R8sS8qT4Eaaj@Zf'),
(6, 'Jane Doe', 'janedoe@email.com', 9232453234, 'Veg', '123456'),
(7, 'Gil ', 'gil@email.com', 9123234563, 'Non-Veg', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `fld_msg_id` int(10) NOT NULL,
  `fld_name` varchar(50) NOT NULL,
  `fld_email` varchar(50) NOT NULL,
  `fld_phone` bigint(10) DEFAULT NULL,
  `fld_msg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `fld_order_id` int(10) NOT NULL,
  `fld_cart_id` bigint(10) NOT NULL,
  `fldvendor_id` bigint(10) DEFAULT NULL,
  `fld_food_id` bigint(10) DEFAULT NULL,
  `fld_email_id` varchar(50) DEFAULT NULL,
  `fld_payment` varchar(20) DEFAULT NULL,
  `fldstatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`fld_order_id`, `fld_cart_id`, `fldvendor_id`, `fld_food_id`, `fld_email_id`, `fld_payment`, `fldstatus`) VALUES
(1, 22, 25, 4, 'sweta@email.com', '60', 'Out Of Stock'),
(2, 24, 25, 4, 'sam@email.com', '60', 'cancelled'),
(3, 25, 27, 6, 'sam@email.com', '118', 'Delivered'),
(4, 26, 26, 7, 'johndoe@email.com', '200', 'In Process'),
(5, 27, 27, 5, 'janedoe@email.com', '50', 'In Process'),
(6, 28, 25, 11, 'janedoe@email.com', '175', 'cancelled'),
(7, 29, 28, 13, 'janedoe@email.com', '30', 'In Process'),
(8, 30, 28, 13, 'janedoe@email.com', '30', 'In Process'),
(9, 31, 27, 9, 'janedoe@email.com', '200', 'In Process'),
(10, 32, 28, 13, 'janedoe@email.com', '30', 'In Process'),
(11, 33, 30, 22, 'janedoe@email.com', '150', 'In Process'),
(12, 34, 29, 17, 'janedoe@email.com', '240', 'In Process'),
(13, 35, 29, 15, 'janedoe@email.com', '230', 'In Process'),
(14, 36, 25, 12, 'janedoe@email.com', '500', 'In Process'),
(15, 37, 29, 17, 'janedoe@email.com', '240', 'In Process'),
(16, 38, 29, 16, 'janedoe@email.com', '170', 'In Process'),
(17, 39, 29, 15, 'janedoe@email.com', '230', 'In Process'),
(18, 40, 29, 16, 'janedoe@email.com', '170', 'In Process'),
(19, 41, 29, 16, 'janedoe@email.com', '170', 'In Process'),
(20, 42, 29, 17, 'janedoe@email.com', '240', 'In Process'),
(21, 43, 29, 18, 'janedoe@email.com', '260', 'In Process'),
(22, 44, 29, 17, 'janedoe@email.com', '240', 'In Process'),
(23, 45, 29, 16, 'janedoe@email.com', '170', 'In Process'),
(24, 46, 29, 16, 'janedoe@email.com', '170', 'In Process'),
(25, 47, 28, 13, 'janedoe@email.com', '30', 'cancelled'),
(26, 48, 30, 22, 'gil@email.com', '150', 'In Process'),
(27, 49, 30, 23, 'gil@email.com', '230', 'In Process'),
(28, 50, 30, 22, 'gil@email.com', '150', 'cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `tblvendor`
--

CREATE TABLE `tblvendor` (
  `fldvendor_id` int(10) NOT NULL,
  `fld_name` varchar(30) NOT NULL,
  `fld_email` varchar(50) NOT NULL,
  `fld_password` varchar(50) NOT NULL,
  `fld_mob` bigint(10) NOT NULL,
  `fld_address` varchar(50) NOT NULL,
  `fld_logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvendor`
--

INSERT INTO `tblvendor` (`fldvendor_id`, `fld_name`, `fld_email`, `fld_password`, `fld_mob`, `fld_address`, `fld_logo`) VALUES
(25, 'John\'s Food Hub', 'john@email.com', '123456', 9955123657, 'Kolkata', 'john.jpg'),
(26, 'Eden Inn', 'hoteleden@email.com', '123456', 9568712354, 'Delhi', 'hotel_eden.jpg'),
(27, 'Daniel\'s', 'ddhaba@email.com', '123456', 9563214785, 'Punjab', 'dhaba.jpg'),
(28, 'Ivan', 'ivan@email.com', '123456', 935626324, 'Manila, Philippines', 'ivan.jpg'),
(29, 'Shaker\'s Veggies', 'shak@email.com', '123456', 9827173727, 'Cavite', 'healthy food social media template (Facebook Post).png'),
(30, 'VJ\'s Kitchen', 'vj@email.com', '123456', 9243923492, 'Cavite', 'Watercolor Food Logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbfood`
--
ALTER TABLE `tbfood`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `fldvendor_id` (`fldvendor_id`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`fld_cart_id`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`fld_cust_id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`fld_msg_id`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`fld_order_id`);

--
-- Indexes for table `tblvendor`
--
ALTER TABLE `tblvendor`
  ADD PRIMARY KEY (`fldvendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbfood`
--
ALTER TABLE `tbfood`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `fld_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `fld_cust_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `fld_msg_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `fld_order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblvendor`
--
ALTER TABLE `tblvendor`
  MODIFY `fldvendor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbfood`
--
ALTER TABLE `tbfood`
  ADD CONSTRAINT `tbfood_ibfk_1` FOREIGN KEY (`fldvendor_id`) REFERENCES `tblvendor` (`fldvendor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
