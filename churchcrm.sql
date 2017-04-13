-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2017 a las 19:54:57
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `churchcrm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autopayment_aut`
--

CREATE TABLE `autopayment_aut` (
  `aut_ID` mediumint(9) UNSIGNED NOT NULL,
  `aut_FamID` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `aut_EnableBankDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `aut_EnableCreditCard` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `aut_NextPayDate` date DEFAULT NULL,
  `aut_FYID` mediumint(9) NOT NULL DEFAULT '9',
  `aut_Amount` decimal(6,2) NOT NULL DEFAULT '0.00',
  `aut_Interval` tinyint(3) NOT NULL DEFAULT '1',
  `aut_Fund` mediumint(6) NOT NULL DEFAULT '0',
  `aut_FirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_LastName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_Address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_Address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_Zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_Country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_Phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_CreditCard` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_ExpMonth` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_ExpYear` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_BankName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_Route` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_Account` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_DateLastEdited` datetime DEFAULT NULL,
  `aut_EditedBy` smallint(5) UNSIGNED DEFAULT '0',
  `aut_Serial` mediumint(9) NOT NULL DEFAULT '1',
  `aut_CreditCardVanco` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aut_AccountVanco` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canvassdata_can`
--

CREATE TABLE `canvassdata_can` (
  `can_ID` mediumint(9) UNSIGNED NOT NULL,
  `can_famID` mediumint(9) NOT NULL DEFAULT '0',
  `can_Canvasser` mediumint(9) NOT NULL DEFAULT '0',
  `can_FYID` mediumint(9) DEFAULT NULL,
  `can_date` date DEFAULT NULL,
  `can_Positive` text COLLATE utf8_unicode_ci,
  `can_Critical` text COLLATE utf8_unicode_ci,
  `can_Insightful` text COLLATE utf8_unicode_ci,
  `can_Financial` text COLLATE utf8_unicode_ci,
  `can_Suggestion` text COLLATE utf8_unicode_ci,
  `can_NotInterested` tinyint(1) NOT NULL DEFAULT '0',
  `can_WhyNotInterested` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_cfg`
--

CREATE TABLE `config_cfg` (
  `cfg_id` int(11) NOT NULL DEFAULT '0',
  `cfg_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` text COLLATE utf8_unicode_ci,
  `cfg_type` enum('text','number','date','boolean','textarea') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `cfg_default` text COLLATE utf8_unicode_ci NOT NULL,
  `cfg_tooltip` text COLLATE utf8_unicode_ci NOT NULL,
  `cfg_section` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cfg_category` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cfg_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `config_cfg`
--

INSERT INTO `config_cfg` (`cfg_id`, `cfg_name`, `cfg_value`, `cfg_type`, `cfg_default`, `cfg_tooltip`, `cfg_section`, `cfg_category`, `cfg_order`) VALUES
(1, 'sWEBCALENDARDB', '', 'text', '', 'WebCalendar database name', 'General', 'Step5', 13),
(2, 'debug', '1', 'boolean', '1', 'Set debug mode\r\nThis may be helpful for when you''re first setting up ChurchCRM, but you should\r\nprobably turn it off for maximum security otherwise.  If you are having trouble,\r\nplease enable this so that you''ll know what the errors are.  This is especially\r\nimportant if you need to report a problem on the help forums.', 'General', 'Step5', 0),
(3, 'sJPGRAPH_PATH', 'Include/jpgraph-1.13/src', 'text', 'Include/jpgraph-1.13/src', 'JPGraph library', 'General', 'Step5', 5),
(5, 'sDirClassifications', '1,2,4,5', 'text', '1,2,4,5', 'Include only these classifications in the directory, comma seperated', 'General', 'Step4', 0),
(6, 'sDirRoleHead', '1,7', 'text', '1,7', 'These are the family role numbers designated as head of house', 'General', 'Step4', 1),
(7, 'sDirRoleSpouse', '2', 'text', '2', 'These are the family role numbers designated as spouse', 'General', 'Step4', 2),
(8, 'sDirRoleChild', '3', 'text', '3', 'These are the family role numbers designated as child', 'General', 'Step4', 3),
(9, 'sSessionTimeout', '3600', 'number', '3600', 'Session timeout length in seconds\rSet to zero to disable session timeouts.', 'General', 'Step2', 5),
(10, 'aFinanceQueries', '28,30,31,32', 'text', '28', 'Queries for which user must have finance permissions to use:', 'General', 'Step8', 10),
(11, 'bCSVAdminOnly', '1', 'boolean', '1', 'Should only administrators have access to the CSV export system and directory report?', 'General', 'Step5', 11),
(12, 'sDefault_Pass', 'password', 'text', 'password', 'Default password for new users and those with reset passwords', 'General', 'Step2', 0),
(13, 'sMinPasswordLength', '6', 'number', '6', 'Minimum length a user may set their password to', 'General', 'Step2', 1),
(14, 'sMinPasswordChange', '4', 'number', '4', 'Minimum amount that a new password must differ from the old one (# of characters changed)\rSet to zero to disable this feature', 'General', 'Step2', 3),
(15, 'sDisallowedPasswords', 'churchcrm,password,god,jesus,church,christian', 'text', 'churchcrm,password,god,jesus,church,christian', 'A comma-seperated list of disallowed (too obvious) passwords.', 'General', 'Step2', 6),
(16, 'iMaxFailedLogins', '50', 'number', '50', 'Maximum number of failed logins to allow before a user account is locked.\rOnce the maximum has been reached, an administrator must re-enable the account.\rThis feature helps to protect against automated password guessing attacks.\rSet to zero to disable this feature.', 'General', 'Step2', 4),
(20, 'iPDFOutputType', '1', 'number', '1', 'PDF handling mode.\r1 = Save File dialog\r2 = Open in current browser window', 'General', 'Step8', 0),
(21, 'sDefaultCity', '', 'text', '', 'Default City', 'General', 'Step4', 4),
(22, 'sDefaultState', '', 'text', '', 'Default State - Must be 2-letter abbreviation!', 'General', 'Step4', 5),
(23, 'sDefaultCountry', 'United States', 'text', 'United States', 'Default Country', 'General', 'Step4', 6),
(24, 'bEmailSend', '', 'boolean', '', 'If you wish to be able to send emails from within ChurchCRM. This requires\reither an SMTP server address to send from or sendmail installed in PHP.', 'General', 'Step3', 0),
(25, 'sSendType', 'smtp', 'text', 'smtp', 'The method for sending email. Either "smtp" or "sendmail"', 'General', 'Step3', 1),
(26, 'sToEmailAddress', '', 'text', '', 'Default account for receiving a copy of all emails', 'General', 'Step3', 6),
(27, 'sSMTPHost', '', 'text', '', 'SMTP Server Address (mail.server.com:25)', 'General', 'Step3', 2),
(28, 'sSMTPAuth', '1', 'boolean', '1', 'Does your SMTP server require auththentication (username/password)?', 'General', 'Step3', 3),
(29, 'sSMTPUser', '', 'text', '', 'SMTP Username', 'General', 'Step3', 4),
(30, 'sSMTPPass', '', 'text', '', 'SMTP Password', 'General', 'Step3', 5),
(33, 'bShowFamilyData', '1', 'boolean', '1', 'Unavailable person info inherited from assigned family for display?\rThis option causes certain info from a person''s assigned family record to be\rdisplayed IF the corresponding info has NOT been entered for that person. ', 'General', 'Step4', 7),
(36, 'sGZIPname', 'gzip', 'text', 'gzip', '', 'General', 'Step5', 7),
(37, 'sZIPname', 'zip', 'text', 'zip', '', 'General', 'Step5', 8),
(38, 'sPGPname', 'gpg', 'text', 'gpg', '', 'General', 'Step5', 9),
(39, 'sLanguage', 'en_US', 'text', 'en_US', 'Internationalization (I18n) support\rUS English (en_US), Italian (it_IT), French (fr_FR), and German (de_DE)', 'General', 'Step5', 3),
(40, 'iFYMonth', '1', 'number', '1', 'First month of the fiscal year', 'General', 'Step8', 1),
(41, 'sXML_RPC_PATH', 'XML/RPC.php', 'text', 'XML/RPC.php', 'Path to RPC.php, required for Lat/Lon address lookup', 'General', 'Step5', 6),
(42, 'sGeocoderID', '', 'text', '', 'User ID for rpc.geocoder.us', 'General', 'Step6', 5),
(43, 'sGeocoderPW', '', 'text', '', 'Password for rpc.geocoder.us', 'General', 'Step6', 6),
(44, 'sGoogleMapKey', '', 'text', '', 'Google map API requires a unique key from http://maps.google.com/apis/maps/signup.html', 'General', 'Step6', 0),
(45, 'nChurchLatitude', '', 'number', '', 'Latitude of the church, used to center the Google map', 'General', 'Step1', 9),
(46, 'nChurchLongitude', '', 'number', '', 'Longitude of the church, used to center the Google map', 'General', 'Step1', 10),
(47, 'bHidePersonAddress', '1', 'boolean', '1', 'Set true to disable entering addresses in Person Editor.  Set false to enable entering addresses in Person Editor.', 'General', 'Step4', 8),
(48, 'bHideFriendDate', '0', 'boolean', '0', 'Set true to disable entering Friend Date in Person Editor.  Set false to enable entering Friend Date in Person Editor.', 'General', 'Step4', 9),
(49, 'bHideFamilyNewsletter', '0', 'boolean', '0', 'Set true to disable management of newsletter subscriptions in the Family Editor.', 'General', 'Step4', 10),
(50, 'bHideWeddingDate', '0', 'boolean', '0', 'Set true to disable entering Wedding Date in Family Editor.  Set false to enable entering Wedding Date in Family Editor.', 'General', 'Step4', 11),
(51, 'bHideLatLon', '0', 'boolean', '0', 'Set true to disable entering Latitude and Longitude in Family Editor.  Set false to enable entering Latitude and Longitude in Family Editor.  Lookups are still performed, just not displayed.', 'General', 'Step4', 12),
(52, 'bUseDonationEnvelopes', '0', 'boolean', '0', 'Set true to enable use of donation envelopes', 'General', 'Step8', 2),
(53, 'sHeader', '', 'textarea', '', 'Enter in HTML code which will be displayed as a header at the top of each page. Be sure to close your tags! Note: You must REFRESH YOUR BROWSER A SECOND TIME to view the new header.', 'General', 'Step5', 14),
(54, 'sISTusername', 'username', 'text', 'username', 'Intelligent Search Technolgy, Ltd. CorrectAddress Username for https://www.intelligentsearch.com/Hosted/User', 'General', 'Step6', 3),
(55, 'sISTpassword', '', 'text', '', 'Intelligent Search Technolgy, Ltd. CorrectAddress Password for https://www.intelligentsearch.com/Hosted/User', 'General', 'Step6', 4),
(56, 'bUseGoogleGeocode', '1', 'boolean', '1', 'Set true to use the Google geocoder.  Set false to use rpc.geocoder.us.', 'General', 'Step6', 1),
(57, 'iChecksPerDepositForm', '14', 'number', '14', 'Number of checks for Deposit Slip Report', 'General', 'Step8', 3),
(58, 'bUseScannedChecks', '0', 'boolean', '0', 'Set true to enable use of scanned checks', 'General', 'Step8', 4),
(61, 'iEventPeriodStartHr', '7', 'number', '7', 'Church Event Valid Period Start Hour (0-23)', 'General', 'Step8', 6),
(62, 'iEventPeriodEndHr', '18', 'number', '18', 'Church Event Valid Period End Hour (0-23, must be greater than iEventStartHr)', 'General', 'Step8', 7),
(63, 'iEventPeriodIntervalMin', '15', 'number', '15', 'Event Period interval (in minutes)', 'General', 'Step8', 8),
(64, 'sDistanceUnit', 'miles', 'text', 'miles', 'Unit used to measure distance, miles or km.', 'General', 'Step5', 12),
(65, 'sTimeZone', 'America/New_York', 'text', 'America/New_York', 'Time zone- see http://php.net/manual/en/timezones.php for valid choices.', 'General', 'Step1', 8),
(66, 'sGMapIcons', 'red-dot,green-dot,purple,yellow-dot,blue-dot,orange,yellow,green,blue,red,pink,lightblue', 'text', 'red-dot,green-dot,purple,yellow-dot,blue-dot,orange,yellow,green,blue,red,pink,lightblue', 'Names of markers for Google Maps in order of classification', 'General', 'Step6', 2),
(67, 'cfgForceUppercaseZip', '0', 'boolean', '0', 'Make user-entered zip/postcodes UPPERCASE when saving to the database. Useful in the UK.', 'General', 'Step4', 13),
(2000, 'mailChimpApiKey', '', 'text', '', 'see http://kb.mailchimp.com/accounts/management/about-api-keys', 'General', 'Step3', 8),
(72, 'bEnableNonDeductible', '0', 'boolean', '0', 'Enable non-deductible payments', 'General', 'Step8', 9),
(73, 'sElectronicTransactionProcessor', 'Vanco', 'text', 'Vanco', 'Electronic Transaction Processor', 'General', 'Step8', 5),
(999, 'bRegistered', '0', 'boolean', '0', 'ChurchCRM has been registered.  The ChurchCRM team uses registration information to track usage.  This information is kept confidential and never released or sold.  If this field is true the registration option in the admin menu changes to update registration.', 'General', 'Step5', 2),
(1001, 'leftX', '20', 'number', '20', 'Left Margin (1 = 1/100th inch)', 'ChurchInfoReport', 'Step7', 0),
(1002, 'incrementY', '4', 'number', '4', 'Line Thickness (1 = 1/100th inch', 'ChurchInfoReport', 'Step7', 1),
(1003, 'sChurchName', 'Some Church', 'text', '', 'Church Name', 'ChurchInfoReport', 'Step1', 0),
(1004, 'sChurchAddress', '', 'text', '', 'Church Address', 'ChurchInfoReport', 'Step1', 1),
(1005, 'sChurchCity', '', 'text', '', 'Church City', 'ChurchInfoReport', 'Step1', 2),
(1006, 'sChurchState', '', 'text', '', 'Church State', 'ChurchInfoReport', 'Step1', 3),
(1007, 'sChurchZip', '', 'text', '', 'Church Zip', 'ChurchInfoReport', 'Step1', 4),
(1008, 'sChurchPhone', '', 'text', '', 'Church Phone', 'ChurchInfoReport', 'Step1', 5),
(1009, 'sChurchEmail', '', 'text', '', 'Church Email', 'ChurchInfoReport', 'Step1', 7),
(1010, 'sHomeAreaCode', '', 'text', '', 'Home area code of the church', 'ChurchInfoReport', 'Step1', 6),
(1011, 'sTaxReport1', 'This letter shows our record of your payments for', 'textarea', 'This letter shows our record of your payments for', 'Verbage for top line of tax report. Dates will be appended to the end of this line.', 'ChurchInfoReport', 'Step7', 2),
(1012, 'sTaxReport2', 'Thank you for your help in making a difference. We greatly appreciate your gift!', 'textarea', 'Thank you for your help in making a difference. We greatly appreciate your gift!', 'Verbage for bottom line of tax report.', 'ChurchInfoReport', 'Step7', 3),
(1013, 'sTaxReport3', 'If you have any questions or corrections to make to this report, please contact the church at the above number during business hours, 9am to 4pm, M-F.', 'textarea', 'If you have any questions or corrections to make to this report, please contact the church at the above number during business hours, 9am to 4pm, M-F.', 'Verbage for bottom line of tax report.', 'ChurchInfoReport', 'Step7', 4),
(1014, 'sTaxSigner', 'Elder Joe Smith', 'text', '', 'Tax Report signer', 'ChurchInfoReport', 'Step7', 5),
(1015, 'sReminder1', 'This letter shows our record of your pledge and payments for fiscal year', 'textarea', 'This letter shows our record of your pledge and payments for fiscal year', 'Verbage for the pledge reminder report', 'ChurchInfoReport', 'Step7', 6),
(1016, 'sReminderSigner', 'Elder Joe Smith', 'text', '', 'Pledge Reminder Signer', 'ChurchInfoReport', 'Step7', 7),
(1017, 'sReminderNoPledge', 'Pledges: We do not have record of a pledge for from you for this fiscal year.', 'textarea', 'Pledges: We do not have record of a pledge for from you for this fiscal year.', 'Verbage for the pledge reminder report - No record of a pledge', 'ChurchInfoReport', 'Step7', 8),
(1018, 'sReminderNoPayments', 'Payments: We do not have record of a pledge for from you for this fiscal year.', 'textarea', 'Payments: We do not have record of a pledge for from you for this fiscal year.', 'Verbage for the pledge reminder report - No record of payments', 'ChurchInfoReport', 'Step7', 9),
(1019, 'sConfirm1', 'This letter shows the information we have in our database with respect to your family.  Please review, mark-up as necessary, and return this form to the church office.', 'textarea', 'This letter shows the information we have in our database with respect to your family.  Please review, mark-up as necessary, and return this form to the church office.', 'Verbage for the database information confirmation and correction report', 'ChurchInfoReport', 'Step7', 10),
(1020, 'sConfirm2', 'Thank you very much for helping us to update this information.  If you want on-line access to the church database please provide your email address and a desired password and we will send instructions.', 'textarea', 'Thank you very much for helping us to update this information.  If you want on-line access to the church database please provide your email address and a desired password and we will send instructions.', 'Verbage for the database information confirmation and correction report', 'ChurchInfoReport', 'Step7', 11),
(1021, 'sConfirm3', 'Email _____________________________________ Password ________________', 'textarea', 'Email _____________________________________ Password ________________', 'Verbage for the database information confirmation and correction report', 'ChurchInfoReport', 'Step7', 12),
(1022, 'sConfirm4', '[  ] I no longer want to be associated with the church (check here to be removed from our records).', 'textarea', '[  ] I no longer want to be associated with the church (check here to be removed from our records).', 'Verbage for the database information confirmation and correction report', 'ChurchInfoReport', 'Step7', 13),
(1023, 'sConfirm5', '', 'textarea', '', 'Verbage for the database information confirmation and correction report', 'ChurchInfoReport', 'Step7', 14),
(1024, 'sConfirm6', '', 'textarea', '', 'Verbage for the database information confirmation and correction report', 'ChurchInfoReport', 'Step7', 15),
(1025, 'sConfirmSigner', 'Elder Joe Smith', 'text', '', 'Database information confirmation and correction report signer', 'ChurchInfoReport', 'Step7', 16),
(1026, 'sPledgeSummary1', 'Summary of pledges and payments for the fiscal year', 'textarea', 'Summary of pledges and payments for the fiscal year', 'Verbage for the pledge summary report', 'ChurchInfoReport', 'Step7', 17),
(1027, 'sPledgeSummary2', 'as of', 'textarea', ' as of', 'Verbage for the pledge summary report', 'ChurchInfoReport', 'Step7', 18),
(1028, 'sDirectoryDisclaimer1', 'Every effort was made to insure the accuracy of this directory.  If there are any errors or omissions, please contact the church office.This directory is for the use of the people of', 'textarea', 'Every effort was made to insure the accuracy of this directory.  If there are any errors or omissions, please contact the church office.\n\nThis directory is for the use of the people of', 'Verbage for the directory report', 'ChurchInfoReport', 'Step7', 19),
(1029, 'sDirectoryDisclaimer2', ', and the information contained in it may not be used for business or commercial purposes.', 'textarea', ', and the information contained in it may not be used for business or commercial purposes.', 'Verbage for the directory report', 'ChurchInfoReport', 'Step7', 20),
(1030, 'bDirLetterHead', '../Images/church_letterhead.jpg', 'text', '../Images/church_letterhead.jpg', 'Church Letterhead path and file', 'ChurchInfoReport', 'Step7', 21),
(1031, 'sZeroGivers', 'This letter shows our record of your payments for', 'textarea', 'This letter shows our record of your payments for', 'Verbage for top line of tax report. Dates will be appended to the end of this line.', 'ChurchInfoReport', 'Step7', 22),
(1032, 'sZeroGivers2', 'Thank you for your help in making a difference. We greatly appreciate your gift!', 'textarea', 'Thank you for your help in making a difference. We greatly appreciate your gift!', 'Verbage for bottom line of tax report.', 'ChurchInfoReport', 'Step7', 23),
(1033, 'sZeroGivers3', 'If you have any questions or corrections to make to this report, please contact the church at the above number during business hours, 9am to 4pm, M-F.', 'textarea', 'If you have any questions or corrections to make to this report, please contact the church at the above number during business hours, 9am to 4pm, M-F.', 'Verbage for bottom line of tax report.', 'ChurchInfoReport', 'Step7', 24),
(1034, 'sChurchChkAcctNum', '111111111', 'text', '', 'Church Checking Account Number', 'ChurchInfoReport', 'Step7', 25),
(1035, 'sEnableGravatarPhotos', '0', 'boolean', '0', 'lookup user images on Gravatar when no local image is present', 'General', 'Step4', 16),
(1036, 'sEnableExternalBackupTarget', '0', 'boolean', '0', 'Enable Remote Backups to Cloud Services', 'General', 'Step5', NULL),
(1037, 'sExternalBackupType', 'WebDAV', 'text', '', 'Cloud Service Type (Supported values: WebDAV, Local)', 'General', 'Step5', NULL),
(1038, 'sExternalBackupEndpoint', '', 'text', '', 'Remote Backup Endpoint', 'General', 'Step5', NULL),
(1039, 'sExternalBackupUsername', '', 'text', '', 'Remote Backup Username', 'General', 'Step5', NULL),
(1040, 'sExternalBackupPassword', '', 'text', '', 'Remote Backup Password', 'General', 'Step5', NULL),
(1041, 'sExternalBackupAutoInterval', '', 'text', '', 'Interval in Hours for Automatic Remote Backups', 'General', 'Step5', NULL),
(1042, 'sLastBackupTimeStamp', '', 'text', '', 'Last Backup Timestamp', 'General', 'Step5', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deposit_dep`
--

CREATE TABLE `deposit_dep` (
  `dep_ID` mediumint(9) UNSIGNED NOT NULL,
  `dep_Date` date DEFAULT NULL,
  `dep_Comment` text COLLATE utf8_unicode_ci,
  `dep_EnteredBy` mediumint(9) UNSIGNED DEFAULT NULL,
  `dep_Closed` tinyint(1) NOT NULL DEFAULT '0',
  `dep_Type` enum('Bank','CreditCard','BankDraft','eGive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Bank'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci PACK_KEYS=0;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donateditem_di`
--

CREATE TABLE `donateditem_di` (
  `di_ID` mediumint(9) UNSIGNED NOT NULL,
  `di_item` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `di_FR_ID` mediumint(9) UNSIGNED NOT NULL,
  `di_donor_ID` mediumint(9) NOT NULL DEFAULT '0',
  `di_buyer_ID` mediumint(9) NOT NULL DEFAULT '0',
  `di_multibuy` smallint(1) NOT NULL DEFAULT '0',
  `di_title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `di_description` text COLLATE utf8_unicode_ci,
  `di_sellprice` decimal(8,2) DEFAULT NULL,
  `di_estprice` decimal(8,2) DEFAULT NULL,
  `di_minimum` decimal(8,2) DEFAULT NULL,
  `di_materialvalue` decimal(8,2) DEFAULT NULL,
  `di_EnteredBy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `di_EnteredDate` date NOT NULL,
  `di_picture` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donationfund_fun`
--

CREATE TABLE `donationfund_fun` (
  `fun_ID` tinyint(3) NOT NULL,
  `fun_Active` enum('true','false') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'true',
  `fun_Name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fun_Description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `donationfund_fun`
--

INSERT INTO `donationfund_fun` (`fun_ID`, `fun_Active`, `fun_Name`, `fun_Description`) VALUES
(1, 'true', 'Pledges', 'Pledge income for the operating budget');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egive_egv`
--

CREATE TABLE `egive_egv` (
  `egv_egiveID` varchar(16) CHARACTER SET utf8 NOT NULL,
  `egv_famID` int(11) NOT NULL,
  `egv_DateEntered` datetime NOT NULL,
  `egv_DateLastEdited` datetime NOT NULL,
  `egv_EnteredBy` smallint(6) NOT NULL DEFAULT '0',
  `egv_EditedBy` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_message_pending_emp`
--

CREATE TABLE `email_message_pending_emp` (
  `emp_usr_id` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `emp_to_send` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `emp_subject` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `emp_message` text COLLATE utf8_unicode_ci NOT NULL,
  `emp_attach_name` text COLLATE utf8_unicode_ci,
  `emp_attach` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_recipient_pending_erp`
--

CREATE TABLE `email_recipient_pending_erp` (
  `erp_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `erp_usr_id` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `erp_num_attempt` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `erp_failed_time` datetime DEFAULT NULL,
  `erp_email_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventcountnames_evctnm`
--

CREATE TABLE `eventcountnames_evctnm` (
  `evctnm_countid` int(5) NOT NULL,
  `evctnm_eventtypeid` smallint(5) NOT NULL DEFAULT '0',
  `evctnm_countname` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `evctnm_notes` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `eventcountnames_evctnm`
--

INSERT INTO `eventcountnames_evctnm` (`evctnm_countid`, `evctnm_eventtypeid`, `evctnm_countname`, `evctnm_notes`) VALUES
(1, 1, 'Total', ''),
(2, 1, 'Members', ''),
(3, 1, 'Visitors', ''),
(4, 2, 'Total', ''),
(5, 2, 'Members', ''),
(6, 2, 'Visitors', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventcounts_evtcnt`
--

CREATE TABLE `eventcounts_evtcnt` (
  `evtcnt_eventid` int(5) NOT NULL DEFAULT '0',
  `evtcnt_countid` int(5) NOT NULL DEFAULT '0',
  `evtcnt_countname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evtcnt_countcount` int(6) DEFAULT NULL,
  `evtcnt_notes` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events_event`
--

CREATE TABLE `events_event` (
  `event_id` int(11) NOT NULL,
  `event_type` int(11) NOT NULL DEFAULT '0',
  `event_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `event_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_text` text COLLATE utf8_unicode_ci,
  `event_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `event_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `inactive` int(1) NOT NULL DEFAULT '0',
  `event_typename` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_attend`
--

CREATE TABLE `event_attend` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `person_id` int(11) NOT NULL DEFAULT '0',
  `checkin_date` datetime DEFAULT NULL,
  `checkin_id` int(11) DEFAULT NULL,
  `checkout_date` datetime DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_types`
--

CREATE TABLE `event_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_defstarttime` time NOT NULL DEFAULT '00:00:00',
  `type_defrecurtype` enum('none','weekly','monthly','yearly') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `type_defrecurDOW` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Sunday',
  `type_defrecurDOM` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type_defrecurDOY` date NOT NULL DEFAULT '0000-00-00',
  `type_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `event_types`
--

INSERT INTO `event_types` (`type_id`, `type_name`, `type_defstarttime`, `type_defrecurtype`, `type_defrecurDOW`, `type_defrecurDOM`, `type_defrecurDOY`, `type_active`) VALUES
(1, 'Church Service', '10:30:00', 'weekly', 'Sunday', '', '0000-00-00', 1),
(2, 'Sunday School', '09:30:00', 'weekly', 'Sunday', '', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `family_custom`
--

CREATE TABLE `family_custom` (
  `fam_ID` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `family_custom_master`
--

CREATE TABLE `family_custom_master` (
  `fam_custom_Order` smallint(6) NOT NULL DEFAULT '0',
  `fam_custom_Field` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fam_custom_Name` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fam_custom_Special` mediumint(8) UNSIGNED DEFAULT NULL,
  `fam_custom_Side` enum('left','right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'left',
  `fam_custom_FieldSec` tinyint(4) NOT NULL DEFAULT '1',
  `type_ID` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `family_fam`
--

CREATE TABLE `family_fam` (
  `fam_ID` mediumint(9) UNSIGNED NOT NULL,
  `fam_Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_HomePhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_WorkPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_CellPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_WeddingDate` date DEFAULT NULL,
  `fam_DateEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fam_DateLastEdited` datetime DEFAULT NULL,
  `fam_EnteredBy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fam_EditedBy` smallint(5) UNSIGNED DEFAULT '0',
  `fam_scanCheck` text COLLATE utf8_unicode_ci,
  `fam_scanCredit` text COLLATE utf8_unicode_ci,
  `fam_SendNewsLetter` enum('FALSE','TRUE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FALSE',
  `fam_DateDeactivated` date DEFAULT NULL,
  `fam_OkToCanvass` enum('FALSE','TRUE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FALSE',
  `fam_Canvasser` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fam_Latitude` double DEFAULT NULL,
  `fam_Longitude` double DEFAULT NULL,
  `fam_Envelope` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `family_fam`
--

INSERT INTO `family_fam` (`fam_ID`, `fam_Name`, `fam_Address1`, `fam_Address2`, `fam_City`, `fam_State`, `fam_Zip`, `fam_Country`, `fam_HomePhone`, `fam_WorkPhone`, `fam_CellPhone`, `fam_Email`, `fam_WeddingDate`, `fam_DateEntered`, `fam_DateLastEdited`, `fam_EnteredBy`, `fam_EditedBy`, `fam_scanCheck`, `fam_scanCredit`, `fam_SendNewsLetter`, `fam_DateDeactivated`, `fam_OkToCanvass`, `fam_Canvasser`, `fam_Latitude`, `fam_Longitude`, `fam_Envelope`) VALUES
(1, 'Alvarez Lopez', '', '', '', '', '', 'United States', '', '8116079742', '83904424', 'isai_tux@hotmail.com', NULL, '2016-11-01 11:44:44', NULL, 1, 0, NULL, NULL, 'FALSE', NULL, 'FALSE', 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fundraiser_fr`
--

CREATE TABLE `fundraiser_fr` (
  `fr_ID` mediumint(9) UNSIGNED NOT NULL,
  `fr_date` date DEFAULT NULL,
  `fr_title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `fr_description` text COLLATE utf8_unicode_ci,
  `fr_EnteredBy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fr_EnteredDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groupprop_master`
--

CREATE TABLE `groupprop_master` (
  `grp_ID` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `prop_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `prop_Field` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `prop_Name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prop_Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_ID` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `prop_Special` mediumint(9) UNSIGNED DEFAULT NULL,
  `prop_PersonDisplay` enum('false','true') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Group-specific properties order, name, description, type';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_grp`
--

CREATE TABLE `group_grp` (
  `grp_ID` mediumint(8) UNSIGNED NOT NULL,
  `grp_Type` tinyint(4) NOT NULL DEFAULT '0',
  `grp_RoleListID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `grp_DefaultRole` mediumint(9) NOT NULL DEFAULT '0',
  `grp_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grp_Description` text COLLATE utf8_unicode_ci,
  `grp_hasSpecialProps` enum('true','false') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `group_grp`
--

INSERT INTO `group_grp` (`grp_ID`, `grp_Type`, `grp_RoleListID`, `grp_DefaultRole`, `grp_Name`, `grp_Description`, `grp_hasSpecialProps`) VALUES
(1, 2, 13, 1, 'Célula 1', 'Célula de Sergio', 'false');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `istlookup_lu`
--

CREATE TABLE `istlookup_lu` (
  `lu_fam_ID` mediumint(9) NOT NULL DEFAULT '0',
  `lu_LookupDateTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lu_DeliveryLine1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_DeliveryLine2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ZipAddon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_Zip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_Addon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_LOTNumber` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_DPCCheckdigit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_RecordType` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_LastLine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_CarrierRoute` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ReturnCodes` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ErrorCodes` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ErrorDesc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='US Address Verification Lookups From Intelligent Search Tech';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `list_lst`
--

CREATE TABLE `list_lst` (
  `lst_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lst_OptionID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lst_OptionSequence` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lst_OptionName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `list_lst`
--

INSERT INTO `list_lst` (`lst_ID`, `lst_OptionID`, `lst_OptionSequence`, `lst_OptionName`) VALUES
(1, 1, 1, 'Member'),
(1, 2, 2, 'Regular Attender'),
(1, 3, 3, 'Guest'),
(1, 5, 4, 'Non-Attender'),
(1, 4, 5, 'Non-Attender (staff)'),
(2, 1, 1, 'Head of Household'),
(2, 2, 2, 'Spouse'),
(2, 3, 3, 'Child'),
(2, 4, 4, 'Other Relative'),
(2, 5, 5, 'Non Relative'),
(3, 1, 1, 'Ministry'),
(3, 2, 2, 'Team'),
(3, 3, 3, 'Bible Study'),
(3, 4, 4, 'Sunday School Class'),
(4, 1, 1, 'True / False'),
(4, 2, 2, 'Date'),
(4, 3, 3, 'Text Field (50 char)'),
(4, 4, 4, 'Text Field (100 char)'),
(4, 5, 5, 'Text Field (Long)'),
(4, 6, 6, 'Year'),
(4, 7, 7, 'Season'),
(4, 8, 8, 'Number'),
(4, 9, 9, 'Person from Group'),
(4, 10, 10, 'Money'),
(4, 11, 11, 'Phone Number'),
(4, 12, 12, 'Custom Drop-Down List'),
(5, 1, 1, 'bAll'),
(5, 2, 2, 'bAdmin'),
(5, 3, 3, 'bAddRecords'),
(5, 4, 4, 'bEditRecords'),
(5, 5, 5, 'bDeleteRecords'),
(5, 6, 6, 'bMenuOptions'),
(5, 7, 7, 'bManageGroups'),
(5, 8, 8, 'bFinance'),
(5, 9, 9, 'bNotes'),
(5, 10, 10, 'bCommunication'),
(5, 11, 11, 'bCanvasser'),
(10, 1, 1, 'Teacher'),
(10, 2, 2, 'Student'),
(11, 1, 1, 'Member'),
(12, 1, 1, 'Teacher'),
(12, 2, 2, 'Student'),
(13, 1, 1, 'Member');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menuconfig_mcf`
--

CREATE TABLE `menuconfig_mcf` (
  `mid` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `parent` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ismenu` tinyint(1) NOT NULL,
  `content_english` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `statustext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `security_grp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `session_var` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_var_in_text` tinyint(1) NOT NULL,
  `session_var_in_uri` tinyint(1) NOT NULL,
  `url_parm_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `sortorder` tinyint(3) NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `menuconfig_mcf`
--

INSERT INTO `menuconfig_mcf` (`mid`, `name`, `parent`, `ismenu`, `content_english`, `content`, `uri`, `statustext`, `security_grp`, `session_var`, `session_var_in_text`, `session_var_in_uri`, `url_parm_name`, `active`, `sortorder`, `icon`) VALUES
(1, 'root', '', 1, 'Main', 'Main', '', '', 'bAll', NULL, 0, 0, NULL, 1, 0, NULL),
(2, 'calendar', 'root', 0, 'Calendar', 'Calendar', 'calendar.php', '', 'bAll', NULL, 0, 0, NULL, 1, 1, 'fa-calendar'),
(10, 'people', 'root', 1, 'Members', 'Members', '', 'Members', 'bAll', NULL, 0, 0, NULL, 1, 2, 'fa-users'),
(11, 'membdash', 'people', 0, 'Dashboard', 'Dashboard', 'MembersDashboard.php', '', 'bAddRecords', NULL, 0, 0, NULL, 1, 1, NULL),
(12, 'newperson', 'people', 0, 'Add New Person', 'Add New Person', 'PersonEditor.php', '', 'bAddRecords', NULL, 0, 0, NULL, 1, 2, NULL),
(13, 'viewperson', 'people', 0, 'View All Persons', 'View All Persons', 'SelectList.php?mode=person', '', 'bAll', NULL, 0, 0, NULL, 1, 3, NULL),
(14, 'newfamily', 'people', 0, 'Add New Family', 'Add New Family', 'FamilyEditor.php', '', 'bAddRecords', NULL, 0, 0, NULL, 1, 4, NULL),
(15, 'viewfamily', 'people', 0, 'View All Families', 'View All Families', 'FamilyList.php', '', 'bAll', NULL, 0, 0, NULL, 1, 5, NULL),
(20, 'groups', 'root', 1, 'Groups', 'Groups', '', '', 'bAll', NULL, 0, 0, NULL, 1, 3, 'fa-tag'),
(21, 'listgroups', 'groups', 0, 'List Groups', 'List Groups', 'GroupList.php', '', 'bAll', NULL, 0, 0, NULL, 1, 1, NULL),
(23, 'editgroup', 'groups', 0, 'Edit Group Types', 'Edit Group Types', 'OptionManager.php?mode=grptypes', '', 'bMenuOptions', NULL, 0, 0, NULL, 1, 3, NULL),
(24, 'assigngroup', 'groups', 0, 'Group Assignment Helper', 'Group Assignment Helper', 'SelectList.php?mode=groupassign', '', 'bAll', NULL, 0, 0, NULL, 1, 4, NULL),
(30, 'sundayschool', 'root', 1, 'Sunday School', 'Sunday School', '', '', 'bAll', NULL, 0, 0, NULL, 1, 4, 'fa-child'),
(31, 'sundayschool-dash', 'sundayschool', 0, 'Dashboard', 'Dashboard', 'sundayschool/SundaySchoolDashboard.php', '', 'bAll', NULL, 0, 0, NULL, 1, 2, NULL),
(40, 'email', 'root', 0, 'email', 'email', 'email/Dashboard.php', '', 'bAll', NULL, 0, 0, NULL, 1, 5, 'fa-envelope'),
(50, 'events', 'root', 1, 'Events', 'Events', '', 'Events', 'bAll', NULL, 0, 0, NULL, 1, 6, 'fa-ticket'),
(51, 'listevent', 'events', 0, 'List Church Events', 'List Church Events', 'ListEvents.php', 'List Church Events', 'bAll', NULL, 0, 0, NULL, 1, 1, NULL),
(52, 'addevent', 'events', 0, 'Add Church Event', 'Add Church Event', 'EventEditor.php', 'Add Church Event', 'bAll', NULL, 0, 0, NULL, 1, 2, NULL),
(53, 'eventype', 'events', 0, 'List Event Types', 'List Event Types', 'EventNames.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 3, NULL),
(54, 'eventcheckin', 'events', 0, 'Check-in and Check-out', 'Check-in and Check-out', 'Checkin.php', '', 'bAll', NULL, 0, 0, NULL, 1, 4, NULL),
(60, 'deposit', 'root', 1, 'Deposit', 'Deposit', '', '', 'bFinance', NULL, 0, 0, NULL, 1, 7, 'fa-bank'),
(61, 'envelopmgr', 'deposit', 0, 'Envelope Manager', 'Envelope Manager', 'ManageEnvelopes.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 1, NULL),
(62, 'newdeposit', 'deposit', 0, 'Create New Deposit', 'Create New Deposit', 'DepositSlipEditor.php?DepositType=Bank', '', 'bFinance', NULL, 0, 0, NULL, 1, 2, NULL),
(63, 'viewdeposit', 'deposit', 0, 'View All Deposits', 'View All Deposits', 'FindDepositSlip.php', '', 'bFinance', NULL, 0, 0, NULL, 1, 3, NULL),
(64, 'depositreport', 'deposit', 0, 'Deposit Reports', 'Deposit Reports', 'FinancialReports.php', '', 'bFinance', NULL, 0, 0, NULL, 1, 4, NULL),
(65, 'depositslip', 'deposit', 0, 'Edit Deposit Slip', 'Edit Deposit Slip', 'DepositSlipEditor.php', '', 'bFinance', 'iCurrentDeposit', 1, 1, 'DepositSlipID', 1, 5, NULL),
(70, 'fundraiser', 'root', 1, 'Fundraiser', 'Fundraiser', '', '', 'bAll', NULL, 0, 0, NULL, 1, 8, 'fa-money'),
(71, 'viewfundraiser', 'fundraiser', 0, 'View All Fundraisers', 'View All Fundraisers', 'FindFundRaiser.php', '', 'bAll', NULL, 0, 0, NULL, 1, 1, NULL),
(72, 'newfundraiser', 'fundraiser', 0, 'Create New Fundraiser', 'Create New Fundraiser', 'FundRaiserEditor.php?FundRaiserID=-1', '', 'bAll', NULL, 0, 0, NULL, 1, 2, NULL),
(73, 'editfundraiser', 'fundraiser', 0, 'Edit Fundraiser', 'Edit Fundraiser', 'FundRaiserEditor.php', '', 'bAll', 'iCurrentFundraiser', 1, 1, 'FundRaiserID', 1, 3, NULL),
(74, 'viewbuyers', 'fundraiser', 0, 'View Buyers', 'View Buyers', 'PaddleNumList.php', '', 'bAll', 'iCurrentFundraiser', 1, 1, 'FundRaiserID', 1, 4, NULL),
(75, 'adddonors', 'fundraiser', 0, 'Add Donors to Buyer List', 'Add Donors to Buyer List', 'AddDonors.php', '', 'bAll', 'iCurrentFundraiser', 1, 1, 'FundRaiserID', 1, 5, NULL),
(80, 'report', 'root', 1, 'Data/Reports', 'Data/Reports', '', '', 'bAll', NULL, 0, 0, NULL, 1, 9, 'fa-file-pdf-o'),
(81, 'reportmenu', 'report', 0, 'Reports Menu', 'Reports Menu', 'ReportList.php', '', 'bAll', NULL, 0, 0, NULL, 1, 1, NULL),
(82, 'querymenu', 'report', 0, 'Query Menu', 'Query Menu', 'QueryList.php', '', 'bAll', NULL, 0, 0, NULL, 1, 2, NULL),
(83, 'cvsexport', 'report', 0, 'CSV Export Records', 'CSV Export Records', 'CSVExport.php', '', 'bAll', NULL, 0, 0, NULL, 1, 3, NULL),
(90, 'properties', 'root', 1, 'Properties', 'Properties', '', '', 'bAll', NULL, 0, 0, NULL, 1, 10, 'fa-cogs'),
(91, 'peopleproperty', 'properties', 0, 'People Properties', 'People Properties', 'PropertyList.php?Type=p', '', 'bAll', NULL, 0, 0, NULL, 1, 1, NULL),
(92, 'familyproperty', 'properties', 0, 'Family Properties', 'Family Properties', 'PropertyList.php?Type=f', '', 'bAll', NULL, 0, 0, NULL, 1, 2, NULL),
(93, 'groupproperty', 'properties', 0, 'Group Properties', 'Group Properties', 'PropertyList.php?Type=g', '', 'bAll', NULL, 0, 0, NULL, 1, 3, NULL),
(94, 'propertytype', 'properties', 0, 'Property Types', 'Property Types', 'PropertyTypeList.php', '', 'bAll', NULL, 0, 0, NULL, 1, 4, NULL),
(100, 'generalsetting', 'admin', 0, 'Edit General Settings', 'Edit General Settings', 'SystemSettings.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 1, NULL),
(101, 'editusers', 'admin', 0, 'System Users', 'System Users', 'UserList.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 2, NULL),
(102, 'accessreport', 'admin', 0, 'Access report', 'Access report', 'AccessReport.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 3, NULL),
(104, 'customfamilyfld', 'admin', 0, 'Edit Custom Family Fields', 'Edit Custom Family Fields', 'FamilyCustomFieldsEditor.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 5, NULL),
(105, 'custompersonfld', 'admin', 0, 'Edit Custom Person Fields', 'Edit Custom Person Fields', 'PersonCustomFieldsEditor.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 6, NULL),
(106, 'donationfund', 'admin', 0, 'Edit Donation Funds', 'Edit Donation Funds', 'DonationFundEditor.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 7, NULL),
(107, 'dbbackup', 'admin', 0, 'Backup Database', 'Backup Database', 'BackupDatabase.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 8, NULL),
(108, 'dbrestore', 'admin', 0, 'Restore Database', 'Restore Database', 'RestoreDatabase.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 9, NULL),
(109, 'cvsimport', 'admin', 0, 'CSV Import', 'CSV Import', 'CSVImport.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 10, NULL),
(110, 'seeddata', 'admin', 0, 'Generate Seed Data', 'Generate Seed Data', 'GenerateSeedData.php', '', 'bAdmin', NULL, 0, 0, NULL, 1, 11, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multibuy_mb`
--

CREATE TABLE `multibuy_mb` (
  `mb_ID` mediumint(9) UNSIGNED NOT NULL,
  `mb_per_ID` mediumint(9) NOT NULL DEFAULT '0',
  `mb_item_ID` mediumint(9) NOT NULL DEFAULT '0',
  `mb_count` decimal(8,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `note_nte`
--

CREATE TABLE `note_nte` (
  `nte_ID` mediumint(8) UNSIGNED NOT NULL,
  `nte_per_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `nte_fam_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `nte_Private` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `nte_Text` text COLLATE utf8_unicode_ci,
  `nte_DateEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nte_DateLastEdited` datetime DEFAULT NULL,
  `nte_EnteredBy` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `nte_EditedBy` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `nte_Type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `note_nte`
--

INSERT INTO `note_nte` (`nte_ID`, `nte_per_ID`, `nte_fam_ID`, `nte_Private`, `nte_Text`, `nte_DateEntered`, `nte_DateLastEdited`, `nte_EnteredBy`, `nte_EditedBy`, `nte_Type`) VALUES
(1, 2, 0, 0, 'Created', '2016-11-01 11:44:44', NULL, 1, 0, 'create'),
(2, 2, 0, 0, 'Updated', '2017-01-31 14:21:25', NULL, 1, 0, 'edit'),
(3, 2, 0, 0, 'Profile Image Uploaded', '2017-01-31 14:22:20', NULL, 1, 0, 'photo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paddlenum_pn`
--

CREATE TABLE `paddlenum_pn` (
  `pn_ID` mediumint(9) UNSIGNED NOT NULL,
  `pn_fr_ID` mediumint(9) UNSIGNED DEFAULT NULL,
  `pn_Num` mediumint(9) UNSIGNED DEFAULT NULL,
  `pn_per_ID` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person2group2role_p2g2r`
--

CREATE TABLE `person2group2role_p2g2r` (
  `p2g2r_per_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `p2g2r_grp_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `p2g2r_rle_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person2volunteeropp_p2vo`
--

CREATE TABLE `person2volunteeropp_p2vo` (
  `p2vo_ID` mediumint(9) NOT NULL,
  `p2vo_per_ID` mediumint(9) DEFAULT NULL,
  `p2vo_vol_ID` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person_custom`
--

CREATE TABLE `person_custom` (
  `per_ID` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `person_custom`
--

INSERT INTO `person_custom` (`per_ID`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person_custom_master`
--

CREATE TABLE `person_custom_master` (
  `custom_Order` smallint(6) NOT NULL DEFAULT '0',
  `custom_Field` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_Name` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_Special` mediumint(8) UNSIGNED DEFAULT NULL,
  `custom_Side` enum('left','right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'left',
  `custom_FieldSec` tinyint(4) NOT NULL,
  `type_ID` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person_per`
--

CREATE TABLE `person_per` (
  `per_ID` mediumint(9) UNSIGNED NOT NULL,
  `per_Title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_FirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_MiddleName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_LastName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Suffix` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Address1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Address2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_HomePhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_WorkPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_CellPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_WorkEmail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_BirthMonth` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `per_BirthDay` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `per_BirthYear` year(4) DEFAULT NULL,
  `per_MembershipDate` date DEFAULT NULL,
  `per_Gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `per_fmr_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `per_cls_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `per_fam_ID` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `per_Envelope` smallint(5) UNSIGNED DEFAULT NULL,
  `per_DateLastEdited` datetime DEFAULT NULL,
  `per_DateEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `per_EnteredBy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `per_EditedBy` smallint(5) UNSIGNED DEFAULT '0',
  `per_FriendDate` date DEFAULT NULL,
  `per_Flags` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `person_per`
--

INSERT INTO `person_per` (`per_ID`, `per_Title`, `per_FirstName`, `per_MiddleName`, `per_LastName`, `per_Suffix`, `per_Address1`, `per_Address2`, `per_City`, `per_State`, `per_Zip`, `per_Country`, `per_HomePhone`, `per_WorkPhone`, `per_CellPhone`, `per_Email`, `per_WorkEmail`, `per_BirthMonth`, `per_BirthDay`, `per_BirthYear`, `per_MembershipDate`, `per_Gender`, `per_fmr_ID`, `per_cls_ID`, `per_fam_ID`, `per_Envelope`, `per_DateLastEdited`, `per_DateEntered`, `per_EnteredBy`, `per_EditedBy`, `per_FriendDate`, `per_Flags`) VALUES
(1, NULL, 'Church', NULL, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0000, NULL, 0, 0, 0, 0, NULL, NULL, '2004-08-25 18:00:00', 1, 0, NULL, 0),
(2, 'Hno', 'uriel', 'isai', 'Alvarez Lopez', '', '', '', '', '', '', 'United States', '', '0811607974281160', '(839) 044-24__', 'isai_tux@hotmail.com', '', 2, 3, 1993, NULL, 1, 2, 1, 1, 0, '2017-01-31 14:21:25', '2016-11-01 11:44:44', 1, 1, '2016-11-01', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pledge_plg`
--

CREATE TABLE `pledge_plg` (
  `plg_plgID` mediumint(9) NOT NULL,
  `plg_FamID` mediumint(9) DEFAULT NULL,
  `plg_FYID` mediumint(9) DEFAULT NULL,
  `plg_date` date DEFAULT NULL,
  `plg_amount` decimal(8,2) DEFAULT NULL,
  `plg_schedule` enum('Weekly','Monthly','Quarterly','Once','Other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `plg_method` enum('CREDITCARD','CHECK','CASH','BANKDRAFT','EGIVE') COLLATE utf8_unicode_ci DEFAULT NULL,
  `plg_comment` text COLLATE utf8_unicode_ci,
  `plg_DateLastEdited` date NOT NULL DEFAULT '0000-00-00',
  `plg_EditedBy` mediumint(9) NOT NULL DEFAULT '0',
  `plg_PledgeOrPayment` enum('Pledge','Payment') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pledge',
  `plg_fundID` tinyint(3) UNSIGNED DEFAULT NULL,
  `plg_depID` mediumint(9) UNSIGNED DEFAULT NULL,
  `plg_CheckNo` bigint(16) UNSIGNED DEFAULT NULL,
  `plg_Problem` tinyint(1) DEFAULT NULL,
  `plg_scanString` text COLLATE utf8_unicode_ci,
  `plg_aut_ID` mediumint(9) NOT NULL DEFAULT '0',
  `plg_aut_Cleared` tinyint(1) NOT NULL DEFAULT '0',
  `plg_aut_ResultID` mediumint(9) NOT NULL DEFAULT '0',
  `plg_NonDeductible` decimal(8,2) NOT NULL,
  `plg_GroupKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propertytype_prt`
--

CREATE TABLE `propertytype_prt` (
  `prt_ID` mediumint(9) NOT NULL,
  `prt_Class` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `prt_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `prt_Description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `propertytype_prt`
--

INSERT INTO `propertytype_prt` (`prt_ID`, `prt_Class`, `prt_Name`, `prt_Description`) VALUES
(1, 'p', 'General', 'General Person Properties'),
(2, 'f', 'General', 'General Family Properties'),
(3, 'g', 'General', 'General Group Properties');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `property_pro`
--

CREATE TABLE `property_pro` (
  `pro_ID` mediumint(8) UNSIGNED NOT NULL,
  `pro_Class` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pro_prt_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pro_Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pro_Description` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_Prompt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `property_pro`
--

INSERT INTO `property_pro` (`pro_ID`, `pro_Class`, `pro_prt_ID`, `pro_Name`, `pro_Description`, `pro_Prompt`) VALUES
(1, 'p', 1, 'Disabled', 'has a disability.', 'What is the nature of the disability?'),
(2, 'f', 2, 'Single Parent', 'is a single-parent household.', ''),
(3, 'g', 3, 'Youth', 'is youth-oriented.', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queryparameteroptions_qpo`
--

CREATE TABLE `queryparameteroptions_qpo` (
  `qpo_ID` smallint(5) UNSIGNED NOT NULL,
  `qpo_qrp_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `qpo_Display` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qpo_Value` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `queryparameteroptions_qpo`
--

INSERT INTO `queryparameteroptions_qpo` (`qpo_ID`, `qpo_qrp_ID`, `qpo_Display`, `qpo_Value`) VALUES
(1, 4, 'Male', '1'),
(2, 4, 'Female', '2'),
(3, 6, 'Male', '1'),
(4, 6, 'Female', '2'),
(5, 15, 'Name', 'CONCAT(per_FirstName,per_MiddleName,per_LastName)'),
(6, 15, 'Zip Code', 'fam_Zip'),
(7, 15, 'State', 'fam_State'),
(8, 15, 'City', 'fam_City'),
(9, 15, 'Home Phone', 'per_HomePhone'),
(10, 27, '2012/2013', '17'),
(11, 27, '2013/2014', '18'),
(12, 27, '2014/2015', '19'),
(13, 27, '2015/2016', '20'),
(14, 28, '2012/2013', '17'),
(15, 28, '2013/2014', '18'),
(16, 28, '2014/2015', '19'),
(17, 28, '2015/2016', '20'),
(18, 30, '2012/2013', '17'),
(19, 30, '2013/2014', '18'),
(20, 30, '2014/2015', '19'),
(21, 30, '2015/2016', '20'),
(22, 31, '2012/2013', '17'),
(23, 31, '2013/2014', '18'),
(24, 31, '2014/2015', '19'),
(25, 31, '2015/2016', '20'),
(26, 15, 'Email', 'per_Email'),
(27, 15, 'WorkEmail', 'per_WorkEmail'),
(28, 32, '2012/2013', '17'),
(29, 32, '2013/2014', '18'),
(30, 32, '2014/2015', '19'),
(31, 32, '2015/2016', '20'),
(32, 33, 'Member', '1'),
(33, 33, 'Regular Attender', '2'),
(34, 33, 'Guest', '3'),
(35, 33, 'Non-Attender', '4'),
(36, 33, 'Non-Attender (staff)', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queryparameters_qrp`
--

CREATE TABLE `queryparameters_qrp` (
  `qrp_ID` mediumint(8) UNSIGNED NOT NULL,
  `qrp_qry_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `qrp_Type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `qrp_OptionSQL` text COLLATE utf8_unicode_ci,
  `qrp_Name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Description` text COLLATE utf8_unicode_ci,
  `qrp_Alias` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Default` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `qrp_InputBoxSize` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `qrp_Validation` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qrp_NumericMax` int(11) DEFAULT NULL,
  `qrp_NumericMin` int(11) DEFAULT NULL,
  `qrp_AlphaMinLength` int(11) DEFAULT NULL,
  `qrp_AlphaMaxLength` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `queryparameters_qrp`
--

INSERT INTO `queryparameters_qrp` (`qrp_ID`, `qrp_qry_ID`, `qrp_Type`, `qrp_OptionSQL`, `qrp_Name`, `qrp_Description`, `qrp_Alias`, `qrp_Default`, `qrp_Required`, `qrp_InputBoxSize`, `qrp_Validation`, `qrp_NumericMax`, `qrp_NumericMin`, `qrp_AlphaMinLength`, `qrp_AlphaMaxLength`) VALUES
(1, 4, 0, NULL, 'Minimum Age', 'The minimum age for which you want records returned.', 'min', '0', 0, 5, 'n', 120, 0, NULL, NULL),
(2, 4, 0, NULL, 'Maximum Age', 'The maximum age for which you want records returned.', 'max', '120', 1, 5, 'n', 120, 0, NULL, NULL),
(4, 6, 1, '', 'Gender', 'The desired gender to search the database for.', 'gender', '1', 1, 0, '', 0, 0, 0, 0),
(5, 7, 2, 'SELECT lst_OptionID as Value, lst_OptionName as Display FROM list_lst WHERE lst_ID=2 ORDER BY lst_OptionSequence', 'Family Role', 'Select the desired family role.', 'role', '1', 0, 0, '', 0, 0, 0, 0),
(6, 7, 1, '', 'Gender', 'The gender for which you would like records returned.', 'gender', '1', 1, 0, '', 0, 0, 0, 0),
(8, 9, 2, 'SELECT pro_ID AS Value, pro_Name as Display \r\nFROM property_pro\r\nWHERE pro_Class= ''p'' \r\nORDER BY pro_Name ', 'Property', 'The property for which you would like person records returned.', 'PropertyID', '0', 1, 0, '', 0, 0, 0, 0),
(9, 10, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don ORDER BY don_date ASC', 'Beginning Date', 'Please select the beginning date to calculate total contributions for each member (i.e. YYYY-MM-DD). NOTE: You can only choose dates that conatain donations.', 'startdate', '1', 1, 0, '0', 0, 0, 0, 0),
(10, 10, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don\r\nORDER BY don_date DESC', 'Ending Date', 'Please enter the last date to calculate total contributions for each member (i.e. YYYY-MM-DD).', 'enddate', '1', 1, 0, '', 0, 0, 0, 0),
(14, 15, 0, '', 'Search', 'Enter any part of the following: Name, City, State, Zip, Home Phone, Email, or Work Email.', 'searchstring', '', 1, 0, '', 0, 0, 0, 0),
(15, 15, 1, '', 'Field', 'Select field to search for.', 'searchwhat', '1', 1, 0, '', 0, 0, 0, 0),
(16, 11, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don ORDER BY don_date ASC', 'Beginning Date', 'Please select the beginning date to calculate total contributions for each member (i.e. YYYY-MM-DD). NOTE: You can only choose dates that conatain donations.', 'startdate', '1', 1, 0, '0', 0, 0, 0, 0),
(17, 11, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don\r\nORDER BY don_date DESC', 'Ending Date', 'Please enter the last date to calculate total contributions for each member (i.e. YYYY-MM-DD).', 'enddate', '1', 1, 0, '', 0, 0, 0, 0),
(18, 18, 0, '', 'Month', 'The birthday month for which you would like records returned.', 'birthmonth', '1', 1, 0, '', 12, 1, 1, 2),
(19, 19, 2, 'SELECT grp_ID AS Value, grp_Name AS Display FROM group_grp ORDER BY grp_Type', 'Class', 'The sunday school class for which you would like records returned.', 'group', '1', 1, 0, '', 12, 1, 1, 2),
(20, 20, 2, 'SELECT grp_ID AS Value, grp_Name AS Display FROM group_grp ORDER BY grp_Type', 'Class', 'The sunday school class for which you would like records returned.', 'group', '1', 1, 0, '', 12, 1, 1, 2),
(21, 21, 2, 'SELECT grp_ID AS Value, grp_Name AS Display FROM group_grp ORDER BY grp_Type', 'Registered students', 'Group of registered students', 'group', '1', 1, 0, '', 12, 1, 1, 2),
(22, 22, 0, '', 'Month', 'The membership anniversary month for which you would like records returned.', 'membermonth', '1', 1, 0, '', 12, 1, 1, 2),
(25, 25, 2, 'SELECT vol_ID AS Value, vol_Name AS Display FROM volunteeropportunity_vol ORDER BY vol_Name', 'Volunteer opportunities', 'Choose a volunteer opportunity', 'volopp', '1', 1, 0, '', 12, 1, 1, 2),
(26, 26, 0, '', 'Months', 'Number of months since becoming a friend', 'friendmonths', '1', 1, 0, '', 24, 1, 1, 2),
(27, 28, 1, '', 'First Fiscal Year', 'First fiscal year for comparison', 'fyid1', '9', 1, 0, '', 12, 9, 0, 0),
(28, 28, 1, '', 'Second Fiscal Year', 'Second fiscal year for comparison', 'fyid2', '9', 1, 0, '', 12, 9, 0, 0),
(30, 30, 1, '', 'First Fiscal Year', 'Pledged this year', 'fyid1', '9', 1, 0, '', 12, 9, 0, 0),
(31, 30, 1, '', 'Second Fiscal Year', 'but not this year', 'fyid2', '9', 1, 0, '', 12, 9, 0, 0),
(32, 32, 1, '', 'Fiscal Year', 'Fiscal Year.', 'fyid', '9', 1, 0, '', 12, 9, 0, 0),
(33, 18, 1, '', 'Classification', 'Member, Regular Attender, etc.', 'percls', '1', 1, 0, '', 12, 1, 1, 2),
(100, 100, 2, 'SELECT vol_ID AS Value, vol_Name AS Display FROM volunteeropportunity_vol ORDER BY vol_Name', 'Volunteer opportunities', 'First volunteer opportunity choice', 'volopp1', '1', 1, 0, '', 12, 1, 1, 2),
(101, 100, 2, 'SELECT vol_ID AS Value, vol_Name AS Display FROM volunteeropportunity_vol ORDER BY vol_Name', 'Volunteer opportunities', 'Second volunteer opportunity choice', 'volopp2', '1', 1, 0, '', 12, 1, 1, 2),
(200, 200, 2, 'SELECT custom_field as Value, custom_Name as Display FROM person_custom_master', 'Custom field', 'Choose customer person field', 'custom', '1', 0, 0, '', 0, 0, 0, 0),
(201, 200, 0, '', 'Field value', 'Match custom field to this value', 'value', '1', 0, 0, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `query_qry`
--

CREATE TABLE `query_qry` (
  `qry_ID` mediumint(8) UNSIGNED NOT NULL,
  `qry_SQL` text COLLATE utf8_unicode_ci NOT NULL,
  `qry_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qry_Description` text COLLATE utf8_unicode_ci NOT NULL,
  `qry_Count` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `query_qry`
--

INSERT INTO `query_qry` (`qry_ID`, `qry_SQL`, `qry_Name`, `qry_Description`, `qry_Count`) VALUES
(3, 'SELECT CONCAT(''<a href=FamilyView.php?FamilyID='',fam_ID,''>'',fam_Name,''</a>'') AS ''Family Name'', COUNT(*) AS ''No.''\nFROM person_per\nINNER JOIN family_fam\nON fam_ID = per_fam_ID\nGROUP BY per_fam_ID\nORDER BY ''No.'' DESC', 'Family Member Count', 'Returns each family and the total number of people assigned to them.', 0),
(4, 'SELECT per_ID as AddToCart,CONCAT(''<a\r\nhref=PersonView.php?PersonID='',per_ID,''>'',per_FirstName,''\r\n'',per_LastName,''</a>'') AS Name,\r\nCONCAT(per_BirthMonth,''/'',per_BirthDay,''/'',per_BirthYear) AS ''Birth Date'',\r\nDATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(CONCAT(per_BirthYear,''-'',per_BirthMonth,''-'',per_BirthDay))),''%Y'')+0 AS  ''Age''\r\nFROM person_per\r\nWHERE\r\nDATE_ADD(CONCAT(per_BirthYear,''-'',per_BirthMonth,''-'',per_BirthDay),INTERVAL\r\n~min~ YEAR) <= CURDATE()\r\nAND\r\nDATE_ADD(CONCAT(per_BirthYear,''-'',per_BirthMonth,''-'',per_BirthDay),INTERVAL\r\n(~max~ + 1) YEAR) >= CURDATE()', 'Person by Age', 'Returns any person records with ages between two given ages.', 1),
(6, 'SELECT COUNT(per_ID) AS Total FROM person_per WHERE per_Gender = ~gender~', 'Total By Gender', 'Total of records matching a given gender.', 0),
(7, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,'' '',per_LastName) AS Name FROM person_per WHERE per_fmr_ID = ~role~ AND per_Gender = ~gender~', 'Person by Role and Gender', 'Selects person records with the family role and gender specified.', 1),
(9, 'SELECT \r\nper_ID as AddToCart, \r\nCONCAT(per_FirstName,'' '',per_LastName) AS Name, \r\nCONCAT(r2p_Value,'' '') AS Value\r\nFROM person_per,record2property_r2p\r\nWHERE per_ID = r2p_record_ID\r\nAND r2p_pro_ID = ~PropertyID~\r\nORDER BY per_LastName', 'Person by Property', 'Returns person records which are assigned the given property.', 1),
(15, 'SELECT per_ID as AddToCart, CONCAT(''<a href=PersonView.php?PersonID='',per_ID,''>'',per_FirstName,'' '',per_MiddleName,'' '',per_LastName,''</a>'') AS Name, fam_City as City, fam_State as State, fam_Zip as ZIP, per_HomePhone as HomePhone, per_Email as Email, per_WorkEmail as WorkEmail FROM person_per RIGHT JOIN family_fam ON family_fam.fam_id = person_per.per_fam_id WHERE ~searchwhat~ LIKE ''%~searchstring~%''', 'Advanced Search', 'Search by any part of Name, City, State, Zip, Home Phone, Email, or Work Email.', 1),
(18, 'SELECT per_ID as AddToCart, per_BirthDay as Day, CONCAT(per_FirstName,'' '',per_LastName) AS Name FROM person_per WHERE per_cls_ID=~percls~ AND per_BirthMonth=~birthmonth~ ORDER BY per_BirthDay', 'Birthdays', 'People with birthdays in a particular month', 0),
(21, 'SELECT per_ID as AddToCart, CONCAT(''<a href=PersonView.php?PersonID='',per_ID,''>'',per_FirstName,'' '',per_LastName,''</a>'') AS Name FROM person_per LEFT JOIN person2group2role_p2g2r ON per_id = p2g2r_per_ID WHERE p2g2r_grp_ID=~group~ ORDER BY per_LastName', 'Registered students', 'Find Registered students', 1),
(22, 'SELECT per_ID as AddToCart, DAYOFMONTH(per_MembershipDate) as Day, per_MembershipDate AS DATE, CONCAT(per_FirstName,'' '',per_LastName) AS Name FROM person_per WHERE per_cls_ID=1 AND MONTH(per_MembershipDate)=~membermonth~ ORDER BY per_MembershipDate', 'Membership anniversaries', 'Members who joined in a particular month', 0),
(23, 'SELECT usr_per_ID as AddToCart, CONCAT(a.per_FirstName,'' '',a.per_LastName) AS Name FROM user_usr LEFT JOIN person_per a ON per_ID=usr_per_ID ORDER BY per_LastName', 'Select database users', 'People who are registered as database users', 0),
(24, 'SELECT per_ID as AddToCart, CONCAT(''<a href=PersonView.php?PersonID='',per_ID,''>'',per_FirstName,'' '',per_LastName,''</a>'') AS Name FROM person_per WHERE per_cls_id =1', 'Select all members', 'People who are members', 0),
(25, 'SELECT per_ID as AddToCart, CONCAT(''<a href=PersonView.php?PersonID='',per_ID,''>'',per_FirstName,'' '',per_LastName,''</a>'') AS Name FROM person_per LEFT JOIN person2volunteeropp_p2vo ON per_id = p2vo_per_ID WHERE p2vo_vol_ID = ~volopp~ ORDER BY per_LastName', 'Volunteers', 'Find volunteers for a particular opportunity', 1),
(26, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,'' '',per_LastName) AS Name FROM person_per WHERE DATE_SUB(NOW(),INTERVAL ~friendmonths~ MONTH)<per_FriendDate ORDER BY per_MembershipDate', 'Recent friends', 'Friends who signed up in previous months', 0),
(27, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,'' '',per_LastName) AS Name FROM person_per inner join family_fam on per_fam_ID=fam_ID where per_fmr_ID<>3 AND fam_OkToCanvass="TRUE" ORDER BY fam_Zip', 'Families to Canvass', 'People in families that are ok to canvass.', 0),
(28, 'SELECT fam_Name, a.plg_amount as PlgFY1, b.plg_amount as PlgFY2 from family_fam left join pledge_plg a on a.plg_famID = fam_ID and a.plg_FYID=~fyid1~ and a.plg_PledgeOrPayment=''Pledge'' left join pledge_plg b on b.plg_famID = fam_ID and b.plg_FYID=~fyid2~ and b.plg_PledgeOrPayment=''Pledge'' order by fam_Name', 'Pledge comparison', 'Compare pledges between two fiscal years', 1),
(30, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,'' '',per_LastName) AS Name, fam_address1, fam_city, fam_state, fam_zip FROM person_per join family_fam on per_fam_id=fam_id where per_fmr_id<>3 and per_fam_id in (select fam_id from family_fam inner join pledge_plg a on a.plg_famID=fam_ID and a.plg_FYID=~fyid1~ and a.plg_amount>0) and per_fam_id not in (select fam_id from family_fam inner join pledge_plg b on b.plg_famID=fam_ID and b.plg_FYID=~fyid2~ and b.plg_amount>0)', 'Missing pledges', 'Find people who pledged one year but not another', 1),
(31, 'select per_ID as AddToCart, per_FirstName, per_LastName, per_email from person_per, autopayment_aut where aut_famID=per_fam_ID and aut_CreditCard!="" and per_email!="" and (per_fmr_ID=1 or per_fmr_ID=2 or per_cls_ID=1)', 'Credit Card People', 'People who are configured to pay by credit card.', 0),
(32, 'SELECT fam_Name, fam_Envelope, b.fun_Name as Fund_Name, a.plg_amount as Pledge from family_fam left join pledge_plg a on a.plg_famID = fam_ID and a.plg_FYID=~fyid~ and a.plg_PledgeOrPayment=''Pledge'' and a.plg_amount>0 join donationfund_fun b on b.fun_ID = a.plg_fundID order by fam_Name, a.plg_fundID', 'Family Pledge by Fiscal Year', 'Pledge summary by family name for each fund for the selected fiscal year', 1),
(100, 'SELECT a.per_ID as AddToCart, CONCAT(''<a href=PersonView.php?PersonID='',a.per_ID,''>'',a.per_FirstName,'' '',a.per_LastName,''</a>'') AS Name FROM person_per AS a LEFT JOIN person2volunteeropp_p2vo p2v1 ON (a.per_id = p2v1.p2vo_per_ID AND p2v1.p2vo_vol_ID = ~volopp1~) LEFT JOIN person2volunteeropp_p2vo p2v2 ON (a.per_id = p2v2.p2vo_per_ID AND p2v2.p2vo_vol_ID = ~volopp2~) WHERE p2v1.p2vo_per_ID=p2v2.p2vo_per_ID ORDER BY per_LastName', 'Volunteers', 'Find volunteers for who match two specific opportunity codes', 1),
(200, 'SELECT a.per_ID as AddToCart, CONCAT(''<a href=PersonView.php?PersonID='',a.per_ID,''>'',a.per_FirstName,'' '',a.per_LastName,''</a>'') AS Name FROM person_per AS a LEFT JOIN person_custom pc ON a.per_id = pc.per_ID WHERE pc.~custom~=''~value~'' ORDER BY per_LastName', 'CustomSearch', 'Find people with a custom field value', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `record2property_r2p`
--

CREATE TABLE `record2property_r2p` (
  `r2p_pro_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `r2p_record_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `r2p_Value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `result_res`
--

CREATE TABLE `result_res` (
  `res_ID` mediumint(9) NOT NULL,
  `res_echotype1` text COLLATE utf8_unicode_ci NOT NULL,
  `res_echotype2` text COLLATE utf8_unicode_ci NOT NULL,
  `res_echotype3` text COLLATE utf8_unicode_ci NOT NULL,
  `res_authorization` text COLLATE utf8_unicode_ci NOT NULL,
  `res_order_number` text COLLATE utf8_unicode_ci NOT NULL,
  `res_reference` text COLLATE utf8_unicode_ci NOT NULL,
  `res_status` text COLLATE utf8_unicode_ci NOT NULL,
  `res_avs_result` text COLLATE utf8_unicode_ci NOT NULL,
  `res_security_result` text COLLATE utf8_unicode_ci NOT NULL,
  `res_mac` text COLLATE utf8_unicode_ci NOT NULL,
  `res_decline_code` text COLLATE utf8_unicode_ci NOT NULL,
  `res_tran_date` text COLLATE utf8_unicode_ci NOT NULL,
  `res_merchant_name` text COLLATE utf8_unicode_ci NOT NULL,
  `res_version` text COLLATE utf8_unicode_ci NOT NULL,
  `res_EchoServer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userconfig_ucfg`
--

CREATE TABLE `userconfig_ucfg` (
  `ucfg_per_id` mediumint(9) UNSIGNED NOT NULL,
  `ucfg_id` int(11) NOT NULL DEFAULT '0',
  `ucfg_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ucfg_value` text COLLATE utf8_unicode_ci,
  `ucfg_type` enum('text','number','date','boolean','textarea') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `ucfg_tooltip` text COLLATE utf8_unicode_ci NOT NULL,
  `ucfg_permission` enum('FALSE','TRUE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FALSE',
  `ucfg_cat` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `userconfig_ucfg`
--

INSERT INTO `userconfig_ucfg` (`ucfg_per_id`, `ucfg_id`, `ucfg_name`, `ucfg_value`, `ucfg_type`, `ucfg_tooltip`, `ucfg_permission`, `ucfg_cat`) VALUES
(0, 0, 'bEmailMailto', '1', 'boolean', 'User permission to send email via mailto: links', 'TRUE', ''),
(0, 1, 'sMailtoDelimiter', ',', 'text', 'Delimiter to separate emails in mailto: links', 'TRUE', ''),
(0, 2, 'bSendPHPMail', '0', 'boolean', 'User permission to send email using PHPMailer', 'FALSE', ''),
(0, 3, 'sFromEmailAddress', '', 'text', 'Reply email address: PHPMailer', 'FALSE', ''),
(0, 4, 'sFromName', 'ChurchCRM Webmaster', 'text', 'Name that appears in From field: PHPMailer', 'FALSE', ''),
(0, 5, 'bCreateDirectory', '0', 'boolean', 'User permission to create directories', 'FALSE', 'SECURITY'),
(0, 6, 'bExportCSV', '0', 'boolean', 'User permission to export CSV files', 'FALSE', 'SECURITY'),
(0, 7, 'bUSAddressVerification', '0', 'boolean', 'User permission to use IST Address Verification', 'FALSE', ''),
(1, 0, 'bEmailMailto', '1', 'boolean', 'User permission to send email via mailto: links', 'TRUE', ''),
(1, 1, 'sMailtoDelimiter', ',', 'text', 'user permission to send email via mailto: links', 'TRUE', ''),
(1, 2, 'bSendPHPMail', '1', 'boolean', 'User permission to send email using PHPMailer', 'TRUE', ''),
(1, 3, 'sFromEmailAddress', '', 'text', 'Reply email address for PHPMailer', 'TRUE', ''),
(1, 4, 'sFromName', 'ChurchCRM Webmaster', 'text', 'Name that appears in From field', 'TRUE', ''),
(1, 5, 'bCreateDirectory', '1', 'boolean', 'User permission to create directories', 'TRUE', ''),
(1, 6, 'bExportCSV', '1', 'boolean', 'User permission to export CSV files', 'TRUE', ''),
(1, 7, 'bUSAddressVerification', '1', 'boolean', 'User permission to use IST Address Verification', 'TRUE', ''),
(0, 10, 'bAddEvent', '0', 'boolean', 'Allow user to add new event', 'FALSE', 'SECURITY'),
(0, 11, 'bSeePrivacyData', '0', 'boolean', 'Allow user to see member privacy data, e.g. Birth Year, Age.', 'FALSE', 'SECURITY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_usr`
--

CREATE TABLE `user_usr` (
  `usr_per_ID` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `usr_Password` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usr_NeedPasswordChange` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `usr_LastLogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usr_LoginCount` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `usr_FailedLogins` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_AddRecords` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_EditRecords` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_DeleteRecords` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_MenuOptions` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_ManageGroups` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_Finance` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_Communication` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_Notes` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_Admin` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_Workspacewidth` smallint(6) DEFAULT NULL,
  `usr_BaseFontSize` tinyint(4) DEFAULT NULL,
  `usr_SearchLimit` tinyint(4) DEFAULT '10',
  `usr_Style` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Style.css',
  `usr_showPledges` tinyint(1) NOT NULL DEFAULT '0',
  `usr_showPayments` tinyint(1) NOT NULL DEFAULT '0',
  `usr_showSince` date NOT NULL DEFAULT '0000-00-00',
  `usr_defaultFY` mediumint(9) NOT NULL DEFAULT '10',
  `usr_currentDeposit` mediumint(9) NOT NULL DEFAULT '0',
  `usr_UserName` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_EditSelf` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `usr_CalStart` date DEFAULT NULL,
  `usr_CalEnd` date DEFAULT NULL,
  `usr_CalNoSchool1` date DEFAULT NULL,
  `usr_CalNoSchool2` date DEFAULT NULL,
  `usr_CalNoSchool3` date DEFAULT NULL,
  `usr_CalNoSchool4` date DEFAULT NULL,
  `usr_CalNoSchool5` date DEFAULT NULL,
  `usr_CalNoSchool6` date DEFAULT NULL,
  `usr_CalNoSchool7` date DEFAULT NULL,
  `usr_CalNoSchool8` date DEFAULT NULL,
  `usr_SearchFamily` tinyint(3) DEFAULT NULL,
  `usr_Canvasser` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user_usr`
--

INSERT INTO `user_usr` (`usr_per_ID`, `usr_Password`, `usr_NeedPasswordChange`, `usr_LastLogin`, `usr_LoginCount`, `usr_FailedLogins`, `usr_AddRecords`, `usr_EditRecords`, `usr_DeleteRecords`, `usr_MenuOptions`, `usr_ManageGroups`, `usr_Finance`, `usr_Communication`, `usr_Notes`, `usr_Admin`, `usr_Workspacewidth`, `usr_BaseFontSize`, `usr_SearchLimit`, `usr_Style`, `usr_showPledges`, `usr_showPayments`, `usr_showSince`, `usr_defaultFY`, `usr_currentDeposit`, `usr_UserName`, `usr_EditSelf`, `usr_CalStart`, `usr_CalEnd`, `usr_CalNoSchool1`, `usr_CalNoSchool2`, `usr_CalNoSchool3`, `usr_CalNoSchool4`, `usr_CalNoSchool5`, `usr_CalNoSchool6`, `usr_CalNoSchool7`, `usr_CalNoSchool8`, `usr_SearchFamily`, `usr_Canvasser`) VALUES
(1, 'e0295d9f9c83efed7a21ae99313c5e340282ba4070ba94446f6d2d522da727e6', 0, '2017-01-31 13:34:52', 8, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 580, 9, 10, 'skin-blue', 0, 0, '0000-00-00', 22, 0, 'Admin', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `version_ver`
--

CREATE TABLE `version_ver` (
  `ver_ID` mediumint(9) UNSIGNED NOT NULL,
  `ver_version` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ver_update_start` datetime DEFAULT NULL,
  `ver_update_end` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `version_ver`
--

INSERT INTO `version_ver` (`ver_ID`, `ver_version`, `ver_update_start`, `ver_update_end`) VALUES
(1, '2.1.11', '2016-08-25 17:33:51', '2016-08-25 17:33:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `volunteeropportunity_vol`
--

CREATE TABLE `volunteeropportunity_vol` (
  `vol_ID` int(3) NOT NULL,
  `vol_Order` int(3) NOT NULL DEFAULT '0',
  `vol_Active` enum('true','false') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'true',
  `vol_Name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vol_Description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `whycame_why`
--

CREATE TABLE `whycame_why` (
  `why_ID` mediumint(9) NOT NULL,
  `why_per_ID` mediumint(9) NOT NULL DEFAULT '0',
  `why_join` text COLLATE utf8_unicode_ci NOT NULL,
  `why_come` text COLLATE utf8_unicode_ci NOT NULL,
  `why_suggest` text COLLATE utf8_unicode_ci NOT NULL,
  `why_hearOfUs` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autopayment_aut`
--
ALTER TABLE `autopayment_aut`
  ADD PRIMARY KEY (`aut_ID`),
  ADD UNIQUE KEY `aut_ID` (`aut_ID`);

--
-- Indices de la tabla `canvassdata_can`
--
ALTER TABLE `canvassdata_can`
  ADD PRIMARY KEY (`can_ID`),
  ADD UNIQUE KEY `can_ID` (`can_ID`);

--
-- Indices de la tabla `config_cfg`
--
ALTER TABLE `config_cfg`
  ADD PRIMARY KEY (`cfg_id`),
  ADD UNIQUE KEY `cfg_name` (`cfg_name`),
  ADD KEY `cfg_id` (`cfg_id`);

--
-- Indices de la tabla `deposit_dep`
--
ALTER TABLE `deposit_dep`
  ADD PRIMARY KEY (`dep_ID`);

--
-- Indices de la tabla `donateditem_di`
--
ALTER TABLE `donateditem_di`
  ADD PRIMARY KEY (`di_ID`),
  ADD UNIQUE KEY `di_ID` (`di_ID`);

--
-- Indices de la tabla `donationfund_fun`
--
ALTER TABLE `donationfund_fun`
  ADD PRIMARY KEY (`fun_ID`),
  ADD UNIQUE KEY `fun_ID` (`fun_ID`);

--
-- Indices de la tabla `eventcountnames_evctnm`
--
ALTER TABLE `eventcountnames_evctnm`
  ADD UNIQUE KEY `evctnm_countid` (`evctnm_countid`),
  ADD UNIQUE KEY `evctnm_eventtypeid` (`evctnm_eventtypeid`,`evctnm_countname`);

--
-- Indices de la tabla `eventcounts_evtcnt`
--
ALTER TABLE `eventcounts_evtcnt`
  ADD PRIMARY KEY (`evtcnt_eventid`,`evtcnt_countid`);

--
-- Indices de la tabla `events_event`
--
ALTER TABLE `events_event`
  ADD PRIMARY KEY (`event_id`);
ALTER TABLE `events_event` ADD FULLTEXT KEY `event_txt` (`event_text`);

--
-- Indices de la tabla `event_attend`
--
ALTER TABLE `event_attend`
  ADD UNIQUE KEY `event_id` (`event_id`,`person_id`);

--
-- Indices de la tabla `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indices de la tabla `family_custom`
--
ALTER TABLE `family_custom`
  ADD PRIMARY KEY (`fam_ID`);

--
-- Indices de la tabla `family_fam`
--
ALTER TABLE `family_fam`
  ADD PRIMARY KEY (`fam_ID`),
  ADD KEY `fam_ID` (`fam_ID`);

--
-- Indices de la tabla `fundraiser_fr`
--
ALTER TABLE `fundraiser_fr`
  ADD PRIMARY KEY (`fr_ID`),
  ADD UNIQUE KEY `fr_ID` (`fr_ID`);

--
-- Indices de la tabla `group_grp`
--
ALTER TABLE `group_grp`
  ADD PRIMARY KEY (`grp_ID`),
  ADD UNIQUE KEY `grp_ID` (`grp_ID`),
  ADD KEY `grp_ID_2` (`grp_ID`);

--
-- Indices de la tabla `istlookup_lu`
--
ALTER TABLE `istlookup_lu`
  ADD PRIMARY KEY (`lu_fam_ID`);

--
-- Indices de la tabla `menuconfig_mcf`
--
ALTER TABLE `menuconfig_mcf`
  ADD PRIMARY KEY (`mid`);

--
-- Indices de la tabla `multibuy_mb`
--
ALTER TABLE `multibuy_mb`
  ADD PRIMARY KEY (`mb_ID`),
  ADD UNIQUE KEY `mb_ID` (`mb_ID`);

--
-- Indices de la tabla `note_nte`
--
ALTER TABLE `note_nte`
  ADD PRIMARY KEY (`nte_ID`);

--
-- Indices de la tabla `paddlenum_pn`
--
ALTER TABLE `paddlenum_pn`
  ADD PRIMARY KEY (`pn_ID`),
  ADD UNIQUE KEY `pn_ID` (`pn_ID`);

--
-- Indices de la tabla `person2group2role_p2g2r`
--
ALTER TABLE `person2group2role_p2g2r`
  ADD PRIMARY KEY (`p2g2r_per_ID`,`p2g2r_grp_ID`),
  ADD KEY `p2g2r_per_ID` (`p2g2r_per_ID`,`p2g2r_grp_ID`,`p2g2r_rle_ID`);

--
-- Indices de la tabla `person2volunteeropp_p2vo`
--
ALTER TABLE `person2volunteeropp_p2vo`
  ADD PRIMARY KEY (`p2vo_ID`),
  ADD UNIQUE KEY `p2vo_ID` (`p2vo_ID`);

--
-- Indices de la tabla `person_custom`
--
ALTER TABLE `person_custom`
  ADD PRIMARY KEY (`per_ID`);

--
-- Indices de la tabla `person_per`
--
ALTER TABLE `person_per`
  ADD PRIMARY KEY (`per_ID`),
  ADD KEY `per_ID` (`per_ID`);

--
-- Indices de la tabla `pledge_plg`
--
ALTER TABLE `pledge_plg`
  ADD PRIMARY KEY (`plg_plgID`);

--
-- Indices de la tabla `propertytype_prt`
--
ALTER TABLE `propertytype_prt`
  ADD PRIMARY KEY (`prt_ID`),
  ADD UNIQUE KEY `prt_ID` (`prt_ID`),
  ADD KEY `prt_ID_2` (`prt_ID`);

--
-- Indices de la tabla `property_pro`
--
ALTER TABLE `property_pro`
  ADD PRIMARY KEY (`pro_ID`),
  ADD UNIQUE KEY `pro_ID` (`pro_ID`),
  ADD KEY `pro_ID_2` (`pro_ID`);

--
-- Indices de la tabla `queryparameteroptions_qpo`
--
ALTER TABLE `queryparameteroptions_qpo`
  ADD PRIMARY KEY (`qpo_ID`),
  ADD UNIQUE KEY `qpo_ID` (`qpo_ID`);

--
-- Indices de la tabla `queryparameters_qrp`
--
ALTER TABLE `queryparameters_qrp`
  ADD PRIMARY KEY (`qrp_ID`),
  ADD UNIQUE KEY `qrp_ID` (`qrp_ID`),
  ADD KEY `qrp_ID_2` (`qrp_ID`),
  ADD KEY `qrp_qry_ID` (`qrp_qry_ID`);

--
-- Indices de la tabla `query_qry`
--
ALTER TABLE `query_qry`
  ADD PRIMARY KEY (`qry_ID`),
  ADD UNIQUE KEY `qry_ID` (`qry_ID`),
  ADD KEY `qry_ID_2` (`qry_ID`);

--
-- Indices de la tabla `result_res`
--
ALTER TABLE `result_res`
  ADD PRIMARY KEY (`res_ID`);

--
-- Indices de la tabla `userconfig_ucfg`
--
ALTER TABLE `userconfig_ucfg`
  ADD PRIMARY KEY (`ucfg_per_id`,`ucfg_id`);

--
-- Indices de la tabla `user_usr`
--
ALTER TABLE `user_usr`
  ADD PRIMARY KEY (`usr_per_ID`),
  ADD UNIQUE KEY `usr_UserName` (`usr_UserName`),
  ADD KEY `usr_per_ID` (`usr_per_ID`);

--
-- Indices de la tabla `version_ver`
--
ALTER TABLE `version_ver`
  ADD PRIMARY KEY (`ver_ID`),
  ADD UNIQUE KEY `ver_version` (`ver_version`);

--
-- Indices de la tabla `volunteeropportunity_vol`
--
ALTER TABLE `volunteeropportunity_vol`
  ADD PRIMARY KEY (`vol_ID`),
  ADD UNIQUE KEY `vol_ID` (`vol_ID`);

--
-- Indices de la tabla `whycame_why`
--
ALTER TABLE `whycame_why`
  ADD PRIMARY KEY (`why_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autopayment_aut`
--
ALTER TABLE `autopayment_aut`
  MODIFY `aut_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `canvassdata_can`
--
ALTER TABLE `canvassdata_can`
  MODIFY `can_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `deposit_dep`
--
ALTER TABLE `deposit_dep`
  MODIFY `dep_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `donateditem_di`
--
ALTER TABLE `donateditem_di`
  MODIFY `di_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `donationfund_fun`
--
ALTER TABLE `donationfund_fun`
  MODIFY `fun_ID` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `eventcountnames_evctnm`
--
ALTER TABLE `eventcountnames_evctnm`
  MODIFY `evctnm_countid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `events_event`
--
ALTER TABLE `events_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `event_types`
--
ALTER TABLE `event_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `family_fam`
--
ALTER TABLE `family_fam`
  MODIFY `fam_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `fundraiser_fr`
--
ALTER TABLE `fundraiser_fr`
  MODIFY `fr_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `group_grp`
--
ALTER TABLE `group_grp`
  MODIFY `grp_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `menuconfig_mcf`
--
ALTER TABLE `menuconfig_mcf`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT de la tabla `multibuy_mb`
--
ALTER TABLE `multibuy_mb`
  MODIFY `mb_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `note_nte`
--
ALTER TABLE `note_nte`
  MODIFY `nte_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `paddlenum_pn`
--
ALTER TABLE `paddlenum_pn`
  MODIFY `pn_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `person2volunteeropp_p2vo`
--
ALTER TABLE `person2volunteeropp_p2vo`
  MODIFY `p2vo_ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `person_per`
--
ALTER TABLE `person_per`
  MODIFY `per_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pledge_plg`
--
ALTER TABLE `pledge_plg`
  MODIFY `plg_plgID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `propertytype_prt`
--
ALTER TABLE `propertytype_prt`
  MODIFY `prt_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `property_pro`
--
ALTER TABLE `property_pro`
  MODIFY `pro_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `queryparameteroptions_qpo`
--
ALTER TABLE `queryparameteroptions_qpo`
  MODIFY `qpo_ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `queryparameters_qrp`
--
ALTER TABLE `queryparameters_qrp`
  MODIFY `qrp_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT de la tabla `query_qry`
--
ALTER TABLE `query_qry`
  MODIFY `qry_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT de la tabla `result_res`
--
ALTER TABLE `result_res`
  MODIFY `res_ID` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `version_ver`
--
ALTER TABLE `version_ver`
  MODIFY `ver_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `volunteeropportunity_vol`
--
ALTER TABLE `volunteeropportunity_vol`
  MODIFY `vol_ID` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `whycame_why`
--
ALTER TABLE `whycame_why`
  MODIFY `why_ID` mediumint(9) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
