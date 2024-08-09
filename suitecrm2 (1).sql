-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 09 2024 г., 10:12
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `suitecrm2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('1046dfa4-61ab-17a2-0db7-65c486032622', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('10d124eb-4e31-046d-1fca-65c486eca0f5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Accounts', 'module', 90, 0),
('11673ef4-09d1-e990-a49c-65c486ec277d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('125e93d2-8f0d-d7c5-e6ae-65c4866acbe5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('133439a1-d349-c047-e712-65c486522b38', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('1355dc60-85c2-5707-12c5-65c486f7fa08', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('14417aba-293b-fde9-fa76-65c4860cce41', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('14505558-3ea3-a8ef-364a-65c486b8331e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('1486147e-aa1e-b61b-7725-65c48688cef8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'SurveyQuestions', 'module', 89, 0),
('1545078f-97c8-3562-cdf6-65c4860f4371', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('15533b44-5c31-ed4f-d9bd-65c4869ebd96', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Accounts', 'module', 90, 0),
('15b197b6-4cc2-6a98-c4fd-65c48698b5f2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'SurveyQuestions', 'module', 90, 0),
('163626e3-47ae-174a-4f4f-65c48680dfb6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('16589ec0-f0db-4c19-e09a-65c486acf127', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Accounts', 'module', 90, 0),
('16bcfd4f-8a30-c51e-7dbb-65c486416c5b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'SurveyQuestions', 'module', 90, 0),
('174a0566-d638-4806-c69c-65c4860c7a48', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('17616639-3880-211e-08f7-65c48616e152', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('17af5ff2-9514-f813-4214-65c48602f134', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'SurveyQuestions', 'module', 90, 0),
('18ce34af-a487-fdc7-d118-65c4867c5275', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'SurveyQuestions', 'module', 90, 0),
('19c8c827-be2d-86e4-6782-65c486bd61d0', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'SurveyQuestions', 'module', 90, 0),
('1ad52b7b-7be6-ea26-3750-65c486e0fb58', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'SurveyQuestions', 'module', 90, 0),
('1af6097a-df5b-f89a-aab4-65c486f84ead', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('1bcc884a-73d7-b0c6-c5ff-65c4865cb889', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'SurveyQuestions', 'module', 90, 0),
('1edc0543-d64f-33fc-529a-65c486b6c813', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('1f2344be-2063-631b-b71e-65c4864f811b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('1f986cb1-7724-dbe5-8033-65c486f4fb64', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('20c1bc98-e6a4-8a17-5f93-65c486db7c8c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('21ce1307-d4a9-ca2e-3504-65c48672f5b2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('229a3b41-f1bc-031e-eb35-65c486ea1815', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('22d9eb16-9144-26e4-022e-65c486749949', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('23a63fde-da7e-ec10-427c-65c486c32ae4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('23dd8b0a-ecf5-adeb-0932-65c486674170', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('247003b2-442b-2b69-85c0-65c4868ed51e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('24ab7a7f-1de0-74db-e259-65c4865bcdb1', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('24ca9138-4f69-dd87-0f45-65c486058ce1', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('24d1a532-a17f-60ff-ba99-65c486135221', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('25a387c1-85ab-da6d-5344-65c4868d830e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('25c37738-f8bd-b0cf-4613-65c486f1efcb', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('25f4b5c9-7b64-5d5a-aaf0-65c486ef39b7', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('26865dd4-5224-b099-f2fd-65c486657eef', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('26a34657-aa95-a26a-cd8d-65c486cf477a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('26be94de-0b1c-d81f-7741-65c486fffcfe', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('26fb9487-612b-cf5e-a7da-65c486aec79b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('27a34e06-6e4c-3dd7-e8d0-65c48684ad20', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('27b40904-dde5-3015-415f-65c486078230', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('27f750de-0831-e70f-cb41-65c48669e530', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('28b734cf-3978-ade4-8805-65c48690936a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('28b887e9-be12-fa3b-7253-65c4868ad370', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('29bbc2ad-2261-502b-448b-65c486e28650', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('2aa9ec9d-3f6d-8a23-5dff-65c48688fb0d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('2b9b7fe8-e682-4e7a-a242-65c4863aae84', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('2bda8d08-859e-5bc6-46a5-65c4863360d0', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('2c6959ec-da73-4e4e-619c-65c486a015a3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('2cb3ab74-5eff-f0b9-fece-65c486ce0afa', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('2cf4003c-a9ce-70ae-bd36-65c48676816b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('2d3b9daa-2007-7e0b-16d3-65c48655b075', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('2d8007af-2696-61ec-e36c-65c48687aee6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('2da8ecb4-4fe8-4a77-d41d-65c4861b1749', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('2e3bb08f-2b2c-337f-5b1b-65c48672cf72', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('2e8853d6-bd50-176a-bf14-65c486639091', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('2eb8ae54-945c-6615-7d2f-65c4864081fd', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'InboundEmail', 'module', 89, 0),
('2f51400d-f73f-4eb5-8484-65c48642a35b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('2f88471c-1fc6-4d6d-40d4-65c486753e1e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('2fb9009f-b371-a310-e6ea-65c486dd19b2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('3002d100-4b6d-5b8d-1b31-65c486223ed7', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'InboundEmail', 'module', 90, 0),
('30585de2-c63c-bba4-e5b4-65c486561579', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('30fb4c44-d20c-0673-5ccc-65c486e8325e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'InboundEmail', 'module', 90, 0),
('31512614-51f2-4fed-b967-65c486ea8738', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('31fc55e7-5b1d-6353-4c6e-65c486cc57e3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'InboundEmail', 'module', 90, 0),
('32265e87-85d2-127b-0cb1-65c4867c6c06', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'SurveyQuestionOptions', 'module', 89, 0),
('324b0499-83a1-78bc-d869-65c4866bf755', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('330b6441-f6a1-3c57-4cd7-65c48688fdda', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'InboundEmail', 'module', 90, 0),
('33467b49-02e3-3a01-7420-65c486a390a4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('335d86e7-14b4-abdb-5ee1-65c48623fa11', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'SurveyQuestionOptions', 'module', 90, 0),
('342fbfef-fa72-7923-0cf7-65c486b83d50', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'InboundEmail', 'module', 90, 0),
('347d6d05-ced5-7e2d-623d-65c486c80a40', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'SurveyQuestionOptions', 'module', 90, 0),
('34975bf4-63c8-2ecc-6410-65c4860f164a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('34b702ab-e599-7411-5f93-65c486a11a1c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('3547a96c-5bda-7891-88aa-65c4868a54f8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'InboundEmail', 'module', 90, 0),
('357fb75f-9df9-ff8e-fe95-65c486c24564', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'SurveyQuestionOptions', 'module', 90, 0),
('35c6666a-e8cb-33ad-30fe-65c486a45abc', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('35f82452-f267-dbde-4269-65c486f1d847', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('363d0ab9-56d6-5637-2f20-65c486667504', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('3657771f-9d9d-5560-4117-65c486736516', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'InboundEmail', 'module', 90, 0),
('3675501e-d4a3-9599-27b9-65c486631e90', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'SurveyQuestionOptions', 'module', 90, 0),
('36cdca2e-8d4d-08c4-44a3-65c48652ed17', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('370a2987-b204-e4fc-12ef-65c48655dd5f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('3787ac91-2bb3-42a6-34d4-65c486107d8d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'SurveyQuestionOptions', 'module', 90, 0),
('37dcf76d-811e-8d47-8504-65c486d964f7', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('38102336-8827-9bdb-41c8-65c486f8a2e4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('3887cc6f-78c1-88f2-fd52-65c486910763', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'SurveyQuestionOptions', 'module', 90, 0),
('38d5bf5f-45dc-dfd7-db76-65c4861637f5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('39184446-2cb3-a100-9fd8-65c4860cd6ac', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('3980122a-9782-9dc3-7b9e-65c48644bca1', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'SurveyQuestionOptions', 'module', 90, 0),
('39cebbdc-25d1-446c-b3e0-65c4865b03db', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('3a2a6fab-fa16-3b35-bc48-65c48670b024', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('3ac08480-a299-0bd2-6671-65c486849a26', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('3b2bbd6b-c631-edd0-bfb4-65c486e0a68e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('3bad7de7-f7f7-7226-d185-65c486dec912', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('3c25f3e7-350a-6c1c-1935-65c48692c4ff', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('3d5c011f-f39c-5cf0-0f28-65c48693c2c4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('3f61c26e-4767-eddc-db4d-65c48609beeb', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'ExternalOAuthConnection', 'module', 89, 0),
('3f9d0855-b896-a408-45d8-65c486e4fd36', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('40c8b613-831f-a025-fa55-65c486622433', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'ExternalOAuthConnection', 'module', 90, 0),
('41e58bf3-3312-28dd-1a85-65c4868435e4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'ExternalOAuthConnection', 'module', 90, 0),
('42e6bbed-782f-a311-1e18-65c48668cc51', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'ExternalOAuthConnection', 'module', 90, 0),
('43dcaab0-d4b4-d366-3ea2-65c4863486eb', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'ExternalOAuthConnection', 'module', 90, 0),
('44d2f8bd-9843-e5c9-8146-65c486c0e7cc', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'ExternalOAuthConnection', 'module', 90, 0),
('45d10533-9ef9-8c35-6bd4-65c48606df64', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'ExternalOAuthConnection', 'module', 90, 0),
('46cf7a69-1c3e-459c-152d-65c486874090', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'ExternalOAuthConnection', 'module', 90, 0),
('475d09db-b4e4-19d2-ccd7-65c4861b498d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('47a708b6-da25-8094-9660-65c4869efede', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Leads', 'module', 89, 0),
('47c5f9b7-b50c-58d3-4129-65c48693fbd6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('485e0db7-a765-9d3e-433c-65c486b40de0', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('49134ec0-d9eb-dee0-cd95-65c486c831ad', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('4952f27b-b22c-13f2-bda1-65c48645d7a6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Leads', 'module', 90, 0),
('4968a8c3-c3cd-a9dd-4b63-65c486709f97', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('49989549-b8e7-34db-3f9e-65c48631a040', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('4a3c8021-70cf-dafd-f4a0-65c486f1c81a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('4a5f496a-a7e3-417a-22d1-65c486af77f2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('4ac6b57d-6e07-ebfa-7806-65c486fdf910', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Leads', 'module', 90, 0),
('4acab7ce-70be-986a-4082-65c486d62209', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('4b56d2b0-c247-8385-1a1f-65c486ae7a73', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('4b60e0ee-c93b-174d-8068-65c486ff5517', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('4bc418ae-5808-5fd3-a2a4-65c486150fd5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Leads', 'module', 90, 0),
('4c008bc8-1222-445f-065a-65c4864f91d1', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('4c410159-97e1-6950-6b35-65c486f88efd', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('4c5ca674-3399-1a64-068c-65c48625ab5e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('4c65e439-0acb-351e-850d-65c4865282c8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('4ca87ca7-0d7b-5ff9-faa9-65c48657b3b3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Leads', 'module', 90, 0),
('4d2e5726-1528-bbb9-d05d-65c4865beaf3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('4d632a17-5202-a300-9d6f-65c48607488b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('4d646913-a993-9197-2d74-65c486ea723b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('4da77b13-8bd9-66af-26a0-65c486b56067', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Leads', 'module', 90, 0),
('4e4b7ae5-220e-428c-5546-65c48632d76e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('4e542c21-ccac-d735-8c62-65c4868e4e2b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('4e6686af-213d-e024-c3fb-65c486f15114', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('4e9f5507-8dba-b958-a62c-65c486c50d38', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Leads', 'module', 90, 0),
('4f40b2bb-f232-0cca-95f3-65c486f4819e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('4f71d1f3-be95-f667-a7bf-65c48634afbc', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('4f760c32-6eda-cc5a-8468-65c486c7f6e8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('4f937ea8-0149-5b47-30dc-65c48610297f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('4fba0300-a9f1-d458-df9d-65c486333b6e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('501c0f3f-a460-95af-3b9b-65c486034322', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('506e9bca-56cc-423f-cfc5-65c48602ea41', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('50853f1a-4b52-c1a1-f2ba-65c48681b7d8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Alerts', 'module', 89, 0),
('514ec9e6-d4a4-d905-02db-65c486d821d1', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('516efe5c-acdb-10df-dae1-65c486ebe645', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('51e5015f-06e4-6244-bb31-65c4867d7db1', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Alerts', 'module', 90, 0),
('52575bda-8b8c-185b-6da9-65c486871636', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('52e451a2-9d52-6b63-4652-65c486c3ecc9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Alerts', 'module', 90, 0),
('536c0752-779f-3537-743b-65c48655a0a3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('53d27fee-d274-4b0b-fdc4-65c48603a9a2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('5476620b-f0ab-4543-80ae-65c48615c9ae', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('54ba63ee-70d3-51fe-4367-65c48661461b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('54e6335b-f920-530b-9286-65c4868743b4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('558dd73c-b566-e4f3-34e8-65c486f5661b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('55a808ff-b155-c100-a742-65c4860b7193', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Alerts', 'module', 90, 0),
('55fade97-99d2-7bd1-ac2b-65c48671a181', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('56911cf1-1fd6-5339-e0a9-65c4863d3973', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('56a63487-215e-092f-86a1-65c486fba976', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Alerts', 'module', 90, 0),
('56f3f80c-1752-637e-ef16-65c4864c8074', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('5798b090-70ef-50af-7670-65c486b6875b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('57a69be5-3a41-296f-17ea-65c486c6fab4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('57e30ce6-c7fa-11d0-67c0-65c486975f4c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('57eb5740-bd8c-b1ae-82ab-65c48677c867', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('58fbfec1-f23a-f37a-4c6e-65c486a82bf2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('59a3006b-0000-e18f-244d-65c48617ac92', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('59a9cca5-88cb-d719-9fef-65c48655e340', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'ExternalOAuthProvider', 'module', 89, 0),
('5a0509a2-af84-cc4e-b595-65c4861cdc0a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('5ae070cc-cbf5-e65a-1231-65c486ecf30a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'ExternalOAuthProvider', 'module', 90, 0),
('5afbb796-b18c-afc8-6298-65c48612ab39', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('5beb9f65-bde3-033f-252e-65c486b589fa', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('5c11e1f9-4457-80de-488a-65c4867336ba', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'ExternalOAuthProvider', 'module', 90, 0),
('5c720787-19f5-19f6-5fe2-65c4865a7881', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('5d192095-5477-6913-6aea-65c486332dba', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'ExternalOAuthProvider', 'module', 90, 0),
('5e1e210f-7de2-4f89-6769-65c4865875b8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'ExternalOAuthProvider', 'module', 90, 0),
('5f137c57-dc71-fb4b-da00-65c486e76d0b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'ExternalOAuthProvider', 'module', 90, 0),
('5f750985-b465-cb8f-ed09-65c486136d23', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('6005d0a0-ca00-a1c1-8fe8-65c486ed9f57', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'ExternalOAuthProvider', 'module', 90, 0),
('60fa99b5-023b-e7b0-533a-65c4867e3673', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'ExternalOAuthProvider', 'module', 90, 0),
('623744fa-513b-60bc-f267-65c4866d8aee', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('638612dd-feab-98b5-e81a-65c4868a04b2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('64aa2d71-679e-a256-12f7-65c486b357a9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('6515ada6-1650-586a-b8ab-65c486c61d50', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Prospects', 'module', 89, 0),
('65a7df1b-2431-d717-a477-65c48671e210', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('6615dc6e-3b34-9caa-001e-65c486a401b6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Prospects', 'module', 90, 0),
('669bdc04-f173-88c7-b709-65c4869c307c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('66a2c9bb-4ad5-a39b-bbea-65c4867f6603', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('66efede3-9052-5760-d407-65c4862c60eb', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('670003f4-6244-f1f5-fd9b-65c4866dbdcf', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Prospects', 'module', 90, 0),
('678407fe-9e37-47d9-66ef-65c48629bd4f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('67b86802-2bda-e172-e24a-65c486bf9e52', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('67eb6ce0-5978-8ec2-50b3-65c486c66e4a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('67fa8832-3c2b-7deb-aefa-65c486211bd0', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('681381a9-5a05-2cbc-4268-65c486019792', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('68e091bc-1bfc-5475-1701-65c4867b3d44', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('68e7995f-9a54-ca4d-114b-65c48655ddec', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('68fd2205-2fce-3fba-2d99-65c4865f4cb0', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('6928d245-6410-098a-3459-65c486c0988b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('69ee8dfb-fe50-2bcf-ca62-65c486433f1d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('69f2b00e-8add-cd3a-0ae4-65c486cc8cfb', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('6a02970c-1ee4-208a-e4d5-65c486bcbffe', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Prospects', 'module', 90, 0),
('6a4d4443-48e8-e3b1-0bd0-65c486965e17', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('6ae8b3b2-4e4e-67e0-7b0b-65c4868e78a5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('6afcdef3-0cde-e6a5-e04a-65c4868b34c1', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Prospects', 'module', 90, 0),
('6b50a954-b57e-caaa-4802-65c48652217e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('6bdc8a2b-b6b3-b71b-9bce-65c486492a5a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('6befca48-070d-24ec-3f09-65c4863af2ac', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('6c1409c5-dae2-ec41-f6e8-65c4869efda9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('6c4496f2-5f75-fb1c-7232-65c486e582e4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('6c7f0ae4-9a1f-a17a-14c7-65c48671ff6a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('6cc730ac-5398-b144-3cc9-65c48600bfe3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('6cf5d195-83cd-bace-b071-65c486988fb4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('6d3de863-3c4b-6e55-9f98-65c486317ffe', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('6df04648-9156-4923-3524-65c4864571a2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('6dfcba43-6ef1-1b43-3c1e-65c48679f6b4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('6e365363-cfb4-4eea-bbf6-65c486b08571', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('6f0765ee-8d4e-e43b-df0d-65c486e415cc', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('6f2c0063-2b07-feb7-8559-65c486c8ddd4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('70310799-1cc1-068d-0dfd-65c486edeb9f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('70f754c1-80fd-eba9-8509-65c4869cf3ab', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Notes', 'module', 89, 0),
('71326f7b-f3e6-aa4b-0852-65c486a43452', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('7207870a-da2d-fe88-1676-65c486a22ba3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Notes', 'module', 90, 0),
('72274e94-fb52-8d67-ee7d-65c486256615', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('72a58b20-238d-ffc8-8177-65c48652d3ab', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('7306375b-7530-10ae-b807-65c48662a606', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Notes', 'module', 90, 0),
('733baf32-5fb5-15dd-5755-65c486d784d0', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('735a63bf-2443-c901-de15-65c486241cdd', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Cases', 'module', 89, 0),
('73f29ec2-5a49-5c01-c942-65c486bba4d9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('73f82eb4-3228-3a16-6905-65c48696c764', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Notes', 'module', 90, 0),
('744a64a5-20a8-36a5-50aa-65c486428c20', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('746d5a4c-dedc-e648-20b9-65c4867c07fa', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Cases', 'module', 90, 0),
('74f0894d-7e72-84cc-d0ab-65c4868b91e8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Notes', 'module', 90, 0),
('750a4d5e-f2e4-856d-3fe8-65c486a61173', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('7567bd84-8c4f-4a45-d8cc-65c4867a6ce8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Cases', 'module', 90, 0),
('75e3cd47-d6be-dc6f-1782-65c48685bb6b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Notes', 'module', 90, 0),
('760d3435-7cdf-311f-e5e0-65c486db96f0', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('766e20a0-e6d2-3463-79ba-65c48610ebcd', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Cases', 'module', 90, 0),
('76d2dbb4-4109-6fb3-2531-65c486c08d18', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Notes', 'module', 90, 0),
('77079511-f6dd-ac9e-4f4a-65c486f69488', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('77431ce1-6135-919e-7d4e-65c4868c1423', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Documents', 'module', 89, 0),
('776cff24-b983-a19e-1bbb-65c486eebe5b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Cases', 'module', 90, 0),
('7771096d-e44c-b86b-c317-65c4860f3ca8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('77d57781-b20a-f2c7-de20-65c4865e62b5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('78045fa6-d5f2-1973-5aa4-65c486d0138b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('783ff122-e6f1-56ee-92fd-65c486d1b41a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Documents', 'module', 90, 0),
('78759dd7-6214-6708-b4c1-65c486231634', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Cases', 'module', 90, 0),
('79097db6-be94-94c2-e6d5-65c48631f46e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('795c0bd9-fd6b-14d8-8b89-65c486ef195d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Documents', 'module', 90, 0),
('7965fb8b-57ac-d7cb-a6dd-65c4860ac22c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Cases', 'module', 90, 0),
('7a0c7697-effa-8ad2-bb0f-65c48675d6e1', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('7a543570-e484-e12d-ff4b-65c48627dbde', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('7a54b467-6deb-1d79-d19c-65c486fdfd12', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Documents', 'module', 90, 0),
('7b210efc-a62f-93dd-9b10-65c486d7382a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Spots', 'module', 89, 0),
('7b4a2355-0229-1123-6c10-65c48630e83d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Documents', 'module', 90, 0),
('7b4b0d91-c53f-a6a7-1cba-65c4863f30bf', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('7c4c57c7-c435-bdc7-63df-65c48681d57b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Documents', 'module', 90, 0),
('7c572c3e-4e57-97b1-e086-65c486c8a729', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Spots', 'module', 90, 0),
('7d3dd906-a48a-1085-5f94-65c48627260b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Documents', 'module', 90, 0),
('7d5102a2-67ba-036f-8dc1-65c486be9fa8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('7d7336e5-0c68-ba0f-d35c-65c486d90f9a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Spots', 'module', 90, 0),
('7e2d50e5-dc1c-4bc7-d2ae-65c486425dfe', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('7e8e48d7-da03-14c6-2543-65c4864fb3c3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Spots', 'module', 90, 0),
('7f5007aa-777d-fd94-684f-65c486fc6820', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('7f9b3bd4-d095-d56d-3e5a-65c48613b759', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Spots', 'module', 90, 0),
('8095c447-dcf7-3c41-9037-65c486a89f00', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Spots', 'module', 90, 0),
('80cc4852-89dd-6130-7907-65c4863e3558', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('818b3596-0a3b-f003-a9f8-65c4869aa34a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Spots', 'module', 90, 0),
('81c366ee-adea-bbc7-0f38-65c486e25695', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('820096f2-6187-5855-75e9-65c48663759d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('82b1416b-3761-128b-520f-65c486e54896', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('82c64929-fd95-fbb9-3b99-65c486706391', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('830effac-d735-5f22-9028-65c4866944d3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('83bcde40-f3ed-8695-681e-65c486e9601b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('84093f49-27d6-e70f-d66e-65c48657d8ff', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('84b02e29-b3de-c4a9-c835-65c486d3d40a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('850241da-dd08-7861-8b60-65c486a5dbe8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('85a9c2ec-7d92-2c7e-44f1-65c486b72b0b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('85f9912d-43d9-9713-d42a-65c486dd2dc9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('863b7ba3-daf3-fbd0-6a66-65c486801053', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('86a036f8-f0bf-3d03-5402-65c486addd3a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('87070e21-ad96-c898-7677-65c4867ccfa5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('8720f505-f115-6660-8b69-65c486f15632', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('876476a2-d970-f740-034f-65c4864cc997', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('8794059c-ba36-93ca-6df8-65c486d2dd3d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('88164969-2017-0637-34d7-65c48635f68b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('88686dd5-11f6-390d-7874-65c4861be7aa', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('888d7abf-f554-977a-ff4e-65c48644583f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('8962cba3-bd88-e9f8-8b63-65c486eb0756', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('8a64c934-3024-2ca5-c062-65c486351d1c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('8b0f0c86-40d3-7d6b-6413-65c4864b20a9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('8b6686ce-6f3e-523d-aae6-65c486af13f4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('8c7f390e-a081-4d88-f8ad-65c486af933b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('8c87ef6e-27a4-7214-3c46-65c486d98330', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('8d5c45df-e543-641e-a79a-65c486d09328', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Calls', 'module', 89, 0),
('8d6308ef-eff0-e3f2-13b0-65c4862b6a50', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('8d941b4f-9c37-1067-7876-65c48615eefe', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('8dc0598b-faa7-9f0a-76d1-65c48630969b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('8e648fa1-9dcf-53cc-2d75-65c486e6ebfd', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Calls', 'module', 90, 0),
('8ee88279-f2db-3c9b-fd48-65c48690d5e9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('8f773239-0e9b-f860-a0c6-65c4868663a8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Calls', 'module', 90, 0),
('8fed64e1-c74a-8394-88d7-65c486e57dda', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('906bad57-8246-3a02-ac41-65c486b0ef5a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Calls', 'module', 90, 0),
('90ddb847-7d06-820e-7b5a-65c486049d06', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('9158ecbf-7a57-ea92-9e9e-65c486468eb5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Calls', 'module', 90, 0),
('91da029c-ee5e-5bfe-417e-65c486882c8f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('924f9fc1-236a-8385-cf21-65c486a216a6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Calls', 'module', 90, 0),
('92cf4432-0f6f-024e-98aa-65c486588da8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('933ef60c-3ebd-f4f6-a0d7-65c4862f16c6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Calls', 'module', 90, 0),
('93cf24bd-5c69-614f-ce65-65c486ce3159', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('9428f1ad-da38-0e2c-efd5-65c486a1ced7', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('9477e108-4b00-37b1-827d-65c486e2e37c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Bugs', 'module', 89, 0),
('9597ca75-7ee4-fce0-765f-65c486fffc46', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Bugs', 'module', 90, 0),
('96a2365e-8c46-ef12-efb7-65c486434f3d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Bugs', 'module', 90, 0),
('97a14efa-8732-effc-47f9-65c486419169', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('98a2ba1e-58a9-89f9-f162-65c48656c3cd', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('9994cc18-2e30-38ce-d637-65c4862921c2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Bugs', 'module', 90, 0),
('9a9266bf-f418-9558-0478-65c486b6d1d9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Bugs', 'module', 90, 0),
('9b8d52bc-b217-07b9-0319-65c486d44454', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('9d200c8f-d55c-81ee-129b-65c486803958', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('9d4f7e41-2c65-1f9a-019d-65c4861dd5a3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('9e924e8f-d102-cf1f-9e67-65c48642ae53', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('9fa8ed66-71fe-2bf0-533a-65c4863a7a09', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('a0c6cddb-8b28-c66c-71cd-65c486bfbb8b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('a1e58d73-62ff-2d97-a407-65c486e3e67c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('a2e208ae-9b4d-d632-9fa6-65c4866465d5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('a3d6ecfa-9a54-50ef-8aeb-65c48602db69', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('a4d2f7ea-179c-577c-8a56-65c48644fa53', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('a70001fd-5ae6-2025-92e4-65c486891166', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('a7ef8f31-7d6d-00b1-fc45-65c48652ee32', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'FP_events', 'module', 89, 0),
('a93a1e01-4a41-6d53-1cd9-65c48675c14e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'FP_events', 'module', 90, 0),
('aa4fff6d-fcd0-4ff1-2688-65c4868888d5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'FP_events', 'module', 90, 0),
('ab4c7f7c-0381-d08d-f1f2-65c486e6999c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('abf1bcbb-dc9b-2f5e-9c39-65c486c37ded', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Emails', 'module', 89, 0),
('ac3da91a-dd5f-f58d-532a-65c486f3ed60', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('ac7b0dea-0faa-af85-d27d-65c486e5558b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('ad06f4c8-4f32-570d-97b3-65c4863596f9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Emails', 'module', 90, 0),
('ad3416ad-2792-0220-8a8e-65c48642a499', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'FP_events', 'module', 90, 0),
('ae1940a3-b3f2-2e13-e84d-65c4861c87dd', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Emails', 'module', 90, 0),
('ae26cce6-9842-28fe-63bc-65c486adcbb9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'FP_events', 'module', 90, 0),
('af0b7f66-2362-77df-91ed-65c4865816b9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Emails', 'module', 90, 0),
('af1c610b-b5b1-9f1a-c0ef-65c48651c619', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('afa3f11a-7128-77fc-18a3-65c486987cad', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'SurveyResponses', 'module', 89, 0),
('b0041576-40dc-9885-4e2b-65c4861065f0', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Emails', 'module', 90, 0),
('b0c4b19d-a08f-d13d-76a0-65c486dec661', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'SurveyResponses', 'module', 90, 0),
('b0f98c20-2c61-1792-5e74-65c486289d64', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Emails', 'module', 90, 0),
('b1bf052a-4291-6d99-fd97-65c486d64767', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'SurveyResponses', 'module', 90, 0),
('b1fd12b0-68d4-0f6c-4e58-65c48616c0e7', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Emails', 'module', 90, 0),
('b2b833d0-16b8-805c-b587-65c48663e2a8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'SurveyResponses', 'module', 90, 0),
('b3014dd4-8ee3-d34f-9041-65c486adcac4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('b3a34cff-3395-c0d2-7fb2-65c48682e7ad', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Users', 'module', 89, 0),
('b3b2a729-2e14-b623-f7f4-65c486fba627', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'SurveyResponses', 'module', 90, 0),
('b4bf11c3-d3d2-9ba7-bc88-65c48643d353', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'SurveyResponses', 'module', 90, 0),
('b4c2eb40-00a2-dac4-067e-65c4863293bf', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Users', 'module', 90, 0),
('b5bbb227-cb5b-92c0-367f-65c48617e2cb', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'SurveyResponses', 'module', 90, 0),
('b5c787c3-1593-e017-12c2-65c4860d6cfa', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Users', 'module', 90, 0),
('b6c98376-da88-1ef8-2ee9-65c4862e1f78', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Users', 'module', 90, 0),
('b6cead6d-17e7-40f3-c3b1-65c486324104', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'SurveyResponses', 'module', 90, 0),
('b7c05e21-d0cc-6208-4bad-65c486a749ce', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Users', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('b8b26dab-f394-1d92-09e5-65c486aed287', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Users', 'module', 90, 0),
('b92f89fb-0fe3-d8c4-bfbc-65c486b0fbd3', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('b9a5c609-6564-9bc6-68ec-65c4860d33a6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Users', 'module', 90, 0),
('ba6b1938-723f-8c45-b3cf-65c486bf07a4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('ba992466-33ed-075c-62f4-65c4862d3463', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('bb609434-e52b-a14e-f8c8-65c4866dbf5b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'EAPM', 'module', 89, 0),
('bb8c36f2-87d0-bbbd-bb1a-65c486df15c2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('bc796021-8d27-3b9e-84d3-65c4861bef21', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'EAPM', 'module', 90, 0),
('bcc32ddd-529e-11b5-bea9-65c486c3e26d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('bdaa9331-788b-d13b-d903-65c486fc3c76', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'EAPM', 'module', 90, 0),
('bdc3cd0a-53f4-b8db-7725-65c486b48188', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('bdfd07cc-8dc5-3dab-b8e1-65c48674df1e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('bea08a9e-14f1-79df-f34f-65c486dc7109', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('beba6dfc-516d-a926-5d87-65c48661d274', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('bf8a5b9c-3f12-72e1-e3ef-65c48662be38', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('bfb5e97c-60ea-c97f-0aef-65c486af681c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('c07b4880-4f3e-ba34-4c5d-65c4862b9c1a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'EAPM', 'module', 90, 0),
('c0b4b57a-28e8-d7ba-f25b-65c486d527c5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('c16cd85b-4505-d9d2-8994-65c486750465', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'EAPM', 'module', 90, 0),
('c270b3a9-31bf-0791-841b-65c4863ff906', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('c42e80ac-941e-687e-af37-65c486f687cb', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('c5593e7c-2445-a04e-3d49-65c486d6b9b4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('c64e97a5-24e6-1f27-4aff-65c486c23867', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('c7559544-62b0-44ec-159c-65c486a2f5c6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('c86294a7-5b2b-a73f-2171-65c4865a9140', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('c956deba-8a63-8fad-091a-65c486ecadbd', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('ca47fe6e-ed64-e801-adf6-65c486c6f4cc', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('ca722e96-d327-ef63-b794-65c4869cc06c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Meetings', 'module', 89, 0),
('cb3c9dd5-b4fe-eacf-3095-65c486ad5694', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('cb88acf7-403a-f3ec-d8b7-65c4862b3627', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Meetings', 'module', 90, 0),
('cc96b30e-e07a-3532-e6cf-65c48652a94c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Meetings', 'module', 90, 0),
('cd110d32-1d9d-2e23-424f-65c486ea6f99', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('cd89c884-b0e8-9486-42c3-65c486aea009', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Surveys', 'module', 89, 0),
('cd8e78f0-20f4-52a0-09ac-65c4860bc4a8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('ce7d3d35-675c-57fa-1d37-65c4862adfa5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('cea562a1-0447-dd9f-e38d-65c486c40c96', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Surveys', 'module', 90, 0),
('cf7e63ee-b90f-d838-da7d-65c48671d1f5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Meetings', 'module', 90, 0),
('cfa28eec-46f2-cc24-94a5-65c486a48ca6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Surveys', 'module', 90, 0),
('d07571c4-a273-5b45-a76c-65c486bc89d5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Meetings', 'module', 90, 0),
('d09a3386-66e3-8b55-cf43-65c486411cb5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Surveys', 'module', 90, 0),
('d12b8448-3879-bbab-3e3d-65c486f452d5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('d1600842-adbf-1b74-8662-65c4869d88eb', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('d192c600-240d-260c-60c1-65c486a62669', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Surveys', 'module', 90, 0),
('d24ca0f4-adbb-7853-8b92-65c48660b362', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('d280a918-61b9-49d7-44f4-65c486abf083', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Surveys', 'module', 90, 0),
('d34cb7ad-f28d-b273-5d6f-65c486f9c71e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('d38ea1fe-540d-c605-d1b3-65c486053c88', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Surveys', 'module', 90, 0),
('d43f83f6-b195-8d50-5ab0-65c486915232', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('d490d6bd-813e-a660-1d77-65c486dbbca9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Surveys', 'module', 90, 0),
('d55b9191-3f45-fc4c-1e60-65c486bc63c0', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('d5607f81-7ed1-b3df-daee-65c486d36c24', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('d66f2f8d-502f-09f5-e160-65c486bdf832', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('d6ac04ea-37b8-c56c-dbf9-65c486a4d775', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('d770cbb7-8250-dab9-f77e-65c48650db2a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('d7c5d5b8-114d-81a5-671e-65c48610b134', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('d866ba8c-69d9-019f-d052-65c4864d8150', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('d8ccef74-5e84-963a-c766-65c486308ae6', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('d99bb2a2-419f-412e-bb8c-65c486fc1b58', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Contacts', 'module', 89, 0),
('d9befd9c-3312-c3ab-4cbf-65c48673f5d4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('da6080ff-2034-3ea5-8051-65c486996cdd', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Project', 'module', 89, 0),
('dab2080c-8586-fda4-4aa8-65c48676f8c9', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('dab5bb40-f38d-c21a-e143-65c4868af2b1', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Contacts', 'module', 90, 0),
('dba43c0e-b6e5-624c-ffe1-65c486695f31', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('dba72296-571a-09cc-a7da-65c486f5fa8f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Project', 'module', 90, 0),
('dbb6d1d4-639b-2adf-3460-65c486673807', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Contacts', 'module', 90, 0),
('dc922889-bbed-0f68-ca24-65c48687c32d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('dcafedf3-5c25-f3bc-750b-65c48675e969', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Project', 'module', 90, 0),
('dcc18561-f7a8-bc89-0733-65c48666810d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('ddad3e68-94cb-d497-7666-65c486b8fa64', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Project', 'module', 90, 0),
('ddc23dce-5cd0-9641-f453-65c4867c943f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('dea0a0fd-cbde-2d36-c909-65c486f3d432', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Project', 'module', 90, 0),
('dec21bf6-8789-25a1-cbf1-65c486a1af19', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Contacts', 'module', 90, 0),
('defb3894-a750-d384-6260-65c4863f7f09', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('dfa3b17e-da14-b195-1109-65c48620c166', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Project', 'module', 90, 0),
('dfbeed04-21e9-840d-0a32-65c486f6e89c', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Contacts', 'module', 90, 0),
('e02a8d9b-7248-0c48-8c8d-65c48614a99f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e09519cd-ced3-4b0b-9757-65c4862bafd5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Project', 'module', 90, 0),
('e0b5f5bc-a684-03ae-1fbc-65c4869d315a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('e12c5c86-5376-d5fe-c430-65c486854147', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e17eedce-734e-d546-e0f1-65c486715089', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('e221a0d9-0c5b-9267-c742-65c486f8e5e2', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e32495d4-37f2-8754-d89c-65c486af2e46', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e39a19a9-8507-8b98-bae9-65c486241a6e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('e4276db2-c0f0-cd24-d7be-65c486318e37', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e4b474ef-077b-d4ef-51ec-65c48666e37d', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('e51c3339-f44e-11bf-14ea-65c48694c3d4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e5a37fc1-35a0-9912-5631-65c486acb2e4', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('e61beb73-bab7-55f2-b129-65c486180d5f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e69b898d-aaa9-0138-585b-65c48619a565', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('e6e7e786-c260-2968-64ba-65c4865b08bc', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Tasks', 'module', 89, 0),
('e7a486ce-b840-112a-cf6d-65c486f1a33e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('e7efac7e-17ed-bf7f-5b36-65c486d9a321', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Tasks', 'module', 90, 0),
('e89facd9-839a-e55b-3095-65c4866c043a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('e8e1974b-7460-cde4-4677-65c48662958f', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'Tasks', 'module', 90, 0),
('e992c357-41a4-74ac-29bb-65c486dc195e', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('e9b506a1-4c5e-cbf9-7097-65c48627d86a', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'Accounts', 'module', 89, 0),
('e9d8511e-ca4c-71e2-f502-65c486a42359', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('ea88c1ff-8651-c209-6605-65c4861db832', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'SurveyQuestionResponses', 'module', 89, 0),
('ea8dd284-d7b2-320e-3b0c-65c4860759cb', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('eaf59eb9-2aca-7d03-aac9-65c486df3596', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('ebbf48aa-5ff3-7ea7-ff84-65c4864c1a66', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'SurveyQuestionResponses', 'module', 90, 0),
('ec0d65ea-3a0f-be35-0059-65c486335087', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'Tasks', 'module', 90, 0),
('ecea1b73-bf3a-18ca-afb4-65c486958703', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'list', 'SurveyQuestionResponses', 'module', 90, 0),
('ed0a4f42-b8f8-9735-8636-65c48680dfdb', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'Tasks', 'module', 90, 0),
('edfb8b81-d66f-985f-2d0b-65c486860c9b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('ee1193a3-85cb-9010-923f-65c486f3a762', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'edit', 'SurveyQuestionResponses', 'module', 90, 0),
('ef206378-e5e9-cce4-e72e-65c486a50119', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'delete', 'SurveyQuestionResponses', 'module', 90, 0),
('f0162c54-f8b3-e11f-3978-65c486ea5739', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'import', 'SurveyQuestionResponses', 'module', 90, 0),
('f117b696-7f91-2290-e864-65c486695fa8', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'export', 'SurveyQuestionResponses', 'module', 90, 0),
('f211d060-bb38-ea8e-6b64-65c48678c6b1', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'massupdate', 'SurveyQuestionResponses', 'module', 90, 0),
('f490057c-ea18-8186-2d6c-65c4866772a5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('fa4a0126-7940-9c44-6361-65c486477717', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '', 'view', 'Accounts', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT 0,
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT 0,
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2024-02-08 07:46:49', '2024-02-08 07:46:49', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Структура таблицы `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT 0,
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('162774d2-288c-a82b-d0d7-65c5b339b1bf', '1', '2024-02-09 05:10:18', '2024-02-09 05:10:18', '1', '1', NULL, 0, NULL, NULL, 1, 'c14e6a6d-dc9b-0438-a4c0-65c5b35b4377', 'SurveyQuestionOptions'),
('2c970e2c-704f-f709-f8bf-65c5b3b08cd1', 'Депозиты', '2024-02-09 05:09:24', '2024-02-09 05:10:17', '1', '1', NULL, 0, '', NULL, 1, 'ec8348b3-b41b-4731-f7e4-65c5b33bcbac', 'SurveyQuestions'),
('525409f1-6bf9-ac14-b217-65c5b3cb6a59', 'Открытие депозита', '2024-02-09 05:10:16', '2024-02-09 05:10:16', '1', '1', NULL, 0, NULL, NULL, 1, '11368c18-2d0a-f949-4bfe-65c5b3401f92', 'SurveyQuestionOptions'),
('5df8abc1-9549-d766-6a4b-65c5b3b6a1c1', 'Ошибся номером ', '2024-02-09 05:10:17', '2024-02-09 05:10:17', '1', '1', NULL, 0, NULL, NULL, 1, '193905e8-6808-2eb0-c278-65c5b353f8f7', 'SurveyQuestionOptions'),
('6af8b6e9-3534-9d11-9909-65c5a54f3eb2', 'Тематика обращений', '2024-02-09 04:09:26', '2024-02-09 05:10:13', '1', '1', NULL, 0, '', NULL, 1, 'f05800d4-65a7-dc1f-20d2-65c5a5bf769e', 'Surveys'),
('787e53ce-f4c7-d00b-924f-65c5b32419d0', 'Консультация', '2024-02-09 05:08:54', '2024-02-09 05:10:15', '1', '1', NULL, 0, '', NULL, 1, '4c700c23-1b67-77ee-9454-65c5b300261d', 'SurveyQuestions'),
('8ef72397-c07f-5996-1b53-65c5b3108204', 'Получение кредита', '2024-02-09 05:08:21', '2024-02-09 05:10:15', '1', '1', NULL, 0, '', NULL, 1, '66c24d89-0ff4-fe28-8759-65c5b3a27378', 'SurveyQuestionOptions'),
('91a883b1-5a5a-e7c4-5e84-65c5b3d11ac2', 'Адреса филиалов', '2024-02-09 05:10:16', '2024-02-09 05:10:16', '1', '1', NULL, 0, NULL, NULL, 1, '544ba85a-b1e8-765f-0317-65c5b358a3ef', 'SurveyQuestionOptions'),
('a2135777-86ba-1677-043e-65c5b32151bf', 'Сбросил клиент ', '2024-02-09 05:10:17', '2024-02-09 05:10:17', '1', '1', NULL, 0, NULL, NULL, 1, '5fcb9380-3588-07fb-01bc-65c5b3607241', 'SurveyQuestionOptions'),
('ae50d897-2b83-6523-0185-65c5a5f270da', 'Кредиты', '2024-02-09 04:09:26', '2024-02-09 05:10:14', '1', '1', NULL, 0, '', NULL, 1, '6e217c39-438d-53b5-fbbd-65c5a594781f', 'SurveyQuestions'),
('bade36a8-d0ac-cc02-6c0d-65c5b3edab30', 'СМС Рассылка', '2024-02-09 05:09:12', '2024-02-09 05:10:16', '1', '1', NULL, 0, '', NULL, 1, '8ac27062-7257-3b2d-2df1-65c5b36c3599', 'SurveyQuestions'),
('bbf036bd-9170-4f0d-74ce-65c9aa92e619', 'Ичсход', '2024-02-12 05:21:31', '2024-02-12 05:24:32', '1', '1', NULL, 0, '', NULL, 1, 'bc529116-c556-ab68-cdad-65c9aa12b9af', 'Calls'),
('bfa8f34c-48b1-0bf8-e2c0-65c5b325651c', '1', '2024-02-09 05:10:18', '2024-02-09 05:10:18', '1', '1', NULL, 0, NULL, NULL, 1, '7b210444-393c-1089-8df7-65c5b37cc170', 'SurveyQuestionOptions'),
('dab898ae-5aa1-ef7b-9453-65c5a599e734', 'Действующий кредит', '2024-02-09 04:09:26', '2024-02-09 05:10:14', '1', '1', NULL, 0, '', NULL, 1, 'b08a9d60-12d7-d5f9-0edb-65c5a580d9ea', 'SurveyQuestionOptions'),
('e4e8b5a7-853d-b056-21cf-65c5b30cfb35', 'Плановое погашения', '2024-02-09 05:10:17', '2024-02-09 05:10:17', '1', '1', NULL, 0, NULL, NULL, 1, 'a3c7ea8c-4c8a-23bc-9cb8-65c5b3172ca8', 'SurveyQuestionOptions');

-- --------------------------------------------------------

--
-- Структура таблицы `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext DEFAULT NULL,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` longtext DEFAULT NULL,
  `pdffooter` longtext DEFAULT NULL,
  `margin_left` int(255) DEFAULT 15,
  `margin_right` int(255) DEFAULT 15,
  `margin_top` int(255) DEFAULT 16,
  `margin_bottom` int(255) DEFAULT 16,
  `margin_header` int(255) DEFAULT 9,
  `margin_footer` int(255) DEFAULT 9,
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT 0,
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text DEFAULT NULL,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT 0,
  `run_on_import` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `asterisk_log`
--

CREATE TABLE `asterisk_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_master` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `call_record_id` char(36) DEFAULT NULL,
  `asterisk_id` varchar(45) DEFAULT NULL,
  `callstate` varchar(10) DEFAULT NULL,
  `uistate` varchar(10) DEFAULT NULL,
  `callerID` varchar(45) DEFAULT NULL,
  `channel` varchar(30) DEFAULT NULL,
  `remote_channel` varchar(30) DEFAULT NULL,
  `timestamp_call` datetime DEFAULT NULL,
  `timestamp_link` datetime DEFAULT NULL,
  `timestamp_hangup` datetime DEFAULT NULL,
  `direction` varchar(1) DEFAULT NULL,
  `asterisk_dest_id` varchar(45) DEFAULT NULL,
  `opencnam` varchar(16) DEFAULT NULL,
  `answered` tinyint(1) DEFAULT 0,
  `user_extension` varchar(16) DEFAULT NULL,
  `user_device` varchar(16) DEFAULT NULL,
  `inbound_extension` varchar(16) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_name` char(50) DEFAULT NULL,
  `bean_link` char(255) DEFAULT NULL,
  `bean_description` text DEFAULT NULL,
  `parent_module` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_name` char(50) DEFAULT NULL,
  `parent_link` char(255) DEFAULT NULL,
  `push_sent` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `calls`
--

INSERT INTO `calls` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `parent_type`, `status`, `direction`, `parent_id`, `reminder_time`, `email_reminder_time`, `email_reminder_sent`, `outlook_id`, `repeat_type`, `repeat_interval`, `repeat_dow`, `repeat_until`, `repeat_count`, `repeat_parent_id`, `recurring_source`) VALUES
('bc529116-c556-ab68-cdad-65c9aa12b9af', 'Ичсход', '2024-02-12 05:21:31', '2024-02-12 05:24:32', '1', '1', NULL, 0, '1', 0, 15, '2024-02-12 05:30:00', '2024-02-12 05:30:00', 'Accounts', 'Held', 'Outbound', '', -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `calls_cstm`
--

CREATE TABLE `calls_cstm` (
  `id_c` char(36) NOT NULL,
  `asterisk_call_id_c` varchar(45) DEFAULT NULL,
  `asterisk_caller_id_c` varchar(45) DEFAULT NULL,
  `asterisk_inbound_ext_c` varchar(45) DEFAULT NULL,
  `asterisk_user_ext_c` varchar(45) DEFAULT NULL,
  `asterlink_uid_c` varchar(64) DEFAULT NULL,
  `asterlink_cid_c` varchar(32) DEFAULT NULL,
  `asterlink_did_c` varchar(32) DEFAULT NULL,
  `asterlink_call_seconds_c` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `calls_cstm`
--

INSERT INTO `calls_cstm` (`id_c`, `asterisk_call_id_c`, `asterisk_caller_id_c`, `asterisk_inbound_ext_c`, `asterisk_user_ext_c`, `asterlink_uid_c`, `asterlink_cid_c`, `asterlink_did_c`, `asterlink_call_seconds_c`) VALUES
('bc529116-c556-ab68-cdad-65c9aa12b9af', '', '', '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `calls_users`
--

INSERT INTO `calls_users` (`id`, `call_id`, `user_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('c68435f9-fb3a-74a7-f7e4-65c9aac97350', 'bc529116-c556-ab68-cdad-65c9aa12b9af', '1', '1', 'accept', '2024-02-12 05:21:31', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT 0,
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT 0,
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `hits` int(11) DEFAULT 0,
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.25'),
('MySettings', 'tab', 'YTozMzp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjU6IlNwb3RzIjtpOjEwO3M6OToiQ2FtcGFpZ25zIjtpOjExO3M6NToiQ2FsbHMiO2k6MTI7czo4OiJNZWV0aW5ncyI7aToxMztzOjU6IlRhc2tzIjtpOjE0O3M6NToiTm90ZXMiO2k6MTU7czoxMjoiQU9TX0ludm9pY2VzIjtpOjE2O3M6MTM6IkFPU19Db250cmFjdHMiO2k6MTc7czo1OiJDYXNlcyI7aToxODtzOjk6IlByb3NwZWN0cyI7aToxOTtzOjEzOiJQcm9zcGVjdExpc3RzIjtpOjIwO3M6NzoiUHJvamVjdCI7aToyMTtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtpOjIyO3M6MTY6IkFNX1Rhc2tUZW1wbGF0ZXMiO2k6MjM7czo5OiJGUF9ldmVudHMiO2k6MjQ7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtpOjI1O3M6MTI6IkFPU19Qcm9kdWN0cyI7aToyNjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtpOjI3O3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjI4O3M6MTE6IkFPUl9SZXBvcnRzIjtpOjI5O3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtpOjMwO3M6Mjk6IkFPS19Lbm93bGVkZ2VfQmFzZV9DYXRlZ29yaWVzIjtpOjMxO3M6MTQ6IkVtYWlsVGVtcGxhdGVzIjtpOjMyO3M6NzoiU3VydmV5cyI7fQ=='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'SuiteCRM'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', 'superadmin'),
('proxy', 'password', '/GRSAFBxjNbyg2Tln7V3NQ==');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT 0,
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT 0,
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT 0,
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text DEFAULT NULL,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT 0,
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(250) DEFAULT NULL,
  `reply_to_addr` varchar(250) DEFAULT NULL,
  `to_addrs` text DEFAULT NULL,
  `cc_addrs` text DEFAULT NULL,
  `bcc_addrs` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description_html` longtext DEFAULT NULL,
  `raw_source` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT 0,
  `opt_out` tinyint(1) DEFAULT 0,
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_addresses_audit`
--

CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT 0,
  `reply_to_address` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `body_html` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('1831f7c1-4aa9-3e68-b8ad-65c486c8b4dd', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, 'system'),
('1a6b0d9e-190b-691b-257c-65c486d2f719', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'off', 'User Case Update', 'Email template to send to a SuiteCRM user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					     <p> </p>\r\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>', 0, NULL, NULL, 'system'),
('442e358e-cca2-23d4-76d5-65c486fb5f09', '2013-05-24 14:31:45', '2024-02-08 07:46:22', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'system'),
('a7c913d1-6429-1c26-7645-65c486194a66', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\r\nHere is your account username and temporary password:\r\nUsername : $contact_user_user_name\r\nPassword : $contact_user_user_hash\r\n\r\n$config_site_url\r\n\r\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('aa50ece9-c5c9-a30b-7fbc-65c4866db94b', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\r\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\r\n\r\nClick on the link below to reset your password:\r\n\r\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('ac477528-2022-a115-3e49-65c486e0f114', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'off', 'Confirmed Opt In', 'Email template to send to a contact to confirm they have opted in.', 'Confirm Opt In', 'Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n             <p>\r\n                Please confirm that you have opted in by selecting the following link:\r\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\r\n             </p>', 0, NULL, NULL, 'system'),
('ace434ff-5d80-4f7d-8867-65c486ab7a60', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'off', 'Two Factor Authentication email', 'This template is used to send a user a code for Two Factor Authentication.', 'Two Factor Authentication Code', 'Two Factor Authentication code is $code.', '<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('d2fe131d-bce8-4e8b-9178-65c486e296d0', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('d7aad792-d97b-c36a-e647-65c486817271', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, 'system'),
('d9d7debc-b1fe-67f0-4455-65c4863187d5', '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Description</td><td>$acase_description</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, 'system');

-- --------------------------------------------------------

--
-- Структура таблицы `external_oauth_connections`
--

CREATE TABLE `external_oauth_connections` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `client_id` varchar(32) DEFAULT NULL,
  `client_secret` varchar(32) DEFAULT NULL,
  `token_type` varchar(32) DEFAULT NULL,
  `expires_in` varchar(32) DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `external_oauth_provider_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `external_oauth_providers`
--

CREATE TABLE `external_oauth_providers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `connector` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` text DEFAULT NULL,
  `url_authorize` varchar(255) DEFAULT NULL,
  `authorize_url_options` text DEFAULT NULL,
  `url_access_token` varchar(255) DEFAULT NULL,
  `extra_provider_params` text DEFAULT NULL,
  `get_token_request_grant` varchar(255) DEFAULT 'authorization_code',
  `get_token_request_options` text DEFAULT NULL,
  `refresh_token_request_grant` varchar(255) DEFAULT 'refresh_token',
  `refresh_token_request_options` text DEFAULT NULL,
  `access_token_mapping` varchar(255) DEFAULT 'access_token',
  `expires_in_mapping` varchar(255) DEFAULT 'expires_in',
  `refresh_token_mapping` varchar(255) DEFAULT 'refresh_token',
  `token_type_mapping` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT 0,
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `audited` tinyint(1) DEFAULT 0,
  `massupdate` tinyint(1) DEFAULT 0,
  `duplicate_merge` smallint(6) DEFAULT 0,
  `reportable` tinyint(1) DEFAULT 1,
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Callsasterisk_caller_id_c', 'asterisk_caller_id_c', 'LBL_ASTERISK_CALLER_ID', '', 'trimmed callerId', 'Calls', 'varchar', 45, 0, NULL, '2024-02-09 05:54:37', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
('Callsasterisk_call_id_c', 'asterisk_call_id_c', 'LBL_ASTERISK_CALL_ID', '', 'This is the unique id assigned to this call by the PBX, Useful for debugging but otherwise no reason to display to an end user.', 'Calls', 'varchar', 45, 0, NULL, '2024-02-09 05:54:37', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
('Callsasterisk_inbound_ext_c', 'asterisk_inbound_ext_c', 'LBL_ASTERISK_INBOUND_EXT', '', 'Contains the inbounded extension.  This is useful for identifying the queue or ringgroup that the call came in on.', 'Calls', 'varchar', 45, 0, NULL, '2024-02-09 05:54:37', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
('Callsasterisk_user_ext_c', 'asterisk_user_ext_c', 'LBL_ASTERISK_USER_EXT', '', 'Contains the user extension that answered or placed the call.', 'Calls', 'varchar', 45, 0, NULL, '2024-02-09 05:54:37', 0, 0, 0, 0, 0, 'true', NULL, NULL, NULL, ''),
('Callsasterlink_call_seconds_c', 'asterlink_call_seconds_c', 'LBL_ASTERLINK_CALL_SECONDS', '', '', 'Calls', 'int', 2, 0, '0', '2024-02-16 03:57:41', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Callsasterlink_cid_c', 'asterlink_cid_c', 'LBL_ASTERLINK_CID', '', '', 'Calls', 'phone', 32, 0, NULL, '2024-02-16 03:57:41', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Callsasterlink_did_c', 'asterlink_did_c', 'LBL_ASTERLINK_DID', '', '', 'Calls', 'varchar', 32, 0, NULL, '2024-02-16 03:57:41', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Callsasterlink_uid_c', 'asterlink_uid_c', 'LBL_ASTERLINK_UID', '', '', 'Calls', 'varchar', 64, 0, NULL, '2024-02-16 03:57:41', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2024-02-08 07:46:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Usersasterisk_ext_c', 'asterisk_ext_c', 'LBL_ASTERISK_EXT', '', '', 'Users', 'varchar', 45, 0, NULL, '2024-02-09 05:54:37', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, ''),
('Usersasterisk_inbound_c', 'asterisk_inbound_c', 'LBL_ASTERISK_INBOUND', '', '', 'Users', 'bool', 45, 0, '0', '2024-02-09 05:54:37', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, ''),
('Usersasterisk_outbound_c', 'asterisk_outbound_c', 'LBL_ASTERISK_OUTBOUND', '', '', 'Users', 'bool', 45, 0, '0', '2024-02-09 05:54:37', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, ''),
('Usersasterlink_ext_c', 'asterlink_ext_c', 'LBL_ASTERLINK_EXT', '', '', 'Users', 'varchar', 64, 0, NULL, '2024-02-16 03:57:41', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Usersphone_extension_c', 'phone_extension_c', 'LBL_CLICKTOCALL_PHONE_EXTENSION', '', 'Enter Your Extension', 'Users', 'varchar', 10, 0, '', '2024-02-16 03:48:19', 0, 0, 0, 0, 0, '1', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT 0,
  `is_group` tinyint(1) DEFAULT 0,
  `is_dynamic` tinyint(1) DEFAULT 0,
  `dynamic_query` text DEFAULT NULL,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `default_values` text DEFAULT NULL,
  `has_header` tinyint(1) DEFAULT 1,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `email_body_filtering` varchar(255) DEFAULT 'multi',
  `server_url` varchar(100) DEFAULT NULL,
  `connection_string` varchar(255) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT 143,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text DEFAULT NULL,
  `sentFolder` varchar(255) DEFAULT NULL,
  `trashFolder` varchar(255) DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT 0,
  `move_messages_to_trash_after_import` tinyint(1) DEFAULT 0,
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT 0,
  `groupfolder_id` char(36) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'basic',
  `protocol` varchar(255) DEFAULT 'imap',
  `is_ssl` tinyint(1) DEFAULT 0,
  `distribution_user_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `create_case_template_id` char(36) DEFAULT NULL,
  `external_oauth_connection_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_lng` float(11,8) DEFAULT 0.00000000,
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `requeue` tinyint(1) DEFAULT 0,
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT 0,
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT 0,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth2clients`
--

CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT 1,
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `oauth2clients`
--

INSERT INTO `oauth2clients` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `secret`, `redirect_url`, `is_confidential`, `allowed_grant_type`, `duration_value`, `duration_amount`, `duration_unit`, `assigned_user_id`) VALUES
('2468f3ce-7c33-4527-8a9a-65c59e1979fb', 'Test', '2024-02-09 03:40:36', '2024-02-09 03:40:36', '1', '1', NULL, 0, '51879eb08fd0fca09ce9a8bd3674c02a6946bce4acf9f763d9b12910d17756c7', NULL, 1, 'client_credentials', 60, 1, 'minute', '1'),
('51c2d856-3552-a72c-5a5b-65c59e19401c', 'superadmin', '2024-02-09 03:39:13', '2024-02-09 03:39:13', '1', '1', NULL, 0, '51879eb08fd0fca09ce9a8bd3674c02a6946bce4acf9f763d9b12910d17756c7', NULL, 1, 'password', 60, 1, 'minute', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `oauth2tokens`
--

CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) DEFAULT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'SMTP',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '25',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT 0,
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `smtp_from_name`, `smtp_from_addr`, `reply_to_name`, `reply_to_addr`, `signature`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('6633b8a6-a669-3b15-501e-65c486cfc1fd', 'system', 'system', '1', 'SuiteCRM', 'do_not_reply@example.com', NULL, NULL, NULL, 'SMTP', 'other', 'smtp.gmail.com', '25', 'superadmin', 'Ni1W+jgbC/krf4iLfdMkeQ==', 1, '0', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `predecessors` text DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text DEFAULT NULL,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT 1,
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `utilization` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('62f3c18d-52d2-307b-be4f-65cedd3bc8f3', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('633b79a7-f16c-170d-e13b-65cedd2e3ab6', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('636ad69e-0ef2-5f5b-8c81-65ceddda6a3b', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('639ce22e-2ec8-c8eb-bf77-65cedd910b79', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('63c50dcd-087d-519d-3d4a-65cedd56a63c', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('63ecd95a-ee04-8229-9b8c-65cedd336609', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('64104859-7cc9-d01b-bd3e-65cedda5f6c6', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6435dae7-f019-58bc-0b4f-65cedd0545b5', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('645a7446-7389-4759-36aa-65ceddb6d975', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('647e63dc-2a9f-c09f-fecb-65ceddf81afc', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('64a31b5d-5e9a-ad3f-c766-65cedd4ffa4f', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('64c7251d-97d5-548d-26af-65ceddb8def7', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('64ed38f4-5859-d3c0-b186-65ceddf5ed9e', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('65a4bc7e-cdd8-c71d-de81-65cedd305e57', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65c857b7-d55b-4b15-362a-65cedd8165b5', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65f06b33-f5ef-b29d-3510-65ceddc5ef70', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66153acf-ce8b-3497-1387-65ceddc639c5', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('663ac578-e8e9-110e-9d12-65ceddffa27f', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('6665f142-eb6e-07f9-21f0-65ceddf87e3c', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('668ea08b-bc9b-b6d2-4058-65cedd65a08f', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('66b8c86a-520e-ac42-2cb3-65ceddbbc727', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('66df1e78-e7f5-a631-8f81-65cedd9076e0', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('67058bdb-51b2-f1ef-6338-65ceddbb91a8', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67b7724b-bf1c-7e06-e0c7-65cedd2c2b12', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67e01971-98ad-b0d6-9db3-65cedd3bc336', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6808c58c-6366-48fc-c766-65cedd05eee3', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('682f9f61-0f8b-ba33-39e3-65cedd938477', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('6855607c-4cfa-9e3e-2f80-65cedd4a51ff', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('687b70c5-61fe-53a1-47c1-65cedd4e800e', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('68a18792-0e33-e4d0-1c5f-65cedd59eb28', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('68c718e0-54ce-89f4-b2eb-65cedd43f1d1', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('68ed1813-c805-41fd-fa61-65cedd026b7c', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('691281ea-ffc5-f994-700b-65cedd0470a3', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6939fe3a-a2d1-652d-4a2a-65ceddc47c2b', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('69fabc8d-b850-9ecc-c70d-65cedd427bd1', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a244490-5289-600b-8797-65cedd13faa4', 'users_users_password_link', 'Users', 'users', 'id', NULL, 'users_signatures', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a69af33-4b4f-3d18-9392-65cedd163182', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('6a8ee9a5-5e58-db3d-f0b0-65ceddf5c245', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('6afa50cc-2b7d-b8fa-0d38-65cedd7e5cb7', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b236166-937c-faa6-49a5-65cedd2d32b6', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b4aafb8-3a0c-29c4-a215-65cedd25a627', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b6f1218-156e-d880-e867-65cedd5716a2', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b95d548-9750-cba4-ec0a-65cedd42885b', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6bf77e80-b385-538c-421e-65ceddba6b5d', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('6c1b7417-9715-4e5d-71ee-65cedd8118c8', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('6c3f66fd-7f00-1323-a52e-65cedde8c2ce', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('6c66fc24-2b75-2a20-e583-65cedd493b7f', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('6c8bc564-d8a7-becb-e69b-65cedd65c6d9', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('6cb29f5f-2f78-1039-5b2b-65cedd8e131f', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('6cd8a10f-a3d2-07c1-e26d-65cedd0859e4', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6cfc8a05-c94f-61b4-c617-65ceddfaf07c', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d21fed6-95a3-a695-cf78-65cedde5fa23', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d4d2554-efc0-b528-c242-65cedddf3b33', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e2b8b5b-fa34-4f37-244b-65cedddec846', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('6e6c6305-cca0-89b1-f909-65cedd4bc49a', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6ea841e0-3c03-9b97-a0c1-65ceddf3e2cc', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6ee21e84-44cc-712b-0209-65cedd12a1af', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6f07bc72-656c-8c9d-35d1-65cedddf426b', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6f2ca1fa-c53b-69fe-ab95-65cedd262ab5', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6f516506-d415-457b-e15e-65cedd6e4705', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f749ad7-aced-6743-9e2b-65ceddd308ed', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f989188-a376-70e3-571c-65cedd37b3e0', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70078544-a994-b25d-96e0-65cedd5e500c', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('702f573c-34f5-9718-59bb-65cedde7b00b', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7056e4de-0406-f042-52cc-65ceddc24c20', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7079f5f9-9fa7-0923-2881-65cedd465574', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('709fa9f6-9cb1-7097-1d95-65cedd84dd34', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70c37b2f-eba8-4f34-d5bf-65cedde89d21', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70e850e8-b14d-0a89-305a-65cedd4033a6', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('710c164e-9e37-f86c-35b2-65cedd3afbdb', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7133e2fc-bc0f-b26d-0252-65ceddaef5ad', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7157db6d-4a38-c094-54ec-65cedd7d299d', 'campaign_notes', 'Campaigns', 'campaigns', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Campaigns', 0, 0),
('717be85d-de5e-ffac-df8e-65ceddcf20ef', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71a10866-ce27-3dcc-79ee-65ceddc2a7ad', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71c55093-eff2-4bf2-6eb1-65ceddf7adae', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71ebd912-1d4b-a46d-a59f-65cedd15157a', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7213e792-3bb8-da57-9aa5-65ceddd6e241', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('723c7439-2772-5952-2765-65cedde5c111', 'surveyresponses_campaigns', 'Campaigns', 'campaigns', 'id', 'SurveyResponses', 'surveyresponses', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('729198f0-74ad-facb-5885-65cedd238f6e', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'ProspectLists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72ba03e6-c920-91fd-53cd-65cedd1922f9', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('73308ff4-bbc4-34eb-f221-65cedd55bde0', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7355fe48-34c2-092e-1194-65cedd7d7cb5', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('737a148c-cb73-09d3-cd3d-65cedd1eb06a', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('739e07e7-3d8a-10cb-5164-65cedde7c925', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('73c34b10-0db6-c4d0-4af5-65ceddd7b638', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('73e716f8-96fa-58ca-ea1f-65ceddb30504', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('740f10a4-8874-5b80-e5b5-65cedde8e292', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('7435aa62-4e28-eb94-7d89-65ceddd5bc5b', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('745c157e-5496-ea53-aaed-65cedd16bf73', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('74805ee7-a012-c6a5-6454-65cedd715dd5', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('74a4c178-3e3d-7d7a-0ac9-65cedde88e64', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('74ca636d-b208-5c24-aa4f-65cedd676168', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('75581b1e-03c0-24b5-b80f-65cedd592ca9', 'securitygroups_emailmarketing', 'SecurityGroups', 'securitygroups', 'id', 'EmailMarketing', 'email_marketing', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailMarketing', 0, 0),
('758190c3-e397-ed2e-9c02-65cedd0fa043', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75bf6cee-b1e3-0b85-a7d6-65ceddd9cfe5', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76363990-f5c3-ce9c-8fd1-65cedd1e90ea', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('765fd639-e603-8cf7-21e5-65ceddce4137', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7687d324-9584-2523-657d-65cedd5f91b4', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76ce370b-656f-58f9-967f-65cedd289265', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('774d915f-9575-0ba0-e23c-65cedd73c8f7', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7775ffad-e205-ee81-6a1c-65ceddd3f20c', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7799c0da-d403-e508-32e4-65cedd12bfea', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77bec1db-4c5c-c007-ddcb-65cedd9858e2', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('77e705f2-7a3a-ef04-3400-65cedda6811a', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('780e3309-7661-1adf-24d5-65cedd8d714a', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('78395c3f-72e6-be24-1626-65cedde5011f', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('785e5589-f915-8085-1682-65cedda00931', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('788ae929-b400-0d58-fdf9-65ceddfef474', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78b325ba-88a1-096d-2cf9-65cedd8a5933', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78d55f7c-fe85-4f5e-cfbe-65cedd495d8e', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('78fc6da4-9702-a096-f7c8-65cedd527f09', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('7921407e-794b-fa8c-4888-65cedd69280b', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('7947ad1d-3118-6664-b941-65cedd1eb915', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('796bc0e3-ba93-6efe-9591-65ceddae3d35', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('798e5689-285a-82f4-b7b5-65cedd53b52c', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79b4da31-c9cb-3e1a-f557-65cedd62328d', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a9cf689-2110-c52c-afef-65cedd772682', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ad6cd93-c94b-aab9-3e93-65cedd8a508a', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b0bd1da-6965-b496-da92-65cedd43ce58', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b4404a2-8f4b-2eb3-9d42-65cedde8a425', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('7b6a793e-ba27-1f5a-95c8-65cedd54bbb8', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('7b8fde33-fd0f-b432-1dbd-65ceddab9715', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('7bb20024-5365-8fe6-e21d-65cedd6dbc0e', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7bd82c43-7292-bf05-4f74-65cedd10d48a', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7bfce3dd-2f6c-0d8c-b243-65ceddab20d5', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('7c230b7f-2e76-53a9-6936-65cedd9fede0', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('7c4959d7-48ee-54c6-92a6-65ceddfed39b', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('7c706ff7-2865-733d-224e-65cedd148125', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('7c94be5f-d812-2ac9-00a0-65cedd45f68d', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('7cbb1371-78bc-e942-a4be-65ceddb88858', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ce0f000-23b3-f1f7-1a1e-65cedd5c74f6', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('7d0756b9-4c99-6d2c-ff7b-65cedd1a2929', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d2b2515-1c35-99be-7b25-65cedda4a1e7', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d4e4969-b5d9-ebf1-65f4-65cedd679b55', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e21683e-17d5-052d-7a0d-65cedd8a4186', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e4cf682-a1b2-c44d-208d-65cedd911f77', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e723ebd-7023-b904-710b-65cedd498692', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e9b31da-babd-012c-56f4-65cedda02061', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('7ec2c816-fc77-c05f-0d32-65cedd7b6012', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7ee59627-f01b-850a-6d0a-65ceddefc8c6', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7f0bdc68-8e03-7d42-0bb0-65ceddb6709f', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7f30a6a0-fecd-02d4-fc3c-65cedd9bdc51', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7f57014c-2b7e-d78f-4033-65cedd3f4355', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7f7e30bb-c30f-0011-eb0b-65cedd2b7e86', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fa38e20-35b0-e947-cadf-65cedd9b5276', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fcbc1b3-b889-3bb6-e228-65cedd19834c', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ff09346-253c-f9ef-be84-65ceddd6d723', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8014c0af-c899-f9fe-d7a5-65ceddb2f835', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80acd6ad-a15e-1b25-7f5e-65cedde0b2de', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('80d1a4c0-756d-95ea-6a7c-65cedd1c0822', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('812eb2b8-a619-468d-bb45-65cedd8cbfaf', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('815b6f08-235f-827f-88b4-65cedde3a777', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('81847e57-fd76-bff6-d884-65cedd353877', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81a8bf43-fa07-a5e8-2709-65cedd48f6b3', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8203d81a-404b-7ed4-1c0b-65ceddc0e989', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('822a0c59-96d7-a24a-3df6-65ceddffbfcc', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('824e35c5-d2f4-ec38-6ccd-65cedd39f51a', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('827274c9-0d3f-5903-5afa-65ceddee6646', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('82937791-8dde-4ecc-9614-65cedd70be8b', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('82b7d778-845c-a9a1-29d0-65cedde871e3', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83572c26-207f-839d-b895-65cedd4be1e8', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('837f213c-f8b8-9c12-f4db-65cedd6c5251', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83a37fc7-6d91-2040-08bc-65cedddd551e', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83c7a8cb-0367-9d2d-5f9f-65cedde39e45', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('83ec65fa-2b85-d77f-41ba-65cedde071cd', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84102f69-a0c8-4b8f-d0a0-65ceddb58b65', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('84352e6b-3395-e9aa-b2a4-65cedda6a490', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('845e24ae-1e0e-792a-cbfc-65cedd26a79a', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('8486b182-eaea-7c86-ce2f-65ceddc74d21', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('84aba170-8549-de2c-088c-65ceddb292b5', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Meetings', 0, 0),
('853454be-ba20-0cdf-0395-65cedda2f673', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85737ce7-179f-828a-d7d5-65cedd1c8434', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('859c3f85-5eb5-3a4a-3521-65cedd6221dd', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85c099d6-9191-1fca-53fd-65ceddef1382', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('85dff98c-3dd7-bdf8-0a1e-65ceddda97ac', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('8672400f-2baa-d5a9-6346-65cedd08ff61', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('869d430f-7ac4-414d-a9d1-65ceddb4bf05', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86d6921c-6675-e074-4aa8-65ceddd31660', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('870e23ea-f572-53a5-c5a5-65cedd7e2f7a', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('874117d6-7ff9-d6f2-748b-65cedd45f137', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88897e5b-9d1f-927b-1569-65cedd5a377a', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88b2e281-a915-fe42-3f6a-65cedd7af3cf', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88e94021-71bd-feaa-06a4-65cedd819b8a', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89582352-d73a-8fa3-6bc3-65cedd680541', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('897aea4d-5656-907f-1ac5-65cedd204d89', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89a062cf-b4d2-bbbf-b79e-65cedd1e0c1c', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89c62885-a4d5-d228-548d-65ceddb21be9', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('89ea7d54-a460-2221-2246-65cedd35e480', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a25dc6a-0094-bb53-01b8-65cedd5391ad', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b3bd483-d478-47a4-15e5-65cedd462a3a', 'securitygroups_inboundemail', 'SecurityGroups', 'securitygroups', 'id', 'InboundEmail', 'inbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'InboundEmail', 0, 0),
('8b681a73-5171-8f48-0e3b-65cedd92163c', 'inbound_emails_distribution_user', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'distribution_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b8e4eee-393e-54f1-900d-65cedd545ee6', 'inbound_emails_autoreply_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8bb3745c-74eb-801e-2cf3-65ceddd82c5b', 'inbound_emails_case_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'create_case_template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8bd80fe0-cd12-0536-ae9e-65ceddc5fcff', 'inbound_emails_external_oauth_connections', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'InboundEmail', 'inbound_email', 'external_oauth_connection_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8bfb46a7-ae61-7626-29aa-65cedd83801d', 'inbound_outbound_email_accounts', 'OutboundEmailAccounts', 'outbound_email', 'id', 'InboundEmail', 'inbound_email', 'outbound_email_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c1fe158-bb0a-b203-c751-65cedd7b587f', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('8c444563-0d20-b51b-571b-65ceddc2f877', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('8c8c9017-fe98-1b53-56d0-65ceddfe1896', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d527174-4522-61a3-1c32-65cedd86e141', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d7d51cd-2cb3-e73a-0418-65cedd97d6a3', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8da40a22-fae8-7ca5-5dec-65ceddce4e95', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8dca796a-5a01-1810-d7e2-65cedda5d0c7', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('8e15b81a-fdc5-2aa9-dc03-65cedd4caf16', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e3a9482-3c3e-6451-eae1-65cedd8c871a', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e88eca7-16e3-0db8-f3aa-65ceddc80efe', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ead4b20-a6bb-6006-53dc-65cedd7d40d6', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ed70af8-243c-6f52-ef9a-65cedd39c59f', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f27da62-0b39-ec50-3ca7-65ceddc5b601', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f4b2e27-f48f-fdba-f5ed-65cedd5f5c9a', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f718037-de3e-2ecf-6f7b-65cedd5c2500', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8fc8c8a6-cbb0-4b7f-9b11-65cedd37ac5c', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ff3242c-0958-d9c9-af8e-65cedd8e476d', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('901b8f95-79ea-8a37-1c8c-65cedda98c84', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9061600c-dc2a-d0fc-bed1-65cedd33e3bc', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9089db21-2a21-7f10-05da-65ceddb1ccf6', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90eb7d49-e274-2c69-9b7c-65cedda5b601', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91150f8b-5533-d8f1-2ccc-65ceddb959ed', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('913b7515-0985-2650-8561-65cedd416fc9', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91932020-b2fc-b339-f398-65cedd03742f', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91ba3e61-4019-e2ff-b378-65ceddaf919b', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91e118a4-4a93-a287-1eba-65ceddb7b2ee', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92336b8c-f24a-2949-f998-65cedd7d0ab0', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92588f03-ad5a-56d8-e979-65cedd6e7cea', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('927ecc03-7395-bade-8891-65ceddd565fc', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92cd160d-2ac2-ada5-e21c-65cedde7e077', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92f33cb0-ce40-9a40-63ac-65cedddc68e4', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('931748cb-0360-9b1a-067a-65cedd4af5fd', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('937b809b-5dee-ab2d-24b6-65ceddb2b0c4', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93a3c323-adfe-32ee-98e7-65cedd9c81ae', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93c8a5ae-b402-f63d-358c-65cedded24fe', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93ed6353-0e66-f0eb-aaa9-65cedd28cd09', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('94404934-6762-67f8-f020-65ceddfcaab1', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9469ad4c-b6db-162f-c18a-65cedd9b41da', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9491a103-402d-9229-6429-65cedd974c4f', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94e676b2-0c16-8574-2392-65cedd482df1', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('950e66e0-1b7e-8687-7f1a-65cedd9d802d', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9545fbbc-1315-65fd-4d6c-65cedd19f8ed', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95bbe6a4-d43c-e5d2-873e-65cedd9267c1', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95f3dd7a-eef8-35dd-5a5c-65cedd75d0db', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('962aa558-4b04-ee1e-f737-65cedd4bd4f5', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9650bdf4-ff78-008b-1eb0-65cedd989c75', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('96aab0e4-1805-07be-1e63-65ceddf3dea8', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96d16b66-279f-b0e4-b8fb-65ceddae8a9a', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96f4550d-ddde-c203-3d92-65cedda0f69b', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('971afc8e-5e15-266c-a7cc-65ceddd4ee63', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('973da20c-35a5-c716-c527-65cedd15920c', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('976135ee-3b8f-bf8b-3648-65cedde17303', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('97b1f40e-223a-a304-6301-65ceddca3eb7', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97d9343e-eb01-3c9d-0be4-65ceddd94012', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97fe25bd-3410-10ea-13ab-65cedd34732b', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('984d27ff-444c-af3e-0f33-65cedd8c97e8', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98709bd4-2a59-1f50-ef13-65cedd6dabdf', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('98962be5-ef23-a132-8424-65ceddfe47b6', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98e3ca40-8b86-6018-da9c-65cedd38aaab', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99098041-a7a0-4372-2993-65ceddfa7ab6', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('992fe8c1-21e6-fdd1-6d74-65ceddddd881', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9955be20-7a9f-a99d-9f5b-65ceddb139bc', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99a4441f-29b2-3709-03e7-65ceddc8a3c6', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99c8e165-c240-5384-5b68-65ceddfb41af', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99efa1b5-85f4-d5ed-20bc-65ceddabad80', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a162781-0e92-939d-61aa-65ceddf14965', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a41f835-9191-5343-a760-65ceddac7935', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('9a990d36-64e2-0e61-7fad-65cedd877b7f', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ac060d8-0f05-76ca-166b-65cedd1eaea8', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ae474c2-99e0-6271-087e-65cedda1d482', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b09e1f6-f2ce-c20f-5859-65ceddb17c4f', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('9b2cfde8-7ed3-ec60-c782-65cedd5dcc6a', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b537780-c12c-982a-17e5-65cedde45212', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b77d8cb-106b-cee5-dbca-65cedd85929e', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9bd146d4-fb19-1d00-e060-65cedd2a832f', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9bfdf5fe-cbbf-6b3b-f15a-65ceddcbc3f7', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c4ba487-a89c-517a-2fa4-65cedde0651c', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c7406bc-b61a-14bf-3971-65ceddb15bb4', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c9b21ab-4926-983a-9c6e-65cedde12fd9', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9cea5b21-a665-a2cf-b586-65cedd7e4996', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d12f655-afce-b246-cf07-65cedd2f3a32', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d628195-cc32-c507-a094-65cedd6fd271', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d8a84a5-0fc7-2d5b-407d-65ceddb1b9e5', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9db0cb93-06e5-eaa5-d648-65ceddddfbe7', 'securitygroups_aor_scheduled_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Scheduled_Reports', 0, 0),
('9e255189-80de-e2a5-52e4-65cedd2b0eb5', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e4ef326-b7d2-b51b-0257-65cedde93362', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e7669e3-1aee-de00-b980-65ceddf4f00b', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e9b2a96-9007-0654-c369-65ceddcf2f45', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('9ec098ca-7962-f9e5-7db4-65ceddc134b1', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('9ee5b4ad-2113-bea1-b3db-65cedd134821', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('9f09afbf-4a2e-84d7-f5ac-65cedd4828e7', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('9f2cde6d-5df4-61b1-1dc9-65ceddc72eff', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('9f51e6ee-6bbd-1d6b-def9-65ceddf25730', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f77ea34-d0f5-0542-1e76-65ceddca8e76', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fe2abc8-a96e-f438-f539-65cedda8b734', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a007d5e8-a189-fd79-1636-65cedd5ae664', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a02d5e4a-ee80-445a-c7aa-65cedd224f86', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a05332c9-a206-babf-761d-65ceddb8a23e', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('a076bc49-babd-f638-f6bc-65cedd8717c8', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a09b6566-6cbf-a966-8d30-65cedd76bf53', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0f64676-dea8-1b13-891b-65cedd002dbf', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a11cd9fe-af06-11a7-e5fa-65cedd19327d', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a142c9b3-5c70-f7bf-d808-65cedd967fb0', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a169063c-8339-dee8-5dd2-65ceddb0ac39', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('a1bf08b4-8c6a-fbb1-2b24-65cedd1188e2', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1f7893f-279b-502c-5311-65cedd8b25c5', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a22e20da-e940-6060-1bd0-65cedd13e452', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2641c5d-a65a-0f6f-758a-65ceddd05539', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('a29bbf5b-c4b0-9a5b-32e5-65cedde3f5d7', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2f797fb-abe0-368e-0279-65cedd2b60b5', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a31da1be-2317-0dbc-3f1c-65cedd097279', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a345d010-73d5-24e1-71b0-65cedd6cbb9a', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a36cf69b-2dac-12a1-0dcf-65ceddc0d5cc', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('a3987c65-8f07-0c3a-8169-65cedd5cdcb6', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3fecfe4-1beb-6ac8-01d4-65cedd7adedb', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a424be5f-1f9c-181d-58a4-65ceddbddd49', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a448afe6-e5b6-9c86-385c-65ceddba9cf7', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a46f1cde-d5af-0d6e-75f5-65cedd9fba67', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4cb835c-f2d5-3a60-2a9d-65ceddc50167', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4f097c3-250a-90b1-72a1-65ceddfeaf6b', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a514d392-a984-4faf-2399-65cedd087b45', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5384edf-006d-eac7-5d4b-65cedd9e2c9b', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5a682f1-e0ad-2560-fc39-65ceddc03937', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5cc5ad8-be00-b522-39a7-65cedd3b36f2', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5f363b3-2a33-311e-8fa3-65cedd11326a', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a61a97b1-b47d-afdb-38bf-65cedded3a09', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('a640f6bd-759b-764b-b0be-65ceddc19a88', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6656495-5dab-6538-c572-65cedd62c2dd', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6adc40b-3b17-694b-b003-65ceddb3d2c8', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6d45594-e283-ac82-3ba5-65cedd5b8f9c', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a72f4639-c3ce-7980-9081-65cedd52f179', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a753e88f-c8f8-72f3-8d86-65cedd8b9d64', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a779bdef-c950-7a5b-4d4c-65cedd0529c3', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a79f4bcf-f0fe-9f3a-6951-65cedd10b0e1', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('a7c43c3b-4939-63eb-78f7-65ceddc2bde4', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7e6f161-60a4-ca79-654a-65cedd334662', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a80c757f-a32d-01f3-eb48-65cedd4ec588', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a855d3f5-5979-8961-e43c-65cedd773263', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a87adaa3-f03d-6e04-e496-65cedd13dc7e', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8c4e9e5-1bf3-f1dc-24c3-65cedd8ca89a', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8e8c3c5-9e7d-4a6c-83ba-65cedd01af35', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9d2466e-c3b7-f74f-2dd3-65cedd9e197f', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9fa828c-47f3-d7f1-689d-65cedde93497', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa21c099-68d6-debb-a9b1-65cedd35b255', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa461ec8-27c7-facd-852d-65cedd5e7f41', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('aa6ad4f4-fd48-06a3-8e3a-65ceddea91dd', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('aa8e8aa1-16d9-dce3-6d3f-65cedde6aac9', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('aab0ac7f-a66e-b61f-6fc8-65cedd1941af', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('aad4f9ef-17a2-a937-ad38-65ceddc5dc73', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('aaf89707-0018-855b-e465-65cedde1e615', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('ab20c2d9-9bd5-b6fe-bc83-65cedd19611b', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('ab4d33ee-3fd2-277b-84d2-65cedd8c37cf', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('ab73f258-f1ed-37c6-a252-65ceddcb67f4', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('ac375616-21a0-42ec-2f4a-65cedd7f30a1', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac5ebb78-aef4-b4d4-150f-65cedd14d183', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac8353ba-73b8-4c25-6e27-65cedda52173', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aca87f99-028d-ae76-0a2c-65ceddf58a69', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('ad676ad5-3a3c-e5b1-e65b-65ceddff5d0d', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad92eacf-3ed2-c60e-fe34-65cedd16d708', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('adba245a-0398-0d77-c0a4-65ceddb8e522', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ade15da4-4207-3d6c-c8df-65ceddba6ffa', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('ae952ce7-2c04-1fc0-08d2-65cedd99e88c', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aebabc80-923a-799c-6cfa-65cedd818ddf', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aedeb063-cdc3-cdd9-a443-65ceddb65a37', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af2ecb89-4d4d-ab4a-0b2a-65cedd798877', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af52ad48-4c45-0905-eec6-65ceddc4cbe5', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af74a10c-46b7-aabe-dd18-65ceddf6d8e5', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('afc2cb4c-d585-6188-9ebd-65cedd2d8ed6', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('afe9a075-8d8e-4eeb-d613-65cedd98596f', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b020aaa3-c5f2-8a4c-6fb4-65cedd124092', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b08799d6-f8ab-c1f4-f4b5-65cedded1126', 'securitygroups_outboundemailaccounts', 'SecurityGroups', 'securitygroups', 'id', 'OutboundEmailAccounts', 'outbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'OutboundEmailAccounts', 0, 0),
('b0c1d348-1589-e1d0-dde5-65cedd3941ff', 'outbound_email_owner_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b0fa5d61-b39c-bfca-6102-65cedd9db42c', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b11e819e-875f-e210-9f87-65ceddf1709c', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b142c7c7-ac71-91c1-65b8-65ceddae7fc0', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1946ccd-22f1-1ca8-2a88-65ceddcd100b', 'externaloauthconnection_modified_user', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1b7af2b-4a81-f074-839f-65cedd091c4c', 'externaloauthconnection_created_by', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1dc6ace-36ee-9d1c-f893-65ceddcf4ccb', 'securitygroups_externaloauthconnection', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthConnection', 0, 0),
('b1ffceea-63f0-04a5-23d8-65ceddba1398', 'external_oauth_connections_external_oauth_providers', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'external_oauth_provider_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b24fb9d7-6fb8-323b-6c5f-65ceddc24742', 'externaloauthprovider_modified_user', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b278b88e-c96d-5537-69dc-65cedde388fc', 'externaloauthprovider_created_by', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2a0cc6f-dd2a-f5e1-b5d9-65ceddcdad50', 'securitygroups_externaloauthprovider', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthProvider', 0, 0),
('b2f15f84-9105-21e9-fd91-65ceddc308c9', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b316fa70-d706-2c0b-1067-65ceddc9dc86', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b363825a-f656-b8e2-4580-65ceddc30b6a', 'oauth2tokens_modified_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3880895-ebbd-4f93-6be9-65ceddcc11eb', 'oauth2tokens_created_by', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3b028eb-1922-340c-7c60-65cedd347b11', 'oauth2tokens_assigned_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3ffd182-9449-f3db-3a0e-65cedd117bba', 'oauth2clients_modified_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4296d17-8579-3b70-5e31-65ceddd34df7', 'oauth2clients_created_by', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b450b87e-44de-8194-19ce-65cedd95e771', 'oauth2clients_oauth2tokens', 'OAuth2Clients', 'oauth2clients', 'id', 'OAuth2Tokens', 'oauth2tokens', 'client', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b475664f-0323-6eb1-90b5-65cedde4ee86', 'oauth2clients_assigned_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4ccdde2-babd-7761-4e77-65ceddc1acbf', 'surveyresponses_modified_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4f1930f-ae92-8cab-3c98-65cedd27be6f', 'surveyresponses_created_by', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b514a2fe-a737-7d01-bbae-65cedd0d1dd4', 'surveyresponses_assigned_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b537d8d1-6ca0-e84f-5c6e-65cedd16f8ba', 'securitygroups_surveyresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyResponses', 'surveyresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyResponses', 0, 0),
('b55b2409-cbcd-e087-73b7-65cedd0279a2', 'surveyresponses_surveyquestionresponses', 'SurveyResponses', 'surveyresponses', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyresponse_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b5806ea5-be65-3885-42fe-65cedd48d29f', 'surveyresponses_contacts', 'Contacts', 'contacts', 'id', 'SurveyResponses', 'surveyresponses', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b5a57c00-7e6b-a48a-b078-65cedd9c6c08', 'surveyresponses_accounts', 'Accounts', 'accounts', 'id', 'SurveyResponses', 'surveyresponses', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b5fc03cd-53aa-bc86-ff7e-65ceddb3e987', 'surveys_modified_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6234f44-d20f-4dc5-ac24-65cedd4e9129', 'surveys_created_by', 'Users', 'users', 'id', 'Surveys', 'surveys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6472c67-f63e-83e7-b2ec-65cedd41ae9a', 'surveys_assigned_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b66c418d-5515-6e67-1b5b-65cedd99ac62', 'securitygroups_surveys', 'SecurityGroups', 'securitygroups', 'id', 'Surveys', 'surveys', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Surveys', 0, 0),
('b692f855-7bff-4931-5195-65cedd5b9ca6', 'surveys_surveyquestions', 'Surveys', 'surveys', 'id', 'SurveyQuestions', 'surveyquestions', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6b5891f-f9c3-eb2f-4bcf-65cedd547b83', 'surveys_surveyresponses', 'Surveys', 'surveys', 'id', 'SurveyResponses', 'surveyresponses', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6da8077-18fc-f5fb-0732-65cedd52027e', 'surveys_campaigns', 'Surveys', 'surveys', 'id', 'Campaigns', 'campaigns', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7313bc0-96a9-a2fc-c565-65cedd250ef5', 'surveyquestionresponses_modified_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b756e903-af3f-4ad6-85f3-65cedd4d3654', 'surveyquestionresponses_created_by', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b778c082-74b9-a098-bfc6-65ceddb422bd', 'surveyquestionresponses_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b79d6656-a700-b500-34a5-65cedd8f4539', 'securitygroups_surveyquestionresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionResponses', 0, 0),
('b7f3e827-a21f-a6d1-29a7-65ceddadb1e2', 'surveyquestions_modified_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b819ee36-eb95-d3a5-db73-65cedd900380', 'surveyquestions_created_by', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b83f68b4-2f39-515c-d977-65ceddbb79e4', 'surveyquestions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b863ed7b-876c-64ae-5c27-65cedd43a1f8', 'securitygroups_surveyquestions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestions', 'surveyquestions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestions', 0, 0),
('b88d7700-5c6e-4eab-1c29-65cedd5e9753', 'surveyquestions_surveyquestionoptions', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'survey_question_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8afaccd-c51f-8b2f-724b-65cedd63d990', 'surveyquestions_surveyquestionresponses', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyquestion_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9036361-0bd8-1d7e-373b-65cedd8c7fd0', 'surveyquestionoptions_modified_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b92b5ec5-54ea-28b3-2b6d-65cedd939509', 'surveyquestionoptions_created_by', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b94d1723-0c33-bbaf-a814-65cedd774d54', 'surveyquestionoptions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b970d9b4-fe34-ebd8-c6cc-65cedd89f946', 'securitygroups_surveyquestionoptions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionOptions', 0, 0),
('bb40fae5-ca03-44c6-ee4d-65cedd79e74f', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('bb6b48c0-007d-81cb-cef3-65cedd431030', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('bb8f8541-ffa2-42d1-2139-65ceddb6eaf8', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('bbb3f18d-13d0-dd8c-dcc1-65ceddd988af', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('bbdd2d81-22e4-e45d-f301-65cedde882f8', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('bc027641-9635-9207-222b-65ceddd0c104', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('bc26fa65-ff30-e782-5637-65ceddd28769', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('bc4e8b77-60b7-c80a-926a-65cedd32f152', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('bc74518f-352c-e0c5-92c6-65ceddcb5fd3', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('bc9b5873-e53d-df97-61f9-65cedd6cd2f3', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('bcc6438a-fbe5-9f7d-5c05-65cedd6cbcaa', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('bce9ae85-1a06-b020-e3c3-65ceddbb153b', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('bd1dfcb3-ff1e-2e8b-3b39-65cedda5204d', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('bd57cf15-1238-2c72-4166-65cedd35d278', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('bd8f5f67-7f1b-453f-486e-65cedd073b6c', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('bdc55247-3b39-d91f-a2df-65cedd8beac2', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('bdff1745-72a6-e0b3-d904-65cedd1110b0', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('be2594ee-e755-ec15-6fee-65cedd865342', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('be4eeeaf-da92-1fbf-301d-65cedd9ce51e', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('be75f3a5-8d11-4b9b-8b17-65cedd2bf360', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('be9aa321-901a-0b73-697a-65ceddbc879f', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('bec0fbbb-7002-9c60-75c6-65cedd654775', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('bee514de-ab7f-e9b3-be20-65cedd3c0523', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('bf09f783-cbe6-e791-c050-65ceddbd5b8a', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('bf2d6267-80da-5199-628d-65ceddd8a632', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('bf544197-d378-870f-4842-65cedd778ea1', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('bf7af61f-4b63-e5df-d92d-65cedd373f50', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('bf9ddfd2-b723-add9-af8e-65cedda1d569', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('bfc3f362-ae6b-5796-919a-65cedd9a5f1d', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('bfe8d3c6-f315-8f88-df42-65cedd755957', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('c00ca856-6061-80a0-545f-65ceddf9ecc5', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('c0309fb0-74d7-177c-ed2b-65cedd12dc61', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('c05636ad-c2bf-7741-d53f-65cedd87eec7', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c07ac97a-3ff6-e90c-49eb-65cedd808bb3', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('c0a2aa27-9c66-9e0e-5318-65cedd8d1d4e', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('c0c82045-f04b-3586-9e74-65ceddfc316e', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('c0f05c30-60b8-0bc5-ee7e-65ceddc80557', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('c1167e75-1b76-ed0b-e45f-65cedd131e71', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('c13c84ab-03d3-4e1a-b1ee-65cedd8e34c6', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('c16045f9-df86-def1-a2bc-65cedd0316c0', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c1842359-3e6a-775d-da6c-65ceddd64fd8', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('c1ab67d9-da30-562e-1d5b-65ceddf7e7c1', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('c1d76ab2-e8da-82b4-86ef-65cedd0a6eee', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('c203baf5-fa35-e66e-b824-65cedd08fcfd', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('c23351e1-f438-85ea-80a8-65cedd870723', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('c25c1e70-7935-237f-9683-65cedd9b1bc9', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('c2845a1a-bce1-d6d1-bc50-65cedde757fc', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('c2a8155e-9c8d-52f3-b377-65ceddbcc5e4', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('c2cdd246-8deb-3632-8869-65ceddd0eda5', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('c2f41760-be0f-477e-6326-65cedd4a6268', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('c319bfbe-93f0-6df2-1ca8-65cedd8d79ce', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('c33d158d-f1b8-83ff-95b9-65cedd3e588f', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('c3655e9e-3171-9c07-673f-65ceddc6f2fd', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('c388949f-1738-2edc-98dc-65cedde87f7c', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('c3ad7b1e-3a33-a025-9190-65ceddea4490', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('c3d4458a-dccf-2283-13c7-65ceddceedec', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('c3fa6cd9-ed29-3bc5-f2b4-65cedd48ff19', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('c41f274e-2db3-dd0a-65b0-65ceddf52363', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('c441b746-a0dc-f69b-122a-65cedd6500d1', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('c46401ba-0490-3744-85f7-65cedd69109a', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('c489e751-6117-abc0-a340-65cedd9fa95e', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('c4b051d5-bb8d-aaaa-02e4-65ceddc1cf5f', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('c4d6d09c-5bf9-3844-c6c8-65cedda74698', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('c53a5585-7a1b-f5ee-185b-65cedd1ca338', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('c55f640f-3144-7650-f716-65ceddc3c119', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('c58bcf69-b5fd-3db7-470b-65cedd57e9a1', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('c5b4fe9d-7370-f74e-1207-65ceddab6507', 'surveyquestionoptions_surveyquestionresponses', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'surveyquestionoptions_surveyquestionresponses', 'surveyq72c7options_ida', 'surveyq10d4sponses_idb', 'many-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT -1,
  `popup_viewed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('7eb479ef-5988-0a35-5fb9-65c486930666', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 11:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('80247d69-727f-6f96-fb11-65c48694cc4c', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 17:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('818b2af9-b71e-f8be-dc21-65c486491cdb', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 08:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('82e61286-81ca-5eb0-b13e-65c4862e3397', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 12:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('84367065-c5d7-b1cf-05cc-65c48651f6a3', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 08:45:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('857ac261-b4ab-6b95-06f5-65c48660097e', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 12:30:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('86c8d295-2941-70a7-e0c8-65c486d19f53', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 12:15:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('8815a7fc-83d2-d87c-6f34-65c4861f0704', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 15:30:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('89667504-6c4a-ab2d-1905-65c486dcffcd', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 16:00:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('8ac3cca2-9463-a6ae-f682-65c486ba7bf9', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 10:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('8c20c0ec-be58-5e7f-5084-65c486eb97a8', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 08:00:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('8d621877-e4f8-cbf0-822a-65c486ea242c', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 06:15:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('8e9c39b1-919e-c676-6cf2-65c486ab1299', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 19:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('8fdd3369-e334-4d61-4378-65c486a056b6', 0, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Google Calendar Sync', 'function::syncGoogleCalendar', '2015-01-01 12:30:01', NULL, '*/15::*::*::*::*', NULL, NULL, NULL, 'Active', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `spots`
--

CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `surveyquestionoptions`
--

CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `surveyquestionoptions`
--

INSERT INTO `surveyquestionoptions` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `sort_order`, `survey_question_id`) VALUES
('11368c18-2d0a-f949-4bfe-65c5b3401f92', 'Открытие депозита', '2024-02-09 05:10:13', '2024-02-09 05:10:13', '1', '1', NULL, 0, NULL, 0, '4c700c23-1b67-77ee-9454-65c5b300261d'),
('193905e8-6808-2eb0-c278-65c5b353f8f7', 'Ошибся номером ', '2024-02-09 05:10:13', '2024-02-09 05:10:13', '1', '1', NULL, 0, NULL, 0, '8ac27062-7257-3b2d-2df1-65c5b36c3599'),
('544ba85a-b1e8-765f-0317-65c5b358a3ef', 'Адреса филиалов', '2024-02-09 05:10:13', '2024-02-09 05:10:13', '1', '1', NULL, 0, NULL, 1, '4c700c23-1b67-77ee-9454-65c5b300261d'),
('5fcb9380-3588-07fb-01bc-65c5b3607241', 'Сбросил клиент ', '2024-02-09 05:10:13', '2024-02-09 05:10:13', '1', '1', NULL, 0, NULL, 1, '8ac27062-7257-3b2d-2df1-65c5b36c3599'),
('66c24d89-0ff4-fe28-8759-65c5b3a27378', 'Получение кредита', '2024-02-09 05:08:20', '2024-02-09 05:10:13', '1', '1', NULL, 0, '', 1, '6e217c39-438d-53b5-fbbd-65c5a594781f'),
('7b210444-393c-1089-8df7-65c5b37cc170', '1', '2024-02-09 05:10:13', '2024-02-09 05:10:13', '1', '1', NULL, 0, NULL, 0, 'ec8348b3-b41b-4731-f7e4-65c5b33bcbac'),
('a3c7ea8c-4c8a-23bc-9cb8-65c5b3172ca8', 'Плановое погашения', '2024-02-09 05:10:13', '2024-02-09 05:10:13', '1', '1', NULL, 0, NULL, 2, '8ac27062-7257-3b2d-2df1-65c5b36c3599'),
('b08a9d60-12d7-d5f9-0edb-65c5a580d9ea', 'Действующий кредит', '2024-02-09 04:09:25', '2024-02-09 05:10:13', '1', '1', NULL, 0, '', 0, '6e217c39-438d-53b5-fbbd-65c5a594781f'),
('c14e6a6d-dc9b-0438-a4c0-65c5b35b4377', '1', '2024-02-09 05:10:13', '2024-02-09 05:10:13', '1', '1', NULL, 0, NULL, 1, 'ec8348b3-b41b-4731-f7e4-65c5b33bcbac');

-- --------------------------------------------------------

--
-- Структура таблицы `surveyquestionoptions_audit`
--

CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `surveyquestionoptions_surveyquestionresponses`
--

CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `surveyquestionresponses`
--

CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `surveyquestionresponses_audit`
--

CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `surveyquestions`
--

INSERT INTO `surveyquestions` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `sort_order`, `type`, `happiness_question`, `survey_id`) VALUES
('4c700c23-1b67-77ee-9454-65c5b300261d', 'Консультация', '2024-02-09 05:08:53', '2024-02-09 05:10:13', '1', '1', NULL, 0, '', 1, 'Multiselect', 0, 'f05800d4-65a7-dc1f-20d2-65c5a5bf769e'),
('6e217c39-438d-53b5-fbbd-65c5a594781f', 'Кредиты', '2024-02-09 04:09:25', '2024-02-09 05:10:13', '1', '1', NULL, 0, '', 0, 'Multiselect', 0, 'f05800d4-65a7-dc1f-20d2-65c5a5bf769e'),
('8ac27062-7257-3b2d-2df1-65c5b36c3599', 'СМС Рассылка', '2024-02-09 05:09:10', '2024-02-09 05:10:13', '1', '1', NULL, 0, '', 2, 'Multiselect', 0, 'f05800d4-65a7-dc1f-20d2-65c5a5bf769e'),
('ec8348b3-b41b-4731-f7e4-65c5b33bcbac', 'Депозиты', '2024-02-09 05:09:22', '2024-02-09 05:10:13', '1', '1', NULL, 0, '', 3, 'Multiselect', 0, 'f05800d4-65a7-dc1f-20d2-65c5a5bf769e');

-- --------------------------------------------------------

--
-- Структура таблицы `surveyquestions_audit`
--

CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `surveyresponses`
--

CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `surveyresponses_audit`
--

CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `surveys`
--

CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'LBL_DRAFT',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `surveys`
--

INSERT INTO `surveys` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `status`, `submit_text`, `satisfied_text`, `neither_text`, `dissatisfied_text`) VALUES
('f05800d4-65a7-dc1f-20d2-65c5a5bf769e', 'Тематика обращений', '2024-02-09 04:09:25', '2024-02-09 05:10:13', '1', '1', NULL, 0, '1', 'Public', 'Submit', 'Satisfied', 'Neither Satisfied nor Dissatisfied', 'Dissatisfied');

-- --------------------------------------------------------

--
-- Структура таблицы `surveys_audit`
--

CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT 0,
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT 0,
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(1, '8444abf2-6fc9-93b4-9606-65c59e444200', '1', 'OAuth2Clients', '51c2d856-3552-a72c-5a5b-65c59e19401c', 'superadmin', '2024-02-09 03:39:13', 'detailview', 'ttg4nch13vadv3hb19np3m10qt', 1, 0),
(2, '4c6ed805-46bd-9674-4404-65c59e92fa09', '1', 'OAuth2Clients', '2468f3ce-7c33-4527-8a9a-65c59e1979fb', 'Test', '2024-02-09 03:40:36', 'detailview', 'ifih8r2t9c7ujk2bs6dn3brj4b', 1, 0),
(47, 'eda985b4-a6c1-3d54-51a6-65cedd3dfbad', '1', 'Calls', 'bc529116-c556-ab68-cdad-65c9aa12b9af', 'Ичсход', '2024-02-16 03:58:07', 'editview', '580o65nckf55a6l8uv11shqttu', 1, 0),
(48, 'e79e6c3c-6f2b-eb49-9fc7-66b5cf6d8e50', '1', 'Users', '1', 'Administrator', '2024-08-09 08:10:55', 'editview', '7sqg9toaa4m0dq0k9k5n681tuh', 1, 0),
(50, 'c60b7642-52c3-affc-5a8a-66b5cf956e37', '1', 'Surveys', 'f05800d4-65a7-dc1f-20d2-65c5a5bf769e', 'Тематика обращений', '2024-08-09 08:11:24', 'detailview', '7sqg9toaa4m0dq0k9k5n681tuh', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('1909e243-c27e-52c2-154c-65c489849230', 'upload/upgrades/langpack/rapira-suite_pack_russian.zip', 'e06a8d019d1530d80790f9ca11978345', 'langpack', 'installed', '7.14.2', 'RUSSIAN RAPIRA LANGUAGE PACK FOR SUITECRM', 'очередной перевод на великий и могучий', 'ru_ru', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czo0MToiUlVTU0lBTiBSQVBJUkEgTEFOR1VBR0UgUEFDSyBGT1IgU1VJVEVDUk0iO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjcxOiLQvtGH0LXRgNC10LTQvdC+0Lkg0L/QtdGA0LXQstC+0LQg0L3QsCDQstC10LvQuNC60LjQuSDQuCDQvNC+0LPRg9GH0LjQuSI7czo0OiJ0eXBlIjtzOjg6ImxhbmdwYWNrIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtzOjM6IlllcyI7czoyNToiYWNjZXB0YWJsZV9zdWdhcl92ZXJzaW9ucyI7YTowOnt9czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjE6e2k6MDtzOjI6IkNFIjt9czo2OiJhdXRob3IiO3M6OToibGlraG9ib3J5IjtzOjc6InZlcnNpb24iO3M6NjoiNy4xNC4yIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAyMy8xMS8xOCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjI6e3M6MjoiaWQiO3M6NToicnVfcnUiO3M6NDoiY29weSI7YTozOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5jbHVkZSI7czoyOiJ0byI7czo3OiJpbmNsdWRlIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L21vZHVsZXMiO3M6MjoidG8iO3M6NzoibW9kdWxlcyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9pbnN0YWxsIjtzOjI6InRvIjtzOjc6Imluc3RhbGwiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2024-02-08 07:57:22', 1),
('58abcb84-f091-b2ba-81e2-65c5be1d2022', 'upload/upgrades/module/ezyZip.zip', '1081441bc937f2aa837910768defd93c', 'module', 'installed', '3.6.10', 'Callinize - community Edition', 'Integrates Asterisk telephony features into SugarCRM.', 'Asterisk_SugarCRM_Connector', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjI6e3M6MTM6ImV4YWN0X21hdGNoZXMiO2E6MTp7aToxO3M6NToiNi40LjAiO31zOjEzOiJyZWdleF9tYXRjaGVzIjthOjI6e2k6MTtzOjg6IjZcLjRcLlxkIjtpOjI7czoxMjoiNlwuWzAtN11cLlxkIjt9fXM6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YTozOntpOjA7czoyOiJDRSI7aToxO3M6MzoiUFJPIjtpOjI7czozOiJFTlQiO31zOjY6InJlYWRtZSI7czoxNzU6IlBsZWFzZSBzZWUgdGhlIGRvY3VtZW50YXRpb24gYXQgaHR0cDovL3d3dy5naXRodWIuY29tL2JsYWszci95YWFpL1VzZXItTWFudWFsIHRoZXJlIGFyZSBzb21lIGltcG9ydGFudCBub3RlcyB5b3UgbmVlZCB0byByZWFkIGlmIHlvdSBhcmUgaW5zdGFsbGluZyBhbiB1cGRhdGVkIHZlcnNpb24gb2YgeWFhaS4iO3M6Mzoia2V5IjtzOjA6IiI7czo2OiJhdXRob3IiO3M6ODI6IkJsYWtlIFJvYmVydHNvbiAvIEtJTkFNVSBCdXNpbmVzcyBTb2x1dGlvbnMgQUcgLyBhYmNvbmEgYWN0aXZlIGJ1c2luZXNzIGNvbnN1bHRpbmciO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUzOiJJbnRlZ3JhdGVzIEFzdGVyaXNrIHRlbGVwaG9ueSBmZWF0dXJlcyBpbnRvIFN1Z2FyQ1JNLiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyOToiQ2FsbGluaXplIC0gY29tbXVuaXR5IEVkaXRpb24iO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjExOiJEZWMgMywgMjAxMyI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjY6IjMuNi4xMCI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo0OiJ0cnVlIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6Njp7czoyOiJpZCI7czoyNzoiQXN0ZXJpc2tfU3VnYXJDUk1fQ29ubmVjdG9yIjtzOjQ6ImNvcHkiO2E6ODp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0FzdGVyaXNrIjtzOjI6InRvIjtzOjIzOiJjdXN0b20vbW9kdWxlcy9Bc3RlcmlzayI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo0MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvc2VydmljZS9jYWxsaW5pemUiO3M6MjoidG8iO3M6MjQ6ImN1c3RvbS9zZXJ2aWNlL2NhbGxpbml6ZSI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo2OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvUGhvbmUvTGlzdFZpZXcudHBsIjtzOjI6InRvIjtzOjUyOiJjdXN0b20vaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvUGhvbmUvTGlzdFZpZXcudHBsIjt9aTozO2E6Mjp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9pbmNsdWRlL2phdmFzY3JpcHQvanF1ZXJ5L2pxdWVyeS5wYWNrLmpzIjtzOjI6InRvIjtzOjQ3OiJjdXN0b20vaW5jbHVkZS9qYXZhc2NyaXB0L2pxdWVyeS9qcXVlcnkucGFjay5qcyI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlndXJhdG9yLnBocCI7czoyOiJ0byI7czo1MzoiY3VzdG9tL21vZHVsZXMvQ29uZmlndXJhdG9yL2FzdGVyaXNrX2NvbmZpZ3VyYXRvci5waHAiO31pOjU7YToyOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ29uZmlndXJhdG9yL2FzdGVyaXNrX2NvbmZpZ3VyYXRvci50cGwiO3M6MjoidG8iO3M6NTM6ImN1c3RvbS9tb2R1bGVzL0NvbmZpZ3VyYXRvci9hc3Rlcmlza19jb25maWd1cmF0b3IudHBsIjt9aTo2O2E6Mjp7czo0OiJmcm9tIjtzOjc2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NvbmZpZ3VyYXRvci9hc3Rlcmlza19jb25maWd1cmF0b3JfdGFibGUudHBsIjtzOjI6InRvIjtzOjU5OiJjdXN0b20vbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlndXJhdG9yX3RhYmxlLnRwbCI7fWk6NzthOjI6e3M6NDoiZnJvbSI7czo2OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlnX21ldGEucGhwIjtzOjI6InRvIjtzOjUyOiJjdXN0b20vbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlnX21ldGEucGhwIjt9fXM6MTQ6ImFkbWluaXN0cmF0aW9uIjthOjE6e2k6MDthOjE6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9hc3Rlcmlza19jb25maWd1cmF0b3IucGhwIjt9fXM6ODoibGFuZ3VhZ2UiO2E6MTU6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Vc2Vycy9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiVXNlcnMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvVXNlcnMvbGFuZ3VhZ2UvZ2VfZ2UubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IlVzZXJzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImdlX2dlIjt9aToyO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL1VzZXJzL2xhbmd1YWdlL3J1X3J1LmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJVc2VycyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MzthOjM6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6IkFkbWluaXN0cmF0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo0O2E6Mzp7czo0OiJmcm9tIjtzOjcwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0FkbWluaXN0cmF0aW9uL2xhbmd1YWdlL2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNDoiQWRtaW5pc3RyYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZ2VfZ2UiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQWRtaW5pc3RyYXRpb24vbGFuZ3VhZ2UvcnVfcnUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6NjthOjM6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJDb25maWd1cmF0b3IiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjc7YTozOntzOjQ6ImZyb20iO3M6Njg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ29uZmlndXJhdG9yL2xhbmd1YWdlL2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiQ29uZmlndXJhdG9yIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImdlX2dlIjt9aTo4O2E6Mzp7czo0OiJmcm9tIjtzOjY4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NvbmZpZ3VyYXRvci9sYW5ndWFnZS9ydV9ydS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6IkNvbmZpZ3VyYXRvciI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6OTthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9DYWxscy9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiQ2FsbHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjEwO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NhbGxzL2xhbmd1YWdlL2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJDYWxscyI7czo4OiJsYW5ndWFnZSI7czo1OiJnZV9nZSI7fWk6MTE7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ2FsbHMvbGFuZ3VhZ2UvcnVfcnUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkNhbGxzIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9aToxMjthOjM6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvaW5jbHVkZS9sYW5ndWFnZS9jYWxsX3N0YXR1c19kb21fX2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjEzO2E6Mzp7czo0OiJmcm9tIjtzOjcyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9pbmNsdWRlL2xhbmd1YWdlL2NhbGxfc3RhdHVzX2RvbV9fZ2VfZ2UubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJnZV9nZSI7fWk6MTQ7YTozOntzOjQ6ImZyb20iO3M6NzI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2luY2x1ZGUvbGFuZ3VhZ2UvY2FsbF9zdGF0dXNfZG9tX19ydV9ydS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9fXM6MTM6ImN1c3RvbV9maWVsZHMiO2E6Nzp7aTowO2E6MjA6e3M6MjoiaWQiO3M6MjQ6IlVzZXJzYXN0ZXJpc2tfb3V0Ym91bmRfYyI7czo0OiJuYW1lIjtzOjE5OiJhc3Rlcmlza19vdXRib3VuZF9jIjtzOjU6ImxhYmVsIjtzOjIxOiJMQkxfQVNURVJJU0tfT1VUQk9VTkQiO3M6ODoiY29tbWVudHMiO047czo0OiJoZWxwIjtOO3M6NjoibW9kdWxlIjtzOjU6IlVzZXJzIjtzOjQ6InR5cGUiO3M6NDoiYm9vbCI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7aTowO3M6MTM6ImRhdGVfbW9kaWZpZWQiO3M6MTk6IjIwMDktMDUtMjIgMDA6MDA6MDAiO3M6NzoiZGVsZXRlZCI7czoxOiIwIjtzOjc6ImF1ZGl0ZWQiO3M6MToiMCI7czoxMToibWFzc191cGRhdGUiO3M6MToiMCI7czoxNToiZHVwbGljYXRlX21lcmdlIjtzOjE6IjAiO3M6MTA6InJlcG9ydGFibGUiO3M6MToiMSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjE7YToyMDp7czoyOiJpZCI7czoyMzoiVXNlcnNhc3Rlcmlza19pbmJvdW5kX2MiO3M6NDoibmFtZSI7czoxODoiYXN0ZXJpc2tfaW5ib3VuZF9jIjtzOjU6ImxhYmVsIjtzOjIwOiJMQkxfQVNURVJJU0tfSU5CT1VORCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO047czo2OiJtb2R1bGUiO3M6NToiVXNlcnMiO3M6NDoidHlwZSI7czo0OiJib29sIjtzOjg6Im1heF9zaXplIjtzOjI6IjQ1IjtzOjE0OiJyZXF1aXJlX29wdGlvbiI7czoxOiIwIjtzOjEzOiJkZWZhdWx0X3ZhbHVlIjtpOjA7czoxMzoiZGF0ZV9tb2RpZmllZCI7czoxOToiMjAwOS0wNS0yMiAwMDowMDowMCI7czo3OiJkZWxldGVkIjtzOjE6IjAiO3M6NzoiYXVkaXRlZCI7czoxOiIwIjtzOjExOiJtYXNzX3VwZGF0ZSI7czoxOiIwIjtzOjE1OiJkdXBsaWNhdGVfbWVyZ2UiO3M6MToiMCI7czoxMDoicmVwb3J0YWJsZSI7czoxOiIxIjtzOjQ6ImV4dDEiO047czo0OiJleHQyIjtOO3M6NDoiZXh0MyI7TjtzOjQ6ImV4dDQiO047fWk6MjthOjIwOntzOjI6ImlkIjtzOjE5OiJVc2Vyc2FzdGVyaXNrX2V4dF9jIjtzOjQ6Im5hbWUiO3M6MTQ6ImFzdGVyaXNrX2V4dF9jIjtzOjU6ImxhYmVsIjtzOjE2OiJMQkxfQVNURVJJU0tfRVhUIjtzOjg6ImNvbW1lbnRzIjtOO3M6NDoiaGVscCI7TjtzOjY6Im1vZHVsZSI7czo1OiJVc2VycyI7czo0OiJ0eXBlIjtzOjc6InZhcmNoYXIiO3M6ODoibWF4X3NpemUiO3M6MjoiNDUiO3M6MTQ6InJlcXVpcmVfb3B0aW9uIjtzOjE6IjAiO3M6MTM6ImRlZmF1bHRfdmFsdWUiO047czoxMzoiZGF0ZV9tb2RpZmllZCI7czoxOToiMjAwOS0wNS0yMiAwMDowMDowMCI7czo3OiJkZWxldGVkIjtzOjE6IjAiO3M6NzoiYXVkaXRlZCI7czoxOiIwIjtzOjExOiJtYXNzX3VwZGF0ZSI7czoxOiIwIjtzOjE1OiJkdXBsaWNhdGVfbWVyZ2UiO3M6MToiMCI7czoxMDoicmVwb3J0YWJsZSI7czoxOiIxIjtzOjQ6ImV4dDEiO047czo0OiJleHQyIjtOO3M6NDoiZXh0MyI7TjtzOjQ6ImV4dDQiO047fWk6MzthOjIxOntzOjI6ImlkIjtzOjIzOiJDYWxsc2FzdGVyaXNrX2NhbGxfaWRfYyI7czo0OiJuYW1lIjtzOjE4OiJhc3Rlcmlza19jYWxsX2lkX2MiO3M6NToibGFiZWwiO3M6MjA6IkxCTF9BU1RFUklTS19DQUxMX0lEIjtzOjg6ImNvbW1lbnRzIjtOO3M6NDoiaGVscCI7czoxMjc6IlRoaXMgaXMgdGhlIHVuaXF1ZSBpZCBhc3NpZ25lZCB0byB0aGlzIGNhbGwgYnkgdGhlIFBCWCwgVXNlZnVsIGZvciBkZWJ1Z2dpbmcgYnV0IG90aGVyd2lzZSBubyByZWFzb24gdG8gZGlzcGxheSB0byBhbiBlbmQgdXNlci4iO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjQ7YToyMTp7czoyOiJpZCI7czoyNToiQ2FsbHNhc3Rlcmlza19jYWxsZXJfaWRfYyI7czo0OiJuYW1lIjtzOjIwOiJhc3Rlcmlza19jYWxsZXJfaWRfYyI7czo1OiJsYWJlbCI7czoyMjoiTEJMX0FTVEVSSVNLX0NBTExFUl9JRCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO3M6MTY6InRyaW1tZWQgY2FsbGVySWQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjU7YToyMTp7czoyOiJpZCI7czoyNzoiQ2FsbHNhc3Rlcmlza19pbmJvdW5kX2V4dF9jIjtzOjQ6Im5hbWUiO3M6MjI6ImFzdGVyaXNrX2luYm91bmRfZXh0X2MiO3M6NToibGFiZWwiO3M6MjQ6IkxCTF9BU1RFUklTS19JTkJPVU5EX0VYVCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO3M6MTE0OiJDb250YWlucyB0aGUgaW5ib3VuZGVkIGV4dGVuc2lvbi4gIFRoaXMgaXMgdXNlZnVsIGZvciBpZGVudGlmeWluZyB0aGUgcXVldWUgb3IgcmluZ2dyb3VwIHRoYXQgdGhlIGNhbGwgY2FtZSBpbiBvbi4iO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjY7YToyMTp7czoyOiJpZCI7czoyNDoiQ2FsbHNhc3Rlcmlza191c2VyX2V4dF9jIjtzOjQ6Im5hbWUiO3M6MTk6ImFzdGVyaXNrX3VzZXJfZXh0X2MiO3M6NToibGFiZWwiO3M6MjE6IkxCTF9BU1RFUklTS19VU0VSX0VYVCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO3M6NjE6IkNvbnRhaW5zIHRoZSB1c2VyIGV4dGVuc2lvbiB0aGF0IGFuc3dlcmVkIG9yIHBsYWNlZCB0aGUgY2FsbC4iO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO319czoxMToibG9naWNfaG9va3MiO2E6MTp7aTowO2E6Nzp7czo2OiJtb2R1bGUiO3M6MDoiIjtzOjQ6Imhvb2siO3M6MTQ6ImFmdGVyX3VpX2ZyYW1lIjtzOjU6Im9yZGVyIjtpOjExO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjcyOiJBZGRzIGFzdGVyaXNrIHJlbGF0ZWQgamF2YXNjcmlwdCB0byBwYWdlIHRvIGVuYWJsZSBDbGljayBUbyBEaWFsL0xvZ2dpbmciO3M6NDoiZmlsZSI7czo0NjoiY3VzdG9tL21vZHVsZXMvQXN0ZXJpc2svaW5jbHVkZS9Bc3Rlcmlza0pTLnBocCI7czo1OiJjbGFzcyI7czoxMDoiQXN0ZXJpc2tKUyI7czo4OiJmdW5jdGlvbiI7czoxNDoiZWNob0phdmFTY3JpcHQiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2024-02-09 05:54:37', 1),
('a34736ee-e9e4-cc90-92e0-65cedbb9d9fa', 'upload/upgrades/module/suite-crm-click-to-call-master.zip', '7f66c9e7406bb983c7558d35fce158f6', 'module', 'installed', 'v0.0.1', 'SuiteCRM Click to Call (Asterisk)', 'SuiteCRM Click to Call (Asterisk)', 'ClickToCall', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjI6e3M6MTM6ImV4YWN0X21hdGNoZXMiO2E6MTp7aToxO3M6NjoiNi41LjE1Ijt9czoxMzoicmVnZXhfbWF0Y2hlcyI7YTozOntpOjE7czo4OiI2XC40XC5cZCI7aToyO3M6MTI6IjZcLlswLTldXC5cZCI7aTozO3M6MTI6IjdcLlswLTldXC5cZCI7fX1zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6NDp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjtpOjM7czo0OiJDT1JQIjt9czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czowOiIiO3M6NjoiYXV0aG9yIjtzOjE6IiAiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjMzOiJTdWl0ZUNSTSBDbGljayB0byBDYWxsIChBc3RlcmlzaykiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MzM6IlN1aXRlQ1JNIENsaWNrIHRvIENhbGwgKEFzdGVyaXNrKSI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTU6IkphbnVhcnkgOCwgMjAxOCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjY6InYwLjAuMSI7czoxMzoicmVtb3ZlX3RhYmxlcyI7YjowO31zOjExOiJpbnN0YWxsZGVmcyI7YTo2OntzOjI6ImlkIjtzOjExOiJDbGlja1RvQ2FsbCI7czo0OiJjb3B5IjthOjQ6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvRXh0ZW5zaW9uL21vZHVsZXMvQWRtaW5pc3RyYXRpb24vRXh0LyI7czoyOiJ0byI7czo0MzoiY3VzdG9tL0V4dGVuc2lvbi9tb2R1bGVzL0FkbWluaXN0cmF0aW9uL0V4dCI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo2MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvRXh0ZW5zaW9uL21vZHVsZXMvVXNlcnMvRXh0L0xhbmd1YWdlIjtzOjI6InRvIjtzOjQzOiJjdXN0b20vRXh0ZW5zaW9uL21vZHVsZXMvVXNlcnMvRXh0L0xhbmd1YWdlIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjQzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NsaWNrVG9DYWxsIjtzOjI6InRvIjtzOjE5OiJtb2R1bGVzL0NsaWNrVG9DYWxsIjt9aTozO2E6Mjp7czo0OiJmcm9tIjtzOjUwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9FbnRyeVBvaW50L2NsaWNrVG9DYWxsLnBocCI7czoyOiJ0byI7czo2NzoiY3VzdG9tL0V4dGVuc2lvbi9hcHBsaWNhdGlvbi9FeHQvRW50cnlQb2ludFJlZ2lzdHJ5L2NsaWNrVG9DYWxsLnBocCI7fX1zOjU6Im1rZGlyIjthOjA6e31zOjE0OiJhZG1pbmlzdHJhdGlvbiI7YTowOnt9czoxMzoiY3VzdG9tX2ZpZWxkcyI7YToxOntpOjA7YToxNDp7czoyOiJpZCI7czoxMjoiZXh0ZW5zaW9uX2lkIjtzOjQ6Im5hbWUiO3M6MTc6InBob25lX2V4dGVuc2lvbl9jIjtzOjU6ImxhYmVsIjtzOjMxOiJMQkxfQ0xJQ0tUT0NBTExfUEhPTkVfRVhURU5TSU9OIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo2OiJtb2R1bGUiO3M6NToiVXNlcnMiO3M6NDoiaGVscCI7czoyMDoiRW50ZXIgWW91ciBFeHRlbnNpb24iO3M6NzoiY29tbWVudCI7czowOiIiO3M6MTM6ImRlZmF1bHRfdmFsdWUiO3M6MDoiIjtzOjg6Im1heF9zaXplIjtpOjEwO3M6ODoicmVxdWlyZWQiO2I6MDtzOjEwOiJyZXBvcnRhYmxlIjtiOjA7czo3OiJhdWRpdGVkIjtiOjA7czoxMDoiaW1wb3J0YWJsZSI7YjoxO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7YjowO319czoxMToibG9naWNfaG9va3MiO2E6MTp7aTowO2E6Nzp7czo2OiJtb2R1bGUiO3M6MDoiIjtzOjQ6Imhvb2siO3M6MTU6ImFmdGVyX3VpX2Zvb3RlciI7czo1OiJvcmRlciI7aTo5OTtzOjExOiJkZXNjcmlwdGlvbiI7czoyMjoiU3VpdGVDUk0gQ2xpY2sgdG8gQ2FsbCI7czo0OiJmaWxlIjtzOjQwOiJtb2R1bGVzL0NsaWNrVG9DYWxsL0xvYWRDYWxsZXJCdXR0b24ucGhwIjtzOjU6ImNsYXNzIjtzOjE2OiJMb2FkQ2FsbGVyQnV0dG9uIjtzOjg6ImZ1bmN0aW9uIjtzOjE2OiJsb2FkQ2FsbGVyQnV0dG9uIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjthOjA6e319', '2024-02-16 03:48:19', 1),
('dbdf68b2-058f-abcd-5618-65cedd0cef76', 'upload/upgrades/module/asterlink-master.zip', '4eb772801b6726c77d6e2231435c4879', 'module', 'installed', '0.5.1', 'AsterLink', 'Asterisk PBX integration with SuiteCRM', 'sf_asterlink', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjExOntzOjQ6Im5hbWUiO3M6OToiQXN0ZXJMaW5rIjtzOjExOiJkZXNjcmlwdGlvbiI7czozODoiQXN0ZXJpc2sgUEJYIGludGVncmF0aW9uIHdpdGggU3VpdGVDUk0iO3M6NzoidmVyc2lvbiI7czo1OiIwLjUuMSI7czo2OiJhdXRob3IiO3M6MTQ6InNlcmZyZWVtYW4xMzM3IjtzOjY6InJlYWRtZSI7czowOiIiO3M6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MTp7czoxMzoicmVnZXhfbWF0Y2hlcyI7YToxOntpOjA7czoxMDoiNlwuNVwuXGQqJCI7fX1zOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMjQtMDItMDQiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6ODp7czoyOiJpZCI7czoxMjoic2ZfYXN0ZXJsaW5rIjtzOjQ6ImNvcHkiO2E6NDp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjI4OiI8YmFzZXBhdGg+L21vZHVsZXMvQXN0ZXJMaW5rIjtzOjI6InRvIjtzOjE3OiJtb2R1bGVzL0FzdGVyTGluayI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo4NjoiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL2FwcGxpY2F0aW9uL0V4dC9FbnRyeVBvaW50UmVnaXN0cnkvQXN0ZXJMaW5rRW50cnlQb2ludC5waHAiO3M6MjoidG8iO3M6NzU6ImN1c3RvbS9FeHRlbnNpb24vYXBwbGljYXRpb24vRXh0L0VudHJ5UG9pbnRSZWdpc3RyeS9Bc3RlckxpbmtFbnRyeVBvaW50LnBocCI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo5NzoiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL21vZHVsZXMvQ2FsbHMvRXh0L1ZhcmRlZnMvQXN0ZXJMaW5rX092ZXJyaWRlX0NhbGxzX2R1cmF0aW9uX2hvdXJzLnBocCI7czoyOiJ0byI7czo4NjoiY3VzdG9tL0V4dGVuc2lvbi9tb2R1bGVzL0NhbGxzL0V4dC9WYXJkZWZzL0FzdGVyTGlua19PdmVycmlkZV9DYWxsc19kdXJhdGlvbl9ob3Vycy5waHAiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6Njg6IjxiYXNlcGF0aD4vY3VzdG9tL0V4dGVuc2lvbi9hcHBsaWNhdGlvbi9FeHQvSW5jbHVkZS9zZl9hc3RlcmxpbmsucGhwIjtzOjI6InRvIjtzOjU3OiJjdXN0b20vRXh0ZW5zaW9uL2FwcGxpY2F0aW9uL0V4dC9JbmNsdWRlL3NmX2FzdGVybGluay5waHAiO319czo4OiJsYW5ndWFnZSI7YTo4OntpOjA7YTozOntzOjQ6ImZyb20iO3M6NzI6IjxiYXNlcGF0aD4vY3VzdG9tL0V4dGVuc2lvbi9hcHBsaWNhdGlvbi9FeHQvTGFuZ3VhZ2UvZW5fdXMuQXN0ZXJMaW5rLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjgzOiI8YmFzZXBhdGg+L2N1c3RvbS9FeHRlbnNpb24vbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9FeHQvTGFuZ3VhZ2UvZW5fdXMuQXN0ZXJMaW5rLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6IkFkbWluaXN0cmF0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToyO2E6Mzp7czo0OiJmcm9tIjtzOjc0OiI8YmFzZXBhdGg+L2N1c3RvbS9FeHRlbnNpb24vbW9kdWxlcy9DYWxscy9FeHQvTGFuZ3VhZ2UvZW5fdXMuQXN0ZXJMaW5rLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiQ2FsbHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjM7YTozOntzOjQ6ImZyb20iO3M6NzQ6IjxiYXNlcGF0aD4vY3VzdG9tL0V4dGVuc2lvbi9tb2R1bGVzL1VzZXJzL0V4dC9MYW5ndWFnZS9lbl91cy5Bc3RlckxpbmsucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJVc2VycyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6NDthOjM6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL2FwcGxpY2F0aW9uL0V4dC9MYW5ndWFnZS9ydV9SVS5Bc3RlckxpbmsucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6ODM6IjxiYXNlcGF0aD4vY3VzdG9tL0V4dGVuc2lvbi9tb2R1bGVzL0FkbWluaXN0cmF0aW9uL0V4dC9MYW5ndWFnZS9ydV9SVS5Bc3RlckxpbmsucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNDoiQWRtaW5pc3RyYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfUlUiO31pOjY7YTozOntzOjQ6ImZyb20iO3M6NzQ6IjxiYXNlcGF0aD4vY3VzdG9tL0V4dGVuc2lvbi9tb2R1bGVzL0NhbGxzL0V4dC9MYW5ndWFnZS9ydV9SVS5Bc3RlckxpbmsucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJDYWxscyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fWk6NzthOjM6e3M6NDoiZnJvbSI7czo3NDoiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL21vZHVsZXMvVXNlcnMvRXh0L0xhbmd1YWdlL3J1X1JVLkFzdGVyTGluay5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IlVzZXJzIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fXM6MTM6ImN1c3RvbV9maWVsZHMiO2E6NTp7aTowO2E6NTp7czo0OiJuYW1lIjtzOjE1OiJhc3RlcmxpbmtfdWlkX2MiO3M6NToibGFiZWwiO3M6MTc6IkxCTF9BU1RFUkxJTktfVUlEIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7aTo2NDtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7fWk6MTthOjU6e3M6NDoibmFtZSI7czoxNToiYXN0ZXJsaW5rX2NpZF9jIjtzOjU6ImxhYmVsIjtzOjE3OiJMQkxfQVNURVJMSU5LX0NJRCI7czo0OiJ0eXBlIjtzOjU6InBob25lIjtzOjg6Im1heF9zaXplIjtpOjMyO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjt9aToyO2E6NTp7czo0OiJuYW1lIjtzOjE1OiJhc3RlcmxpbmtfZGlkX2MiO3M6NToibGFiZWwiO3M6MTc6IkxCTF9BU1RFUkxJTktfRElEIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7aTozMjtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7fWk6MzthOjY6e3M6NDoibmFtZSI7czoyNDoiYXN0ZXJsaW5rX2NhbGxfc2Vjb25kc19jIjtzOjU6ImxhYmVsIjtzOjI2OiJMQkxfQVNURVJMSU5LX0NBTExfU0VDT05EUyI7czo0OiJ0eXBlIjtzOjM6ImludCI7czo4OiJtYXhfc2l6ZSI7aToyO3M6MTM6ImRlZmF1bHRfdmFsdWUiO2k6MDtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7fWk6NDthOjU6e3M6NDoibmFtZSI7czoxNToiYXN0ZXJsaW5rX2V4dF9jIjtzOjU6ImxhYmVsIjtzOjE3OiJMQkxfQVNURVJMSU5LX0VYVCI7czo0OiJ0eXBlIjtzOjc6InZhcmNoYXIiO3M6ODoibWF4X3NpemUiO2k6NjQ7czo2OiJtb2R1bGUiO3M6NToiVXNlcnMiO319czoxMToibG9naWNfaG9va3MiO2E6MTp7aTowO2E6NTp7czo0OiJob29rIjtzOjE0OiJhZnRlcl91aV9mcmFtZSI7czoxMToiZGVzY3JpcHRpb24iO3M6MjA6ImFzdGVybGluayBqYXZhc2NyaXB0IjtzOjQ6ImZpbGUiO3M6MzU6Im1vZHVsZXMvQXN0ZXJMaW5rL0FzdGVyTGlua0hvb2sucGhwIjtzOjU6ImNsYXNzIjtzOjk6IkFzdGVyTGluayI7czo4OiJmdW5jdGlvbiI7czoxNToiaW5pdF9qYXZhc2NyaXB0Ijt9fXM6MTQ6ImFkbWluaXN0cmF0aW9uIjthOjE6e2k6MDthOjE6e3M6NDoiZnJvbSI7czo4OToiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL21vZHVsZXMvQWRtaW5pc3RyYXRpb24vRXh0L0FkbWluaXN0cmF0aW9uL2FzdGVybGlua19hZG1pbi5waHAiO319czoxMjoicG9zdF9leGVjdXRlIjthOjE6e2k6MDtzOjI3OiI8YmFzZXBhdGg+L3Bvc3RfZXhlY3V0ZS5waHAiO31zOjE0OiJwb3N0X3VuaW5zdGFsbCI7YToxOntpOjA7czoyOToiPGJhc2VwYXRoPi9wb3N0X3VuaW5zdGFsbC5waHAiO319czoxNjoidXBncmFkZV9tYW5pZmVzdCI7YToxOntzOjEzOiJ1cGdyYWRlX3BhdGhzIjthOjE6e3M6NToiMC40LjAiO2E6NDp7czoyOiJpZCI7czoxMjoic2ZfYXN0ZXJsaW5rIjtzOjQ6ImNvcHkiO2E6MTM6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo4NjoiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL2FwcGxpY2F0aW9uL0V4dC9FbnRyeVBvaW50UmVnaXN0cnkvQXN0ZXJMaW5rRW50cnlQb2ludC5waHAiO3M6MjoidG8iO3M6NzU6ImN1c3RvbS9FeHRlbnNpb24vYXBwbGljYXRpb24vRXh0L0VudHJ5UG9pbnRSZWdpc3RyeS9Bc3RlckxpbmtFbnRyeVBvaW50LnBocCI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL2FwcGxpY2F0aW9uL0V4dC9JbmNsdWRlL3NmX2FzdGVybGluay5waHAiO3M6MjoidG8iO3M6NTc6ImN1c3RvbS9FeHRlbnNpb24vYXBwbGljYXRpb24vRXh0L0luY2x1ZGUvc2ZfYXN0ZXJsaW5rLnBocCI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo0NjoiPGJhc2VwYXRoPi9tb2R1bGVzL0FzdGVyTGluay9Bc3RlckxpbmtIb29rLnBocCI7czoyOiJ0byI7czozNToibW9kdWxlcy9Bc3RlckxpbmsvQXN0ZXJMaW5rSG9vay5waHAiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6NTI6IjxiYXNlcGF0aD4vbW9kdWxlcy9Bc3RlckxpbmsvQXN0ZXJMaW5rRW50cnlQb2ludC5waHAiO3M6MjoidG8iO3M6NDE6Im1vZHVsZXMvQXN0ZXJMaW5rL0FzdGVyTGlua0VudHJ5UG9pbnQucGhwIjt9aTo0O2E6Mjp7czo0OiJmcm9tIjtzOjUwOiI8YmFzZXBhdGg+L21vZHVsZXMvQXN0ZXJMaW5rL0FzdGVyTGlua0VuZFBvaW50LnBocCI7czoyOiJ0byI7czozOToibW9kdWxlcy9Bc3RlckxpbmsvQXN0ZXJMaW5rRW5kUG9pbnQucGhwIjt9aTo1O2E6Mjp7czo0OiJmcm9tIjtzOjQzOiI8YmFzZXBhdGg+L21vZHVsZXMvQXN0ZXJMaW5rL2NvbnRyb2xsZXIucGhwIjtzOjI6InRvIjtzOjMyOiJtb2R1bGVzL0FzdGVyTGluay9jb250cm9sbGVyLnBocCI7fWk6NjthOjI6e3M6NDoiZnJvbSI7czozODoiPGJhc2VwYXRoPi9tb2R1bGVzL0FzdGVyTGluay91dGlscy5waHAiO3M6MjoidG8iO3M6Mjc6Im1vZHVsZXMvQXN0ZXJMaW5rL3V0aWxzLnBocCI7fWk6NzthOjI6e3M6NDoiZnJvbSI7czo1MjoiPGJhc2VwYXRoPi9tb2R1bGVzL0FzdGVyTGluay9sYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czoyOiJ0byI7czo0MToibW9kdWxlcy9Bc3RlckxpbmsvbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO31pOjg7YToyOntzOjQ6ImZyb20iO3M6NTI6IjxiYXNlcGF0aD4vbW9kdWxlcy9Bc3RlckxpbmsvbGFuZ3VhZ2UvcnVfUlUubGFuZy5waHAiO3M6MjoidG8iO3M6NDE6Im1vZHVsZXMvQXN0ZXJMaW5rL2xhbmd1YWdlL3J1X1JVLmxhbmcucGhwIjt9aTo5O2E6Mjp7czo0OiJmcm9tIjtzOjUwOiI8YmFzZXBhdGg+L21vZHVsZXMvQXN0ZXJMaW5rL3ZpZXdzL3ZpZXcuY29uZmlnLnBocCI7czoyOiJ0byI7czozOToibW9kdWxlcy9Bc3Rlckxpbmsvdmlld3Mvdmlldy5jb25maWcucGhwIjt9aToxMDthOjI6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9tb2R1bGVzL0FzdGVyTGluay90cGxzL2NvbmZpZy50cGwiO3M6MjoidG8iO3M6MzM6Im1vZHVsZXMvQXN0ZXJMaW5rL3RwbHMvY29uZmlnLnRwbCI7fWk6MTE7YToyOntzOjQ6ImZyb20iO3M6NTI6IjxiYXNlcGF0aD4vbW9kdWxlcy9Bc3RlckxpbmsvamF2YXNjcmlwdC9hc3RlcmxpbmsuanMiO3M6MjoidG8iO3M6NDE6Im1vZHVsZXMvQXN0ZXJMaW5rL2phdmFzY3JpcHQvYXN0ZXJsaW5rLmpzIjt9aToxMjthOjI6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9tb2R1bGVzL0FzdGVyTGluay9qYXZhc2NyaXB0L2FzdGVybGluay53b3JrZXIuanMiO3M6MjoidG8iO3M6NDg6Im1vZHVsZXMvQXN0ZXJMaW5rL2phdmFzY3JpcHQvYXN0ZXJsaW5rLndvcmtlci5qcyI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL2FwcGxpY2F0aW9uL0V4dC9MYW5ndWFnZS9lbl91cy5Bc3RlckxpbmsucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NzI6IjxiYXNlcGF0aD4vY3VzdG9tL0V4dGVuc2lvbi9hcHBsaWNhdGlvbi9FeHQvTGFuZ3VhZ2UvcnVfUlUuQXN0ZXJMaW5rLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9fXM6MTI6InBvc3RfZXhlY3V0ZSI7YToxOntpOjA7czozODoiPGJhc2VwYXRoPi9wb3N0X2V4ZWN1dGVfMDQwX3RvXzA1MC5waHAiO319fX19', '2024-02-16 03:57:41', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT 1,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `external_auth_only` tinyint(1) DEFAULT 0,
  `receive_notifications` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT 0,
  `show_on_employees` tinyint(1) DEFAULT 1,
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`, `factor_auth`, `factor_auth_interface`) VALUES
('1', 'superadmin', '$2y$10$tI3Z6JkEMZEbZT0nF6Yl1.y22yD0M.kl17FJmjmNvRObZeBhEHecG', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2024-02-08 07:46:22', '2024-02-08 07:46:22', '1', '1', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users_cstm`
--

CREATE TABLE `users_cstm` (
  `id_c` char(36) NOT NULL,
  `asterisk_outbound_c` tinyint(1) DEFAULT 0,
  `asterisk_inbound_c` tinyint(1) DEFAULT 0,
  `asterisk_ext_c` varchar(45) DEFAULT NULL,
  `phone_extension_c` varchar(10) DEFAULT NULL,
  `asterlink_ext_c` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `keyhash` varchar(255) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `signature_html` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('11462d6e-1b0f-5e5d-8b83-65c5ba0f8eff', 'Home2_NOTE', 0, '2024-02-09 05:40:40', '2024-02-09 05:40:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('12d622f9-f3ac-c27e-86b1-65c48645764a', 'Home2_LEAD_529d128c-fa51-ebac-76f5-65c4867d007c', 0, '2024-02-08 07:46:55', '2024-08-09 08:11:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2a480ed2-6970-e07e-8c2e-65c48685a484', 'Home2_CALL', 0, '2024-02-08 07:46:49', '2024-08-09 08:11:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3e110ef8-3f69-a01e-0ede-65c486a78830', 'Home2_MEETING', 0, '2024-02-08 07:46:49', '2024-08-09 08:11:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('53bd0a7f-e017-684a-485e-65c48600f0ea', 'Home2_OPPORTUNITY', 0, '2024-02-08 07:46:49', '2024-08-09 08:11:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('58212d97-1670-0f2f-b8dc-65c98fc405b0', 'Users', 0, '2024-02-12 03:26:09', '2024-02-12 03:26:09', '1', 'YTowOnt9'),
('5a75c165-3df7-9c1e-a3bf-65c5a3577b09', 'Employees2_EMPLOYEE', 0, '2024-02-09 04:02:30', '2024-02-09 04:02:30', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5bed861e-e067-04cf-6608-65c5be767716', 'ETag', 0, '2024-02-09 05:54:37', '2024-02-16 03:57:41', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mzt9'),
('68380a6d-0545-382e-2614-65c4863e8bae', 'Home2_ACCOUNT', 0, '2024-02-08 07:46:49', '2024-08-09 08:11:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('719284f7-b2fe-4c88-e8ff-65c488aeb950', 'OAuthKeys2_OAUTHKEY', 0, '2024-02-08 07:54:59', '2024-02-08 07:54:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('736d8116-b5e6-bcc6-b243-65c5b2c79f08', 'ExternalOAuthConnection2_EXTERNALOAUTHCONNECTION', 0, '2024-02-09 05:06:56', '2024-02-09 05:06:56', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('749232a3-9c80-113a-2073-65c5b29d467a', 'SurveyResponses2_SURVEYRESPONSES', 0, '2024-02-09 05:05:51', '2024-02-09 05:05:51', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7a5a0307-2a9e-7bd2-97b9-65c486b68bff', 'Home2_LEAD', 0, '2024-02-08 07:46:49', '2024-08-09 08:11:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7b9a1383-1401-a2ef-4297-65c4867d19b7', 'global', 0, '2024-02-08 07:46:22', '2024-08-09 08:11:05', '1', 'YTozNTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6Ijc4NjIxNjk3LWQ2ZWEtM2Q0Yi00MDBmLTY1YzQ4NjJiZGJhOCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjEiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MjoiMjUiO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mzoib2ZmIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czoxOiIxIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MTtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTA6InVzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjY6ItCS0YHQtSI7czoxMDoiT0F1dGhLZXlzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE0OiJPQXV0aDJDbGllbnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEzOiJPQXV0aDJUb2tlbnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkVtcGxveWVlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJVc2Vyc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo4OiJTdXJ2ZXlzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE2OiJTdXJ2ZXlSZXNwb25zZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoyNDoiRXh0ZXJuYWxPQXV0aENvbm5lY3Rpb25RIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiQ2FsbHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTI6Imdsb2JhbFNlYXJjaCI7YTo5OntzOjg6IkFjY291bnRzIjtzOjc6IkFjY291bnQiO3M6NToiQ2FsbHMiO3M6NDoiQ2FsbCI7czo1OiJDYXNlcyI7czo1OiJhQ2FzZSI7czo4OiJDb250YWN0cyI7czo3OiJDb250YWN0IjtzOjk6IkRvY3VtZW50cyI7czo4OiJEb2N1bWVudCI7czo1OiJMZWFkcyI7czo0OiJMZWFkIjtzOjg6Ik1lZXRpbmdzIjtzOjc6Ik1lZXRpbmciO3M6NToiTm90ZXMiO3M6NDoiTm90ZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiT3Bwb3J0dW5pdHkiO319'),
('7c989594-b4aa-bc1e-4f96-65c486662e1a', 'GoogleSync', 0, '2024-02-08 07:46:22', '2024-08-09 08:11:05', '1', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('7cf2960d-dec2-d98a-4349-65c5ba26f1b5', 'Calls2_CALL', 0, '2024-02-09 05:39:35', '2024-02-09 05:39:35', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8553e65d-9b53-9177-8749-65c989c90e8a', 'Assistant', 0, '2024-02-12 03:01:07', '2024-02-12 03:26:09', '1', 'YTowOnt9'),
('8a43c972-b484-54c7-3aea-65c9894c6b67', 'Dashboard', 0, '2024-02-12 03:01:07', '2024-08-09 08:11:05', '1', 'YTowOnt9'),
('8cb50429-b363-1419-c1ec-65c4865d3839', 'Home2_SUGARFEED', 0, '2024-02-08 07:46:49', '2024-08-09 08:11:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8db65fda-1532-7ec5-773b-65c59ea4a730', 'OAuth2Tokens2_OAUTH2TOKENS', 0, '2024-02-09 03:40:22', '2024-02-09 03:40:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('91361e2d-bffe-0727-2b1a-65c59edc38e2', 'OAuth2Clients2_OAUTH2CLIENTS', 0, '2024-02-09 03:39:07', '2024-02-09 03:39:07', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('96ab22e5-005f-5cb6-9edd-65c98902fb31', 'Emails', 0, '2024-02-12 03:01:07', '2024-08-09 08:11:05', '1', 'YTowOnt9'),
('c08bfbc9-f554-94aa-44bb-65c5a59a5bed', 'Surveys2_SURVEYS', 0, '2024-02-09 04:07:58', '2024-02-09 04:07:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cf8a7754-a1ab-d228-2291-65c5a3a1b001', 'Users2_USER', 0, '2024-02-09 04:03:04', '2024-02-12 03:26:09', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d02a08d6-f137-36a6-9ba4-65c5ba3126f9', 'Home2_CASE', 0, '2024-02-09 05:40:40', '2024-02-09 05:40:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e664031d-e963-7bf6-ee21-65c5ba8ae1b1', 'Home2_CONTACT', 0, '2024-02-09 05:40:40', '2024-02-09 05:40:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ef50098d-38b5-4eb6-0339-65c486b04daf', 'Home', 0, '2024-02-08 07:46:49', '2024-08-09 08:11:05', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjUxNGFlYzIxLWY2Y2QtNmNhOC0wODFkLTY1YzQ4NmFkMDI1MSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjUxOWM0YWU0LTVlN2YtZWIwMy04ZjgwLTY1YzQ4NmJhZDdkZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjUxZjFiZjIwLWQ2ZTQtMGM5My05YmVkLTY1YzQ4NjE5ZjdjNyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjUyMWM3YzlmLTYxNjItZDU1Zi1lZGM1LTY1YzQ4NmE3NGJhYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNTI2MDAxOGYtY2U4OC0wOWRlLTQ3OTQtNjVjNDg2NTQ0MzVhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNTI5ZDEyOGMtZmE1MS1lYmFjLTc2ZjUtNjVjNDg2N2QwMDdjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI1MTljNGFlNC01ZTdmLWViMDMtOGY4MC02NWM0ODZiYWQ3ZGUiO2k6MTtzOjM2OiI1MWYxYmYyMC1kNmU0LTBjOTMtOWJlZC02NWM0ODYxOWY3YzciO2k6MjtzOjM2OiI1MjFjN2M5Zi02MTYyLWQ1NWYtZWRjNS02NWM0ODZhNzRiYWMiO2k6MztzOjM2OiI1MjYwMDE4Zi1jZTg4LTA5ZGUtNDc5NC02NWM0ODY1NDQzNWEiO2k6NDtzOjM2OiI1MjlkMTI4Yy1mYTUxLWViYWMtNzZmNS02NWM0ODY3ZDAwN2MiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjUxNGFlYzIxLWY2Y2QtNmNhOC0wODFkLTY1YzQ4NmFkMDI1MSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('fa8f0d81-b65e-f003-ea58-65c5baae792e', 'Home2_DOCUMENT', 0, '2024-02-09 05:40:40', '2024-02-09 05:40:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Структура таблицы `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `vcals`
--

INSERT INTO `vcals` (`id`, `deleted`, `date_entered`, `date_modified`, `user_id`, `type`, `source`, `content`) VALUES
('cde23105-ea6f-58d9-b4df-65c9aa2d2d46', 0, '2024-02-12 05:21:31', '2024-02-12 05:24:32', '1', 'vfb', 'sugar', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=Administrator:VFREEBUSY\r\nDTSTART:2024-02-10 23:00:00\r\nDTEND:2024-04-10 22:00:00\r\nFREEBUSY:20240212T053000Z/20240212T054500Z\r\nX-FREEBUSY-ID:bc529116-c556-ab68-cdad-65c9aa12b9af\r\nX-FREEBUSY-TYPE:Call\r\nDTSTAMP:2024-02-12 05:24:32\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Индексы таблицы `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Индексы таблицы `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Индексы таблицы `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Индексы таблицы `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Индексы таблицы `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Индексы таблицы `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Индексы таблицы `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Индексы таблицы `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Индексы таблицы `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Индексы таблицы `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Индексы таблицы `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Индексы таблицы `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Индексы таблицы `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Индексы таблицы `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Индексы таблицы `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Индексы таблицы `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Индексы таблицы `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Индексы таблицы `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Индексы таблицы `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Индексы таблицы `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Индексы таблицы `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Индексы таблицы `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Индексы таблицы `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Индексы таблицы `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Индексы таблицы `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Индексы таблицы `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Индексы таблицы `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Индексы таблицы `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Индексы таблицы `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Индексы таблицы `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Индексы таблицы `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Индексы таблицы `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Индексы таблицы `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Индексы таблицы `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Индексы таблицы `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Индексы таблицы `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Индексы таблицы `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Индексы таблицы `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Индексы таблицы `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Индексы таблицы `asterisk_log`
--
ALTER TABLE `asterisk_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_extension` (`user_extension`),
  ADD KEY `call_record_id` (`call_record_id`),
  ADD KEY `uistate` (`uistate`),
  ADD KEY `timestamp_call` (`timestamp_call`);

--
-- Индексы таблицы `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Индексы таблицы `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Индексы таблицы `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Индексы таблицы `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Индексы таблицы `calls_cstm`
--
ALTER TABLE `calls_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Индексы таблицы `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Индексы таблицы `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Индексы таблицы `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`),
  ADD KEY `idx_survey_id` (`survey_id`);

--
-- Индексы таблицы `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Индексы таблицы `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Индексы таблицы `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Индексы таблицы `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Индексы таблицы `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Индексы таблицы `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Индексы таблицы `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Индексы таблицы `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Индексы таблицы `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Индексы таблицы `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Индексы таблицы `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Индексы таблицы `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Индексы таблицы `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Индексы таблицы `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Индексы таблицы `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Индексы таблицы `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Индексы таблицы `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Индексы таблицы `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Индексы таблицы `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Индексы таблицы `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Индексы таблицы `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Индексы таблицы `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Индексы таблицы `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Индексы таблицы `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`),
  ADD KEY `idx_email_uid` (`uid`);

--
-- Индексы таблицы `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Индексы таблицы `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Индексы таблицы `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Индексы таблицы `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Индексы таблицы `email_addresses_audit`
--
ALTER TABLE `email_addresses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_addresses_parent_id` (`parent_id`);

--
-- Индексы таблицы `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Индексы таблицы `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Индексы таблицы `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Индексы таблицы `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Индексы таблицы `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Индексы таблицы `external_oauth_connections`
--
ALTER TABLE `external_oauth_connections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `external_oauth_providers`
--
ALTER TABLE `external_oauth_providers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Индексы таблицы `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Индексы таблицы `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Индексы таблицы `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Индексы таблицы `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Индексы таблицы `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Индексы таблицы `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Индексы таблицы `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Индексы таблицы `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Индексы таблицы `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Индексы таблицы `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Индексы таблицы `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Индексы таблицы `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Индексы таблицы `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Индексы таблицы `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Индексы таблицы `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Индексы таблицы `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Индексы таблицы `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Индексы таблицы `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Индексы таблицы `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Индексы таблицы `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Индексы таблицы `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Индексы таблицы `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Индексы таблицы `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Индексы таблицы `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Индексы таблицы `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Индексы таблицы `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Индексы таблицы `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Индексы таблицы `oauth2clients`
--
ALTER TABLE `oauth2clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oauth2tokens`
--
ALTER TABLE `oauth2tokens`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Индексы таблицы `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Индексы таблицы `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Индексы таблицы `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Индексы таблицы `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Индексы таблицы `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Индексы таблицы `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Индексы таблицы `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Индексы таблицы `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Индексы таблицы `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Индексы таблицы `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Индексы таблицы `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Индексы таблицы `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Индексы таблицы `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Индексы таблицы `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Индексы таблицы `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Индексы таблицы `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Индексы таблицы `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Индексы таблицы `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Индексы таблицы `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Индексы таблицы `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Индексы таблицы `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Индексы таблицы `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Индексы таблицы `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Индексы таблицы `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Индексы таблицы `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Индексы таблицы `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Индексы таблицы `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Индексы таблицы `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Индексы таблицы `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Индексы таблицы `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Индексы таблицы `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Индексы таблицы `surveyquestionoptions`
--
ALTER TABLE `surveyquestionoptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `surveyquestionoptions_audit`
--
ALTER TABLE `surveyquestionoptions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionoptions_parent_id` (`parent_id`);

--
-- Индексы таблицы `surveyquestionoptions_surveyquestionresponses`
--
ALTER TABLE `surveyquestionoptions_surveyquestionresponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`);

--
-- Индексы таблицы `surveyquestionresponses`
--
ALTER TABLE `surveyquestionresponses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `surveyquestionresponses_audit`
--
ALTER TABLE `surveyquestionresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionresponses_parent_id` (`parent_id`);

--
-- Индексы таблицы `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `surveyquestions_audit`
--
ALTER TABLE `surveyquestions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestions_parent_id` (`parent_id`);

--
-- Индексы таблицы `surveyresponses`
--
ALTER TABLE `surveyresponses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `surveyresponses_audit`
--
ALTER TABLE `surveyresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyresponses_parent_id` (`parent_id`);

--
-- Индексы таблицы `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `surveys_audit`
--
ALTER TABLE `surveys_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveys_parent_id` (`parent_id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Индексы таблицы `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Индексы таблицы `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`);

--
-- Индексы таблицы `users_cstm`
--
ALTER TABLE `users_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Индексы таблицы `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Индексы таблицы `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Индексы таблицы `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Индексы таблицы `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Индексы таблицы `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Индексы таблицы `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `asterisk_log`
--
ALTER TABLE `asterisk_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT для таблицы `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
