-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 18, 2023 at 04:42 PM
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
-- Database: `ebankingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_acc_types`
--

CREATE TABLE `tbl_acc_types` (
  `acctype_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `rate` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_acc_types`
--

INSERT INTO `tbl_acc_types` (`acctype_id`, `name`, `description`, `rate`, `code`) VALUES
(1, 'Savings', '<p>Savings accounts&nbsp;are typically the first official bank account anybody opens. Children may open an account with a parent to begin a pattern of saving. Teenagers open accounts to stash cash earned&nbsp;from a first job&nbsp;or household chores.</p><p>Savings accounts are an excellent place to park&nbsp;emergency cash. Opening a savings account also marks the beginning of your relationship with a financial institution. For example, when joining a credit union, your &ldquo;share&rdquo; or savings account establishes your membership.</p>', '20', 'ACC-CAT-4EZFO'),
(2, ' Retirement', '<p>Retirement accounts&nbsp;offer&nbsp;tax advantages. In very general terms, you get to&nbsp;avoid paying income tax on interest&nbsp;you earn from a savings account or CD each year. But you may have to pay taxes on those earnings at a later date. Still, keeping your money sheltered from taxes may help you over the long term. Most banks offer IRAs (both&nbsp;Traditional IRAs&nbsp;and&nbsp;Roth IRAs), and they may also provide&nbsp;retirement accounts for small businesses</p>', '10', 'ACC-CAT-1QYDV'),
(4, 'Recurring deposit', '<p><strong>Recurring deposit account or RD account</strong> is opened by those who want to save certain amount of money regularly for a certain period of time and earn a higher interest rate.&nbsp;In RD&nbsp;account a&nbsp;fixed amount is deposited&nbsp;every month for a specified period and the total amount is repaid with interest at the end of the particular fixed period.&nbsp;</p><p>The period of deposit is minimum six months and maximum ten years.&nbsp;The interest rates vary&nbsp;for different plans based on the amount one saves and the period of time and also on banks. No withdrawals are allowed from the RD account. However, the bank may allow to close the account before the maturity period.</p><p>These accounts can be opened in single or joint names. Banks are also providing the Nomination facility to the RD account holders.&nbsp;</p>', '15', 'ACC-CAT-VBQLE'),
(5, 'Fixed Deposit Account', '<p>In <strong>Fixed Deposit Account</strong> (also known as <strong>FD Account</strong>), a particular sum of money is deposited in a bank for specific&nbsp;period of time. It&rsquo;s one time deposit and one time take away (withdraw) account.&nbsp;The money deposited in this account can not be withdrawn before the expiry of period.&nbsp;</p><p>However, in case of need,&nbsp; the depositor can ask for closing the fixed deposit prematurely by paying a penalty. The penalty amount varies with banks.</p><p>A high interest rate is paid on fixed deposits. The rate of interest paid for fixed deposit vary according to amount, period and also from bank to bank.</p>', '40', 'ACC-CAT-A86GO'),
(7, 'Current account', '<p><strong>Current account</strong> is mainly for business persons, firms, companies, public enterprises etc and are never used for the purpose of investment or savings.These deposits are the most liquid deposits and there are no limits for number of transactions or the amount of transactions in a day. While, there is no interest paid on amount held in the account, banks charges certain &nbsp;service charges, on such accounts. The current accounts do not have any fixed maturity as these are on continuous basis accounts.</p>', '20', 'ACC-CAT-4O8QW');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `name`, `email`, `number`, `password`, `profile_pic`) VALUES
(3, 'Admin', 'admin@gmail.com', '', '51f4877f8a76f0e38d81bc92ce56c68dffffe1ba', ''),
(4, 'kaka', 'kaka@gmail.com', '0756980065', '397d5e355bc0f1e4ca454a5a4d4a7615d581dd72', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankaccounts`
--

CREATE TABLE `tbl_bankaccounts` (
  `account_id` int(20) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_rates` varchar(200) NOT NULL,
  `acc_status` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL,
  `client_email` varchar(200) NOT NULL,
  `client_adr` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bankaccounts`
--

INSERT INTO `tbl_bankaccounts` (`account_id`, `acc_name`, `account_number`, `acc_type`, `acc_rates`, `acc_status`, `acc_amount`, `client_id`, `client_name`, `client_national_id`, `client_phone`, `client_number`, `client_email`, `client_adr`, `created_at`) VALUES
(19, 'Client deposit', '672195430', 'Fixed Deposit Account ', '40', 'Active', '0', '12', 'client', '35789835', '0790354085', 'eBank-CLIENT-9467', 'client@gmail.com', 'Nairobi-street', '2023-07-30 12:27:17.913620'),
(20, 'Lenard Savings', '678521039', 'Savings ', '20', 'Active', '0', '14', 'Lenard Omusula', '38781858', '0745354076', 'eBank-CLIENT-4512', 'lenardomusula@gmail.com', 'Nairobi', '2023-07-30 15:25:47.724778');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clients`
--

CREATE TABLE `tbl_clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `national_id` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_clients`
--

INSERT INTO `tbl_clients` (`client_id`, `name`, `national_id`, `phone`, `address`, `email`, `password`, `profile_pic`, `client_number`) VALUES
(12, 'client', '35789835', '0790354085', 'Nairobi-street', 'client@gmail.com', '5a9d537c5a1addf007bbd4aee682286ce1d02cd6', '', 'eBank-CLIENT-9467'),
(14, 'Lenard Omusula', '38781858', '0745354076', 'Nairobi', 'lenardomusula@gmail.com', '5a9d537c5a1addf007bbd4aee682286ce1d02cd6', '', 'eBank-CLIENT-4512'),
(15, 'Client One', '7654321', '0790019871', 'Kenya', 'clientone@gmail.com', '5a9d537c5a1addf007bbd4aee682286ce1d02cd6', '', 'eBank-CLIENT-8913');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `notification_id` int(20) NOT NULL,
  `notification_details` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`notification_id`, `notification_details`, `created_at`) VALUES
(38, 'client Has Withdrawn Ksh 4000 From Bank Account 672195430', '2023-07-30 14:56:31.302987'),
(39, 'Lenard Omusula Has Deposited Ksh 150000 To Bank Account 678521039', '2023-07-30 15:26:14.142615'),
(40, 'Lenard Omusula Has Transfered Ksh 80000 From Bank Account 678521039 To Bank Account 672195430', '2023-07-30 15:26:56.204947');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `staff_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`staff_id`, `name`, `staff_number`, `phone`, `email`, `password`, `sex`, `profile_pic`) VALUES
(5, 'staff', 'eBank-STAFF-9853', '0790356743', 'staff@gmail.com', '0005dee653c31bd95daa5341a997b7763d5d5b86', 'Male', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_systemsettings`
--

CREATE TABLE `tbl_systemsettings` (
  `id` int(20) NOT NULL,
  `sys_name` longtext NOT NULL,
  `sys_tagline` longtext NOT NULL,
  `sys_logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_systemsettings`
--

INSERT INTO `tbl_systemsettings` (`id`, `sys_name`, `sys_tagline`, `sys_logo`) VALUES
(1, 'eBank Kenya', 'It\'s your money.', 'passport photo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `tr_id` int(20) NOT NULL,
  `tr_code` varchar(200) NOT NULL,
  `account_id` varchar(200) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `tr_type` varchar(200) NOT NULL,
  `tr_status` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `transaction_amt` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `receiving_acc_no` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `receiving_acc_name` varchar(200) NOT NULL,
  `receiving_acc_holder` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`tr_id`, `tr_code`, `account_id`, `acc_name`, `account_number`, `acc_type`, `acc_amount`, `tr_type`, `tr_status`, `client_id`, `client_name`, `client_national_id`, `transaction_amt`, `client_phone`, `receiving_acc_no`, `created_at`, `receiving_acc_name`, `receiving_acc_holder`) VALUES
(52, 'iIaeTBQZylmJfcFbu7nV', '19', 'Client deposit', '672195430', 'Fixed Deposit Account ', '', 'Deposit', 'Success ', '12', 'client', '35789835', '300000', '0790354085', '', '2023-07-30 12:28:11.373311', '', ''),
(53, 'lItsbjxcwCqBpZAFdTDV', '19', 'Client deposit', '672195430', 'Fixed Deposit Account ', '', 'Withdrawal', 'Success ', '12', 'client', '35789835', '10000', '0790354085', '', '2023-07-30 12:28:39.954493', '', ''),
(54, 'YyFGOclk7SfbI6wL0BTp', '19', 'Client deposit', '672195430', 'Fixed Deposit Account ', '', 'Withdrawal', 'Success ', '12', 'client', '35789835', '5000', '0790354085', '', '2023-07-30 13:00:34.297680', '', ''),
(57, 'XyYzCFnIuxf9P3A5dOZV', '19', 'Client deposit', '672195430', 'Fixed Deposit Account ', '', 'Deposit', 'Success ', '12', 'client', '35789835', '50000', '0790354085', '', '2023-07-30 13:33:44.685420', '', ''),
(58, 'OVIKBn0FhotCTMGdk9Ys', '19', 'Client deposit', '672195430', 'Fixed Deposit Account ', '', 'Withdrawal', 'Success ', '12', 'client', '35789835', '1000', '0790354085', '', '2023-07-30 14:44:41.653373', '', ''),
(60, 'QmU5l2qdJ8N4fEvCA6u7', '19', 'Client deposit', '672195430', 'Fixed Deposit Account ', '', 'Withdrawal', 'Success ', '12', 'client', '35789835', '2000', '0790354085', '', '2023-07-30 14:56:15.465245', '', ''),
(61, 'QVDJadEtFvWg2RfXmky9', '19', 'Client deposit', '672195430', 'Fixed Deposit Account ', '', 'Withdrawal', 'Success ', '12', 'client', '35789835', '4000', '0790354085', '', '2023-07-30 14:56:31.187135', '', ''),
(62, 'Vxzc4SJ0wWinmY5bAGKR', '20', 'Lenard Savings', '678521039', 'Savings ', '', 'Deposit', 'Success ', '14', 'Lenard Omusula', '38781858', '150000', '0745354076', '', '2023-07-30 15:26:13.999472', '', ''),
(63, 'RjxZymTfXvdnsoOqH4h6', '20', 'Lenard Savings', '678521039', 'Savings ', '', 'Transfer', 'Success ', '14', 'Lenard Omusula', '38781858', '80000', '0745354076', '672195430', '2023-07-30 15:26:56.063826', 'Client deposit', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_acc_types`
--
ALTER TABLE `tbl_acc_types`
  ADD PRIMARY KEY (`acctype_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_bankaccounts`
--
ALTER TABLE `tbl_bankaccounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `tbl_systemsettings`
--
ALTER TABLE `tbl_systemsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`tr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_acc_types`
--
ALTER TABLE `tbl_acc_types`
  MODIFY `acctype_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_bankaccounts`
--
ALTER TABLE `tbl_bankaccounts`
  MODIFY `account_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `notification_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_systemsettings`
--
ALTER TABLE `tbl_systemsettings`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `tr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
