-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: django
-- ------------------------------------------------------
-- Server version	5.6.27-yunmm-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `django`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `django`;

--
-- Table structure for table `alarm`
--

DROP TABLE IF EXISTS `alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alarm` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) NOT NULL DEFAULT '0',
  `tags` varchar(50) DEFAULT NULL,
  `host` varchar(30) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `db_type` varchar(30) DEFAULT NULL,
  `alarm_item` varchar(50) DEFAULT NULL,
  `alarm_value` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `send_mail` tinyint(2) DEFAULT NULL,
  `send_mail_to_list` varchar(255) DEFAULT NULL,
  `send_sms` tinyint(2) DEFAULT NULL,
  `send_sms_to_list` varchar(255) DEFAULT NULL,
  `send_wx` tinyint(2) DEFAULT NULL,
  `send_wx_to_list` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1397 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarm`
--

LOCK TABLES `alarm` WRITE;
/*!40000 ALTER TABLE `alarm` DISABLE KEYS */;
/*!40000 ALTER TABLE `alarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alarm_history`
--

DROP TABLE IF EXISTS `alarm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alarm_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) NOT NULL DEFAULT '0',
  `tags` varchar(50) DEFAULT NULL,
  `host` varchar(30) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `db_type` varchar(30) DEFAULT NULL,
  `alarm_item` varchar(50) DEFAULT NULL,
  `alarm_value` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `send_mail` tinyint(2) DEFAULT NULL,
  `send_mail_to_list` varchar(255) DEFAULT NULL,
  `send_sms` tinyint(2) DEFAULT NULL,
  `send_sms_to_list` varchar(255) DEFAULT NULL,
  `send_mail_status` tinyint(2) NOT NULL DEFAULT '0',
  `send_sms_status` tinyint(2) NOT NULL DEFAULT '0',
  `send_wx` tinyint(2) DEFAULT NULL,
  `send_wx_to_list` varchar(255) DEFAULT NULL,
  `send_wx_status` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_server_id` (`server_id`),
  KEY `idx_host` (`host`),
  KEY `idx_alarm_type` (`alarm_item`),
  KEY `idx_level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=1337 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarm_history`
--

LOCK TABLES `alarm_history` WRITE;
/*!40000 ALTER TABLE `alarm_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `alarm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alarm_temp`
--

DROP TABLE IF EXISTS `alarm_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alarm_temp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) NOT NULL DEFAULT '0',
  `ip` varchar(50) DEFAULT NULL,
  `db_type` varchar(30) DEFAULT NULL,
  `alarm_item` varchar(50) DEFAULT NULL,
  `alarm_type` varchar(30) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1356 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarm_temp`
--

LOCK TABLES `alarm_temp` WRITE;
/*!40000 ALTER TABLE `alarm_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `alarm_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_9af0b65a` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_senior`
--

DROP TABLE IF EXISTS `auto_senior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_senior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(100) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `dbname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_senior`
--

LOCK TABLES `auto_senior` WRITE;
/*!40000 ALTER TABLE `auto_senior` DISABLE KEYS */;
INSERT INTO `auto_senior` VALUES (1,'127.0.0.1','localhost','root','root','django');
/*!40000 ALTER TABLE `auto_senior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(30) DEFAULT '0.0.0.0',
  `host_name` varchar(50) DEFAULT '',
  `file_size` bigint(31) NOT NULL DEFAULT '0' COMMENT '备份大小',
  `backup_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '1:表示成功，0：表示失败',
  `start_time` timestamp NOT NULL DEFAULT '1970-12-31 16:00:00',
  `database_name` varchar(20) NOT NULL DEFAULT '',
  `frequency_name` varchar(20) NOT NULL DEFAULT 'DAILY',
  `end_time` timestamp NOT NULL DEFAULT '1970-12-31 16:00:00',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_server` (`host_name`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `binlog_dml`
--

DROP TABLE IF EXISTS `binlog_dml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binlog_dml` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(50) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `tags` varchar(50) DEFAULT NULL,
  `binlog_name` varchar(100) DEFAULT NULL,
  `binlog_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binlog_dml`
--

LOCK TABLES `binlog_dml` WRITE;
/*!40000 ALTER TABLE `binlog_dml` DISABLE KEYS */;
/*!40000 ALTER TABLE `binlog_dml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_user`
--

DROP TABLE IF EXISTS `blog_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_user`
--

LOCK TABLES `blog_user` WRITE;
/*!40000 ALTER TABLE `blog_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificates` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_number` varchar(32) NOT NULL DEFAULT '',
  `id_card` varchar(120) NOT NULL DEFAULT '',
  `real_name` varchar(16) DEFAULT '',
  `create_time` bigint(20) unsigned NOT NULL DEFAULT '1',
  `update_time` bigint(20) unsigned NOT NULL DEFAULT '1',
  `type` smallint(1) DEFAULT '1',
  `real_user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `idx_certificates_01` (`id_number`),
  KEY `idx_certificates_02` (`real_user_id`),
  KEY `idx_type` (`type`,`id_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates_display`
--

DROP TABLE IF EXISTS `certificates_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificates_display` (
  `province` varchar(8) DEFAULT NULL,
  `total` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates_display`
--

LOCK TABLES `certificates_display` WRITE;
/*!40000 ALTER TABLE `certificates_display` DISABLE KEYS */;
INSERT INTO `certificates_display` VALUES ('sh',2209),('yn',35635),('nmg',19882),('bj',932),('jl',23125),('sc',84894),('tj',4492),('nx',22488),('ah',289528),('sd',222484),('sx',74814),('gd',17212),('gx',51729),('xj',15551),('js',239371),('jx',82861),('hb',121665),('hn',272295),('zj',37235),('hn',1798),('hb',86469),('hn',58237),('gs',34881),('fj',21644),('xz',163),('gz',22456),('ln',35114),('cq',9162),('sx',43299),('qh',5188),('hlj',37853);
/*!40000 ALTER TABLE `certificates_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `column_change`
--

DROP TABLE IF EXISTS `column_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `column_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host_ip` varchar(60) NOT NULL,
  `table_schema` varchar(60) NOT NULL,
  `table_name` varchar(60) NOT NULL,
  `column_name` varchar(60) NOT NULL,
  `ordinal_position` varchar(11) NOT NULL,
  `is_nullable` varchar(6) NOT NULL,
  `column_type` varchar(60) NOT NULL,
  `data_type` varchar(60) NOT NULL,
  `column_length` varchar(60) NOT NULL,
  `character_set_name` varchar(60) DEFAULT NULL,
  `column_key` varchar(60) DEFAULT NULL,
  `extra` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_table_host` (`table_name`,`host_ip`),
  KEY `idx_column_change` (`host_ip`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `column_change`
--

LOCK TABLES `column_change` WRITE;
/*!40000 ALTER TABLE `column_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `column_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `column_change_history`
--

DROP TABLE IF EXISTS `column_change_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `column_change_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host_ip` varchar(60) NOT NULL,
  `table_schema` varchar(60) NOT NULL,
  `table_name` varchar(60) NOT NULL,
  `column_name` varchar(60) NOT NULL,
  `ordinal_position` varchar(11) NOT NULL,
  `is_nullable` varchar(6) NOT NULL,
  `column_type` varchar(60) NOT NULL,
  `data_type` varchar(60) NOT NULL,
  `column_length` varchar(60) NOT NULL,
  `character_set_name` varchar(60) DEFAULT NULL,
  `column_key` varchar(60) DEFAULT NULL,
  `extra` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_table_host` (`table_name`,`host_ip`),
  KEY `idx_column` (`host_ip`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `column_change_history`
--

LOCK TABLES `column_change_history` WRITE;
/*!40000 ALTER TABLE `column_change_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `column_change_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_server_info`
--

DROP TABLE IF EXISTS `db_server_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_server_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL,
  `host` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `tag` varchar(30) DEFAULT NULL,
  `edite` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_server_info`
--

LOCK TABLES `db_server_info` WRITE;
/*!40000 ALTER TABLE `db_server_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_server_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_servers_mongodb`
--

DROP TABLE IF EXISTS `db_servers_mongodb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_servers_mongodb` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `port` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monitor` tinyint(2) DEFAULT '1',
  `send_mail` tinyint(2) DEFAULT '1',
  `send_mail_to_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_sms` tinyint(2) DEFAULT '0',
  `send_sms_to_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alarm_connections_current` int(10) NOT NULL DEFAULT '1',
  `alarm_active_clients` int(10) NOT NULL DEFAULT '1',
  `alarm_current_queue` int(10) NOT NULL DEFAULT '1',
  `threshold_warning_connections_current` int(10) NOT NULL DEFAULT '1000',
  `threshold_warning_active_clients` smallint(4) NOT NULL DEFAULT '10',
  `threshold_warning_current_queue` smallint(4) NOT NULL DEFAULT '5',
  `threshold_critical_connections_current` int(10) NOT NULL DEFAULT '3000',
  `threshold_critical_active_clients` smallint(4) NOT NULL DEFAULT '30',
  `threshold_critical_current_queue` smallint(4) NOT NULL DEFAULT '15',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` smallint(4) NOT NULL DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_host` (`host`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_servers_mongodb`
--

LOCK TABLES `db_servers_mongodb` WRITE;
/*!40000 ALTER TABLE `db_servers_mongodb` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_servers_mongodb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_servers_mysql`
--

DROP TABLE IF EXISTS `db_servers_mysql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_servers_mysql` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host` varchar(30) NOT NULL,
  `port` varchar(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `tags` varchar(50) DEFAULT NULL,
  `monitor` tinyint(2) DEFAULT '1',
  `send_mail` tinyint(2) DEFAULT '1',
  `send_mail_to_list` varchar(255) DEFAULT NULL,
  `send_sms` tinyint(2) DEFAULT '0',
  `send_sms_to_list` varchar(255) DEFAULT NULL,
  `send_wx` tinyint(2) DEFAULT '0',
  `send_wx_to_list` varchar(255) DEFAULT NULL,
  `send_slowquery_to_list` varchar(255) DEFAULT NULL,
  `alarm_threads_connected` tinyint(2) DEFAULT '1',
  `alarm_threads_running` tinyint(2) DEFAULT '1',
  `alarm_threads_waits` tinyint(2) DEFAULT '1',
  `alarm_repl_status` tinyint(2) DEFAULT '1',
  `alarm_repl_delay` tinyint(2) DEFAULT '1',
  `threshold_warning_threads_connected` int(10) DEFAULT '1000',
  `threshold_warning_threads_running` int(10) DEFAULT '10',
  `threshold_warning_threads_waits` int(10) DEFAULT '5',
  `threshold_warning_repl_delay` int(10) DEFAULT '60',
  `threshold_critical_threads_connected` int(10) DEFAULT '3000',
  `threshold_critical_threads_running` int(10) DEFAULT '30',
  `threshold_critical_threads_waits` int(10) DEFAULT '15',
  `threshold_critical_repl_delay` int(10) DEFAULT '600',
  `slow_query` tinyint(2) NOT NULL DEFAULT '0',
  `binlog_auto_purge` tinyint(1) NOT NULL DEFAULT '0',
  `binlog_store_days` smallint(4) NOT NULL DEFAULT '30',
  `bigtable_monitor` tinyint(1) NOT NULL DEFAULT '0',
  `bigtable_size` int(10) NOT NULL DEFAULT '50',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` smallint(4) NOT NULL DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `repl_channel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_host` (`host`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_servers_mysql`
--

LOCK TABLES `db_servers_mysql` WRITE;
/*!40000 ALTER TABLE `db_servers_mysql` DISABLE KEYS */;
INSERT INTO `db_servers_mysql` VALUES (344,'127.0.0.1','3306','root','root','localhos',1,1,'',0,'',0,'','',1,1,1,1,1,1000,10,5,60,3000,30,15,600,0,0,30,0,50,0,0,'2016-12-15 00:39:44','0');
/*!40000 ALTER TABLE `db_servers_mysql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_servers_oracle`
--

DROP TABLE IF EXISTS `db_servers_oracle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_servers_oracle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dsn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monitor` tinyint(2) DEFAULT '1',
  `send_mail` tinyint(2) DEFAULT '0',
  `send_mail_to_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_sms` tinyint(2) DEFAULT '0',
  `send_sms_to_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alarm_session_total` tinyint(2) NOT NULL DEFAULT '1',
  `alarm_session_actives` tinyint(2) NOT NULL DEFAULT '1',
  `alarm_session_waits` tinyint(2) NOT NULL DEFAULT '1',
  `alarm_tablespace` tinyint(2) NOT NULL DEFAULT '1',
  `threshold_warning_session_total` smallint(4) NOT NULL DEFAULT '1000',
  `threshold_warning_session_actives` smallint(4) NOT NULL DEFAULT '10',
  `threshold_warning_session_waits` tinyint(4) NOT NULL DEFAULT '5',
  `threshold_warning_tablespace` smallint(10) NOT NULL DEFAULT '85',
  `threshold_critical_session_total` smallint(4) NOT NULL DEFAULT '3000',
  `threshold_critical_session_actives` smallint(4) NOT NULL DEFAULT '30',
  `threshold_critical_session_waits` smallint(4) NOT NULL DEFAULT '15',
  `threshold_critical_tablespace` smallint(4) NOT NULL DEFAULT '95',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` smallint(4) NOT NULL DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_host` (`host`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_servers_oracle`
--

LOCK TABLES `db_servers_oracle` WRITE;
/*!40000 ALTER TABLE `db_servers_oracle` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_servers_oracle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_servers_os`
--

DROP TABLE IF EXISTS `db_servers_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_servers_os` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host` varchar(30) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `tags` varchar(30) DEFAULT NULL,
  `monitor` tinyint(2) DEFAULT '0',
  `send_mail` tinyint(2) DEFAULT '0',
  `send_mail_to_list` varchar(255) DEFAULT NULL,
  `send_sms` tinyint(2) DEFAULT '0',
  `send_sms_to_list` varchar(255) DEFAULT NULL,
  `alarm_os_process` tinyint(1) NOT NULL DEFAULT '1',
  `alarm_os_load` tinyint(1) NOT NULL DEFAULT '1',
  `alarm_os_cpu` tinyint(1) NOT NULL DEFAULT '1',
  `alarm_os_network` tinyint(1) NOT NULL DEFAULT '1',
  `alarm_os_disk` tinyint(1) NOT NULL DEFAULT '1',
  `alarm_os_memory` tinyint(1) NOT NULL DEFAULT '1',
  `threshold_warning_os_process` int(10) NOT NULL DEFAULT '300',
  `threshold_warning_os_load` int(10) NOT NULL DEFAULT '3',
  `threshold_warning_os_cpu` int(10) NOT NULL DEFAULT '80',
  `threshold_warning_os_network` int(10) NOT NULL DEFAULT '2',
  `threshold_warning_os_disk` int(10) NOT NULL DEFAULT '75',
  `threshold_warning_os_memory` int(10) NOT NULL DEFAULT '85',
  `threshold_critical_os_process` int(10) NOT NULL DEFAULT '500',
  `threshold_critical_os_load` int(10) NOT NULL DEFAULT '10',
  `threshold_critical_os_cpu` int(10) NOT NULL DEFAULT '40',
  `threshold_critical_os_network` int(10) NOT NULL DEFAULT '10',
  `threshold_critical_os_disk` int(10) NOT NULL DEFAULT '90',
  `threshold_critical_os_memory` tinyint(10) NOT NULL DEFAULT '95',
  `filter_os_disk` varchar(100) DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` smallint(4) NOT NULL DEFAULT '0',
  `remark` varchar(1000) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_host` (`host`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_servers_os`
--

LOCK TABLES `db_servers_os` WRITE;
/*!40000 ALTER TABLE `db_servers_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_servers_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_servers_redis`
--

DROP TABLE IF EXISTS `db_servers_redis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_servers_redis` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `port` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monitor` tinyint(2) DEFAULT '1',
  `send_mail` tinyint(2) DEFAULT '1',
  `send_mail_to_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_sms` tinyint(2) DEFAULT '0',
  `send_sms_to_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alarm_connected_clients` tinyint(2) NOT NULL DEFAULT '1',
  `alarm_command_processed` tinyint(2) NOT NULL DEFAULT '1',
  `alarm_blocked_clients` tinyint(2) NOT NULL DEFAULT '1',
  `threshold_warning_connected_clients` int(10) NOT NULL DEFAULT '10000',
  `threshold_warning_command_processed` int(10) NOT NULL DEFAULT '10',
  `threshold_warning_blocked_clients` smallint(4) NOT NULL DEFAULT '5',
  `threshold_critical_connected_clients` int(10) NOT NULL DEFAULT '10000',
  `threshold_critical_command_processed` int(4) NOT NULL DEFAULT '10000',
  `threshold_critical_blocked_clients` smallint(4) NOT NULL DEFAULT '15',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` smallint(4) NOT NULL DEFAULT '0',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_host` (`host`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_servers_redis`
--

LOCK TABLES `db_servers_redis` WRITE;
/*!40000 ALTER TABLE `db_servers_redis` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_servers_redis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_status`
--

DROP TABLE IF EXISTS `db_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) NOT NULL DEFAULT '0',
  `host` varchar(30) NOT NULL DEFAULT '',
  `port` varchar(10) NOT NULL DEFAULT '',
  `db_type` varchar(10) NOT NULL DEFAULT '',
  `db_type_sort` tinyint(2) NOT NULL DEFAULT '0',
  `tags` varchar(50) NOT NULL DEFAULT '-1',
  `role` varchar(30) NOT NULL DEFAULT '-1',
  `version` varchar(30) NOT NULL DEFAULT '-1',
  `connect` tinyint(2) NOT NULL DEFAULT '-1',
  `connect_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `sessions` tinyint(2) NOT NULL DEFAULT '-1',
  `sessions_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `actives` tinyint(2) NOT NULL DEFAULT '-1',
  `actives_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `waits` tinyint(2) NOT NULL DEFAULT '-1',
  `waits_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `repl` tinyint(2) NOT NULL DEFAULT '-1',
  `repl_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `repl_delay` tinyint(2) NOT NULL DEFAULT '-1',
  `repl_delay_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `tablespace` tinyint(2) NOT NULL DEFAULT '-1',
  `tablespace_tips` varchar(500) NOT NULL DEFAULT '-1',
  `snmp` tinyint(2) NOT NULL DEFAULT '-1',
  `snmp_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `process` tinyint(2) NOT NULL DEFAULT '-1',
  `process_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `load_1` tinyint(2) NOT NULL DEFAULT '-1',
  `load_1_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `cpu` tinyint(2) NOT NULL DEFAULT '-1',
  `cpu_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `network` tinyint(2) NOT NULL DEFAULT '-1',
  `network_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `memory` tinyint(2) NOT NULL DEFAULT '-1',
  `memory_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `disk` tinyint(2) NOT NULL DEFAULT '-1',
  `disk_tips` varchar(500) NOT NULL DEFAULT 'no_data',
  `uptime_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_status`
--

LOCK TABLES `db_status` WRITE;
/*!40000 ALTER TABLE `db_status` DISABLE KEYS */;
INSERT INTO `db_status` VALUES (22,344,'127.0.0.1','3306','mysql',1,'localhos','m','5.6.27-yunmm-log',-1,'no_data',-1,'no_data',-1,'no_data',-1,'no_data',-1,'no_data',-1,'no_data',-1,'-1',-1,'no_data',-1,'no_data',-1,'no_data',-1,'no_data',-1,'no_data',-1,'no_data',-1,'no_data','2016-12-15 08:42:39');
/*!40000 ALTER TABLE `db_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbserver`
--

DROP TABLE IF EXISTS `dbserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbserver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL,
  `host` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `tag` varchar(40) NOT NULL,
  `edite` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbserver`
--

LOCK TABLES `dbserver` WRITE;
/*!40000 ALTER TABLE `dbserver` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-12-15 07:48:29'),(2,'auth','0001_initial','2016-12-15 07:48:35'),(3,'admin','0001_initial','2016-12-15 07:48:37'),(4,'contenttypes','0002_remove_content_type_name','2016-12-15 07:48:38'),(5,'auth','0002_alter_permission_name_max_length','2016-12-15 07:48:38'),(6,'auth','0003_alter_user_email_max_length','2016-12-15 07:48:39'),(7,'auth','0004_alter_user_username_opts','2016-12-15 07:48:39'),(8,'auth','0005_alter_user_last_login_null','2016-12-15 07:48:39'),(9,'auth','0006_require_contenttypes_0002','2016-12-15 07:48:40'),(10,'sessions','0001_initial','2016-12-15 07:48:40');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lepus_status`
--

DROP TABLE IF EXISTS `lepus_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lepus_status` (
  `lepus_variables` varchar(255) NOT NULL,
  `lepus_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lepus_status`
--

LOCK TABLES `lepus_status` WRITE;
/*!40000 ALTER TABLE `lepus_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `lepus_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mongodb_status`
--

DROP TABLE IF EXISTS `mongodb_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mongodb_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) NOT NULL DEFAULT '0',
  `host` varchar(50) NOT NULL,
  `port` varchar(30) NOT NULL,
  `tags` varchar(50) DEFAULT NULL,
  `connect` smallint(6) NOT NULL DEFAULT '0',
  `replset` smallint(2) NOT NULL DEFAULT '-1',
  `repl_role` varchar(30) NOT NULL DEFAULT '-1',
  `ok` tinyint(2) NOT NULL DEFAULT '-1',
  `uptime` int(11) NOT NULL DEFAULT '-1',
  `version` varchar(50) NOT NULL DEFAULT '-1',
  `connections_current` smallint(4) NOT NULL DEFAULT '-1',
  `connections_available` bigint(20) unsigned NOT NULL DEFAULT '0',
  `globalLock_currentQueue` smallint(4) NOT NULL DEFAULT '-1',
  `globalLock_activeClients` smallint(4) NOT NULL DEFAULT '-1',
  `indexCounters_accesses` bigint(18) NOT NULL DEFAULT '-1',
  `indexCounters_hits` bigint(18) NOT NULL DEFAULT '-1',
  `indexCounters_misses` bigint(18) NOT NULL DEFAULT '-1',
  `indexCounters_resets` int(10) NOT NULL DEFAULT '-1',
  `indexCounters_missRatio` char(10) NOT NULL DEFAULT '-1',
  `cursors_totalOpen` smallint(4) NOT NULL DEFAULT '-1',
  `cursors_timeOut` int(10) NOT NULL DEFAULT '-1',
  `dur_commits` smallint(4) NOT NULL DEFAULT '-1',
  `dur_journaledMB` varchar(30) NOT NULL DEFAULT '-1',
  `dur_writeToDataFilesMB` varchar(30) NOT NULL DEFAULT '-1',
  `dur_compression` varchar(30) NOT NULL DEFAULT '-1',
  `dur_commitsInWriteLock` smallint(4) NOT NULL DEFAULT '-1',
  `dur_earlyCommits` smallint(4) NOT NULL DEFAULT '-1',
  `dur_timeMs_dt` smallint(4) NOT NULL DEFAULT '-1',
  `dur_timeMs_prepLogBuffer` smallint(4) NOT NULL DEFAULT '-1',
  `dur_timeMs_writeToJournal` smallint(4) NOT NULL DEFAULT '-1',
  `dur_timeMs_writeToDataFiles` smallint(4) NOT NULL DEFAULT '-1',
  `dur_timeMs_remapPrivateView` smallint(4) NOT NULL DEFAULT '-1',
  `mem_bits` smallint(4) NOT NULL DEFAULT '-1',
  `mem_resident` int(10) NOT NULL DEFAULT '-1',
  `mem_virtual` int(10) NOT NULL DEFAULT '-1',
  `mem_supported` varchar(10) NOT NULL DEFAULT '-1',
  `mem_mapped` int(10) NOT NULL DEFAULT '-1',
  `mem_mappedWithJournal` int(10) NOT NULL DEFAULT '-1',
  `network_bytesIn_persecond` int(10) NOT NULL DEFAULT '-1',
  `network_bytesOut_persecond` int(10) NOT NULL DEFAULT '-1',
  `network_numRequests_persecond` int(10) NOT NULL DEFAULT '-1',
  `opcounters_insert_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `opcounters_query_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `opcounters_update_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `opcounters_delete_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `opcounters_command_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_server_id` (`server_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mongodb_status`
--

LOCK TABLES `mongodb_status` WRITE;
/*!40000 ALTER TABLE `mongodb_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `mongodb_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mongodb_status_history`
--

DROP TABLE IF EXISTS `mongodb_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mongodb_status_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) NOT NULL DEFAULT '0',
  `host` varchar(50) NOT NULL,
  `port` varchar(30) NOT NULL,
  `tags` varchar(50) DEFAULT NULL,
  `connect` smallint(6) NOT NULL DEFAULT '0',
  `replset` tinyint(2) NOT NULL DEFAULT '-1',
  `repl_role` varchar(30) NOT NULL DEFAULT '-1',
  `ok` tinyint(2) NOT NULL DEFAULT '-1',
  `uptime` int(11) NOT NULL DEFAULT '-1',
  `version` varchar(50) NOT NULL DEFAULT '-1',
  `connections_current` smallint(4) NOT NULL DEFAULT '-1',
  `connections_available` bigint(20) unsigned NOT NULL DEFAULT '0',
  `globalLock_currentQueue` smallint(4) NOT NULL DEFAULT '-1',
  `globalLock_activeClients` smallint(4) NOT NULL DEFAULT '-1',
  `indexCounters_accesses` bigint(18) NOT NULL DEFAULT '-1',
  `indexCounters_hits` bigint(18) NOT NULL DEFAULT '-1',
  `indexCounters_misses` bigint(18) NOT NULL DEFAULT '-1',
  `indexCounters_resets` int(10) NOT NULL DEFAULT '-1',
  `indexCounters_missRatio` char(10) NOT NULL DEFAULT '-1',
  `cursors_totalOpen` smallint(4) NOT NULL DEFAULT '-1',
  `cursors_timeOut` int(10) NOT NULL DEFAULT '-1',
  `dur_commits` smallint(4) NOT NULL DEFAULT '-1',
  `dur_journaledMB` varchar(30) NOT NULL DEFAULT '-1',
  `dur_writeToDataFilesMB` varchar(30) NOT NULL DEFAULT '-1',
  `dur_compression` varchar(30) NOT NULL DEFAULT '-1',
  `dur_commitsInWriteLock` smallint(4) NOT NULL DEFAULT '-1',
  `dur_earlyCommits` smallint(4) NOT NULL DEFAULT '-1',
  `dur_timeMs_dt` smallint(4) NOT NULL DEFAULT '-1',
  `dur_timeMs_prepLogBuffer` smallint(4) NOT NULL DEFAULT '-1',
  `dur_timeMs_writeToJournal` smallint(4) NOT NULL DEFAULT '-1',
  `dur_timeMs_writeToDataFiles` smallint(4) NOT NULL DEFAULT '-1',
  `dur_timeMs_remapPrivateView` smallint(4) NOT NULL DEFAULT '-1',
  `mem_bits` smallint(4) NOT NULL DEFAULT '-1',
  `mem_resident` int(10) NOT NULL DEFAULT '-1',
  `mem_virtual` int(10) NOT NULL DEFAULT '-1',
  `mem_supported` varchar(10) NOT NULL DEFAULT '-1',
  `mem_mapped` int(10) NOT NULL DEFAULT '-1',
  `mem_mappedWithJournal` int(10) NOT NULL DEFAULT '-1',
  `network_bytesIn_persecond` int(10) NOT NULL DEFAULT '-1',
  `network_bytesOut_persecond` int(10) NOT NULL DEFAULT '-1',
  `network_numRequests_persecond` int(10) NOT NULL DEFAULT '-1',
  `opcounters_insert_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `opcounters_query_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `opcounters_update_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `opcounters_delete_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `opcounters_command_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `YmdHi` bigint(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_serverid_ymdhi` (`server_id`,`YmdHi`) USING BTREE,
  KEY `idx_ymdhi` (`YmdHi`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mongodb_status_history`
--

LOCK TABLES `mongodb_status_history` WRITE;
/*!40000 ALTER TABLE `mongodb_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mongodb_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysql_bigtable`
--

DROP TABLE IF EXISTS `mysql_bigtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysql_bigtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) DEFAULT NULL,
  `host` varchar(30) NOT NULL,
  `port` varchar(10) NOT NULL,
  `tags` varchar(50) NOT NULL DEFAULT '',
  `db_name` varchar(50) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `table_size` decimal(10,2) DEFAULT NULL,
  `table_comment` varchar(200) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `table_rows` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_server_id` (`server_id`) USING BTREE,
  KEY `idx_table_size` (`table_size`) USING BTREE,
  KEY `idx_host_db_tb` (`host`,`db_name`,`table_name`)
) ENGINE=InnoDB AUTO_INCREMENT=439 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysql_bigtable`
--

LOCK TABLES `mysql_bigtable` WRITE;
/*!40000 ALTER TABLE `mysql_bigtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `mysql_bigtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysql_bigtable_history`
--

DROP TABLE IF EXISTS `mysql_bigtable_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysql_bigtable_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) DEFAULT NULL,
  `host` varchar(30) NOT NULL,
  `port` varchar(10) NOT NULL,
  `tags` varchar(50) NOT NULL DEFAULT '',
  `db_name` varchar(50) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `table_size` decimal(10,2) DEFAULT NULL,
  `table_comment` varchar(200) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `table_rows` int(11) DEFAULT NULL,
  `Ymd` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_create_time` (`create_time`) USING BTREE,
  KEY `idx_server_id_tablename_ymd` (`server_id`,`table_name`,`Ymd`) USING BTREE,
  KEY `idx_host_db_tb` (`host`,`db_name`,`table_name`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysql_bigtable_history`
--

LOCK TABLES `mysql_bigtable_history` WRITE;
/*!40000 ALTER TABLE `mysql_bigtable_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mysql_bigtable_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysql_connected`
--

DROP TABLE IF EXISTS `mysql_connected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysql_connected` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) NOT NULL,
  `host` varchar(30) NOT NULL,
  `port` varchar(10) NOT NULL,
  `tags` varchar(50) NOT NULL DEFAULT '',
  `connect_server` varchar(100) NOT NULL,
  `connect_user` varchar(50) DEFAULT NULL,
  `connect_db` varchar(50) DEFAULT NULL,
  `connect_count` int(10) NOT NULL DEFAULT '0',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=619787 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysql_connected`
--

LOCK TABLES `mysql_connected` WRITE;
/*!40000 ALTER TABLE `mysql_connected` DISABLE KEYS */;
INSERT INTO `mysql_connected` VALUES (619324,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:42:09'),(619325,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:42:09'),(619326,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:42:09'),(619327,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:42:39'),(619328,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:42:39'),(619329,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:42:39'),(619330,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:43:09'),(619331,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:43:09'),(619332,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:43:09'),(619333,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:43:39'),(619334,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:43:39'),(619335,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:43:39'),(619336,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:44:09'),(619337,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:44:09'),(619338,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:44:09'),(619339,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:44:40'),(619340,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:44:40'),(619341,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:44:40'),(619342,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:45:10'),(619343,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:45:10'),(619344,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:45:10'),(619345,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:45:40'),(619346,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:45:40'),(619347,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:45:40'),(619348,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:46:10'),(619349,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:46:10'),(619350,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:46:10'),(619351,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:46:40'),(619352,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:46:40'),(619353,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:46:40'),(619354,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:47:11'),(619355,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:47:11'),(619356,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:47:11'),(619357,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:47:41'),(619358,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:47:41'),(619359,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:47:41'),(619360,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:48:11'),(619361,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:48:11'),(619362,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:48:11'),(619363,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:48:41'),(619364,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:48:41'),(619365,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:48:41'),(619366,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:49:11'),(619367,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:49:11'),(619368,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:49:11'),(619369,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:49:41'),(619370,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:49:41'),(619371,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:49:42'),(619372,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:50:12'),(619373,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:50:12'),(619374,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:50:12'),(619375,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:50:42'),(619376,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:50:42'),(619377,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:50:42'),(619378,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:51:12'),(619379,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:51:12'),(619380,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:51:12'),(619381,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:51:42'),(619382,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:51:42'),(619383,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:51:42'),(619384,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:52:13'),(619385,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:52:13'),(619386,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:52:13'),(619387,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:52:43'),(619388,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:52:43'),(619389,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:52:43'),(619390,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:53:13'),(619391,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:53:13'),(619392,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:53:13'),(619393,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:53:43'),(619394,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:53:43'),(619395,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:53:43'),(619396,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:54:13'),(619397,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:54:13'),(619398,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:54:13'),(619399,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:54:43'),(619400,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:54:43'),(619401,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:54:44'),(619402,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:55:14'),(619403,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:55:14'),(619404,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:55:14'),(619405,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:55:44'),(619406,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:55:44'),(619407,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:55:44'),(619408,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:56:14'),(619409,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:56:14'),(619410,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:56:14'),(619411,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:56:44'),(619412,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:56:44'),(619413,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:56:44'),(619414,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:57:14'),(619415,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:57:14'),(619416,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:57:14'),(619417,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:57:45'),(619418,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:57:45'),(619419,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:57:45'),(619420,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:58:15'),(619421,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:58:15'),(619422,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:58:15'),(619423,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:58:45'),(619424,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:58:45'),(619425,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:58:45'),(619426,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:59:15'),(619427,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:59:15'),(619428,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:59:15'),(619429,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 08:59:45'),(619430,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 08:59:45'),(619431,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 08:59:45'),(619432,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:00:15'),(619433,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:00:15'),(619434,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:00:15'),(619435,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:00:45'),(619436,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:00:46'),(619437,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:00:46'),(619438,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:01:16'),(619439,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:01:16'),(619440,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:01:16'),(619441,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:01:46'),(619442,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:01:46'),(619443,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:01:46'),(619444,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:02:16'),(619445,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:02:16'),(619446,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:02:16'),(619447,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:02:46'),(619448,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:02:46'),(619449,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:02:46'),(619450,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:03:17'),(619451,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:03:17'),(619452,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:03:17'),(619453,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:03:46'),(619454,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:03:47'),(619455,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:03:47'),(619456,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:04:17'),(619457,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:04:17'),(619458,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:04:17'),(619459,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:04:47'),(619460,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:04:47'),(619461,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:04:47'),(619462,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:05:17'),(619463,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:05:17'),(619464,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:05:17'),(619465,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:05:47'),(619466,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:05:47'),(619467,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:05:47'),(619468,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:06:17'),(619469,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:06:17'),(619470,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:06:17'),(619471,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:06:47'),(619472,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:06:47'),(619473,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:06:48'),(619474,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:07:18'),(619475,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:07:18'),(619476,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:07:18'),(619477,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:07:48'),(619478,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:07:48'),(619479,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:07:49'),(619480,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:08:18'),(619481,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:08:18'),(619482,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:08:18'),(619483,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:08:49'),(619484,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:08:49'),(619485,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:08:49'),(619486,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:09:19'),(619487,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:09:19'),(619488,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:09:19'),(619489,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:09:49'),(619490,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:09:49'),(619491,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:09:49'),(619492,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:10:19'),(619493,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:10:19'),(619494,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:10:19'),(619495,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:10:49'),(619496,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:10:49'),(619497,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:10:49'),(619498,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:11:19'),(619499,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:11:19'),(619500,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:11:19'),(619501,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:11:50'),(619502,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:11:50'),(619503,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:11:50'),(619504,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:12:20'),(619505,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:12:20'),(619506,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:12:20'),(619507,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:12:50'),(619508,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:12:50'),(619509,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:12:50'),(619510,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:13:20'),(619511,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:13:20'),(619512,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:13:20'),(619513,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:13:50'),(619514,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:13:50'),(619515,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:13:50'),(619516,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:14:20'),(619517,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:14:20'),(619518,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:14:21'),(619519,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:14:51'),(619520,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:14:51'),(619521,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:14:51'),(619522,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:15:21'),(619523,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:15:21'),(619524,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:15:21'),(619525,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:15:51'),(619526,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:15:51'),(619527,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:15:51'),(619528,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:16:21'),(619529,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:16:21'),(619530,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:16:21'),(619531,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:16:51'),(619532,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:16:51'),(619533,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:16:51'),(619534,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:17:21'),(619535,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:17:21'),(619536,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:17:22'),(619537,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:17:52'),(619538,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:17:52'),(619539,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:17:52'),(619540,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:18:22'),(619541,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:18:22'),(619542,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:18:22'),(619543,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:18:52'),(619544,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:18:52'),(619545,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:18:52'),(619546,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:19:22'),(619547,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:19:22'),(619548,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:19:22'),(619549,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:19:52'),(619550,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:19:52'),(619551,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:19:52'),(619552,344,'127.0.0.1','3306','localhos','103.47.137.213','root','django',1,'2016-12-15 09:20:23'),(619553,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:20:23'),(619554,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:20:23'),(619555,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:20:53'),(619556,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:20:53'),(619557,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:21:23'),(619558,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:21:23'),(619559,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:21:53'),(619560,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:21:53'),(619561,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:22:23'),(619562,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:22:23'),(619563,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:22:53'),(619564,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:22:53'),(619565,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:23:24'),(619566,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:23:24'),(619567,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:23:54'),(619568,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:23:54'),(619569,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:24:24'),(619570,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:24:24'),(619571,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:24:54'),(619572,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:24:54'),(619573,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:25:24'),(619574,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:25:24'),(619575,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:25:55'),(619576,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:25:55'),(619577,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:26:25'),(619578,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:26:25'),(619579,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:26:55'),(619580,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:26:55'),(619581,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:27:26'),(619582,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:27:26'),(619583,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:27:56'),(619584,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:27:56'),(619585,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:28:27'),(619586,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:28:27'),(619587,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:28:57'),(619588,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:28:57'),(619589,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:29:27'),(619590,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:29:27'),(619591,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:29:57'),(619592,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:29:58'),(619593,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:30:27'),(619594,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:30:27'),(619595,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:30:57'),(619596,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:30:57'),(619597,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:31:28'),(619598,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:31:28'),(619599,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:31:58'),(619600,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:31:58'),(619601,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:32:28'),(619602,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:32:28'),(619603,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:32:58'),(619604,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:32:58'),(619605,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:33:28'),(619606,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:33:29'),(619607,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:33:59'),(619608,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:33:59'),(619609,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:34:29'),(619610,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:34:29'),(619611,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:35:02'),(619612,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:35:03'),(619613,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:35:31'),(619614,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:35:31'),(619615,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:36:02'),(619616,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:36:02'),(619617,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:36:31'),(619618,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:36:31'),(619619,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:37:02'),(619620,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:37:02'),(619621,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:37:32'),(619622,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:37:32'),(619623,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:38:02'),(619624,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:38:02'),(619625,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:38:32'),(619626,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:38:33'),(619627,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:39:03'),(619628,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:39:03'),(619629,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:39:33'),(619630,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:39:33'),(619631,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:40:03'),(619632,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:40:03'),(619633,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:40:33'),(619634,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:40:34'),(619635,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:41:06'),(619636,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:41:06'),(619637,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:41:37'),(619638,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:41:37'),(619639,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:42:06'),(619640,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:42:06'),(619641,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:42:36'),(619642,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:42:36'),(619643,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:43:07'),(619644,344,'127.0.0.1','3306','localhos','localhost','root','django',8,'2016-12-15 09:43:07'),(619645,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:43:37'),(619646,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:43:37'),(619647,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:44:07'),(619648,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:44:07'),(619649,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:44:37'),(619650,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:44:37'),(619651,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:45:07'),(619652,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:45:07'),(619653,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:45:37'),(619654,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:45:37'),(619655,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:46:08'),(619656,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:46:08'),(619657,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:46:39'),(619658,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:46:39'),(619659,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:47:09'),(619660,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:47:09'),(619661,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:47:39'),(619662,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:47:39'),(619663,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:48:09'),(619664,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:48:09'),(619665,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:48:40'),(619666,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:48:40'),(619667,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:49:10'),(619668,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:49:10'),(619669,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:49:40'),(619670,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:49:40'),(619671,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:50:10'),(619672,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:50:10'),(619673,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:50:40'),(619674,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:50:40'),(619675,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:51:10'),(619676,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:51:10'),(619677,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:51:40'),(619678,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:51:41'),(619679,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:52:12'),(619680,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:52:12'),(619681,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:52:42'),(619682,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:52:42'),(619683,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:53:13'),(619684,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:53:13'),(619685,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:53:43'),(619686,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:53:43'),(619687,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:54:13'),(619688,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:54:13'),(619689,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:54:43'),(619690,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:54:43'),(619691,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:55:13'),(619692,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:55:13'),(619693,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:55:43'),(619694,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:55:44'),(619695,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:56:14'),(619696,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:56:14'),(619697,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:56:44'),(619698,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:56:44'),(619699,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:57:14'),(619700,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:57:14'),(619701,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:57:44'),(619702,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:57:44'),(619703,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:58:15'),(619704,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:58:15'),(619705,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:58:45'),(619706,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:58:45'),(619707,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:59:15'),(619708,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:59:15'),(619709,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 09:59:45'),(619710,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 09:59:45'),(619711,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:00:15'),(619712,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:00:15'),(619713,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:00:45'),(619714,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:00:45'),(619715,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:01:15'),(619716,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:01:16'),(619717,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:01:46'),(619718,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:01:46'),(619719,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:02:16'),(619720,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:02:16'),(619721,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:02:46'),(619722,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:02:46'),(619723,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:03:16'),(619724,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:03:16'),(619725,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:03:47'),(619726,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:03:47'),(619727,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:04:17'),(619728,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:04:17'),(619729,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:04:47'),(619730,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:04:47'),(619731,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:05:18'),(619732,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:05:18'),(619733,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:05:48'),(619734,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:05:48'),(619735,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:06:18'),(619736,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:06:18'),(619737,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:06:48'),(619738,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:06:48'),(619739,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:07:18'),(619740,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:07:18'),(619741,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:07:48'),(619742,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:07:48'),(619743,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:08:18'),(619744,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:08:18'),(619745,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:08:49'),(619746,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:08:49'),(619747,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:09:19'),(619748,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:09:19'),(619749,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:09:49'),(619750,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:09:49'),(619751,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:10:19'),(619752,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:10:19'),(619753,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:10:49'),(619754,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:10:49'),(619755,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:11:19'),(619756,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:11:19'),(619757,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:11:49'),(619758,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:11:50'),(619759,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:12:21'),(619760,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:12:21'),(619761,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:12:51'),(619762,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:12:51'),(619763,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:13:21'),(619764,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:13:21'),(619765,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:13:51'),(619766,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:13:54'),(619767,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:14:21'),(619768,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:14:21'),(619769,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:14:51'),(619770,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:14:51'),(619771,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:15:22'),(619772,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:15:22'),(619773,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:15:52'),(619774,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:15:52'),(619775,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:16:23'),(619776,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:16:23'),(619777,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:16:52'),(619778,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:16:52'),(619779,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:17:23'),(619780,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:17:23'),(619781,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:17:56'),(619782,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:17:56'),(619783,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:18:27'),(619784,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:18:27'),(619785,344,'127.0.0.1','3306','localhos','127.0.0.1','root','django',1,'2016-12-15 10:18:57'),(619786,344,'127.0.0.1','3306','localhos','localhost','root','django',7,'2016-12-15 10:18:57');
/*!40000 ALTER TABLE `mysql_connected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysql_processlist`
--

DROP TABLE IF EXISTS `mysql_processlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysql_processlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) DEFAULT NULL,
  `host` varchar(30) NOT NULL,
  `port` varchar(10) NOT NULL,
  `tags` varchar(50) NOT NULL DEFAULT '',
  `pid` int(10) DEFAULT NULL,
  `p_user` varchar(50) DEFAULT NULL,
  `p_host` varchar(50) DEFAULT NULL,
  `p_db` varchar(30) DEFAULT NULL,
  `command` varchar(30) DEFAULT NULL,
  `time` varchar(200) NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `info` text,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_create_time` (`create_time`) USING BTREE,
  KEY `idx_server_id` (`server_id`) USING BTREE,
  KEY `idx_application_id` (`tags`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48318 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysql_processlist`
--

LOCK TABLES `mysql_processlist` WRITE;
/*!40000 ALTER TABLE `mysql_processlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mysql_processlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysql_replication`
--

DROP TABLE IF EXISTS `mysql_replication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysql_replication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) DEFAULT NULL,
  `tags` varchar(50) NOT NULL DEFAULT '',
  `host` varchar(30) DEFAULT NULL,
  `port` varchar(20) DEFAULT NULL,
  `is_master` tinyint(2) DEFAULT '0',
  `is_slave` tinyint(2) unsigned DEFAULT '0',
  `read_only` varchar(10) DEFAULT NULL,
  `gtid_mode` varchar(10) DEFAULT NULL,
  `master_server` varchar(30) DEFAULT NULL,
  `master_port` varchar(20) DEFAULT NULL,
  `slave_io_run` varchar(20) DEFAULT NULL,
  `slave_sql_run` varchar(20) DEFAULT NULL,
  `delay` varchar(20) DEFAULT NULL,
  `current_binlog_file` varchar(30) DEFAULT NULL,
  `current_binlog_pos` varchar(30) DEFAULT NULL,
  `master_binlog_file` varchar(30) DEFAULT NULL,
  `master_binlog_pos` varchar(30) DEFAULT NULL,
  `master_binlog_space` bigint(18) NOT NULL DEFAULT '0',
  `Slave_SQL_Running_State` varchar(100) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142023 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysql_replication`
--

LOCK TABLES `mysql_replication` WRITE;
/*!40000 ALTER TABLE `mysql_replication` DISABLE KEYS */;
/*!40000 ALTER TABLE `mysql_replication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysql_replication_history`
--

DROP TABLE IF EXISTS `mysql_replication_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysql_replication_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) NOT NULL,
  `tags` varchar(50) NOT NULL DEFAULT '',
  `host` varchar(30) DEFAULT NULL,
  `port` varchar(20) DEFAULT NULL,
  `is_master` tinyint(2) DEFAULT '0',
  `is_slave` tinyint(2) DEFAULT '0',
  `read_only` varchar(10) DEFAULT NULL,
  `gtid_mode` varchar(10) DEFAULT NULL,
  `master_server` varchar(30) DEFAULT NULL,
  `master_port` varchar(20) DEFAULT NULL,
  `slave_io_run` varchar(20) DEFAULT NULL,
  `slave_sql_run` varchar(20) DEFAULT NULL,
  `delay` varchar(20) DEFAULT NULL,
  `current_binlog_file` varchar(30) DEFAULT NULL,
  `current_binlog_pos` varchar(30) DEFAULT NULL,
  `master_binlog_file` varchar(30) DEFAULT NULL,
  `master_binlog_pos` varchar(30) DEFAULT NULL,
  `master_binlog_space` bigint(18) DEFAULT NULL,
  `Slave_SQL_Running_State` varchar(100) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `YmdHi` bigint(18) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_application_id` (`tags`),
  KEY `idx_create_time` (`create_time`),
  KEY `idx_union_1` (`server_id`,`YmdHi`) USING BTREE,
  KEY `idx_ymdhi` (`YmdHi`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=142021 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysql_replication_history`
--

LOCK TABLES `mysql_replication_history` WRITE;
/*!40000 ALTER TABLE `mysql_replication_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mysql_replication_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysql_status`
--

DROP TABLE IF EXISTS `mysql_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysql_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) NOT NULL DEFAULT '0',
  `host` varchar(30) NOT NULL,
  `port` varchar(10) NOT NULL,
  `tags` varchar(50) NOT NULL DEFAULT '',
  `connect` smallint(4) NOT NULL DEFAULT '0',
  `role` varchar(30) NOT NULL DEFAULT '-1',
  `uptime` int(11) NOT NULL DEFAULT '-1' COMMENT '运行s,uptime/3600/24',
  `version` varchar(50) NOT NULL DEFAULT '-1',
  `max_connections` smallint(4) NOT NULL DEFAULT '-1',
  `max_connect_errors` int(10) NOT NULL DEFAULT '-1',
  `open_files_limit` int(10) NOT NULL DEFAULT '-1',
  `open_files` smallint(4) NOT NULL DEFAULT '-1',
  `table_open_cache` smallint(4) NOT NULL DEFAULT '-1',
  `open_tables` smallint(4) NOT NULL DEFAULT '-1',
  `max_tmp_tables` smallint(4) NOT NULL DEFAULT '-1',
  `max_heap_table_size` int(10) NOT NULL DEFAULT '-1',
  `max_allowed_packet` int(10) NOT NULL DEFAULT '-1',
  `threads_connected` int(10) NOT NULL DEFAULT '-1',
  `threads_running` int(10) NOT NULL DEFAULT '-1',
  `threads_waits` int(10) NOT NULL DEFAULT '-1',
  `threads_created` int(10) NOT NULL DEFAULT '-1',
  `threads_cached` int(10) NOT NULL DEFAULT '-1',
  `connections` int(10) NOT NULL DEFAULT '-1',
  `aborted_clients` int(10) NOT NULL DEFAULT '-1',
  `aborted_connects` int(10) NOT NULL DEFAULT '-1',
  `connections_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `bytes_received_persecond` int(10) NOT NULL DEFAULT '-1',
  `bytes_sent_persecond` int(10) NOT NULL DEFAULT '-1',
  `com_select_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `com_insert_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `com_update_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `com_delete_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `com_commit_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `com_rollback_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `questions_persecond` int(10) NOT NULL DEFAULT '-1',
  `queries_persecond` int(10) NOT NULL DEFAULT '-1',
  `transaction_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `created_tmp_tables_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `created_tmp_disk_tables_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `created_tmp_files_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `table_locks_immediate_persecond` int(4) NOT NULL DEFAULT '-1',
  `table_locks_waited_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `key_buffer_size` bigint(18) NOT NULL DEFAULT '-1',
  `sort_buffer_size` int(10) NOT NULL DEFAULT '-1',
  `join_buffer_size` int(10) NOT NULL DEFAULT '-1',
  `key_blocks_not_flushed` int(10) NOT NULL DEFAULT '-1',
  `key_blocks_unused` int(10) NOT NULL DEFAULT '-1',
  `key_blocks_used` int(10) NOT NULL DEFAULT '-1',
  `key_read_requests_persecond` int(10) NOT NULL DEFAULT '-1',
  `key_reads_persecond` int(10) NOT NULL DEFAULT '-1',
  `key_write_requests_persecond` int(10) NOT NULL DEFAULT '-1',
  `key_writes_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_version` varchar(30) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_instances` smallint(4) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_size` bigint(18) NOT NULL DEFAULT '-1',
  `innodb_doublewrite` char(10) NOT NULL DEFAULT '-1',
  `innodb_file_per_table` char(10) NOT NULL DEFAULT '-1',
  `innodb_flush_log_at_trx_commit` tinyint(2) NOT NULL DEFAULT '-1',
  `innodb_flush_method` varchar(30) NOT NULL DEFAULT '-1',
  `innodb_force_recovery` tinyint(2) NOT NULL DEFAULT '-1',
  `innodb_io_capacity` int(10) NOT NULL DEFAULT '-1',
  `innodb_read_io_threads` tinyint(2) NOT NULL DEFAULT '-1',
  `innodb_write_io_threads` tinyint(2) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_pages_total` int(10) NOT NULL DEFAULT '-1' COMMENT '页总数目',
  `innodb_buffer_pool_pages_data` int(10) NOT NULL DEFAULT '-1' COMMENT '缓存池中包含数据的页的数目，包括脏页,单位page',
  `innodb_buffer_pool_pages_dirty` int(10) NOT NULL DEFAULT '-1' COMMENT '缓存池中脏页的数目-单位page',
  `innodb_buffer_pool_pages_flushed` bigint(18) NOT NULL DEFAULT '-1' COMMENT '缓存池中刷新页请求的数目-单位page',
  `innodb_buffer_pool_pages_free` int(10) NOT NULL DEFAULT '-1' COMMENT '剩余的页数目-单位是page',
  `innodb_buffer_pool_pages_misc` bigint(40) DEFAULT '-1',
  `innodb_page_size` int(10) NOT NULL DEFAULT '-1',
  `innodb_pages_created` bigint(18) NOT NULL DEFAULT '-1',
  `innodb_pages_read` bigint(18) NOT NULL DEFAULT '-1',
  `innodb_pages_written` bigint(18) NOT NULL DEFAULT '-1',
  `innodb_row_lock_current_waits` varchar(100) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_pages_flushed_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_read_requests_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_reads_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_write_requests_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_rows_read_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_rows_inserted_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_rows_updated_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_rows_deleted_persecond` int(10) NOT NULL DEFAULT '-1',
  `query_cache_hitrate` varchar(10) NOT NULL DEFAULT '-1',
  `thread_cache_hitrate` varchar(10) NOT NULL DEFAULT '-1',
  `key_buffer_read_rate` varchar(10) NOT NULL DEFAULT '-1',
  `key_buffer_write_rate` varchar(10) NOT NULL DEFAULT '-1',
  `key_blocks_used_rate` varchar(10) NOT NULL DEFAULT '-1',
  `created_tmp_disk_tables_rate` varchar(10) NOT NULL DEFAULT '-1',
  `connections_usage_rate` varchar(10) NOT NULL DEFAULT '-1',
  `open_files_usage_rate` varchar(10) NOT NULL DEFAULT '-1',
  `open_tables_usage_rate` varchar(10) NOT NULL DEFAULT '-1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_connections` (`threads_connected`) USING BTREE,
  KEY `idx_active` (`threads_running`) USING BTREE,
  KEY `idx_server_id` (`server_id`) USING BTREE,
  KEY `idx_host` (`host`)
) ENGINE=InnoDB AUTO_INCREMENT=35027511 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysql_status`
--

LOCK TABLES `mysql_status` WRITE;
/*!40000 ALTER TABLE `mysql_status` DISABLE KEYS */;
INSERT INTO `mysql_status` VALUES (35027510,344,'127.0.0.1','3306','localhos',1,'master',9648,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,4003,0,65,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,7118,1571955,-1,16384,713,174,7118,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.26','     0.00','     0.00','     0.03','2016-12-15 10:19:27');
/*!40000 ALTER TABLE `mysql_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysql_status_history`
--

DROP TABLE IF EXISTS `mysql_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysql_status_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `server_id` smallint(4) NOT NULL DEFAULT '0',
  `host` varchar(30) NOT NULL,
  `port` varchar(10) NOT NULL,
  `tags` varchar(50) NOT NULL DEFAULT '',
  `connect` smallint(4) NOT NULL DEFAULT '0',
  `role` varchar(30) NOT NULL DEFAULT '-1',
  `uptime` int(11) NOT NULL DEFAULT '-1',
  `version` varchar(50) NOT NULL DEFAULT '-1',
  `max_connections` smallint(4) NOT NULL DEFAULT '-1',
  `max_connect_errors` int(10) NOT NULL DEFAULT '-1',
  `open_files_limit` int(10) NOT NULL DEFAULT '-1',
  `open_files` smallint(4) NOT NULL DEFAULT '-1',
  `table_open_cache` smallint(4) NOT NULL DEFAULT '-1',
  `open_tables` smallint(4) NOT NULL DEFAULT '-1',
  `max_tmp_tables` smallint(4) NOT NULL DEFAULT '-1',
  `max_heap_table_size` int(10) NOT NULL DEFAULT '-1',
  `max_allowed_packet` int(10) NOT NULL DEFAULT '-1',
  `threads_connected` int(10) NOT NULL DEFAULT '-1',
  `threads_running` int(10) NOT NULL DEFAULT '-1',
  `threads_waits` int(10) NOT NULL DEFAULT '-1',
  `threads_created` int(10) NOT NULL DEFAULT '-1',
  `threads_cached` int(10) NOT NULL DEFAULT '-1',
  `connections` int(10) NOT NULL DEFAULT '-1',
  `aborted_clients` int(10) NOT NULL DEFAULT '-1',
  `aborted_connects` int(10) NOT NULL DEFAULT '-1',
  `connections_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `bytes_received_persecond` int(10) NOT NULL DEFAULT '-1',
  `bytes_sent_persecond` int(10) NOT NULL DEFAULT '-1',
  `com_select_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `com_insert_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `com_update_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `com_delete_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `com_commit_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `com_rollback_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `questions_persecond` int(10) NOT NULL DEFAULT '-1',
  `queries_persecond` int(10) NOT NULL DEFAULT '-1',
  `transaction_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `created_tmp_tables_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `created_tmp_disk_tables_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `created_tmp_files_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `table_locks_immediate_persecond` int(4) NOT NULL DEFAULT '-1',
  `table_locks_waited_persecond` smallint(4) NOT NULL DEFAULT '-1',
  `key_buffer_size` bigint(18) NOT NULL DEFAULT '-1',
  `sort_buffer_size` int(10) NOT NULL DEFAULT '-1',
  `join_buffer_size` int(10) NOT NULL DEFAULT '-1',
  `key_blocks_not_flushed` int(10) NOT NULL DEFAULT '-1',
  `key_blocks_unused` int(10) NOT NULL DEFAULT '-1',
  `key_blocks_used` int(10) NOT NULL DEFAULT '-1',
  `key_read_requests_persecond` int(10) NOT NULL DEFAULT '-1',
  `key_reads_persecond` int(10) NOT NULL DEFAULT '-1',
  `key_write_requests_persecond` int(10) NOT NULL DEFAULT '-1',
  `key_writes_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_version` varchar(30) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_instances` smallint(4) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_size` bigint(18) NOT NULL DEFAULT '-1',
  `innodb_doublewrite` char(10) NOT NULL DEFAULT '-1',
  `innodb_file_per_table` char(10) NOT NULL DEFAULT '-1',
  `innodb_flush_log_at_trx_commit` tinyint(2) NOT NULL DEFAULT '-1',
  `innodb_flush_method` varchar(30) NOT NULL DEFAULT '-1',
  `innodb_force_recovery` tinyint(2) NOT NULL DEFAULT '-1',
  `innodb_io_capacity` int(10) NOT NULL DEFAULT '-1',
  `innodb_read_io_threads` tinyint(2) NOT NULL DEFAULT '-1',
  `innodb_write_io_threads` tinyint(2) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_pages_total` int(10) NOT NULL DEFAULT '-1' COMMENT '页总数目',
  `innodb_buffer_pool_pages_data` int(10) NOT NULL DEFAULT '-1' COMMENT '缓存池中包含数据的页的数目，包括脏页,单位page',
  `innodb_buffer_pool_pages_dirty` int(10) NOT NULL DEFAULT '-1' COMMENT '缓存池中脏页的数目-单位page',
  `innodb_buffer_pool_pages_flushed` bigint(18) NOT NULL DEFAULT '-1' COMMENT '缓存池中刷新页请求的数目-单位page',
  `innodb_buffer_pool_pages_free` int(10) NOT NULL DEFAULT '-1' COMMENT '剩余的页数目-单位是page',
  `innodb_buffer_pool_pages_misc` bigint(40) DEFAULT '-1',
  `innodb_page_size` int(10) NOT NULL DEFAULT '-1',
  `innodb_pages_created` bigint(18) NOT NULL DEFAULT '-1',
  `innodb_pages_read` bigint(18) NOT NULL DEFAULT '-1',
  `innodb_pages_written` bigint(18) NOT NULL DEFAULT '-1',
  `innodb_row_lock_current_waits` varchar(100) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_pages_flushed_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_read_requests_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_reads_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_buffer_pool_write_requests_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_rows_read_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_rows_inserted_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_rows_updated_persecond` int(10) NOT NULL DEFAULT '-1',
  `innodb_rows_deleted_persecond` int(10) NOT NULL DEFAULT '-1',
  `query_cache_hitrate` varchar(20) DEFAULT NULL,
  `thread_cache_hitrate` varchar(10) NOT NULL DEFAULT '-1',
  `key_buffer_read_rate` varchar(10) NOT NULL DEFAULT '-1',
  `key_buffer_write_rate` varchar(10) NOT NULL DEFAULT '-1',
  `key_blocks_used_rate` varchar(10) NOT NULL DEFAULT '-1',
  `created_tmp_disk_tables_rate` varchar(10) NOT NULL DEFAULT '-1',
  `connections_usage_rate` varchar(10) NOT NULL DEFAULT '-1',
  `open_files_usage_rate` varchar(10) NOT NULL DEFAULT '-1',
  `open_tables_usage_rate` varchar(10) NOT NULL DEFAULT '-1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `YmdHi` bigint(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_connections` (`threads_connected`) USING BTREE,
  KEY `idx_active` (`threads_running`) USING BTREE,
  KEY `idx_server_id_ymdhi` (`server_id`,`YmdHi`) USING BTREE,
  KEY `idx_application_id` (`tags`) USING BTREE,
  KEY `idx_create_time` (`create_time`) USING BTREE,
  KEY `idx_yhdmi` (`YmdHi`),
  KEY `idx_host` (`host`)
) ENGINE=InnoDB AUTO_INCREMENT=35027510 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysql_status_history`
--

LOCK TABLES `mysql_status_history` WRITE;
/*!40000 ALTER TABLE `mysql_status_history` DISABLE KEYS */;
INSERT INTO `mysql_status_history` VALUES (35027317,344,'127.0.0.1','3306','localhos',1,'master',3810,'5.6.27-yunmm-log',3000,100,65536,49,4096,113,32,134217728,67108864,11,1,0,14,3,224,0,7,1,0,9,1,0,0,0,0,0,4,4,0,1,0,0,1,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,852,0,1288,1571991,-1,16384,678,174,1288,'0',0,33,0,0,31,0,0,0,'     0.00','     0.94','     0.67','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 08:42:09',201612151642),(35027318,344,'127.0.0.1','3306','localhos',1,'master',3840,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,257,0,7,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,853,23,1309,1571990,-1,16384,679,174,1309,'0',0,80,0,5,0,0,0,0,'     0.00','     0.95','     0.67','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 08:42:39',201612151642),(35027319,344,'127.0.0.1','3306','localhos',1,'master',3870,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,280,0,7,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,854,24,1352,1571988,-1,16384,680,174,1352,'0',0,0,0,0,0,0,0,0,'     0.00','     0.95','     0.67','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:43:09',201612151643),(35027320,344,'127.0.0.1','3306','localhos',1,'master',3900,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,300,0,7,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,857,17,1398,1571985,-1,16384,683,174,1398,'0',0,0,0,0,0,0,0,0,'     0.00','     0.95','     0.67','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:43:39',201612151643),(35027321,344,'127.0.0.1','3306','localhos',1,'master',3930,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,320,0,7,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,859,26,1430,1571983,-1,16384,685,174,1430,'0',0,0,0,0,0,0,0,0,'     0.00','     0.96','     0.67','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:44:09',201612151644),(35027322,344,'127.0.0.1','3306','localhos',1,'master',3960,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,351,0,7,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,859,17,1469,1571983,-1,16384,685,174,1469,'0',0,0,0,0,0,0,0,0,'     0.00','     0.96','     0.67','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:44:39',201612151644),(35027323,344,'127.0.0.1','3306','localhos',1,'master',3991,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,384,0,11,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,860,26,1501,1571982,-1,16384,686,174,1501,'0',0,0,0,0,0,0,0,0,'     0.00','     0.96','     0.67','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:45:10',201612151645),(35027324,344,'127.0.0.1','3306','localhos',1,'master',4021,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,406,0,11,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,860,17,1536,1571982,-1,16384,686,174,1536,'0',0,0,0,0,0,0,0,0,'     0.00','     0.97','     0.67','     0.33','     0.00','     0.17','     0.00','     0.00','     0.03','2016-12-15 08:45:40',201612151645),(35027325,344,'127.0.0.1','3306','localhos',1,'master',4051,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,431,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,862,24,1570,1571980,-1,16384,688,174,1570,'0',0,0,0,0,0,0,0,0,'     0.00','     0.97','     0.67','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:46:10',201612151646),(35027326,344,'127.0.0.1','3306','localhos',1,'master',4081,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,461,0,12,1,0,9,1,0,0,0,0,0,7,7,0,1,0,0,1,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,864,17,1609,1571978,-1,16384,690,174,1609,'0',0,2,0,0,0,0,0,0,'     0.00','     0.97','     0.67','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:46:40',201612151646),(35027327,344,'127.0.0.1','3306','localhos',1,'master',4112,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,489,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,864,17,1637,1571978,-1,16384,690,174,1637,'0',0,0,0,0,0,0,0,0,'     0.00','     0.97','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:47:11',201612151647),(35027328,344,'127.0.0.1','3306','localhos',1,'master',4142,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,509,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,864,24,1669,1571978,-1,16384,690,174,1669,'0',0,0,0,0,0,0,0,0,'     0.00','     0.97','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:47:41',201612151647),(35027329,344,'127.0.0.1','3306','localhos',1,'master',4172,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,532,0,12,1,0,10,3,0,0,0,0,0,9,9,0,1,0,0,3,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,865,19,1706,1571977,-1,16384,691,174,1706,'0',0,26,0,0,20,0,0,0,'     0.00','     0.97','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:48:11',201612151648),(35027330,344,'127.0.0.1','3306','localhos',1,'master',4202,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,553,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,865,17,1738,1571977,-1,16384,691,174,1738,'0',0,0,0,0,0,0,0,0,'     0.00','     0.97','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:48:41',201612151648),(35027331,344,'127.0.0.1','3306','localhos',1,'master',4232,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,577,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,24,1772,1571975,-1,16384,693,174,1772,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:49:11',201612151649),(35027332,344,'127.0.0.1','3306','localhos',1,'master',4262,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,609,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,17,1805,1571975,-1,16384,693,174,1805,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:49:41',201612151649),(35027333,344,'127.0.0.1','3306','localhos',1,'master',4293,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,648,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,17,1837,1571975,-1,16384,693,174,1837,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:50:12',201612151650),(35027334,344,'127.0.0.1','3306','localhos',1,'master',4323,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,670,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,24,1865,1571975,-1,16384,693,174,1865,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:50:42',201612151650),(35027335,344,'127.0.0.1','3306','localhos',1,'master',4353,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,701,0,12,1,0,9,1,0,0,0,0,0,4,4,0,1,0,0,1,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,17,1898,1571975,-1,16384,693,174,1898,'0',0,3,0,0,1,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:51:12',201612151651),(35027336,344,'127.0.0.1','3306','localhos',1,'master',4383,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,727,0,12,1,0,9,1,0,0,0,0,0,4,4,0,1,0,0,1,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,17,1932,1571975,-1,16384,693,174,1932,'0',0,33,0,0,31,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:51:42',201612151651),(35027337,344,'127.0.0.1','3306','localhos',1,'master',4414,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,753,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,17,1960,1571975,-1,16384,693,174,1960,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:52:13',201612151652),(35027338,344,'127.0.0.1','3306','localhos',1,'master',4444,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,774,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,24,1988,1571975,-1,16384,693,174,1988,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:52:43',201612151652),(35027339,344,'127.0.0.1','3306','localhos',1,'master',4474,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,792,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,17,2025,1571975,-1,16384,693,174,2025,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.18','     0.00','     0.00','     0.03','2016-12-15 08:53:13',201612151653),(35027340,344,'127.0.0.1','3306','localhos',1,'master',4504,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,809,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,17,2053,1571975,-1,16384,693,174,2053,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:53:43',201612151653),(35027341,344,'127.0.0.1','3306','localhos',1,'master',4534,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,829,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,867,17,2081,1571975,-1,16384,693,174,2081,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:54:13',201612151654),(35027342,344,'127.0.0.1','3306','localhos',1,'master',4564,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,853,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,869,24,2115,1571973,-1,16384,695,174,2115,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:54:43',201612151654),(35027343,344,'127.0.0.1','3306','localhos',1,'master',4595,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,872,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,869,17,2148,1571973,-1,16384,695,174,2148,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:55:14',201612151655),(35027344,344,'127.0.0.1','3306','localhos',1,'master',4625,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,893,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,869,17,2176,1571973,-1,16384,695,174,2176,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:55:44',201612151655),(35027345,344,'127.0.0.1','3306','localhos',1,'master',4655,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,911,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,869,17,2209,1571973,-1,16384,695,174,2209,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:56:14',201612151656),(35027346,344,'127.0.0.1','3306','localhos',1,'master',4685,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,932,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,870,27,2237,1571972,-1,16384,696,174,2237,'0',0,0,0,0,0,0,0,0,'     0.00','     0.98','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:56:44',201612151656),(35027347,344,'127.0.0.1','3306','localhos',1,'master',4715,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,950,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,870,17,2273,1571972,-1,16384,696,174,2273,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:57:14',201612151657),(35027348,344,'127.0.0.1','3306','localhos',1,'master',4745,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,972,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,870,17,2301,1571972,-1,16384,696,174,2301,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:57:44',201612151657),(35027349,344,'127.0.0.1','3306','localhos',1,'master',4776,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,996,0,12,1,0,9,0,0,0,0,0,0,4,4,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,873,21,2335,1571969,-1,16384,699,174,2335,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 08:58:15',201612151658),(35027350,344,'127.0.0.1','3306','localhos',1,'master',4806,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1014,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,873,17,2367,1571969,-1,16384,699,174,2367,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 08:58:45',201612151658),(35027351,344,'127.0.0.1','3306','localhos',1,'master',4836,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1033,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,873,24,2401,1571969,-1,16384,699,174,2401,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:59:15',201612151659),(35027352,344,'127.0.0.1','3306','localhos',1,'master',4866,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1056,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,873,17,2434,1571969,-1,16384,699,174,2434,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.19','     0.00','     0.00','     0.03','2016-12-15 08:59:45',201612151659),(35027353,344,'127.0.0.1','3306','localhos',1,'master',4896,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1077,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,873,17,2468,1571969,-1,16384,699,174,2468,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:00:15',201612151700),(35027354,344,'127.0.0.1','3306','localhos',1,'master',4926,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1099,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,873,17,2496,1571969,-1,16384,699,174,2496,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:00:45',201612151700),(35027355,344,'127.0.0.1','3306','localhos',1,'master',4957,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1119,0,12,2,0,9,1,0,0,0,0,0,12,12,0,1,0,0,1,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,873,17,2524,1571969,-1,16384,699,174,2524,'0',0,3,0,0,1,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:01:16',201612151701),(35027356,344,'127.0.0.1','3306','localhos',1,'master',4987,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1140,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,873,24,2552,1571969,-1,16384,699,174,2552,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:01:46',201612151701),(35027357,344,'127.0.0.1','3306','localhos',1,'master',5017,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1165,0,12,1,0,9,1,0,0,0,0,0,7,7,0,1,0,0,1,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,873,17,2585,1571969,-1,16384,699,174,2585,'0',0,2,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:02:16',201612151702),(35027358,344,'127.0.0.1','3306','localhos',1,'master',5047,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1190,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,873,17,2619,1571969,-1,16384,699,174,2619,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:02:46',201612151702),(35027359,344,'127.0.0.1','3306','localhos',1,'master',5077,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1215,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,874,17,2649,1571968,-1,16384,700,174,2649,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:03:16',201612151703),(35027360,344,'127.0.0.1','3306','localhos',1,'master',5107,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1233,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,874,17,2678,1571968,-1,16384,700,174,2678,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:03:46',201612151703),(35027361,344,'127.0.0.1','3306','localhos',1,'master',5138,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1262,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,874,17,2708,1571968,-1,16384,700,174,2708,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:04:17',201612151704),(35027362,344,'127.0.0.1','3306','localhos',1,'master',5168,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1283,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,874,24,2736,1571968,-1,16384,700,174,2736,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:04:47',201612151704),(35027363,344,'127.0.0.1','3306','localhos',1,'master',5198,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1302,0,12,2,0,10,4,0,0,0,0,0,15,15,0,1,0,0,4,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,874,17,2773,1571968,-1,16384,700,174,2773,'0',0,30,0,0,22,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:05:17',201612151705),(35027364,344,'127.0.0.1','3306','localhos',1,'master',5228,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1321,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,875,22,2801,1571967,-1,16384,701,174,2801,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:05:47',201612151705),(35027365,344,'127.0.0.1','3306','localhos',1,'master',5258,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1340,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,875,17,2834,1571967,-1,16384,701,174,2834,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:06:17',201612151706),(35027366,344,'127.0.0.1','3306','localhos',1,'master',5288,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1362,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,875,17,2866,1571967,-1,16384,701,174,2866,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:06:47',201612151706),(35027367,344,'127.0.0.1','3306','localhos',1,'master',5319,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1381,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,875,17,2894,1571967,-1,16384,701,174,2894,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:07:18',201612151707),(35027368,344,'127.0.0.1','3306','localhos',1,'master',5349,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1399,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,875,17,2922,1571967,-1,16384,701,174,2922,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:07:48',201612151707),(35027369,344,'127.0.0.1','3306','localhos',1,'master',5379,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1416,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,875,24,2954,1571967,-1,16384,701,174,2954,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:08:18',201612151708),(35027370,344,'127.0.0.1','3306','localhos',1,'master',5409,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1446,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,875,17,2987,1571967,-1,16384,701,174,2987,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:08:48',201612151708),(35027371,344,'127.0.0.1','3306','localhos',1,'master',5440,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1463,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,875,17,3015,1571967,-1,16384,701,174,3015,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:09:19',201612151709),(35027372,344,'127.0.0.1','3306','localhos',1,'master',5470,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1490,0,12,4,0,10,4,0,0,0,0,0,13,13,0,1,0,0,4,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,876,17,3045,1571966,-1,16384,702,174,3045,'0',0,12,0,0,4,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.20','     0.00','     0.00','     0.03','2016-12-15 09:09:49',201612151709),(35027373,344,'127.0.0.1','3306','localhos',1,'master',5500,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1511,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,876,17,3073,1571966,-1,16384,702,174,3073,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:10:19',201612151710),(35027374,344,'127.0.0.1','3306','localhos',1,'master',5530,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1530,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,876,17,3101,1571966,-1,16384,702,174,3101,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:10:49',201612151710),(35027375,344,'127.0.0.1','3306','localhos',1,'master',5560,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1549,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,876,17,3133,1571966,-1,16384,702,174,3133,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:11:19',201612151711),(35027376,344,'127.0.0.1','3306','localhos',1,'master',5590,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1566,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,877,27,3161,1571965,-1,16384,703,174,3161,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:11:50',201612151711),(35027377,344,'127.0.0.1','3306','localhos',1,'master',5621,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1583,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,877,17,3197,1571965,-1,16384,703,174,3197,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:12:20',201612151712),(35027378,344,'127.0.0.1','3306','localhos',1,'master',5651,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1600,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,878,17,3227,1571964,-1,16384,704,174,3227,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:12:50',201612151712),(35027379,344,'127.0.0.1','3306','localhos',1,'master',5681,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1621,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,878,17,3255,1571964,-1,16384,704,174,3255,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:13:20',201612151713),(35027380,344,'127.0.0.1','3306','localhos',1,'master',5711,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1638,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3287,1571962,-1,16384,706,174,3287,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:13:50',201612151713),(35027381,344,'127.0.0.1','3306','localhos',1,'master',5741,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1659,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3315,1571962,-1,16384,706,174,3315,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:14:20',201612151714),(35027382,344,'127.0.0.1','3306','localhos',1,'master',5772,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1692,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3362,1571962,-1,16384,706,174,3362,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:14:51',201612151714),(35027383,344,'127.0.0.1','3306','localhos',1,'master',5802,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1711,0,12,1,0,9,1,0,0,0,0,0,7,7,0,1,0,0,1,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3390,1571962,-1,16384,706,174,3390,'0',0,2,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:15:21',201612151715),(35027384,344,'127.0.0.1','3306','localhos',1,'master',5832,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1741,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,26,3418,1571962,-1,16384,706,174,3418,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:15:51',201612151715),(35027385,344,'127.0.0.1','3306','localhos',1,'master',5862,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1762,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3453,1571962,-1,16384,706,174,3453,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:16:21',201612151716),(35027386,344,'127.0.0.1','3306','localhos',1,'master',5892,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,12,1,0,14,2,1782,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3481,1571962,-1,16384,706,174,3481,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:16:51',201612151716),(35027387,344,'127.0.0.1','3306','localhos',1,'master',5922,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,12,1,0,14,2,1799,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3509,1571962,-1,16384,706,174,3509,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.21','     0.00','     0.00','     0.03','2016-12-15 09:17:21',201612151717),(35027388,344,'127.0.0.1','3306','localhos',1,'master',5953,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,12,1,0,14,2,1819,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3537,1571962,-1,16384,706,174,3537,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:17:52',201612151717),(35027389,344,'127.0.0.1','3306','localhos',1,'master',5983,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,12,1,0,14,2,1838,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3565,1571962,-1,16384,706,174,3565,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:18:22',201612151718),(35027390,344,'127.0.0.1','3306','localhos',1,'master',6013,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,12,1,0,14,2,1860,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3597,1571962,-1,16384,706,174,3597,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:18:52',201612151718),(35027391,344,'127.0.0.1','3306','localhos',1,'master',6043,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,12,1,0,14,2,1893,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,17,3625,1571962,-1,16384,706,174,3625,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:19:22',201612151719),(35027392,344,'127.0.0.1','3306','localhos',1,'master',6073,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,12,1,0,14,2,1912,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,19,3653,1571962,-1,16384,706,174,3653,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:19:52',201612151719),(35027393,344,'127.0.0.1','3306','localhos',1,'master',6103,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,12,1,0,14,2,1932,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,880,24,3683,1571962,-1,16384,706,174,3683,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:20:22',201612151720),(35027394,344,'127.0.0.1','3306','localhos',1,'master',6134,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1950,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,881,17,3718,1571961,-1,16384,707,174,3718,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:20:53',201612151720),(35027395,344,'127.0.0.1','3306','localhos',1,'master',6164,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1968,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,882,22,3745,1571960,-1,16384,708,174,3745,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:21:23',201612151721),(35027396,344,'127.0.0.1','3306','localhos',1,'master',6194,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,1985,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,882,17,3777,1571960,-1,16384,708,174,3777,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:21:53',201612151721),(35027397,344,'127.0.0.1','3306','localhos',1,'master',6224,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2002,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,882,17,3804,1571960,-1,16384,708,174,3804,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:22:23',201612151722),(35027398,344,'127.0.0.1','3306','localhos',1,'master',6254,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2027,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,882,17,3844,1571960,-1,16384,708,174,3844,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:22:53',201612151722),(35027399,344,'127.0.0.1','3306','localhos',1,'master',6285,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2051,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,3873,1571959,-1,16384,709,174,3873,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:23:24',201612151723),(35027400,344,'127.0.0.1','3306','localhos',1,'master',6315,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2075,0,12,1,0,9,2,0,0,0,0,0,8,8,0,1,0,0,2,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,3900,1571959,-1,16384,709,174,3900,'0',0,15,0,0,11,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:23:54',201612151723),(35027401,344,'127.0.0.1','3306','localhos',1,'master',6345,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2094,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,3933,1571959,-1,16384,709,174,3933,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:24:24',201612151724),(35027402,344,'127.0.0.1','3306','localhos',1,'master',6375,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2110,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,3962,1571959,-1,16384,709,174,3962,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:24:54',201612151724),(35027403,344,'127.0.0.1','3306','localhos',1,'master',6405,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2126,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,27,3989,1571959,-1,16384,709,174,3989,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:25:24',201612151725),(35027404,344,'127.0.0.1','3306','localhos',1,'master',6436,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2142,0,12,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4024,1571959,-1,16384,709,174,4024,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:25:55',201612151725),(35027405,344,'127.0.0.1','3306','localhos',1,'master',6466,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2180,0,34,1,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4051,1571959,-1,16384,709,174,4051,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:26:25',201612151726),(35027406,344,'127.0.0.1','3306','localhos',1,'master',6496,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2213,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4078,1571959,-1,16384,709,174,4078,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:26:55',201612151726),(35027407,344,'127.0.0.1','3306','localhos',1,'master',6527,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2231,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4105,1571959,-1,16384,709,174,4105,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:27:26',201612151727),(35027408,344,'127.0.0.1','3306','localhos',1,'master',6557,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2248,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4132,1571959,-1,16384,709,174,4132,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:27:56',201612151727),(35027409,344,'127.0.0.1','3306','localhos',1,'master',6587,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2264,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4159,1571959,-1,16384,709,174,4159,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:28:26',201612151728),(35027410,344,'127.0.0.1','3306','localhos',1,'master',6618,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2280,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4188,1571959,-1,16384,709,174,4188,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.22','     0.00','     0.00','     0.03','2016-12-15 09:28:57',201612151728),(35027411,344,'127.0.0.1','3306','localhos',1,'master',6648,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2300,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4215,1571959,-1,16384,709,174,4215,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:29:27',201612151729),(35027412,344,'127.0.0.1','3306','localhos',1,'master',6678,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2317,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4242,1571959,-1,16384,709,174,4242,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:29:57',201612151729),(35027413,344,'127.0.0.1','3306','localhos',1,'master',6708,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2333,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4270,1571959,-1,16384,709,174,4270,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:30:27',201612151730),(35027414,344,'127.0.0.1','3306','localhos',1,'master',6738,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2352,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,34,4297,1571959,-1,16384,709,174,4297,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:30:57',201612151730),(35027415,344,'127.0.0.1','3306','localhos',1,'master',6769,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2374,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4343,1571959,-1,16384,709,174,4343,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:31:28',201612151731),(35027416,344,'127.0.0.1','3306','localhos',1,'master',6799,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2394,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4370,1571959,-1,16384,709,174,4370,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:31:58',201612151731),(35027417,344,'127.0.0.1','3306','localhos',1,'master',6829,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2410,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4397,1571959,-1,16384,709,174,4397,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:32:28',201612151732),(35027418,344,'127.0.0.1','3306','localhos',1,'master',6859,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2426,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4425,1571959,-1,16384,709,174,4425,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:32:58',201612151732),(35027419,344,'127.0.0.1','3306','localhos',1,'master',6889,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2450,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,883,17,4452,1571959,-1,16384,709,174,4452,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:33:28',201612151733),(35027420,344,'127.0.0.1','3306','localhos',1,'master',6920,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2481,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,884,17,4484,1571958,-1,16384,710,174,4484,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:33:59',201612151733),(35027421,344,'127.0.0.1','3306','localhos',1,'master',6950,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2508,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,884,17,4511,1571958,-1,16384,710,174,4511,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:34:29',201612151734),(35027422,344,'127.0.0.1','3306','localhos',1,'master',6982,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2526,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,884,9,4546,1571958,-1,16384,710,174,4546,'0',1,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:35:01',201612151735),(35027423,344,'127.0.0.1','3306','localhos',1,'master',7012,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2544,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,884,17,4568,1571958,-1,16384,710,174,4568,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:35:31',201612151735),(35027424,344,'127.0.0.1','3306','localhos',1,'master',7042,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2566,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,884,17,4599,1571958,-1,16384,710,174,4599,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:36:01',201612151736),(35027425,344,'127.0.0.1','3306','localhos',1,'master',7072,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2585,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,884,17,4628,1571958,-1,16384,710,174,4628,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:36:31',201612151736),(35027426,344,'127.0.0.1','3306','localhos',1,'master',7103,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2603,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,29,4655,1571957,-1,16384,711,174,4655,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:37:02',201612151737),(35027427,344,'127.0.0.1','3306','localhos',1,'master',7133,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2621,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,4692,1571957,-1,16384,711,174,4692,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:37:32',201612151737),(35027428,344,'127.0.0.1','3306','localhos',1,'master',7163,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2637,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,19,4722,1571957,-1,16384,711,174,4722,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:38:02',201612151738),(35027429,344,'127.0.0.1','3306','localhos',1,'master',7193,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2657,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,4751,1571957,-1,16384,711,174,4751,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:38:32',201612151738),(35027430,344,'127.0.0.1','3306','localhos',1,'master',7224,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2673,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,4778,1571957,-1,16384,711,174,4778,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:39:03',201612151739),(35027431,344,'127.0.0.1','3306','localhos',1,'master',7254,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2693,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,4829,1571957,-1,16384,711,174,4829,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:39:33',201612151739),(35027432,344,'127.0.0.1','3306','localhos',1,'master',7284,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2709,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,4856,1571957,-1,16384,711,174,4856,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:40:03',201612151740),(35027433,344,'127.0.0.1','3306','localhos',1,'master',7314,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2731,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,19,4883,1571957,-1,16384,711,174,4883,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:40:33',201612151740),(35027434,344,'127.0.0.1','3306','localhos',1,'master',7347,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2747,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,9,4921,1571957,-1,16384,711,174,4921,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:41:06',201612151741),(35027435,344,'127.0.0.1','3306','localhos',1,'master',7377,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2763,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,19,4940,1571957,-1,16384,711,174,4940,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:41:36',201612151741),(35027436,344,'127.0.0.1','3306','localhos',1,'master',7407,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2779,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,4970,1571957,-1,16384,711,174,4970,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:42:06',201612151742),(35027437,344,'127.0.0.1','3306','localhos',1,'master',7437,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2795,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5000,1571957,-1,16384,711,174,5000,'0',0,0,0,0,0,0,0,0,'     0.00','     0.99','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:42:36',201612151742),(35027438,344,'127.0.0.1','3306','localhos',1,'master',7468,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2811,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5029,1571957,-1,16384,711,174,5029,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.23','     0.00','     0.00','     0.03','2016-12-15 09:43:07',201612151743),(35027439,344,'127.0.0.1','3306','localhos',1,'master',7498,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,2827,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5056,1571957,-1,16384,711,174,5056,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:43:37',201612151743),(35027440,344,'127.0.0.1','3306','localhos',1,'master',7528,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,2843,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,24,5083,1571957,-1,16384,711,174,5083,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:44:07',201612151744),(35027441,344,'127.0.0.1','3306','localhos',1,'master',7558,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,2859,0,50,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5115,1571957,-1,16384,711,174,5115,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:44:37',201612151744),(35027442,344,'127.0.0.1','3306','localhos',1,'master',7588,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,11,1,0,14,3,2881,0,54,1,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,19,5142,1571957,-1,16384,711,174,5142,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:45:07',201612151745),(35027443,344,'127.0.0.1','3306','localhos',1,'master',7618,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,2899,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5171,1571957,-1,16384,711,174,5171,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:45:37',201612151745),(35027444,344,'127.0.0.1','3306','localhos',1,'master',7649,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,2915,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,19,5198,1571957,-1,16384,711,174,5198,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:46:08',201612151746),(35027445,344,'127.0.0.1','3306','localhos',1,'master',7680,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,2931,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5227,1571957,-1,16384,711,174,5227,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:46:39',201612151746),(35027446,344,'127.0.0.1','3306','localhos',1,'master',7710,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,2947,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5254,1571957,-1,16384,711,174,5254,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:47:09',201612151747),(35027447,344,'127.0.0.1','3306','localhos',1,'master',7740,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,2963,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5286,1571957,-1,16384,711,174,5286,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:47:39',201612151747),(35027448,344,'127.0.0.1','3306','localhos',1,'master',7770,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,2979,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5315,1571957,-1,16384,711,174,5315,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:48:09',201612151748),(35027449,344,'127.0.0.1','3306','localhos',1,'master',7801,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,2995,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5365,1571957,-1,16384,711,174,5365,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:48:40',201612151748),(35027450,344,'127.0.0.1','3306','localhos',1,'master',7831,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3011,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5392,1571957,-1,16384,711,174,5392,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:49:10',201612151749),(35027451,344,'127.0.0.1','3306','localhos',1,'master',7861,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3027,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5421,1571957,-1,16384,711,174,5421,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:49:40',201612151749),(35027452,344,'127.0.0.1','3306','localhos',1,'master',7891,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3043,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5450,1571957,-1,16384,711,174,5450,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:50:10',201612151750),(35027453,344,'127.0.0.1','3306','localhos',1,'master',7921,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3059,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5477,1571957,-1,16384,711,174,5477,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:50:40',201612151750),(35027454,344,'127.0.0.1','3306','localhos',1,'master',7951,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3075,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5504,1571957,-1,16384,711,174,5504,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:51:10',201612151751),(35027455,344,'127.0.0.1','3306','localhos',1,'master',7981,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3091,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,24,5531,1571957,-1,16384,711,174,5531,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:51:40',201612151751),(35027456,344,'127.0.0.1','3306','localhos',1,'master',8012,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3107,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,885,17,5563,1571957,-1,16384,711,174,5563,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:52:11',201612151752),(35027457,344,'127.0.0.1','3306','localhos',1,'master',8043,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3123,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,22,5590,1571956,-1,16384,712,174,5590,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:52:42',201612151752),(35027458,344,'127.0.0.1','3306','localhos',1,'master',8074,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3139,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5622,1571956,-1,16384,712,174,5622,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:53:13',201612151753),(35027459,344,'127.0.0.1','3306','localhos',1,'master',8104,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3155,0,56,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5649,1571956,-1,16384,712,174,5649,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:53:43',201612151753),(35027460,344,'127.0.0.1','3306','localhos',1,'master',8134,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3176,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5676,1571956,-1,16384,712,174,5676,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:54:13',201612151754),(35027461,344,'127.0.0.1','3306','localhos',1,'master',8164,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3192,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5703,1571956,-1,16384,712,174,5703,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:54:43',201612151754),(35027462,344,'127.0.0.1','3306','localhos',1,'master',8194,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3208,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5730,1571956,-1,16384,712,174,5730,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:55:13',201612151755),(35027463,344,'127.0.0.1','3306','localhos',1,'master',8224,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3224,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5759,1571956,-1,16384,712,174,5759,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:55:43',201612151755),(35027464,344,'127.0.0.1','3306','localhos',1,'master',8255,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3240,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5788,1571956,-1,16384,712,174,5788,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:56:14',201612151756),(35027465,344,'127.0.0.1','3306','localhos',1,'master',8285,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3256,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5815,1571956,-1,16384,712,174,5815,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:56:44',201612151756),(35027466,344,'127.0.0.1','3306','localhos',1,'master',8315,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3272,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5850,1571956,-1,16384,712,174,5850,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.24','     0.00','     0.00','     0.03','2016-12-15 09:57:14',201612151757),(35027467,344,'127.0.0.1','3306','localhos',1,'master',8345,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3288,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5877,1571956,-1,16384,712,174,5877,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 09:57:44',201612151757),(35027468,344,'127.0.0.1','3306','localhos',1,'master',8375,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3304,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5904,1571956,-1,16384,712,174,5904,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 09:58:14',201612151758),(35027469,344,'127.0.0.1','3306','localhos',1,'master',8406,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3320,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,19,5935,1571956,-1,16384,712,174,5935,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 09:58:45',201612151758),(35027470,344,'127.0.0.1','3306','localhos',1,'master',8436,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3336,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5964,1571956,-1,16384,712,174,5964,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 09:59:15',201612151759),(35027471,344,'127.0.0.1','3306','localhos',1,'master',8466,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3352,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,5991,1571956,-1,16384,712,174,5991,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 09:59:45',201612151759),(35027472,344,'127.0.0.1','3306','localhos',1,'master',8496,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3368,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,27,6018,1571956,-1,16384,712,174,6018,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:00:15',201612151800),(35027473,344,'127.0.0.1','3306','localhos',1,'master',8526,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3384,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,19,6053,1571956,-1,16384,712,174,6053,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:00:45',201612151800),(35027474,344,'127.0.0.1','3306','localhos',1,'master',8556,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3400,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6082,1571956,-1,16384,712,174,6082,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:01:15',201612151801),(35027475,344,'127.0.0.1','3306','localhos',1,'master',8587,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3416,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6109,1571956,-1,16384,712,174,6109,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:01:46',201612151801),(35027476,344,'127.0.0.1','3306','localhos',1,'master',8617,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3432,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6136,1571956,-1,16384,712,174,6136,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:02:16',201612151802),(35027477,344,'127.0.0.1','3306','localhos',1,'master',8647,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3448,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6163,1571956,-1,16384,712,174,6163,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:02:46',201612151802),(35027478,344,'127.0.0.1','3306','localhos',1,'master',8677,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3464,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,19,6190,1571956,-1,16384,712,174,6190,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:03:16',201612151803),(35027479,344,'127.0.0.1','3306','localhos',1,'master',8708,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3480,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6219,1571956,-1,16384,712,174,6219,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:03:47',201612151803),(35027480,344,'127.0.0.1','3306','localhos',1,'master',8738,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3496,0,60,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6246,1571956,-1,16384,712,174,6246,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:04:17',201612151804),(35027481,344,'127.0.0.1','3306','localhos',1,'master',8768,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3516,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6273,1571956,-1,16384,712,174,6273,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:04:47',201612151804),(35027482,344,'127.0.0.1','3306','localhos',1,'master',8798,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3532,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6301,1571956,-1,16384,712,174,6301,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:05:17',201612151805),(35027483,344,'127.0.0.1','3306','localhos',1,'master',8828,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3548,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6337,1571956,-1,16384,712,174,6337,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:05:47',201612151805),(35027484,344,'127.0.0.1','3306','localhos',1,'master',8859,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3564,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6364,1571956,-1,16384,712,174,6364,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:06:18',201612151806),(35027485,344,'127.0.0.1','3306','localhos',1,'master',8889,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3580,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6391,1571956,-1,16384,712,174,6391,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:06:48',201612151806),(35027486,344,'127.0.0.1','3306','localhos',1,'master',8919,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3596,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,17,6419,1571956,-1,16384,712,174,6419,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:07:18',201612151807),(35027487,344,'127.0.0.1','3306','localhos',1,'master',8949,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3612,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,886,19,6446,1571956,-1,16384,712,174,6446,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:07:48',201612151807),(35027488,344,'127.0.0.1','3306','localhos',1,'master',8979,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3628,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,22,6475,1571955,-1,16384,713,174,6475,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:08:18',201612151808),(35027489,344,'127.0.0.1','3306','localhos',1,'master',9010,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3644,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6507,1571955,-1,16384,713,174,6507,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:08:49',201612151808),(35027490,344,'127.0.0.1','3306','localhos',1,'master',9040,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3660,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6534,1571955,-1,16384,713,174,6534,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:09:19',201612151809),(35027491,344,'127.0.0.1','3306','localhos',1,'master',9070,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3676,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,24,6565,1571955,-1,16384,713,174,6565,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:09:49',201612151809),(35027492,344,'127.0.0.1','3306','localhos',1,'master',9100,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3692,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6597,1571955,-1,16384,713,174,6597,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:10:19',201612151810),(35027493,344,'127.0.0.1','3306','localhos',1,'master',9130,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3708,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6626,1571955,-1,16384,713,174,6626,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:10:49',201612151810),(35027494,344,'127.0.0.1','3306','localhos',1,'master',9160,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3724,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6653,1571955,-1,16384,713,174,6653,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:11:19',201612151811),(35027495,344,'127.0.0.1','3306','localhos',1,'master',9190,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3740,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,19,6680,1571955,-1,16384,713,174,6680,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:11:49',201612151811),(35027496,344,'127.0.0.1','3306','localhos',1,'master',9221,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3756,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6709,1571955,-1,16384,713,174,6709,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:12:20',201612151812),(35027497,344,'127.0.0.1','3306','localhos',1,'master',9252,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3772,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6736,1571955,-1,16384,713,174,6736,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:12:51',201612151812),(35027498,344,'127.0.0.1','3306','localhos',1,'master',9282,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3788,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6763,1571955,-1,16384,713,174,6763,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:13:21',201612151813),(35027499,344,'127.0.0.1','3306','localhos',1,'master',9312,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3804,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6790,1571955,-1,16384,713,174,6790,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:13:51',201612151813),(35027500,344,'127.0.0.1','3306','localhos',1,'master',9342,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3820,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6834,1571955,-1,16384,713,174,6834,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:14:21',201612151814),(35027501,344,'127.0.0.1','3306','localhos',1,'master',9372,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3836,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6861,1571955,-1,16384,713,174,6861,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.25','     0.00','     0.00','     0.03','2016-12-15 10:14:51',201612151814),(35027502,344,'127.0.0.1','3306','localhos',1,'master',9403,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3852,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6888,1571955,-1,16384,713,174,6888,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.26','     0.00','     0.00','     0.03','2016-12-15 10:15:22',201612151815),(35027503,344,'127.0.0.1','3306','localhos',1,'master',9433,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3868,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6915,1571955,-1,16384,713,174,6915,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.26','     0.00','     0.00','     0.03','2016-12-15 10:15:52',201612151815),(35027504,344,'127.0.0.1','3306','localhos',1,'master',9463,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3884,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6944,1571955,-1,16384,713,174,6944,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.26','     0.00','     0.00','     0.03','2016-12-15 10:16:22',201612151816),(35027505,344,'127.0.0.1','3306','localhos',1,'master',9493,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3900,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,6972,1571955,-1,16384,713,174,6972,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.26','     0.00','     0.00','     0.03','2016-12-15 10:16:52',201612151816),(35027506,344,'127.0.0.1','3306','localhos',1,'master',9524,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3916,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,19,7001,1571955,-1,16384,713,174,7001,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.26','     0.00','     0.00','     0.03','2016-12-15 10:17:23',201612151817),(35027507,344,'127.0.0.1','3306','localhos',1,'master',9557,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3941,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,9,7040,1571955,-1,16384,713,174,7039,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.26','     0.00','     0.00','     0.03','2016-12-15 10:17:56',201612151817),(35027508,344,'127.0.0.1','3306','localhos',1,'master',9587,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3968,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,7061,1571955,-1,16384,713,174,7061,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.26','     0.00','     0.00','     0.03','2016-12-15 10:18:26',201612151818),(35027509,344,'127.0.0.1','3306','localhos',1,'master',9618,'5.6.27-yunmm-log',3000,100,65536,49,4096,115,32,134217728,67108864,10,1,0,14,4,3984,0,63,0,0,9,0,0,0,0,0,0,1,1,0,1,0,0,0,0,134217728,2097152,2097152,0,107170,1,0,0,0,0,'5.6.27',32,25769803776,'ON','ON',1,'O_DIRECT',0,1000,8,8,1572848,887,17,7088,1571955,-1,16384,713,174,7088,'0',0,0,0,0,0,0,0,0,'     0.00','     1.00','     0.80','     0.33','     0.00','     0.26','     0.00','     0.00','     0.03','2016-12-15 10:18:57',201612151818);
/*!40000 ALTER TABLE `mysql_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `name` varchar(150) DEFAULT NULL,
  `value` varchar(765) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES ('monitor','1','是否开启全局监控,此项如果关闭则所有项目都不会被监控，下面监控选项都失效'),('monitor_mysql','1','是否开启MySQL状态监控'),('send_alarm_mail','1','是否发送报警邮件'),('send_mail_to_list','','报警邮件通知人员'),('monitor_os','1','是否开启OS监控'),('monitor_mongodb','1','是否监控MongoDB'),('alarm','1','是否开启告警'),('send_mail_max_count','1','发送邮件最大次数'),('frequency_monitor','30','监控频率'),('send_mail_sleep_time','720','发送邮件休眠时间(分钟)'),('mailtype','html','邮件发送配置:邮件类型'),('mailprotocol','smtp','邮件发送配置:邮件协议'),('smtp_host','smtp.qq.com','邮件发送配置:邮件主机'),('smtp_port','25','邮件发送配置:邮件端口'),('smtp_user','85531861@qq.com','邮件发送配置:用户'),('smtp_pass','123456','邮件发送配置:密码'),('smtp_timeout','10','邮件发送配置:超时时间'),('mailfrom','85531861@qq.com','邮件发送配置:发件人'),('monitor_redis','1','是否监控Redis'),('send_alarm_sms','1','是否发生短信'),('send_sms_to_list','','短信收件人列表'),('send_sms_max_count','1','发送短信最大次数'),('send_sms_sleep_time','180','发送短信休眠时间(分钟)'),('smstype','api','发送短信方式：fetion/api'),('send_alarm_wx','1','是否发生微信'),('send_wx_max_count','1','发送微信最大次数'),('send_wx_sleep_time','180','发送微信休眠时间(分钟)'),('send_wx_to_list','','微信收件人列表'),('wxtype','weixin','发送告警方式：weixin'),('send_alarm_dingding','1','是否发送钉钉'),('send_dingding_max_count','1','发送钉钉最大次数'),('send_dingding_sleep_time','180','发送告警钉钉消息休眠时间'),('send_dingding_to_list','','告警钉钉消息收件人列表');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `script_auto_issued`
--

LOCK TABLES `script_auto_issued` WRITE;
CREATE TABLE `script_auto_issued` (
  `id` int(11) DEFAULT NULL,
  `issued_button` varchar(300) DEFAULT NULL,
  `script_path` varchar(450) DEFAULT NULL,
  `functions` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
UNLOCK TABLES;
/*!40000 ALTER TABLE `script_auto_issued` DISABLE KEYS */;
INSERT INTO `script_auto_issued` VALUES (1,'backup_script_send','/etc/ansible/gen.py','备份脚本下发'),(2,'db_auto_instll','/etc/ansible/gen.py','db自动化安装下发'),(3,'slow_upload_start','/etc/ansible/slow_collect.sh','slowlog上传'),(4,'genral_log_upload_start','/etc/ansible/gen.py','generallog上传'),(5,'send_script','/etc/ansible/gen.py','脚本下发'),(6,'command_exec','','命令执行'),(7,'other','/etc/ansible/gen.py','命令执行'),(8,'slow_install_packet_send','/etc/ansible/percona-toolkit_2.2.16-1.tar.gz','percona包下发'),(12,'slow_exec_packet_insatll','/etc/ansible/pt_toolkit_install.sh','percona包安装脚本');
/*!40000 ALTER TABLE `script_auto_issued` ENABLE KEYS */;


--
-- Table structure for table `script_auto_issued_hostlist`
--

DROP TABLE IF EXISTS `script_auto_issued_hostlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script_auto_issued_hostlist` (
  `id` int(11) DEFAULT NULL,
  `issued_button` varchar(1800) DEFAULT NULL,
  `ansible_host_group` varchar(2700) DEFAULT NULL,
  `functions` varchar(900) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_auto_issued_hostlist`
--

LOCK TABLES `script_auto_issued_hostlist` WRITE;
/*!40000 ALTER TABLE `script_auto_issued_hostlist` DISABLE KEYS */;
INSERT INTO `script_auto_issued_hostlist` VALUES (1,'','dbtest','db测试主机组'),(2,'','test','db测试环境主机');
/*!40000 ALTER TABLE `script_auto_issued_hostlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'GuiJiaoQi','GuiJiaoQi');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-15 18:19:27
