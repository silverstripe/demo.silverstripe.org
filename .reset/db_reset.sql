-- MySQL dump 10.13  Distrib 8.0.40, for Linux (aarch64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BlocksPage`
--

DROP TABLE IF EXISTS `BlocksPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlocksPage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ElementalAreaID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ElementalAreaID` (`ElementalAreaID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlocksPage`
--

LOCK TABLES `BlocksPage` WRITE;
/*!40000 ALTER TABLE `BlocksPage` DISABLE KEYS */;
INSERT INTO `BlocksPage` VALUES (4,1);
/*!40000 ALTER TABLE `BlocksPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlocksPage_Live`
--

DROP TABLE IF EXISTS `BlocksPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlocksPage_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ElementalAreaID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ElementalAreaID` (`ElementalAreaID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlocksPage_Live`
--

LOCK TABLES `BlocksPage_Live` WRITE;
/*!40000 ALTER TABLE `BlocksPage_Live` DISABLE KEYS */;
INSERT INTO `BlocksPage_Live` VALUES (4,1);
/*!40000 ALTER TABLE `BlocksPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlocksPage_Versions`
--

DROP TABLE IF EXISTS `BlocksPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BlocksPage_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `ElementalAreaID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `ElementalAreaID` (`ElementalAreaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlocksPage_Versions`
--

LOCK TABLES `BlocksPage_Versions` WRITE;
/*!40000 ALTER TABLE `BlocksPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlocksPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrokenExternalLink`
--

DROP TABLE IF EXISTS `BrokenExternalLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BrokenExternalLink` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalLink') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Link` varchar(2083) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HTTPCode` int NOT NULL DEFAULT '0',
  `TrackID` int NOT NULL DEFAULT '0',
  `StatusID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `TrackID` (`TrackID`),
  KEY `StatusID` (`StatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrokenExternalLink`
--

LOCK TABLES `BrokenExternalLink` WRITE;
/*!40000 ALTER TABLE `BrokenExternalLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrokenExternalLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrokenExternalPageTrack`
--

DROP TABLE IF EXISTS `BrokenExternalPageTrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BrokenExternalPageTrack` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalPageTrack') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalPageTrack',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Processed` tinyint unsigned NOT NULL DEFAULT '0',
  `PageID` int NOT NULL DEFAULT '0',
  `StatusID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `PageID` (`PageID`),
  KEY `StatusID` (`StatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrokenExternalPageTrack`
--

LOCK TABLES `BrokenExternalPageTrack` WRITE;
/*!40000 ALTER TABLE `BrokenExternalPageTrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrokenExternalPageTrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrokenExternalPageTrackStatus`
--

DROP TABLE IF EXISTS `BrokenExternalPageTrackStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BrokenExternalPageTrackStatus` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Status` enum('Completed','Running') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Running',
  `JobInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrokenExternalPageTrackStatus`
--

LOCK TABLES `BrokenExternalPageTrackStatus` WRITE;
/*!40000 ALTER TABLE `BrokenExternalPageTrackStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrokenExternalPageTrackStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeSet`
--

DROP TABLE IF EXISTS `ChangeSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChangeSet` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSet') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Versioned\\ChangeSet',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` enum('open','published','reverted') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'open',
  `OwnerID` int NOT NULL DEFAULT '0',
  `IsInferred` tinyint unsigned NOT NULL DEFAULT '0',
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PublishDate` datetime DEFAULT NULL,
  `LastSynced` datetime DEFAULT NULL,
  `PublisherID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`),
  KEY `PublisherID` (`PublisherID`),
  KEY `State` (`State`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeSet`
--

LOCK TABLES `ChangeSet` WRITE;
/*!40000 ALTER TABLE `ChangeSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ChangeSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeSetItem`
--

DROP TABLE IF EXISTS `ChangeSetItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChangeSetItem` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSetItem') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Versioned\\ChangeSetItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `VersionBefore` int NOT NULL DEFAULT '0',
  `VersionAfter` int NOT NULL DEFAULT '0',
  `Added` enum('explicitly','implicitly') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'implicitly',
  `ChangeSetID` int NOT NULL DEFAULT '0',
  `ObjectID` int NOT NULL DEFAULT '0',
  `ObjectClass` enum('SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','HomePage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ObjectUniquePerChangeSet` (`ObjectID`,`ObjectClass`,`ChangeSetID`),
  KEY `ChangeSetID` (`ChangeSetID`),
  KEY `ObjectID` (`ObjectID`),
  KEY `ClassName` (`ClassName`),
  KEY `Object` (`ObjectID`,`ObjectClass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeSetItem`
--

LOCK TABLES `ChangeSetItem` WRITE;
/*!40000 ALTER TABLE `ChangeSetItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ChangeSetItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeSetItem_ReferencedBy`
--

DROP TABLE IF EXISTS `ChangeSetItem_ReferencedBy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChangeSetItem_ReferencedBy` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ChangeSetItemID` int NOT NULL DEFAULT '0',
  `ChildID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ChangeSetItemID` (`ChangeSetItemID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeSetItem_ReferencedBy`
--

LOCK TABLES `ChangeSetItem_ReferencedBy` WRITE;
/*!40000 ALTER TABLE `ChangeSetItem_ReferencedBy` DISABLE KEYS */;
/*!40000 ALTER TABLE `ChangeSetItem_ReferencedBy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CronTaskStatus`
--

DROP TABLE IF EXISTS `CronTaskStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CronTaskStatus` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CronTask\\CronTaskStatus') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\CronTask\\CronTaskStatus',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `TaskClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastChecked` datetime DEFAULT NULL,
  `LastRun` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CronTaskStatus`
--

LOCK TABLES `CronTaskStatus` WRITE;
/*!40000 ALTER TABLE `CronTaskStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `CronTaskStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Element`
--

DROP TABLE IF EXISTS `Element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Element` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('DNADesign\\Elemental\\Models\\BaseElement','MyBlock','DNADesign\\Elemental\\Models\\ElementContent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'DNADesign\\Elemental\\Models\\BaseElement',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int NOT NULL DEFAULT '0',
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowTitle` tinyint unsigned NOT NULL DEFAULT '0',
  `Sort` int NOT NULL DEFAULT '0',
  `ExtraClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TopPageID` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `TopPageID` (`TopPageID`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Element`
--

LOCK TABLES `Element` WRITE;
/*!40000 ALTER TABLE `Element` DISABLE KEYS */;
/*!40000 ALTER TABLE `Element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ElementContent`
--

DROP TABLE IF EXISTS `ElementContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ElementContent` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `HTML` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ElementContent`
--

LOCK TABLES `ElementContent` WRITE;
/*!40000 ALTER TABLE `ElementContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ElementContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ElementContent_Live`
--

DROP TABLE IF EXISTS `ElementContent_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ElementContent_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `HTML` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ElementContent_Live`
--

LOCK TABLES `ElementContent_Live` WRITE;
/*!40000 ALTER TABLE `ElementContent_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `ElementContent_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ElementContent_Versions`
--

DROP TABLE IF EXISTS `ElementContent_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ElementContent_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `HTML` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ElementContent_Versions`
--

LOCK TABLES `ElementContent_Versions` WRITE;
/*!40000 ALTER TABLE `ElementContent_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ElementContent_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Element_Live`
--

DROP TABLE IF EXISTS `Element_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Element_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('DNADesign\\Elemental\\Models\\BaseElement','MyBlock','DNADesign\\Elemental\\Models\\ElementContent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'DNADesign\\Elemental\\Models\\BaseElement',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int NOT NULL DEFAULT '0',
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowTitle` tinyint unsigned NOT NULL DEFAULT '0',
  `Sort` int NOT NULL DEFAULT '0',
  `ExtraClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TopPageID` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `TopPageID` (`TopPageID`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Element_Live`
--

LOCK TABLES `Element_Live` WRITE;
/*!40000 ALTER TABLE `Element_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `Element_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Element_Versions`
--

DROP TABLE IF EXISTS `Element_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Element_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `WasPublished` tinyint unsigned NOT NULL DEFAULT '0',
  `WasDeleted` tinyint unsigned NOT NULL DEFAULT '0',
  `WasDraft` tinyint unsigned NOT NULL DEFAULT '1',
  `AuthorID` int NOT NULL DEFAULT '0',
  `PublisherID` int NOT NULL DEFAULT '0',
  `ClassName` enum('DNADesign\\Elemental\\Models\\BaseElement','MyBlock','DNADesign\\Elemental\\Models\\ElementContent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'DNADesign\\Elemental\\Models\\BaseElement',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowTitle` tinyint unsigned NOT NULL DEFAULT '0',
  `Sort` int NOT NULL DEFAULT '0',
  `ExtraClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TopPageID` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `Sort` (`Sort`),
  KEY `ClassName` (`ClassName`),
  KEY `TopPageID` (`TopPageID`),
  KEY `ParentID` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Element_Versions`
--

LOCK TABLES `Element_Versions` WRITE;
/*!40000 ALTER TABLE `Element_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Element_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ElementalArea`
--

DROP TABLE IF EXISTS `ElementalArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ElementalArea` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('DNADesign\\Elemental\\Models\\ElementalArea') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'DNADesign\\Elemental\\Models\\ElementalArea',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int NOT NULL DEFAULT '0',
  `OwnerClassName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TopPageID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `TopPageID` (`TopPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ElementalArea`
--

LOCK TABLES `ElementalArea` WRITE;
/*!40000 ALTER TABLE `ElementalArea` DISABLE KEYS */;
INSERT INTO `ElementalArea` VALUES (1,'DNADesign\\Elemental\\Models\\ElementalArea','2025-06-24 16:46:16','2025-06-24 16:46:16',1,'BlocksPage',4),(2,'DNADesign\\Elemental\\Models\\ElementalArea','2025-06-24 16:46:16','2025-06-24 16:46:16',1,'BlocksPage',4);
/*!40000 ALTER TABLE `ElementalArea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ElementalArea_Live`
--

DROP TABLE IF EXISTS `ElementalArea_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ElementalArea_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('DNADesign\\Elemental\\Models\\ElementalArea') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'DNADesign\\Elemental\\Models\\ElementalArea',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int NOT NULL DEFAULT '0',
  `OwnerClassName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TopPageID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `TopPageID` (`TopPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ElementalArea_Live`
--

LOCK TABLES `ElementalArea_Live` WRITE;
/*!40000 ALTER TABLE `ElementalArea_Live` DISABLE KEYS */;
INSERT INTO `ElementalArea_Live` VALUES (2,'DNADesign\\Elemental\\Models\\ElementalArea','2025-06-24 16:46:16','2025-06-24 16:46:16',1,'BlocksPage',0);
/*!40000 ALTER TABLE `ElementalArea_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ElementalArea_Versions`
--

DROP TABLE IF EXISTS `ElementalArea_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ElementalArea_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `WasPublished` tinyint unsigned NOT NULL DEFAULT '0',
  `WasDeleted` tinyint unsigned NOT NULL DEFAULT '0',
  `WasDraft` tinyint unsigned NOT NULL DEFAULT '1',
  `AuthorID` int NOT NULL DEFAULT '0',
  `PublisherID` int NOT NULL DEFAULT '0',
  `ClassName` enum('DNADesign\\Elemental\\Models\\ElementalArea') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'DNADesign\\Elemental\\Models\\ElementalArea',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `OwnerClassName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TopPageID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ClassName` (`ClassName`),
  KEY `TopPageID` (`TopPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ElementalArea_Versions`
--

LOCK TABLES `ElementalArea_Versions` WRITE;
/*!40000 ALTER TABLE `ElementalArea_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ElementalArea_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage`
--

DROP TABLE IF EXISTS `ErrorPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ErrorPage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ErrorCode` int NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=6671 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage`
--

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` VALUES (502,404,0,0),(2802,404,0,0),(6664,404,0,0),(6670,500,0,0);
/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ErrorPage_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ErrorCode` int NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=7209 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage_Live`
--

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` VALUES (502,404,0,0),(6670,500,0,0),(7205,404,0,0),(7206,500,0,0),(7207,404,0,0),(7208,500,0,0);
/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Versions`
--

DROP TABLE IF EXISTS `ErrorPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ErrorPage_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `WasPublished` tinyint unsigned NOT NULL DEFAULT '0',
  `AuthorID` int NOT NULL DEFAULT '0',
  `PublisherID` int NOT NULL DEFAULT '0',
  `ErrorCode` int NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage_Versions`
--

LOCK TABLES `ErrorPage_Versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ErrorPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `File` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Sort` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  `OwnerID` int NOT NULL DEFAULT '0',
  `PopupWidth` int NOT NULL DEFAULT '0',
  `PopupHeight` int NOT NULL DEFAULT '0',
  `Embed` tinyint unsigned NOT NULL DEFAULT '0',
  `LimitDimensions` tinyint unsigned NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint unsigned NOT NULL DEFAULT '1',
  `Version` int NOT NULL DEFAULT '0',
  `FileHash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `Name` (`Name`),
  KEY `FileHash` (`FileHash`)
) ENGINE=InnoDB AUTO_INCREMENT=47501 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (47481,'SilverStripe\\Assets\\Folder','2025-06-24 00:00:02','2025-06-24 00:01:32','Uploads','Uploads',NULL,NULL,0,0,505,0,0,0,0,0,0,4,NULL,NULL,NULL,'Inherit','Inherit'),(47484,'SilverStripe\\Assets\\Image','2025-06-24 00:01:43','2025-07-09 10:28:20','cms-page-edit-large.png','CMS page edit',NULL,NULL,0,47481,505,0,0,0,0,0,1,4,'122ba0a213a802d9d0ba046164da69961af2d53f','Uploads/cms-page-edit-large.png',NULL,'Inherit','Inherit'),(47485,'SilverStripe\\Assets\\Image','2025-06-24 00:01:43','2025-07-09 10:28:57','code.png','Framework code',NULL,NULL,0,47481,505,0,0,0,0,0,1,7,'aa97343bff91137ef6f31c6014de22e4455833ee','Uploads/code.png',NULL,'Inherit','Inherit'),(47490,'SilverStripe\\Assets\\Image','2025-06-24 00:07:31','2025-07-09 10:28:30','text-style.png','Text styles',NULL,NULL,0,47481,505,0,0,0,0,0,1,4,'aff1d73d8244b222c2d5fec27bea2adb404ba6af','Uploads/text-style.png',NULL,'Inherit','Inherit'),(47496,'SilverStripe\\Assets\\Image','2025-07-09 09:40:35','2025-09-30 13:17:52','resources-illustration.png','Resources Illustration',NULL,NULL,0,47481,1,0,0,0,0,0,1,6,'803a9ab2cf0e110d1526ac8b8777fb135175d826','Uploads/resources-illustration.png',NULL,'Inherit','Inherit'),(47497,'SilverStripe\\Assets\\Image','2025-07-09 09:50:46','2025-07-23 14:11:12','layout-illustration.png','Layout illustration',NULL,NULL,0,47481,1,0,0,0,0,0,1,5,'621fbdb8bd7cf939b0edb0d49c62ac3a3df5ef3a','Uploads/layout-illustration.png',NULL,'Inherit','Inherit'),(47498,'SilverStripe\\Assets\\Image','2025-07-09 10:34:46','2025-07-09 10:35:03','silverstripe-cms-illustration.png','Silverstripe CMS illustration',NULL,NULL,0,47481,1,0,0,0,0,0,1,3,'66f540834dfb1dbebfa4cbc8dc872979fbd60ded','Uploads/silverstripe-cms-illustration.png',NULL,'Inherit','Inherit'),(47499,'SilverStripe\\Assets\\Image','2025-07-09 10:34:47','2025-07-09 10:34:53','startup-logo.png','Startup logo',NULL,NULL,0,47481,1,0,0,0,0,0,1,3,'9eb2f94454d5ead2854181c7a99b9f3e9fff2f41','Uploads/startup-logo.png',NULL,'Inherit','Inherit'),(47500,'SilverStripe\\Assets\\Image','2025-07-09 10:34:47','2025-07-09 10:35:11','startup-recipe-illustration.png','Startup Recipe illustration',NULL,NULL,0,47481,1,0,0,0,0,0,1,3,'14d7a2152356f79b8b631477cbba5346d2b7667a','Uploads/startup-recipe-illustration.png',NULL,'Inherit','Inherit');
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileLink`
--

DROP TABLE IF EXISTS `FileLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FileLink` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\Shortcodes\\FileLink') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\Shortcodes\\FileLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  `ParentClass` enum('SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','HomePage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `LinkedID` (`LinkedID`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileLink`
--

LOCK TABLES `FileLink` WRITE;
/*!40000 ALTER TABLE `FileLink` DISABLE KEYS */;
INSERT INTO `FileLink` VALUES (2,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-06-24 00:10:21','2025-06-24 00:10:21',47483,7197,'Page'),(3,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-06-24 00:12:01','2025-06-24 00:12:01',47485,7198,'Page'),(8,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-06-24 00:18:24','2025-06-24 00:18:24',47490,7203,'Page'),(11,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-06-25 05:13:42','2025-06-25 05:13:42',47486,7203,'Page'),(12,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-06-25 05:19:19','2025-06-25 05:19:19',47482,6674,'Page'),(13,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-06-25 05:19:19','2025-06-25 05:19:19',47493,6674,'Page'),(15,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-07-01 11:04:27','2025-07-01 11:04:27',47495,6674,'Page'),(16,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-07-09 09:41:15','2025-07-09 09:41:15',47496,202,'Page'),(17,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-07-09 09:51:12','2025-07-09 09:51:12',47497,86,'HomePage'),(18,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-07-09 10:26:04','2025-07-09 10:26:04',47484,102,'Page'),(19,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-07-09 10:36:54','2025-07-09 10:36:54',47499,6678,'Page'),(20,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-07-09 10:39:13','2025-07-09 10:39:13',47500,6674,'Page'),(21,'SilverStripe\\Assets\\Shortcodes\\FileLink','2025-07-09 11:10:54','2025-07-09 11:10:54',47498,7203,'Page');
/*!40000 ALTER TABLE `FileLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_EditorGroups`
--

DROP TABLE IF EXISTS `File_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `File_EditorGroups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FileID` int NOT NULL DEFAULT '0',
  `GroupID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_EditorGroups`
--

LOCK TABLES `File_EditorGroups` WRITE;
/*!40000 ALTER TABLE `File_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_EditorMembers`
--

DROP TABLE IF EXISTS `File_EditorMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `File_EditorMembers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FileID` int NOT NULL DEFAULT '0',
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_EditorMembers`
--

LOCK TABLES `File_EditorMembers` WRITE;
/*!40000 ALTER TABLE `File_EditorMembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_EditorMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_Live`
--

DROP TABLE IF EXISTS `File_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `File_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInSearch` tinyint unsigned NOT NULL DEFAULT '1',
  `Version` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  `OwnerID` int NOT NULL DEFAULT '0',
  `FileHash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`),
  KEY `Name` (`Name`),
  KEY `FileHash` (`FileHash`)
) ENGINE=InnoDB AUTO_INCREMENT=47501 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_Live`
--

LOCK TABLES `File_Live` WRITE;
/*!40000 ALTER TABLE `File_Live` DISABLE KEYS */;
INSERT INTO `File_Live` VALUES (47397,'SilverStripe\\Assets\\File','2016-05-19 16:58:32','2010-04-01 09:29:30','error-404.html','error-404.html',1,2,0,1,'be4614d8afe7e324dc68adc14f933c5e517d5e90','error-404.html',NULL,'Inherit','Inherit'),(47466,'SilverStripe\\Assets\\File','2016-05-19 16:58:32','2012-06-28 23:45:01','error-500.html','error-500.html',1,2,0,1,'1e63a4d7143f97362e9356cec15b38180d35343b','error-500.html',NULL,'Inherit','Inherit'),(47481,'SilverStripe\\Assets\\Folder','2025-06-24 00:01:32','2025-06-24 00:00:02','Uploads','Uploads',0,4,0,505,NULL,NULL,NULL,'Inherit','Inherit'),(47484,'SilverStripe\\Assets\\Image','2025-07-09 10:28:20','2025-06-24 00:01:43','cms-page-edit-large.png','CMS page edit',1,4,47481,505,'122ba0a213a802d9d0ba046164da69961af2d53f','Uploads/cms-page-edit-large.png',NULL,'Inherit','Inherit'),(47485,'SilverStripe\\Assets\\Image','2025-07-09 10:28:57','2025-06-24 00:01:43','code.png','Framework code',1,7,47481,505,'aa97343bff91137ef6f31c6014de22e4455833ee','Uploads/code.png',NULL,'Inherit','Inherit'),(47490,'SilverStripe\\Assets\\Image','2025-07-09 10:28:30','2025-06-24 00:07:31','text-style.png','Text styles',1,4,47481,505,'aff1d73d8244b222c2d5fec27bea2adb404ba6af','Uploads/text-style.png',NULL,'Inherit','Inherit'),(47496,'SilverStripe\\Assets\\Image','2025-09-30 13:17:52','2025-07-09 09:40:35','resources-illustration.png','Resources Illustration',1,6,47481,1,'803a9ab2cf0e110d1526ac8b8777fb135175d826','Uploads/resources-illustration.png',NULL,'Inherit','Inherit'),(47497,'SilverStripe\\Assets\\Image','2025-07-23 14:11:12','2025-07-09 09:50:46','layout-illustration.png','Layout illustration',1,5,47481,1,'621fbdb8bd7cf939b0edb0d49c62ac3a3df5ef3a','Uploads/layout-illustration.png',NULL,'Inherit','Inherit'),(47498,'SilverStripe\\Assets\\Image','2025-07-09 10:35:03','2025-07-09 10:34:46','silverstripe-cms-illustration.png','Silverstripe CMS illustration',1,3,47481,1,'66f540834dfb1dbebfa4cbc8dc872979fbd60ded','Uploads/silverstripe-cms-illustration.png',NULL,'Inherit','Inherit'),(47499,'SilverStripe\\Assets\\Image','2025-07-09 10:34:53','2025-07-09 10:34:47','startup-logo.png','Startup logo',1,3,47481,1,'9eb2f94454d5ead2854181c7a99b9f3e9fff2f41','Uploads/startup-logo.png',NULL,'Inherit','Inherit'),(47500,'SilverStripe\\Assets\\Image','2025-07-09 10:35:11','2025-07-09 10:34:47','startup-recipe-illustration.png','Startup Recipe illustration',1,3,47481,1,'14d7a2152356f79b8b631477cbba5346d2b7667a','Uploads/startup-recipe-illustration.png',NULL,'Inherit','Inherit');
/*!40000 ALTER TABLE `File_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_Versions`
--

DROP TABLE IF EXISTS `File_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `File_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `WasPublished` tinyint unsigned NOT NULL DEFAULT '0',
  `AuthorID` int NOT NULL DEFAULT '0',
  `PublisherID` int NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShowInSearch` tinyint unsigned NOT NULL DEFAULT '1',
  `ParentID` int NOT NULL DEFAULT '0',
  `OwnerID` int NOT NULL DEFAULT '0',
  `FileHash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `WasDeleted` tinyint unsigned NOT NULL DEFAULT '0',
  `WasDraft` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`),
  KEY `Name` (`Name`),
  KEY `FileHash` (`FileHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_Versions`
--

LOCK TABLES `File_Versions` WRITE;
/*!40000 ALTER TABLE `File_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_ViewerGroups`
--

DROP TABLE IF EXISTS `File_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `File_ViewerGroups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FileID` int NOT NULL DEFAULT '0',
  `GroupID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_ViewerGroups`
--

LOCK TABLES `File_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `File_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File_ViewerMembers`
--

DROP TABLE IF EXISTS `File_ViewerMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `File_ViewerMembers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FileID` int NOT NULL DEFAULT '0',
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File_ViewerMembers`
--

LOCK TABLES `File_ViewerMembers` WRITE;
/*!40000 ALTER TABLE `File_ViewerMembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `File_ViewerMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Folder_CanEdit`
--

DROP TABLE IF EXISTS `Folder_CanEdit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Folder_CanEdit` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FolderID` int NOT NULL DEFAULT '0',
  `GroupID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FolderID` (`FolderID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Folder_CanEdit`
--

LOCK TABLES `Folder_CanEdit` WRITE;
/*!40000 ALTER TABLE `Folder_CanEdit` DISABLE KEYS */;
/*!40000 ALTER TABLE `Folder_CanEdit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Folder_CanUse`
--

DROP TABLE IF EXISTS `Folder_CanUse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Folder_CanUse` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FolderID` int NOT NULL DEFAULT '0',
  `GroupID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FolderID` (`FolderID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Folder_CanUse`
--

LOCK TABLES `Folder_CanUse` WRITE;
/*!40000 ALTER TABLE `Folder_CanUse` DISABLE KEYS */;
/*!40000 ALTER TABLE `Folder_CanUse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Group` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Group') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CanCMS` tinyint unsigned NOT NULL DEFAULT '0',
  `CanCMSAdmin` tinyint unsigned NOT NULL DEFAULT '0',
  `Locked` tinyint unsigned NOT NULL DEFAULT '0',
  `Sort` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `IPRestrictions` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `_obsolete_SubsiteID` int NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AccessAllSubsites` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `SubsiteID` (`_obsolete_SubsiteID`),
  KEY `Title` (`Title`),
  KEY `Code` (`Code`),
  KEY `Sort` (`Sort`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group`
--

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` VALUES (1,'SilverStripe\\Security\\Group','2007-07-12 20:34:51','2009-07-23 09:57:06','Administrators','administrators',0,0,0,0,0,NULL,NULL,0,NULL,1),(2,'SilverStripe\\Security\\Group','2007-07-12 20:39:52','2007-07-12 20:39:52','Forum Members','forum-members',0,0,0,0,0,NULL,NULL,0,NULL,1),(3,'SilverStripe\\Security\\Group','2007-07-18 14:43:15','2007-07-18 14:43:29','Mailing List: New newsletter type','new-newsletter-type',0,0,0,0,0,NULL,NULL,0,NULL,1);
/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Members`
--

DROP TABLE IF EXISTS `Group_Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Group_Members` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GroupID` int NOT NULL DEFAULT '0',
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM AUTO_INCREMENT=1517 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Members`
--

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` VALUES (1503,1,1),(102,2,2),(202,2,3),(302,2,4),(402,2,5),(502,2,6),(1402,1,102),(802,1,202),(1502,1,302),(1302,1,402),(1505,1,403),(1506,1,499),(1507,1,500),(1508,1,501),(1509,1,502);
/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Roles`
--

DROP TABLE IF EXISTS `Group_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Group_Roles` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GroupID` int NOT NULL DEFAULT '0',
  `PermissionRoleID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Roles`
--

LOCK TABLES `Group_Roles` WRITE;
/*!40000 ALTER TABLE `Group_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Group_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Subsites`
--

DROP TABLE IF EXISTS `Group_Subsites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Group_Subsites` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `GroupID` int NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `SubsiteID` (`SubsiteID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Subsites`
--

LOCK TABLES `Group_Subsites` WRITE;
/*!40000 ALTER TABLE `Group_Subsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `Group_Subsites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage`
--

DROP TABLE IF EXISTS `HomePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HomePage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RightContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RightHeading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RightCtaLabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RightCtaLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomePage`
--

LOCK TABLES `HomePage` WRITE;
/*!40000 ALTER TABLE `HomePage` DISABLE KEYS */;
INSERT INTO `HomePage` VALUES (86,'<p><span>Try out the content authoring interface yourself!</span></p>','Log in to try the CMS','Log in here','/Security/login');
/*!40000 ALTER TABLE `HomePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage_Live`
--

DROP TABLE IF EXISTS `HomePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HomePage_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RightContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RightHeading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RightCtaLabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RightCtaLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomePage_Live`
--

LOCK TABLES `HomePage_Live` WRITE;
/*!40000 ALTER TABLE `HomePage_Live` DISABLE KEYS */;
INSERT INTO `HomePage_Live` VALUES (86,'<p><span>Try out the content authoring interface yourself!</span></p>','Log in to try the CMS','Log in here','/Security/login');
/*!40000 ALTER TABLE `HomePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage_Versions`
--

DROP TABLE IF EXISTS `HomePage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HomePage_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `RightContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RightHeading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RightCtaLabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RightCtaLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomePage_Versions`
--

LOCK TABLES `HomePage_Versions` WRITE;
/*!40000 ALTER TABLE `HomePage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `HomePage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginAttempt`
--

DROP TABLE IF EXISTS `LoginAttempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LoginAttempt` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\LoginAttempt') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MemberID` int NOT NULL DEFAULT '0',
  `EmailHashed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`),
  KEY `EmailHashed` (`EmailHashed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginAttempt`
--

LOCK TABLES `LoginAttempt` WRITE;
/*!40000 ALTER TABLE `LoginAttempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginAttempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginSession`
--

DROP TABLE IF EXISTS `LoginSession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LoginSession` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\SessionManager\\Models\\LoginSession') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\SessionManager\\Models\\LoginSession',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LastAccessed` datetime DEFAULT NULL,
  `IPAddress` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserAgent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Persistent` tinyint unsigned NOT NULL DEFAULT '0',
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LastAccessed` (`LastAccessed`),
  KEY `ClassName` (`ClassName`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginSession`
--

LOCK TABLES `LoginSession` WRITE;
/*!40000 ALTER TABLE `LoginSession` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginSession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Member` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Member') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumVisit` int NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `Bounced` tinyint unsigned NOT NULL DEFAULT '0',
  `AutoLoginHash` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `BlacklistedEmail` tinyint unsigned NOT NULL DEFAULT '0',
  `ForumRank` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Occupation` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Country` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Nickname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FirstNamePublic` tinyint unsigned NOT NULL DEFAULT '0',
  `SurnamePublic` tinyint unsigned NOT NULL DEFAULT '0',
  `OccupationPublic` tinyint unsigned NOT NULL DEFAULT '0',
  `CountryPublic` tinyint unsigned NOT NULL DEFAULT '0',
  `EmailPublic` tinyint unsigned NOT NULL DEFAULT '0',
  `LastViewed` datetime DEFAULT NULL,
  `AvatarID` int NOT NULL DEFAULT '0',
  `Address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AddressLine2` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `City` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `HomePhone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MobilePhone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Notes` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IdentityURL` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Hash` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GroupCode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Signature` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `Company` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CompanyPublic` tinyint unsigned NOT NULL DEFAULT '0',
  `CityPublic` tinyint unsigned NOT NULL DEFAULT '0',
  `FailedLoginCount` int NOT NULL DEFAULT '0',
  `Street` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Suburb` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CityTown` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `DateFormat` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FavouritePageID` int NOT NULL DEFAULT '0',
  `AFileID` int NOT NULL DEFAULT '0',
  `AImageID` int NOT NULL DEFAULT '0',
  `SuspendedUntil` date DEFAULT NULL,
  `TempIDHash` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `AutoLoginTempHash` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `AutoLoginHash` (`AutoLoginHash`),
  UNIQUE KEY `IdentityURL` (`IdentityURL`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`),
  KEY `AvatarID` (`AvatarID`),
  KEY `Nickname` (`Nickname`),
  KEY `FavouritePageID` (`FavouritePageID`),
  KEY `AFileID` (`AFileID`),
  KEY `AImageID` (`AImageID`),
  KEY `Surname` (`Surname`),
  KEY `FirstName` (`FirstName`)
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1,'SilverStripe\\Security\\Member','2007-07-12 20:34:51','2025-09-30 13:15:39','Demo','Admin','admin','$2y$10$f62f73fd30b69673b5971u9J6RJQ.DTg3RLUi9RgIrzWf.9w3XMA2',316,'2017-04-26 09:06:26',0,NULL,NULL,0,'Community Member',NULL,'NZ','Sig',0,0,0,0,0,'2010-10-27 12:12:29',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'blowfish','10$f62f73fd30b69673b59716','en_GB','https://www.sigurdmagnusson.com/',NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'MMM d, y','h:mm:ss a',0,0,0,NULL,'9fb5372005a07f11083c2e76d8d5289bec5b47ec','2025-10-03 13:15:39',NULL),(102,'SilverStripe\\Security\\Member','2007-11-20 17:58:27','2025-06-24 23:52:54','French Demo',NULL,'french','$2y$10$7f3cc89203bc1d4daf5e0OL/jnQC1aX83L1m4Lat5h6Db3bnfByFe',9,'2013-10-21 13:15:06',0,NULL,NULL,0,'Community Member',NULL,'FR','French Demo',0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'blowfish','10$7f3cc89203bc1d4daf5e0d','fr_FR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(302,'SilverStripe\\Security\\Member','2007-11-20 17:59:56','2025-06-24 23:52:54','Spanish Demo',NULL,'spanish','$2y$10$0883c73e4cc8efb6bc415un7x4998T5caK2qeSHvvlIwAaWKJcmIG',5,'2017-04-26 09:03:53',0,NULL,NULL,0,'Community Member',NULL,'ES','Spanish Demo',0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'blowfish','10$0883c73e4cc8efb6bc4155','es_ES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(402,'SilverStripe\\Security\\Member','2007-11-20 18:00:39','2025-06-24 23:52:54','German Demo',NULL,'german','$2y$10$7a107e1d984ea0eab9a42ucMwV2Kr2/sFKfZp5zA021vnhIPxX7CK',8,'2013-10-06 20:39:20',0,NULL,NULL,0,'Community Member',NULL,'DE','German Demo',0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'blowfish','10$7a107e1d984ea0eab9a428','de_DE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(403,'SilverStripe\\Security\\Member','2009-07-23 09:57:02','2025-06-24 23:52:54','Chinese Demo',NULL,'chinese','$2y$10$16051db28a6679ca731e6utyEyV0f/1HTlnff89C9XCRDSLZREP3y',10,'2013-10-07 15:55:02',0,NULL,NULL,0,'Community Member',NULL,NULL,NULL,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,'<p></p>',NULL,'blowfish','10$16051db28a6679ca731e67','zh_CN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'yyyy-M-d','ahh:mm:ss',0,0,0,NULL,NULL,NULL,NULL),(499,'SilverStripe\\Security\\Member','2012-08-29 10:12:11','2025-06-24 23:52:54','Te Reo','Demo','tereo','$2y$10$8a51cf793cfc2581b54edutt5URTj6YL0hH3R3RWAp62EI.FmeMTS',4,'2013-10-07 15:56:08',0,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'blowfish','10$8a51cf793cfc2581b54ed1','mi_NZ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'MMM d, y','h:mm:ss a',0,0,0,NULL,NULL,NULL,NULL),(500,'SilverStripe\\Security\\Member','2012-08-29 10:12:11','2025-06-24 23:52:54','Arabic','Demo','arabic','$2y$10$f0164cf934740d718b3c4eIt/aFafQcDSWpMUqS1St/sPDcDz06fu',6,'2013-10-21 13:14:50',0,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'blowfish','10$f0164cf934740d718b3c4e','ar_EG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'MMM d, y','h:mm:ss a',0,0,0,NULL,NULL,NULL,NULL),(501,'SilverStripe\\Security\\Member','2012-08-29 10:12:11','2025-06-24 23:52:54','Russian','Demo','russian','$2y$10$b3b8655729fe7c84c1e9auAQH1OS2BsgGwDPbhYcMy3lXFR9gC3e2',4,'2013-10-07 15:56:08',0,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'blowfish','10$b3b8655729fe7c84c1e9a3','ru_RU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'MMM d, y','h:mm:ss a',0,0,0,NULL,'c37e2798def2f13e4c92457f202a435c1362fcd9','2025-06-27 23:52:47',NULL),(502,'SilverStripe\\Security\\Member','2012-08-29 10:12:11','2025-06-24 23:52:54','Japanese','Demo','japanese','$2y$10$8e24fe654c7d022ca650defgXVZGIdxt7sMI1FLOzINP3FkCBDThu',4,'2013-10-07 15:56:08',0,NULL,NULL,0,NULL,NULL,NULL,NULL,0,0,0,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'blowfish','10$8e24fe654c7d022ca650de','ja_JP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'MMM d, y','h:mm:ss a',0,0,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberLocation`
--

DROP TABLE IF EXISTS `MemberLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MemberLocation` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberLocation') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'MemberLocation',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Latitude` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Longitude` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberLocation`
--

LOCK TABLES `MemberLocation` WRITE;
/*!40000 ALTER TABLE `MemberLocation` DISABLE KEYS */;
INSERT INTO `MemberLocation` VALUES (1,'MemberLocation','2007-07-12 21:04:31','2007-07-12 21:04:31','-40.900557','174.885971',2),(2,'MemberLocation','2007-07-12 21:05:58','2007-07-12 21:05:58','37.75334401310656','-122.431640625',3),(3,'MemberLocation','2007-07-13 10:53:24','2007-07-18 14:32:50','-41.315466','174.766388',4),(4,'MemberLocation','2007-07-13 15:35:00','2007-07-13 15:35:00','-25.79989118208832','134.296875',1),(5,'MemberLocation','2007-07-13 15:36:02','2007-07-13 15:36:02','59.712097173322924','8.61328125',5),(6,'MemberLocation','2007-09-14 22:37:43','2007-09-14 22:37:43','-40.900557','174.885971',6);
/*!40000 ALTER TABLE `MemberLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberPassword`
--

DROP TABLE IF EXISTS `MemberPassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MemberPassword` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\MemberPassword') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberPassword`
--

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
INSERT INTO `MemberPassword` VALUES (1,'SilverStripe\\Security\\MemberPassword','2009-07-23 09:57:02','2009-07-23 09:57:02','of685gfr5kgswssckwks00s444k0ckw','4aajta8tur0gcoss0kkks8k08ckg04cskggs8w0','sha1',403),(2,'SilverStripe\\Security\\MemberPassword','2010-03-30 15:37:15','2010-03-30 15:37:15','7bf3725e500ecdb6d6853fc84c50223bf7c96734','ffqozvskwsg0sg8kc8g48wooc40wg48gw8gssc','sha1_v2.4',102),(3,'SilverStripe\\Security\\MemberPassword','2010-03-31 18:49:40','2010-03-31 18:49:40','198fba5681acbbe25e9e05e9dbccfe4e7e51f704','4aajta8tur0gcoss0kkks8k08ckg04cskggs8w0','sha1_v2.4',403),(4,'SilverStripe\\Security\\MemberPassword','2010-04-01 09:46:44','2010-04-01 09:46:44',NULL,NULL,'none',404),(5,'SilverStripe\\Security\\MemberPassword','2010-04-01 12:25:26','2010-04-01 12:25:26',NULL,NULL,'none',405),(6,'SilverStripe\\Security\\MemberPassword','2012-08-29 10:12:11','2012-08-29 10:12:11','$2y$10$00d0b38b1829820e58bacu5b2r5Ixym2gj7YSOArzVqGUfsVvTOC.','10$00d0b38b1829820e58bac6','blowfish',499),(7,'SilverStripe\\Security\\MemberPassword','2012-08-29 10:18:20','2012-08-29 10:18:20','923f940b7583a9c9ce243f269b74d05e455acf42','1k5cb08hg2jo408go4wgs0kc4k8gscg08gcs0k4','sha1_v2.4',402),(10,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:50:29','2025-06-24 23:50:29','$2y$10$d24e15e45ac464ffe5ed4u6zz6vivOQlg7UWOMxq.OHpw51bFiC8i','10$d24e15e45ac464ffe5ed49','blowfish',1),(11,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:51:17','2025-06-24 23:51:17','$2y$10$dedf756b79b363d549493e7e07VdNk/qEHPUkuK9axhYvgqNfI3DW','10$dedf756b79b363d549493f','blowfish',1),(12,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:51:33','2025-06-24 23:51:33','$2y$10$4c2ff01958e4d5e5d995fuxRf6YJrOkbrPWj4JfMSMhSgYAOOvhkq','10$4c2ff01958e4d5e5d995f7','blowfish',1),(13,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:04','2025-06-24 23:52:04','$2y$10$e5d3b2ed9d4e115e365abujJTtQ5bu1i9acgL.p3y2vCAVxIAjnsq','10$e5d3b2ed9d4e115e365ab7','blowfish',1),(14,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:06','2025-06-24 23:52:06','$2y$10$ba2bb712b7b9a232ff523uWeZ.PtTDmQ/jZM1xguIHenzj9SgkuOa','10$ba2bb712b7b9a232ff5233','blowfish',1),(15,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:06','2025-06-24 23:52:06','$2y$10$a0c3b6d2c6c51a2d276b5uRaUUz6GQhmW1MNxAsNuVfXDGJl17DjC','10$a0c3b6d2c6c51a2d276b50','blowfish',1),(16,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:07','2025-06-24 23:52:07','$2y$10$4d859d9b89a53a39c5fefOlwcrnUl1lCzPYKBHPWNX0Qoxr6sCLNq','10$4d859d9b89a53a39c5fefa','blowfish',1),(17,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:07','2025-06-24 23:52:07','$2y$10$261ef159d03efbb2a3309Om40Pi3a1jtl6KFSOSaZOSwQV63bRdji','10$261ef159d03efbb2a3309c','blowfish',1),(18,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:08','2025-06-24 23:52:08','$2y$10$3ec8e59dfd4d4a5559538uD/kwm8ou75a6FaphICukmuh6DBNpwlS','10$3ec8e59dfd4d4a55595386','blowfish',1),(19,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:08','2025-06-24 23:52:08','$2y$10$d34d865ee8dc5149c4304eJ.IC1FQ53bIjvJwftn7vTbtu3A/WAh2','10$d34d865ee8dc5149c4304f','blowfish',1),(20,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:08','2025-06-24 23:52:08','$2y$10$36c4cb92b7e7c539bd787OuQGoNq5wfpWlqVjTdKfemmzSMh7R.Ie','10$36c4cb92b7e7c539bd787b','blowfish',1),(21,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:09','2025-06-24 23:52:09','$2y$10$1205afc3fda14e98df700uY7Nzp3yvCq7I2qXEfHnBxQqbnrFjmq2','10$1205afc3fda14e98df7006','blowfish',1),(22,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:09','2025-06-24 23:52:09','$2y$10$8c63cf90b4ea191c20364uQIADPNOtVsGJg83REyMD72HmdiqDXia','10$8c63cf90b4ea191c203647','blowfish',1),(23,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:09','2025-06-24 23:52:09','$2y$10$30f07ef9e8495e9b9a8cfupG3/jVbJMzoJbxMokvdYP1tj.YOlMDe','10$30f07ef9e8495e9b9a8cf2','blowfish',1),(24,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:09','2025-06-24 23:52:09','$2y$10$c8ece90f821bf79d3536euD156HorcpEAjJ42ZuAD8jmx3VjZlmgK','10$c8ece90f821bf79d3536e2','blowfish',1),(25,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:30','2025-06-24 23:52:30','$2y$10$f828463f0f0ed14a78ec7OiSR9df7Pdxso8fMo.8FdIiqkpaucl2K','10$f828463f0f0ed14a78ec7c','blowfish',403),(27,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:30','2025-06-24 23:52:30','$2y$10$013b80dc01ee74588003cukUwG0fVgnkjGTVm8V/FB5bUi1b9feDC','10$013b80dc01ee74588003c3','blowfish',102),(28,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:30','2025-06-24 23:52:30','$2y$10$09534cf004473dd1aa391OqF1zEJ1Ukr3vuF.byKIcz0tzDMVJc8m','10$09534cf004473dd1aa391b','blowfish',402),(29,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:30','2025-06-24 23:52:30','$2y$10$0ff4448f4cba18982e7d4uRF.wuaDHkYWd/t.DSnlaAHTTOydr4Ii','10$0ff4448f4cba18982e7d42','blowfish',302),(30,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:30','2025-06-24 23:52:30','$2y$10$ec14d7a4ba3bd37441677epN0iKL8zsWa.zTqttPBV1Q4Ps1kPUS6','10$ec14d7a4ba3bd37441677f','blowfish',1),(31,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:30','2025-06-24 23:52:30','$2y$10$53e3fef2f00be9fd7b862u2jOyQ/CDtUpQLoznTHgKmMOIBer6ibW','10$53e3fef2f00be9fd7b8620','blowfish',500),(32,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:30','2025-06-24 23:52:30','$2y$10$dcf3caee18d9aaad060faOA2mR7t7gAtkEjiCCGYINY1wFIk33vZK','10$dcf3caee18d9aaad060fad','blowfish',502),(33,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:30','2025-06-24 23:52:30','$2y$10$b94635fcba83d6378a21cuEHV7ozGghky7vt3zvRA06PZH7lNn7om','10$b94635fcba83d6378a21c1','blowfish',501),(34,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:30','2025-06-24 23:52:30','$2y$10$597e13185bf629b22b1feuVLtBgnxGxNf0auj7aPB5JuSu04cZT.S','10$597e13185bf629b22b1fe0','blowfish',499),(35,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:45','2025-06-24 23:52:45','$2y$10$8a675c6d9862a70c4419bOQwwR7LMvS3yL9uRlcyQnCze7moJAjIm','10$8a675c6d9862a70c4419bd','blowfish',403),(37,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:46','2025-06-24 23:52:46','$2y$10$b7aefe66929014f7e098eeMGZsZz.CbexalwIFUO.frJahtHMRsAa','10$b7aefe66929014f7e098ee','blowfish',102),(38,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:46','2025-06-24 23:52:46','$2y$10$b6982eacfdcb26ebf8406uIrG9YZPNwHhN8ow.APN5JyGFHVfifDO','10$b6982eacfdcb26ebf84069','blowfish',402),(39,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:46','2025-06-24 23:52:46','$2y$10$2c66be2d03427109bbfb5uOO88yUdr.1BbgNBtywTXkyYFkyOaTgm','10$2c66be2d03427109bbfb52','blowfish',302),(40,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:46','2025-06-24 23:52:46','$2y$10$e1295960fdf231b695d2aufG.cRI2UT.EHU4WqlI3YInDDYyuAUWG','10$e1295960fdf231b695d2a2','blowfish',1),(41,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:46','2025-06-24 23:52:46','$2y$10$d4d6cded212eab8ca00caOcHshEO3TY0OZrXvEiO9E7CJa82TBXUG','10$d4d6cded212eab8ca00caa','blowfish',500),(42,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:46','2025-06-24 23:52:46','$2y$10$69a947b0f93efd8812379uwW7Iw6CIU/QVItrJGoj7mkmB7yi0jBe','10$69a947b0f93efd88123799','blowfish',502),(43,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:46','2025-06-24 23:52:46','$2y$10$191704d897d38c667a321uQbuPXFWIJ5k9psSXqEu2fNOOiHsabmC','10$191704d897d38c667a3215','blowfish',501),(44,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:46','2025-06-24 23:52:46','$2y$10$d93e49346dc7d63667af6uzgu9W9cohFWXKxWYbfTHTIyF0tc1UqW','10$d93e49346dc7d63667af66','blowfish',499),(45,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:47','2025-06-24 23:52:47','$2y$10$5a6a58fac7d9684e1939cuB4G8Go6Gx5b4C5ipsNR/JyQ.crgJJOW','10$5a6a58fac7d9684e1939c0','blowfish',403),(47,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:47','2025-06-24 23:52:47','$2y$10$aa4e2f81c7b4c2fda0b13u790mi1Fl4Pbbw/jDVEsDz1DjZIGtH9q','10$aa4e2f81c7b4c2fda0b135','blowfish',102),(48,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:47','2025-06-24 23:52:47','$2y$10$9ff374e787553059e7ea8uW9C5gZQG.JpXkO./uAnJprxjsEgmcHS','10$9ff374e787553059e7ea88','blowfish',402),(49,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:47','2025-06-24 23:52:47','$2y$10$101b47c8ac425562fcefauxoy5cnL7hRI48hK/3kdRkcFaWmC8Y6S','10$101b47c8ac425562fcefa5','blowfish',302),(50,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:47','2025-06-24 23:52:47','$2y$10$610b040bbe631a1460633uC5iT2xouZ4KrpcPHVfsY9uOOqrUkNdy','10$610b040bbe631a14606334','blowfish',1),(51,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:47','2025-06-24 23:52:47','$2y$10$46cd0441b9d8aed3cbc44OMiXJT0z8XlWYK5a4bePNI7FfWJJ8P22','10$46cd0441b9d8aed3cbc44a','blowfish',500),(52,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$e881b7248b8b998e28154utnl7vaP2c.mbvrZJywGHYcLWVoZ7RZ6','10$e881b7248b8b998e281541','blowfish',502),(53,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$107fc79de1a35d679c82eOFZgCWZIb3prVIDJfSdT/amtIFCJigFO','10$107fc79de1a35d679c82ec','blowfish',501),(54,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$66ac6784ce9f12070e440u7bBwtmSDzJe/hL2oQdrAUnlIHoU4D6m','10$66ac6784ce9f12070e4402','blowfish',499),(55,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$9dbd5c81f1b6cbe3497e8urs7kTGW.N8JQGHLsgzuikoU//kfN.Om','10$9dbd5c81f1b6cbe3497e83','blowfish',403),(57,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$cced0d2fab78d9dd01663ul6q8bwFlVlipNpB0vfrLEp/8jgassQS','10$cced0d2fab78d9dd016635','blowfish',102),(58,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$bb4720aa371eb0c95005au2l0e/UBK3VM5GEgQNRNeXNba1VsQyXy','10$bb4720aa371eb0c95005a1','blowfish',402),(59,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$b165eed03c4ce1a1832f0uRNFJxRax/LDwxd5H.RLt49t90ltiIMG','10$b165eed03c4ce1a1832f01','blowfish',302),(60,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$fd000a0cb1690d633093eu26ySfNKD.x7USGT6IFRic7PZr/3ATm6','10$fd000a0cb1690d633093e6','blowfish',1),(61,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$1186ddd054059872d54c3uZFmliGHx8WEuZndBJaXkrGEVjKHduV.','10$1186ddd054059872d54c38','blowfish',500),(62,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$e7599af1540c0a36de694uGXAslPRp6NrN7fSqq9YiGznMaTWE7cu','10$e7599af1540c0a36de6945','blowfish',502),(63,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:48','2025-06-24 23:52:48','$2y$10$18e2f996825496d021622uU9ojarkrDZoZztb0vtHNEir7LMP5RwG','10$18e2f996825496d0216223','blowfish',501),(64,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:49','2025-06-24 23:52:49','$2y$10$7b1cdd75ddf9ef3bc3a8du2QENi4bkzq7gLUqhZ.xyMRV.gcG6ydK','10$7b1cdd75ddf9ef3bc3a8d0','blowfish',499),(65,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:49','2025-06-24 23:52:49','$2y$10$bd250a5c909ad7a74230fOvWdzHUcLxdDTuNWn4FP5j80xjGZ3lwW','10$bd250a5c909ad7a74230fd','blowfish',403),(67,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:49','2025-06-24 23:52:49','$2y$10$ebea511f0ca842a90b9abuy7EjDjpM1YH5L1gjasVgsHro0VRQFWq','10$ebea511f0ca842a90b9ab2','blowfish',102),(68,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$09d21a2dcfc6907aa49e2OrJXl5Bo.Eby2Y3mV9u7DHz9SVJvkXZe','10$09d21a2dcfc6907aa49e2c','blowfish',402),(69,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$3636c973e4deda6f82195e9o4yKmt7RaaOD4bPG1sMCgo.UAHGKN.','10$3636c973e4deda6f82195f','blowfish',302),(70,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$105cdd4866382906b1589uu5L525SR7gPCGQHnGjsZojYbUvC1bRu','10$105cdd4866382906b15895','blowfish',1),(71,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$51bbfd04c06bdf419e3abuVtlTDe/tcNFLalEyodD1LcyYc8QDgIi','10$51bbfd04c06bdf419e3ab9','blowfish',500),(72,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$9018a14877a1491344063ODpjOR4.8zdD/gSLVHGOo4ENdbFGA72O','10$9018a14877a1491344063b','blowfish',502),(73,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$cc37d799a4dfd1b8139efuenhN22tzdrOx1uuvL8eEg40J4.tAiCC','10$cc37d799a4dfd1b8139ef4','blowfish',501),(74,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$0d2fc79e2fdfd3faa3a19e5pQ70JF6vpFN5IX6ebBldo4PvW7dvxe','10$0d2fc79e2fdfd3faa3a19e','blowfish',499),(75,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$7d2074ab87f397094dcb5eSijpeWda5P3xzfOv8YtvPmFSsreigae','10$7d2074ab87f397094dcb5f','blowfish',403),(77,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$8d3bb89138bba581ef317e2nA8w4K7WwwDxKdfbjG.nO3ZeJYRN.q','10$8d3bb89138bba581ef317f','blowfish',102),(78,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$7162adc27924c235d1106u05JZIaAn0xAx99Qf9QYwBBwefyNzj8W','10$7162adc27924c235d11064','blowfish',402),(79,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$096d2a938a45fe6f42a0ceO62.NPhPxZURt/eMjWPQS.In4UJm2hS','10$096d2a938a45fe6f42a0ce','blowfish',302),(80,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$9af929753c4c9e61d7e1fuk8mHY3j3/p2vW9.0DPiEeDtiAUB4Mea','10$9af929753c4c9e61d7e1f2','blowfish',1),(81,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$977fe44d01adca9fe277beNg8SonYqLDJJo5STt9WHuWbaClkkrUO','10$977fe44d01adca9fe277bf','blowfish',500),(82,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$7c1557858d6b4a1456abeOWs0/RNyZ0GXeY0I.4hfUcllyHIyv16K','10$7c1557858d6b4a1456abed','blowfish',502),(83,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:50','2025-06-24 23:52:50','$2y$10$0a96c790ee8d3e78b924eunscMJB58NbhRkrWyMtTKPeRxUJaKXIu','10$0a96c790ee8d3e78b924e0','blowfish',501),(84,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$f6a42cbbb5ca22922634cumyb43iXFWFOyC/XVKpILhCB50Ynngpa','10$f6a42cbbb5ca22922634c6','blowfish',499),(85,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$489ee42a0e3cdae91ffa1OuZ7FEDnhTViojcdS9KXfWsdJQjxRI0O','10$489ee42a0e3cdae91ffa1c','blowfish',403),(87,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$4b2395d4f9699f3f14adbObJ.KkwRc3S2i2eTUBPQr0/337TXcC6O','10$4b2395d4f9699f3f14adbd','blowfish',102),(88,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$39d43d32f4bdd6c4d09c2OIjdA3OG1G8Ic.GHxdquf0NHn4PePYJe','10$39d43d32f4bdd6c4d09c2d','blowfish',402),(89,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$8a1ed6618470e0db722e1uy379lSOH97eoEgH4cOIu4qVN.M9u7gq','10$8a1ed6618470e0db722e16','blowfish',302),(90,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$f18b4a5ddba012acb2c6cuXOVQUA8Q6Bdnzu7DrsPdGS3jwGlC4IK','10$f18b4a5ddba012acb2c6c8','blowfish',1),(91,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$c66e8913dae2c5ee1ff05OtHDpephJz3pAUn7Y2e4dUNhBuqq//Cy','10$c66e8913dae2c5ee1ff05d','blowfish',500),(92,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$2ff4b20fa87bd98f92613uxW/voKs4lIPeg.4A5LLIprDQ.QnCj2K','10$2ff4b20fa87bd98f926138','blowfish',502),(93,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$6ffcb5c559a16df97e0c5uMINZB1tccgWnwQ7jq5lObaX6Txnbre.','10$6ffcb5c559a16df97e0c55','blowfish',501),(94,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$7a4d4125ec32ba3bf8482u7tyf29/23G1Z.x8IC/5ppUf2eSceGLm','10$7a4d4125ec32ba3bf84829','blowfish',499),(95,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$63cc7cc8c61a754cb7ef7uhHCGt4JBAhgc8gVOE5D1r5adUE8NZue','10$63cc7cc8c61a754cb7ef71','blowfish',403),(97,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$95fd33366b352fb6561ebOdtTGBRO07LMn5F4cSCNCNqVYa/2Uofi','10$95fd33366b352fb6561ebb','blowfish',102),(98,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$2356b089394699abd144de9lciKAQA5xuYfBgWJbTZGNyaTtohK/.','10$2356b089394699abd144de','blowfish',402),(99,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:51','2025-06-24 23:52:51','$2y$10$fc1f5f228249cdbd46a27eA/WDIWteXXpvzEg49ScPnYh3yEF0B06','10$fc1f5f228249cdbd46a27f','blowfish',302),(100,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$9bb8157135bc0ff374ae6OoEQefFV1GwN1PEJ21ulRSAb52y90EAy','10$9bb8157135bc0ff374ae6c','blowfish',1),(101,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$6ab10a26daf9b7b13d105Oc4v9ZKO1CpdMcp22hfJUJuAUXilf26e','10$6ab10a26daf9b7b13d105c','blowfish',500),(102,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$698c7147aae66a5aa8536OhgnOecELRufqlya1hIfBMz/X1VFoj7.','10$698c7147aae66a5aa8536a','blowfish',502),(103,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$be42815b4bbf158b402ceueQv4LkUTY99To/h.8DRGRZcQjUI7qiq','10$be42815b4bbf158b402ce0','blowfish',501),(104,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$2e7219c45a1e5eabf4755uSDeITjg30wjBx8ONFeHR6Ltbcj9t45q','10$2e7219c45a1e5eabf47558','blowfish',499),(105,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$0f342b9fb2c972749bfd6uylvcr0Ax7E6QhA310jU/ViTQ4XtxYDy','10$0f342b9fb2c972749bfd65','blowfish',403),(107,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$c5591f74b411eb48a2f6eeGZiomfTh/krL6sqeV4nlY8VUmc0MAlW','10$c5591f74b411eb48a2f6ee','blowfish',102),(108,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$9f62057abe468106dd6abuz.Jf44GIUrtTNS/qbYJ.G8ageaNF4Wi','10$9f62057abe468106dd6ab9','blowfish',402),(109,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$cd511b94c73e3c5043bc5uYwc0Zs3pfWclDdE4BuaYXJi9i4/se26','10$cd511b94c73e3c5043bc57','blowfish',302),(110,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$546eae673bdd082841dabeJb75JJt.xN4w/SlB9rHHNd22U/YxfSW','10$546eae673bdd082841dabe','blowfish',1),(111,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$376d55ebbcb13fce2fcd5uNr2PotwEsEQB29ogcusrIbUXvY8z1eu','10$376d55ebbcb13fce2fcd52','blowfish',500),(112,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$17926322c0eb23699da5bu5WkjQCE09yFcEa6T8UCkjzqQItiZOjW','10$17926322c0eb23699da5b8','blowfish',502),(113,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$bce24117cace3f2acd831ehwMfSYrZ7BRkgP2IjACpIbywTCLTfmq','10$bce24117cace3f2acd831e','blowfish',501),(114,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:52','2025-06-24 23:52:52','$2y$10$a31c5ba71279d8977fb2au1TH25wrkyVmTdPBxD4vS/Drs6RBfG8O','10$a31c5ba71279d8977fb2a0','blowfish',499),(115,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$af85d415fc81245b790d9utwMNWkKXw2Qau5/5JTQ91AbfsfUErvy','10$af85d415fc81245b790d93','blowfish',403),(117,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$7ae9bf3035a7359eca6bauF1.Iz8KzLoyFWmy6lLOSQ3J5uitQK0e','10$7ae9bf3035a7359eca6ba4','blowfish',102),(118,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$450556d00bb1d526996acu6qQDwZRU81yWW39T/86vQHZS3hS0EzG','10$450556d00bb1d526996ac4','blowfish',402),(119,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$8cc868e3adc7f5ff41a41OTo9XlsEHSvRG6orqgbudN6DFdnjjC46','10$8cc868e3adc7f5ff41a41c','blowfish',302),(120,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$ae44788714d497ecdd581uQWcWqpmMZALA/7bGPpBcbwelL7rscMe','10$ae44788714d497ecdd5814','blowfish',1),(121,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$24ae9c8832143577dac2eu209yB4EN4EYsU2HdBES2Q51lSJvvhMS','10$24ae9c8832143577dac2e7','blowfish',500),(122,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$43647cdc3dac92158ba79OF8myv6MkWWvQh06ogF0qvAmNKmqrooe','10$43647cdc3dac92158ba79a','blowfish',502),(123,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$b2fd62d5df81acb0bad4aOYUzEneAw2FfNTM2dCdrHv4zs9tPkQUC','10$b2fd62d5df81acb0bad4ad','blowfish',501),(124,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$4f00009500e2a8c142576OokPIN3YoDpP0bFQ9gnMemc69KGq1.re','10$4f00009500e2a8c142576a','blowfish',499),(125,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$3a1e1ca7120c29aabdfeaubkIEvM5JR7GXXLHXPMcNCBMo85m5r7O','10$3a1e1ca7120c29aabdfea4','blowfish',403),(127,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$377e560a150dc5f82f2afeT4GOPWzDsa7iC0.BiL3Ui5NRzwbe5/m','10$377e560a150dc5f82f2aff','blowfish',102),(128,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$c6ea8ebad22a8e39df61auKtWj8ddDHC8YhxvuREKbydGffrhVIti','10$c6ea8ebad22a8e39df61a6','blowfish',402),(129,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$946a0c67717f1c2ba368deEzNMscYAjWfdSdyu4BtN2NzaXc0l1Ma','10$946a0c67717f1c2ba368df','blowfish',302),(130,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:53','2025-06-24 23:52:53','$2y$10$5060d9c7f1c7f48801f25ec3/jumG4qg8yRQcCcW3Z4WM9kgdypgC','10$5060d9c7f1c7f48801f25e','blowfish',1),(131,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$fc95fc17e3ea02b7bfa78eZd3Qua63oJ5KttGVwS6IQ8xmXDLDXDq','10$fc95fc17e3ea02b7bfa78f','blowfish',500),(132,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$05c5d1adfa87b07ce9e9fugMq0QToIzf5EJkExU8U5SWou4cH32z2','10$05c5d1adfa87b07ce9e9f4','blowfish',502),(133,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$18d27ca4d4a6c984d45d7uy.6z.cIdqucXB2jBtPQYpq7vScXy1ye','10$18d27ca4d4a6c984d45d73','blowfish',501),(134,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$9ea49d8336f43db2637a3uh7ApFUtL4RF0WgCy5fPEYzucs0h6N2i','10$9ea49d8336f43db2637a32','blowfish',499),(135,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$16051db28a6679ca731e6utyEyV0f/1HTlnff89C9XCRDSLZREP3y','10$16051db28a6679ca731e67','blowfish',403),(137,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$7f3cc89203bc1d4daf5e0OL/jnQC1aX83L1m4Lat5h6Db3bnfByFe','10$7f3cc89203bc1d4daf5e0d','blowfish',102),(138,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$7a107e1d984ea0eab9a42ucMwV2Kr2/sFKfZp5zA021vnhIPxX7CK','10$7a107e1d984ea0eab9a428','blowfish',402),(139,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$0883c73e4cc8efb6bc415un7x4998T5caK2qeSHvvlIwAaWKJcmIG','10$0883c73e4cc8efb6bc4155','blowfish',302),(140,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$f62f73fd30b69673b5971u9J6RJQ.DTg3RLUi9RgIrzWf.9w3XMA2','10$f62f73fd30b69673b59716','blowfish',1),(141,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$f0164cf934740d718b3c4eIt/aFafQcDSWpMUqS1St/sPDcDz06fu','10$f0164cf934740d718b3c4e','blowfish',500),(142,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$8e24fe654c7d022ca650defgXVZGIdxt7sMI1FLOzINP3FkCBDThu','10$8e24fe654c7d022ca650de','blowfish',502),(143,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$b3b8655729fe7c84c1e9auAQH1OS2BsgGwDPbhYcMy3lXFR9gC3e2','10$b3b8655729fe7c84c1e9a3','blowfish',501),(144,'SilverStripe\\Security\\MemberPassword','2025-06-24 23:52:54','2025-06-24 23:52:54','$2y$10$8a51cf793cfc2581b54edutt5URTj6YL0hH3R3RWAp62EI.FmeMTS','10$8a51cf793cfc2581b54ed1','blowfish',499);
/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MyBlock`
--

DROP TABLE IF EXISTS `MyBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MyBlock` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MyField` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MyBlock`
--

LOCK TABLES `MyBlock` WRITE;
/*!40000 ALTER TABLE `MyBlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `MyBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MyBlock_Live`
--

DROP TABLE IF EXISTS `MyBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MyBlock_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MyField` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MyBlock_Live`
--

LOCK TABLES `MyBlock_Live` WRITE;
/*!40000 ALTER TABLE `MyBlock_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `MyBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MyBlock_Versions`
--

DROP TABLE IF EXISTS `MyBlock_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MyBlock_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `MyField` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MyBlock_Versions`
--

LOCK TABLES `MyBlock_Versions` WRITE;
/*!40000 ALTER TABLE `MyBlock_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `MyBlock_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MyDataObject`
--

DROP TABLE IF EXISTS `MyDataObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MyDataObject` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MyDataObject') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'MyDataObject',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MyDataObject`
--

LOCK TABLES `MyDataObject` WRITE;
/*!40000 ALTER TABLE `MyDataObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `MyDataObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MySubDataObject`
--

DROP TABLE IF EXISTS `MySubDataObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MySubDataObject` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MySubDataObject') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'MySubDataObject',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MyDataObjectID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `MyDataObjectID` (`MyDataObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MySubDataObject`
--

LOCK TABLES `MySubDataObject` WRITE;
/*!40000 ALTER TABLE `MySubDataObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `MySubDataObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageComment`
--

DROP TABLE IF EXISTS `PageComment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PageComment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PageComment') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'PageComment',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Comment` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `IsSpam` tinyint unsigned NOT NULL DEFAULT '0',
  `NeedsModeration` tinyint unsigned NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  `CommenterURL` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AuthorID` int NOT NULL DEFAULT '0',
  `SessionID` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `AuthorID` (`AuthorID`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageComment`
--

LOCK TABLES `PageComment` WRITE;
/*!40000 ALTER TABLE `PageComment` DISABLE KEYS */;
INSERT INTO `PageComment` VALUES (88,'PageComment','2010-03-30 20:11:16','2010-03-30 20:11:16','spam','spam',1,0,1902,NULL,0,NULL),(89,'PageComment','2010-03-31 08:52:57','2010-03-31 08:52:57','spam','spam',1,0,1902,NULL,0,NULL),(98,'PageComment','2010-04-01 15:29:51','2010-04-01 15:29:51','Silverstripe CMS user','This is an example of a blog comment.',0,0,1902,NULL,1,NULL);
/*!40000 ALTER TABLE `PageComment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Permission` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\Permission') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Arg` int NOT NULL DEFAULT '0',
  `GroupID` int NOT NULL DEFAULT '0',
  `Type` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permission`
--

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` VALUES (1,'SilverStripe\\Security\\Permission','2007-07-12 20:34:51','2009-07-23 09:57:06','ADMIN',0,1,1),(2,'SilverStripe\\Security\\Permission','2007-07-12 20:39:52','2007-07-12 20:39:52','ACCESS_FORUM',0,2,1),(3,'SilverStripe\\Security\\Permission','2010-03-30 15:37:23','2010-03-30 15:37:23','TRANSLATE_ALL',0,1,1);
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRole`
--

DROP TABLE IF EXISTS `PermissionRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PermissionRole` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\PermissionRole') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OnlyAdminCanApply` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `Title` (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRole`
--

LOCK TABLES `PermissionRole` WRITE;
/*!40000 ALTER TABLE `PermissionRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRoleCode`
--

DROP TABLE IF EXISTS `PermissionRoleCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PermissionRoleCode` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\PermissionRoleCode') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`),
  KEY `Code` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRoleCode`
--

LOCK TABLES `PermissionRoleCode` WRITE;
/*!40000 ALTER TABLE `PermissionRoleCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRoleCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecurringPayment`
--

DROP TABLE IF EXISTS `RecurringPayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RecurringPayment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('RecurringPayment','DPSRecurringPayment') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'RecurringPayment',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Status` enum('Incomplete','Success','Failure','Pending') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'Incomplete',
  `Message` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `IP` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ProxyIP` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PaidForID` int NOT NULL DEFAULT '0',
  `PaidForClass` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Frequency` enum('Weekly','Monthly','Yearly') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'Monthly',
  `StartingDate` date DEFAULT NULL,
  `Times` int NOT NULL DEFAULT '0',
  `ExceptionError` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `AmountCurrency` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AmountAmount` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `PaidByID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `PaidByID` (`PaidByID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecurringPayment`
--

LOCK TABLES `RecurringPayment` WRITE;
/*!40000 ALTER TABLE `RecurringPayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `RecurringPayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage`
--

DROP TABLE IF EXISTS `RedirectorPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RedirectorPage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External','File') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkToID` int NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  `LinkToFileID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`),
  KEY `LinkToFileID` (`LinkToFileID`)
) ENGINE=InnoDB AUTO_INCREMENT=6687 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage`
--

LOCK TABLES `RedirectorPage` WRITE;
/*!40000 ALTER TABLE `RedirectorPage` DISABLE KEYS */;
INSERT INTO `RedirectorPage` VALUES (6686,'Internal',NULL,6676,0,0,0);
/*!40000 ALTER TABLE `RedirectorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Live`
--

DROP TABLE IF EXISTS `RedirectorPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RedirectorPage_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External','File') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkToID` int NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  `LinkToFileID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`),
  KEY `LinkToFileID` (`LinkToFileID`)
) ENGINE=InnoDB AUTO_INCREMENT=6687 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage_Live`
--

LOCK TABLES `RedirectorPage_Live` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Live` DISABLE KEYS */;
INSERT INTO `RedirectorPage_Live` VALUES (6686,'Internal',NULL,6676,0,0,0);
/*!40000 ALTER TABLE `RedirectorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Versions`
--

DROP TABLE IF EXISTS `RedirectorPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RedirectorPage_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `WasPublished` tinyint unsigned NOT NULL DEFAULT '0',
  `AuthorID` int NOT NULL DEFAULT '0',
  `PublisherID` int NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External','File') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkToID` int NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  `LinkToFileID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`),
  KEY `LinkToFileID` (`LinkToFileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage_Versions`
--

LOCK TABLES `RedirectorPage_Versions` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RememberLoginHash`
--

DROP TABLE IF EXISTS `RememberLoginHash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RememberLoginHash` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\Security\\RememberLoginHash') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Security\\RememberLoginHash',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `DeviceID` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Hash` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `MemberID` int NOT NULL DEFAULT '0',
  `LoginSessionID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `DeviceID` (`DeviceID`),
  KEY `Hash` (`Hash`),
  KEY `ClassName` (`ClassName`),
  KEY `LoginSessionID` (`LoginSessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RememberLoginHash`
--

LOCK TABLES `RememberLoginHash` WRITE;
/*!40000 ALTER TABLE `RememberLoginHash` DISABLE KEYS */;
/*!40000 ALTER TABLE `RememberLoginHash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig`
--

DROP TABLE IF EXISTS `SiteConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteConfig` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\SiteConfig\\SiteConfig') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\SiteConfig\\SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'LoggedInUsers',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MobileSubdomain` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MobileTheme` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MobileSiteType` enum('Disabled','RedirectToDomain','MobileThemeOnly') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'Disabled',
  `MobileDomain` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `FullSiteDomain` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig`
--

LOCK TABLES `SiteConfig` WRITE;
/*!40000 ALTER TABLE `SiteConfig` DISABLE KEYS */;
INSERT INTO `SiteConfig` VALUES (2,'SilverStripe\\SiteConfig\\SiteConfig','2010-03-30 15:38:33','2025-06-24 00:06:43','Silverstripe CMS Demo','Silverstripe CMS demo using the Startup theme','simple','Anyone','LoggedInUsers','LoggedInUsers',2,NULL,'blackcandymobile','RedirectToDomain','https://m.demo.silverstripe.org','https://demo.silverstripe.org');
/*!40000 ALTER TABLE `SiteConfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int NOT NULL DEFAULT '0',
  `GroupID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_CreateTopLevelGroups`
--

LOCK TABLES `SiteConfig_CreateTopLevelGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_CreateTopLevelMembers`
--

DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteConfig_CreateTopLevelMembers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int NOT NULL DEFAULT '0',
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_CreateTopLevelMembers`
--

LOCK TABLES `SiteConfig_CreateTopLevelMembers` WRITE;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelMembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_EditorGroups`
--

DROP TABLE IF EXISTS `SiteConfig_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int NOT NULL DEFAULT '0',
  `GroupID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_EditorGroups`
--

LOCK TABLES `SiteConfig_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_EditorMembers`
--

DROP TABLE IF EXISTS `SiteConfig_EditorMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteConfig_EditorMembers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int NOT NULL DEFAULT '0',
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_EditorMembers`
--

LOCK TABLES `SiteConfig_EditorMembers` WRITE;
/*!40000 ALTER TABLE `SiteConfig_EditorMembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_EditorMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteConfig_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int NOT NULL DEFAULT '0',
  `GroupID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_ViewerGroups`
--

LOCK TABLES `SiteConfig_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ViewerMembers`
--

DROP TABLE IF EXISTS `SiteConfig_ViewerMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteConfig_ViewerMembers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int NOT NULL DEFAULT '0',
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_ViewerMembers`
--

LOCK TABLES `SiteConfig_ViewerMembers` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ViewerMembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ViewerMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteTree` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','HomePage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Page',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MetaTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MetaKeywords` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ShowInMenus` tinyint unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ProvideComments` tinyint unsigned NOT NULL DEFAULT '0',
  `Sort` int NOT NULL DEFAULT '0',
  `LegacyURL` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `HasBrokenFile` tinyint unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ReportClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_obsolete_Viewers` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'Anyone',
  `_obsolete_Editors` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'LoggedInUsers',
  `_obsolete_ViewersGroup` int NOT NULL DEFAULT '0',
  `_obsolete_EditorsGroup` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `Priority` float DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ToDo` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Locale` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  `RelationFieldsTestPageID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `URLSegment` (`URLSegment`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`),
  KEY `RelationFieldsTestPageID` (`RelationFieldsTestPageID`),
  KEY `Sort` (`Sort`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=InnoDB AUTO_INCREMENT=7205 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (86,'HomePage','2007-10-01 12:47:24','2025-09-30 13:15:10','home','Welcome to the public demo of the Silverstripe CMS','Home','<div id=\"Thanks\">\n<p class=\"intro\" style=\"text-align: left;\">The Silverstripe CMS is an open source web content management system used by governments, businesses, and non-profit organisations around the world.</p>\n<p class=\"intro\" style=\"text-align: left;\">[image src=\"/assets/Uploads/layout-illustration.png\" id=\"47497\" width=\"1520\" height=\"1008\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h2>Silverstripe CMS</h2>\n<p>As a platform, the Silverstripe CMS is used to build websites, intranets and web applications. The modern architecture of the Silverstripe CMS allows organisations to keep pace with innovation on the web.</p>\n<p><a href=\"[sitetree_link,id=7197]\">Read more about Silverstripe CMS</a></p>\n<h2>Startup Theme</h2>\n<p>This demo uses the Startup theme which is the default theme provided in the standard download of the Silverstripe CMS v6, with some additional modifications for the purpose of this demo. Startup theme is easy to use and understand.</p>\n<p><a href=\"[sitetree_link,id=6678]\">Read more about the Startup theme</a></p>\n</div>','Welcome to the Silverstripe CMS Open Source CMS demo','this is my test of this website template...','silverstripe 3, demo, cms, html5, open source content management system, php',0,1,NULL,0,1,NULL,0,0,'Published',NULL,'Anyone','LoggedInUsers',0,0,0,310,NULL,NULL,NULL,'Anyone','LoggedInUsers','en_US',0,0,0),(102,'Page','2007-10-01 12:47:24','2025-09-30 13:15:10','about','About',NULL,'<p class=\"intro\">This demo is to show off the authoring interface of Silverstripe CMS. Silverstripe CMS is designed to be super easy to update content, allowing designers and developers to build rich, amazing websites.</p>\n<p>[image src=\"/assets/Uploads/cms-page-edit-large.png\" id=\"47484\" width=\"1319\" height=\"1043\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h2>Try it out</h2>\n<p>To try out Silverstripe CMS for yourself you’ll need to log in as an web administrator which will allow you to make changes to the content of this demo website.</p>\n<p><a href=\"/Security/login\">Log in here</a></p>\n<h2>Friendly and flexible open source CMS</h2>\n<p>The Silverstripe CMS is designed to promote accessible site design, semantic markup, and HTML5 use. With its template flexibility, we\'re confident that it will be able to accommodate whatever is coming next. It has been downloaded well over 500,000 times and powers websites for government agencies, corporations, non-profits and a large number of much smaller websites.</p>\n<p>We believe the open source model simply produces better web software and in turn, better meets our own needs and those of other developers who use the software. As with all open source software, anyone has access to the source code, and a global community of developers can share best practices, code, documentation, roadmap ideas and so on.</p>\n<p><a href=\"[sitetree_link,id=7197]\">More about Silverstripe CMS</a></p>',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Anyone','LoggedInUsers',1,1,0,100,1,NULL,NULL,'Anyone','LoggedInUsers','en_US',0,0,0),(202,'Page','2007-10-01 12:47:24','2025-09-30 13:17:52','resources','Resources',NULL,'<p class=\"intro\">Links to help you get started as well as technical resources.</p>\n<p class=\"intro\">[image src=\"/assets/Uploads/resources-illustration.png\" id=\"47496\" width=\"1520\" height=\"800\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h2 style=\"text-align: left;\">For CMS users</h2>\n<p style=\"text-align: left;\">New to Silverstripe CMS? Our user guide will help get you started with managing content. The guide has been specially created to help web administrators and content authors learn how to make the most of Silverstripe CMS.</p>\n<p style=\"text-align: left;\"><a href=\"https://userhelp.silverstripe.org/en/6/\" rel=\"noopener noreferrer\" target=\"_blank\">User help guide</a><a title=\"Silverstripe Ltd\" href=\"https://silverstripe.com\"></a></p>\n<h2 style=\"text-align: left;\">For developers</h2>\n<p style=\"text-align: left;\">We believe knowledge is best learnt by engaging with other Silverstripe CMS practitioners and getting to know others in the community. Whether your focus is front-end or back-end development, there are several resources and ways to connect with others to help you on your way.</p>\n<ul>\n<li style=\"text-align: left;\"><a href=\"https://docs.silverstripe.org/en/6/\" rel=\"noopener noreferrer\" target=\"_blank\">Silverstripe CMS Docs</a></li>\n<li style=\"text-align: left;\"><a href=\"https://stackoverflow.com/questions/tagged/silverstripe\" rel=\"noopener noreferrer\" target=\"_blank\">Stack Overflow</a></li>\n<li style=\"text-align: left;\"><a href=\"https://www.silverstripe.org/community/slack-signup/\" rel=\"noopener noreferrer\" target=\"_blank\">Slack</a></li>\n</ul>',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Anyone','LoggedInUsers',1,1,0,106,1,NULL,NULL,'Anyone','LoggedInUsers','en_US',0,0,0),(502,'SilverStripe\\ErrorPage\\ErrorPage','2007-10-01 12:47:25','2025-09-30 13:15:20','page-not-found','Page not found',NULL,'<p style=\"text-align: left;\">Sorry, it seems you were trying to access a page that doesn\'t exist.</p>\n<p style=\"text-align: left;\">Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,0,0,NULL,0,7,NULL,0,0,'Published',NULL,'Anyone','LoggedInUsers',1,1,0,15,1,NULL,NULL,'Anyone','LoggedInUsers','en_US',0,0,0),(6670,'SilverStripe\\ErrorPage\\ErrorPage','2010-08-19 12:31:00','2025-09-30 13:15:20','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,NULL,0,0,NULL,0,8,NULL,0,0,'New page',NULL,'Anyone','LoggedInUsers',0,0,0,2,NULL,NULL,NULL,'Inherit','Inherit','en_US',0,0,0),(6674,'Page','2012-05-25 08:28:48','2025-09-30 13:15:13','startup-recipe','Startup recipe',NULL,'<p class=\"intro\">The Startup recipe is a simple yet functional site install to get you started on your next project.</p>\n<p class=\"caption leftAlone\">[image src=\"/assets/Uploads/startup-recipe-illustration.png\" id=\"47500\" width=\"1520\" height=\"880\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h2 class=\"caption leftAlone\">Install now</h2>\n<p class=\"caption leftAlone\"><a href=\"https://github.com/silverstripe/silverstripe-installer\" rel=\"noopener noreferrer\" target=\"_blank\">Available on Gihub here</a></p>\n<h2 class=\"caption leftAlone\"><span>Modules</span></h2>\n<p>Along with the Startup theme styles, the following modules are included:</p>\n<ul>\n<li><strong>Elemental</strong> - allows you to create and structure pages with content blocks</li>\n<li style=\"font-weight: bold;\"><strong>Image focus point</strong></li>\n<li style=\"font-weight: bold;\"><strong>Menu manager</strong></li>\n</ul>\n<h2 class=\"caption leftAlone\">Page templates</h2>\n<p>The following page templates are included:</p>\n<ul>\n<li style=\"font-weight: bold;\"><strong>Blocks page</strong></li>\n<li style=\"font-weight: bold;\"><strong>Landing page</strong></li>\n<li><strong>Content page</strong> (this page)</li>\n</ul>\n<h2 class=\"caption leftAlone\">Content blocks</h2>\n<p>Content blocks are reusable templated sections which can be used across various pages on a site. This gives you the flexibility to design and structure your content how you want.</p>\n<p>Blocks included in the Startup recipe:</p>\n<ul>\n<li><strong>WYSIWYG block</strong> - rich text block which allows for text, links, tables, and images.</li>\n<li><strong>Image-text block</strong> - a simple block which allows for a large image on either the left or right, with simple text content</li>\n</ul>\n<p></p>','Responsive',NULL,NULL,1,1,NULL,0,3,NULL,0,0,NULL,NULL,'Anyone','LoggedInUsers',0,0,6678,52,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0),(6678,'Page','2012-05-25 10:58:19','2025-09-30 13:20:33','theme','Startup Theme','Theme','<p class=\"intro\">Startup theme is the default theme which comes bundled with a new installation of Silverstripe. If you download Silverstripe CMS without this theme you can also find it on <a title=\"Startup theme download\" href=\"https://github.com/silverstripe/startup-theme/\" rel=\"noopener noreferrer\" target=\"_blank\">github.com</a> to use and alter as you wish.</p>\n<p class=\"intro\">[image src=\"/assets/Uploads/startup-logo.png\" id=\"47499\" width=\"1518\" height=\"800\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h2>What is a theme?</h2>\n<p>Themes can be tailored to the needs of a business or individual through basic HTML and CSS which every web developer is familiar with. Within a theme developers have the opportunity to build custom features like forms, image carousels and news pages using Silverstripe CMS and Framework speed up the development process.</p>\n<p>Themes usually consist of built-in typographical styles so that content authors can choose from a predefined set font choices with set colours and size. Removing the option for content authors to chose font colours and faces produces better professionalism of the website, and makes the editing interface simpler. It also means you can later change the visual appearance or theme of your website without altering your written content.</p>\n<p><a href=\"[sitetree_link,id=7203]\">Read more about the Startup theme styles</a></p>\n<h2>Looking for more than just styles?</h2>\n<p>The Startup recipe is a simple yet functional site install to get you started on your next project.</p>\n<p><a href=\"[sitetree_link,id=6674]\">Read about the Startup recipe</a></p>','Styles',NULL,NULL,1,1,NULL,0,5,NULL,0,0,NULL,NULL,'Anyone','LoggedInUsers',0,0,0,30,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0),(7197,'Page','2013-10-04 13:37:19','2025-09-30 13:15:10','silverstripe-cms','Silverstripe CMS',NULL,'<p><span class=\"intro\">Open-source and used all over the world.&nbsp;</span></p>\n<p>Silverstripe CMS was developed by Silverstripe’s three founders in 2000. It’s open source, so it belongs to the global Silverstripe CMS community.</p>\n<p>We believe the open source model simply produces better web software and in turn, better meets our own needs and those of other developers who use the software. As with all open source software, anyone has access to the source code, and a global community of developers can share best practices, code, documentation, roadmap ideas and so on.</p>\n<h2>Features and benefits</h2>\n<h3>Content blocks</h3>\n<p>Building your pages block by block gives you flexibility to design and structure your content how you want.</p>\n<h3><span>Security</span></h3>\n<p>Silverstripe CMS is professionally maintained and has security features built-in to protect your website’s data.</p>\n<h3><span>Add-on library</span></h3>\n<p>Extend the functionality of your website with pre-built add-ons. There are thousands of add-ons to choose from in the add-on library.</p>\n<h3><span>User workflows</span></h3>\n<p>Set up user roles and permissions and then create workflows so that content is reviewed and approved by the right people.</p>\n<h3><span>History and version controls</span></h3>\n<p>See how your content has changed with each version and revert changes if you need to. Content history allows you to see publishing information, and archive it within the CMS.</p>\n<h3><span>Decoupled content delivery</span></h3>\n<p>Silverstripe CMS combines the strength of a traditional CMS with powerful API integrations for a headless or decoupled approach if required.</p>\n<h2>Licensing</h2>\n<p>You never have to pay a licensing fee for Silverstripe CMS, and you never have to worry about vendor lock-in. Under the BSD license, which is one of the most flexible open source licenses and Open Source Initiative approved, you benefit from the contributions of others in the community, and the transparent way in which the software is developed in consultation with its users.</p>',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,NULL,NULL,'Anyone','LoggedInUsers',0,0,102,27,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0),(7198,'Page','2013-10-04 13:59:38','2025-09-30 13:15:12','silverstripe-framework','Silverstripe Framework',NULL,'<p><span class=\"intro\">Besides a powerful and intuitive content authoring application, the Silverstripe CMS contains a powerful PHP based framework.&nbsp;</span></p>\n<p>The Silverstripe Framework brings immense flexibility and ease in customising your site and provides fundamentals such as security models, workflow, caching as well as multiple language and sub-site support.</p>\n<h2>Under the hood</h2>\n<p>Behind the clean CMS and website presentation sits <a href=\"https://www.silverstripe.org/framework-introduction/\">Silverstripe Framework</a>. Website developers use the framework to write code to create templates, logic and tailor how the CMS works. Developers get the power and flexibility of modern PHP code, while content authors get the simplicity of a tailored CMS.</p>\n<p>[image src=\"/assets/Uploads/code.png\" id=\"47485\" width=\"1520\" height=\"720\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h3>Our object-relational mapping (ORM) takes care of your data</h3>\n<p>Define your data model, then the Silverstripe Framework builds and updates the database schema for you with easy-to-use methods for accessing relationships.</p>\n<h3>Build your web forms in no time</h3>\n<p>Silverstripe Framework gives you a helping hand by scaffolding sophisticated forms for you to edit. If you need something more tailored, you can still rely on our extensive library of form fields to get you there quickly.</p>\n<h3>A template engine for the frontend guru</h3>\n<p>The Silverstripe Framework template engine is deliberately simple, keeping application logic in the model and controller layers, so you have complete control of your HTML.</p>\n<h3>Reuse your code</h3>\n<p>Everything you make in the Silverstripe Framework can be broken down into modules so you can reuse at will. You can also make and evolve modules that modify the behaviour of other, more core, modules.</p>\n<h3>Open source development</h3>\n<p>The framework is released under the <a href=\"https://www.silverstripe.org/software/bsd-license/\" rel=\"noopener noreferrer\" target=\"_blank\">Open Source BSD license</a>, with its development being done publicly in collaboration with the community on <a href=\"https://github.com/silverstripe/silverstripe-framework\" rel=\"noopener noreferrer\" target=\"_blank\">GitHub.</a></p>\n<h3>Scale up, out, and securely</h3>\n<p>Architected to safeguard your data from malicious activity or data-loss, Silverstripe CMS scales to high-volume workloads for content-rich and transactional sites thanks to strong API integration points, caching, and support for multi-server cloud configurations.</p>\n<h3>Application programming and launch interfaces</h3>\n<p>Tell Silverstripe Framework about your data model, and you will get three interfaces, a RESTful API, a GraphQL API, and an administrative editing interface.</p>',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,NULL,NULL,'Anyone','LoggedInUsers',0,0,102,17,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0),(7200,'Page','2013-10-04 14:14:16','2025-09-30 13:15:16','silverstripe-ltd','Silverstripe Ltd',NULL,'<p><span class=\"intro\">Silverstripe Ltd (the creator of Silverstripe CMS) is a full-service design and technology company, focused on creative strategy and digital problem solving.&nbsp;</span></p>\n<h2>Impactful digital experiences</h2>\n<p>We’re making things easier for New Zealanders by creating great digital experiences.</p>\n<p><a href=\"https://www.silverstripe.com/our-work/\" rel=\"noopener noreferrer\" target=\"_blank\">View Silverstripe client projects</a></p>\n<h2>From discovery to delivery</h2>\n<p>Silverstripe partner with our clients to deliver winning outcomes through collaboration. That might look like running a workshop to help you understand your user, designing the UI and UX for a new website, or providing technical advice to make sure you’re building something that works with your existing systems.</p>\n<p><a href=\"https://www.silverstripe.com/services/\" rel=\"noopener noreferrer\" target=\"_blank\">Silverstripe professional services</a></p>\n<h2>Silverstripe Cloud</h2>\n<p>Silverstripe Cloud is the best-in-class cloud hosting platform that is optimised for Silverstripe CMS. It’s secure, scalable, and easy to use. We’ll take care of running and protecting your website so you can focus on your content.</p>\n<p><a href=\"https://www.silverstripe.com/cloud-hosting/\" rel=\"noopener noreferrer\" target=\"_blank\">Explore the features and benefits</a></p>',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,NULL,NULL,'Anyone','LoggedInUsers',0,0,102,25,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0),(7203,'Page','2013-10-15 11:58:53','2025-09-30 13:20:36','theme-styles','Theme styles',NULL,'<p class=\"intro\">Editors have the power to alter the appearance of content within the site using the powerful built-in editor.</p>\n<h2>Typography</h2>\n<p>The typography of the Startup theme is designed to create a strong hierarchy with basic styles.</p>\n<p>[image src=\"/assets/Uploads/text-style.png\" id=\"47490\" width=\"819\" height=\"547\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<p></p>\n<h1>Heading &lt;h1&gt;</h1>\n<h2>Heading &lt;h2&gt;</h2>\n<h3>Heading &lt;h3&gt;</h3>\n<h4>Heading &lt;h4&gt;</h4>\n<h5>Heading &lt;h5&gt;</h5>\n<h6>Heading &lt;h6&gt;</h6>\n<p>&nbsp;</p>\n<p>Normal text,&nbsp;<a class=\"ss-broken\" href=\"/\">hyperlinks</a>,&nbsp;<strong>bold</strong>, and&nbsp;<em>italics</em>.</p>\n<p>&nbsp;</p>\n<blockquote>\n<p>This is a blockquote style example.&nbsp;</p>\n</blockquote>\n<p>&nbsp;</p>\n<p>You can insert symbols © and Silverstripe CMS supports characters from languages across the globe.</p>\n<ul>\n<li>Bullet One</li>\n<li>Bullet Two</li>\n<li>Bullet Three</li>\n</ul>\n<ol>\n<li>List One</li>\n<li>List Two</li>\n<li>List Three</li>\n</ol>\n<h2>Layouts</h2>\n<h3>Left aligned content</h3>\n<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<h3 style=\"text-align: center;\">Center aligned content</h3>\n<p style=\"text-align: center;\">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<h3 style=\"text-align: right;\">Right aligned content</h3>\n<p style=\"text-align: right;\">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<p>&nbsp;</p>\n<h3>Table content</h3>\n<div class=\"captionImage leftAlone\" style=\"width: 700px;\">\n<table>\n<thead>\n<tr>\n<td><strong>This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>This is a header&nbsp;</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;Data example</td>\n</tr>\n</tbody>\n</table>\n</div>\n<p>&nbsp;</p>\n<h2>Media</h2>\n<h3>Imagery</h3>\n<p>[image src=\"/assets/Uploads/silverstripe-cms-illustration.png\" id=\"47498\" width=\"1520\" height=\"887\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h3>Video</h3>\n[embed url=\"https://vimeo.com/656725565?share=copy#t=0\" thumbnail=\"https://i.vimeocdn.com/video/1325791672-6435d2b527ca703c13bcccf21fa5e109f292fc037f8e6299cbded6bea295b82b-d_640?region=us\" class=\"leftAlone ss-htmleditorfield-file embed\" width=\"640\" height=\"360\" caption=\"A classic Silverstripe CMS tutorial from Uncle Cheese\"]https://vimeo.com/656725565?share=copy#t=0[/embed]',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,1,NULL,NULL,'Anyone','LoggedInUsers',0,0,6678,2,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0);
/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTreeLink`
--

DROP TABLE IF EXISTS `SiteTreeLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteTreeLink` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTreeLink') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\CMS\\Model\\SiteTreeLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  `ParentClass` enum('SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\SessionManager\\Models\\LoginSession','SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalLink','SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalPageTrack','SilverStripe\\Reports\\ExternalLinks\\Model\\BrokenExternalPageTrackStatus','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','HomePage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\Assets\\File',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `LinkedID` (`LinkedID`),
  KEY `Parent` (`ParentID`,`ParentClass`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTreeLink`
--

LOCK TABLES `SiteTreeLink` WRITE;
/*!40000 ALTER TABLE `SiteTreeLink` DISABLE KEYS */;
INSERT INTO `SiteTreeLink` VALUES (1,'SilverStripe\\CMS\\Model\\SiteTreeLink','2025-07-09 09:48:28','2025-07-09 09:48:28',7197,86,'HomePage'),(2,'SilverStripe\\CMS\\Model\\SiteTreeLink','2025-07-09 09:48:28','2025-07-09 09:48:28',6678,86,'HomePage'),(3,'SilverStripe\\CMS\\Model\\SiteTreeLink','2025-07-09 10:36:54','2025-07-09 10:36:54',7203,6678,'Page'),(4,'SilverStripe\\CMS\\Model\\SiteTreeLink','2025-07-09 10:38:07','2025-07-09 10:38:07',7197,102,'Page'),(5,'SilverStripe\\CMS\\Model\\SiteTreeLink','2025-07-09 10:57:09','2025-07-09 10:57:09',6674,6678,'Page');
/*!40000 ALTER TABLE `SiteTreeLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_EditorGroups`
--

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int NOT NULL DEFAULT '0',
  `GroupID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_EditorGroups`
--

LOCK TABLES `SiteTree_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` DISABLE KEYS */;
INSERT INTO `SiteTree_EditorGroups` VALUES (1,86,1),(2,102,1),(3,202,1),(4,302,1),(5,402,1),(6,502,1),(7,602,1),(8,702,1),(9,802,1),(10,902,1),(11,1002,1),(12,1102,1),(13,1202,1),(14,1302,1),(15,1402,1),(16,1502,1),(17,1602,1),(18,1702,1),(19,1802,1),(20,1902,1),(21,4302,1),(22,4402,1),(23,4702,1),(24,4802,1),(25,4902,1),(26,5002,1),(27,5102,1),(28,5202,1),(29,5302,1),(30,5402,1),(31,5502,1),(32,5602,1),(33,5702,1),(34,5802,1),(35,5902,1),(36,6002,1),(37,6102,1),(38,6202,1),(39,6302,1),(40,6402,1),(41,6502,1),(42,6602,1),(43,6681,1);
/*!40000 ALTER TABLE `SiteTree_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_EditorMembers`
--

DROP TABLE IF EXISTS `SiteTree_EditorMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteTree_EditorMembers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int NOT NULL DEFAULT '0',
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_EditorMembers`
--

LOCK TABLES `SiteTree_EditorMembers` WRITE;
/*!40000 ALTER TABLE `SiteTree_EditorMembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_EditorMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ImageTracking`
--

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int NOT NULL DEFAULT '0',
  `FileID` int NOT NULL DEFAULT '0',
  `FieldName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_ImageTracking`
--

LOCK TABLES `SiteTree_ImageTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` DISABLE KEYS */;
INSERT INTO `SiteTree_ImageTracking` VALUES (201,6638,47409,'Content'),(359,7197,47468,'Content'),(363,7199,47469,'Content'),(514,6674,47475,'Content'),(370,7203,47472,'Content'),(371,7203,47469,'Content'),(515,6674,47470,'Content'),(375,7204,47474,'Content'),(545,86,47478,'RightContent');
/*!40000 ALTER TABLE `SiteTree_ImageTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_LinkTracking`
--

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int NOT NULL DEFAULT '0',
  `ChildID` int NOT NULL DEFAULT '0',
  `FieldName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
INSERT INTO `SiteTree_LinkTracking` VALUES (120,6673,6682,'Content');
/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteTree_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','HomePage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Page',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MetaTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MetaKeywords` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ShowInMenus` tinyint unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ProvideComments` tinyint unsigned NOT NULL DEFAULT '0',
  `Sort` int NOT NULL DEFAULT '0',
  `LegacyURL` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `HasBrokenFile` tinyint unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ReportClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_obsolete_Viewers` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'Anyone',
  `_obsolete_Editors` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'LoggedInUsers',
  `_obsolete_ViewersGroup` int NOT NULL DEFAULT '0',
  `_obsolete_EditorsGroup` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `Priority` float DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ToDo` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Locale` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  `RelationFieldsTestPageID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `URLSegment` (`URLSegment`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`),
  KEY `RelationFieldsTestPageID` (`RelationFieldsTestPageID`),
  KEY `Sort` (`Sort`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=InnoDB AUTO_INCREMENT=7205 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (86,'HomePage','2007-10-01 12:47:24','2025-07-09 09:51:12','home','Welcome to the public demo of the Silverstripe CMS','Home','<div id=\"Thanks\">\n<p class=\"intro\" style=\"text-align: left;\">The Silverstripe CMS is an open source web content management system used by governments, businesses, and non-profit organisations around the world.</p>\n<p class=\"intro\" style=\"text-align: left;\">[image src=\"/assets/Uploads/layout-illustration.png\" id=\"47497\" width=\"1520\" height=\"1008\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h2>Silverstripe CMS</h2>\n<p>As a platform, the Silverstripe CMS is used to build websites, intranets and web applications. The modern architecture of the Silverstripe CMS allows organisations to keep pace with innovation on the web.</p>\n<p><a href=\"[sitetree_link,id=7197]\">Read more about Silverstripe CMS</a></p>\n<h2>Startup Theme</h2>\n<p>This demo uses the Startup theme which is the default theme provided in the standard download of the Silverstripe CMS v6, with some additional modifications for the purpose of this demo. Startup theme is easy to use and understand.</p>\n<p><a href=\"[sitetree_link,id=6678]\">Read more about the Startup theme</a></p>\n</div>','Welcome to the Silverstripe CMS Open Source CMS demo','this is my test of this website template...','silverstripe 3, demo, cms, html5, open source content management system, php',0,1,NULL,0,1,NULL,0,0,'Published',NULL,'Anyone','LoggedInUsers',0,0,0,310,NULL,NULL,NULL,'Anyone','LoggedInUsers','en_US',0,0,0),(102,'Page','2007-10-01 12:47:24','2025-07-09 10:38:07','about','About',NULL,'<p class=\"intro\">This demo is to show off the authoring interface of Silverstripe CMS. Silverstripe CMS is designed to be super easy to update content, allowing designers and developers to build rich, amazing websites.</p>\n<p>[image src=\"/assets/Uploads/cms-page-edit-large.png\" id=\"47484\" width=\"1319\" height=\"1043\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h2>Try it out</h2>\n<p>To try out Silverstripe CMS for yourself you’ll need to log in as an web administrator which will allow you to make changes to the content of this demo website.</p>\n<p><a href=\"/Security/login\">Log in here</a></p>\n<h2>Friendly and flexible open source CMS</h2>\n<p>The Silverstripe CMS is designed to promote accessible site design, semantic markup, and HTML5 use. With its template flexibility, we\'re confident that it will be able to accommodate whatever is coming next. It has been downloaded well over 500,000 times and powers websites for government agencies, corporations, non-profits and a large number of much smaller websites.</p>\n<p>We believe the open source model simply produces better web software and in turn, better meets our own needs and those of other developers who use the software. As with all open source software, anyone has access to the source code, and a global community of developers can share best practices, code, documentation, roadmap ideas and so on.</p>\n<p><a href=\"[sitetree_link,id=7197]\">More about Silverstripe CMS</a></p>',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,'Anyone','LoggedInUsers',1,1,0,100,1,NULL,NULL,'Anyone','LoggedInUsers','en_US',0,0,0),(202,'Page','2007-10-01 12:47:24','2025-09-30 13:17:52','resources','Resources',NULL,'<p class=\"intro\">Links to help you get started as well as technical resources.</p>\n<p class=\"intro\">[image src=\"/assets/Uploads/resources-illustration.png\" id=\"47496\" width=\"1520\" height=\"800\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h2 style=\"text-align: left;\">For CMS users</h2>\n<p style=\"text-align: left;\">New to Silverstripe CMS? Our user guide will help get you started with managing content. The guide has been specially created to help web administrators and content authors learn how to make the most of Silverstripe CMS.</p>\n<p style=\"text-align: left;\"><a href=\"https://userhelp.silverstripe.org/en/6/\" rel=\"noopener noreferrer\" target=\"_blank\">User help guide</a><a title=\"Silverstripe Ltd\" href=\"https://silverstripe.com\"></a></p>\n<h2 style=\"text-align: left;\">For developers</h2>\n<p style=\"text-align: left;\">We believe knowledge is best learnt by engaging with other Silverstripe CMS practitioners and getting to know others in the community. Whether your focus is front-end or back-end development, there are several resources and ways to connect with others to help you on your way.</p>\n<ul>\n<li style=\"text-align: left;\"><a href=\"https://docs.silverstripe.org/en/6/\" rel=\"noopener noreferrer\" target=\"_blank\">Silverstripe CMS Docs</a></li>\n<li style=\"text-align: left;\"><a href=\"https://stackoverflow.com/questions/tagged/silverstripe\" rel=\"noopener noreferrer\" target=\"_blank\">Stack Overflow</a></li>\n<li style=\"text-align: left;\"><a href=\"https://www.silverstripe.org/community/slack-signup/\" rel=\"noopener noreferrer\" target=\"_blank\">Slack</a></li>\n</ul>',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,'Anyone','LoggedInUsers',1,1,0,106,1,NULL,NULL,'Anyone','LoggedInUsers','en_US',0,0,0),(502,'SilverStripe\\ErrorPage\\ErrorPage','2007-10-01 12:47:25','2012-08-29 10:03:38','page-not-found','Page not found',NULL,'<p style=\"text-align: left;\">Sorry, it seems you were trying to access a page that doesn\'t exist.</p>\n<p style=\"text-align: left;\">Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,0,0,NULL,0,7,NULL,0,0,'Published',NULL,'Anyone','LoggedInUsers',1,1,0,15,1,NULL,NULL,'Anyone','LoggedInUsers','en_US',0,0,0),(6670,'SilverStripe\\ErrorPage\\ErrorPage','2010-08-19 12:31:00','2012-05-21 19:34:28','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,NULL,0,0,NULL,0,8,NULL,0,0,'New page',NULL,'Anyone','LoggedInUsers',0,0,0,2,NULL,NULL,NULL,'Inherit','Inherit','en_US',0,0,0),(6674,'Page','2012-05-25 08:28:48','2025-07-09 11:01:16','startup-recipe','Startup recipe',NULL,'<p class=\"intro\">The Startup recipe is a simple yet functional site install to get you started on your next project.</p>\n<p class=\"caption leftAlone\">[image src=\"/assets/Uploads/startup-recipe-illustration.png\" id=\"47500\" width=\"1520\" height=\"880\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h2 class=\"caption leftAlone\">Install now</h2>\n<p class=\"caption leftAlone\"><a href=\"https://github.com/silverstripe/silverstripe-installer\" rel=\"noopener noreferrer\" target=\"_blank\">Available on Gihub here</a></p>\n<h2 class=\"caption leftAlone\"><span>Modules</span></h2>\n<p>Along with the Startup theme styles, the following modules are included:</p>\n<ul>\n<li><strong>Elemental</strong> - allows you to create and structure pages with content blocks</li>\n<li style=\"font-weight: bold;\"><strong>Image focus point</strong></li>\n<li style=\"font-weight: bold;\"><strong>Menu manager</strong></li>\n</ul>\n<h2 class=\"caption leftAlone\">Page templates</h2>\n<p>The following page templates are included:</p>\n<ul>\n<li style=\"font-weight: bold;\"><strong>Blocks page</strong></li>\n<li style=\"font-weight: bold;\"><strong>Landing page</strong></li>\n<li><strong>Content page</strong> (this page)</li>\n</ul>\n<h2 class=\"caption leftAlone\">Content blocks</h2>\n<p>Content blocks are reusable templated sections which can be used across various pages on a site. This gives you the flexibility to design and structure your content how you want.</p>\n<p>Blocks included in the Startup recipe:</p>\n<ul>\n<li><strong>WYSIWYG block</strong> - rich text block which allows for text, links, tables, and images.</li>\n<li><strong>Image-text block</strong> - a simple block which allows for a large image on either the left or right, with simple text content</li>\n</ul>\n<p></p>','Responsive',NULL,NULL,1,1,NULL,0,3,NULL,0,0,NULL,NULL,'Anyone','LoggedInUsers',0,0,6678,52,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0),(6678,'Page','2012-05-25 10:58:19','2025-07-09 10:57:09','theme','Startup Theme','Theme','<p class=\"intro\">Startup theme is the default theme which comes bundled with a new installation of Silverstripe. If you download Silverstripe CMS without this theme you can also find it on <a title=\"Startup theme download\" href=\"https://github.com/silverstripe/startup-theme/\" rel=\"noopener noreferrer\" target=\"_blank\">github.com</a> to use and alter as you wish.</p>\n<p class=\"intro\">[image src=\"/assets/Uploads/startup-logo.png\" id=\"47499\" width=\"1518\" height=\"800\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h2>What is a theme?</h2>\n<p>Themes can be tailored to the needs of a business or individual through basic HTML and CSS which every web developer is familiar with. Within a theme developers have the opportunity to build custom features like forms, image carousels and news pages using Silverstripe CMS and Framework speed up the development process.</p>\n<p>Themes usually consist of built-in typographical styles so that content authors can choose from a predefined set font choices with set colours and size. Removing the option for content authors to chose font colours and faces produces better professionalism of the website, and makes the editing interface simpler. It also means you can later change the visual appearance or theme of your website without altering your written content.</p>\n<p><a href=\"[sitetree_link,id=7203]\">Read more about the Startup theme styles</a></p>\n<h2>Looking for more than just styles?</h2>\n<p>The Startup recipe is a simple yet functional site install to get you started on your next project.</p>\n<p><a href=\"[sitetree_link,id=6674]\">Read about the Startup recipe</a></p>','Styles',NULL,NULL,1,1,NULL,0,5,NULL,0,0,NULL,NULL,'Anyone','LoggedInUsers',0,0,0,30,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0),(7197,'Page','2013-10-04 13:37:19','2025-07-09 11:20:48','silverstripe-cms','Silverstripe CMS',NULL,'<p><span class=\"intro\">Open-source and used all over the world.&nbsp;</span></p>\n<p>Silverstripe CMS was developed by Silverstripe’s three founders in 2000. It’s open source, so it belongs to the global Silverstripe CMS community.</p>\n<p>We believe the open source model simply produces better web software and in turn, better meets our own needs and those of other developers who use the software. As with all open source software, anyone has access to the source code, and a global community of developers can share best practices, code, documentation, roadmap ideas and so on.</p>\n<h2>Features and benefits</h2>\n<h3>Content blocks</h3>\n<p>Building your pages block by block gives you flexibility to design and structure your content how you want.</p>\n<h3><span>Security</span></h3>\n<p>Silverstripe CMS is professionally maintained and has security features built-in to protect your website’s data.</p>\n<h3><span>Add-on library</span></h3>\n<p>Extend the functionality of your website with pre-built add-ons. There are thousands of add-ons to choose from in the add-on library.</p>\n<h3><span>User workflows</span></h3>\n<p>Set up user roles and permissions and then create workflows so that content is reviewed and approved by the right people.</p>\n<h3><span>History and version controls</span></h3>\n<p>See how your content has changed with each version and revert changes if you need to. Content history allows you to see publishing information, and archive it within the CMS.</p>\n<h3><span>Decoupled content delivery</span></h3>\n<p>Silverstripe CMS combines the strength of a traditional CMS with powerful API integrations for a headless or decoupled approach if required.</p>\n<h2>Licensing</h2>\n<p>You never have to pay a licensing fee for Silverstripe CMS, and you never have to worry about vendor lock-in. Under the BSD license, which is one of the most flexible open source licenses and Open Source Initiative approved, you benefit from the contributions of others in the community, and the transparent way in which the software is developed in consultation with its users.</p>',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,NULL,NULL,'Anyone','LoggedInUsers',0,0,102,27,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0),(7198,'Page','2013-10-04 13:59:38','2025-07-09 10:32:45','silverstripe-framework','Silverstripe Framework',NULL,'<p><span class=\"intro\">Besides a powerful and intuitive content authoring application, the Silverstripe CMS contains a powerful PHP based framework.&nbsp;</span></p>\n<p>The Silverstripe Framework brings immense flexibility and ease in customising your site and provides fundamentals such as security models, workflow, caching as well as multiple language and sub-site support.</p>\n<h2>Under the hood</h2>\n<p>Behind the clean CMS and website presentation sits <a href=\"https://www.silverstripe.org/framework-introduction/\">Silverstripe Framework</a>. Website developers use the framework to write code to create templates, logic and tailor how the CMS works. Developers get the power and flexibility of modern PHP code, while content authors get the simplicity of a tailored CMS.</p>\n<p>[image src=\"/assets/Uploads/code.png\" id=\"47485\" width=\"1520\" height=\"720\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h3>Our object-relational mapping (ORM) takes care of your data</h3>\n<p>Define your data model, then the Silverstripe Framework builds and updates the database schema for you with easy-to-use methods for accessing relationships.</p>\n<h3>Build your web forms in no time</h3>\n<p>Silverstripe Framework gives you a helping hand by scaffolding sophisticated forms for you to edit. If you need something more tailored, you can still rely on our extensive library of form fields to get you there quickly.</p>\n<h3>A template engine for the frontend guru</h3>\n<p>The Silverstripe Framework template engine is deliberately simple, keeping application logic in the model and controller layers, so you have complete control of your HTML.</p>\n<h3>Reuse your code</h3>\n<p>Everything you make in the Silverstripe Framework can be broken down into modules so you can reuse at will. You can also make and evolve modules that modify the behaviour of other, more core, modules.</p>\n<h3>Open source development</h3>\n<p>The framework is released under the <a href=\"https://www.silverstripe.org/software/bsd-license/\" rel=\"noopener noreferrer\" target=\"_blank\">Open Source BSD license</a>, with its development being done publicly in collaboration with the community on <a href=\"https://github.com/silverstripe/silverstripe-framework\" rel=\"noopener noreferrer\" target=\"_blank\">GitHub.</a></p>\n<h3>Scale up, out, and securely</h3>\n<p>Architected to safeguard your data from malicious activity or data-loss, Silverstripe CMS scales to high-volume workloads for content-rich and transactional sites thanks to strong API integration points, caching, and support for multi-server cloud configurations.</p>\n<h3>Application programming and launch interfaces</h3>\n<p>Tell Silverstripe Framework about your data model, and you will get three interfaces, a RESTful API, a GraphQL API, and an administrative editing interface.</p>',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,NULL,NULL,'Anyone','LoggedInUsers',0,0,102,17,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0),(7200,'Page','2013-10-04 14:14:16','2025-07-09 10:50:03','silverstripe-ltd','Silverstripe Ltd',NULL,'<p><span class=\"intro\">Silverstripe Ltd (the creator of Silverstripe CMS) is a full-service design and technology company, focused on creative strategy and digital problem solving.&nbsp;</span></p>\n<h2>Impactful digital experiences</h2>\n<p>We’re making things easier for New Zealanders by creating great digital experiences.</p>\n<p><a href=\"https://www.silverstripe.com/our-work/\" rel=\"noopener noreferrer\" target=\"_blank\">View Silverstripe client projects</a></p>\n<h2>From discovery to delivery</h2>\n<p>Silverstripe partner with our clients to deliver winning outcomes through collaboration. That might look like running a workshop to help you understand your user, designing the UI and UX for a new website, or providing technical advice to make sure you’re building something that works with your existing systems.</p>\n<p><a href=\"https://www.silverstripe.com/services/\" rel=\"noopener noreferrer\" target=\"_blank\">Silverstripe professional services</a></p>\n<h2>Silverstripe Cloud</h2>\n<p>Silverstripe Cloud is the best-in-class cloud hosting platform that is optimised for Silverstripe CMS. It’s secure, scalable, and easy to use. We’ll take care of running and protecting your website so you can focus on your content.</p>\n<p><a href=\"https://www.silverstripe.com/cloud-hosting/\" rel=\"noopener noreferrer\" target=\"_blank\">Explore the features and benefits</a></p>',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,NULL,NULL,'Anyone','LoggedInUsers',0,0,102,25,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0),(7203,'Page','2013-10-15 11:58:53','2025-09-30 13:20:36','theme-styles','Theme styles',NULL,'<p class=\"intro\">Editors have the power to alter the appearance of content within the site using the powerful built-in editor.</p>\n<h2>Typography</h2>\n<p>The typography of the Startup theme is designed to create a strong hierarchy with basic styles.</p>\n<p>[image src=\"/assets/Uploads/text-style.png\" id=\"47490\" width=\"819\" height=\"547\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<p></p>\n<h1>Heading &lt;h1&gt;</h1>\n<h2>Heading &lt;h2&gt;</h2>\n<h3>Heading &lt;h3&gt;</h3>\n<h4>Heading &lt;h4&gt;</h4>\n<h5>Heading &lt;h5&gt;</h5>\n<h6>Heading &lt;h6&gt;</h6>\n<p>&nbsp;</p>\n<p>Normal text,&nbsp;<a class=\"ss-broken\" href=\"/\">hyperlinks</a>,&nbsp;<strong>bold</strong>, and&nbsp;<em>italics</em>.</p>\n<p>&nbsp;</p>\n<blockquote>\n<p>This is a blockquote style example.&nbsp;</p>\n</blockquote>\n<p>&nbsp;</p>\n<p>You can insert symbols © and Silverstripe CMS supports characters from languages across the globe.</p>\n<ul>\n<li>Bullet One</li>\n<li>Bullet Two</li>\n<li>Bullet Three</li>\n</ul>\n<ol>\n<li>List One</li>\n<li>List Two</li>\n<li>List Three</li>\n</ol>\n<h2>Layouts</h2>\n<h3>Left aligned content</h3>\n<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<h3 style=\"text-align: center;\">Center aligned content</h3>\n<p style=\"text-align: center;\">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<h3 style=\"text-align: right;\">Right aligned content</h3>\n<p style=\"text-align: right;\">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<p>&nbsp;</p>\n<h3>Table content</h3>\n<div class=\"captionImage leftAlone\" style=\"width: 700px;\">\n<table>\n<thead>\n<tr>\n<td><strong>This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>This is a header&nbsp;</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;Data example</td>\n</tr>\n</tbody>\n</table>\n</div>\n<p>&nbsp;</p>\n<h2>Media</h2>\n<h3>Imagery</h3>\n<p>[image src=\"/assets/Uploads/silverstripe-cms-illustration.png\" id=\"47498\" width=\"1520\" height=\"887\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h3>Video</h3>\n[embed url=\"https://vimeo.com/656725565?share=copy#t=0\" thumbnail=\"https://i.vimeocdn.com/video/1325791672-6435d2b527ca703c13bcccf21fa5e109f292fc037f8e6299cbded6bea295b82b-d_640?region=us\" class=\"leftAlone ss-htmleditorfield-file embed\" width=\"640\" height=\"360\" caption=\"A classic Silverstripe CMS tutorial from Uncle Cheese\"]https://vimeo.com/656725565?share=copy#t=0[/embed]',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,1,NULL,NULL,'Anyone','LoggedInUsers',0,0,6678,2,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0);
/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Versions`
--

DROP TABLE IF EXISTS `SiteTree_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteTree_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `WasPublished` tinyint unsigned NOT NULL DEFAULT '0',
  `AuthorID` int NOT NULL DEFAULT '0',
  `PublisherID` int NOT NULL DEFAULT '0',
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','HomePage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Page',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MetaTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MetaKeywords` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ShowInMenus` tinyint unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ProvideComments` tinyint unsigned NOT NULL DEFAULT '0',
  `Sort` int NOT NULL DEFAULT '0',
  `LegacyURL` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `HasBrokenFile` tinyint unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ReportClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_obsolete_Viewers` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'Anyone',
  `_obsolete_Editors` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'LoggedInUsers',
  `_obsolete_ViewersGroup` int NOT NULL DEFAULT '0',
  `_obsolete_EditorsGroup` int NOT NULL DEFAULT '0',
  `ParentID` int NOT NULL DEFAULT '0',
  `Priority` float DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ToDo` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','OnlyTheseMembers','Inherit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Inherit',
  `Locale` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  `RelationFieldsTestPageID` int NOT NULL DEFAULT '0',
  `WasDeleted` tinyint unsigned NOT NULL DEFAULT '0',
  `WasDraft` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`),
  KEY `RelationFieldsTestPageID` (`RelationFieldsTestPageID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `Sort` (`Sort`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_Versions`
--

LOCK TABLES `SiteTree_Versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_Versions` DISABLE KEYS */;
INSERT INTO `SiteTree_Versions` VALUES (1,7203,1,0,1,0,'Page','2013-10-15 11:58:53','2025-09-30 13:20:36','theme-styles','Theme styles',NULL,'<p class=\"intro\">Editors have the power to alter the appearance of content within the site using the powerful built-in editor.</p>\n<h2>Typography</h2>\n<p>The typography of the Startup theme is designed to create a strong hierarchy with basic styles.</p>\n<p>[image src=\"/assets/Uploads/text-style.png\" id=\"47490\" width=\"819\" height=\"547\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<p></p>\n<h1>Heading &lt;h1&gt;</h1>\n<h2>Heading &lt;h2&gt;</h2>\n<h3>Heading &lt;h3&gt;</h3>\n<h4>Heading &lt;h4&gt;</h4>\n<h5>Heading &lt;h5&gt;</h5>\n<h6>Heading &lt;h6&gt;</h6>\n<p>&nbsp;</p>\n<p>Normal text,&nbsp;<a class=\"ss-broken\" href=\"/\">hyperlinks</a>,&nbsp;<strong>bold</strong>, and&nbsp;<em>italics</em>.</p>\n<p>&nbsp;</p>\n<blockquote>\n<p>This is a blockquote style example.&nbsp;</p>\n</blockquote>\n<p>&nbsp;</p>\n<p>You can insert symbols © and Silverstripe CMS supports characters from languages across the globe.</p>\n<ul>\n<li>Bullet One</li>\n<li>Bullet Two</li>\n<li>Bullet Three</li>\n</ul>\n<ol>\n<li>List One</li>\n<li>List Two</li>\n<li>List Three</li>\n</ol>\n<h2>Layouts</h2>\n<h3>Left aligned content</h3>\n<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<h3 style=\"text-align: center;\">Center aligned content</h3>\n<p style=\"text-align: center;\">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<h3 style=\"text-align: right;\">Right aligned content</h3>\n<p style=\"text-align: right;\">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<p>&nbsp;</p>\n<h3>Table content</h3>\n<div class=\"captionImage leftAlone\" style=\"width: 700px;\">\n<table>\n<thead>\n<tr>\n<td><strong>This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>This is a header&nbsp;</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;Data example</td>\n</tr>\n</tbody>\n</table>\n</div>\n<p>&nbsp;</p>\n<h2>Media</h2>\n<h3>Imagery</h3>\n<p>[image src=\"/assets/Uploads/silverstripe-cms-illustration.png\" id=\"47498\" width=\"1520\" height=\"887\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h3>Video</h3>\n[embed url=\"https://vimeo.com/656725565?share=copy#t=0\" thumbnail=\"https://i.vimeocdn.com/video/1325791672-6435d2b527ca703c13bcccf21fa5e109f292fc037f8e6299cbded6bea295b82b-d_640?region=us\" class=\"leftAlone ss-htmleditorfield-file embed\" width=\"640\" height=\"360\" caption=\"A classic Silverstripe CMS tutorial from Uncle Cheese\"]https://vimeo.com/656725565?share=copy#t=0[/embed]',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,1,NULL,NULL,'Anyone','LoggedInUsers',0,0,6678,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0,0,1),(2,7203,2,1,1,1,'Page','2013-10-15 11:58:53','2025-09-30 13:20:36','theme-styles','Theme styles',NULL,'<p class=\"intro\">Editors have the power to alter the appearance of content within the site using the powerful built-in editor.</p>\n<h2>Typography</h2>\n<p>The typography of the Startup theme is designed to create a strong hierarchy with basic styles.</p>\n<p>[image src=\"/assets/Uploads/text-style.png\" id=\"47490\" width=\"819\" height=\"547\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<p></p>\n<h1>Heading &lt;h1&gt;</h1>\n<h2>Heading &lt;h2&gt;</h2>\n<h3>Heading &lt;h3&gt;</h3>\n<h4>Heading &lt;h4&gt;</h4>\n<h5>Heading &lt;h5&gt;</h5>\n<h6>Heading &lt;h6&gt;</h6>\n<p>&nbsp;</p>\n<p>Normal text,&nbsp;<a class=\"ss-broken\" href=\"/\">hyperlinks</a>,&nbsp;<strong>bold</strong>, and&nbsp;<em>italics</em>.</p>\n<p>&nbsp;</p>\n<blockquote>\n<p>This is a blockquote style example.&nbsp;</p>\n</blockquote>\n<p>&nbsp;</p>\n<p>You can insert symbols © and Silverstripe CMS supports characters from languages across the globe.</p>\n<ul>\n<li>Bullet One</li>\n<li>Bullet Two</li>\n<li>Bullet Three</li>\n</ul>\n<ol>\n<li>List One</li>\n<li>List Two</li>\n<li>List Three</li>\n</ol>\n<h2>Layouts</h2>\n<h3>Left aligned content</h3>\n<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<h3 style=\"text-align: center;\">Center aligned content</h3>\n<p style=\"text-align: center;\">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<h3 style=\"text-align: right;\">Right aligned content</h3>\n<p style=\"text-align: right;\">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<p>&nbsp;</p>\n<h3>Table content</h3>\n<div class=\"captionImage leftAlone\" style=\"width: 700px;\">\n<table>\n<thead>\n<tr>\n<td><strong>This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n<td><strong>This is a header&nbsp;</strong></td>\n<td><strong>&nbsp;This is a header</strong></td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;Data example</td>\n<td>&nbsp;Data example</td>\n</tr>\n</tbody>\n</table>\n</div>\n<p>&nbsp;</p>\n<h2>Media</h2>\n<h3>Imagery</h3>\n<p>[image src=\"/assets/Uploads/silverstripe-cms-illustration.png\" id=\"47498\" width=\"1520\" height=\"887\" class=\"leftAlone ss-htmleditorfield-file image\"]</p>\n<h3>Video</h3>\n[embed url=\"https://vimeo.com/656725565?share=copy#t=0\" thumbnail=\"https://i.vimeocdn.com/video/1325791672-6435d2b527ca703c13bcccf21fa5e109f292fc037f8e6299cbded6bea295b82b-d_640?region=us\" class=\"leftAlone ss-htmleditorfield-file embed\" width=\"640\" height=\"360\" caption=\"A classic Silverstripe CMS tutorial from Uncle Cheese\"]https://vimeo.com/656725565?share=copy#t=0[/embed]',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,1,NULL,NULL,'Anyone','LoggedInUsers',0,0,6678,NULL,NULL,NULL,'Inherit','Inherit',NULL,0,0,0,0,1);
/*!40000 ALTER TABLE `SiteTree_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int NOT NULL DEFAULT '0',
  `GroupID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_ViewerGroups`
--

LOCK TABLES `SiteTree_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` DISABLE KEYS */;
INSERT INTO `SiteTree_ViewerGroups` VALUES (1,86,1),(2,102,1),(3,202,1),(4,302,1),(5,402,1),(6,502,1),(7,602,1),(8,702,1),(9,802,1),(10,902,1),(11,1002,1),(12,1102,1),(13,1202,1),(14,1302,1),(15,1402,1),(16,1502,1),(17,1602,1),(18,1702,1),(19,1802,1),(20,1902,1),(21,4302,1),(22,4402,1),(23,4702,1),(24,4802,1),(25,4902,1),(26,5002,1),(27,5102,1),(28,5202,1),(29,5302,1),(30,5402,1),(31,5502,1),(32,5602,1),(33,5702,1),(34,5802,1),(35,5902,1),(36,6002,1),(37,6102,1),(38,6202,1),(39,6302,1),(40,6402,1),(41,6502,1),(42,6602,1);
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ViewerMembers`
--

DROP TABLE IF EXISTS `SiteTree_ViewerMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SiteTree_ViewerMembers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int NOT NULL DEFAULT '0',
  `MemberID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_ViewerMembers`
--

LOCK TABLES `SiteTree_ViewerMembers` WRITE;
/*!40000 ALTER TABLE `SiteTree_ViewerMembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ViewerMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TestSessionState`
--

DROP TABLE IF EXISTS `TestSessionState`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TestSessionState` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SilverStripe\\TestSession\\TestSessionState') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SilverStripe\\TestSession\\TestSessionState',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `PendingRequests` int NOT NULL DEFAULT '0',
  `LastResponseTimestamp` decimal(14,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TestSessionState`
--

LOCK TABLES `TestSessionState` WRITE;
/*!40000 ALTER TABLE `TestSessionState` DISABLE KEYS */;
/*!40000 ALTER TABLE `TestSessionState` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage`
--

DROP TABLE IF EXISTS `VirtualPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VirtualPage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `VersionID` int NOT NULL DEFAULT '0',
  `CopyContentFromID` int NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  `CustomMetaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CustomExtraMeta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`)
) ENGINE=InnoDB AUTO_INCREMENT=6685 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage`
--

LOCK TABLES `VirtualPage` WRITE;
/*!40000 ALTER TABLE `VirtualPage` DISABLE KEYS */;
INSERT INTO `VirtualPage` VALUES (6684,0,202,0,0,NULL,NULL);
/*!40000 ALTER TABLE `VirtualPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Live`
--

DROP TABLE IF EXISTS `VirtualPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VirtualPage_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `VersionID` int NOT NULL DEFAULT '0',
  `CopyContentFromID` int NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  `CustomMetaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CustomExtraMeta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage_Live`
--

LOCK TABLES `VirtualPage_Live` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Versions`
--

DROP TABLE IF EXISTS `VirtualPage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VirtualPage_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `WasPublished` tinyint unsigned NOT NULL DEFAULT '0',
  `AuthorID` int NOT NULL DEFAULT '0',
  `PublisherID` int NOT NULL DEFAULT '0',
  `VersionID` int NOT NULL DEFAULT '0',
  `CopyContentFromID` int NOT NULL DEFAULT '0',
  `SubsiteID` int NOT NULL DEFAULT '0',
  `MasterPageID` int NOT NULL DEFAULT '0',
  `CustomMetaDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CustomExtraMeta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage_Versions`
--

LOCK TABLES `VirtualPage_Versions` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_HomePage`
--

DROP TABLE IF EXISTS `_obsolete_HomePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_obsolete_HomePage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RightContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obsolete_HomePage`
--

LOCK TABLES `_obsolete_HomePage` WRITE;
/*!40000 ALTER TABLE `_obsolete_HomePage` DISABLE KEYS */;
INSERT INTO `_obsolete_HomePage` VALUES (86,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<p><a href=\"https://www.silverstripe.com/platform\" rel=\"noopener noreferrer\" target=\"_blank\"><img class=\"leftAlone\" style=\"border: 0; box-shadow: none;\" title=\"\" src=\"assets/Uploads/Platform-Banner.png\" alt=\"Platform Banner\" width=\"255\" height=\"255\"></a></p>\n<hr>');
/*!40000 ALTER TABLE `_obsolete_HomePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_HomePage_Live`
--

DROP TABLE IF EXISTS `_obsolete_HomePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_obsolete_HomePage_Live` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RightContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obsolete_HomePage_Live`
--

LOCK TABLES `_obsolete_HomePage_Live` WRITE;
/*!40000 ALTER TABLE `_obsolete_HomePage_Live` DISABLE KEYS */;
INSERT INTO `_obsolete_HomePage_Live` VALUES (86,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<p><a href=\"https://www.silverstripe.com/platform\" rel=\"noopener noreferrer\" target=\"_blank\"><img class=\"leftAlone\" style=\"border: 0; box-shadow: none;\" title=\"\" src=\"assets/Uploads/Platform-Banner.png\" alt=\"Platform Banner\" width=\"255\" height=\"255\"></a></p>\n<hr>');
/*!40000 ALTER TABLE `_obsolete_HomePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_obsolete_HomePage_Versions`
--

DROP TABLE IF EXISTS `_obsolete_HomePage_Versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_obsolete_HomePage_Versions` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `RecordID` int NOT NULL DEFAULT '0',
  `Version` int NOT NULL DEFAULT '0',
  `RightContent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_obsolete_HomePage_Versions`
--

LOCK TABLES `_obsolete_HomePage_Versions` WRITE;
/*!40000 ALTER TABLE `_obsolete_HomePage_Versions` DISABLE KEYS */;
INSERT INTO `_obsolete_HomePage_Versions` VALUES (1,86,259,NULL),(2,86,260,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"admin/security\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<hr><blockquote>I know a number of front-end developers who had limited PHP skills but were able to adapt to this CMS very quickly. I\'ve used it myself, and apart from the flexibility and the ease of integration, the actual UI for the CMS is very intuitive and easy to use, so your clients will love it as well. <cite><strong>Usman Sheilk</strong> <br>\"Expert tip of the month\" .net magazine July 2010.</cite></blockquote>'),(3,86,261,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"admin/security\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<hr><blockquote>I know a number of front-end developers who had limited PHP skills but were able to adapt to this CMS very quickly. I\'ve used it myself, and apart from the flexibility and the ease of integration, the actual UI for the CMS is very intuitive and easy to use, so your clients will love it as well. <cite><strong>Usman Sheilk</strong> <br>\"Expert tip of the month\" .net magazine July 2010.</cite></blockquote>'),(4,86,262,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"admin/security\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<hr><blockquote>I know a number of front-end developers who had limited PHP skills but were able to adapt to this CMS very quickly. I\'ve used it myself, and apart from the flexibility and the ease of integration, the actual UI for the CMS is very intuitive and easy to use, so your clients will love it as well. <cite><strong>Usman Sheilk</strong> <br>\"Expert tip of the month\" .net magazine July 2010.</cite></blockquote>'),(5,86,263,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"admin/security\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<hr><blockquote>I know a number of front-end developers who had limited PHP skills but were able to adapt to this CMS very quickly. I\'ve used it myself, and apart from the flexibility and the ease of integration, the actual UI for the CMS is very intuitive and easy to use, so your clients will love it as well. <cite><strong>Usman Sheilk</strong> <br>\"Expert tip of the month\" .net magazine July 2010.</cite></blockquote>'),(6,86,264,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"admin/security\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<hr><blockquote>I know a number of front-end developers who had limited PHP skills but were able to adapt to this CMS very quickly. I\'ve used it myself, and apart from the flexibility and the ease of integration, the actual UI for the CMS is very intuitive and easy to use, so your clients will love it as well. <cite><strong>Usman Sheilk</strong> <br>\"Expert tip of the month\" .net magazine July 2010.</cite></blockquote>'),(7,86,265,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"admin/security\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<hr><blockquote>I know a number of front-end developers who had limited PHP skills but were able to adapt to this CMS very quickly. I\'ve used it myself, and apart from the flexibility and the ease of integration, the actual UI for the CMS is very intuitive and easy to use, so your clients will love it as well. <cite><strong>Usman Sheilk</strong> <br>\"Expert tip of the month\" .net magazine July 2010.</cite></blockquote>'),(8,86,266,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"https://Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<hr><blockquote>I know a number of front-end developers who had limited PHP skills but were able to adapt to this CMS very quickly. I\'ve used it myself, and apart from the flexibility and the ease of integration, the actual UI for the CMS is very intuitive and easy to use, so your clients will love it as well. <cite><strong>Usman Sheilk</strong> <br>\"Expert tip of the month\" .net magazine July 2010.</cite></blockquote>'),(9,86,267,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"https://demo.silverstripe.com/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<hr><blockquote>I know a number of front-end developers who had limited PHP skills but were able to adapt to this CMS very quickly. I\'ve used it myself, and apart from the flexibility and the ease of integration, the actual UI for the CMS is very intuitive and easy to use, so your clients will love it as well. <cite><strong>Usman Sheilk</strong> <br>\"Expert tip of the month\" .net magazine July 2010.</cite></blockquote>'),(10,86,268,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<hr><blockquote>I know a number of front-end developers who had limited PHP skills but were able to adapt to this CMS very quickly. I\'ve used it myself, and apart from the flexibility and the ease of integration, the actual UI for the CMS is very intuitive and easy to use, so your clients will love it as well. <cite><strong>Usman Sheilk</strong> <br>\"Expert tip of the month\" .net magazine July 2010.</cite></blockquote>'),(11,86,269,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<hr><div class=\"platform-promo\">\n<div class=\"clearfix\">\n<div class=\"col-md-12 col-xs-6 wrapper-dl\"><img src=\"https://www.silverstripe.org/themes/ssv3/img/SSPLogoWhite.svg\" alt=\"\" title=\"\"><h3>Download releases</h3>\n<p>Managed Platform by Silverstripe Ltd. offers professional hosting and web development, along with training and commercial support services, for organisations that demand system reliability and efficient development teams.</p>\n<a class=\"btn btn-default-banner\" href=\"https://www.silverstripe.org/download/#download-releases\">Find out more</a></div>\n<div class=\"col-md-6 col-xs-6 hideImage\"><img src=\"https://www.silverstripe.org/themes/ssv3/img/Platform-Banner.png\" alt=\"\" title=\"\"></div>\n</div>\n</div>'),(12,86,270,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw1NDNd-Screenshot-2016-02-02-15.12.06.png\" alt=\"Screenshot 2016 02 02 15.12.06\" width=\"600\" height=\"543\"></p>\n<hr>'),(13,86,271,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/Platform-Banner-jared.png\" alt=\"Platform Banner jared\" width=\"255\" height=\"255\"></p>\n<hr>'),(14,86,272,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<p><a href=\"https://www.silverstripe.com/platform\" target=\"_blank\"><img class=\"leftAlone\" style=\"border: 0;\" title=\"\" src=\"assets/Uploads/Platform-Banner-jared.png\" alt=\"Platform Banner jared\" width=\"255\" height=\"255\"></a></p>\n<hr>'),(15,86,273,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<p><a href=\"https://www.silverstripe.com/platform\" target=\"_blank\"><img class=\"leftAlone\" style=\"border: 0;\" title=\"\" src=\"assets/Uploads/Platform-Banner.png\" alt=\"Platform Banner\" width=\"255\" height=\"255\"></a></p>\n<hr>'),(16,86,274,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<p><a href=\"https://www.silverstripe.com/platform\" target=\"_blank\"><img class=\"leftAlone\" style=\"border: 0; box-shadow: 0;\" title=\"\" src=\"assets/Uploads/Platform-Banner.png\" alt=\"Platform Banner\" width=\"255\" height=\"255\"></a></p>\n<hr>'),(17,86,275,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<p><a href=\"https://www.silverstripe.com/platform\" target=\"_blank\"><img class=\"leftAlone\" style=\"border: 0; box-shadow: none;\" title=\"\" src=\"assets/Uploads/Platform-Banner.png\" alt=\"Platform Banner\" width=\"255\" height=\"255\"></a></p>\n<hr>'),(18,86,276,'<h3>Try out the content authoring interface yourself!</h3><div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div><p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p><p><a href=\"https://www.silverstripe.com/platform\" target=\"_blank\"><img class=\"leftAlone\" style=\"border: 0; box-shadow: none;\" title=\"\" src=\"assets/Uploads/Platform-Banner.png\" alt=\"Platform Banner\" width=\"255\" height=\"255\"></a></p><hr>'),(19,86,277,'<h3>Try out the content authoring interface yourself!</h3><div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div><p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p><p><a href=\"https://www.silverstripe.com/platform\" target=\"_blank\"><img class=\"leftAlone\" style=\"border: 0; box-shadow: none;\" title=\"\" src=\"assets/Uploads/Platform-Banner.png\" alt=\"Platform Banner\" width=\"255\" height=\"255\"></a></p><hr>'),(20,86,278,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<p><a href=\"https://www.silverstripe.com/platform\" rel=\"noopener noreferrer\" target=\"_blank\"><img class=\"leftAlone\" style=\"border: 0; box-shadow: none;\" title=\"\" src=\"assets/Uploads/Platform-Banner.png\" alt=\"Platform Banner\" width=\"255\" height=\"255\"></a></p>\n<hr>'),(21,86,279,'<h3>Try out the content authoring interface yourself!</h3>\n<div class=\"Actions\"><a class=\"btn\" href=\"admin\">Log in to try the CMS</a><br><a title=\"Language support\" href=\"/Security/login\">Language support</a><hr><a class=\"btn\" href=\"https://www.silverstripe.org/stable-download/\">Download SilverStripe</a></div>\n<p>Visit the Silverstripe CMS community on <a href=\"https://www.silverstripe.org/\">silverstripe.org</a></p>\n<p><a href=\"https://www.silverstripe.com/platform\" rel=\"noopener noreferrer\" target=\"_blank\"><img class=\"leftAlone\" style=\"border: 0; box-shadow: none;\" title=\"\" src=\"assets/Uploads/Platform-Banner.png\" alt=\"Platform Banner\" width=\"255\" height=\"255\"></a></p>\n<hr>');
/*!40000 ALTER TABLE `_obsolete_HomePage_Versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-30 13:47:43
