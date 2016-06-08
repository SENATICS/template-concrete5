-- Adminer 4.2.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `concrete_v5757` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `concrete_v5757`;

DROP TABLE IF EXISTS `AreaLayoutColumns`;
CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AreaLayoutColumns` (`arLayoutColumnID`, `arLayoutID`, `arLayoutColumnIndex`, `arID`, `arLayoutColumnDisplayID`) VALUES
(1,	1,	0,	26,	1),
(2,	1,	1,	27,	2),
(3,	2,	0,	62,	3),
(4,	2,	1,	63,	4),
(5,	3,	0,	64,	5),
(6,	3,	1,	65,	6),
(7,	4,	0,	66,	7),
(8,	4,	1,	67,	8),
(11,	6,	0,	82,	11),
(12,	6,	1,	83,	12),
(13,	7,	0,	103,	3),
(14,	7,	1,	104,	4),
(18,	10,	0,	160,	13),
(19,	10,	1,	161,	14),
(20,	11,	0,	170,	15),
(21,	11,	1,	171,	16),
(22,	12,	0,	172,	17),
(23,	12,	1,	173,	18),
(24,	12,	2,	174,	19),
(25,	13,	0,	183,	20),
(26,	13,	1,	184,	21),
(27,	14,	0,	193,	22),
(28,	14,	1,	194,	23),
(29,	15,	0,	203,	24),
(30,	15,	1,	204,	25),
(31,	16,	0,	237,	26),
(32,	16,	1,	238,	27),
(33,	17,	0,	239,	28),
(34,	17,	1,	240,	29),
(35,	17,	2,	241,	30),
(36,	18,	0,	266,	31),
(37,	18,	1,	267,	32),
(38,	19,	0,	314,	33),
(39,	19,	1,	315,	34),
(40,	19,	2,	316,	35),
(41,	20,	0,	237,	26),
(42,	20,	1,	238,	27),
(43,	21,	0,	333,	36),
(44,	22,	0,	26,	1),
(45,	22,	1,	27,	2),
(46,	23,	0,	26,	1),
(47,	23,	1,	27,	2),
(48,	24,	0,	26,	1),
(49,	24,	1,	27,	2);

DROP TABLE IF EXISTS `AreaLayoutCustomColumns`;
CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AreaLayoutCustomColumns` (`arLayoutColumnID`, `arLayoutColumnWidth`) VALUES
(1,	'207'),
(2,	'817'),
(3,	'724'),
(4,	'269'),
(5,	'0'),
(6,	'0'),
(7,	'754'),
(8,	'239'),
(11,	'207'),
(12,	'786'),
(13,	'739'),
(14,	'254'),
(18,	'234'),
(19,	'759'),
(20,	'233'),
(21,	'760'),
(22,	'0'),
(23,	'0'),
(24,	'0'),
(25,	'234'),
(26,	'759'),
(27,	'234'),
(28,	'759'),
(29,	'231'),
(30,	'762'),
(31,	'0'),
(32,	'0'),
(33,	'0'),
(34,	'0'),
(35,	'0'),
(36,	'682'),
(37,	'311'),
(38,	'0'),
(39,	'0'),
(40,	'0'),
(41,	'0'),
(42,	'0'),
(43,	'0'),
(44,	'243'),
(45,	'781'),
(46,	'243'),
(47,	'781'),
(48,	'243'),
(49,	'781');

DROP TABLE IF EXISTS `AreaLayoutPresets`;
CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `AreaLayouts`;
CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AreaLayouts` (`arLayoutID`, `arLayoutSpacing`, `arLayoutIsCustom`, `arLayoutIsPreset`, `arLayoutMaxColumns`, `arLayoutUsesThemeGridFramework`) VALUES
(1,	20,	1,	0,	0,	0),
(2,	10,	1,	0,	0,	0),
(3,	10,	0,	0,	0,	0),
(4,	10,	1,	0,	0,	0),
(6,	10,	1,	0,	0,	0),
(7,	10,	1,	0,	0,	0),
(10,	10,	1,	0,	0,	0),
(11,	10,	1,	0,	0,	0),
(12,	10,	0,	0,	0,	0),
(13,	10,	1,	0,	0,	0),
(14,	10,	1,	0,	0,	0),
(15,	10,	1,	0,	0,	0),
(16,	10,	0,	0,	0,	0),
(17,	10,	0,	0,	0,	0),
(18,	10,	1,	0,	0,	0),
(19,	10,	0,	0,	0,	0),
(20,	30,	0,	0,	0,	0),
(21,	0,	0,	0,	0,	0),
(22,	20,	1,	0,	0,	0),
(23,	10,	1,	0,	0,	0),
(24,	0,	1,	0,	0,	0);

DROP TABLE IF EXISTS `AreaLayoutsUsingPresets`;
CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `AreaLayoutThemeGridColumns`;
CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `AreaPermissionAssignments`;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Areas`;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
(1,	127,	'Main',	0,	0,	0,	0),
(2,	128,	'Primary',	0,	0,	0,	0),
(3,	128,	'Secondary 1',	0,	0,	0,	0),
(4,	128,	'Secondary 2',	0,	0,	0,	0),
(5,	128,	'Secondary 3',	0,	0,	0,	0),
(6,	128,	'Secondary 4',	0,	0,	0,	0),
(7,	128,	'Secondary 5',	0,	0,	0,	0),
(8,	145,	'Main',	0,	0,	0,	0),
(9,	146,	'Main',	0,	0,	0,	0),
(10,	1,	'Header Site Title',	0,	0,	1,	0),
(11,	147,	'Main',	0,	0,	0,	0),
(12,	1,	'Header Navigation',	0,	0,	1,	0),
(13,	1,	'Main',	0,	0,	0,	0),
(14,	1,	'Page Footer',	0,	0,	0,	0),
(15,	148,	'Main',	0,	0,	0,	0),
(16,	1,	'Footer Legal',	0,	0,	1,	0),
(17,	149,	'Main',	0,	0,	0,	0),
(18,	1,	'Footer Navigation',	0,	0,	1,	0),
(19,	150,	'Main',	0,	0,	0,	0),
(20,	1,	'Footer Contact',	0,	0,	1,	0),
(21,	151,	'Main',	0,	0,	0,	0),
(22,	1,	'Search',	0,	0,	1,	0),
(23,	1,	'Slider',	0,	0,	0,	0),
(24,	1,	'Contenido A',	0,	0,	0,	0),
(25,	1,	'Contenido B',	0,	0,	0,	0),
(26,	1,	'Slider : 1',	0,	0,	0,	23),
(27,	1,	'Slider : 2',	0,	0,	0,	23),
(28,	152,	'Main',	0,	0,	0,	0),
(29,	153,	'Main',	0,	0,	0,	0),
(38,	154,	'Header Site Title',	0,	0,	1,	0),
(39,	154,	'Search',	0,	0,	1,	0),
(40,	154,	'Header Navigation',	0,	0,	1,	0),
(41,	154,	'Titulo',	0,	0,	0,	0),
(42,	154,	'Contenido',	0,	0,	0,	0),
(43,	154,	'Footer Contact',	0,	0,	1,	0),
(44,	154,	'Footer Navigation',	0,	0,	1,	0),
(45,	154,	'Footer Legal',	0,	0,	1,	0),
(46,	156,	'Header Site Title',	0,	0,	1,	0),
(47,	156,	'Search',	0,	0,	1,	0),
(48,	156,	'Header Navigation',	0,	0,	1,	0),
(49,	156,	'Titulo',	0,	0,	0,	0),
(50,	156,	'Contenido',	0,	0,	0,	0),
(51,	156,	'Footer Contact',	0,	0,	1,	0),
(52,	156,	'Footer Navigation',	0,	0,	1,	0),
(53,	156,	'Footer Legal',	0,	0,	1,	0),
(54,	157,	'Header Site Title',	0,	0,	1,	0),
(55,	157,	'Search',	0,	0,	1,	0),
(56,	157,	'Header Navigation',	0,	0,	1,	0),
(57,	157,	'Titulo',	0,	0,	0,	0),
(58,	157,	'Contenido',	0,	0,	0,	0),
(59,	157,	'Footer Contact',	0,	0,	1,	0),
(60,	157,	'Footer Navigation',	0,	0,	1,	0),
(61,	157,	'Footer Legal',	0,	0,	1,	0),
(62,	157,	'Titulo : 3',	0,	0,	0,	57),
(63,	157,	'Titulo : 4',	0,	0,	0,	57),
(64,	157,	'Contenido : 5',	0,	0,	0,	58),
(65,	157,	'Contenido : 6',	0,	0,	0,	58),
(66,	156,	'Contenido : 7',	0,	0,	0,	50),
(67,	156,	'Contenido : 8',	0,	0,	0,	50),
(82,	157,	'Contenido : 11',	0,	0,	0,	58),
(83,	157,	'Contenido : 12',	0,	0,	0,	58),
(98,	160,	'Contenido',	0,	0,	0,	0),
(99,	160,	'Header Site Title',	0,	0,	1,	0),
(100,	160,	'Search',	0,	0,	1,	0),
(101,	160,	'Header Navigation',	0,	0,	1,	0),
(102,	160,	'Titulo',	0,	0,	0,	0),
(103,	160,	'Titulo : 3',	0,	0,	0,	102),
(104,	160,	'Titulo : 4',	0,	0,	0,	102),
(105,	160,	'Contenido : 5',	0,	0,	0,	98),
(106,	160,	'Contenido : 6',	0,	0,	0,	98),
(107,	160,	'Contenido : 11',	0,	0,	0,	98),
(108,	160,	'Contenido : 12',	0,	0,	0,	98),
(109,	160,	'Footer Contact',	0,	0,	1,	0),
(110,	160,	'Footer Navigation',	0,	0,	1,	0),
(111,	160,	'Footer Legal',	0,	0,	1,	0),
(112,	161,	'Contenido',	0,	0,	0,	0),
(113,	161,	'Header Site Title',	0,	0,	1,	0),
(114,	161,	'Search',	0,	0,	1,	0),
(115,	161,	'Header Navigation',	0,	0,	1,	0),
(116,	161,	'Titulo',	0,	0,	0,	0),
(117,	161,	'Titulo : 3',	0,	0,	0,	116),
(118,	161,	'Titulo : 4',	0,	0,	0,	116),
(119,	161,	'Contenido : 5',	0,	0,	0,	112),
(120,	161,	'Contenido : 6',	0,	0,	0,	112),
(121,	161,	'Contenido : 11',	0,	0,	0,	112),
(122,	161,	'Contenido : 12',	0,	0,	0,	112),
(123,	161,	'Footer Contact',	0,	0,	1,	0),
(124,	161,	'Footer Navigation',	0,	0,	1,	0),
(125,	161,	'Footer Legal',	0,	0,	1,	0),
(126,	162,	'Contenido',	0,	0,	0,	0),
(127,	142,	'Main',	0,	0,	0,	0),
(128,	162,	'Header Site Title',	0,	0,	1,	0),
(129,	162,	'Search',	0,	0,	1,	0),
(130,	162,	'Header Navigation',	0,	0,	1,	0),
(131,	162,	'Titulo',	0,	0,	0,	0),
(132,	162,	'Titulo : 3',	0,	0,	0,	131),
(133,	162,	'Titulo : 4',	0,	0,	0,	131),
(134,	162,	'Contenido : 5',	0,	0,	0,	126),
(135,	162,	'Contenido : 6',	0,	0,	0,	126),
(136,	162,	'Contenido : 11',	0,	0,	0,	126),
(137,	162,	'Contenido : 12',	0,	0,	0,	126),
(138,	162,	'Footer Contact',	0,	0,	1,	0),
(139,	162,	'Footer Navigation',	0,	0,	1,	0),
(140,	162,	'Footer Legal',	0,	0,	1,	0),
(141,	181,	'Header Site Title',	0,	0,	1,	0),
(142,	181,	'Search',	0,	0,	1,	0),
(143,	181,	'Header Navigation',	0,	0,	1,	0),
(144,	181,	'Titulo',	0,	0,	0,	0),
(145,	181,	'Contenido',	0,	0,	0,	0),
(146,	181,	'Footer Contact',	0,	0,	1,	0),
(147,	181,	'Footer Navigation',	0,	0,	1,	0),
(148,	181,	'Footer Legal',	0,	0,	1,	0),
(152,	182,	'Header Site Title',	0,	0,	1,	0),
(153,	182,	'Search',	0,	0,	1,	0),
(154,	182,	'Header Navigation',	0,	0,	1,	0),
(155,	182,	'Titulo',	0,	0,	0,	0),
(156,	182,	'Contenido',	0,	0,	0,	0),
(157,	182,	'Footer Contact',	0,	0,	1,	0),
(158,	182,	'Footer Navigation',	0,	0,	1,	0),
(159,	182,	'Footer Legal',	0,	0,	1,	0),
(160,	182,	'Contenido : 13',	0,	0,	0,	156),
(161,	182,	'Contenido : 14',	0,	0,	0,	156),
(162,	183,	'Header Site Title',	0,	0,	1,	0),
(163,	183,	'Search',	0,	0,	1,	0),
(164,	183,	'Header Navigation',	0,	0,	1,	0),
(165,	183,	'Titulo',	0,	0,	0,	0),
(166,	183,	'Contenido',	0,	0,	0,	0),
(167,	183,	'Footer Contact',	0,	0,	1,	0),
(168,	183,	'Footer Navigation',	0,	0,	1,	0),
(169,	183,	'Footer Legal',	0,	0,	1,	0),
(170,	183,	'Contenido : 15',	0,	0,	0,	166),
(171,	183,	'Contenido : 16',	0,	0,	0,	166),
(172,	183,	'Contenido : 16 : 17',	0,	0,	0,	171),
(173,	183,	'Contenido : 16 : 18',	0,	0,	0,	171),
(174,	183,	'Contenido : 16 : 19',	0,	0,	0,	171),
(175,	184,	'Header Site Title',	0,	0,	1,	0),
(176,	184,	'Search',	0,	0,	1,	0),
(177,	184,	'Header Navigation',	0,	0,	1,	0),
(178,	184,	'Titulo',	0,	0,	0,	0),
(179,	184,	'Contenido',	0,	0,	0,	0),
(180,	184,	'Footer Contact',	0,	0,	1,	0),
(181,	184,	'Footer Navigation',	0,	0,	1,	0),
(182,	184,	'Footer Legal',	0,	0,	1,	0),
(183,	184,	'Contenido : 20',	0,	0,	0,	179),
(184,	184,	'Contenido : 21',	0,	0,	0,	179),
(185,	185,	'Header Site Title',	0,	0,	1,	0),
(186,	185,	'Search',	0,	0,	1,	0),
(187,	185,	'Header Navigation',	0,	0,	1,	0),
(188,	185,	'Titulo',	0,	0,	0,	0),
(189,	185,	'Contenido',	0,	0,	0,	0),
(190,	185,	'Footer Contact',	0,	0,	1,	0),
(191,	185,	'Footer Navigation',	0,	0,	1,	0),
(192,	185,	'Footer Legal',	0,	0,	1,	0),
(193,	185,	'Contenido : 22',	0,	0,	0,	189),
(194,	185,	'Contenido : 23',	0,	0,	0,	189),
(195,	186,	'Header Site Title',	0,	0,	1,	0),
(196,	186,	'Search',	0,	0,	1,	0),
(197,	186,	'Header Navigation',	0,	0,	1,	0),
(198,	186,	'Titulo',	0,	0,	0,	0),
(199,	186,	'Contenido',	0,	0,	0,	0),
(200,	186,	'Footer Contact',	0,	0,	1,	0),
(201,	186,	'Footer Navigation',	0,	0,	1,	0),
(202,	186,	'Footer Legal',	0,	0,	1,	0),
(203,	186,	'Contenido : 24',	0,	0,	0,	199),
(204,	186,	'Contenido : 25',	0,	0,	0,	199),
(205,	187,	'Header Site Title',	0,	0,	1,	0),
(206,	187,	'Search',	0,	0,	1,	0),
(207,	187,	'Header Navigation',	0,	0,	1,	0),
(208,	187,	'Titulo',	0,	0,	0,	0),
(209,	187,	'Contenido',	0,	0,	0,	0),
(210,	187,	'Footer Contact',	0,	0,	1,	0),
(211,	187,	'Footer Navigation',	0,	0,	1,	0),
(212,	187,	'Footer Legal',	0,	0,	1,	0),
(213,	188,	'Header Site Title',	0,	0,	1,	0),
(214,	188,	'Search',	0,	0,	1,	0),
(215,	188,	'Header Navigation',	0,	0,	1,	0),
(216,	188,	'Titulo',	0,	0,	0,	0),
(217,	188,	'Contenido',	0,	0,	0,	0),
(218,	188,	'Footer Contact',	0,	0,	1,	0),
(219,	188,	'Footer Navigation',	0,	0,	1,	0),
(220,	188,	'Footer Legal',	0,	0,	1,	0),
(221,	189,	'Header Site Title',	0,	0,	1,	0),
(222,	189,	'Search',	0,	0,	1,	0),
(223,	189,	'Header Navigation',	0,	0,	1,	0),
(224,	189,	'Titulo',	0,	0,	0,	0),
(225,	189,	'Contenido',	0,	0,	0,	0),
(226,	189,	'Footer Contact',	0,	0,	1,	0),
(227,	189,	'Footer Navigation',	0,	0,	1,	0),
(228,	189,	'Footer Legal',	0,	0,	1,	0),
(229,	190,	'Header Site Title',	0,	0,	1,	0),
(230,	190,	'Search',	0,	0,	1,	0),
(231,	190,	'Header Navigation',	0,	0,	1,	0),
(232,	190,	'Titulo',	0,	0,	0,	0),
(233,	190,	'Contenido',	0,	0,	0,	0),
(234,	190,	'Footer Contact',	0,	0,	1,	0),
(235,	190,	'Footer Navigation',	0,	0,	1,	0),
(236,	190,	'Footer Legal',	0,	0,	1,	0),
(237,	190,	'Contenido : 26',	0,	0,	0,	233),
(238,	190,	'Contenido : 27',	0,	0,	0,	233),
(239,	1,	'Slider : 2 : 28',	0,	0,	0,	27),
(240,	1,	'Slider : 2 : 29',	0,	0,	0,	27),
(241,	1,	'Slider : 2 : 30',	0,	0,	0,	27),
(242,	191,	'Header Site Title',	0,	0,	1,	0),
(243,	191,	'Search',	0,	0,	1,	0),
(244,	191,	'Header Navigation',	0,	0,	1,	0),
(245,	191,	'Titulo',	0,	0,	0,	0),
(246,	191,	'Contenido',	0,	0,	0,	0),
(247,	191,	'Footer Contact',	0,	0,	1,	0),
(248,	191,	'Footer Navigation',	0,	0,	1,	0),
(249,	191,	'Footer Legal',	0,	0,	1,	0),
(250,	192,	'Header Site Title',	0,	0,	1,	0),
(251,	192,	'Search',	0,	0,	1,	0),
(252,	192,	'Header Navigation',	0,	0,	1,	0),
(253,	192,	'Titulo',	0,	0,	0,	0),
(254,	192,	'Contenido',	0,	0,	0,	0),
(255,	192,	'Footer Contact',	0,	0,	1,	0),
(256,	192,	'Footer Navigation',	0,	0,	1,	0),
(257,	192,	'Footer Legal',	0,	0,	1,	0),
(258,	193,	'Header Site Title',	0,	0,	1,	0),
(259,	193,	'Search',	0,	0,	1,	0),
(260,	193,	'Header Navigation',	0,	0,	1,	0),
(261,	193,	'Titulo',	0,	0,	0,	0),
(262,	193,	'Contenido',	0,	0,	0,	0),
(263,	193,	'Footer Contact',	0,	0,	1,	0),
(264,	193,	'Footer Navigation',	0,	0,	1,	0),
(265,	193,	'Footer Legal',	0,	0,	1,	0),
(266,	1,	'Contenido A : 31',	0,	0,	0,	24),
(267,	1,	'Contenido A : 32',	0,	0,	0,	24),
(268,	194,	'Header Site Title',	0,	0,	1,	0),
(269,	194,	'Search',	0,	0,	1,	0),
(270,	194,	'Header Navigation',	0,	0,	1,	0),
(271,	194,	'Titulo',	0,	0,	0,	0),
(272,	194,	'Contenido',	0,	0,	0,	0),
(273,	194,	'Footer Contact',	0,	0,	1,	0),
(274,	194,	'Footer Navigation',	0,	0,	1,	0),
(275,	194,	'Footer Legal',	0,	0,	1,	0),
(276,	195,	'Header Site Title',	0,	0,	1,	0),
(277,	195,	'Search',	0,	0,	1,	0),
(278,	195,	'Header Navigation',	0,	0,	1,	0),
(279,	195,	'Titulo',	0,	0,	0,	0),
(280,	195,	'Contenido',	0,	0,	0,	0),
(281,	195,	'Footer Contact',	0,	0,	1,	0),
(282,	195,	'Footer Navigation',	0,	0,	1,	0),
(283,	195,	'Footer Legal',	0,	0,	1,	0),
(284,	196,	'Contenido',	0,	0,	0,	0),
(285,	196,	'Header Site Title',	0,	0,	1,	0),
(286,	196,	'Search',	0,	0,	1,	0),
(287,	196,	'Header Navigation',	0,	0,	1,	0),
(288,	196,	'Titulo',	0,	0,	0,	0),
(289,	196,	'Titulo : 3',	0,	0,	0,	288),
(290,	196,	'Titulo : 4',	0,	0,	0,	288),
(291,	196,	'Contenido : 5',	0,	0,	0,	284),
(292,	196,	'Contenido : 6',	0,	0,	0,	284),
(293,	196,	'Contenido : 11',	0,	0,	0,	284),
(294,	196,	'Contenido : 12',	0,	0,	0,	284),
(295,	196,	'Footer Contact',	0,	0,	1,	0),
(296,	196,	'Footer Navigation',	0,	0,	1,	0),
(297,	196,	'Footer Legal',	0,	0,	1,	0),
(298,	197,	'Header Site Title',	0,	0,	1,	0),
(299,	197,	'Search',	0,	0,	1,	0),
(300,	197,	'Header Navigation',	0,	0,	1,	0),
(301,	197,	'Titulo',	0,	0,	0,	0),
(302,	197,	'Contenido',	0,	0,	0,	0),
(303,	197,	'Footer Contact',	0,	0,	1,	0),
(304,	197,	'Footer Navigation',	0,	0,	1,	0),
(305,	197,	'Footer Legal',	0,	0,	1,	0),
(306,	198,	'Header Site Title',	0,	0,	1,	0),
(307,	198,	'Search',	0,	0,	1,	0),
(308,	198,	'Header Navigation',	0,	0,	1,	0),
(309,	198,	'Titulo',	0,	0,	0,	0),
(310,	198,	'Contenido',	0,	0,	0,	0),
(311,	198,	'Footer Contact',	0,	0,	1,	0),
(312,	198,	'Footer Navigation',	0,	0,	1,	0),
(313,	198,	'Footer Legal',	0,	0,	1,	0),
(314,	198,	'Contenido : 33',	0,	0,	0,	310),
(315,	198,	'Contenido : 34',	0,	0,	0,	310),
(316,	198,	'Contenido : 35',	0,	0,	0,	310),
(317,	199,	'Header Site Title',	0,	0,	1,	0),
(318,	199,	'Search',	0,	0,	1,	0),
(319,	199,	'Header Navigation',	0,	0,	1,	0),
(320,	199,	'Titulo',	0,	0,	0,	0),
(321,	199,	'Contenido',	0,	0,	0,	0),
(322,	199,	'Footer Contact',	0,	0,	1,	0),
(323,	199,	'Footer Navigation',	0,	0,	1,	0),
(324,	199,	'Footer Legal',	0,	0,	1,	0),
(325,	200,	'Header Site Title',	0,	0,	1,	0),
(326,	200,	'Search',	0,	0,	1,	0),
(327,	200,	'Header Navigation',	0,	0,	1,	0),
(328,	200,	'Titulo',	0,	0,	0,	0),
(329,	200,	'Contenido',	0,	0,	0,	0),
(330,	200,	'Footer Contact',	0,	0,	1,	0),
(331,	200,	'Footer Navigation',	0,	0,	1,	0),
(332,	200,	'Footer Legal',	0,	0,	1,	0),
(333,	1,	'Slider : 36',	0,	0,	0,	23),
(334,	201,	'Contenido',	0,	0,	0,	0),
(335,	201,	'Header Site Title',	0,	0,	1,	0),
(336,	201,	'Search',	0,	0,	1,	0),
(337,	201,	'Header Navigation',	0,	0,	1,	0),
(338,	201,	'Titulo',	0,	0,	0,	0),
(339,	201,	'Titulo : 3',	0,	0,	0,	338),
(340,	201,	'Titulo : 4',	0,	0,	0,	338),
(341,	201,	'Contenido : 5',	0,	0,	0,	334),
(342,	201,	'Contenido : 6',	0,	0,	0,	334),
(343,	201,	'Contenido : 11',	0,	0,	0,	334),
(344,	201,	'Contenido : 12',	0,	0,	0,	334),
(345,	201,	'Footer Contact',	0,	0,	1,	0),
(346,	201,	'Footer Navigation',	0,	0,	1,	0),
(347,	201,	'Footer Legal',	0,	0,	1,	0);

DROP TABLE IF EXISTS `atAddress`;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atAddressCustomCountries`;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atAddressSettings`;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atBoolean`;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atBoolean` (`avID`, `value`) VALUES
(9,	1),
(16,	1),
(18,	1),
(28,	1),
(29,	1),
(30,	1),
(31,	1),
(32,	1),
(33,	1),
(34,	1),
(35,	1),
(42,	1),
(43,	1),
(47,	1),
(51,	1),
(99,	1),
(107,	1),
(108,	1),
(109,	1),
(114,	1),
(115,	1),
(116,	1),
(117,	1),
(127,	0),
(136,	0),
(149,	1),
(153,	1),
(157,	1),
(167,	1),
(168,	1),
(169,	1),
(170,	1),
(171,	1),
(172,	1),
(173,	1),
(174,	0),
(175,	1),
(176,	0),
(177,	1),
(178,	0),
(179,	0),
(180,	0),
(183,	0),
(184,	0),
(185,	0),
(186,	0),
(187,	0),
(188,	0),
(189,	0),
(196,	1),
(197,	1),
(198,	1),
(207,	1),
(299,	1),
(301,	1),
(310,	1);

DROP TABLE IF EXISTS `atBooleanSettings`;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atBooleanSettings` (`akID`, `akCheckedByDefault`) VALUES
(5,	0),
(6,	0),
(9,	0),
(10,	0),
(11,	0),
(12,	1),
(13,	1);

DROP TABLE IF EXISTS `atDateTime`;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atDateTimeSettings`;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atDefault`;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atDefault` (`avID`, `value`) VALUES
(1,	'fa fa-th-large'),
(2,	'pages, add page, delete page, copy, move, alias'),
(3,	'pages, add page, delete page, copy, move, alias'),
(4,	'pages, add page, delete page, copy, move, alias, bulk'),
(5,	'find page, search page, search, find, pages, sitemap'),
(6,	'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(7,	'file, file attributes, title, attribute, description, rename'),
(8,	'files, category, categories'),
(10,	'new file set'),
(11,	'users, groups, people, find, delete user, remove user, change password, password'),
(12,	'find, search, people, delete user, remove user, change password, password'),
(13,	'user, group, people, permissions, expire, badges'),
(14,	'user attributes, user data, gather data, registration data'),
(15,	'new user, create'),
(17,	'new user group, new group, group, create'),
(19,	'group set'),
(20,	'community, points, karma'),
(21,	'action, community actions'),
(22,	'forms, log, error, email, mysql, exception, survey'),
(23,	'forms, questions, response, data'),
(24,	'questions, quiz, response'),
(25,	'forms, log, error, email, mysql, exception, survey, history'),
(26,	'new theme, theme, active theme, change theme, template, css'),
(27,	'page types'),
(36,	'page attributes, custom'),
(37,	'single, page, custom, application'),
(38,	'atom, rss, feed, syndication'),
(39,	'icon-bullhorn'),
(40,	'add workflow, remove workflow'),
(41,	'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(44,	'edit stacks, view stacks, all stacks'),
(45,	'block, refresh, custom'),
(46,	'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),
(48,	'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(49,	'update, upgrade'),
(50,	'concrete5.org, my account, marketplace'),
(52,	'buy theme, new theme, marketplace, template'),
(53,	'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(54,	'dashboard, configuration'),
(55,	'website name, title'),
(56,	'accessibility, easy mode'),
(57,	'sharing, facebook, twitter'),
(58,	'logo, favicon, iphone, icon, bookmark'),
(59,	'tinymce, content block, fonts, editor, content, overlay'),
(60,	'translate, translation, internationalization, multilingual'),
(61,	'timezone, profile, locale'),
(62,	'multilingual, localization, internationalization, i18n'),
(63,	'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view'),
(64,	'bulk, seo, change keywords, engine, optimization, search'),
(65,	'traffic, statistics, google analytics, quant, pageviews, hits'),
(66,	'pretty, slug'),
(67,	'configure search, site search, search option'),
(68,	'file options, file manager, upload, modify'),
(69,	'security, files, media, extension, manager, upload'),
(70,	'images, picture, responsive, retina'),
(71,	'uploading, upload, images, image, resizing, manager'),
(72,	'security, alternate storage, hide files'),
(73,	'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(74,	'cache option, turn off cache, no cache, page cache, caching'),
(75,	'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(76,	'queries, database, mysql'),
(77,	'editors, hide site, offline, private, public, access'),
(78,	'security, actions, administrator, admin, package, marketplace, search'),
(79,	'security, lock ip, lock out, block ip, address, restrict, access'),
(80,	'security, registration'),
(81,	'antispam, block spam, security'),
(82,	'lock site, under construction, hide, hidden'),
(83,	'profile, login, redirect, specific, dashboard, administrators'),
(84,	'member profile, member page, community, forums, social, avatar'),
(85,	'signup, new user, community, public registration, public, registration'),
(86,	'auth, authentication, types, oauth, facebook, login, registration'),
(87,	'smtp, mail settings'),
(88,	'email server, mail settings, mail configuration, external, internal'),
(89,	'test smtp, test mail'),
(90,	'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(91,	'conversations'),
(92,	'conversations'),
(93,	'conversations ratings, ratings, community, community points'),
(94,	'conversations bad words, banned words, banned, bad words, bad, words, list'),
(95,	'attribute configuration'),
(96,	'attributes, sets'),
(97,	'attributes, types'),
(98,	'topics, tags, taxonomy'),
(100,	'overrides, system info, debug, support, help'),
(101,	'errors, exceptions, develop, support, help'),
(102,	'email, logging, logs, smtp, pop, errors, mysql, log'),
(103,	'network, proxy server'),
(104,	'database, entities, doctrine, orm'),
(105,	'export, backup, database, sql, mysql, encryption, restore'),
(106,	'upgrade, new version, update'),
(110,	'fa fa-edit'),
(111,	'fa fa-trash-o'),
(112,	'fa fa-th'),
(113,	'fa fa-briefcase'),
(124,	''),
(125,	''),
(126,	'');

DROP TABLE IF EXISTS `atFile`;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atFile` (`avID`, `fID`) VALUES
(211,	0),
(164,	4),
(208,	4),
(217,	4),
(139,	5),
(146,	5),
(151,	5),
(154,	5),
(158,	5),
(161,	5),
(214,	5),
(226,	20),
(293,	21),
(223,	23),
(325,	25),
(220,	32),
(296,	33),
(300,	33),
(302,	34),
(305,	35);

DROP TABLE IF EXISTS `atNumber`;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atNumber` (`avID`, `value`) VALUES
(118,	400.0000),
(119,	140.0000),
(120,	244.0000),
(121,	95.0000),
(122,	300.0000),
(123,	64.0000),
(128,	600.0000),
(129,	229.0000),
(130,	244.0000),
(131,	95.0000),
(132,	244.0000),
(133,	95.0000),
(134,	600.0000),
(135,	229.0000),
(142,	1000.0000),
(143,	350.0000),
(144,	1000.0000),
(145,	672.0000),
(181,	2072.0000),
(182,	1242.0000),
(190,	700.0000),
(191,	150.0000),
(192,	1000.0000),
(193,	350.0000),
(194,	1000.0000),
(195,	350.0000),
(199,	300.0000),
(200,	150.0000),
(201,	300.0000),
(202,	150.0000),
(203,	300.0000),
(204,	150.0000),
(205,	300.0000),
(206,	150.0000),
(229,	800.0000),
(230,	600.0000),
(231,	800.0000),
(232,	600.0000),
(233,	800.0000),
(234,	600.0000),
(235,	800.0000),
(236,	600.0000),
(237,	800.0000),
(238,	600.0000),
(239,	800.0000),
(240,	600.0000),
(241,	800.0000),
(242,	400.0000),
(243,	800.0000),
(244,	400.0000),
(245,	800.0000),
(246,	400.0000),
(247,	800.0000),
(248,	400.0000),
(249,	800.0000),
(250,	400.0000),
(251,	800.0000),
(252,	400.0000),
(253,	800.0000),
(254,	400.0000),
(255,	800.0000),
(256,	400.0000),
(257,	800.0000),
(258,	400.0000),
(259,	800.0000),
(260,	400.0000),
(261,	800.0000),
(262,	400.0000),
(263,	800.0000),
(264,	400.0000),
(265,	800.0000),
(266,	400.0000),
(267,	800.0000),
(268,	400.0000),
(269,	800.0000),
(270,	400.0000),
(271,	800.0000),
(272,	400.0000),
(273,	800.0000),
(274,	400.0000),
(275,	800.0000),
(276,	400.0000),
(277,	800.0000),
(278,	449.0000),
(279,	800.0000),
(280,	400.0000),
(281,	800.0000),
(282,	400.0000),
(283,	800.0000),
(284,	400.0000),
(285,	800.0000),
(286,	400.0000),
(287,	800.0000),
(288,	400.0000),
(289,	800.0000),
(290,	400.0000),
(291,	800.0000),
(292,	400.0000),
(297,	500.0000),
(298,	300.0000),
(303,	500.0000),
(304,	300.0000),
(306,	500.0000),
(307,	300.0000),
(308,	64.0000),
(309,	64.0000),
(311,	2048.0000),
(312,	534.0000),
(313,	1000.0000),
(314,	672.0000),
(315,	800.0000),
(316,	538.0000),
(317,	1000.0000),
(318,	450.0000),
(319,	1080.0000),
(320,	450.0000),
(321,	1000.0000),
(322,	500.0000),
(323,	1000.0000),
(324,	500.0000);

DROP TABLE IF EXISTS `atSelectedTopics`;
CREATE TABLE `atSelectedTopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`TopicNodeID`),
  KEY `TopicNodeID` (`TopicNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atSelectedTopics` (`avID`, `TopicNodeID`) VALUES
(140,	8),
(147,	8),
(152,	8),
(155,	8),
(159,	8),
(162,	8),
(212,	8),
(215,	8),
(218,	8),
(221,	8),
(224,	8),
(294,	8),
(326,	8);

DROP TABLE IF EXISTS `atSelectOptions`;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `akID` (`akID`,`displayOrder`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atSelectOptions` (`ID`, `akID`, `value`, `displayOrder`, `isEndUserAdded`) VALUES
(1,	8,	'Nacionales',	0,	1),
(2,	8,	'Portales',	1,	1),
(3,	8,	'TICs',	2,	1);

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`),
  KEY `atSelectOptionID` (`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atSelectOptionsSelected` (`avID`, `atSelectOptionID`) VALUES
(160,	1),
(166,	1),
(210,	1),
(216,	1),
(222,	1),
(228,	1),
(295,	1),
(141,	2),
(148,	3),
(150,	3),
(156,	3),
(163,	3),
(213,	3),
(219,	3),
(225,	3),
(327,	3);

DROP TABLE IF EXISTS `atSelectSettings`;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atSelectSettings` (`akID`, `akSelectAllowMultipleValues`, `akSelectOptionDisplayOrder`, `akSelectAllowOtherValues`) VALUES
(8,	1,	'display_asc',	1);

DROP TABLE IF EXISTS `atSocialLinks`;
CREATE TABLE `atSocialLinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `avID` (`avID`,`avsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `atTextareaSettings`;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atTextareaSettings` (`akID`, `akTextareaDisplayMode`, `akTextareaDisplayModeCustomOptions`) VALUES
(2,	'',	''),
(3,	'',	''),
(4,	'',	''),
(7,	'',	'');

DROP TABLE IF EXISTS `atTopicSettings`;
CREATE TABLE `atTopicSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`akID`),
  KEY `akTopicTreeID` (`akTopicTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atTopicSettings` (`akID`, `akTopicParentNodeID`, `akTopicTreeID`) VALUES
(19,	6,	3);

DROP TABLE IF EXISTS `AttributeKeyCategories`;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  KEY `pkgID` (`pkgID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeKeyCategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1,	'collection',	1,	NULL),
(2,	'user',	1,	NULL),
(3,	'file',	1,	NULL);

DROP TABLE IF EXISTS `AttributeKeys`;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`),
  KEY `atID` (`atID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeKeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1,	'meta_title',	'Meta Title',	1,	1,	1,	0,	0,	1,	1,	1,	0),
(2,	'meta_description',	'Meta Description',	1,	1,	1,	0,	0,	1,	2,	1,	0),
(3,	'meta_keywords',	'Meta Keywords',	1,	1,	1,	0,	0,	1,	2,	1,	0),
(4,	'icon_dashboard',	'Dashboard Icon',	0,	0,	1,	1,	0,	1,	2,	1,	0),
(5,	'exclude_nav',	'Exclude From Nav',	1,	1,	1,	0,	0,	1,	3,	1,	0),
(6,	'exclude_page_list',	'Exclude From Page List',	1,	1,	1,	0,	0,	1,	3,	1,	0),
(7,	'header_extra_content',	'Header Extra Content',	1,	1,	1,	0,	0,	1,	2,	1,	0),
(8,	'tags',	'Tags',	1,	1,	1,	0,	0,	1,	8,	1,	0),
(9,	'is_featured',	'Is Featured',	1,	0,	1,	0,	0,	1,	3,	1,	0),
(10,	'exclude_search_index',	'Exclude From Search Index',	1,	1,	1,	0,	0,	1,	3,	1,	0),
(11,	'exclude_sitemapxml',	'Exclude From sitemap.xml',	1,	1,	1,	0,	0,	1,	3,	1,	0),
(12,	'profile_private_messages_enabled',	'I would like to receive private messages.',	1,	0,	0,	0,	0,	1,	3,	2,	0),
(13,	'profile_private_messages_notification_enabled',	'Send me email notifications when I receive a private message.',	1,	0,	0,	0,	0,	1,	3,	2,	0),
(14,	'width',	'Width',	1,	1,	1,	0,	0,	1,	6,	3,	0),
(15,	'height',	'Height',	1,	1,	1,	0,	0,	1,	6,	3,	0),
(16,	'account_profile_links',	'Personal Links',	0,	0,	0,	0,	0,	1,	11,	2,	0),
(17,	'duration',	'Duration',	1,	1,	1,	0,	0,	1,	6,	3,	0),
(18,	'thumbnail',	'Miniatura',	1,	1,	0,	0,	0,	1,	5,	1,	0),
(19,	'categoria',	'Categorías',	1,	0,	0,	0,	0,	1,	10,	1,	0);

DROP TABLE IF EXISTS `AttributeSetKeys`;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`),
  KEY `asID` (`asID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeSetKeys` (`akID`, `asID`, `displayOrder`) VALUES
(1,	1,	1),
(2,	1,	2),
(7,	1,	3),
(11,	1,	4),
(9,	2,	1),
(5,	2,	2),
(6,	2,	3),
(10,	2,	4),
(8,	2,	5),
(19,	3,	1);

DROP TABLE IF EXISTS `AttributeSets`;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `asHandle` (`asHandle`),
  KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`),
  KEY `pkgID` (`pkgID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeSets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1,	'SEO',	'seo',	1,	0,	0,	0),
(2,	'Navigation and Indexing',	'navigation',	1,	0,	0,	1),
(3,	'Filtros',	'filtros',	1,	0,	0,	2);

DROP TABLE IF EXISTS `AttributeTypeCategories`;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeTypeCategories` (`atID`, `akCategoryID`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	1),
(6,	1),
(7,	1),
(8,	1),
(10,	1),
(1,	2),
(2,	2),
(3,	2),
(4,	2),
(6,	2),
(8,	2),
(9,	2),
(10,	2),
(11,	2),
(1,	3),
(2,	3),
(3,	3),
(4,	3),
(6,	3),
(7,	3),
(8,	3),
(10,	3);

DROP TABLE IF EXISTS `AttributeTypes`;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`),
  KEY `pkgID` (`pkgID`,`atID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeTypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1,	'text',	'Text',	0),
(2,	'textarea',	'Text Area',	0),
(3,	'boolean',	'Checkbox',	0),
(4,	'date_time',	'Date/Time',	0),
(5,	'image_file',	'Image/File',	0),
(6,	'number',	'Number',	0),
(7,	'rating',	'Rating',	0),
(8,	'select',	'Select',	0),
(9,	'address',	'Address',	0),
(10,	'topics',	'Topics',	0),
(11,	'social_links',	'Social Links',	0);

DROP TABLE IF EXISTS `AttributeValues`;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `akID` (`akID`),
  KEY `uID` (`uID`),
  KEY `atID` (`atID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AttributeValues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1,	4,	'2016-05-19 10:28:28',	1,	2),
(2,	3,	'2016-05-19 10:28:28',	1,	2),
(3,	3,	'2016-05-19 10:28:29',	1,	2),
(4,	3,	'2016-05-19 10:28:29',	1,	2),
(5,	3,	'2016-05-19 10:28:29',	1,	2),
(6,	3,	'2016-05-19 10:28:29',	1,	2),
(7,	3,	'2016-05-19 10:28:29',	1,	2),
(8,	3,	'2016-05-19 10:28:29',	1,	2),
(9,	5,	'2016-05-19 10:28:29',	1,	3),
(10,	3,	'2016-05-19 10:28:29',	1,	2),
(11,	3,	'2016-05-19 10:28:30',	1,	2),
(12,	3,	'2016-05-19 10:28:30',	1,	2),
(13,	3,	'2016-05-19 10:28:30',	1,	2),
(14,	3,	'2016-05-19 10:28:30',	1,	2),
(15,	3,	'2016-05-19 10:28:30',	1,	2),
(16,	5,	'2016-05-19 10:28:30',	1,	3),
(17,	3,	'2016-05-19 10:28:31',	1,	2),
(18,	5,	'2016-05-19 10:28:31',	1,	3),
(19,	3,	'2016-05-19 10:28:31',	1,	2),
(20,	3,	'2016-05-19 10:28:31',	1,	2),
(21,	3,	'2016-05-19 10:28:31',	1,	2),
(22,	3,	'2016-05-19 10:28:31',	1,	2),
(23,	3,	'2016-05-19 10:28:31',	1,	2),
(24,	3,	'2016-05-19 10:28:32',	1,	2),
(25,	3,	'2016-05-19 10:28:32',	1,	2),
(26,	3,	'2016-05-19 10:28:32',	1,	2),
(27,	3,	'2016-05-19 10:28:32',	1,	2),
(28,	5,	'2016-05-19 10:28:32',	1,	3),
(29,	5,	'2016-05-19 10:28:32',	1,	3),
(30,	5,	'2016-05-19 10:28:32',	1,	3),
(31,	5,	'2016-05-19 10:28:33',	1,	3),
(32,	5,	'2016-05-19 10:28:33',	1,	3),
(33,	5,	'2016-05-19 10:28:33',	1,	3),
(34,	5,	'2016-05-19 10:28:33',	1,	3),
(35,	5,	'2016-05-19 10:28:33',	1,	3),
(36,	3,	'2016-05-19 10:28:33',	1,	2),
(37,	3,	'2016-05-19 10:28:33',	1,	2),
(38,	3,	'2016-05-19 10:28:34',	1,	2),
(39,	4,	'2016-05-19 10:28:34',	1,	2),
(40,	3,	'2016-05-19 10:28:34',	1,	2),
(41,	3,	'2016-05-19 10:28:34',	1,	2),
(42,	5,	'2016-05-19 10:28:34',	1,	3),
(43,	10,	'2016-05-19 10:28:35',	1,	3),
(44,	3,	'2016-05-19 10:28:35',	1,	2),
(45,	3,	'2016-05-19 10:28:35',	1,	2),
(46,	3,	'2016-05-19 10:28:35',	1,	2),
(47,	5,	'2016-05-19 10:28:35',	1,	3),
(48,	3,	'2016-05-19 10:28:35',	1,	2),
(49,	3,	'2016-05-19 10:28:35',	1,	2),
(50,	3,	'2016-05-19 10:28:35',	1,	2),
(51,	5,	'2016-05-19 10:28:36',	1,	3),
(52,	3,	'2016-05-19 10:28:36',	1,	2),
(53,	3,	'2016-05-19 10:28:36',	1,	2),
(54,	3,	'2016-05-19 10:28:36',	1,	2),
(55,	3,	'2016-05-19 10:28:36',	1,	2),
(56,	3,	'2016-05-19 10:28:36',	1,	2),
(57,	3,	'2016-05-19 10:28:37',	1,	2),
(58,	3,	'2016-05-19 10:28:37',	1,	2),
(59,	3,	'2016-05-19 10:28:37',	1,	2),
(60,	3,	'2016-05-19 10:28:37',	1,	2),
(61,	3,	'2016-05-19 10:28:37',	1,	2),
(62,	3,	'2016-05-19 10:28:37',	1,	2),
(63,	3,	'2016-05-19 10:28:37',	1,	2),
(64,	3,	'2016-05-19 10:28:37',	1,	2),
(65,	3,	'2016-05-19 10:28:38',	1,	2),
(66,	3,	'2016-05-19 10:28:38',	1,	2),
(67,	3,	'2016-05-19 10:28:38',	1,	2),
(68,	3,	'2016-05-19 10:28:38',	1,	2),
(69,	3,	'2016-05-19 10:28:38',	1,	2),
(70,	3,	'2016-05-19 10:28:38',	1,	2),
(71,	3,	'2016-05-19 10:28:39',	1,	2),
(72,	3,	'2016-05-19 10:28:39',	1,	2),
(73,	3,	'2016-05-19 10:28:39',	1,	2),
(74,	3,	'2016-05-19 10:28:39',	1,	2),
(75,	3,	'2016-05-19 10:28:39',	1,	2),
(76,	3,	'2016-05-19 10:28:39',	1,	2),
(77,	3,	'2016-05-19 10:28:39',	1,	2),
(78,	3,	'2016-05-19 10:28:39',	1,	2),
(79,	3,	'2016-05-19 10:28:40',	1,	2),
(80,	3,	'2016-05-19 10:28:40',	1,	2),
(81,	3,	'2016-05-19 10:28:40',	1,	2),
(82,	3,	'2016-05-19 10:28:40',	1,	2),
(83,	3,	'2016-05-19 10:28:40',	1,	2),
(84,	3,	'2016-05-19 10:28:40',	1,	2),
(85,	3,	'2016-05-19 10:28:41',	1,	2),
(86,	3,	'2016-05-19 10:28:41',	1,	2),
(87,	3,	'2016-05-19 10:28:41',	1,	2),
(88,	3,	'2016-05-19 10:28:41',	1,	2),
(89,	3,	'2016-05-19 10:28:41',	1,	2),
(90,	3,	'2016-05-19 10:28:41',	1,	2),
(91,	3,	'2016-05-19 10:28:41',	1,	2),
(92,	3,	'2016-05-19 10:28:42',	1,	2),
(93,	3,	'2016-05-19 10:28:42',	1,	2),
(94,	3,	'2016-05-19 10:28:42',	1,	2),
(95,	3,	'2016-05-19 10:28:42',	1,	2),
(96,	3,	'2016-05-19 10:28:42',	1,	2),
(97,	3,	'2016-05-19 10:28:42',	1,	2),
(98,	3,	'2016-05-19 10:28:42',	1,	2),
(99,	10,	'2016-05-19 10:28:42',	1,	3),
(100,	3,	'2016-05-19 10:28:43',	1,	2),
(101,	3,	'2016-05-19 10:28:43',	1,	2),
(102,	3,	'2016-05-19 10:28:43',	1,	2),
(103,	3,	'2016-05-19 10:28:43',	1,	2),
(104,	3,	'2016-05-19 10:28:43',	1,	2),
(105,	3,	'2016-05-19 10:28:43',	1,	2),
(106,	3,	'2016-05-19 10:28:43',	1,	2),
(107,	5,	'2016-05-19 10:28:44',	1,	3),
(108,	5,	'2016-05-19 10:28:45',	1,	3),
(109,	10,	'2016-05-19 10:28:45',	1,	3),
(110,	4,	'2016-05-19 10:28:52',	1,	2),
(111,	4,	'2016-05-19 10:28:52',	1,	2),
(112,	4,	'2016-05-19 10:28:52',	1,	2),
(113,	4,	'2016-05-19 10:28:53',	1,	2),
(114,	12,	'2016-05-19 10:35:19',	1,	3),
(115,	13,	'2016-05-19 10:35:19',	1,	3),
(116,	12,	'2016-05-19 10:36:06',	1,	3),
(117,	13,	'2016-05-19 10:36:06',	1,	3),
(118,	14,	'2016-05-20 07:21:06',	1,	6),
(119,	15,	'2016-05-20 07:21:07',	1,	6),
(120,	14,	'2016-05-20 07:21:21',	1,	6),
(121,	15,	'2016-05-20 07:21:21',	1,	6),
(122,	14,	'2016-05-20 07:22:43',	1,	6),
(123,	15,	'2016-05-20 07:22:44',	1,	6),
(124,	1,	'2016-05-20 07:23:17',	1,	1),
(125,	2,	'2016-05-20 07:23:17',	1,	2),
(126,	7,	'2016-05-20 07:23:17',	1,	2),
(127,	11,	'2016-05-20 07:23:17',	1,	3),
(128,	14,	'2016-05-23 14:48:51',	1,	6),
(129,	15,	'2016-05-23 14:48:51',	1,	6),
(130,	14,	'2016-05-23 14:48:55',	1,	6),
(131,	15,	'2016-05-23 14:48:55',	1,	6),
(132,	14,	'2016-05-23 14:49:28',	1,	6),
(133,	15,	'2016-05-23 14:49:28',	1,	6),
(134,	14,	'2016-05-23 14:50:03',	1,	6),
(135,	15,	'2016-05-23 14:50:03',	1,	6),
(136,	11,	'2016-05-23 14:52:47',	1,	3),
(137,	8,	'2016-05-23 15:19:19',	1,	8),
(138,	8,	'2016-05-23 15:36:17',	1,	8),
(139,	18,	'2016-05-23 15:40:04',	1,	5),
(140,	19,	'2016-05-23 15:40:05',	1,	10),
(141,	8,	'2016-05-23 15:40:05',	1,	8),
(142,	14,	'2016-05-23 15:44:23',	1,	6),
(143,	15,	'2016-05-23 15:44:23',	1,	6),
(144,	14,	'2016-05-23 15:44:24',	1,	6),
(145,	15,	'2016-05-23 15:44:25',	1,	6),
(146,	18,	'2016-05-23 15:53:55',	1,	5),
(147,	19,	'2016-05-23 15:53:55',	1,	10),
(148,	8,	'2016-05-23 15:53:55',	1,	8),
(149,	5,	'2016-05-23 15:56:07',	1,	3),
(150,	8,	'2016-05-23 15:56:32',	1,	8),
(151,	18,	'2016-05-23 15:56:32',	1,	5),
(152,	19,	'2016-05-23 15:56:32',	1,	10),
(153,	11,	'2016-05-23 15:56:33',	1,	3),
(154,	18,	'2016-05-23 15:56:54',	1,	5),
(155,	19,	'2016-05-23 15:56:54',	1,	10),
(156,	8,	'2016-05-23 15:56:55',	1,	8),
(157,	11,	'2016-05-23 15:57:05',	1,	3),
(158,	18,	'2016-05-24 08:23:51',	1,	5),
(159,	19,	'2016-05-24 08:23:51',	1,	10),
(160,	8,	'2016-05-24 08:23:52',	1,	8),
(161,	18,	'2016-05-24 08:28:29',	1,	5),
(162,	19,	'2016-05-24 08:28:29',	1,	10),
(163,	8,	'2016-05-24 08:28:29',	1,	8),
(164,	18,	'2016-05-24 08:43:19',	3,	5),
(165,	19,	'2016-05-24 08:43:19',	3,	10),
(166,	8,	'2016-05-24 08:43:19',	3,	8),
(167,	5,	'2016-05-24 08:54:06',	1,	3),
(168,	5,	'2016-05-24 08:54:07',	1,	3),
(169,	5,	'2016-05-24 08:54:08',	1,	3),
(170,	5,	'2016-05-24 08:54:09',	1,	3),
(171,	5,	'2016-05-24 08:54:10',	1,	3),
(172,	5,	'2016-05-24 08:54:10',	1,	3),
(173,	11,	'2016-05-24 08:55:39',	1,	3),
(174,	11,	'2016-05-24 08:56:04',	1,	3),
(175,	11,	'2016-05-24 08:56:10',	1,	3),
(176,	11,	'2016-05-24 08:56:51',	1,	3),
(177,	5,	'2016-05-24 08:56:51',	1,	3),
(178,	5,	'2016-05-24 09:16:48',	1,	3),
(179,	5,	'2016-05-24 09:19:58',	1,	3),
(180,	5,	'2016-05-24 09:30:13',	1,	3),
(181,	14,	'2016-05-24 09:32:34',	1,	6),
(182,	15,	'2016-05-24 09:32:34',	1,	6),
(183,	5,	'2016-05-24 09:33:23',	1,	3),
(184,	5,	'2016-05-24 10:00:42',	1,	3),
(185,	5,	'2016-05-24 10:05:14',	1,	3),
(186,	5,	'2016-05-24 10:41:39',	1,	3),
(187,	5,	'2016-05-24 11:01:33',	1,	3),
(188,	5,	'2016-05-24 11:12:08',	1,	3),
(189,	5,	'2016-05-24 11:12:25',	1,	3),
(190,	14,	'2016-05-24 11:17:31',	1,	6),
(191,	15,	'2016-05-24 11:17:32',	1,	6),
(192,	14,	'2016-06-02 09:16:55',	1,	6),
(193,	15,	'2016-06-02 09:16:56',	1,	6),
(194,	14,	'2016-06-02 09:17:20',	1,	6),
(195,	15,	'2016-06-02 09:17:20',	1,	6),
(196,	5,	'2016-06-02 09:24:54',	1,	3),
(197,	5,	'2016-06-02 09:27:57',	1,	3),
(198,	5,	'2016-06-02 09:28:31',	1,	3),
(199,	14,	'2016-06-02 09:30:58',	1,	6),
(200,	15,	'2016-06-02 09:30:58',	1,	6),
(201,	14,	'2016-06-02 09:30:59',	1,	6),
(202,	15,	'2016-06-02 09:30:59',	1,	6),
(203,	14,	'2016-06-02 09:31:00',	1,	6),
(204,	15,	'2016-06-02 09:31:00',	1,	6),
(205,	14,	'2016-06-02 09:31:01',	1,	6),
(206,	15,	'2016-06-02 09:31:01',	1,	6),
(207,	5,	'2016-06-02 09:49:11',	1,	3),
(208,	18,	'2016-06-02 09:58:03',	1,	5),
(209,	19,	'2016-06-02 09:58:03',	1,	10),
(210,	8,	'2016-06-02 09:58:03',	1,	8),
(211,	18,	'2016-06-02 09:58:05',	1,	5),
(212,	19,	'2016-06-02 09:58:05',	1,	10),
(213,	8,	'2016-06-02 09:58:06',	1,	8),
(214,	18,	'2016-06-02 09:58:08',	1,	5),
(215,	19,	'2016-06-02 09:58:08',	1,	10),
(216,	8,	'2016-06-02 09:58:08',	1,	8),
(217,	18,	'2016-06-02 10:00:26',	1,	5),
(218,	19,	'2016-06-02 10:00:26',	1,	10),
(219,	8,	'2016-06-02 10:00:27',	1,	8),
(220,	18,	'2016-06-02 10:22:52',	1,	5),
(221,	19,	'2016-06-02 10:22:52',	1,	10),
(222,	8,	'2016-06-02 10:22:52',	1,	8),
(223,	18,	'2016-06-02 10:22:53',	1,	5),
(224,	19,	'2016-06-02 10:22:54',	1,	10),
(225,	8,	'2016-06-02 10:22:54',	1,	8),
(226,	18,	'2016-06-02 10:22:55',	1,	5),
(227,	19,	'2016-06-02 10:22:55',	1,	10),
(228,	8,	'2016-06-02 10:22:55',	1,	8),
(229,	14,	'2016-06-02 10:38:54',	1,	6),
(230,	15,	'2016-06-02 10:38:54',	1,	6),
(231,	14,	'2016-06-02 10:38:55',	1,	6),
(232,	15,	'2016-06-02 10:38:55',	1,	6),
(233,	14,	'2016-06-02 10:38:56',	1,	6),
(234,	15,	'2016-06-02 10:38:56',	1,	6),
(235,	14,	'2016-06-02 10:38:59',	1,	6),
(236,	15,	'2016-06-02 10:38:59',	1,	6),
(237,	14,	'2016-06-02 10:39:00',	1,	6),
(238,	15,	'2016-06-02 10:39:00',	1,	6),
(239,	14,	'2016-06-02 10:39:05',	1,	6),
(240,	15,	'2016-06-02 10:39:05',	1,	6),
(241,	14,	'2016-06-02 10:43:38',	1,	6),
(242,	15,	'2016-06-02 10:43:38',	1,	6),
(243,	14,	'2016-06-02 10:43:39',	1,	6),
(244,	15,	'2016-06-02 10:43:39',	1,	6),
(245,	14,	'2016-06-02 10:43:42',	1,	6),
(246,	15,	'2016-06-02 10:43:42',	1,	6),
(247,	14,	'2016-06-02 10:43:44',	1,	6),
(248,	15,	'2016-06-02 10:43:44',	1,	6),
(249,	14,	'2016-06-02 10:43:45',	1,	6),
(250,	15,	'2016-06-02 10:43:46',	1,	6),
(251,	14,	'2016-06-02 10:43:48',	1,	6),
(252,	15,	'2016-06-02 10:43:48',	1,	6),
(253,	14,	'2016-06-02 10:43:49',	1,	6),
(254,	15,	'2016-06-02 10:43:49',	1,	6),
(255,	14,	'2016-06-02 10:43:50',	1,	6),
(256,	15,	'2016-06-02 10:43:51',	1,	6),
(257,	14,	'2016-06-02 10:43:52',	1,	6),
(258,	15,	'2016-06-02 10:43:52',	1,	6),
(259,	14,	'2016-06-02 10:43:54',	1,	6),
(260,	15,	'2016-06-02 10:43:55',	1,	6),
(261,	14,	'2016-06-02 10:43:58',	1,	6),
(262,	15,	'2016-06-02 10:43:58',	1,	6),
(263,	14,	'2016-06-02 10:44:00',	1,	6),
(264,	15,	'2016-06-02 10:44:01',	1,	6),
(265,	14,	'2016-06-02 10:44:05',	1,	6),
(266,	15,	'2016-06-02 10:44:05',	1,	6),
(267,	14,	'2016-06-02 10:46:08',	1,	6),
(268,	15,	'2016-06-02 10:46:08',	1,	6),
(269,	14,	'2016-06-02 10:46:29',	1,	6),
(270,	15,	'2016-06-02 10:46:29',	1,	6),
(271,	14,	'2016-06-02 10:47:38',	1,	6),
(272,	15,	'2016-06-02 10:47:39',	1,	6),
(273,	14,	'2016-06-02 10:48:01',	1,	6),
(274,	15,	'2016-06-02 10:48:01',	1,	6),
(275,	14,	'2016-06-02 10:48:16',	1,	6),
(276,	15,	'2016-06-02 10:48:16',	1,	6),
(277,	14,	'2016-06-02 10:48:28',	1,	6),
(278,	15,	'2016-06-02 10:48:29',	1,	6),
(279,	14,	'2016-06-02 10:48:44',	1,	6),
(280,	15,	'2016-06-02 10:48:44',	1,	6),
(281,	14,	'2016-06-02 10:49:02',	1,	6),
(282,	15,	'2016-06-02 10:49:02',	1,	6),
(283,	14,	'2016-06-02 10:49:16',	1,	6),
(284,	15,	'2016-06-02 10:49:17',	1,	6),
(285,	14,	'2016-06-02 10:49:33',	1,	6),
(286,	15,	'2016-06-02 10:49:33',	1,	6),
(287,	14,	'2016-06-02 10:49:58',	1,	6),
(288,	15,	'2016-06-02 10:49:58',	1,	6),
(289,	14,	'2016-06-02 10:50:18',	1,	6),
(290,	15,	'2016-06-02 10:50:18',	1,	6),
(291,	14,	'2016-06-02 10:50:36',	1,	6),
(292,	15,	'2016-06-02 10:50:36',	1,	6),
(293,	18,	'2016-06-02 10:52:19',	1,	5),
(294,	19,	'2016-06-02 10:52:19',	1,	10),
(295,	8,	'2016-06-02 10:52:19',	1,	8),
(296,	18,	'2016-06-02 10:56:14',	1,	5),
(297,	14,	'2016-06-02 10:57:05',	1,	6),
(298,	15,	'2016-06-02 10:57:05',	1,	6),
(299,	5,	'2016-06-02 11:04:01',	1,	3),
(300,	18,	'2016-06-02 11:04:23',	1,	5),
(301,	5,	'2016-06-02 11:04:23',	1,	3),
(302,	18,	'2016-06-02 11:05:44',	1,	5),
(303,	14,	'2016-06-02 11:06:02',	1,	6),
(304,	15,	'2016-06-02 11:06:02',	1,	6),
(305,	18,	'2016-06-02 11:26:57',	1,	5),
(306,	14,	'2016-06-02 11:27:30',	1,	6),
(307,	15,	'2016-06-02 11:27:30',	1,	6),
(308,	14,	'2016-06-02 11:43:06',	1,	6),
(309,	15,	'2016-06-02 11:43:06',	1,	6),
(310,	5,	'2016-06-02 11:52:31',	1,	3),
(311,	14,	'2016-06-02 12:00:25',	1,	6),
(312,	15,	'2016-06-02 12:00:26',	1,	6),
(313,	14,	'2016-06-02 13:15:59',	1,	6),
(314,	15,	'2016-06-02 13:15:59',	1,	6),
(315,	14,	'2016-06-02 13:16:11',	1,	6),
(316,	15,	'2016-06-02 13:16:11',	1,	6),
(317,	14,	'2016-06-02 13:18:17',	1,	6),
(318,	15,	'2016-06-02 13:18:17',	1,	6),
(319,	14,	'2016-06-02 13:20:19',	1,	6),
(320,	15,	'2016-06-02 13:20:19',	1,	6),
(321,	14,	'2016-06-02 13:34:21',	1,	6),
(322,	15,	'2016-06-02 13:34:21',	1,	6),
(323,	14,	'2016-06-02 13:34:58',	1,	6),
(324,	15,	'2016-06-02 13:34:58',	1,	6),
(325,	18,	'2016-06-02 14:16:15',	3,	5),
(326,	19,	'2016-06-02 14:16:15',	3,	10),
(327,	8,	'2016-06-02 14:16:15',	3,	8);

DROP TABLE IF EXISTS `AuthenticationTypes`;
CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AuthenticationTypes` (`authTypeID`, `authTypeHandle`, `authTypeName`, `authTypeIsEnabled`, `authTypeDisplayOrder`, `pkgID`) VALUES
(1,	'concrete',	'Standard',	1,	0,	0),
(2,	'community',	'concrete5.org',	0,	0,	0),
(3,	'facebook',	'Facebook',	0,	0,	0),
(4,	'twitter',	'Twitter',	0,	0,	0),
(5,	'google',	'Google',	0,	0,	0);

DROP TABLE IF EXISTS `authTypeConcreteCookieMap`;
CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BannedWords`;
CREATE TABLE `BannedWords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BannedWords` (`bwID`, `bannedWord`) VALUES
(1,	'fuck'),
(2,	'shit'),
(3,	'bitch'),
(4,	'ass');

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BlockFeatureAssignments`;
CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BlockFeatureAssignments` (`cID`, `cvID`, `bID`, `faID`) VALUES
(146,	2,	10,	1),
(151,	2,	11,	2),
(151,	3,	11,	2),
(151,	4,	11,	2),
(151,	5,	11,	2),
(150,	2,	15,	3),
(151,	6,	22,	4),
(151,	7,	23,	5),
(151,	8,	24,	6),
(151,	9,	24,	6),
(184,	2,	209,	7),
(146,	3,	227,	8),
(151,	10,	228,	9),
(150,	3,	229,	10);

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BlockRelations`;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`brID`),
  KEY `bID` (`bID`),
  KEY `originalBID` (`originalBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BlockRelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(1,	14,	13,	'DUPLICATE'),
(2,	22,	11,	'DUPLICATE'),
(3,	23,	22,	'DUPLICATE'),
(4,	24,	23,	'DUPLICATE'),
(5,	146,	26,	'DUPLICATE'),
(6,	147,	28,	'DUPLICATE'),
(7,	191,	12,	'DUPLICATE'),
(8,	192,	40,	'DUPLICATE'),
(9,	203,	200,	'DUPLICATE'),
(10,	204,	200,	'DUPLICATE'),
(11,	223,	219,	'DUPLICATE'),
(12,	224,	220,	'DUPLICATE'),
(13,	225,	224,	'DUPLICATE'),
(14,	227,	10,	'DUPLICATE'),
(15,	228,	24,	'DUPLICATE'),
(16,	229,	15,	'DUPLICATE'),
(17,	231,	230,	'DUPLICATE'),
(18,	238,	236,	'DUPLICATE'),
(19,	240,	236,	'DUPLICATE'),
(20,	287,	270,	'DUPLICATE'),
(21,	317,	16,	'DUPLICATE'),
(22,	318,	316,	'DUPLICATE'),
(23,	319,	318,	'DUPLICATE'),
(24,	320,	319,	'DUPLICATE'),
(25,	321,	320,	'DUPLICATE'),
(26,	322,	321,	'DUPLICATE'),
(27,	323,	322,	'DUPLICATE'),
(28,	324,	323,	'DUPLICATE'),
(29,	588,	205,	'DUPLICATE'),
(30,	1388,	1383,	'DUPLICATE'),
(31,	1389,	1383,	'DUPLICATE'),
(32,	1390,	1383,	'DUPLICATE'),
(33,	1391,	1383,	'DUPLICATE'),
(34,	1393,	1380,	'DUPLICATE'),
(35,	1394,	1393,	'DUPLICATE'),
(36,	1396,	218,	'DUPLICATE'),
(37,	1399,	236,	'DUPLICATE'),
(38,	1400,	238,	'DUPLICATE'),
(39,	1401,	240,	'DUPLICATE'),
(40,	1403,	1401,	'DUPLICATE'),
(41,	1404,	1398,	'DUPLICATE'),
(42,	1405,	1401,	'DUPLICATE'),
(43,	1408,	245,	'DUPLICATE'),
(44,	1409,	1404,	'DUPLICATE'),
(45,	1410,	1409,	'DUPLICATE'),
(46,	1411,	17,	'DUPLICATE'),
(47,	1412,	1411,	'DUPLICATE'),
(48,	1413,	1412,	'DUPLICATE'),
(49,	1414,	317,	'DUPLICATE'),
(50,	1416,	1415,	'DUPLICATE'),
(51,	1417,	243,	'DUPLICATE'),
(54,	1422,	1421,	'DUPLICATE'),
(55,	1423,	1422,	'DUPLICATE'),
(56,	1424,	223,	'DUPLICATE'),
(57,	1446,	324,	'DUPLICATE'),
(58,	1447,	1446,	'DUPLICATE');

DROP TABLE IF EXISTS `Blocks`;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1,	'',	'2016-05-19 10:28:44',	'2016-05-19 10:28:44',	NULL,	'0',	12,	1,	NULL),
(2,	'',	'2016-05-19 10:28:44',	'2016-05-19 10:28:44',	NULL,	'0',	9,	1,	NULL),
(3,	'',	'2016-05-19 10:28:44',	'2016-05-19 10:28:44',	NULL,	'0',	10,	1,	NULL),
(4,	'',	'2016-05-19 10:28:44',	'2016-05-19 10:28:44',	NULL,	'0',	8,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjQiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQSI7fQ=='),
(5,	'',	'2016-05-19 10:28:45',	'2016-05-19 10:28:45',	NULL,	'0',	8,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjUiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQiI7fQ=='),
(6,	'',	'2016-05-19 10:28:45',	'2016-05-19 10:28:45',	NULL,	'0',	7,	1,	NULL),
(7,	'',	'2016-05-19 10:28:45',	'2016-05-19 10:28:45',	NULL,	'0',	6,	1,	NULL),
(8,	'',	'2016-05-19 10:28:45',	'2016-05-19 10:28:45',	NULL,	'0',	8,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjgiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQyI7fQ=='),
(9,	'',	'2016-05-19 10:28:55',	'2016-05-19 10:28:55',	NULL,	'0',	2,	1,	NULL),
(10,	'',	'2016-05-20 07:21:10',	'2016-05-20 07:21:10',	NULL,	'0',	27,	1,	NULL),
(11,	'',	'2016-05-20 07:21:25',	'2016-05-20 07:21:37',	'',	'0',	27,	1,	NULL),
(12,	'',	'2016-05-20 07:21:47',	'2016-05-20 07:21:53',	'Estilo A',	'0',	32,	1,	NULL),
(13,	'',	'2016-05-20 07:22:08',	'2016-05-20 07:22:16',	'breadcrumb.php',	'0',	11,	1,	NULL),
(14,	'',	'2016-05-20 07:22:22',	'2016-05-20 07:22:29',	'SENATICs.php',	'1',	11,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czoyOiIxNCI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtzOjE6IjAiO3M6MjM6ImRpc3BsYXlQYWdlc0luY2x1ZGVTZWxmIjtzOjE6IjAiO3M6MTU6ImRpc3BsYXlTdWJQYWdlcyI7czozOiJhbGwiO3M6MjA6ImRpc3BsYXlTdWJQYWdlTGV2ZWxzIjtzOjM6ImFsbCI7czoyMzoiZGlzcGxheVN1YlBhZ2VMZXZlbHNOdW0iO3M6MToiMCI7czoyMzoiZGlzcGxheVVuYXZhaWxhYmxlUGFnZXMiO3M6MToiMCI7czoxODoiZGlzcGxheVN5c3RlbVBhZ2VzIjtzOjE6IjAiO30='),
(15,	'',	'2016-05-20 07:22:47',	'2016-05-20 07:22:47',	NULL,	'0',	27,	1,	NULL),
(16,	'',	'2016-05-20 07:23:03',	'2016-05-20 07:23:03',	NULL,	'0',	12,	1,	NULL),
(17,	'',	'2016-05-23 09:07:57',	'2016-05-23 09:07:57',	NULL,	'0',	1,	1,	NULL),
(18,	'',	'2016-05-23 14:12:34',	'2016-05-23 14:12:34',	NULL,	'0',	12,	1,	NULL),
(19,	'',	'2016-05-23 14:14:01',	'2016-05-23 14:14:01',	NULL,	'0',	12,	1,	NULL),
(20,	'',	'2016-05-23 14:44:39',	'2016-05-23 14:44:39',	NULL,	'0',	18,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjIwIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtzOjE6IjAiO3M6OToidGl0bGVUZXh0IjtzOjIzOiJbVMOtdHVsbyBkZSBsYSBQw6FnaW5hXSI7czoxMDoiZm9ybWF0dGluZyI7czoyOiJoNCI7fQ=='),
(21,	'',	'2016-05-23 14:46:32',	'2016-05-23 14:46:42',	'Camino de Miga.php',	'0',	11,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czoyOiIyMSI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtzOjE6IjAiO3M6MjM6ImRpc3BsYXlQYWdlc0luY2x1ZGVTZWxmIjtzOjE6IjAiO3M6MTU6ImRpc3BsYXlTdWJQYWdlcyI7czoxOToicmVsZXZhbnRfYnJlYWRjcnVtYiI7czoyMDoiZGlzcGxheVN1YlBhZ2VMZXZlbHMiO3M6MzoiYWxsIjtzOjIzOiJkaXNwbGF5U3ViUGFnZUxldmVsc051bSI7czoxOiIwIjtzOjIzOiJkaXNwbGF5VW5hdmFpbGFibGVQYWdlcyI7czoxOiIwIjtzOjE4OiJkaXNwbGF5U3lzdGVtUGFnZXMiO3M6MToiMCI7fQ=='),
(22,	'',	'2016-05-23 14:48:54',	'2016-05-23 14:48:54',	'',	'1',	27,	1,	NULL),
(23,	'',	'2016-05-23 14:49:30',	'2016-05-23 14:49:31',	'',	'1',	27,	1,	NULL),
(24,	'',	'2016-05-23 14:50:06',	'2016-05-23 14:50:06',	'',	'1',	27,	1,	NULL),
(25,	'',	'2016-05-23 15:10:47',	'2016-05-23 15:10:47',	NULL,	'0',	18,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjI1IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtzOjE6IjAiO3M6OToidGl0bGVUZXh0IjtzOjIzOiJbVMOtdHVsbyBkZSBsYSBQw6FnaW5hXSI7czoxMDoiZm9ybWF0dGluZyI7czoyOiJoNSI7fQ=='),
(26,	'',	'2016-05-23 15:11:45',	'2016-05-24 08:27:03',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI2IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiIyIjt9'),
(27,	'',	'2016-05-23 15:12:36',	'2016-05-23 15:12:43',	'Camino de Miga.php',	'0',	11,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czoyOiIyNyI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtzOjE6IjAiO3M6MjM6ImRpc3BsYXlQYWdlc0luY2x1ZGVTZWxmIjtzOjE6IjAiO3M6MTU6ImRpc3BsYXlTdWJQYWdlcyI7czoxOToicmVsZXZhbnRfYnJlYWRjcnVtYiI7czoyMDoiZGlzcGxheVN1YlBhZ2VMZXZlbHMiO3M6MzoiYWxsIjtzOjIzOiJkaXNwbGF5U3ViUGFnZUxldmVsc051bSI7czoxOiIwIjtzOjIzOiJkaXNwbGF5VW5hdmFpbGFibGVQYWdlcyI7czoxOiIwIjtzOjE4OiJkaXNwbGF5U3lzdGVtUGFnZXMiO3M6MToiMCI7fQ=='),
(28,	'',	'2016-05-23 15:13:45',	'2016-05-24 08:26:48',	'',	'0',	16,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjI4IjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjE4OiJycHZfcGFnZURhdGVQdWJsaWMiO3M6MTg6ImF0dHJpYnV0ZVRpdGxlVGV4dCI7czoxMToiUHVibGljYWRvOiAiO3M6MTA6ImRpc3BsYXlUYWciO3M6MTA6ImJsb2NrcXVvdGUiO3M6MTA6ImRhdGVGb3JtYXQiO3M6MTE6Im0vZC95IGg6aTphIjtzOjE1OiJ0aHVtYm5haWxIZWlnaHQiO3M6MzoiMjUwIjtzOjE0OiJ0aHVtYm5haWxXaWR0aCI7czozOiIyNTAiO30='),
(29,	'',	'2016-05-23 15:14:46',	'2016-05-23 15:14:46',	NULL,	'0',	2,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI5IjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiNCI7fQ=='),
(30,	'',	'2016-05-23 15:15:17',	'2016-05-23 15:15:17',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjMwIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiIzIjt9'),
(31,	'',	'2016-05-23 15:15:57',	'2016-05-23 15:16:15',	'Estilo-A.php',	'0',	20,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjMxIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJQIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czo5OiJjYXRlZ29yaWEiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjMiO3M6OToiY1BhcmVudElEIjtzOjM6IjE1NiI7czo1OiJ0aXRsZSI7czoyMDoiVGVtYXMgLyBDYXRlZ29yw61hcyAiO30='),
(32,	'',	'2016-05-23 15:19:18',	'2016-05-23 15:19:18',	NULL,	'0',	36,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjY6e3M6MzoiYklEIjtzOjI6IjMyIjtzOjk6IgAqAF90YWJsZSI7czo2OiJidFRhZ3MiO3M6NToidGl0bGUiO3M6OToiRXRpcXVldGFzIjtzOjk6InRhcmdldENJRCI7czozOiIxNTYiO3M6MTE6ImRpc3BsYXlNb2RlIjtzOjQ6InBhZ2UiO3M6MTA6ImNsb3VkQ291bnQiO3M6MToiMCI7fQ=='),
(33,	'',	'2016-05-23 15:23:24',	'2016-05-23 15:23:24',	NULL,	'0',	26,	1,	NULL),
(34,	'',	'2016-05-23 15:25:39',	'2016-05-23 15:51:13',	'SENATICs Estilo E [3 col] (Estilo Albumes-Slide)',	'0',	30,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjMyOntzOjM6ImJJRCI7czoyOiIzNCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjYiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtzOjE6IjAiO3M6NToiY1RoaXMiO3M6MToiMCI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIxIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czo4OiJWZXIgTcOhcyI7czoxMzoicGFnZUxpc3RUaXRsZSI7czowOiIiO3M6MTU6ImZpbHRlckJ5UmVsYXRlZCI7czoxOiIwIjtzOjE5OiJmaWx0ZXJCeUN1c3RvbVRvcGljIjtzOjE6IjAiO3M6MTY6ImZpbHRlckRhdGVPcHRpb24iO3M6MzoiYWxsIjtzOjE0OiJmaWx0ZXJEYXRlRGF5cyI7czoxOiIwIjtzOjE1OiJmaWx0ZXJEYXRlU3RhcnQiO047czoxMzoiZmlsdGVyRGF0ZUVuZCI7TjtzOjMwOiJyZWxhdGVkVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjI5OiJjdXN0b21Ub3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MjE6ImN1c3RvbVRvcGljVHJlZU5vZGVJRCI7czoxOiIwIjtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMSI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMSI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO3M6MToiMSI7czoxNDoiZGlzcGxheUFsaWFzZXMiO3M6MToiMCI7czoyMzoiZW5hYmxlRXh0ZXJuYWxGaWx0ZXJpbmciO3M6MToiMCI7czo0OiJwdElEIjtzOjE6IjciO3M6NDoicGZJRCI7czoxOiIwIjtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjAiO3M6MTY6Im5vUmVzdWx0c01lc3NhZ2UiO3M6MTk6Ik5vIGhheSBwdWJsaWNhY2nDs24iO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMSI7czoxMzoidHJ1bmNhdGVDaGFycyI7czoxOiIwIjt9'),
(35,	'',	'2016-05-23 15:33:12',	'2016-05-23 15:33:12',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjM1IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI0Ijt9'),
(36,	'',	'2016-05-23 15:33:50',	'2016-05-23 15:33:50',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjM2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo2ODoiPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMThweDsiPkNhdGVnb3LDrWFzIC8gRmlsdHJhcjwvc3Bhbj4NCjwvcD4iO30='),
(37,	'',	'2016-05-23 15:34:28',	'2016-05-23 15:35:47',	'flat_filter.php',	'0',	20,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjM3IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJTIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czo5OiJjYXRlZ29yaWEiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjMiO3M6OToiY1BhcmVudElEIjtzOjE6IjAiO3M6NToidGl0bGUiO3M6MDoiIjt9'),
(38,	'',	'2016-05-23 15:36:17',	'2016-05-23 15:36:17',	NULL,	'0',	36,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjY6e3M6MzoiYklEIjtzOjI6IjM4IjtzOjk6IgAqAF90YWJsZSI7czo2OiJidFRhZ3MiO3M6NToidGl0bGUiO3M6OToiRXRpcXVldGFzIjtzOjk6InRhcmdldENJRCI7czozOiIxNTYiO3M6MTE6ImRpc3BsYXlNb2RlIjtzOjU6ImNsb3VkIjtzOjEwOiJjbG91ZENvdW50IjtzOjI6IjExIjt9'),
(39,	'',	'2016-05-23 15:37:24',	'2016-05-23 15:37:24',	NULL,	'0',	13,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjM5IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnREYXRlTmF2aWdhdGlvbiI7czo1OiJ0aXRsZSI7czoyMToiQXJjaGl2b3MgLyBCaWJsaW90ZWNhIjtzOjE0OiJmaWx0ZXJCeVBhcmVudCI7czoxOiIwIjtzOjE3OiJyZWRpcmVjdFRvUmVzdWx0cyI7czoxOiIwIjtzOjk6ImNQYXJlbnRJRCI7czoxOiIwIjtzOjk6ImNUYXJnZXRJRCI7czoxOiIwIjtzOjQ6InB0SUQiO3M6MToiNyI7fQ=='),
(40,	'',	'2016-05-23 15:39:22',	'2016-05-23 15:39:56',	'SENATICs Estilo C [img big] (Lista Horizontal)',	'0',	30,	1,	NULL),
(117,	'',	'2016-05-23 15:50:42',	'2016-05-23 15:50:42',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExNyI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MToiNiI7fQ=='),
(118,	'',	'2016-05-23 15:51:00',	'2016-05-23 15:51:00',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExOCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NjU6IjxoNSBzdHlsZT0idGV4dC1hbGlnbjogY2VudGVyOyI+w5psdGltYXMgTm90aWNpYXMgUHVibGljYWRhczwvaDU+Ijt9'),
(119,	'',	'2016-05-23 15:51:45',	'2016-05-23 15:51:45',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjExOSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6Njk6IjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDIwcHg7Ij5Db21wYXJ0aXIgZXN0YSBub3RpY2lhPC9zcGFuPg0KPC9wPiI7fQ=='),
(120,	'',	'2016-05-23 15:52:38',	'2016-05-24 08:27:37',	'',	'0',	23,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjM6IjEyMCI7czo5OiIAKgBfdGFibGUiO3M6MTU6ImJ0U2hhcmVUaGlzUGFnZSI7czoxNzoiYnRTaGFyZVRoaXNQYWdlSUQiO3M6MToiMSI7czo3OiJzZXJ2aWNlIjtzOjg6ImZhY2Vib29rIjtzOjEyOiJkaXNwbGF5T3JkZXIiO3M6MToiMCI7fQ=='),
(145,	'',	'2016-05-24 08:24:36',	'2016-05-24 08:24:36',	NULL,	'0',	12,	1,	NULL),
(146,	'',	'2016-05-24 08:25:27',	'2016-05-24 08:25:27',	NULL,	'1',	1,	1,	NULL),
(147,	'',	'2016-05-24 08:25:49',	'2016-05-24 08:25:49',	'',	'1',	16,	1,	NULL),
(148,	'',	'2016-05-24 08:28:00',	'2016-05-24 08:28:00',	NULL,	'0',	26,	1,	NULL),
(149,	'',	'2016-05-24 08:28:15',	'2016-05-24 08:28:15',	NULL,	'0',	26,	1,	NULL),
(154,	'',	'2016-05-24 08:28:50',	'2016-05-24 08:28:50',	NULL,	'0',	12,	1,	NULL),
(189,	'',	'2016-05-24 08:48:22',	'2016-05-24 08:48:22',	NULL,	'0',	12,	3,	NULL),
(190,	'',	'2016-05-24 08:59:41',	'2016-05-24 08:59:51',	'Estilo A',	'0',	32,	1,	NULL),
(191,	'',	'2016-05-24 09:00:18',	'2016-05-24 09:00:18',	'Estilo A',	'1',	32,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE5MSI7czo5OiIAKgBfdGFibGUiO3M6ODoiYnRTZWFyY2giO3M6NToidGl0bGUiO3M6MDoiIjtzOjEwOiJidXR0b25UZXh0IjtzOjA6IiI7czoxNDoiYmFzZVNlYXJjaFBhdGgiO3M6MDoiIjtzOjEwOiJwb3N0VG9fY0lEIjtzOjM6IjE4MSI7czoxMDoicmVzdWx0c1VSTCI7czowOiIiO30='),
(192,	'',	'2016-05-24 09:01:24',	'2016-05-24 09:01:24',	'SENATICs Estilo C [img big] (Lista Horizontal)',	'1',	30,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjMyOntzOjM6ImJJRCI7czozOiIxOTIiO3M6OToiACoAX3RhYmxlIjtzOjEwOiJidFBhZ2VMaXN0IjtzOjM6Im51bSI7czoyOiIxNSI7czo3OiJvcmRlckJ5IjtzOjExOiJjaHJvbm9fZGVzYyI7czo5OiJjUGFyZW50SUQiO3M6MToiMCI7czo1OiJjVGhpcyI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjEiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjg6IlZlciBtw6FzIjtzOjEzOiJwYWdlTGlzdFRpdGxlIjtzOjA6IiI7czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6MTk6ImZpbHRlckJ5Q3VzdG9tVG9waWMiO3M6MToiMCI7czoxNjoiZmlsdGVyRGF0ZU9wdGlvbiI7czozOiJhbGwiO3M6MTQ6ImZpbHRlckRhdGVEYXlzIjtzOjE6IjAiO3M6MTU6ImZpbHRlckRhdGVTdGFydCI7TjtzOjEzOiJmaWx0ZXJEYXRlRW5kIjtOO3M6MzA6InJlbGF0ZWRUb3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6Mjk6ImN1c3RvbVRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyMToiY3VzdG9tVG9waWNUcmVlTm9kZUlEIjtzOjE6IjAiO3M6MTE6ImluY2x1ZGVOYW1lIjtzOjE6IjEiO3M6MTg6ImluY2x1ZGVEZXNjcmlwdGlvbiI7czoxOiIxIjtzOjExOiJpbmNsdWRlRGF0ZSI7czoxOiIxIjtzOjIxOiJpbmNsdWRlQWxsRGVzY2VuZGVudHMiO3M6MToiMCI7czo4OiJwYWdpbmF0ZSI7czoxOiIxIjtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIxIjtzOjQ6InB0SUQiO3M6MToiNyI7czo0OiJwZklEIjtzOjE6IjAiO3M6MTc6InRydW5jYXRlU3VtbWFyaWVzIjtzOjE6IjAiO3M6MTk6ImRpc3BsYXlGZWF0dXJlZE9ubHkiO3M6MToiMCI7czoxNjoibm9SZXN1bHRzTWVzc2FnZSI7czo0MDoiTm8gc2UgZW5jb250cmFyb24gbm90aWNpYXMgcmVsYWNpb25hZGFzLiI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIxIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtzOjE6IjAiO30='),
(195,	'',	'2016-05-24 09:18:06',	'2016-05-24 09:18:06',	NULL,	'0',	1,	1,	NULL),
(196,	'',	'2016-05-24 09:19:25',	'2016-05-24 09:21:19',	'SENATICs Estilo B (Lista Horizontal - Simple)',	'0',	30,	1,	NULL),
(197,	'',	'2016-05-24 09:23:13',	'2016-05-24 09:23:13',	NULL,	'0',	1,	1,	NULL),
(198,	'',	'2016-05-24 09:23:23',	'2016-05-24 09:23:23',	NULL,	'0',	3,	1,	NULL),
(199,	'',	'2016-05-24 09:25:08',	'2016-05-24 09:25:08',	NULL,	'0',	1,	1,	NULL),
(200,	'',	'2016-05-24 09:25:44',	'2016-05-24 09:26:04',	'Estilo A',	'0',	19,	1,	NULL),
(203,	'',	'2016-05-24 09:26:46',	'2016-05-24 09:26:46',	'Estilo A',	'1',	19,	1,	NULL),
(204,	'',	'2016-05-24 09:27:06',	'2016-05-24 09:27:22',	'Estilo A',	'1',	19,	1,	NULL),
(205,	'',	'2016-05-24 09:28:48',	'2016-05-24 09:29:30',	'Menu lateral.php',	'0',	11,	1,	NULL),
(206,	'',	'2016-05-24 09:29:49',	'2016-05-24 09:29:49',	NULL,	'0',	3,	1,	NULL),
(207,	'',	'2016-05-24 09:30:45',	'2016-05-24 09:30:45',	NULL,	'0',	1,	1,	NULL),
(208,	'',	'2016-05-24 09:30:49',	'2016-05-24 09:30:49',	NULL,	'0',	3,	1,	NULL),
(209,	'',	'2016-05-24 09:32:57',	'2016-05-24 09:32:57',	NULL,	'0',	27,	1,	NULL),
(210,	'',	'2016-05-24 10:01:11',	'2016-05-24 10:01:11',	NULL,	'0',	1,	1,	NULL),
(211,	'',	'2016-05-24 10:04:44',	'2016-05-24 10:04:44',	NULL,	'0',	3,	1,	NULL),
(212,	'',	'2016-05-24 10:05:01',	'2016-05-24 10:05:01',	NULL,	'0',	12,	1,	NULL),
(213,	'',	'2016-05-24 10:05:40',	'2016-05-24 10:05:40',	NULL,	'0',	1,	1,	NULL),
(215,	'',	'2016-05-24 10:06:06',	'2016-05-24 10:06:06',	NULL,	'0',	3,	1,	NULL),
(216,	'',	'2016-05-24 10:11:59',	'2016-05-24 10:11:59',	NULL,	'0',	22,	1,	NULL),
(217,	'',	'2016-05-24 11:01:11',	'2016-05-24 11:01:11',	NULL,	'0',	39,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjY6e3M6MzoiYklEIjtzOjM6IjIxNyI7czo5OiIAKgBfdGFibGUiO3M6MTU6ImJ0RXZlbnRDYWxlbmRhciI7czoxMDoiY2FsZW5kYXJJRCI7czoxOiIxIjtzOjQ6ImxhbmciO3M6MjoiZXMiO3M6NjoidHlwZUlEIjtzOjE6IjAiO3M6MTM6ImNvbnRlbnRIZWlnaHQiO3M6MDoiIjt9'),
(218,	'',	'2016-05-24 11:12:57',	'2016-05-24 11:12:57',	NULL,	'0',	1,	1,	NULL),
(219,	'',	'2016-05-24 11:14:01',	'2016-05-24 11:14:01',	NULL,	'0',	12,	1,	NULL),
(220,	'',	'2016-05-24 11:16:09',	'2016-05-24 11:16:09',	NULL,	'0',	17,	1,	NULL),
(221,	'',	'2016-05-24 11:16:09',	'2016-05-24 11:16:09',	NULL,	'0',	17,	1,	NULL),
(222,	'',	'2016-05-24 11:16:10',	'2016-05-24 11:16:10',	NULL,	'0',	17,	1,	NULL),
(223,	'',	'2016-05-24 11:18:59',	'2016-05-24 11:18:59',	NULL,	'1',	12,	1,	NULL),
(224,	'',	'2016-05-24 11:19:17',	'2016-05-24 11:19:17',	NULL,	'1',	17,	1,	NULL),
(225,	'',	'2016-05-24 11:20:09',	'2016-05-24 11:20:22',	NULL,	'1',	17,	1,	NULL),
(227,	'',	'2016-05-26 10:55:09',	'2016-05-26 10:55:10',	NULL,	'1',	27,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiIyMjciO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO3M6MToiMSI7czoxMDoiZk9uc3RhdGVJRCI7czoxOiIwIjtzOjg6Im1heFdpZHRoIjtzOjE6IjAiO3M6OToibWF4SGVpZ2h0IjtzOjE6IjAiO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7czoxOiIwIjtzOjc6ImFsdFRleHQiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7fQ=='),
(228,	'',	'2016-05-26 10:55:20',	'2016-05-26 10:55:20',	'',	'1',	27,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiIyMjgiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO3M6MToiMiI7czoxMDoiZk9uc3RhdGVJRCI7czoxOiIwIjtzOjg6Im1heFdpZHRoIjtzOjE6IjAiO3M6OToibWF4SGVpZ2h0IjtzOjE6IjAiO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7czoxOiIwIjtzOjc6ImFsdFRleHQiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7fQ=='),
(229,	'',	'2016-05-26 10:55:33',	'2016-05-26 10:55:33',	NULL,	'1',	27,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiIyMjkiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO3M6MToiMyI7czoxMDoiZk9uc3RhdGVJRCI7czoxOiIwIjtzOjg6Im1heFdpZHRoIjtzOjE6IjAiO3M6OToibWF4SGVpZ2h0IjtzOjE6IjAiO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7czoxOiIwIjtzOjc6ImFsdFRleHQiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7fQ=='),
(230,	'',	'2016-06-02 09:17:35',	'2016-06-02 09:17:35',	NULL,	'0',	41,	1,	NULL),
(231,	'',	'2016-06-02 09:19:53',	'2016-06-02 09:19:53',	NULL,	'1',	41,	1,	NULL),
(232,	'',	'2016-06-02 09:20:20',	'2016-06-02 09:20:20',	NULL,	'0',	1,	1,	NULL),
(233,	'',	'2016-06-02 09:23:27',	'2016-06-02 09:23:27',	NULL,	'0',	42,	1,	NULL),
(234,	'',	'2016-06-02 09:25:14',	'2016-06-02 09:25:14',	NULL,	'0',	42,	1,	NULL),
(235,	'',	'2016-06-02 09:25:28',	'2016-06-02 09:25:28',	NULL,	'0',	42,	1,	NULL),
(236,	'',	'2016-06-02 09:26:46',	'2016-06-02 09:26:46',	NULL,	'0',	42,	1,	NULL),
(238,	'',	'2016-06-02 09:28:19',	'2016-06-02 09:28:20',	NULL,	'1',	42,	1,	NULL),
(240,	'',	'2016-06-02 09:29:13',	'2016-06-02 09:29:13',	NULL,	'1',	42,	1,	NULL),
(241,	'',	'2016-06-02 09:33:58',	'2016-06-02 09:33:58',	NULL,	'0',	25,	1,	NULL),
(242,	'',	'2016-06-02 09:34:47',	'2016-06-02 09:34:47',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjI0MiI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTgiO30='),
(243,	'',	'2016-06-02 09:37:12',	'2016-06-02 09:38:02',	'SENATICs Estilo C [img small] (Lista Horizontal)',	'0',	30,	1,	NULL),
(244,	'',	'2016-06-02 09:37:12',	'2016-06-02 09:37:12',	NULL,	'0',	30,	1,	NULL),
(245,	'',	'2016-06-02 09:39:47',	'2016-06-02 09:40:00',	NULL,	'0',	43,	1,	NULL),
(246,	'',	'2016-06-02 09:43:02',	'2016-06-02 09:43:02',	NULL,	'0',	25,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjI0NiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NzI4OiI8ZGl2IGlkPSJmYi1yb290Ij48L2Rpdj4NCjxzY3JpcHQ+KGZ1bmN0aW9uKGQsIHMsIGlkKSB7DQogIHZhciBqcywgZmpzID0gZC5nZXRFbGVtZW50c0J5VGFnTmFtZShzKVswXTsNCiAgaWYgKGQuZ2V0RWxlbWVudEJ5SWQoaWQpKSByZXR1cm47DQogIGpzID0gZC5jcmVhdGVFbGVtZW50KHMpOyBqcy5pZCA9IGlkOw0KICBqcy5zcmMgPSAiLy9jb25uZWN0LmZhY2Vib29rLm5ldC9lc19MQS9zZGsuanMjeGZibWw9MSZ2ZXJzaW9uPXYyLjQiOw0KICBmanMucGFyZW50Tm9kZS5pbnNlcnRCZWZvcmUoanMsIGZqcyk7DQp9KGRvY3VtZW50LCAnc2NyaXB0JywgJ2ZhY2Vib29rLWpzc2RrJykpOzwvc2NyaXB0Pg0KPGRpdiBjbGFzcz0iZmItcGFnZSIgZGF0YS1ocmVmPSJodHRwczovL3d3dy5mYWNlYm9vay5jb20vU0VOQVRJQ3NQeSIgZGF0YS1zbWFsbC1oZWFkZXI9InRydWUiIGRhdGEtYWRhcHQtY29udGFpbmVyLXdpZHRoPSJ0cnVlIiBkYXRhLWhpZGUtY292ZXI9InRydWUiIGRhdGEtc2hvdy1mYWNlcGlsZT0idHJ1ZSIgZGF0YS1zaG93LXBvc3RzPSJ0cnVlIj48ZGl2IGNsYXNzPSJmYi14ZmJtbC1wYXJzZS1pZ25vcmUiPjxibG9ja3F1b3RlIGNpdGU9Imh0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS9TRU5BVElDc1B5Ij48YSBocmVmPSJodHRwczovL3d3dy5mYWNlYm9vay5jb20vU0VOQVRJQ3NQeSI+U0VOQVRJQ3MgUGFyYWd1YXk8L2E+PC9ibG9ja3F1b3RlPjwvZGl2PjwvZGl2PiI7fQ=='),
(247,	'',	'2016-06-02 09:52:38',	'2016-06-02 09:52:38',	NULL,	'0',	40,	1,	NULL),
(248,	'',	'2016-06-02 09:56:10',	'2016-06-02 09:56:10',	NULL,	'0',	40,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjY6e3M6MzoiYklEIjtzOjM6IjI0OCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0T3BlbkRhdGEiO3M6MTA6Im9wZW5kYXRhSUQiO3M6MToiMiI7czo0OiJsYW5nIjtOO3M6NjoidHlwZUlEIjtzOjE6IjAiO3M6MTM6ImNvbnRlbnRIZWlnaHQiO3M6MToiMCI7fQ=='),
(249,	'',	'2016-06-02 09:57:22',	'2016-06-02 09:57:22',	NULL,	'0',	25,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjI0OSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDE4MzoiPHNjcmlwdD4NCiAgICB2YXIgbWluPTEyOw0KICAgIHZhciBtYXg9MzA7DQogICAgZnVuY3Rpb24gaW5jcmVhc2VGb250U2l6ZSgpIHsNCg0KICAgICAgIHZhciBwID0gZG9jdW1lbnQuZ2V0RWxlbWVudHNCeVRhZ05hbWUoJ3AnKTsNCiAgICAgICB2YXIgYmxvY2txdW90ZSA9IGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCdibG9ja3F1b3RlJyk7DQogICAgICAgdmFyIGNvbGxlY3Rpb24gPSBkb2N1bWVudC5nZXRFbGVtZW50c0J5Q2xhc3NOYW1lKCJjb2xsZWN0aW9uIik7DQogICAgICAgDQogICAgICAgZm9yKGk9MDtpPHAubGVuZ3RoO2krKykgew0KDQogICAgICAgICAgaWYocFtpXS5zdHlsZS5mb250U2l6ZSkgew0KICAgICAgICAgICAgIHZhciBzID0gcGFyc2VJbnQocFtpXS5zdHlsZS5mb250U2l6ZS5yZXBsYWNlKCJweCIsIiIpKTsNCiAgICAgICAgICB9IGVsc2Ugew0KDQogICAgICAgICAgICAgdmFyIHMgPSAxNDsNCiAgICAgICAgICB9DQogICAgICAgICAgaWYocyE9bWF4KSB7DQoNCiAgICAgICAgICAgICBzICs9IDE7DQogICAgICAgICAgfQ0KICAgICAgICAgIHBbaV0uc3R5bGUuZm9udFNpemUgPSBzKyJweCI7DQogICAgICAgfQ0KICAgICAgIGZvcihpPTA7aTxibG9ja3F1b3RlLmxlbmd0aDtpKyspIHsNCiAgICAgICAgICBpZihibG9ja3F1b3RlW2ldLnN0eWxlLmZvbnRTaXplKSB7DQogICAgICAgICAgICAgdmFyIGIgPSBwYXJzZUludChibG9ja3F1b3RlW2ldLnN0eWxlLmZvbnRTaXplLnJlcGxhY2UoInB4IiwiIikpOw0KICAgICAgICAgIH0gZWxzZSB7DQoNCiAgICAgICAgICAgICB2YXIgYiA9IDE0Ow0KICAgICAgICAgIH0NCiAgICAgICAgICBpZihzIT1tYXgpIHsNCg0KICAgICAgICAgICAgIGIgKz0gMTsNCiAgICAgICAgICB9DQogICAgICAgICAgYmxvY2txdW90ZVtpXS5zdHlsZS5mb250U2l6ZSA9IGIrInB4IjsNCiAgICAgICB9DQogICAgICAgZm9yKGk9MDtpPGNvbGxlY3Rpb24ubGVuZ3RoO2krKykgew0KICAgICAgICAgIGlmKGNvbGxlY3Rpb25baV0uc3R5bGUuZm9udFNpemUpIHsNCiAgICAgICAgICAgICB2YXIgYyA9IHBhcnNlSW50KGNvbGxlY3Rpb25baV0uc3R5bGUuZm9udFNpemUucmVwbGFjZSgicHgiLCIiKSk7DQogICAgICAgICAgfSBlbHNlIHsNCg0KICAgICAgICAgICAgIHZhciBjID0gMTQ7DQogICAgICAgICAgfQ0KICAgICAgICAgIGlmKHMhPW1heCkgew0KDQogICAgICAgICAgICAgYyArPSAxOw0KICAgICAgICAgIH0NCiAgICAgICAgICBjb2xsZWN0aW9uW2ldLnN0eWxlLmZvbnRTaXplID0gYysicHgiOw0KICAgICAgIH0NCiAgICB9DQogICAgZnVuY3Rpb24gZGVjcmVhc2VGb250U2l6ZSgpIHsNCiAgICAgICB2YXIgcCA9IGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCdwJyk7DQogICAgICAgdmFyIGJsb2NrcXVvdGUgPSBkb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgnYmxvY2txdW90ZScpOw0KICAgICAgIHZhciBjb2xsZWN0aW9uID0gZG9jdW1lbnQuZ2V0RWxlbWVudHNCeUNsYXNzTmFtZSgiY29sbGVjdGlvbiIpOw0KICAgICAgIA0KICAgICAgIGZvcihpPTA7aTxwLmxlbmd0aDtpKyspIHsNCiAgICAgICAgICBpZihwW2ldLnN0eWxlLmZvbnRTaXplKSB7DQogICAgICAgICAgICAgdmFyIHMgPSBwYXJzZUludChwW2ldLnN0eWxlLmZvbnRTaXplLnJlcGxhY2UoInB4IiwiIikpOw0KICAgICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAgdmFyIHMgPSAxNDsNCiAgICAgICAgICB9DQogICAgICAgICAgaWYocyE9bWluKSB7DQogICAgICAgICAgICAgcyAtPSAxOw0KICAgICAgICAgIH0NCiAgICAgICAgICBwW2ldLnN0eWxlLmZvbnRTaXplID0gcysicHgiOw0KICAgICAgIH0NCiAgICAgICBmb3IoaT0wO2k8YmxvY2txdW90ZS5sZW5ndGg7aSsrKSB7DQogICAgICAgICAgaWYoYmxvY2txdW90ZVtpXS5zdHlsZS5mb250U2l6ZSkgew0KICAgICAgICAgICAgIHZhciBiID0gcGFyc2VJbnQoYmxvY2txdW90ZVtpXS5zdHlsZS5mb250U2l6ZS5yZXBsYWNlKCJweCIsIiIpKTsNCiAgICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgIHZhciBiID0gMTQ7DQogICAgICAgICAgfQ0KICAgICAgICAgIGlmKHMhPW1heCkgew0KICAgICAgICAgICAgIGIgLT0gMTsNCiAgICAgICAgICB9DQogICAgICAgICAgYmxvY2txdW90ZVtpXS5zdHlsZS5mb250U2l6ZSA9IGIrInB4Ig0KICAgICAgIH0NCiAgICAgICBmb3IoaT0wO2k8Y29sbGVjdGlvbi5sZW5ndGg7aSsrKSB7DQogICAgICAgICAgaWYoY29sbGVjdGlvbltpXS5zdHlsZS5mb250U2l6ZSkgew0KICAgICAgICAgICAgIHZhciBjID0gcGFyc2VJbnQoY29sbGVjdGlvbltpXS5zdHlsZS5mb250U2l6ZS5yZXBsYWNlKCJweCIsIiIpKTsNCiAgICAgICAgICB9IGVsc2Ugew0KDQogICAgICAgICAgICAgdmFyIGMgPSAxNDsNCiAgICAgICAgICB9DQogICAgICAgICAgaWYocyE9bWF4KSB7DQoNCiAgICAgICAgICAgICBjIC09IDE7DQogICAgICAgICAgfQ0KICAgICAgICAgIGNvbGxlY3Rpb25baV0uc3R5bGUuZm9udFNpemUgPSBjKyJweCI7DQogICAgICAgfQ0KICAgIH0NCiAgICBmdW5jdGlvbiBub3JtYWxGb250U2l6ZSgpIHsNCiAgICAgICB2YXIgcCA9IGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCdwJyk7DQogICAgICAgdmFyIGJsb2NrcXVvdGUgPSBkb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgnYmxvY2txdW90ZScpOw0KICAgICAgIHZhciBjb2xsZWN0aW9uID0gZG9jdW1lbnQuZ2V0RWxlbWVudHNCeUNsYXNzTmFtZSgiY29sbGVjdGlvbiIpOw0KICAgICAgIA0KICAgICAgIGZvcihpPTA7aTxwLmxlbmd0aDtpKyspIHsNCiAgICAgICAgICBwW2ldLnJlbW92ZUF0dHJpYnV0ZSgnc3R5bGUnKTsNCiAgICAgICB9DQogICAgICAgZm9yKGk9MDtpPGJsb2NrcXVvdGUubGVuZ3RoO2krKykgew0KICAgICAgICAgIGJsb2NrcXVvdGVbaV0ucmVtb3ZlQXR0cmlidXRlKCdzdHlsZScpOw0KICAgICAgIH0NCiAgICAgICBmb3IoaT0wO2k8Y29sbGVjdGlvbi5sZW5ndGg7aSsrKSB7DQogICAgICAgICAgY29sbGVjdGlvbltpXS5yZW1vdmVBdHRyaWJ1dGUoJ3N0eWxlJyk7DQogICAgICAgfQ0KICAgIH0NCiAgICBmdW5jdGlvbiBsZWN0dXJhKCkgew0KICAgICAgICAgIHZhciBtb2RvX2xlY3R1cmFfZGF0b3MgPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgiZm9uZG9fc2l0aW8iKS5zdHlsZS5iYWNrZ3JvdW5kOw0KICAgICAgICAgIGlmIChtb2RvX2xlY3R1cmFfZGF0b3MgPT0gImJsYWNrIil7DQogICAgCQkgIGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKCJmb25kb19zaXRpbyIpLnN0eWxlLmJhY2tncm91bmQ9bnVsbDsNCiAgICAJICB9ZWxzZXsNCiAgICAJICAgICAgZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoImZvbmRvX3NpdGlvIikuc3R5bGUuYmFja2dyb3VuZD0nYmxhY2snOw0KICAgIAkgIH0NCgl9DQo8L3NjcmlwdD4NCg0KDQo8ZGl2IGNsYXNzPSJmaXhlZC1hY3Rpb24tYnRuIGhvcml6b250YWwgY2xpY2stdG8tdG9nZ2xlIiBzdHlsZT0iYm90dG9tOiA0NXB4OyByaWdodDogMjRweDsiPg0KICAgIDxhIGNsYXNzPSJidG4tZmxvYXRpbmcgYnRuLWxhcmdlIHJlZCI+DQogICAgICA8aSBjbGFzcz0ibGFyZ2UgbWRpLW5hdmlnYXRpb24tbWVudSI+PC9pPg0KICAgIDwvYT4NCiAgICA8dWw+DQogICAgIDwhLS0gPGxpPjxhIGhyZWY9ImphdmFzY3JpcHQ6bGVjdHVyYSgpOyIgY2xhc3M9ImJ0bi1mbG9hdGluZyByZWQiPjxpIGNsYXNzPSJtYXRlcmlhbC1pY29ucyI+dmlzaWJpbGl0eTwvaT48L2E+PC9saT4tLT4NCiAgICAgIDxsaT48YSBocmVmPSJqYXZhc2NyaXB0OmluY3JlYXNlRm9udFNpemUoKTsiIGNsYXNzPSJidG4tZmxvYXRpbmcgZ3JlZW4iPjxpIGNsYXNzPSJtYXRlcmlhbC1pY29ucyI+em9vbV9pbjwvaT48L2E+PC9saT4NCiAgICAgIDxsaT48YSBocmVmPSJqYXZhc2NyaXB0OmRlY3JlYXNlRm9udFNpemUoKTsiIGNsYXNzPSJidG4tZmxvYXRpbmcgYmx1ZSI+PGkgY2xhc3M9Im1hdGVyaWFsLWljb25zIj56b29tX291dDwvaT48L2E+PC9saT4NCiAgICAgIDxsaT48YSBocmVmPSJqYXZhc2NyaXB0Om5vcm1hbEZvbnRTaXplKCk7IiBjbGFzcz0iYnRuLWZsb2F0aW5nIG9yYW5nZSI+PGkgY2xhc3M9Im1hdGVyaWFsLWljb25zIj5zcGVsbGNoZWNrPC9pPjwvYT48L2xpPg0KICAgIDwvdWw+DQogIDwvZGl2PiI7fQ=='),
(270,	'',	'2016-06-02 09:58:32',	'2016-06-02 09:58:32',	NULL,	'0',	12,	1,	NULL),
(287,	'',	'2016-06-02 09:59:12',	'2016-06-02 09:59:12',	NULL,	'1',	12,	1,	NULL),
(308,	'',	'2016-06-02 10:00:02',	'2016-06-02 10:00:02',	NULL,	'0',	12,	1,	NULL),
(314,	'',	'2016-06-02 10:00:27',	'2016-06-02 10:00:27',	NULL,	'0',	12,	1,	NULL),
(315,	'',	'2016-06-02 10:00:29',	'2016-06-02 10:02:45',	NULL,	'0',	12,	1,	NULL),
(316,	'',	'2016-06-02 10:07:41',	'2016-06-02 10:07:41',	NULL,	'0',	25,	1,	NULL),
(317,	'',	'2016-06-02 10:07:57',	'2016-06-02 10:07:57',	NULL,	'1',	12,	1,	NULL),
(318,	'',	'2016-06-02 10:11:56',	'2016-06-02 10:11:56',	NULL,	'1',	25,	1,	NULL),
(319,	'',	'2016-06-02 10:14:08',	'2016-06-02 10:14:09',	NULL,	'1',	25,	1,	NULL),
(320,	'',	'2016-06-02 10:19:52',	'2016-06-02 10:19:52',	NULL,	'1',	25,	1,	NULL),
(321,	'',	'2016-06-02 10:20:11',	'2016-06-02 10:20:12',	NULL,	'1',	25,	1,	NULL),
(322,	'',	'2016-06-02 10:20:38',	'2016-06-02 10:20:39',	NULL,	'1',	25,	1,	NULL),
(323,	'',	'2016-06-02 10:20:46',	'2016-06-02 10:20:46',	NULL,	'1',	25,	1,	NULL),
(324,	'',	'2016-06-02 10:21:50',	'2016-06-02 10:21:50',	NULL,	'1',	25,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjMyNCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjMwMjoiPHN0eWxlPg0KDQoud2hpdGUtZW5sYWNlc3sNCiAgICAgICAgZm9udC1zaXplOjEycHggIWltcG9ydGFudDsNCiAgICB9DQo8L3N0eWxlPg0KPGg1IGNsYXNzPSJ3aGl0ZS10ZXh0Ij5FbmxhY2VzIGRlIEludGVyZXM8L2g1Pg0KPGRpdiBjbGFzcz0iY29sIGw2IHMxMiI+DQogIDx1bD4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cucHJlc2lkZW5jaWEuZ292LnB5LyI+UHJlc2lkZW5jaWEgZGUgbGEgUmVww7pibGljYSBkZWwgUGFyYWd1YXk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuc2ZwLmdvdi5weS8iPlNlY3JldGFyw61hIGRlIGxhIEZ1bmNpw7NuIFDDumJsaWNhIChTRlApPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LnNhcy5nb3YucHkvIj5TZWNyZXRhcsOtYSBkZSBBY2Npw7NuIFNvY2lhbCAoU0FTKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5mb25kZWMuZ292LnB5LyI+Rm9uZG8gTmFjaW9uYWwgZGUgbGEgQ3VsdHVyYSB5IGxhcyBBcnRlcyAoRk9OREVDKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5yZXBhdHJpYWRvcy5nb3YucHkvIj5TZWNyZXRhcsOtYSBkZSBEZXNhcnJvbGxvIHBhcmEgUmVwYXRyaWFkb3MgeSBSZWZ1Z2lhZG9zIENvbm5hY2lvbmFsZXM8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cubWluaXN0ZXJpb2RlanVzdGljaWEuZ292LnB5LyI+TWluaXN0ZXJpbyBkZSBKdXN0aWNpYTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5tdGVzcy5nb3YucHkvIj5NaW5pc3RlcmlvIGRlIFRyYWJham8sIEVtcGxlbyB5IFNlZ3VyaWRhZCBTb2NpYWwgKE1URVNTKTwvYT48L2xpPg0KICAgICAgDQogIDwvdWw+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9ImNvbCBsNiBzMTIiPg0KICA8dWw+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LmN1bHR1cmEuZ292LnB5LyI+U2VjcmV0YXLDrWEgTmFjaW9uYWwgZGUgQ3VsdHVyYTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5zaWNvbS5nb3YucHkvIj5TZWNyZXRhcsOtYSBkZSBJbmZvcm1hY2nDs24geSBDb211bmljYWNpw7NuIChTSUNPTSk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuaW5kaS5nb3YucHkvIj5JbnN0aXR1dG8gUGFyYWd1YXlvIGRlbCBJbmRpZ2VuYSAoSU5ESSk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cubWVjLmdvdi5weS9jbXMvIj5NaW5pc3RlcmlvIGRlIEVkdWNhY2nDs24geSBDdWx0dXJhIChNRUMpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LmhhY2llbmRhLmdvdi5weS8iPk1pbmlzdGVyaW8gZGUgSGFjaWVuZGEgKE1IKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5zbmQuZ292LnB5LyI+U2VjcmV0YXLDrWEgTmFjaW9uYWwgZGUgRGVwb3J0ZXMgKFNORCk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cubXNwYnMuZ292LnB5LyI+TWluaXN0ZXJpbyBkZSBTYWx1ZCBQw7pibGljYSB5IEJpZW5lc3RhciBTb2NpYWwgKE1TUHlCUyk8L2E+PC9saT4NCiAgPC91bD4NCjwvZGl2PiI7fQ=='),
(550,	'',	'2016-06-02 10:29:04',	'2016-06-02 10:29:13',	NULL,	'0',	18,	1,	NULL),
(588,	'',	'2016-06-02 10:30:03',	'2016-06-02 10:30:27',	'Camino de Miga.php',	'1',	11,	1,	NULL),
(1347,	'',	'2016-06-02 10:51:22',	'2016-06-02 10:51:22',	NULL,	'0',	12,	1,	NULL),
(1358,	'',	'2016-06-02 10:51:47',	'2016-06-02 10:51:47',	NULL,	'0',	12,	1,	NULL),
(1364,	'',	'2016-06-02 10:52:11',	'2016-06-02 10:52:11',	NULL,	'0',	12,	1,	NULL),
(1378,	'',	'2016-06-02 10:53:27',	'2016-06-02 10:53:27',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjEzNzgiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjM1MDM6IjxwPjxzdHJvbmc+TG9yZW0gSXBzdW08L3N0cm9uZz4gZXMgc2ltcGxlbWVudGUgZWwgdGV4dG8gZGUgcmVsbGVubyBkZSBsYXMgaW1wcmVudGFzIHkgYXJjaGl2b3MgZGUgdGV4dG8uIExvcmVtIElwc3VtIGhhIHNpZG8gZWwgdGV4dG8gZGUgcmVsbGVubyBlc3TDoW5kYXIgZGUgbGFzIGluZHVzdHJpYXMgZGVzZGUgZWwgYcOxbyAxNTAwLCBjdWFuZG8gdW4gaW1wcmVzb3IgKE4uIGRlbCBULiBwZXJzb25hIHF1ZSBzZSBkZWRpY2EgYSBsYSBpbXByZW50YSkgZGVzY29ub2NpZG8gdXPDsyB1bmEgZ2FsZXLDrWEgZGUgdGV4dG9zIHkgbG9zIG1lemNsw7MgZGUgdGFsIG1hbmVyYSBxdWUgbG9ncsOzIGhhY2VyIHVuIGxpYnJvIGRlIHRleHRvcyBlc3BlY2ltZW4uIE5vIHPDs2xvIHNvYnJldml2acOzIDUwMCBhw7Fvcywgc2lubyBxdWUgdGFtYmllbiBpbmdyZXPDsyBjb21vIHRleHRvIGRlIHJlbGxlbm8gZW4gZG9jdW1lbnRvcyBlbGVjdHLDs25pY29zLCBxdWVkYW5kbyBlc2VuY2lhbG1lbnRlIGlndWFsIGFsIG9yaWdpbmFsLiBGdWUgcG9wdWxhcml6YWRvIGVuIGxvcyA2MHMgY29uIGxhIGNyZWFjacOzbiBkZSBsYXMgaG9qYXMgIkxldHJhc2V0IiwgbGFzIGN1YWxlcyBjb250ZW5pYW4gcGFzYWplcyBkZSBMb3JlbSBJcHN1bSwgeSBtw6FzIHJlY2llbnRlbWVudGUgY29uIHNvZnR3YXJlIGRlIGF1dG9lZGljacOzbiwgY29tbyBwb3IgZWplbXBsbyBBbGR1cyBQYWdlTWFrZXIsIGVsIGN1YWwgaW5jbHV5ZSB2ZXJzaW9uZXMgZGUgTG9yZW0gSXBzdW0uPHNwYW4gY2xhc3M9InJlZGFjdG9yLWludmlzaWJsZS1zcGFjZSI+PC9zcGFuPjwvcD48cCBkYXRhLXJlZGFjdG9yLWluc2VydGVkLWltYWdlPSJ0cnVlIj48Y29uY3JldGUtcGljdHVyZSBmSUQ9IjIxIiBpZD0iaW1hZ2UtbWFya2VyIiBhbHQ9IiIgd2lkdGg9IjU5NiIgaGVpZ2h0PSIyOTgiIHN0eWxlPSJmbG9hdDogbGVmdDsgd2lkdGg6IDU5NnB4OyBoZWlnaHQ6IDI5OHB4OyBtYXJnaW46IDBweCAxMHB4IDEwcHggMHB4OyIgLz48L3A+PHN0cm9uZz5Mb3JlbSBJcHN1bTwvc3Ryb25nPiBlcyBzaW1wbGVtZW50ZSBlbCB0ZXh0byBkZSByZWxsZW5vIGRlIGxhcyBpbXByZW50YXMgeSBhcmNoaXZvcyBkZSB0ZXh0by4gTG9yZW0gSXBzdW0gaGEgc2lkbyBlbCB0ZXh0byBkZSByZWxsZW5vIGVzdMOhbmRhciBkZSBsYXMgaW5kdXN0cmlhcyBkZXNkZSBlbCBhw7FvIDE1MDAsIGN1YW5kbyB1biBpbXByZXNvciAoTi4gZGVsIFQuIHBlcnNvbmEgcXVlIHNlIGRlZGljYSBhIGxhIGltcHJlbnRhKSBkZXNjb25vY2lkbyB1c8OzIHVuYSBnYWxlcsOtYSBkZSB0ZXh0b3MgeSBsb3MgbWV6Y2zDsyBkZSB0YWwgbWFuZXJhIHF1ZSBsb2dyw7MgaGFjZXIgdW4gbGlicm8gZGUgdGV4dG9zIGVzcGVjaW1lbi4gTm8gc8OzbG8gc29icmV2aXZpw7MgNTAwIGHDsW9zLCBzaW5vIHF1ZSB0YW1iaWVuIGluZ3Jlc8OzIGNvbW8gdGV4dG8gZGUgcmVsbGVubyBlbiBkb2N1bWVudG9zIGVsZWN0csOzbmljb3MsIHF1ZWRhbmRvIGVzZW5jaWFsbWVudGUgaWd1YWwgYWwgb3JpZ2luYWwuIEZ1ZSBwb3B1bGFyaXphZG8gZW4gbG9zIDYwcyBjb24gbGEgY3JlYWNpw7NuIGRlIGxhcyBob2phcyAiTGV0cmFzZXQiLCBsYXMgY3VhbGVzIGNvbnRlbmlhbiBwYXNhamVzIGRlIExvcmVtIElwc3VtLCB5IG3DoXMgcmVjaWVudGVtZW50ZSBjb24gc29mdHdhcmUgZGUgYXV0b2VkaWNpw7NuLCBjb21vIHBvciBlamVtcGxvIEFsZHVzIFBhZ2VNYWtlciwgZWwgY3VhbCBpbmNsdXllIHZlcnNpb25lcyBkZSBMb3JlbSBJcHN1bS48cD48c3BhbiBjbGFzcz0icmVkYWN0b3ItaW52aXNpYmxlLXNwYWNlIj48c3BhbiBjbGFzcz0icmVkYWN0b3ItaW52aXNpYmxlLXNwYWNlIj48c3Ryb25nPkxvcmVtIElwc3VtPC9zdHJvbmc+IGVzIHNpbXBsZW1lbnRlIGVsIHRleHRvIGRlIHJlbGxlbm8gZGUgbGFzIGltcHJlbnRhcyB5IGFyY2hpdm9zIGRlIHRleHRvLiBMb3JlbSBJcHN1bSBoYSBzaWRvIGVsIHRleHRvIGRlIHJlbGxlbm8gZXN0w6FuZGFyIGRlIGxhcyBpbmR1c3RyaWFzIGRlc2RlIGVsIGHDsW8gMTUwMCwgY3VhbmRvIHVuIGltcHJlc29yIChOLiBkZWwgVC4gcGVyc29uYSBxdWUgc2UgZGVkaWNhIGEgbGEgaW1wcmVudGEpIGRlc2Nvbm9jaWRvIHVzw7MgdW5hIGdhbGVyw61hIGRlIHRleHRvcyB5IGxvcyBtZXpjbMOzIGRlIHRhbCBtYW5lcmEgcXVlIGxvZ3LDsyBoYWNlciB1biBsaWJybyBkZSB0ZXh0b3MgZXNwZWNpbWVuLiBObyBzw7NsbyBzb2JyZXZpdmnDsyA1MDAgYcOxb3MsIHNpbm8gcXVlIHRhbWJpZW4gaW5ncmVzw7MgY29tbyB0ZXh0byBkZSByZWxsZW5vIGVuIGRvY3VtZW50b3MgZWxlY3Ryw7NuaWNvcywgcXVlZGFuZG8gZXNlbmNpYWxtZW50ZSBpZ3VhbCBhbCBvcmlnaW5hbC4gRnVlIHBvcHVsYXJpemFkbyBlbiBsb3MgNjBzIGNvbiBsYSBjcmVhY2nDs24gZGUgbGFzIGhvamFzICJMZXRyYXNldCIsIGxhcyBjdWFsZXMgY29udGVuaWFuIHBhc2FqZXMgZGUgTG9yZW0gSXBzdW0sIHkgbcOhcyByZWNpZW50ZW1lbnRlIGNvbiBzb2Z0d2FyZSBkZSBhdXRvZWRpY2nDs24sIGNvbW8gcG9yIGVqZW1wbG8gQWxkdXMgUGFnZU1ha2VyLCBlbCBjdWFsIGluY2x1eWUgdmVyc2lvbmVzIGRlIExvcmVtIElwc3VtLjxzcGFuIGNsYXNzPSJyZWRhY3Rvci1pbnZpc2libGUtc3BhY2UiPjxzdHJvbmc+TG9yZW0gSXBzdW08L3N0cm9uZz4gZXMgc2ltcGxlbWVudGUgZWwgdGV4dG8gZGUgcmVsbGVubyBkZSBsYXMgaW1wcmVudGFzIHkgYXJjaGl2b3MgZGUgdGV4dG8uIExvcmVtIElwc3VtIGhhIHNpZG8gZWwgdGV4dG8gZGUgcmVsbGVubyBlc3TDoW5kYXIgZGUgbGFzIGluZHVzdHJpYXMgZGVzZGUgZWwgYcOxbyAxNTAwLCBjdWFuZG8gdW4gaW1wcmVzb3IgKE4uIGRlbCBULiBwZXJzb25hIHF1ZSBzZSBkZWRpY2EgYSBsYSBpbXByZW50YSkgZGVzY29ub2NpZG8gdXPDsyB1bmEgZ2FsZXLDrWEgZGUgdGV4dG9zIHkgbG9zIG1lemNsw7MgZGUgdGFsIG1hbmVyYSBxdWUgbG9ncsOzIGhhY2VyIHVuIGxpYnJvIGRlIHRleHRvcyBlc3BlY2ltZW4uIE5vIHPDs2xvIHNvYnJldml2acOzIDUwMCBhw7Fvcywgc2lubyBxdWUgdGFtYmllbiBpbmdyZXPDsyBjb21vIHRleHRvIGRlIHJlbGxlbm8gZW4gZG9jdW1lbnRvcyBlbGVjdHLDs25pY29zLCBxdWVkYW5kbyBlc2VuY2lhbG1lbnRlIGlndWFsIGFsIG9yaWdpbmFsLiBGdWUgcG9wdWxhcml6YWRvIGVuIGxvcyA2MHMgY29uIGxhIGNyZWFjacOzbiBkZSBsYXMgaG9qYXMgIkxldHJhc2V0IiwgbGFzIGN1YWxlcyBjb250ZW5pYW4gcGFzYWplcyBkZSBMb3JlbSBJcHN1bSwgeSBtw6FzIHJlY2llbnRlbWVudGUgY29uIHNvZnR3YXJlIGRlIGF1dG9lZGljacOzbiwgY29tbyBwb3IgZWplbXBsbyBBbGR1cyBQYWdlTWFrZXIsIGVsIGN1YWwgaW5jbHV5ZSB2ZXJzaW9uZXMgZGUgTG9yZW0gSXBzdW0uPHNwYW4gY2xhc3M9InJlZGFjdG9yLWludmlzaWJsZS1zcGFjZSI+PC9zcGFuPjxicj48L3NwYW4+PC9zcGFuPjwvc3Bhbj48L3A+Ijt9'),
(1379,	'',	'2016-06-02 10:55:44',	'2016-06-02 10:56:04',	'SENATICs Estilo D [3 col] (Estilo Albumes)',	'0',	30,	1,	NULL),
(1380,	'',	'2016-06-02 11:03:33',	'2016-06-02 11:03:33',	'',	'0',	46,	1,	NULL),
(1381,	'',	'2016-06-02 11:06:30',	'2016-06-02 11:06:30',	NULL,	'0',	1,	1,	NULL),
(1382,	'',	'2016-06-02 11:06:58',	'2016-06-02 11:06:58',	NULL,	'0',	38,	1,	NULL),
(1383,	'',	'2016-06-02 11:07:14',	'2016-06-02 11:07:14',	NULL,	'0',	38,	1,	NULL),
(1388,	'',	'2016-06-02 11:07:48',	'2016-06-02 11:07:48',	NULL,	'1',	38,	1,	NULL),
(1389,	'',	'2016-06-02 11:08:00',	'2016-06-02 11:08:52',	'',	'1',	38,	1,	NULL),
(1390,	'',	'2016-06-02 11:08:13',	'2016-06-02 11:09:21',	'',	'1',	38,	1,	NULL),
(1391,	'',	'2016-06-02 11:08:32',	'2016-06-02 11:09:12',	'',	'1',	38,	1,	NULL),
(1392,	'',	'2016-06-02 11:29:40',	'2016-06-02 11:29:54',	'',	'0',	46,	1,	NULL),
(1393,	'',	'2016-06-02 11:30:27',	'2016-06-02 11:30:28',	'innerzoom',	'1',	46,	1,	NULL),
(1394,	'',	'2016-06-02 11:30:44',	'2016-06-02 11:30:45',	'lightbox',	'1',	46,	1,	NULL),
(1395,	'',	'2016-06-02 11:33:17',	'2016-06-02 11:33:37',	'SENATICs Estilo E [3 col] (Estilo Albumes-Slide)',	'0',	30,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjMyOntzOjM6ImJJRCI7czo0OiIxMzk1IjtzOjk6IgAqAF90YWJsZSI7czoxMDoiYnRQYWdlTGlzdCI7czozOiJudW0iO3M6MToiMyI7czo3OiJvcmRlckJ5IjtzOjExOiJjaHJvbm9fZGVzYyI7czo5OiJjUGFyZW50SUQiO3M6MToiMCI7czo1OiJjVGhpcyI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjEiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjEyOiJJciBhbCDDgWxidW0iO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MDoiIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjM6ImFsbCI7czoxNDoiZmlsdGVyRGF0ZURheXMiO3M6MToiMCI7czoxNToiZmlsdGVyRGF0ZVN0YXJ0IjtOO3M6MTM6ImZpbHRlckRhdGVFbmQiO047czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO3M6MToiMCI7czoxMToiaW5jbHVkZU5hbWUiO3M6MToiMSI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjEiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjAiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIwIjtzOjg6InBhZ2luYXRlIjtzOjE6IjAiO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjAiO3M6NDoicHRJRCI7czoxOiI4IjtzOjQ6InBmSUQiO3M6MToiMCI7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjA6IiI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIxIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtzOjE6IjAiO30='),
(1396,	'',	'2016-06-02 11:35:54',	'2016-06-02 11:35:54',	NULL,	'1',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjEzOTYiO3M6OToiACoAX3RhYmxlIjtzOjE2OiJidENvcmVBcmVhTGF5b3V0IjtzOjEwOiJhckxheW91dElEIjtzOjI6IjIwIjt9'),
(1397,	'',	'2016-06-02 11:43:23',	'2016-06-02 11:43:57',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjEzOTciO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjIxOToiPHAgZGF0YS1yZWRhY3Rvci1pbnNlcnRlZC1pbWFnZT0idHJ1ZSI+PGltZyBzcmM9Ii9hcHBsaWNhdGlvbi9maWxlcy8xNDE0LzY0ODgvMjE4Ni9uZXdzcGFwZXIucG5nIiBpZD0iaW1hZ2UtbWFya2VyIiBhbHQ9IiIgc3R5bGU9IndpZHRoOjMwcHg7aGVpZ2h0OmF1dG87ZmxvYXQ6IGxlZnQ7IG1hcmdpbjogMHB4IDEwcHggMTBweCAwcHg7Ij4NCjwvcD4NCjxoMz5Ob3RpY2lhczwvaDM+Ijt9'),
(1398,	'',	'2016-06-02 11:47:37',	'2016-06-02 11:48:09',	'Slider-Principal',	'0',	48,	1,	NULL),
(1399,	'',	'2016-06-02 11:49:48',	'2016-06-02 11:51:32',	'',	'1',	42,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czo0OiIxMzk5IjtzOjk6IgAqAF90YWJsZSI7czo3OiJidEJvdG9uIjtzOjU6InRleHRvIjtzOjk6IlRyw6FtaXRlcyI7czo0OiJpY29uIjtzOjg6ImJvb2ttYXJrIjtzOjE2OiJhbGluZWFjaW9uX2ljb25vIjtzOjE6IjAiO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7czozOiIxOTEiO3M6NjoidGFyZ2V0IjtzOjE6IjAiO3M6MTQ6InRhbWFuaG9fZnVlbnRlIjtzOjI6IjE0IjtzOjEyOiJjb2xvcl9mdWVudGUiO3M6NzoiI2JhM2EzYSI7czoxNzoiYWxpbmVhY2lvbl9mdWVudGUiO3M6MToiMSI7czoxMToiY29sb3JfZm9uZG8iO3M6NzoiI2ZmZmZmZiI7czo3OiJwYWRkaW5nIjtzOjE6IjgiO3M6NToiYW5jaG8iO3M6MzoiMTAwIjtzOjEzOiJhbmNob19mb3JtYXRvIjtzOjE6IiUiO3M6MTY6ImFsaW5lYWNpb25fYm90b24iO3M6MToiMCI7czozOiJmSUQiO047czoxODoiY29sb3JfZnVlbnRlX2hvdmVyIjtzOjc6IiMyMjIyMjIiO3M6MTc6ImNvbG9yX2ZvbmRvX2hvdmVyIjtzOjc6IiNmMGYwZjAiO30='),
(1400,	'',	'2016-06-02 11:50:17',	'2016-06-02 11:51:56',	'',	'1',	42,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czo0OiIxNDAwIjtzOjk6IgAqAF90YWJsZSI7czo3OiJidEJvdG9uIjtzOjU6InRleHRvIjtzOjk6IlNlcnZpY2lvcyI7czo0OiJpY29uIjtzOjk6ImJyaWVmY2FzZSI7czoxNjoiYWxpbmVhY2lvbl9pY29ubyI7czoxOiIwIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO3M6MzoiMTkyIjtzOjY6InRhcmdldCI7czoxOiIwIjtzOjE0OiJ0YW1hbmhvX2Z1ZW50ZSI7czoyOiIxNCI7czoxMjoiY29sb3JfZnVlbnRlIjtzOjc6IiNiYTNhM2EiO3M6MTc6ImFsaW5lYWNpb25fZnVlbnRlIjtzOjE6IjEiO3M6MTE6ImNvbG9yX2ZvbmRvIjtzOjc6IiNmZmZmZmYiO3M6NzoicGFkZGluZyI7czoxOiI4IjtzOjU6ImFuY2hvIjtzOjM6IjEwMCI7czoxMzoiYW5jaG9fZm9ybWF0byI7czoxOiIlIjtzOjE2OiJhbGluZWFjaW9uX2JvdG9uIjtzOjE6IjAiO3M6MzoiZklEIjtOO3M6MTg6ImNvbG9yX2Z1ZW50ZV9ob3ZlciI7czo3OiIjMjIyMjIyIjtzOjE3OiJjb2xvcl9mb25kb19ob3ZlciI7czo3OiIjZjBmMGYwIjt9'),
(1401,	'',	'2016-06-02 11:50:43',	'2016-06-02 11:52:11',	'',	'1',	42,	1,	NULL),
(1403,	'',	'2016-06-02 11:53:30',	'2016-06-02 11:53:31',	'',	'1',	42,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czo0OiIxNDAzIjtzOjk6IgAqAF90YWJsZSI7czo3OiJidEJvdG9uIjtzOjU6InRleHRvIjtzOjU6Ik1FQ0lQIjtzOjQ6Imljb24iO3M6ODoiYnVpbGRpbmciO3M6MTY6ImFsaW5lYWNpb25faWNvbm8iO3M6MToiMCI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtzOjM6IjIwMCI7czo2OiJ0YXJnZXQiO3M6MToiMCI7czoxNDoidGFtYW5ob19mdWVudGUiO3M6MjoiMTQiO3M6MTI6ImNvbG9yX2Z1ZW50ZSI7czo3OiIjYmEzYTNhIjtzOjE3OiJhbGluZWFjaW9uX2Z1ZW50ZSI7czoxOiIxIjtzOjExOiJjb2xvcl9mb25kbyI7czo3OiIjZmZmZmZmIjtzOjc6InBhZGRpbmciO3M6MToiOCI7czo1OiJhbmNobyI7czozOiIxMDAiO3M6MTM6ImFuY2hvX2Zvcm1hdG8iO3M6MToiJSI7czoxNjoiYWxpbmVhY2lvbl9ib3RvbiI7czoxOiIwIjtzOjM6ImZJRCI7TjtzOjE4OiJjb2xvcl9mdWVudGVfaG92ZXIiO3M6NzoiIzIyMjIyMiI7czoxNzoiY29sb3JfZm9uZG9faG92ZXIiO3M6NzoiI2YwZjBmMCI7fQ=='),
(1404,	'',	'2016-06-02 11:54:28',	'2016-06-02 11:54:29',	'Slider-Principal',	'1',	48,	1,	NULL),
(1405,	'',	'2016-06-02 11:55:10',	'2016-06-02 11:55:10',	'',	'1',	42,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czo0OiIxNDA1IjtzOjk6IgAqAF90YWJsZSI7czo3OiJidEJvdG9uIjtzOjU6InRleHRvIjtzOjE3OiJDb21wcmFzIFDDumJsaWNhcyI7czo0OiJpY29uIjtzOjEzOiJzaG9wcGluZy1jYXJ0IjtzOjE2OiJhbGluZWFjaW9uX2ljb25vIjtzOjE6IjAiO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7czozOiIxOTMiO3M6NjoidGFyZ2V0IjtzOjE6IjAiO3M6MTQ6InRhbWFuaG9fZnVlbnRlIjtzOjI6IjE0IjtzOjEyOiJjb2xvcl9mdWVudGUiO3M6NzoiI2JhM2EzYSI7czoxNzoiYWxpbmVhY2lvbl9mdWVudGUiO3M6MToiMSI7czoxMToiY29sb3JfZm9uZG8iO3M6NzoiI2ZmZmZmZiI7czo3OiJwYWRkaW5nIjtzOjE6IjgiO3M6NToiYW5jaG8iO3M6MzoiMTAwIjtzOjEzOiJhbmNob19mb3JtYXRvIjtzOjE6IiUiO3M6MTY6ImFsaW5lYWNpb25fYm90b24iO3M6MToiMCI7czozOiJmSUQiO047czoxODoiY29sb3JfZnVlbnRlX2hvdmVyIjtzOjc6IiMyMjIyMjIiO3M6MTc6ImNvbG9yX2ZvbmRvX2hvdmVyIjtzOjc6IiNmMGYwZjAiO30='),
(1406,	'',	'2016-06-02 11:56:28',	'2016-06-02 11:58:52',	'',	'0',	48,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEyOntzOjM6ImJJRCI7czo0OiIxNDA2IjtzOjk6IgAqAF90YWJsZSI7czoxMDoiYnRDYXJydXNlbCI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMSI7czoxNDoic2xpZGVzVG9TY3JvbGwiO3M6MToiMSI7czoxMjoic2xpZGVzVG9TaG93IjtzOjE6IjQiO3M6NzoidGltZW91dCI7czo0OiI3MDAwIjtzOjU6InNwZWVkIjtzOjM6IjIwMCI7czo5OiJub0FuaW1hdGUiO3M6MToiMSI7czo4OiJpbmZpbml0ZSI7czoxOiIxIjtzOjExOiJtb2RvX2NlbnRlciI7czoxOiIwIjtzOjExOiJhdXRvX2hlaWdodCI7czoxOiIxIjtzOjg6Im1heFdpZHRoIjtzOjE6IjAiO30='),
(1407,	'',	'2016-06-02 11:59:10',	'2016-06-02 11:59:10',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjE0MDciO3M6OToiACoAX3RhYmxlIjtzOjE2OiJidENvcmVBcmVhTGF5b3V0IjtzOjEwOiJhckxheW91dElEIjtzOjI6IjIxIjt9'),
(1408,	'',	'2016-06-02 13:09:38',	'2016-06-02 13:09:38',	'',	'1',	43,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjE0MDgiO3M6OToiACoAX3RhYmxlIjtzOjE4OiJidExleVRyYW5zcGFyZW5jaWEiO3M6MTU6ImludGVybmFsTGlua0NJRCI7czozOiIxODkiO30='),
(1409,	'',	'2016-06-02 13:10:16',	'2016-06-02 13:10:16',	'Slider-Principal',	'1',	48,	1,	NULL),
(1410,	'',	'2016-06-02 13:10:45',	'2016-06-02 13:10:45',	'Slider-Principal',	'1',	48,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEyOntzOjM6ImJJRCI7czo0OiIxNDEwIjtzOjk6IgAqAF90YWJsZSI7czoxMDoiYnRDYXJydXNlbCI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMCI7czoxNDoic2xpZGVzVG9TY3JvbGwiO3M6MToiMSI7czoxMjoic2xpZGVzVG9TaG93IjtzOjE6IjEiO3M6NzoidGltZW91dCI7czo0OiI1MDAwIjtzOjU6InNwZWVkIjtzOjM6IjUwMCI7czo5OiJub0FuaW1hdGUiO3M6MToiMSI7czo4OiJpbmZpbml0ZSI7czoxOiIxIjtzOjExOiJtb2RvX2NlbnRlciI7czoxOiIwIjtzOjExOiJhdXRvX2hlaWdodCI7czoxOiIxIjtzOjg6Im1heFdpZHRoIjtzOjE6IjAiO30='),
(1411,	'',	'2016-06-02 13:11:31',	'2016-06-02 13:11:32',	NULL,	'1',	1,	1,	NULL),
(1412,	'',	'2016-06-02 13:13:04',	'2016-06-02 13:13:05',	NULL,	'1',	1,	1,	NULL),
(1413,	'',	'2016-06-02 13:13:37',	'2016-06-02 13:13:38',	NULL,	'1',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjE0MTMiO3M6OToiACoAX3RhYmxlIjtzOjE2OiJidENvcmVBcmVhTGF5b3V0IjtzOjEwOiJhckxheW91dElEIjtzOjI6IjI0Ijt9'),
(1414,	'',	'2016-06-02 13:25:42',	'2016-06-02 13:25:43',	NULL,	'1',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjE0MTQiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjE5NjoiPHA+UG9ydGFsIGNvbnN0cnVpZG8gY29uanVudGFtZW50ZSBjb24gbGEgPGEgaHJlZj0iaHR0cHM6Ly93d3cuc2VuYXRpY3MuZ292LnB5LyIgdGFyZ2V0PSJfYmxhbmsiPlNFTkFUSUNzPC9hPjwvcD48cD4yMDE2IFNlY3JldGFyw61hIE5hY2lvbmFsIGRlIFRlY25vbG9nw61hcyBkZSBsYSBJbmZvcm1hY2nDs24geSBDb211bmljYWNpw7NuPC9wPiI7fQ=='),
(1415,	'',	'2016-06-02 13:28:15',	'2016-06-02 13:28:16',	'',	'0',	46,	1,	NULL),
(1416,	'',	'2016-06-02 13:28:41',	'2016-06-02 13:28:41',	'lightbox',	'1',	46,	1,	NULL),
(1417,	'',	'2016-06-02 13:44:50',	'2016-06-02 13:44:50',	'SENATICs Estilo C [img small] (Lista Horizontal)',	'1',	30,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjMyOntzOjM6ImJJRCI7czo0OiIxNDE3IjtzOjk6IgAqAF90YWJsZSI7czoxMDoiYnRQYWdlTGlzdCI7czozOiJudW0iO3M6MToiMyI7czo3OiJvcmRlckJ5IjtzOjExOiJjaHJvbm9fZGVzYyI7czo5OiJjUGFyZW50SUQiO3M6MToiMCI7czo1OiJjVGhpcyI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjEiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtzOjg6IlZlciBtw6FzIjtzOjEzOiJwYWdlTGlzdFRpdGxlIjtzOjA6IiI7czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6MTk6ImZpbHRlckJ5Q3VzdG9tVG9waWMiO3M6MToiMCI7czoxNjoiZmlsdGVyRGF0ZU9wdGlvbiI7czowOiIiO3M6MTQ6ImZpbHRlckRhdGVEYXlzIjtzOjE6IjAiO3M6MTU6ImZpbHRlckRhdGVTdGFydCI7TjtzOjEzOiJmaWx0ZXJEYXRlRW5kIjtOO3M6MzA6InJlbGF0ZWRUb3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6Mjk6ImN1c3RvbVRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyMToiY3VzdG9tVG9waWNUcmVlTm9kZUlEIjtzOjE6IjAiO3M6MTE6ImluY2x1ZGVOYW1lIjtzOjE6IjEiO3M6MTg6ImluY2x1ZGVEZXNjcmlwdGlvbiI7czoxOiIxIjtzOjExOiJpbmNsdWRlRGF0ZSI7czoxOiIxIjtzOjIxOiJpbmNsdWRlQWxsRGVzY2VuZGVudHMiO3M6MToiMCI7czo4OiJwYWdpbmF0ZSI7czoxOiIwIjtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjQ6InB0SUQiO3M6MToiNyI7czo0OiJwZklEIjtzOjE6IjAiO3M6MTc6InRydW5jYXRlU3VtbWFyaWVzIjtzOjE6IjEiO3M6MTk6ImRpc3BsYXlGZWF0dXJlZE9ubHkiO3M6MToiMCI7czoxNjoibm9SZXN1bHRzTWVzc2FnZSI7czoyMDoiTm8gaGF5IHB1YmxpY2FjaW9uZXMiO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMSI7czoxMzoidHJ1bmNhdGVDaGFycyI7czozOiIzMDAiO30='),
(1418,	'',	'2016-06-02 13:47:47',	'2016-06-02 13:47:59',	NULL,	'0',	42,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czo0OiIxNDE4IjtzOjk6IgAqAF90YWJsZSI7czo3OiJidEJvdG9uIjtzOjU6InRleHRvIjtzOjE3OiJWZXIgbcOhcyBub3RpY2lhcyI7czo0OiJpY29uIjtzOjEzOiJwbHVzLXNxdWFyZS1vIjtzOjE2OiJhbGluZWFjaW9uX2ljb25vIjtzOjE6IjEiO3M6MTI6ImV4dGVybmFsTGluayI7TjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO3M6MzoiMTU2IjtzOjY6InRhcmdldCI7czoxOiIwIjtzOjE0OiJ0YW1hbmhvX2Z1ZW50ZSI7czoyOiIyMCI7czoxMjoiY29sb3JfZnVlbnRlIjtzOjc6IiNjNzNiM2IiO3M6MTc6ImFsaW5lYWNpb25fZnVlbnRlIjtzOjE6IjAiO3M6MTE6ImNvbG9yX2ZvbmRvIjtzOjA6IiI7czo3OiJwYWRkaW5nIjtzOjE6IjUiO3M6NToiYW5jaG8iO3M6MzoiMTAwIjtzOjEzOiJhbmNob19mb3JtYXRvIjtzOjE6IiUiO3M6MTY6ImFsaW5lYWNpb25fYm90b24iO3M6MToiMCI7czozOiJmSUQiO047czoxODoiY29sb3JfZnVlbnRlX2hvdmVyIjtzOjc6IiNmZmZmZmYiO3M6MTc6ImNvbG9yX2ZvbmRvX2hvdmVyIjtzOjc6IiM4Nzg3ODciO30='),
(1421,	'',	'2016-06-02 14:03:52',	'2016-06-02 14:03:52',	NULL,	'0',	24,	1,	NULL),
(1422,	'',	'2016-06-02 14:04:16',	'2016-06-02 14:04:16',	NULL,	'1',	24,	1,	NULL),
(1423,	'',	'2016-06-02 14:04:30',	'2016-06-02 14:04:31',	NULL,	'1',	24,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czo0OiIxNDIzIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRHb29nbGVNYXAiO3M6NToidGl0bGUiO3M6MDoiIjtzOjg6ImxvY2F0aW9uIjtzOjEzNToiU2VjcmV0YXLDrWEgTmFjaW9uYWwgZGUgVGVjbm9sb2fDrWFzIGRlIGxhIEluZm9ybWFjacOzbiB5IENvbXVuaWNhY2nDs24gLSBTRU5BVElDcywgQXZlbmlkYSBHZW5lcmFsIE3DoXhpbW8gU2FudG9zLCBBc3VuY2nDs24sIFBhcmFndWF5IjtzOjg6ImxhdGl0dWRlIjtzOjExOiItMjUuMjc5OTg0OSI7czo5OiJsb25naXR1ZGUiO3M6MTg6Ii01Ny42MDg3ODU2MDAwMDAwMyI7czo0OiJ6b29tIjtzOjI6IjE2IjtzOjU6IndpZHRoIjtzOjQ6IjEwMCUiO3M6NjoiaGVpZ2h0IjtzOjU6IjMwMHB4IjtzOjExOiJzY3JvbGx3aGVlbCI7czoxOiIxIjt9'),
(1424,	'',	'2016-06-02 14:07:41',	'2016-06-02 14:08:23',	'',	'1',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjE0MjQiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjMyMToiPGg1Pjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iNyIgaWQ9ImltYWdlLW1hcmtlciIgd2lkdGg9IjQxMSIgaGVpZ2h0PSI4NyIgc3R5bGU9IndpZHRoOiA0MTFweDsgaGVpZ2h0OiA4N3B4OyIgLz5TZWNyZXRhcsOtYSBOYWNpb25hbCBkZSBUZWNub2xvZ8OtYSBkZSBsYSBJbmZvcm1hY2nDs24geSBDb211bmljYWNpw7NuPC9oNT48aDY+RGllY2Npw7NuOiBDb21wbGVqbyBTYW50b3MgRTIgLSBHcmFsLiBTYW50b3MgMTE3MCBjLyBDb25jb3JkaWE8L2g2PjxoNj5UZWxlZm9ubzogKCs1OTUgMjEpIDIxNy05MDAwPC9oNj48aDY+QXN1bmNpb24gLSBQYXJhZ3VheTwvaDY+Ijt9'),
(1425,	'',	'2016-06-02 14:10:35',	'2016-06-02 14:11:12',	NULL,	'0',	12,	1,	NULL),
(1445,	'',	'2016-06-02 14:17:52',	'2016-06-02 14:17:52',	NULL,	'0',	12,	3,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjE0NDUiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjE4NDE6IjxwIGRhdGEtcmVkYWN0b3ItaW5zZXJ0ZWQtaW1hZ2U9InRydWUiPjxhIGhyZWY9IntDQ006QkFTRV9VUkx9L2luZGV4LnBocC9kb3dubG9hZF9maWxlL3ZpZXdfaW5saW5lLzI1IiBkYXRhLWNvbmNyZXRlNS1saW5rLWxpZ2h0Ym94PSJpbWFnZSI+PGNvbmNyZXRlLXBpY3R1cmUgZklEPSIyNSIgaWQ9ImltYWdlLW1hcmtlciIgYWx0PSIiIHdpZHRoPSIzODgiIGhlaWdodD0iMTk0IiBzdHlsZT0iZmxvYXQ6IGxlZnQ7IHdpZHRoOiAzODhweDsgaGVpZ2h0OiAxOTRweDsgbWFyZ2luOiAwcHggMTBweCAxMHB4IDBweDsiIC8+PC9hPjxzdHJvbmc+TG9yZW0gSXBzdW08L3N0cm9uZz4gZXMgc2ltcGxlbWVudGUgZWwgdGV4dG8gZGUgcmVsbGVubyBkZSBsYXMgaW1wcmVudGFzIHkgYXJjaGl2b3MgZGUgdGV4dG8uIExvcmVtIElwc3VtIGhhIHNpZG8gZWwgdGV4dG8gZGUgcmVsbGVubyBlc3TDoW5kYXIgZGUgbGFzIGluZHVzdHJpYXMgZGVzZGUgZWwgYcOxbyAxNTAwLCBjdWFuZG8gdW4gaW1wcmVzb3IgKE4uIGRlbCBULiBwZXJzb25hIHF1ZSBzZSBkZWRpY2EgYSBsYSBpbXByZW50YSkgZGVzY29ub2NpZG8gdXPDsyB1bmEgZ2FsZXLDrWEgZGUgdGV4dG9zIHkgbG9zIG1lemNsw7MgZGUgdGFsIG1hbmVyYSBxdWUgbG9ncsOzIGhhY2VyIHVuIGxpYnJvIGRlIHRleHRvcyBlc3BlY2ltZW4uIE5vIHPDs2xvIHNvYnJldml2acOzIDUwMCBhw7Fvcywgc2lubyBxdWUgdGFtYmllbiBpbmdyZXPDsyBjb21vIHRleHRvIGRlIHJlbGxlbm8gZW4gZG9jdW1lbnRvcyBlbGVjdHLDs25pY29zLCBxdWVkYW5kbyBlc2VuY2lhbG1lbnRlIGlndWFsIGFsIG9yaWdpbmFsLiBGdWUgcG9wdWxhcml6YWRvIGVuIGxvcyA2MHMgY29uIGxhIGNyZWFjacOzbiBkZSBsYXMgaG9qYXMgIkxldHJhc2V0IiwgbGFzIGN1YWxlcyBjb250ZW5pYW4gcGFzYWplcyBkZSBMb3JlbSBJcHN1bSwgeSBtw6FzIHJlY2llbnRlbWVudGUgY29uIHNvZnR3YXJlIGRlIGF1dG9lZGljacOzbiwgY29tbyBwb3IgZWplbXBsbyBBbGR1cyBQYWdlTWFrZXIsIGVsIGN1YWwgaW5jbHV5ZSB2ZXJzaW9uZXMgZGUgTG9yZW0gSXBzdW0uCjwvcD48cD48c3Ryb25nPkxvcmVtIElwc3VtPC9zdHJvbmc+IGVzIHNpbXBsZW1lbnRlIGVsIHRleHRvIGRlIHJlbGxlbm8gZGUgbGFzIGltcHJlbnRhcyB5IGFyY2hpdm9zIGRlIHRleHRvLiBMb3JlbSBJcHN1bSBoYSBzaWRvIGVsIHRleHRvIGRlIHJlbGxlbm8gZXN0w6FuZGFyIGRlIGxhcyBpbmR1c3RyaWFzIGRlc2RlIGVsIGHDsW8gMTUwMCwgY3VhbmRvIHVuIGltcHJlc29yIChOLiBkZWwgVC4gcGVyc29uYSBxdWUgc2UgZGVkaWNhIGEgbGEgaW1wcmVudGEpIGRlc2Nvbm9jaWRvIHVzw7MgdW5hIGdhbGVyw61hIGRlIHRleHRvcyB5IGxvcyBtZXpjbMOzIGRlIHRhbCBtYW5lcmEgcXVlIGxvZ3LDsyBoYWNlciB1biBsaWJybyBkZSB0ZXh0b3MgZXNwZWNpbWVuLiBObyBzw7NsbyBzb2JyZXZpdmnDsyA1MDAgYcOxb3MsIHNpbm8gcXVlIHRhbWJpZW4gaW5ncmVzw7MgY29tbyB0ZXh0byBkZSByZWxsZW5vIGVuIGRvY3VtZW50b3MgZWxlY3Ryw7NuaWNvcywgcXVlZGFuZG8gZXNlbmNpYWxtZW50ZSBpZ3VhbCBhbCBvcmlnaW5hbC4gRnVlIHBvcHVsYXJpemFkbyBlbiBsb3MgNjBzIGNvbiBsYSBjcmVhY2nDs24gZGUgbGFzIGhvamFzICJMZXRyYXNldCIsIGxhcyBjdWFsZXMgY29udGVuaWFuIHBhc2FqZXMgZGUgTG9yZW0gSXBzdW0sIHkgbcOhcyByZWNpZW50ZW1lbnRlIGNvbiBzb2Z0d2FyZSBkZSBhdXRvZWRpY2nDs24sIGNvbW8gcG9yIGVqZW1wbG8gQWxkdXMgUGFnZU1ha2VyLCBlbCBjdWFsIGluY2x1eWUgdmVyc2lvbmVzIGRlIExvcmVtIElwc3VtLgo8L3A+Ijt9'),
(1446,	'',	'2016-06-08 10:38:26',	'2016-06-08 10:38:27',	NULL,	'1',	25,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjE0NDYiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjIzMDk6IjxzdHlsZT4NCg0KLndoaXRlLWVubGFjZXN7DQogICAgICAgIGZvbnQtc2l6ZToxMnB4ICFpbXBvcnRhbnQ7DQogICAgfQ0KPC9zdHlsZT4NCjxoNSBjbGFzcz0id2hpdGUtdGV4dCI+RW5sYWNlcyBkZSBJbnRlcsOpczwvaDU+DQo8ZGl2IGNsYXNzPSJjb2wgbDYgczEyIj4NCiAgPHVsPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5wcmVzaWRlbmNpYS5nb3YucHkvIj5QcmVzaWRlbmNpYSBkZSBsYSBSZXDDumJsaWNhIGRlbCBQYXJhZ3VheTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5zZnAuZ292LnB5LyI+U2VjcmV0YXLDrWEgZGUgbGEgRnVuY2nDs24gUMO6YmxpY2EgKFNGUCk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuc2FzLmdvdi5weS8iPlNlY3JldGFyw61hIGRlIEFjY2nDs24gU29jaWFsIChTQVMpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LmZvbmRlYy5nb3YucHkvIj5Gb25kbyBOYWNpb25hbCBkZSBsYSBDdWx0dXJhIHkgbGFzIEFydGVzIChGT05ERUMpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LnJlcGF0cmlhZG9zLmdvdi5weS8iPlNlY3JldGFyw61hIGRlIERlc2Fycm9sbG8gcGFyYSBSZXBhdHJpYWRvcyB5IFJlZnVnaWFkb3MgQ29ubmFjaW9uYWxlczwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5taW5pc3RlcmlvZGVqdXN0aWNpYS5nb3YucHkvIj5NaW5pc3RlcmlvIGRlIEp1c3RpY2lhPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3Lm10ZXNzLmdvdi5weS8iPk1pbmlzdGVyaW8gZGUgVHJhYmFqbywgRW1wbGVvIHkgU2VndXJpZGFkIFNvY2lhbCAoTVRFU1MpPC9hPjwvbGk+DQogICAgICANCiAgPC91bD4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0iY29sIGw2IHMxMiI+DQogIDx1bD4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuY3VsdHVyYS5nb3YucHkvIj5TZWNyZXRhcsOtYSBOYWNpb25hbCBkZSBDdWx0dXJhIChTTkMpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LnNpY29tLmdvdi5weS8iPlNlY3JldGFyw61hIGRlIEluZm9ybWFjacOzbiB5IENvbXVuaWNhY2nDs24gKFNJQ09NKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5pbmRpLmdvdi5weS8iPkluc3RpdHV0byBQYXJhZ3VheW8gZGVsIEluZGlnZW5hIChJTkRJKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5tZWMuZ292LnB5L2Ntcy8iPk1pbmlzdGVyaW8gZGUgRWR1Y2FjacOzbiB5IEN1bHR1cmEgKE1FQyk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuaGFjaWVuZGEuZ292LnB5LyI+TWluaXN0ZXJpbyBkZSBIYWNpZW5kYSAoTUgpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LnNuZC5nb3YucHkvIj5TZWNyZXRhcsOtYSBOYWNpb25hbCBkZSBEZXBvcnRlcyAoU05EKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5tc3Bicy5nb3YucHkvIj5NaW5pc3RlcmlvIGRlIFNhbHVkIFDDumJsaWNhIHkgQmllbmVzdGFyIFNvY2lhbCAoTVNQeUJTKTwvYT48L2xpPg0KICA8L3VsPg0KPC9kaXY+Ijt9'),
(1447,	'',	'2016-06-08 10:40:24',	'2016-06-08 10:40:24',	NULL,	'1',	25,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjQ6IjE0NDciO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjIyODI6IjxzdHlsZT4NCg0KLndoaXRlLWVubGFjZXN7DQogICAgICAgIGZvbnQtc2l6ZToxMnB4ICFpbXBvcnRhbnQ7DQogICAgfQ0KPC9zdHlsZT4NCjxoNSBjbGFzcz0id2hpdGUtdGV4dCI+RW5sYWNlcyBkZSBJbnRlcsOpczwvaDU+DQo8ZGl2IGNsYXNzPSJjb2wgbDYgczEyIj4NCiAgPHVsPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5wcmVzaWRlbmNpYS5nb3YucHkvIj5QcmVzaWRlbmNpYSBkZSBsYSBSZXDDumJsaWNhIGRlbCBQYXJhZ3VheTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5zZnAuZ292LnB5LyI+U2VjcmV0YXLDrWEgZGUgbGEgRnVuY2nDs24gUMO6YmxpY2EgKFNGUCk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuc2FzLmdvdi5weS8iPlNlY3JldGFyw61hIGRlIEFjY2nDs24gU29jaWFsIChTQVMpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LmZvbmRlYy5nb3YucHkvIj5Gb25kbyBOYWNpb25hbCBkZSBsYSBDdWx0dXJhIHkgbGFzIEFydGVzIChGT05ERUMpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LnNlbmF0dXIuZ292LnB5LyI+U2VjcmV0YXLDrWEgTmFjaW9uYWwgZGUgVHVyaXNtbyAoU0VOQVRVUik8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cubWluaXN0ZXJpb2RlanVzdGljaWEuZ292LnB5LyI+TWluaXN0ZXJpbyBkZSBKdXN0aWNpYSAoTUopPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3Lm10ZXNzLmdvdi5weS8iPk1pbmlzdGVyaW8gZGUgVHJhYmFqbywgRW1wbGVvIHkgU2VndXJpZGFkIFNvY2lhbCAoTVRFU1MpPC9hPjwvbGk+DQogICAgICANCiAgPC91bD4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0iY29sIGw2IHMxMiI+DQogIDx1bD4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuY3VsdHVyYS5nb3YucHkvIj5TZWNyZXRhcsOtYSBOYWNpb25hbCBkZSBDdWx0dXJhIChTTkMpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LnNpY29tLmdvdi5weS8iPlNlY3JldGFyw61hIGRlIEluZm9ybWFjacOzbiB5IENvbXVuaWNhY2nDs24gKFNJQ09NKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5pbmRpLmdvdi5weS8iPkluc3RpdHV0byBQYXJhZ3VheW8gZGVsIEluZGlnZW5hIChJTkRJKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5tZWMuZ292LnB5L2Ntcy8iPk1pbmlzdGVyaW8gZGUgRWR1Y2FjacOzbiB5IEN1bHR1cmEgKE1FQyk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuaGFjaWVuZGEuZ292LnB5LyI+TWluaXN0ZXJpbyBkZSBIYWNpZW5kYSAoTUgpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LnNuZC5nb3YucHkvIj5TZWNyZXRhcsOtYSBOYWNpb25hbCBkZSBEZXBvcnRlcyAoU05EKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5tc3Bicy5nb3YucHkvIj5NaW5pc3RlcmlvIGRlIFNhbHVkIFDDumJsaWNhIHkgQmllbmVzdGFyIFNvY2lhbCAoTVNQeUJTKTwvYT48L2xpPg0KICA8L3VsPg0KPC9kaXY+Ijt9');

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `BlockTypes`;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`),
  KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BlockTypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btSupportsInlineAdd`, `btSupportsInlineEdit`, `btIgnorePageThemeGridFrameworkContainer`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1,	'core_area_layout',	'Area Layout',	'Proxy block for area layouts.',	0,	0,	1,	1,	1,	0,	0,	400,	400,	0),
(2,	'core_page_type_composer_control_output',	'Composer Control',	'Proxy block for blocks that need to be output through composer.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(3,	'core_scrapbook_display',	'Scrapbook Display',	'Proxy block for blocks pasted through the scrapbook.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(4,	'core_stack_display',	'Stack Display',	'Proxy block for stacks added through the UI.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(5,	'core_conversation',	'Conversation',	'Displays conversations on a page.',	1,	0,	0,	0,	0,	0,	27,	400,	400,	0),
(6,	'dashboard_featured_addon',	'Dashboard Featured Add-On',	'Features an add-on from concrete5.org.',	0,	0,	1,	0,	0,	0,	0,	300,	100,	0),
(7,	'dashboard_featured_theme',	'Dashboard Featured Theme',	'Features a theme from concrete5.org.',	0,	0,	1,	0,	0,	0,	0,	300,	100,	0),
(8,	'dashboard_newsflow_latest',	'Dashboard Newsflow Latest',	'Grabs the latest newsflow data from concrete5.org.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(9,	'dashboard_app_status',	'Dashboard App Status',	'Displays update and welcome back information on your dashboard.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(10,	'dashboard_site_activity',	'Dashboard Site Activity',	'Displays a summary of website activity.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(11,	'autonav',	'Auto-Nav',	'Creates navigation trees and sitemaps.',	0,	0,	0,	0,	0,	0,	26,	800,	350,	0),
(12,	'content',	'Content',	'HTML/WYSIWYG Editor Content.',	0,	0,	0,	1,	1,	0,	28,	600,	465,	0),
(13,	'date_navigation',	'Date Navigation',	'Displays a list of months to filter a page list by.',	0,	0,	0,	0,	0,	0,	29,	400,	450,	0),
(14,	'external_form',	'External Form',	'Include external forms in the filesystem and place them on pages.',	0,	0,	0,	0,	0,	0,	39,	370,	175,	0),
(15,	'file',	'File',	'Link to files stored in the asset library.',	0,	0,	0,	0,	0,	0,	38,	300,	320,	0),
(16,	'page_attribute_display',	'Page Attribute Display',	'Displays the value of a page attribute for the current page.',	0,	0,	0,	0,	0,	0,	37,	500,	365,	0),
(17,	'form',	'Form',	'Build simple forms and surveys.',	0,	0,	0,	0,	0,	0,	36,	420,	430,	0),
(18,	'page_title',	'Page Title',	'Displays a Page\'s Title',	0,	0,	0,	0,	0,	0,	35,	400,	400,	0),
(19,	'feature',	'Feature',	'Displays an icon, a title, and a short paragraph description.',	0,	0,	0,	0,	0,	0,	34,	400,	520,	0),
(20,	'topic_list',	'Topic List',	'Displays a list of your site\'s topics, allowing you to click on them to filter a page list.',	0,	0,	0,	0,	0,	0,	33,	400,	400,	0),
(21,	'social_links',	'Social Links',	'Allows users to add social icons to their website',	0,	0,	0,	0,	0,	0,	32,	400,	400,	0),
(22,	'testimonial',	'Testimonial',	'Displays a quote or paragraph next to biographical information and a person\'s picture.',	0,	0,	0,	0,	0,	0,	31,	450,	560,	0),
(23,	'share_this_page',	'Share This Page',	'Allows users to share this page with social networks.',	0,	0,	0,	0,	0,	0,	30,	400,	400,	0),
(24,	'google_map',	'Google Map',	'Enter an address and a Google Map of that location will be placed in your page.',	0,	0,	0,	0,	0,	0,	25,	400,	320,	0),
(25,	'html',	'HTML',	'For adding HTML by hand.',	0,	0,	0,	0,	0,	1,	24,	600,	500,	0),
(26,	'horizontal_rule',	'Horizontal Rule',	'Adds a thin hairline horizontal divider to the page.',	0,	0,	0,	0,	0,	1,	11,	400,	400,	0),
(27,	'image',	'Image',	'Adds images and onstates from the library to pages.',	0,	0,	0,	0,	0,	0,	10,	400,	550,	0),
(28,	'faq',	'FAQ',	'Frequently Asked Questions Block',	0,	0,	0,	0,	0,	0,	9,	600,	465,	0),
(29,	'next_previous',	'Next & Previous Nav',	'Navigate through sibling pages.',	0,	0,	0,	0,	0,	0,	8,	430,	400,	0),
(30,	'page_list',	'Page List',	'List pages based on type, area.',	0,	0,	0,	0,	0,	0,	7,	800,	350,	0),
(31,	'rss_displayer',	'RSS Displayer',	'Fetch, parse and display the contents of an RSS or Atom feed.',	0,	0,	0,	0,	0,	0,	6,	400,	550,	0),
(32,	'search',	'Search',	'Add a search box to your site.',	0,	0,	0,	0,	0,	0,	5,	400,	420,	0),
(33,	'image_slider',	'Image Slider',	'Display your images and captions in an attractive slideshow format.',	0,	0,	0,	0,	0,	1,	4,	600,	550,	0),
(34,	'survey',	'Survey',	'Provide a simple survey, along with results in a pie chart format.',	0,	0,	0,	0,	0,	0,	3,	420,	400,	0),
(35,	'switch_language',	'Switch Language',	'Adds a front-end language switcher to your website.',	0,	0,	0,	0,	0,	0,	2,	500,	150,	0),
(36,	'tags',	'Tags',	'List pages based on type, area.',	0,	0,	0,	0,	0,	0,	12,	450,	439,	0),
(37,	'video',	'Video Player',	'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',	0,	0,	0,	0,	0,	0,	13,	320,	270,	0),
(38,	'youtube',	'YouTube Video',	'Embeds a YouTube Video in your web page.',	0,	0,	0,	0,	0,	0,	23,	400,	490,	0),
(39,	'event_calendar',	'Event Calendar',	'',	0,	0,	0,	0,	0,	0,	22,	400,	200,	1),
(40,	'open_data',	'Datos Abiertos',	'',	0,	0,	0,	0,	0,	0,	21,	400,	400,	2),
(41,	'agregarslider',	'Slider de Fotos',	'Despliega tus imagenes o noticias en un Slider de Fotos!!',	0,	0,	0,	0,	0,	1,	20,	700,	500,	0),
(42,	'boton',	'Boton',	'Agrega un Boton al sitio web',	0,	0,	0,	0,	0,	0,	19,	950,	400,	0),
(43,	'leytransparencia',	'Ley 5189/14',	'Administrador de la Ley Transparencia 5189/14',	0,	0,	0,	0,	0,	0,	18,	600,	500,	0),
(44,	'transparenciaactiva',	'Transparencia Activa',	'Administrador de Transparencia Activa permite insertar por cada bloque un conjunto de archivos del mismo tema, y asociarle un Autor del mismo como asi tambien indicar a que mes corresponde',	0,	0,	0,	0,	0,	0,	17,	1024,	600,	0),
(46,	'vivid_thumb_gallery',	'Thumb Gallery',	'Add a Gallery of Images',	0,	0,	0,	0,	0,	0,	16,	800,	465,	3),
(47,	'convenios',	'Convenios & Documentos',	'Permite listar los Convenios y Documentos',	0,	0,	0,	0,	0,	0,	15,	600,	500,	0),
(48,	'carrusel',	'Carrusel Banners',	'Muestra un Carrusel de fotos',	0,	0,	0,	0,	0,	1,	14,	700,	650,	0),
(49,	'publicaciones',	'Publicaciones',	'Permite realizar publicaciones, anexar al mismo enlaces a archivos/sitios',	0,	0,	0,	0,	0,	1,	1,	700,	650,	0);

DROP TABLE IF EXISTS `BlockTypeSetBlockTypes`;
CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BlockTypeSetBlockTypes` (`btID`, `btsID`, `displayOrder`) VALUES
(12,	1,	0),
(25,	1,	1),
(27,	1,	2),
(15,	1,	3),
(26,	1,	4),
(19,	1,	5),
(11,	2,	0),
(18,	2,	1),
(28,	2,	2),
(30,	2,	3),
(29,	2,	4),
(13,	2,	5),
(36,	2,	6),
(20,	2,	7),
(31,	2,	8),
(35,	2,	9),
(17,	3,	0),
(32,	3,	1),
(14,	3,	2),
(34,	4,	0),
(5,	4,	1),
(21,	4,	2),
(22,	4,	3),
(23,	4,	4),
(16,	5,	0),
(33,	5,	1),
(37,	5,	2),
(38,	5,	3),
(24,	5,	4);

DROP TABLE IF EXISTS `BlockTypeSets`;
CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `BlockTypeSets` (`btsID`, `btsName`, `btsHandle`, `pkgID`, `btsDisplayOrder`) VALUES
(1,	'Basic',	'basic',	0,	0),
(2,	'Navigation',	'navigation',	0,	0),
(3,	'Forms',	'form',	0,	0),
(4,	'Social Networking',	'social',	0,	0),
(5,	'Multimedia',	'multimedia',	0,	0);

DROP TABLE IF EXISTS `btBoton`;
CREATE TABLE `btBoton` (
  `bID` int(10) unsigned NOT NULL,
  `texto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alineacion_icono` tinyint(1) DEFAULT '1',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `target` smallint(5) unsigned DEFAULT '0',
  `tamanho_fuente` smallint(5) unsigned DEFAULT '12',
  `color_fuente` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#FFF',
  `alineacion_fuente` tinyint(1) DEFAULT '1',
  `color_fondo` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#428bca',
  `padding` smallint(5) unsigned DEFAULT '10',
  `ancho` varchar(5) COLLATE utf8_unicode_ci DEFAULT 'auto',
  `ancho_formato` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'px',
  `alineacion_boton` tinyint(1) DEFAULT '1',
  `fID` int(10) unsigned DEFAULT NULL,
  `color_fuente_hover` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#FFF',
  `color_fondo_hover` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#5A9FdF',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btBoton` (`bID`, `texto`, `icon`, `alineacion_icono`, `externalLink`, `internalLinkCID`, `target`, `tamanho_fuente`, `color_fuente`, `alineacion_fuente`, `color_fondo`, `padding`, `ancho`, `ancho_formato`, `alineacion_boton`, `fID`, `color_fuente_hover`, `color_fondo_hover`) VALUES
(236,	'Trámites',	'bookmark',	2,	'',	191,	0,	18,	'#1c1c1c',	0,	'#ffffff',	12,	'100',	'%',	0,	NULL,	'#000000',	'#e8e8e8'),
(238,	'Servicios',	'briefcase',	2,	'',	192,	0,	18,	'#1c1c1c',	0,	'#ffffff',	12,	'100',	'%',	0,	NULL,	'#000000',	'#e8e8e8'),
(240,	'Compras Públicas',	'money',	2,	'',	193,	0,	18,	'#1c1c1c',	0,	'#ffffff',	12,	'100',	'%',	0,	NULL,	'#000000',	'#e8e8e8'),
(1399,	'Trámites',	'bookmark',	0,	'',	191,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(1400,	'Servicios',	'briefcase',	0,	'',	192,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(1401,	'Compras Públicas',	'money',	0,	'',	193,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(1403,	'MECIP',	'building',	0,	'',	200,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(1405,	'Compras Públicas',	'shopping-cart',	0,	'',	193,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(1418,	'Ver más noticias',	'plus-square-o',	1,	NULL,	156,	0,	20,	'#c73b3b',	0,	'',	5,	'100',	'%',	0,	NULL,	'#ffffff',	'#878787');

DROP TABLE IF EXISTS `btCarrusel`;
CREATE TABLE `btCarrusel` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  `slidesToScroll` int(10) unsigned DEFAULT NULL,
  `slidesToShow` int(10) unsigned DEFAULT NULL,
  `timeout` int(10) unsigned DEFAULT NULL,
  `speed` int(10) unsigned DEFAULT NULL,
  `noAnimate` int(10) unsigned DEFAULT NULL,
  `infinite` int(10) unsigned DEFAULT NULL,
  `modo_center` int(10) unsigned DEFAULT NULL,
  `auto_height` int(10) unsigned DEFAULT NULL,
  `maxWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btCarrusel` (`bID`, `navigationType`, `slidesToScroll`, `slidesToShow`, `timeout`, `speed`, `noAnimate`, `infinite`, `modo_center`, `auto_height`, `maxWidth`) VALUES
(1398,	0,	1,	1,	5000,	500,	1,	1,	0,	1,	0),
(1404,	0,	1,	1,	5000,	500,	1,	1,	0,	1,	0),
(1406,	1,	1,	4,	7000,	200,	1,	1,	0,	1,	0),
(1409,	1,	1,	1,	5000,	500,	1,	1,	0,	1,	0),
(1410,	0,	1,	1,	5000,	500,	1,	1,	0,	1,	0);

DROP TABLE IF EXISTS `btCarruselEntries`;
CREATE TABLE `btCarruselEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `target` int(10) unsigned DEFAULT '0',
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btCarruselEntries` (`id`, `bID`, `cID`, `fID`, `linkURL`, `internalLinkCID`, `title`, `description`, `target`, `sortOrder`) VALUES
(3,	1398,	0,	9,	'',	160,	'Titulo Slider 1',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.</p>',	0,	0),
(4,	1398,	0,	8,	'',	0,	'Título Slide 2',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.</p>',	0,	1),
(7,	1404,	0,	9,	'',	160,	'Titulo Slider 1',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>',	0,	0),
(8,	1404,	0,	8,	'',	0,	'Título Slide 2',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.</p>',	0,	1),
(14,	1406,	0,	10,	'',	189,	'',	'',	0,	0),
(15,	1406,	0,	12,	'http://www.informacionpublica.gov.py',	0,	'',	'',	1,	1),
(16,	1406,	0,	11,	'http://www.denuncias.gov.py/ssps/',	0,	'',	'',	1,	2),
(17,	1406,	0,	13,	'http://www.paraguay.gov.py',	0,	'',	'',	1,	3),
(20,	1409,	0,	9,	'',	160,	'Titulo Slider 1',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>',	0,	0),
(21,	1409,	0,	8,	'',	0,	'Título Slide 2',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.</p>',	0,	1),
(24,	1410,	0,	9,	'',	160,	'Titulo Slider 1',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>',	0,	0),
(25,	1410,	0,	8,	'',	0,	'Título Slide 2',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.</p>',	0,	1);

DROP TABLE IF EXISTS `btContentFile`;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btContentImage`;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btContentImage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `altText`, `title`) VALUES
(10,	1,	0,	0,	0,	'',	0,	'',	''),
(11,	2,	0,	0,	0,	'',	0,	'',	''),
(15,	3,	0,	0,	0,	'',	0,	'',	''),
(22,	2,	0,	0,	0,	'',	0,	'',	''),
(23,	2,	0,	0,	0,	'',	0,	'',	''),
(24,	2,	0,	0,	0,	'',	0,	'',	''),
(209,	6,	0,	0,	0,	'',	0,	'',	''),
(227,	1,	0,	0,	0,	'',	0,	'',	''),
(228,	2,	0,	0,	0,	'',	0,	'',	''),
(229,	3,	0,	0,	0,	'',	0,	'',	'');

DROP TABLE IF EXISTS `btContentLocal`;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(1,	'<div style=\"padding: 40px; text-align: center\">\n<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/VB-R71zk06U\" frameborder=\"0\" allowfullscreen></iframe>\n                                    </div>'),
(16,	'<p>Portal construido conjuntamente con la <a href=\"http://www.senatics.gov.py/\" target=\"_blank\">SENATICs</a></p><p>2015 Secretaría Nacional de Tecnologías de la Información y Comunicación</p>'),
(18,	NULL),
(19,	NULL),
(36,	'<p><span style=\"font-size: 18px;\">Categorías / Filtrar</span>\r\n</p>'),
(118,	'<h5 style=\"text-align: center;\">Últimas Noticias Publicadas</h5>'),
(119,	'<p><span style=\"font-size: 20px;\">Compartir esta noticia</span>\r\n</p>'),
(145,	'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"5\" id=\"image-marker\" /></p>'),
(154,	''),
(189,	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>'),
(212,	'<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p>'),
(219,	'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"1\" id=\"image-marker\" width=\"395\" height=\"138\" style=\"width: 395px; height: 138px;\" /></p><h5>Secretaría Nacional de Tecnología de la Información y Comunicación</h5><h6>Diección: Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6>Telefono: (+595 21) 217-9000</h6><h6>Asuncion - Paraguay</h6>'),
(223,	'<h5><concrete-picture fID=\"7\" id=\"image-marker\" width=\"411\" height=\"87\" style=\"width: 411px; height: 87px;\" />Secretaría Nacional de Tecnología de la Información y Comunicación</h5><h6>Diección: Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6>Telefono: (+595 21) 217-9000</h6><h6>Asuncion - Paraguay</h6>'),
(241,	'<div class=\"row\">\r\n    <div class=\"col l12 s6\"><a href=\"index.php/transparencia\" target=\"_self\"><img src=\"/application/files/8414/6487/4258/acceso_informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://informacionpublica.paraguay.gov.py/\" target=\"_blank\"><img src=\"/application/files/8514/6487/4259/informacion_publica_btn-GRAL.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.denuncias.gov.py/ssps/\" target=\"_blank\"><img src=\"/application/files/7514/6487/4258/denuncias_btn.png\" style=\"width:100%\"></a></div>\r\n    <div class=\"col l12 s6\"><a href=\"http://www.paraguay.gov.py/\" target=\"_blank\"><img src=\"/application/files/3314/6487/4260/portal_parauay_btn2.png\" style=\"width:100%\"></a></div>\r\n</div>\r\n'),
(246,	'<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div>'),
(249,	'<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n    function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          if (modo_lectura_datos == \"black\"){\r\n    		  document.getElementById(\"fondo_sitio\").style.background=null;\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <ul>\r\n     <!-- <li><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">visibility</i></a></li>-->\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div>'),
(270,	'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"5\" id=\"image-marker\" width=\"385\" height=\"259\" style=\"width: 385px; height: 259px; float: left; margin: 0px 10px 10px 0px;\" alt=\"\" /><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>'),
(287,	'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"5\" id=\"image-marker\" width=\"385\" height=\"259\" alt=\"\" style=\"width: 385px; height: 259px; float: left; margin: 0px 10px 10px 0px;\" /><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p data-redactor-inserted-image=\"true\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<br></p><p data-redactor-inserted-image=\"true\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></p>'),
(308,	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"></span></p><p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"4\" id=\"image-marker\" alt=\"\" style=\"display: block; margin: auto; width: 511px; height: 180px;\" width=\"511\" height=\"180\" /></p><br><p><span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></span></p><p><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></span></span></p><p><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></span></span></span></p><p><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><br></span></span></span></span></p>'),
(314,	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"></span></p><p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"4\" id=\"image-marker\" alt=\"\" style=\"display: block; margin: auto; width: 511px; height: 180px;\" width=\"511\" height=\"180\" /></p><p><br></p>\n<p><span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></span></p><p><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></span></span></p><p><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></span></span></span></p><p><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><br></span></span></span></span></p>'),
(315,	'<p><strong></strong></p><p data-redactor-inserted-image=\"true\"><strong><concrete-picture fID=\"8\" id=\"image-marker\" width=\"997\" height=\"347\" style=\"width: 997px; height: 347px;\" /></strong></p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<p><br></p><p><strong>L</strong></p><p><strong>orem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<br></p><concrete-picture fID=\"9\" id=\"image-marker\" alt=\"\" width=\"430\" height=\"150\" style=\"float: right; width: 430px; height: 150px;\" /><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos </p><p>electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, </p><p>y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></p>'),
(316,	'<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.indert.gov.py/\">Instituto Nacional de Desarrollo Rural y de la Tierra (INDERT)</a></li>\r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.infona.gov.py/\">Instituto Forestal Nacional (INFONA)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(317,	'<p>Portal construido conjuntamente con la <a href=\"http://www.senatics.gov.py/\" target=\"_blank\">SENATICs</a></p><p>2016 Secretaría Nacional de Tecnologías de la Información y Comunicación</p>'),
(318,	'<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(319,	'<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(320,	'<style>\r\nfont-size:12px;\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(321,	'<style>\r\nfont-size:12px !important;\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(322,	'<style>\r\n\r\n.white-text{\r\n        font-size:11px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(323,	'<style>\r\n\r\n.white-text{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(324,	'<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(1347,	'<p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"5\" id=\"image-marker\" width=\"385\" height=\"259\" alt=\"\" style=\"width: 385px; height: 259px; float: left; margin: 0px 10px 10px 0px;\" /><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p data-redactor-inserted-image=\"true\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<br></p><p data-redactor-inserted-image=\"true\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></p>'),
(1358,	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"></span></p><p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"4\" id=\"image-marker\" alt=\"\" style=\"display: block; margin: auto; width: 511px; height: 180px;\" width=\"511\" height=\"180\" /></p><p><br></p><p><span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></span></p><p><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></span></span></p><p><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></span></span></span></p><p><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><br></span></span></span></span></p>'),
(1364,	'<p><strong></strong></p><p data-redactor-inserted-image=\"true\"><strong><concrete-picture fID=\"8\" id=\"image-marker\" width=\"997\" height=\"347\" style=\"width: 997px; height: 347px;\" /></strong></p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<p><br></p><p><strong>L</strong></p><p><strong>orem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<br></p><concrete-picture fID=\"9\" id=\"image-marker\" alt=\"\" width=\"430\" height=\"150\" style=\"float: right; width: 430px; height: 150px;\" /><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos </p><p>electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, </p><p>y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><br></span></p>'),
(1378,	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"></span></p><p data-redactor-inserted-image=\"true\"><concrete-picture fID=\"21\" id=\"image-marker\" alt=\"\" width=\"596\" height=\"298\" style=\"float: left; width: 596px; height: 298px; margin: 0px 10px 10px 0px;\" /></p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<p><span class=\"redactor-invisible-space\"><span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"></span><br></span></span></span></p>'),
(1397,	'<p data-redactor-inserted-image=\"true\"><img src=\"/application/files/1414/6488/2186/newspaper.png\" id=\"image-marker\" alt=\"\" style=\"width:30px;height:auto;float: left; margin: 0px 10px 10px 0px;\">\r\n</p>\r\n<h3>Noticias</h3>'),
(1414,	'<p>Portal construido conjuntamente con la <a href=\"https://www.senatics.gov.py/\" target=\"_blank\">SENATICs</a></p><p>2016 Secretaría Nacional de Tecnologías de la Información y Comunicación</p>'),
(1424,	'<h5><concrete-picture fID=\"7\" id=\"image-marker\" width=\"411\" height=\"87\" style=\"width: 411px; height: 87px;\" />Secretaría Nacional de Tecnología de la Información y Comunicación</h5><h6>Diección: Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6>Telefono: (+595 21) 217-9000</h6><h6>Asuncion - Paraguay</h6>'),
(1425,	'<p data-redactor-inserted-image=\"true\"><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/6\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"6\" id=\"image-marker\" alt=\"\" style=\"display: block; margin: auto; width: 100%; height: auto;\" width=\"100%\" height=\"auto\" /></a>\r\n</p>'),
(1445,	'<p data-redactor-inserted-image=\"true\"><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/25\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"25\" id=\"image-marker\" alt=\"\" width=\"388\" height=\"194\" style=\"float: left; width: 388px; height: 194px; margin: 0px 10px 10px 0px;\" /></a><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n</p><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n</p>'),
(1446,	'<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(1447,	'<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>');

DROP TABLE IF EXISTS `btConvenios`;
CREATE TABLE `btConvenios` (
  `bID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btConveniosEntries`;
CREATE TABLE `btConveniosEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `numero` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anho` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `institucion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `enlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btCoreAreaLayout`;
CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btCoreAreaLayout` (`bID`, `arLayoutID`) VALUES
(17,	1),
(26,	2),
(30,	3),
(35,	4),
(117,	6),
(146,	7),
(195,	10),
(197,	11),
(199,	12),
(207,	13),
(210,	14),
(213,	15),
(218,	16),
(232,	17),
(242,	18),
(1381,	19),
(1396,	20),
(1407,	21),
(1411,	22),
(1412,	23),
(1413,	24);

DROP TABLE IF EXISTS `btCoreConversation`;
CREATE TABLE `btCoreConversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btCorePageTypeComposerControlOutput`;
CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btCorePageTypeComposerControlOutput` (`bID`, `ptComposerOutputControlID`) VALUES
(9,	1),
(29,	4);

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btCoreScrapbookDisplay` (`bID`, `bOriginalID`) VALUES
(198,	196),
(206,	205),
(208,	205),
(211,	205),
(215,	205);

DROP TABLE IF EXISTS `btCoreStackDisplay`;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btDashboardNewsflowLatest` (`bID`, `slot`) VALUES
(4,	'A'),
(5,	'B'),
(8,	'C');

DROP TABLE IF EXISTS `btDateNavigation`;
CREATE TABLE `btDateNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btDateNavigation` (`bID`, `title`, `filterByParent`, `redirectToResults`, `cParentID`, `cTargetID`, `ptID`) VALUES
(39,	'Archivos / Biblioteca',	0,	0,	0,	0,	7);

DROP TABLE IF EXISTS `btEventCalendar`;
CREATE TABLE `btEventCalendar` (
  `bID` int(10) unsigned NOT NULL,
  `calendarID` int(10) unsigned DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `contentHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btEventCalendar` (`bID`, `calendarID`, `lang`, `typeID`, `contentHeight`) VALUES
(217,	1,	'es',	'0',	'');

DROP TABLE IF EXISTS `btExternalForm`;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btFaq`;
CREATE TABLE `btFaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btFaqEntries`;
CREATE TABLE `btFaqEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btFeature`;
CREATE TABLE `btFeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btFeature` (`bID`, `icon`, `title`, `paragraph`, `externalLink`, `internalLinkCID`) VALUES
(200,	'bookmark',	'Misión',	'<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p>',	'',	0),
(203,	'binoculars',	'Visión',	'<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p>',	'',	0),
(204,	'cubes',	'Objetivos',	'<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p>',	'',	0);

DROP TABLE IF EXISTS `btForm`;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btForm` (`bID`, `questionSetId`, `surveyName`, `submitText`, `thankyouMsg`, `notifyMeOnSubmission`, `recipientEmail`, `displayCaptcha`, `redirectCID`, `addFilesToSet`) VALUES
(220,	1464102868,	'Contacto',	'Enviar Mensaje',	'Mensaje enviado, Gracias por su contacto!',	0,	'',	1,	0,	0),
(221,	1464102868,	'Contacto',	'Enviar Mensaje',	'Mensaje enviado, Gracias por su contacto!',	0,	'',	1,	0,	0),
(222,	1464102868,	'Contacto',	'Enviar Mensaje',	'Mensaje enviado, Gracias por su contacto!',	0,	'',	1,	0,	0),
(224,	1464102868,	'Contacto',	'Enviar Mensaje',	'Mensaje enviado, Gracias por su contacto!',	0,	'',	1,	0,	0),
(225,	1464102868,	'Contacto',	'Enviar Mensaje',	'Mensaje enviado, Gracias por su contacto!',	0,	'',	1,	0,	0);

DROP TABLE IF EXISTS `btFormAnswers`;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btFormAnswerSet`;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btFormQuestions`;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btFormQuestions` (`qID`, `msqID`, `bID`, `questionSetId`, `question`, `inputType`, `options`, `position`, `width`, `height`, `defaultDate`, `required`) VALUES
(1,	1,	220,	1464102868,	'Nombre y Apellido',	'field',	'',	1000,	50,	3,	'',	1),
(2,	2,	220,	1464102868,	'Correo Electrónico',	'email',	'a:1:{s:22:\"send_notification_from\";i:1;}',	1000,	50,	3,	'',	1),
(3,	3,	220,	1464102868,	'Mensaje',	'text',	'',	1000,	50,	3,	'',	1),
(4,	3,	224,	1464102868,	'Mensaje',	'text',	'',	1000,	50,	2,	'',	1),
(5,	1,	224,	1464102868,	'Nombre y Apellido',	'field',	'',	1000,	50,	3,	'',	1),
(6,	2,	224,	1464102868,	'Correo Electrónico',	'email',	'a:1:{s:22:\"send_notification_from\";i:1;}',	1000,	50,	3,	'',	1),
(9,	1,	225,	1464102868,	'Nombre y Apellido',	'field',	'',	1000,	50,	3,	'',	1),
(10,	2,	225,	1464102868,	'Correo Electrónico',	'email',	'a:1:{s:22:\"send_notification_from\";i:1;}',	1000,	50,	3,	'',	1),
(11,	3,	225,	1464102868,	'Mensaje',	'text',	'',	1000,	40,	3,	'',	1);

DROP TABLE IF EXISTS `btGoogleMap`;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btGoogleMap` (`bID`, `title`, `location`, `latitude`, `longitude`, `zoom`, `width`, `height`, `scrollwheel`) VALUES
(1421,	'',	'Secretaría Nacional de Tecnologías de la Información y Comunicación - SENATICs, Avenida General Máximo Santos, Asunción, Paraguay',	-25.2799849,	-57.60878560000003,	14,	'100%',	'400px',	1),
(1422,	'',	'Secretaría Nacional de Tecnologías de la Información y Comunicación - SENATICs, Avenida General Máximo Santos, Asunción, Paraguay',	-25.2799849,	-57.60878560000003,	11,	'100%',	'300px',	1),
(1423,	'',	'Secretaría Nacional de Tecnologías de la Información y Comunicación - SENATICs, Avenida General Máximo Santos, Asunción, Paraguay',	-25.2799849,	-57.60878560000003,	16,	'100%',	'300px',	1);

DROP TABLE IF EXISTS `btImageSlider`;
CREATE TABLE `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  `timeout` int(10) unsigned DEFAULT NULL,
  `speed` int(10) unsigned DEFAULT NULL,
  `noAnimate` int(10) unsigned DEFAULT NULL,
  `pause` int(10) unsigned DEFAULT NULL,
  `maxWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btImageSliderEntries`;
CREATE TABLE `btImageSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btLeyTransparencia`;
CREATE TABLE `btLeyTransparencia` (
  `bID` int(10) unsigned NOT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btLeyTransparencia` (`bID`, `internalLinkCID`) VALUES
(245,	189),
(1408,	189);

DROP TABLE IF EXISTS `btLeyTransparenciaEntries`;
CREATE TABLE `btLeyTransparenciaEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btNavigation`;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  `displaySystemPages` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btNavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`, `displaySystemPages`) VALUES
(13,	'display_asc',	'top',	0,	0,	'all',	'all',	0,	0,	0),
(14,	'display_asc',	'top',	0,	0,	'all',	'all',	0,	0,	0),
(21,	'display_asc',	'top',	0,	0,	'relevant_breadcrumb',	'all',	0,	0,	0),
(27,	'display_asc',	'top',	0,	0,	'relevant_breadcrumb',	'all',	0,	0,	0),
(205,	'display_asc',	'second_level',	0,	0,	'none',	'enough',	0,	0,	0),
(588,	'display_asc',	'top',	0,	0,	'relevant_breadcrumb',	'enough',	0,	0,	0);

DROP TABLE IF EXISTS `btNextPrevious`;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btOpenData`;
CREATE TABLE `btOpenData` (
  `bID` int(10) unsigned NOT NULL,
  `opendataID` int(10) unsigned DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `contentHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btOpenData` (`bID`, `opendataID`, `lang`, `typeID`, `contentHeight`) VALUES
(247,	1,	NULL,	'0',	'0'),
(248,	2,	NULL,	'0',	'0');

DROP TABLE IF EXISTS `btPageAttributeDisplay`;
CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btPageAttributeDisplay` (`bID`, `attributeHandle`, `attributeTitleText`, `displayTag`, `dateFormat`, `thumbnailHeight`, `thumbnailWidth`) VALUES
(28,	'rpv_pageDatePublic',	'Publicado: ',	'blockquote',	'm/d/y h:i:a',	250,	250),
(147,	'rpv_pageDatePublic',	'Publicado: ',	'blockquote',	'm/d/y h:i:a',	250,	250);

DROP TABLE IF EXISTS `btPageList`;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) unsigned NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btPageList` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `useButtonForLink`, `buttonLinkText`, `pageListTitle`, `filterByRelated`, `filterByCustomTopic`, `filterDateOption`, `filterDateDays`, `filterDateStart`, `filterDateEnd`, `relatedTopicAttributeKeyHandle`, `customTopicAttributeKeyHandle`, `customTopicTreeNodeID`, `includeName`, `includeDescription`, `includeDate`, `includeAllDescendents`, `paginate`, `displayAliases`, `enableExternalFiltering`, `ptID`, `pfID`, `truncateSummaries`, `displayFeaturedOnly`, `noResultsMessage`, `displayThumbnail`, `truncateChars`) VALUES
(34,	6,	'chrono_desc',	0,	0,	1,	'Ver Más',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	1,	0,	0,	7,	0,	0,	0,	'No hay publicación',	1,	0),
(40,	15,	'chrono_desc',	0,	0,	1,	'Ver más',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	0,	0,	1,	0,	1,	7,	0,	0,	0,	'No se encontraron noticias relacionadas.',	1,	0),
(192,	15,	'chrono_desc',	0,	0,	1,	'Ver más',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	1,	0,	1,	7,	0,	0,	0,	'No se encontraron noticias relacionadas.',	1,	0),
(196,	0,	'display_asc',	182,	1,	0,	'',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	'',	0,	0),
(243,	4,	'chrono_desc',	0,	0,	1,	'Ver más',	'',	0,	0,	'',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	0,	0,	0,	7,	0,	1,	0,	'No hay publicaciones',	1,	300),
(244,	4,	'chrono_desc',	0,	0,	1,	'Ver más',	'',	0,	0,	'',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	0,	0,	0,	7,	0,	1,	0,	'No hay publicaciones',	1,	300),
(1379,	8,	'chrono_desc',	0,	0,	1,	'Abrir Álbum',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	1,	0,	0,	8,	0,	0,	0,	'No hay álbum disponible!',	1,	0),
(1395,	3,	'chrono_desc',	0,	0,	1,	'Ir al Álbum',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	0,	0,	0,	0,	0,	8,	0,	0,	0,	'',	1,	0),
(1417,	3,	'chrono_desc',	0,	0,	1,	'Ver más',	'',	0,	0,	'',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	0,	0,	0,	7,	0,	1,	0,	'No hay publicaciones',	1,	300);

DROP TABLE IF EXISTS `btPageTitle`;
CREATE TABLE `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btPageTitle` (`bID`, `useCustomTitle`, `titleText`, `formatting`) VALUES
(20,	0,	'[Título de la Página]',	'h4'),
(25,	0,	'[Título de la Página]',	'h5'),
(550,	0,	'[Título de la Página]',	'h3');

DROP TABLE IF EXISTS `btPublicaciones`;
CREATE TABLE `btPublicaciones` (
  `bID` int(10) unsigned NOT NULL,
  `item_por_pagina` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btPublicacionesEntries`;
CREATE TABLE `btPublicacionesEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `btnTexto` longtext COLLATE utf8_unicode_ci,
  `target` int(10) unsigned DEFAULT '0',
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btRssDisplay`;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSearch`;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btSearch` (`bID`, `title`, `buttonText`, `baseSearchPath`, `postTo_cID`, `resultsURL`) VALUES
(12,	'',	'',	'',	'',	''),
(190,	'',	'Buscar',	'',	'',	''),
(191,	'',	'',	'',	'181',	'');

DROP TABLE IF EXISTS `btShareThisPage`;
CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btShareThisPage` (`btShareThisPageID`, `bID`, `service`, `displayOrder`) VALUES
(1,	120,	'facebook',	0),
(2,	120,	'twitter',	1),
(3,	120,	'linkedin',	2),
(4,	120,	'reddit',	3),
(5,	120,	'pinterest',	4),
(6,	120,	'facebook',	5),
(7,	120,	'google_plus',	6),
(8,	120,	'email',	7);

DROP TABLE IF EXISTS `btSlider`;
CREATE TABLE `btSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  `navegationShow` int(10) unsigned DEFAULT '0',
  `timeSlide` int(10) unsigned DEFAULT '7',
  `autoHeight` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btSlider` (`bID`, `navigationType`, `navegationShow`, `timeSlide`, `autoHeight`) VALUES
(230,	0,	0,	5,	0),
(231,	0,	1,	5,	0);

DROP TABLE IF EXISTS `btSliderEntries`;
CREATE TABLE `btSliderEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btSliderEntries` (`id`, `bID`, `cID`, `fID`, `linkURL`, `title`, `description`, `sortOrder`) VALUES
(1,	230,	0,	8,	'',	'',	'',	0),
(2,	230,	0,	9,	'',	'',	'',	1),
(5,	231,	0,	8,	'',	'',	'',	0),
(6,	231,	0,	9,	'',	'',	'',	1);

DROP TABLE IF EXISTS `btSocialLinks`;
CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSurvey`;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSurveyOptions`;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSurveyResults`;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btSwitchLanguage`;
CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btTags`;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btTags` (`bID`, `title`, `targetCID`, `displayMode`, `cloudCount`) VALUES
(32,	'Etiquetas',	156,	'page',	0),
(38,	'Etiquetas',	156,	'cloud',	11);

DROP TABLE IF EXISTS `btTestimonial`;
CREATE TABLE `btTestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btTestimonial` (`bID`, `fID`, `name`, `position`, `company`, `companyURL`, `paragraph`) VALUES
(216,	0,	'Nombre de la Persona',	'Cargo / Ocupación',	'Nombre de la Institución',	'',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.');

DROP TABLE IF EXISTS `btTopicList`;
CREATE TABLE `btTopicList` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btTopicList` (`bID`, `mode`, `topicAttributeKeyHandle`, `topicTreeID`, `cParentID`, `title`) VALUES
(31,	'P',	'categoria',	3,	156,	'Temas / Categorías '),
(37,	'S',	'categoria',	3,	0,	'');

DROP TABLE IF EXISTS `btTransparenciaActiva`;
CREATE TABLE `btTransparenciaActiva` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `resumen` text COLLATE utf8_unicode_ci,
  `autor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btTransparenciaActivaEntries`;
CREATE TABLE `btTransparenciaActivaEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `texto_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btVideo`;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btVividThumbGallery`;
CREATE TABLE `btVividThumbGallery` (
  `bID` int(10) unsigned NOT NULL,
  `fileset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbWidth` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbHeight` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageWidth` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageHeight` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zoomType` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cols` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `colsMobile` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btVividThumbGallery` (`bID`, `fileset`, `thumbWidth`, `thumbHeight`, `imageWidth`, `imageHeight`, `zoomType`, `cols`, `colsMobile`) VALUES
(1380,	'5',	'300',	'220',	'800',	'600',	'',	'4',	'2'),
(1392,	'5',	'300',	'220',	'800',	'600',	'',	'6',	'2'),
(1393,	'5',	'300',	'220',	'800',	'600',	'innerzoom',	'4',	'2'),
(1394,	'5',	'300',	'220',	'800',	'600',	'lightbox',	'4',	'2'),
(1415,	'4',	'300',	'220',	'1000',	'700',	'',	'4',	'2'),
(1416,	'4',	'300',	'220',	'1000',	'700',	'lightbox',	'4',	'2');

DROP TABLE IF EXISTS `btVividThumbGalleryThumb`;
CREATE TABLE `btVividThumbGalleryThumb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btVividThumbGalleryThumb` (`id`, `bID`, `fID`, `sort`) VALUES
(1,	1380,	29,	0),
(2,	1380,	28,	1),
(3,	1380,	30,	2),
(4,	1380,	31,	3),
(5,	1380,	32,	4),
(6,	1380,	27,	5),
(7,	1380,	26,	6),
(8,	1380,	22,	7),
(9,	1380,	21,	8),
(10,	1380,	23,	9),
(11,	1380,	24,	10),
(12,	1380,	25,	11),
(13,	1380,	20,	12),
(27,	1392,	29,	0),
(28,	1392,	28,	1),
(29,	1392,	30,	2),
(30,	1392,	31,	3),
(31,	1392,	32,	4),
(32,	1392,	27,	5),
(33,	1392,	26,	6),
(34,	1392,	22,	7),
(35,	1392,	21,	8),
(36,	1392,	23,	9),
(37,	1392,	24,	10),
(38,	1392,	25,	11),
(39,	1392,	20,	12),
(53,	1393,	29,	0),
(54,	1393,	28,	1),
(55,	1393,	30,	2),
(56,	1393,	31,	3),
(57,	1393,	32,	4),
(58,	1393,	27,	5),
(59,	1393,	26,	6),
(60,	1393,	22,	7),
(61,	1393,	21,	8),
(62,	1393,	23,	9),
(63,	1393,	24,	10),
(64,	1393,	25,	11),
(65,	1393,	20,	12),
(79,	1394,	29,	0),
(80,	1394,	28,	1),
(81,	1394,	30,	2),
(82,	1394,	31,	3),
(83,	1394,	32,	4),
(84,	1394,	27,	5),
(85,	1394,	26,	6),
(86,	1394,	22,	7),
(87,	1394,	21,	8),
(88,	1394,	23,	9),
(89,	1394,	24,	10),
(90,	1394,	25,	11),
(91,	1394,	20,	12),
(92,	1415,	13,	0),
(93,	1415,	12,	1),
(94,	1415,	11,	2),
(95,	1415,	10,	3),
(100,	1416,	13,	0),
(101,	1416,	12,	1),
(102,	1416,	11,	2),
(103,	1416,	10,	3);

DROP TABLE IF EXISTS `btYouTube`;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controls` int(10) unsigned DEFAULT NULL,
  `iv_load_policy` int(10) unsigned DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT '0',
  `modestbranding` tinyint(1) NOT NULL DEFAULT '0',
  `rel` tinyint(1) NOT NULL DEFAULT '0',
  `showinfo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btYouTube` (`bID`, `title`, `videoURL`, `vHeight`, `vWidth`, `sizing`, `autoplay`, `color`, `controls`, `iv_load_policy`, `loopEnd`, `modestbranding`, `rel`, `showinfo`) VALUES
(1382,	'',	'https://www.youtube.com/watch?v=1ZAyZUZJIdA',	'',	'',	'16:9',	0,	'red',	0,	3,	0,	1,	0,	0),
(1383,	'',	'https://www.youtube.com/watch?v=Tbp-91QBVQY',	'',	'',	'16:9',	0,	'red',	0,	3,	0,	1,	0,	0),
(1388,	'',	'https://www.youtube.com/watch?v=VxG2Z7fHGGU',	'',	'',	'16:9',	0,	'red',	0,	3,	0,	1,	0,	0),
(1389,	'',	'https://www.youtube.com/watch?v=hUqajou1R4M',	'',	'',	'16:9',	0,	'red',	0,	3,	0,	1,	0,	0),
(1390,	'',	'https://www.youtube.com/watch?v=Pd90SwzHCxY',	'',	'',	'16:9',	0,	'red',	0,	3,	0,	1,	0,	0),
(1391,	'',	'https://www.youtube.com/watch?v=seL1plQsxeI',	'',	'',	'16:9',	0,	'red',	0,	3,	0,	1,	0,	0);

DROP TABLE IF EXISTS `CollectionAttributeValues`;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionAttributeValues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(2,	1,	4,	1),
(3,	1,	3,	2),
(4,	1,	3,	3),
(5,	1,	3,	4),
(6,	1,	3,	5),
(8,	1,	3,	6),
(9,	1,	3,	7),
(10,	1,	3,	8),
(11,	1,	5,	9),
(11,	1,	3,	10),
(12,	1,	3,	11),
(13,	1,	3,	12),
(14,	1,	3,	13),
(15,	1,	3,	14),
(16,	1,	3,	15),
(16,	1,	5,	16),
(17,	1,	3,	17),
(17,	1,	5,	18),
(19,	1,	3,	19),
(20,	1,	3,	20),
(22,	1,	3,	21),
(23,	1,	3,	22),
(24,	1,	3,	23),
(25,	1,	3,	24),
(26,	1,	3,	25),
(28,	1,	3,	26),
(29,	1,	3,	27),
(29,	1,	5,	28),
(31,	1,	5,	29),
(32,	1,	5,	30),
(33,	1,	5,	31),
(34,	1,	5,	32),
(35,	1,	5,	33),
(36,	1,	5,	34),
(38,	1,	5,	35),
(39,	1,	3,	36),
(40,	1,	3,	37),
(41,	1,	3,	38),
(43,	1,	4,	39),
(44,	1,	3,	40),
(48,	1,	3,	41),
(50,	1,	5,	42),
(50,	1,	10,	43),
(50,	1,	3,	44),
(51,	1,	3,	45),
(52,	1,	3,	46),
(53,	1,	5,	47),
(54,	1,	3,	48),
(55,	1,	3,	49),
(56,	1,	3,	50),
(56,	1,	5,	51),
(57,	1,	3,	52),
(58,	1,	3,	53),
(59,	1,	3,	54),
(61,	1,	3,	55),
(62,	1,	3,	56),
(63,	1,	3,	57),
(64,	1,	3,	58),
(65,	1,	3,	59),
(66,	1,	3,	60),
(67,	1,	3,	61),
(68,	1,	3,	62),
(74,	1,	3,	63),
(75,	1,	3,	64),
(76,	1,	3,	65),
(77,	1,	3,	66),
(78,	1,	3,	67),
(80,	1,	3,	68),
(81,	1,	3,	69),
(82,	1,	3,	70),
(83,	1,	3,	71),
(84,	1,	3,	72),
(86,	1,	3,	73),
(87,	1,	3,	74),
(88,	1,	3,	75),
(89,	1,	3,	76),
(91,	1,	3,	77),
(92,	1,	3,	78),
(95,	1,	3,	79),
(96,	1,	3,	80),
(97,	1,	3,	81),
(98,	1,	3,	82),
(100,	1,	3,	83),
(101,	1,	3,	84),
(102,	1,	3,	85),
(103,	1,	3,	86),
(104,	1,	3,	87),
(105,	1,	3,	88),
(106,	1,	3,	89),
(107,	1,	3,	90),
(108,	1,	3,	91),
(109,	1,	3,	92),
(110,	1,	3,	93),
(111,	1,	3,	94),
(113,	1,	3,	95),
(114,	1,	3,	96),
(115,	1,	3,	97),
(116,	1,	3,	98),
(118,	1,	10,	99),
(119,	1,	3,	100),
(120,	1,	3,	101),
(121,	1,	3,	102),
(122,	1,	3,	103),
(123,	1,	3,	104),
(124,	1,	3,	105),
(126,	1,	3,	106),
(127,	1,	5,	107),
(128,	1,	5,	108),
(128,	1,	10,	109),
(129,	1,	4,	110),
(130,	1,	4,	111),
(131,	1,	4,	112),
(134,	1,	4,	113),
(1,	4,	1,	124),
(1,	5,	1,	124),
(1,	6,	1,	124),
(1,	7,	1,	124),
(1,	8,	1,	124),
(1,	9,	1,	124),
(1,	10,	1,	124),
(1,	11,	1,	124),
(1,	12,	1,	124),
(1,	13,	1,	124),
(1,	14,	1,	124),
(1,	15,	1,	124),
(1,	16,	1,	124),
(1,	17,	1,	124),
(1,	18,	1,	124),
(1,	19,	1,	124),
(1,	20,	1,	124),
(1,	21,	1,	124),
(1,	22,	1,	124),
(1,	23,	1,	124),
(1,	24,	1,	124),
(1,	25,	1,	124),
(1,	26,	1,	124),
(1,	27,	1,	124),
(1,	28,	1,	124),
(1,	29,	1,	124),
(1,	30,	1,	124),
(1,	31,	1,	124),
(1,	32,	1,	124),
(1,	33,	1,	124),
(1,	34,	1,	124),
(1,	35,	1,	124),
(1,	36,	1,	124),
(1,	37,	1,	124),
(1,	38,	1,	124),
(1,	39,	1,	124),
(1,	4,	2,	125),
(1,	5,	2,	125),
(1,	6,	2,	125),
(1,	7,	2,	125),
(1,	8,	2,	125),
(1,	9,	2,	125),
(1,	10,	2,	125),
(1,	11,	2,	125),
(1,	12,	2,	125),
(1,	13,	2,	125),
(1,	14,	2,	125),
(1,	15,	2,	125),
(1,	16,	2,	125),
(1,	17,	2,	125),
(1,	18,	2,	125),
(1,	19,	2,	125),
(1,	20,	2,	125),
(1,	21,	2,	125),
(1,	22,	2,	125),
(1,	23,	2,	125),
(1,	24,	2,	125),
(1,	25,	2,	125),
(1,	26,	2,	125),
(1,	27,	2,	125),
(1,	28,	2,	125),
(1,	29,	2,	125),
(1,	30,	2,	125),
(1,	31,	2,	125),
(1,	32,	2,	125),
(1,	33,	2,	125),
(1,	34,	2,	125),
(1,	35,	2,	125),
(1,	36,	2,	125),
(1,	37,	2,	125),
(1,	38,	2,	125),
(1,	39,	2,	125),
(1,	4,	7,	126),
(1,	5,	7,	126),
(1,	6,	7,	126),
(1,	7,	7,	126),
(1,	8,	7,	126),
(1,	9,	7,	126),
(1,	10,	7,	126),
(1,	11,	7,	126),
(1,	12,	7,	126),
(1,	13,	7,	126),
(1,	14,	7,	126),
(1,	15,	7,	126),
(1,	16,	7,	126),
(1,	17,	7,	126),
(1,	18,	7,	126),
(1,	19,	7,	126),
(1,	20,	7,	126),
(1,	21,	7,	126),
(1,	22,	7,	126),
(1,	23,	7,	126),
(1,	24,	7,	126),
(1,	25,	7,	126),
(1,	26,	7,	126),
(1,	27,	7,	126),
(1,	28,	7,	126),
(1,	29,	7,	126),
(1,	30,	7,	126),
(1,	31,	7,	126),
(1,	32,	7,	126),
(1,	33,	7,	126),
(1,	34,	7,	126),
(1,	35,	7,	126),
(1,	36,	7,	126),
(1,	37,	7,	126),
(1,	38,	7,	126),
(1,	39,	7,	126),
(1,	4,	11,	127),
(1,	5,	11,	127),
(1,	6,	11,	127),
(1,	7,	11,	127),
(1,	8,	11,	127),
(1,	9,	11,	127),
(1,	10,	11,	127),
(1,	11,	11,	127),
(1,	12,	11,	127),
(1,	13,	11,	127),
(1,	14,	11,	127),
(1,	15,	11,	127),
(1,	16,	11,	127),
(1,	17,	11,	127),
(1,	18,	11,	127),
(1,	19,	11,	127),
(1,	20,	11,	127),
(1,	21,	11,	127),
(1,	22,	11,	127),
(1,	23,	11,	127),
(1,	24,	11,	127),
(1,	25,	11,	127),
(1,	26,	11,	127),
(1,	27,	11,	127),
(1,	28,	11,	127),
(1,	29,	11,	127),
(1,	30,	11,	127),
(1,	31,	11,	127),
(1,	32,	11,	127),
(1,	33,	11,	127),
(1,	34,	11,	127),
(1,	35,	11,	127),
(1,	36,	11,	127),
(1,	37,	11,	127),
(1,	38,	11,	127),
(1,	39,	11,	127),
(156,	1,	11,	136),
(156,	2,	11,	136),
(156,	3,	11,	136),
(156,	4,	11,	136),
(157,	1,	8,	137),
(156,	2,	8,	138),
(156,	3,	8,	138),
(156,	4,	8,	138),
(157,	1,	5,	149),
(160,	1,	5,	149),
(160,	2,	5,	149),
(160,	3,	5,	149),
(160,	4,	5,	149),
(160,	5,	5,	149),
(161,	1,	5,	149),
(161,	2,	5,	149),
(161,	3,	5,	149),
(161,	4,	5,	149),
(162,	1,	5,	149),
(162,	2,	5,	149),
(162,	3,	5,	149),
(196,	1,	5,	149),
(201,	1,	5,	149),
(160,	1,	18,	158),
(160,	2,	18,	158),
(160,	1,	19,	159),
(160,	2,	19,	159),
(160,	1,	8,	160),
(160,	2,	8,	160),
(161,	1,	18,	161),
(161,	1,	19,	162),
(161,	1,	8,	163),
(162,	1,	18,	164),
(162,	1,	19,	165),
(162,	1,	8,	166),
(173,	1,	5,	167),
(176,	1,	5,	168),
(177,	1,	5,	169),
(178,	1,	5,	170),
(179,	1,	5,	171),
(180,	1,	5,	172),
(181,	1,	11,	173),
(181,	2,	11,	174),
(181,	3,	11,	175),
(181,	4,	11,	176),
(181,	5,	11,	176),
(181,	6,	11,	176),
(181,	4,	5,	177),
(181,	5,	5,	177),
(181,	6,	5,	177),
(182,	1,	5,	178),
(182,	2,	5,	178),
(182,	3,	5,	178),
(182,	4,	5,	178),
(182,	5,	5,	178),
(183,	1,	5,	179),
(183,	2,	5,	179),
(183,	3,	5,	179),
(183,	4,	5,	179),
(184,	1,	5,	180),
(184,	2,	5,	180),
(184,	3,	5,	180),
(185,	1,	5,	183),
(185,	2,	5,	184),
(185,	3,	5,	184),
(186,	1,	5,	185),
(186,	2,	5,	185),
(187,	1,	5,	186),
(187,	2,	5,	186),
(188,	1,	5,	187),
(188,	2,	5,	187),
(189,	1,	5,	188),
(189,	2,	5,	188),
(190,	1,	5,	189),
(190,	2,	5,	189),
(190,	3,	5,	189),
(190,	4,	5,	189),
(190,	5,	5,	189),
(190,	6,	5,	189),
(190,	7,	5,	189),
(190,	8,	5,	189),
(190,	9,	5,	189),
(190,	10,	5,	189),
(190,	11,	5,	189),
(190,	12,	5,	189),
(191,	1,	5,	196),
(192,	1,	5,	197),
(193,	1,	5,	198),
(194,	1,	5,	207),
(194,	2,	5,	207),
(162,	2,	18,	208),
(162,	2,	19,	209),
(162,	2,	8,	210),
(161,	2,	19,	212),
(161,	2,	8,	213),
(160,	3,	18,	214),
(160,	4,	18,	214),
(160,	3,	19,	215),
(160,	4,	19,	215),
(160,	3,	8,	216),
(160,	4,	8,	216),
(161,	3,	18,	217),
(161,	3,	19,	218),
(161,	3,	8,	219),
(160,	5,	18,	220),
(160,	5,	19,	221),
(160,	5,	8,	222),
(161,	4,	18,	223),
(161,	4,	19,	224),
(161,	4,	8,	225),
(162,	3,	18,	226),
(162,	3,	19,	227),
(162,	3,	8,	228),
(196,	1,	18,	293),
(196,	1,	19,	294),
(196,	1,	8,	295),
(197,	1,	18,	296),
(197,	2,	18,	296),
(195,	1,	5,	299),
(198,	1,	5,	299),
(198,	2,	5,	299),
(199,	1,	5,	299),
(199,	2,	5,	299),
(197,	3,	18,	300),
(197,	4,	18,	300),
(197,	5,	18,	300),
(197,	6,	18,	300),
(197,	7,	18,	300),
(197,	8,	18,	300),
(197,	3,	5,	301),
(197,	4,	5,	301),
(197,	5,	5,	301),
(197,	6,	5,	301),
(197,	7,	5,	301),
(197,	8,	5,	301),
(198,	1,	18,	302),
(198,	2,	18,	302),
(199,	1,	18,	305),
(199,	2,	18,	305),
(200,	1,	5,	310),
(201,	1,	18,	325),
(201,	1,	19,	326),
(201,	1,	8,	327);

DROP TABLE IF EXISTS `Collections`;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1,	'2016-05-19 10:26:57',	'2016-06-08 10:40:27',	'home'),
(2,	'2016-05-19 10:27:33',	'2016-05-19 10:27:33',	'dashboard'),
(3,	'2016-05-19 10:27:33',	'2016-05-19 10:27:33',	'sitemap'),
(4,	'2016-05-19 10:27:34',	'2016-05-19 10:27:34',	'full'),
(5,	'2016-05-19 10:27:34',	'2016-05-19 10:27:34',	'explore'),
(6,	'2016-05-19 10:27:34',	'2016-05-19 10:27:35',	'search'),
(7,	'2016-05-19 10:27:35',	'2016-05-19 10:27:35',	'files'),
(8,	'2016-05-19 10:27:35',	'2016-05-19 10:27:35',	'search'),
(9,	'2016-05-19 10:27:36',	'2016-05-19 10:27:36',	'attributes'),
(10,	'2016-05-19 10:27:36',	'2016-05-19 10:27:36',	'sets'),
(11,	'2016-05-19 10:27:36',	'2016-05-19 10:27:37',	'add_set'),
(12,	'2016-05-19 10:27:37',	'2016-05-19 10:27:37',	'users'),
(13,	'2016-05-19 10:27:37',	'2016-05-19 10:27:37',	'search'),
(14,	'2016-05-19 10:27:37',	'2016-05-19 10:27:38',	'groups'),
(15,	'2016-05-19 10:27:38',	'2016-05-19 10:27:38',	'attributes'),
(16,	'2016-05-19 10:27:38',	'2016-05-19 10:27:39',	'add'),
(17,	'2016-05-19 10:27:39',	'2016-05-19 10:27:39',	'add_group'),
(18,	'2016-05-19 10:27:39',	'2016-05-19 10:27:39',	'bulkupdate'),
(19,	'2016-05-19 10:27:40',	'2016-05-19 10:27:40',	'group_sets'),
(20,	'2016-05-19 10:27:40',	'2016-05-19 10:27:41',	'points'),
(21,	'2016-05-19 10:27:41',	'2016-05-19 10:27:41',	'assign'),
(22,	'2016-05-19 10:27:41',	'2016-05-19 10:27:41',	'actions'),
(23,	'2016-05-19 10:27:41',	'2016-05-19 10:27:42',	'reports'),
(24,	'2016-05-19 10:27:42',	'2016-05-19 10:27:42',	'forms'),
(25,	'2016-05-19 10:27:42',	'2016-05-19 10:27:42',	'surveys'),
(26,	'2016-05-19 10:27:42',	'2016-05-19 10:27:43',	'logs'),
(27,	'2016-05-19 10:27:43',	'2016-05-19 10:27:43',	'pages'),
(28,	'2016-05-19 10:27:43',	'2016-05-19 10:27:43',	'themes'),
(29,	'2016-05-19 10:27:43',	'2016-05-19 10:27:44',	'inspect'),
(30,	'2016-05-19 10:27:44',	'2016-05-19 10:27:45',	'types'),
(31,	'2016-05-19 10:27:45',	'2016-05-19 10:27:45',	'organize'),
(32,	'2016-05-19 10:27:45',	'2016-05-19 10:27:45',	'add'),
(33,	'2016-05-19 10:27:45',	'2016-05-19 10:27:46',	'form'),
(34,	'2016-05-19 10:27:46',	'2016-05-19 10:27:46',	'output'),
(35,	'2016-05-19 10:27:46',	'2016-05-19 10:27:47',	'attributes'),
(36,	'2016-05-19 10:27:47',	'2016-05-19 10:27:47',	'permissions'),
(37,	'2016-05-19 10:27:47',	'2016-05-19 10:27:48',	'templates'),
(38,	'2016-05-19 10:27:48',	'2016-05-19 10:27:48',	'add'),
(39,	'2016-05-19 10:27:48',	'2016-05-19 10:27:48',	'attributes'),
(40,	'2016-05-19 10:27:48',	'2016-05-19 10:27:49',	'single'),
(41,	'2016-05-19 10:27:49',	'2016-05-19 10:27:49',	'feeds'),
(42,	'2016-05-19 10:27:49',	'2016-05-19 10:27:50',	'conversations'),
(43,	'2016-05-19 10:27:50',	'2016-05-19 10:27:50',	'messages'),
(44,	'2016-05-19 10:27:50',	'2016-05-19 10:27:51',	'workflow'),
(45,	'2016-05-19 10:27:51',	'2016-05-19 10:27:51',	'me'),
(46,	'2016-05-19 10:27:51',	'2016-05-19 10:27:51',	'workflows'),
(47,	'2016-05-19 10:27:51',	'2016-05-19 10:27:52',	'blocks'),
(48,	'2016-05-19 10:27:52',	'2016-05-19 10:27:52',	'stacks'),
(49,	'2016-05-19 10:27:52',	'2016-05-19 10:27:52',	'permissions'),
(50,	'2016-05-19 10:27:52',	'2016-05-19 10:27:53',	'list'),
(51,	'2016-05-19 10:27:53',	'2016-05-19 10:27:53',	'types'),
(52,	'2016-05-19 10:27:54',	'2016-05-19 10:27:54',	'extend'),
(53,	'2016-05-19 10:27:54',	'2016-05-19 10:27:55',	'news'),
(54,	'2016-05-19 10:27:55',	'2016-05-19 10:27:55',	'install'),
(55,	'2016-05-19 10:27:55',	'2016-05-19 10:27:55',	'update'),
(56,	'2016-05-19 10:27:55',	'2016-05-19 10:27:56',	'connect'),
(57,	'2016-05-19 10:27:56',	'2016-05-19 10:27:56',	'themes'),
(58,	'2016-05-19 10:27:56',	'2016-05-19 10:27:57',	'addons'),
(59,	'2016-05-19 10:27:57',	'2016-05-19 10:27:57',	'system'),
(60,	'2016-05-19 10:27:57',	'2016-05-19 10:27:58',	'basics'),
(61,	'2016-05-19 10:27:58',	'2016-05-19 10:27:58',	'name'),
(62,	'2016-05-19 10:27:58',	'2016-05-19 10:27:58',	'accessibility'),
(63,	'2016-05-19 10:27:58',	'2016-05-19 10:27:59',	'social'),
(64,	'2016-05-19 10:27:59',	'2016-05-19 10:27:59',	'icons'),
(65,	'2016-05-19 10:27:59',	'2016-05-19 10:28:00',	'editor'),
(66,	'2016-05-19 10:28:00',	'2016-05-19 10:28:00',	'multilingual'),
(67,	'2016-05-19 10:28:00',	'2016-05-19 10:28:01',	'timezone'),
(68,	'2016-05-19 10:28:01',	'2016-05-19 10:28:01',	'multilingual'),
(69,	'2016-05-19 10:28:01',	'2016-05-19 10:28:01',	'setup'),
(70,	'2016-05-19 10:28:02',	'2016-05-19 10:28:02',	'copy'),
(71,	'2016-05-19 10:28:02',	'2016-05-19 10:28:02',	'page_report'),
(72,	'2016-05-19 10:28:02',	'2016-05-19 10:28:03',	'translate_interface'),
(73,	'2016-05-19 10:28:03',	'2016-05-19 10:28:03',	'seo'),
(74,	'2016-05-19 10:28:03',	'2016-05-19 10:28:03',	'urls'),
(75,	'2016-05-19 10:28:04',	'2016-05-19 10:28:04',	'bulk'),
(76,	'2016-05-19 10:28:04',	'2016-05-19 10:28:04',	'codes'),
(77,	'2016-05-19 10:28:04',	'2016-05-19 10:28:05',	'excluded'),
(78,	'2016-05-19 10:28:05',	'2016-05-19 10:28:05',	'searchindex'),
(79,	'2016-05-19 10:28:05',	'2016-05-19 10:28:06',	'files'),
(80,	'2016-05-19 10:28:06',	'2016-05-19 10:28:06',	'permissions'),
(81,	'2016-05-19 10:28:06',	'2016-05-19 10:28:06',	'filetypes'),
(82,	'2016-05-19 10:28:06',	'2016-05-19 10:28:07',	'thumbnails'),
(83,	'2016-05-19 10:28:07',	'2016-05-19 10:28:07',	'image_uploading'),
(84,	'2016-05-19 10:28:07',	'2016-05-19 10:28:07',	'storage'),
(85,	'2016-05-19 10:28:07',	'2016-05-19 10:28:08',	'optimization'),
(86,	'2016-05-19 10:28:08',	'2016-05-19 10:28:08',	'cache'),
(87,	'2016-05-19 10:28:08',	'2016-05-19 10:28:08',	'clearcache'),
(88,	'2016-05-19 10:28:09',	'2016-05-19 10:28:09',	'jobs'),
(89,	'2016-05-19 10:28:09',	'2016-05-19 10:28:09',	'query_log'),
(90,	'2016-05-19 10:28:09',	'2016-05-19 10:28:10',	'permissions'),
(91,	'2016-05-19 10:28:10',	'2016-05-19 10:28:11',	'site'),
(92,	'2016-05-19 10:28:11',	'2016-05-19 10:28:11',	'tasks'),
(93,	'2016-05-19 10:28:11',	'2016-05-19 10:28:11',	'users'),
(94,	'2016-05-19 10:28:11',	'2016-05-19 10:28:12',	'advanced'),
(95,	'2016-05-19 10:28:12',	'2016-05-19 10:28:12',	'blacklist'),
(96,	'2016-05-19 10:28:12',	'2016-05-19 10:28:12',	'captcha'),
(97,	'2016-05-19 10:28:13',	'2016-05-19 10:28:13',	'antispam'),
(98,	'2016-05-19 10:28:13',	'2016-05-19 10:28:13',	'maintenance'),
(99,	'2016-05-19 10:28:13',	'2016-05-19 10:28:14',	'registration'),
(100,	'2016-05-19 10:28:14',	'2016-05-19 10:28:14',	'postlogin'),
(101,	'2016-05-19 10:28:15',	'2016-05-19 10:28:15',	'profiles'),
(102,	'2016-05-19 10:28:15',	'2016-05-19 10:28:15',	'open'),
(103,	'2016-05-19 10:28:15',	'2016-05-19 10:28:16',	'authentication'),
(104,	'2016-05-19 10:28:16',	'2016-05-19 10:28:16',	'mail'),
(105,	'2016-05-19 10:28:16',	'2016-05-19 10:28:17',	'method'),
(106,	'2016-05-19 10:28:17',	'2016-05-19 10:28:17',	'test'),
(107,	'2016-05-19 10:28:17',	'2016-05-19 10:28:17',	'importers'),
(108,	'2016-05-19 10:28:17',	'2016-05-19 10:28:18',	'conversations'),
(109,	'2016-05-19 10:28:18',	'2016-05-19 10:28:18',	'settings'),
(110,	'2016-05-19 10:28:18',	'2016-05-19 10:28:19',	'points'),
(111,	'2016-05-19 10:28:19',	'2016-05-19 10:28:19',	'bannedwords'),
(112,	'2016-05-19 10:28:19',	'2016-05-19 10:28:19',	'permissions'),
(113,	'2016-05-19 10:28:19',	'2016-05-19 10:28:20',	'attributes'),
(114,	'2016-05-19 10:28:20',	'2016-05-19 10:28:20',	'sets'),
(115,	'2016-05-19 10:28:20',	'2016-05-19 10:28:21',	'types'),
(116,	'2016-05-19 10:28:21',	'2016-05-19 10:28:21',	'topics'),
(117,	'2016-05-19 10:28:21',	'2016-05-19 10:28:21',	'add'),
(118,	'2016-05-19 10:28:21',	'2016-05-19 10:28:22',	'environment'),
(119,	'2016-05-19 10:28:22',	'2016-05-19 10:28:22',	'info'),
(120,	'2016-05-19 10:28:22',	'2016-05-19 10:28:23',	'debug'),
(121,	'2016-05-19 10:28:23',	'2016-05-19 10:28:23',	'logging'),
(122,	'2016-05-19 10:28:23',	'2016-05-19 10:28:23',	'proxy'),
(123,	'2016-05-19 10:28:23',	'2016-05-19 10:28:24',	'entities'),
(124,	'2016-05-19 10:28:24',	'2016-05-19 10:28:24',	'backup'),
(125,	'2016-05-19 10:28:24',	'2016-05-19 10:28:25',	'backup'),
(126,	'2016-05-19 10:28:25',	'2016-05-19 10:28:25',	'update'),
(127,	'2016-05-19 10:28:28',	'2016-05-19 10:28:28',	'welcome'),
(128,	'2016-05-19 10:28:28',	'2016-05-19 10:28:28',	'home'),
(129,	'2016-05-19 10:28:46',	'2016-05-19 10:28:46',	'!drafts'),
(130,	'2016-05-19 10:28:46',	'2016-05-19 10:28:47',	'!trash'),
(131,	'2016-05-19 10:28:47',	'2016-05-19 10:28:47',	'!stacks'),
(132,	'2016-05-19 10:28:47',	'2016-05-19 10:28:47',	'login'),
(133,	'2016-05-19 10:28:47',	'2016-05-19 10:28:48',	'register'),
(134,	'2016-05-19 10:28:48',	'2016-05-19 10:28:48',	'account'),
(135,	'2016-05-19 10:28:48',	'2016-05-19 10:28:48',	'edit_profile'),
(136,	'2016-05-19 10:28:48',	'2016-05-19 10:28:49',	'avatar'),
(137,	'2016-05-19 10:28:49',	'2016-05-19 10:28:49',	'messages'),
(138,	'2016-05-19 10:28:49',	'2016-05-19 10:28:49',	'inbox'),
(139,	'2016-05-19 10:28:50',	'2016-05-19 10:28:50',	'members'),
(140,	'2016-05-19 10:28:50',	'2016-05-19 10:28:50',	'profile'),
(141,	'2016-05-19 10:28:50',	'2016-05-19 10:28:51',	'directory'),
(142,	'2016-05-19 10:28:51',	'2016-05-19 10:28:51',	'page_not_found'),
(143,	'2016-05-19 10:28:51',	'2016-05-19 10:28:52',	'page_forbidden'),
(144,	'2016-05-19 10:28:52',	'2016-05-19 10:28:52',	'download_file'),
(145,	'2016-05-19 10:28:55',	'2016-05-19 10:28:55',	NULL),
(146,	'2016-05-19 10:30:20',	'2016-05-26 10:55:36',	'header-site-title'),
(147,	'2016-05-19 10:30:20',	'2016-05-20 07:23:23',	'header-navigation'),
(148,	'2016-05-19 10:30:21',	'2016-06-02 13:25:45',	'footer-legal'),
(149,	'2016-05-19 10:30:21',	'2016-06-08 10:40:27',	'footer-navigation'),
(150,	'2016-05-19 10:30:21',	'2016-05-26 10:55:37',	'footer-contact'),
(151,	'2016-05-20 07:20:31',	'2016-05-26 10:55:37',	'search'),
(152,	'2016-05-23 14:12:33',	'2016-06-02 14:12:41',	''),
(153,	'2016-05-23 14:14:01',	'2016-06-02 14:12:45',	''),
(154,	'2016-05-23 14:20:21',	'2016-05-23 14:20:21',	NULL),
(156,	'2016-05-23 14:52:46',	'2016-05-24 09:01:30',	''),
(157,	'2016-05-23 15:09:38',	'2016-05-23 15:09:38',	NULL),
(160,	'2016-05-24 08:23:50',	'2016-06-02 10:51:23',	''),
(161,	'2016-05-24 08:28:28',	'2016-06-02 10:51:47',	''),
(162,	'2016-05-24 08:43:18',	'2016-06-02 10:52:12',	''),
(163,	'2016-05-24 08:53:55',	'2016-05-24 08:53:55',	'event_calendar'),
(164,	'2016-05-24 08:53:56',	'2016-05-24 08:53:56',	'list_calendar'),
(165,	'2016-05-24 08:53:56',	'2016-05-24 08:53:56',	'list_event'),
(166,	'2016-05-24 08:53:56',	'2016-05-24 08:53:56',	'calendar'),
(167,	'2016-05-24 08:53:57',	'2016-05-24 08:53:57',	'event'),
(168,	'2016-05-24 08:53:57',	'2016-05-24 08:53:57',	'types'),
(169,	'2016-05-24 08:53:57',	'2016-05-24 08:53:58',	'settings'),
(170,	'2016-05-24 08:54:04',	'2016-05-24 08:54:04',	'open_data'),
(171,	'2016-05-24 08:54:04',	'2016-05-24 08:54:05',	'list_catalog'),
(172,	'2016-05-24 08:54:05',	'2016-05-24 08:54:05',	'catalog'),
(173,	'2016-05-24 08:54:05',	'2016-05-24 08:54:05',	'list_datasets'),
(174,	'2016-05-24 08:54:06',	'2016-05-24 08:54:06',	'datasets'),
(175,	'2016-05-24 08:54:06',	'2016-05-24 08:54:06',	'types'),
(176,	'2016-05-24 08:54:06',	'2016-05-24 08:54:07',	'resource'),
(177,	'2016-05-24 08:54:08',	'2016-05-24 08:54:08',	'files'),
(178,	'2016-05-24 08:54:08',	'2016-05-24 08:54:09',	'list_resource'),
(179,	'2016-05-24 08:54:09',	'2016-05-24 08:54:09',	'dictionary'),
(180,	'2016-05-24 08:54:10',	'2016-05-24 08:54:10',	'list_dictionary'),
(181,	'2016-05-24 08:55:39',	'2016-05-24 09:00:22',	''),
(182,	'2016-05-24 09:16:47',	'2016-06-02 14:09:17',	''),
(183,	'2016-05-24 09:19:57',	'2016-05-24 09:29:38',	''),
(184,	'2016-05-24 09:30:13',	'2016-06-02 14:11:16',	''),
(185,	'2016-05-24 09:33:23',	'2016-05-24 10:05:05',	''),
(186,	'2016-05-24 10:05:14',	'2016-05-24 10:12:03',	''),
(187,	'2016-05-24 10:41:39',	'2016-05-24 11:01:14',	''),
(188,	'2016-05-24 11:01:32',	'2016-06-02 10:56:07',	''),
(189,	'2016-05-24 11:12:08',	'2016-06-02 09:56:14',	''),
(190,	'2016-05-24 11:12:24',	'2016-06-02 14:08:28',	''),
(191,	'2016-06-02 09:24:53',	'2016-06-02 09:25:08',	''),
(192,	'2016-06-02 09:27:57',	'2016-06-02 09:28:09',	''),
(193,	'2016-06-02 09:28:31',	'2016-06-02 09:28:44',	''),
(194,	'2016-06-02 09:49:10',	'2016-06-02 09:52:41',	''),
(195,	'2016-06-02 10:28:41',	'2016-06-02 10:28:41',	NULL),
(196,	'2016-06-02 10:52:18',	'2016-06-02 10:53:28',	''),
(197,	'2016-06-02 10:56:14',	'2016-06-02 13:29:03',	''),
(198,	'2016-06-02 11:05:43',	'2016-06-02 11:09:49',	''),
(199,	'2016-06-02 11:26:57',	'2016-06-02 11:29:58',	''),
(200,	'2016-06-02 11:52:30',	'2016-06-02 11:52:57',	''),
(201,	'2016-06-02 14:16:14',	'2016-06-02 14:17:53',	'');

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` longtext COLLATE utf8_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8_unicode_ci,
  `ak_icon_dashboard` longtext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_thumbnail` int(11) DEFAULT '0',
  `ak_categoria` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_thumbnail`, `ak_categoria`) VALUES
(1,	'',	'',	NULL,	NULL,	0,	0,	'',	NULL,	0,	0,	0,	0,	NULL),
(2,	NULL,	NULL,	NULL,	'fa fa-th-large',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(3,	NULL,	NULL,	'pages, add page, delete page, copy, move, alias',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(4,	NULL,	NULL,	'pages, add page, delete page, copy, move, alias',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(5,	NULL,	NULL,	'pages, add page, delete page, copy, move, alias, bulk',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(6,	NULL,	NULL,	'find page, search page, search, find, pages, sitemap',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(8,	NULL,	NULL,	'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(9,	NULL,	NULL,	'file, file attributes, title, attribute, description, rename',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(10,	NULL,	NULL,	'files, category, categories',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(11,	NULL,	NULL,	'new file set',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(12,	NULL,	NULL,	'users, groups, people, find, delete user, remove user, change password, password',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(13,	NULL,	NULL,	'find, search, people, delete user, remove user, change password, password',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(14,	NULL,	NULL,	'user, group, people, permissions, expire, badges',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(15,	NULL,	NULL,	'user attributes, user data, gather data, registration data',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(16,	NULL,	NULL,	'new user, create',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(17,	NULL,	NULL,	'new user group, new group, group, create',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(19,	NULL,	NULL,	'group set',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(20,	NULL,	NULL,	'community, points, karma',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(22,	NULL,	NULL,	'action, community actions',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(23,	NULL,	NULL,	'forms, log, error, email, mysql, exception, survey',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(24,	NULL,	NULL,	'forms, questions, response, data',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(25,	NULL,	NULL,	'questions, quiz, response',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(26,	NULL,	NULL,	'forms, log, error, email, mysql, exception, survey, history',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(28,	NULL,	NULL,	'new theme, theme, active theme, change theme, template, css',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(29,	NULL,	NULL,	'page types',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(31,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(32,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(33,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(34,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(35,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(36,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(38,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(39,	NULL,	NULL,	'page attributes, custom',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(40,	NULL,	NULL,	'single, page, custom, application',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(41,	NULL,	NULL,	'atom, rss, feed, syndication',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(43,	NULL,	NULL,	NULL,	'icon-bullhorn',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(44,	NULL,	NULL,	'add workflow, remove workflow',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(48,	NULL,	NULL,	'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(50,	NULL,	NULL,	'edit stacks, view stacks, all stacks',	NULL,	1,	0,	NULL,	NULL,	0,	1,	0,	0,	NULL),
(51,	NULL,	NULL,	'block, refresh, custom',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(52,	NULL,	NULL,	'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(53,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(54,	NULL,	NULL,	'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(55,	NULL,	NULL,	'update, upgrade',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(56,	NULL,	NULL,	'concrete5.org, my account, marketplace',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(57,	NULL,	NULL,	'buy theme, new theme, marketplace, template',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(58,	NULL,	NULL,	'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(59,	NULL,	NULL,	'dashboard, configuration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(61,	NULL,	NULL,	'website name, title',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(62,	NULL,	NULL,	'accessibility, easy mode',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(63,	NULL,	NULL,	'sharing, facebook, twitter',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(64,	NULL,	NULL,	'logo, favicon, iphone, icon, bookmark',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(65,	NULL,	NULL,	'tinymce, content block, fonts, editor, content, overlay',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(66,	NULL,	NULL,	'translate, translation, internationalization, multilingual',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(67,	NULL,	NULL,	'timezone, profile, locale',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(68,	NULL,	NULL,	'multilingual, localization, internationalization, i18n',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(74,	NULL,	NULL,	'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(75,	NULL,	NULL,	'bulk, seo, change keywords, engine, optimization, search',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(76,	NULL,	NULL,	'traffic, statistics, google analytics, quant, pageviews, hits',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(77,	NULL,	NULL,	'pretty, slug',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(78,	NULL,	NULL,	'configure search, site search, search option',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(80,	NULL,	NULL,	'file options, file manager, upload, modify',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(81,	NULL,	NULL,	'security, files, media, extension, manager, upload',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(82,	NULL,	NULL,	'images, picture, responsive, retina',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(83,	NULL,	NULL,	'uploading, upload, images, image, resizing, manager',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(84,	NULL,	NULL,	'security, alternate storage, hide files',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(86,	NULL,	NULL,	'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(87,	NULL,	NULL,	'cache option, turn off cache, no cache, page cache, caching',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(88,	NULL,	NULL,	'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(89,	NULL,	NULL,	'queries, database, mysql',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(91,	NULL,	NULL,	'editors, hide site, offline, private, public, access',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(92,	NULL,	NULL,	'security, actions, administrator, admin, package, marketplace, search',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(95,	NULL,	NULL,	'security, lock ip, lock out, block ip, address, restrict, access',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(96,	NULL,	NULL,	'security, registration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(97,	NULL,	NULL,	'antispam, block spam, security',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(98,	NULL,	NULL,	'lock site, under construction, hide, hidden',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(100,	NULL,	NULL,	'profile, login, redirect, specific, dashboard, administrators',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(101,	NULL,	NULL,	'member profile, member page, community, forums, social, avatar',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(102,	NULL,	NULL,	'signup, new user, community, public registration, public, registration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(103,	NULL,	NULL,	'auth, authentication, types, oauth, facebook, login, registration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(104,	NULL,	NULL,	'smtp, mail settings',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(105,	NULL,	NULL,	'email server, mail settings, mail configuration, external, internal',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(106,	NULL,	NULL,	'test smtp, test mail',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(107,	NULL,	NULL,	'email server, mail settings, mail configuration, private message, message system, import, email, message',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(108,	NULL,	NULL,	'conversations',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(109,	NULL,	NULL,	'conversations',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(110,	NULL,	NULL,	'conversations ratings, ratings, community, community points',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(111,	NULL,	NULL,	'conversations bad words, banned words, banned, bad words, bad, words, list',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(113,	NULL,	NULL,	'attribute configuration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(114,	NULL,	NULL,	'attributes, sets',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(115,	NULL,	NULL,	'attributes, types',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(116,	NULL,	NULL,	'topics, tags, taxonomy',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(118,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	1,	0,	0,	NULL),
(119,	NULL,	NULL,	'overrides, system info, debug, support, help',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(120,	NULL,	NULL,	'errors, exceptions, develop, support, help',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(121,	NULL,	NULL,	'email, logging, logs, smtp, pop, errors, mysql, log',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(122,	NULL,	NULL,	'network, proxy server',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(123,	NULL,	NULL,	'database, entities, doctrine, orm',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(124,	NULL,	NULL,	'export, backup, database, sql, mysql, encryption, restore',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(126,	NULL,	NULL,	'upgrade, new version, update',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(127,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(128,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	1,	0,	0,	NULL),
(129,	NULL,	NULL,	NULL,	'fa fa-edit',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(130,	NULL,	NULL,	NULL,	'fa fa-trash-o',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(131,	NULL,	NULL,	NULL,	'fa fa-th',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(134,	NULL,	NULL,	NULL,	'fa fa-briefcase',	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(146,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(147,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(148,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(149,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(150,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(151,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(156,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	'',	0,	0,	0,	0,	NULL),
(160,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	'\nNacionales\n',	0,	0,	0,	32,	'||/TICs||'),
(161,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	'\nTICs\n',	0,	0,	0,	23,	'||/TICs||'),
(162,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	'\nNacionales\n',	0,	0,	0,	20,	'||'),
(173,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(176,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(177,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(178,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(179,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(180,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(181,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(182,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(183,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(184,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(185,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(186,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(187,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(188,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(189,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(190,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(191,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(192,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(193,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(194,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(196,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	'\nNacionales\n',	0,	0,	0,	21,	'||/TICs||'),
(197,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	33,	NULL),
(198,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	34,	NULL),
(199,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	35,	NULL),
(200,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	0,	NULL),
(201,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	'\nTICs\n',	0,	0,	0,	25,	'||/TICs||');

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersionAreaStyles` (`cID`, `cvID`, `arHandle`, `issID`) VALUES
(1,	28,	'Slider : 36',	14),
(1,	29,	'Slider : 36',	14),
(1,	30,	'Slider : 36',	14),
(1,	31,	'Slider : 36',	14),
(1,	32,	'Slider : 36',	14),
(1,	33,	'Slider : 36',	14),
(1,	34,	'Slider : 36',	14),
(1,	35,	'Slider : 36',	14),
(1,	36,	'Slider : 36',	14),
(1,	37,	'Slider : 36',	14),
(1,	38,	'Slider : 36',	14),
(1,	39,	'Slider : 36',	14),
(1,	36,	'Contenido B',	16),
(1,	37,	'Contenido B',	16),
(1,	38,	'Contenido B',	16),
(1,	39,	'Contenido B',	16);

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`, `cbOverrideBlockTypeContainerSettings`, `cbEnableBlockContainer`) VALUES
(1,	5,	17,	'Slider',	0,	1,	0,	0,	0,	0,	0),
(1,	6,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	7,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	8,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	9,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	10,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	10,	230,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(1,	11,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	11,	231,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(1,	11,	232,	'Slider : 2',	1,	1,	0,	0,	0,	0,	0),
(1,	11,	236,	'Slider : 2 : 28',	0,	1,	0,	0,	0,	0,	0),
(1,	11,	238,	'Slider : 2 : 29',	0,	1,	0,	0,	0,	0,	0),
(1,	11,	240,	'Slider : 2 : 30',	0,	1,	0,	0,	0,	0,	0),
(1,	12,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	12,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	241,	'Slider : 1',	0,	1,	0,	0,	0,	0,	0),
(1,	13,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	13,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	13,	242,	'Contenido A',	0,	1,	0,	0,	0,	0,	0),
(1,	13,	243,	'Contenido A : 31',	1,	1,	0,	0,	0,	0,	0),
(1,	13,	244,	'Contenido A : 31',	0,	1,	0,	0,	0,	0,	0),
(1,	14,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	14,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	243,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	15,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	243,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	245,	'Contenido A : 32',	0,	1,	0,	0,	0,	0,	0),
(1,	16,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	16,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	243,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	246,	'Contenido A : 32',	1,	1,	0,	0,	0,	0,	0),
(1,	17,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	17,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	243,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	18,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	18,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	243,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	19,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	19,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	243,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	20,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	20,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	243,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	21,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	21,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	243,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	22,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	22,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	243,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	22,	1395,	'Contenido B',	0,	1,	0,	0,	0,	0,	0),
(1,	23,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	231,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	232,	'Slider : 2',	1,	0,	0,	0,	0,	0,	0),
(1,	23,	236,	'Slider : 2 : 28',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	238,	'Slider : 2 : 29',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	240,	'Slider : 2 : 30',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	241,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	23,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	23,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	1397,	'Contenido A : 31',	0,	1,	0,	0,	0,	0,	0),
(1,	24,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	24,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	24,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	1398,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(1,	24,	1399,	'Slider : 1',	0,	1,	0,	0,	0,	0,	0),
(1,	24,	1400,	'Slider : 1',	1,	1,	0,	0,	0,	0,	0),
(1,	24,	1401,	'Slider : 1',	2,	1,	0,	0,	0,	0,	0),
(1,	24,	1403,	'Slider : 1',	3,	1,	0,	0,	0,	0,	0),
(1,	25,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	25,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	25,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	1400,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	25,	1401,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	25,	1403,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	25,	1404,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(1,	26,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	26,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	26,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	26,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	26,	1404,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	1405,	'Slider : 1',	2,	1,	0,	0,	0,	0,	0),
(1,	27,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	27,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	27,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	27,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	27,	1404,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	27,	1406,	'Slider',	1,	1,	0,	0,	0,	0,	0),
(1,	28,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	28,	245,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	28,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	28,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	28,	1404,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	28,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	1407,	'Slider',	2,	1,	0,	0,	0,	0,	0),
(1,	29,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	29,	246,	'Contenido A : 32',	1,	0,	0,	0,	0,	0,	0),
(1,	29,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	29,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	29,	1404,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	29,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	29,	1408,	'Slider : 1',	4,	1,	0,	0,	0,	0,	0),
(1,	30,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	30,	246,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	30,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	30,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	30,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	30,	1408,	'Slider : 1',	4,	0,	0,	0,	0,	0,	0),
(1,	30,	1409,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(1,	31,	17,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	31,	246,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	31,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	31,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	31,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	31,	1408,	'Slider : 1',	4,	0,	0,	0,	0,	0,	0),
(1,	31,	1410,	'Slider : 2',	0,	1,	0,	0,	0,	0,	0),
(1,	32,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	32,	246,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	32,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	32,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	32,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	32,	1408,	'Slider : 1',	4,	0,	0,	0,	0,	0,	0),
(1,	32,	1410,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	1411,	'Slider',	0,	1,	0,	0,	0,	0,	0),
(1,	33,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	33,	246,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	33,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	33,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	33,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	33,	1408,	'Slider : 1',	4,	0,	0,	0,	0,	0,	0),
(1,	33,	1410,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	1412,	'Slider',	0,	1,	0,	0,	0,	0,	0),
(1,	34,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	34,	246,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	34,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	34,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	34,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	34,	1408,	'Slider : 1',	4,	0,	0,	0,	0,	0,	0),
(1,	34,	1410,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	1413,	'Slider',	0,	1,	0,	0,	0,	0,	0),
(1,	35,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	35,	246,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	35,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	35,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	35,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	35,	1408,	'Slider : 1',	4,	0,	0,	0,	0,	0,	0),
(1,	35,	1410,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	1413,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	243,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	36,	246,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	36,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	36,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	36,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	36,	1408,	'Slider : 1',	4,	0,	0,	0,	0,	0,	0),
(1,	36,	1410,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	1413,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	246,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	37,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	37,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	37,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	37,	1408,	'Slider : 1',	4,	0,	0,	0,	0,	0,	0),
(1,	37,	1410,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	1413,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	1417,	'Contenido A : 31',	1,	1,	0,	0,	0,	0,	0),
(1,	37,	1418,	'Contenido A : 31',	2,	1,	0,	0,	0,	0,	0),
(1,	38,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	246,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	38,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	38,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	38,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	38,	1408,	'Slider : 1',	4,	0,	0,	0,	0,	0,	0),
(1,	38,	1410,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	1413,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	1417,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	38,	1418,	'Contenido A : 31',	2,	0,	0,	0,	0,	0,	0),
(1,	39,	242,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	246,	'Contenido A : 32',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	1395,	'Contenido B',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	1397,	'Contenido A : 31',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	1399,	'Slider : 1',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	1400,	'Slider : 1',	3,	0,	0,	0,	0,	0,	0),
(1,	39,	1403,	'Slider : 1',	1,	0,	0,	0,	0,	0,	0),
(1,	39,	1405,	'Slider : 1',	2,	0,	0,	0,	0,	0,	0),
(1,	39,	1406,	'Slider : 36',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	1407,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	39,	1408,	'Slider : 1',	4,	0,	0,	0,	0,	0,	0),
(1,	39,	1410,	'Slider : 2',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	1413,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	1417,	'Contenido A : 31',	1,	0,	0,	0,	0,	0,	0),
(1,	39,	1418,	'Contenido A : 31',	2,	0,	0,	0,	0,	0,	0),
(127,	1,	1,	'Main',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	2,	'Primary',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	3,	'Primary',	1,	1,	0,	0,	0,	0,	0),
(128,	1,	4,	'Secondary 1',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	5,	'Secondary 2',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	6,	'Secondary 3',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	7,	'Secondary 4',	0,	1,	0,	0,	0,	0,	0),
(128,	1,	8,	'Secondary 5',	0,	1,	0,	0,	0,	0,	0),
(145,	1,	9,	'Main',	0,	1,	0,	0,	0,	0,	0),
(146,	2,	10,	'Main',	0,	1,	0,	0,	0,	0,	0),
(146,	3,	227,	'Main',	0,	1,	0,	0,	0,	0,	0),
(147,	2,	13,	'Main',	0,	1,	0,	0,	0,	0,	0),
(147,	3,	13,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	4,	14,	'Main',	0,	1,	0,	0,	0,	0,	0),
(147,	5,	14,	'Main',	0,	0,	0,	0,	0,	0,	0),
(148,	2,	16,	'Main',	0,	1,	0,	0,	0,	0,	0),
(148,	3,	16,	'Main',	0,	0,	0,	0,	0,	0,	0),
(148,	3,	249,	'Main',	1,	1,	0,	0,	0,	0,	0),
(148,	4,	249,	'Main',	1,	0,	0,	0,	0,	0,	0),
(148,	4,	317,	'Main',	0,	1,	0,	0,	0,	0,	0),
(148,	5,	249,	'Main',	1,	0,	0,	0,	0,	0,	0),
(148,	5,	1414,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	2,	316,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	3,	318,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	4,	319,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	5,	320,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	6,	321,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	7,	322,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	8,	323,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	9,	324,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	10,	1446,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	11,	1447,	'Main',	0,	1,	0,	0,	0,	0,	0),
(150,	2,	15,	'Main',	0,	1,	0,	0,	0,	0,	0),
(150,	3,	229,	'Main',	0,	1,	0,	0,	0,	0,	0),
(151,	2,	11,	'Main',	0,	1,	0,	0,	0,	0,	0),
(151,	3,	11,	'Main',	0,	0,	0,	0,	0,	0,	0),
(151,	4,	11,	'Main',	0,	0,	0,	0,	0,	0,	0),
(151,	4,	12,	'Main',	1,	1,	0,	0,	0,	0,	0),
(151,	5,	11,	'Main',	0,	0,	0,	0,	0,	0,	0),
(151,	5,	12,	'Main',	1,	0,	0,	0,	0,	0,	0),
(151,	6,	12,	'Main',	1,	0,	0,	0,	0,	0,	0),
(151,	6,	22,	'Main',	0,	1,	0,	0,	0,	0,	0),
(151,	7,	12,	'Main',	1,	0,	0,	0,	0,	0,	0),
(151,	7,	23,	'Main',	0,	1,	0,	0,	0,	0,	0),
(151,	8,	12,	'Main',	1,	0,	0,	0,	0,	0,	0),
(151,	8,	24,	'Main',	0,	1,	0,	0,	0,	0,	0),
(151,	9,	24,	'Main',	0,	0,	0,	0,	0,	0,	0),
(151,	9,	191,	'Main',	1,	1,	0,	0,	0,	0,	0),
(151,	10,	191,	'Main',	1,	0,	0,	0,	0,	0,	0),
(151,	10,	228,	'Main',	0,	1,	0,	0,	0,	0,	0),
(152,	1,	18,	'Main',	0,	1,	0,	0,	0,	0,	0),
(153,	1,	19,	'Main',	0,	1,	0,	0,	0,	0,	0),
(154,	1,	20,	'Titulo',	0,	1,	0,	0,	0,	0,	0),
(154,	1,	21,	'Titulo',	1,	1,	0,	0,	0,	0,	0),
(156,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(156,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(156,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(156,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(156,	2,	35,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(156,	2,	36,	'Contenido : 8',	0,	1,	0,	0,	0,	0,	0),
(156,	2,	37,	'Contenido : 8',	1,	1,	0,	0,	0,	0,	0),
(156,	2,	38,	'Contenido : 8',	2,	1,	0,	0,	0,	0,	0),
(156,	2,	39,	'Contenido : 8',	3,	1,	0,	0,	0,	0,	0),
(156,	2,	40,	'Contenido : 7',	0,	1,	0,	0,	0,	0,	0),
(156,	3,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(156,	3,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(156,	3,	35,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(156,	3,	36,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(156,	3,	37,	'Contenido : 8',	1,	0,	0,	0,	0,	0,	0),
(156,	3,	38,	'Contenido : 8',	2,	0,	0,	0,	0,	0,	0),
(156,	3,	39,	'Contenido : 8',	3,	0,	0,	0,	0,	0,	0),
(156,	3,	40,	'Contenido : 7',	0,	0,	0,	0,	0,	0,	0),
(156,	4,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(156,	4,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(156,	4,	35,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(156,	4,	36,	'Contenido : 8',	0,	0,	0,	0,	0,	0,	0),
(156,	4,	37,	'Contenido : 8',	1,	0,	0,	0,	0,	0,	0),
(156,	4,	38,	'Contenido : 8',	2,	0,	0,	0,	0,	0,	0),
(156,	4,	39,	'Contenido : 8',	3,	0,	0,	0,	0,	0,	0),
(156,	4,	192,	'Contenido : 7',	0,	1,	0,	0,	0,	0,	0),
(157,	1,	25,	'Titulo : 3',	0,	1,	0,	0,	0,	0,	0),
(157,	1,	26,	'Titulo',	1,	1,	0,	0,	0,	0,	0),
(157,	1,	27,	'Titulo : 3',	1,	1,	0,	0,	0,	0,	0),
(157,	1,	28,	'Titulo : 4',	0,	1,	0,	0,	0,	0,	0),
(157,	1,	29,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(157,	1,	30,	'Contenido',	2,	1,	0,	0,	0,	0,	0),
(157,	1,	31,	'Contenido : 5',	1,	1,	0,	0,	0,	0,	0),
(157,	1,	32,	'Contenido : 6',	0,	1,	0,	0,	0,	0,	0),
(157,	1,	33,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(157,	1,	34,	'Contenido',	7,	1,	0,	0,	0,	0,	0),
(157,	1,	117,	'Contenido',	4,	1,	0,	0,	0,	0,	0),
(157,	1,	118,	'Contenido',	6,	1,	0,	0,	0,	0,	0),
(157,	1,	119,	'Contenido : 11',	0,	1,	0,	0,	0,	0,	0),
(157,	1,	120,	'Contenido : 12',	0,	1,	0,	0,	0,	0,	0),
(157,	1,	148,	'Contenido',	5,	1,	0,	0,	0,	0,	0),
(157,	1,	149,	'Contenido',	3,	1,	0,	0,	0,	0,	0),
(160,	1,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(160,	1,	26,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(160,	1,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(160,	1,	28,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(160,	1,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(160,	1,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(160,	1,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(160,	1,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(160,	1,	34,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(160,	1,	117,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(160,	1,	118,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(160,	1,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(160,	1,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(160,	1,	145,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(160,	2,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(160,	2,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(160,	2,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(160,	2,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(160,	2,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(160,	2,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(160,	2,	34,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(160,	2,	117,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(160,	2,	118,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(160,	2,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(160,	2,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(160,	2,	145,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(160,	2,	146,	'Titulo',	0,	1,	0,	0,	0,	0,	0),
(160,	2,	147,	'Titulo : 4',	0,	1,	0,	0,	0,	0,	0),
(160,	3,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(160,	3,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(160,	3,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(160,	3,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(160,	3,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(160,	3,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(160,	3,	34,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(160,	3,	117,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(160,	3,	118,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(160,	3,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(160,	3,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(160,	3,	146,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(160,	3,	147,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(160,	3,	270,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(160,	4,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(160,	4,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(160,	4,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(160,	4,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(160,	4,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(160,	4,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(160,	4,	34,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(160,	4,	117,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(160,	4,	118,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(160,	4,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(160,	4,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(160,	4,	146,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(160,	4,	147,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(160,	4,	287,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(160,	5,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(160,	5,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(160,	5,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(160,	5,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(160,	5,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(160,	5,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(160,	5,	34,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(160,	5,	117,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(160,	5,	118,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(160,	5,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(160,	5,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(160,	5,	146,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(160,	5,	147,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(160,	5,	1347,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(161,	1,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(161,	1,	26,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(161,	1,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(161,	1,	28,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(161,	1,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(161,	1,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(161,	1,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(161,	1,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(161,	1,	34,	'Contenido',	7,	0,	0,	0,	0,	0,	0),
(161,	1,	117,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(161,	1,	118,	'Contenido',	6,	0,	0,	0,	0,	0,	0),
(161,	1,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(161,	1,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(161,	1,	148,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(161,	1,	149,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(161,	1,	154,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(161,	2,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(161,	2,	26,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(161,	2,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(161,	2,	28,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(161,	2,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(161,	2,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(161,	2,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(161,	2,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(161,	2,	34,	'Contenido',	7,	0,	0,	0,	0,	0,	0),
(161,	2,	117,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(161,	2,	118,	'Contenido',	6,	0,	0,	0,	0,	0,	0),
(161,	2,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(161,	2,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(161,	2,	148,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(161,	2,	149,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(161,	2,	308,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(161,	3,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(161,	3,	26,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(161,	3,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(161,	3,	28,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(161,	3,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(161,	3,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(161,	3,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(161,	3,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(161,	3,	34,	'Contenido',	7,	0,	0,	0,	0,	0,	0),
(161,	3,	117,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(161,	3,	118,	'Contenido',	6,	0,	0,	0,	0,	0,	0),
(161,	3,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(161,	3,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(161,	3,	148,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(161,	3,	149,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(161,	3,	314,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(161,	4,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(161,	4,	26,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(161,	4,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(161,	4,	28,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(161,	4,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(161,	4,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(161,	4,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(161,	4,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(161,	4,	34,	'Contenido',	7,	0,	0,	0,	0,	0,	0),
(161,	4,	117,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(161,	4,	118,	'Contenido',	6,	0,	0,	0,	0,	0,	0),
(161,	4,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(161,	4,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(161,	4,	148,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(161,	4,	149,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(161,	4,	1358,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(162,	1,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(162,	1,	26,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	1,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(162,	1,	28,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(162,	1,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(162,	1,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(162,	1,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(162,	1,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(162,	1,	34,	'Contenido',	7,	0,	0,	0,	0,	0,	0),
(162,	1,	117,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(162,	1,	118,	'Contenido',	6,	0,	0,	0,	0,	0,	0),
(162,	1,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(162,	1,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(162,	1,	148,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(162,	1,	149,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(162,	1,	189,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(162,	2,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(162,	2,	26,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	2,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(162,	2,	28,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(162,	2,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(162,	2,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(162,	2,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(162,	2,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(162,	2,	34,	'Contenido',	7,	0,	0,	0,	0,	0,	0),
(162,	2,	117,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(162,	2,	118,	'Contenido',	6,	0,	0,	0,	0,	0,	0),
(162,	2,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(162,	2,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(162,	2,	148,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(162,	2,	149,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(162,	2,	315,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(162,	3,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(162,	3,	26,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(162,	3,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(162,	3,	28,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(162,	3,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(162,	3,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(162,	3,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(162,	3,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(162,	3,	34,	'Contenido',	7,	0,	0,	0,	0,	0,	0),
(162,	3,	117,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(162,	3,	118,	'Contenido',	6,	0,	0,	0,	0,	0,	0),
(162,	3,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(162,	3,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(162,	3,	148,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(162,	3,	149,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(162,	3,	1364,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(181,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(181,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(181,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(181,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(181,	3,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(181,	3,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(181,	4,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(181,	4,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(181,	5,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(181,	5,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(181,	5,	190,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(181,	6,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(181,	6,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(181,	6,	190,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(182,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(182,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(182,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(182,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(182,	2,	195,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(182,	2,	196,	'Contenido : 13',	0,	1,	0,	0,	0,	0,	0),
(182,	3,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(182,	3,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(182,	3,	195,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(182,	3,	196,	'Contenido : 13',	0,	0,	0,	0,	0,	0,	0),
(182,	4,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(182,	4,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(182,	4,	195,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(182,	4,	206,	'Contenido : 13',	0,	1,	0,	0,	0,	0,	0),
(182,	5,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(182,	5,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(182,	5,	206,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(183,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(183,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(183,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(183,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(183,	2,	197,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(183,	2,	198,	'Contenido : 15',	0,	1,	0,	0,	0,	0,	0),
(183,	2,	199,	'Contenido : 16',	1,	1,	0,	0,	0,	0,	0),
(183,	2,	200,	'Contenido : 16 : 17',	0,	1,	0,	0,	0,	0,	0),
(183,	2,	203,	'Contenido : 16 : 18',	0,	1,	0,	0,	0,	0,	0),
(183,	2,	204,	'Contenido : 16 : 19',	0,	1,	0,	0,	0,	0,	0),
(183,	3,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(183,	3,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(183,	3,	197,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(183,	3,	199,	'Contenido : 16',	0,	0,	0,	0,	0,	0,	0),
(183,	3,	200,	'Contenido : 16 : 17',	0,	0,	0,	0,	0,	0,	0),
(183,	3,	203,	'Contenido : 16 : 18',	0,	0,	0,	0,	0,	0,	0),
(183,	3,	204,	'Contenido : 16 : 19',	0,	0,	0,	0,	0,	0,	0),
(183,	3,	205,	'Contenido : 15',	0,	1,	0,	0,	0,	0,	0),
(183,	4,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(183,	4,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(183,	4,	197,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(183,	4,	199,	'Contenido : 16',	0,	0,	0,	0,	0,	0,	0),
(183,	4,	200,	'Contenido : 16 : 17',	0,	0,	0,	0,	0,	0,	0),
(183,	4,	203,	'Contenido : 16 : 18',	0,	0,	0,	0,	0,	0,	0),
(183,	4,	204,	'Contenido : 16 : 19',	0,	0,	0,	0,	0,	0,	0),
(183,	4,	205,	'Contenido : 15',	0,	0,	0,	0,	0,	0,	0),
(184,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(184,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(184,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(184,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(184,	2,	207,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(184,	2,	208,	'Contenido : 20',	0,	1,	0,	0,	0,	0,	0),
(184,	2,	209,	'Contenido : 21',	0,	1,	0,	0,	0,	0,	0),
(184,	3,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(184,	3,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(184,	3,	207,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(184,	3,	208,	'Contenido : 20',	0,	0,	0,	0,	0,	0,	0),
(184,	3,	1425,	'Contenido : 21',	0,	1,	0,	0,	0,	0,	0),
(185,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(185,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(185,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(185,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(185,	3,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(185,	3,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(185,	3,	210,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(185,	3,	211,	'Contenido : 22',	0,	1,	0,	0,	0,	0,	0),
(185,	3,	212,	'Contenido : 23',	0,	1,	0,	0,	0,	0,	0),
(186,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(186,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(186,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(186,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(186,	2,	213,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(186,	2,	215,	'Contenido : 24',	0,	1,	0,	0,	0,	0,	0),
(186,	2,	216,	'Contenido : 25',	0,	1,	0,	0,	0,	0,	0),
(187,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(187,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(187,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(187,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(187,	2,	217,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(188,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(188,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(188,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(188,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(188,	2,	1379,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(189,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(189,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(189,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(189,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(189,	2,	248,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(190,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	2,	218,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(190,	2,	219,	'Contenido : 27',	0,	1,	0,	0,	0,	0,	0),
(190,	2,	220,	'Contenido : 26',	2,	1,	0,	0,	0,	0,	0),
(190,	2,	221,	'Contenido : 26',	1,	1,	0,	0,	0,	0,	0),
(190,	2,	222,	'Contenido : 26',	0,	1,	0,	0,	0,	0,	0),
(190,	3,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	3,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	3,	218,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(190,	3,	223,	'Contenido : 27',	0,	1,	0,	0,	0,	0,	0),
(190,	3,	224,	'Contenido : 26',	0,	1,	0,	0,	0,	0,	0),
(190,	4,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	4,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	4,	218,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(190,	4,	223,	'Contenido : 27',	0,	0,	0,	0,	0,	0,	0),
(190,	4,	225,	'Contenido : 26',	0,	1,	0,	0,	0,	0,	0),
(190,	5,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	5,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	5,	218,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(190,	5,	223,	'Contenido : 27',	0,	0,	0,	0,	0,	0,	0),
(190,	5,	225,	'Contenido : 26',	0,	0,	0,	0,	0,	0,	0),
(190,	6,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	6,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	6,	223,	'Contenido : 27',	0,	0,	0,	0,	0,	0,	0),
(190,	6,	225,	'Contenido : 26',	0,	0,	0,	0,	0,	0,	0),
(190,	6,	1396,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(190,	7,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	7,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	7,	223,	'Contenido : 27',	0,	0,	0,	0,	0,	0,	0),
(190,	7,	225,	'Contenido : 26',	0,	0,	0,	0,	0,	0,	0),
(190,	7,	1396,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(190,	8,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	8,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	8,	223,	'Contenido : 27',	0,	0,	0,	0,	0,	0,	0),
(190,	8,	225,	'Contenido : 26',	0,	0,	0,	0,	0,	0,	0),
(190,	8,	1396,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(190,	9,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	9,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	9,	223,	'Contenido : 27',	0,	0,	0,	0,	0,	0,	0),
(190,	9,	225,	'Contenido : 26',	0,	0,	0,	0,	0,	0,	0),
(190,	9,	1396,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(190,	9,	1421,	'Contenido : 27',	1,	1,	0,	0,	0,	0,	0),
(190,	10,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	10,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	10,	223,	'Contenido : 27',	0,	0,	0,	0,	0,	0,	0),
(190,	10,	225,	'Contenido : 26',	0,	0,	0,	0,	0,	0,	0),
(190,	10,	1396,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(190,	10,	1422,	'Contenido : 27',	1,	1,	0,	0,	0,	0,	0),
(190,	11,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	11,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	11,	223,	'Contenido : 27',	0,	0,	0,	0,	0,	0,	0),
(190,	11,	225,	'Contenido : 26',	0,	0,	0,	0,	0,	0,	0),
(190,	11,	1396,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(190,	11,	1423,	'Contenido : 27',	1,	1,	0,	0,	0,	0,	0),
(190,	12,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(190,	12,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(190,	12,	225,	'Contenido : 26',	0,	0,	0,	0,	0,	0,	0),
(190,	12,	1396,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(190,	12,	1423,	'Contenido : 27',	1,	0,	0,	0,	0,	0,	0),
(190,	12,	1424,	'Contenido : 27',	0,	1,	0,	0,	0,	0,	0),
(191,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(191,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(192,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(192,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(193,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(193,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(194,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(194,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(194,	2,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(194,	2,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(194,	2,	247,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(195,	1,	550,	'Titulo',	0,	1,	0,	0,	0,	0,	0),
(195,	1,	588,	'Titulo',	1,	1,	0,	0,	0,	0,	0),
(196,	1,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(196,	1,	26,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(196,	1,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(196,	1,	28,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(196,	1,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(196,	1,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(196,	1,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(196,	1,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(196,	1,	34,	'Contenido',	7,	0,	0,	0,	0,	0,	0),
(196,	1,	117,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(196,	1,	118,	'Contenido',	6,	0,	0,	0,	0,	0,	0),
(196,	1,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(196,	1,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(196,	1,	148,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(196,	1,	149,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(196,	1,	1378,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(197,	1,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(197,	1,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(197,	2,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(197,	2,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(197,	2,	1380,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(197,	3,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(197,	3,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(197,	3,	1380,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(197,	4,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(197,	4,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(197,	4,	1393,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(197,	5,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(197,	5,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(197,	5,	1394,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(197,	6,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(197,	6,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(197,	6,	1394,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(197,	6,	1415,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(197,	7,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(197,	7,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(197,	7,	1394,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(197,	7,	1416,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(197,	8,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(197,	8,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(197,	8,	1394,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(198,	1,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(198,	1,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(198,	2,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(198,	2,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(198,	2,	1381,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(198,	2,	1382,	'Contenido : 33',	0,	1,	0,	0,	0,	0,	0),
(198,	2,	1383,	'Contenido : 34',	0,	1,	0,	0,	0,	0,	0),
(198,	2,	1388,	'Contenido : 35',	0,	1,	0,	0,	0,	0,	0),
(198,	2,	1389,	'Contenido : 33',	1,	1,	0,	0,	0,	0,	0),
(198,	2,	1390,	'Contenido : 35',	1,	1,	0,	0,	0,	0,	0),
(198,	2,	1391,	'Contenido : 34',	1,	1,	0,	0,	0,	0,	0),
(199,	1,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(199,	1,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(199,	2,	550,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(199,	2,	588,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(199,	2,	1392,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(200,	1,	20,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(200,	1,	21,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(201,	1,	25,	'Titulo : 3',	0,	0,	0,	0,	0,	0,	0),
(201,	1,	26,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(201,	1,	27,	'Titulo : 3',	1,	0,	0,	0,	0,	0,	0),
(201,	1,	28,	'Titulo : 4',	0,	0,	0,	0,	0,	0,	0),
(201,	1,	30,	'Contenido',	2,	0,	0,	0,	0,	0,	0),
(201,	1,	31,	'Contenido : 5',	0,	0,	0,	0,	0,	0,	0),
(201,	1,	32,	'Contenido : 6',	0,	0,	0,	0,	0,	0,	0),
(201,	1,	33,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(201,	1,	34,	'Contenido',	7,	0,	0,	0,	0,	0,	0),
(201,	1,	117,	'Contenido',	4,	0,	0,	0,	0,	0,	0),
(201,	1,	118,	'Contenido',	6,	0,	0,	0,	0,	0,	0),
(201,	1,	119,	'Contenido : 11',	0,	0,	0,	0,	0,	0,	0),
(201,	1,	120,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(201,	1,	148,	'Contenido',	5,	0,	0,	0,	0,	0,	0),
(201,	1,	149,	'Contenido',	3,	0,	0,	0,	0,	0,	0),
(201,	1,	1445,	'Contenido',	0,	1,	0,	0,	0,	0,	0);

DROP TABLE IF EXISTS `CollectionVersionBlocksCacheSettings`;
CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1,	37,	14,	'Header Navigation',	'<!-- Menu Horizontal con color NO basado en personalización que (SI es fijo, y SI se expande con un boton en el responsive)  -->\r\n\r\n\r\n\r\n<style>\r\n.Menu_14 .submenu a{\r\n    display: inline-block;\r\n}\r\n.Menu_14 .submenu li{\r\n    overflow-y:visible;\r\n    width:100%;\r\n}\r\n.Menu_14 .submenu li a{\r\n    line-height:15px !important;\r\n    padding: 10px 15px !important;\r\n}\r\n.Menu_14 .submenu > ul > .submenu .icono_submenu{\r\n    transform: rotate(-90deg);\r\n    -webkit-transform: rotate(-90deg);\r\n    -moz-transform: rotate(-90deg);\r\n    -o-transform: rotate(-90deg);\r\n    margin-top:5px;\r\n}\r\n.Menu_14 > .submenu .icono_submenu{\r\n    display: inline-block;\r\n    margin-left: 0px;\r\n    margin-right: 10px;\r\n    cursor:pointer;\r\n}\r\n\r\n.Menu_14 .submenu:hover > ul{\r\n    display:block;\r\n    opacity:1;\r\n}\r\n.Menu_14 .submenu ul{\r\n    overflow-y:visible;\r\n    display: none;\r\n}\r\n.Menu_14 > li > ul > .submenu a{\r\n    float:left;\r\n}\r\n.Menu_14 > li > ul > .submenu ul{\r\n    left:200px;\r\n}\r\n@media screen and (max-width: 1035px) {\r\n	.Menu_14 .submenu .icono_submenu{\r\n        color:#222;\r\n    }\r\n    .Menu_14 li{\r\n        box-sizing:border-box;\r\n        padding:0px !important;\r\n    }\r\n    .Menu_14 .submenu ul{\r\n        overflow-y:visible;\r\n        width:100%;\r\n        margin-left:15px;\r\n        padding-right:10px !important;\r\n    }\r\n    .Menu_14 > li > ul > .submenu ul{\r\n        left:0px !important;\r\n        margin-top:5px;\r\n    }\r\n}\r\n</style>\r\n<ul class=\"hide-on-med-and-down Menu_14\"><li class=\"active active\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php\" target=\"_self\"><div class=\"linea_icono\"></div>Portada</a></li><li class=\"submenu\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion\" target=\"_self\"><div class=\"linea_icono\"></div>Instituci&oacute;n</a><i class=\"mdi-navigation-arrow-drop-down right icono_submenu\"></i><ul class=\"dropdown-content sub-menu children\"><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/mision-y-vision\" target=\"_self\"><div class=\"linea_icono\"></div>Misi&oacute;n y Visi&oacute;n</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/organigrama\" target=\"_self\"><div class=\"linea_icono\"></div>Organigrama</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/marco-legal\" target=\"_self\"><div class=\"linea_icono\"></div>Marco Legal</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/autoridades\" target=\"_self\"><div class=\"linea_icono\"></div>Autoridades</a></li></ul></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/noticias\" target=\"_self\"><div class=\"linea_icono\"></div>Noticias</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/agenda\" target=\"_self\"><div class=\"linea_icono\"></div>Agenda</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/galeria\" target=\"_self\"><div class=\"linea_icono\"></div>Galer&iacute;a</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/transparencia\" target=\"_self\"><div class=\"linea_icono\"></div>Transparencia</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/contacto\" target=\"_self\"><div class=\"linea_icono\"></div>Contacto</a></li></ul><ul id=\"nav-mobile\" class=\"side-nav Menu_14\"><li class=\"active active\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php\" target=\"_self\">Portada</a></li><li class=\"submenu\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion\" target=\"_self\">Instituci&oacute;n</a><i class=\"mdi-navigation-arrow-drop-down right icono_submenu\"></i><ul class=\"dropdown-content sub-menu children\"><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/mision-y-vision\" target=\"_self\">Misi&oacute;n y Visi&oacute;n</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/organigrama\" target=\"_self\">Organigrama</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/marco-legal\" target=\"_self\">Marco Legal</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/autoridades\" target=\"_self\">Autoridades</a></li></ul></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/noticias\" target=\"_self\">Noticias</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/agenda\" target=\"_self\">Agenda</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/galeria\" target=\"_self\">Galer&iacute;a</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/transparencia\" target=\"_self\">Transparencia</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/contacto\" target=\"_self\">Contacto</a></li></ul><a href=\"#\" data-activates=\"nav-mobile\" class=\"button-collapse\"><i class=\"material-icons\">menu</i></a>',	1465321233),
(1,	37,	191,	'Search',	'<form action=\"http://localhost/template-concrete5/index.php/buscador\" method=\"get\" class=\"input-field buscador_menu\"><input name=\"search_paths[]\" type=\"hidden\" value=\"\" />        <input name=\"query\" placeholder=\"Buscar...\" type=\"text\" value=\"\" class=\"validate animated bounceInRight\" />\n    \n    </form>',	1622722228),
(1,	37,	227,	'Header Site Title',	'<img src=\"/application/files/6814/6374/3266/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-227\">\n',	1622657736),
(1,	37,	228,	'Search',	'<img src=\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\" alt=\"Gobierno-Logo-Espanol---Guarani.png\" width=\"600\" height=\"229\" class=\"ccm-image-block img-responsive bID-228\">\n',	1622657736),
(1,	37,	229,	'Footer Contact',	'<img src=\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"Logo-de-la-SENATICS-en-alfacolor.png\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-229\">\n',	1622657737),
(1,	37,	246,	'Contenido A : 32',	'\n<div id=\"HTMLBlock246\" class=\"HTMLBlock\">\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div></div>',	1622657737),
(1,	37,	249,	'Footer Legal',	'\n<div id=\"HTMLBlock249\" class=\"HTMLBlock\">\n<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n    function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          if (modo_lectura_datos == \"black\"){\r\n    		  document.getElementById(\"fondo_sitio\").style.background=null;\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <ul>\r\n     <!-- <li><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">visibility</i></a></li>-->\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div></div>',	1622657737),
(1,	37,	324,	'Footer Navigation',	'\n<div id=\"HTMLBlock324\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1622657737),
(1,	37,	1395,	'Contenido B',	'<style>\n    .tarjeta{\n        background:rgba(250,250,250,.5);\n        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .07), 0 2px 10px 0 rgba(0, 0, 0, .09);\n        margin: 2rem 0 2rem 0;\n        transition: box-shadow .25s;\n        border-radius: 2px;\n        position: relative;\n        display:block;\n        padding-bottom:15px;\n        padding-right:10px;\n    }\n    .tarjeta:hover{background:#fff; box-shadow:0 8px 17px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.13)}\n    \n    .listado_enlaces .card .card-reveal{\n        box-sizing:border-box;\n    }\n    .listado_enlaces .card .card-image{\n        text-align:center;   \n    }\n    .listado_enlaces .card .card-image img{\n        height:180px;\n        width:auto;\n    }\n    .card .card-content{\n        text-align:left;   \n    }\n    .card .card-title{\n        font-size:18px;   \n    }\n    .card i.right{\n        margin-top:0px;\n    }\n    .card .fecha_seccion{\n        font-size:15px !important;   \n    }\n    #owl-demo1395 .item{ margin: 5px; }</style>\n<script>\n    $(document).ready(function() {$(\"#owl-demo1395\").owlCarousel({navigation : true,items : 3,lazyLoad : true});});</script>\n\n\n    \n<div id=\"owl-demo1395\" class=\"owl-carousel listado_enlaces\">\n            <div class=\"ccm-block-page-list-page-entry-horizontal item\">\n            <div class=\"card\">\n                                <div class=\"card-image waves-effect waves-block waves-light animated bounceIn\">\n                                            <img src=\"/application/files/5514/6488/1250/camera.jpg\" alt=\"camera.jpg\" width=\"500\" height=\"300\" class=\"activator img-responsive\">                                    </div>\n                                \n\n                            <div class=\"card-content\">\n                                            <span class=\"card-title activator grey-text text-darken-4\"><a href=\"http://localhost/index.php/galeria/galeria-de-eventos\" target=\"_self\">Galer&iacute;a de Eventos</a>\n                                                        <i class=\"material-icons right\">more_vert</i>\n                                                        </span>\n                                        \n                    \n                                        </p>\n                </div> \n            \n                                    <div class=\"card-reveal\">\n                        <span class=\"card-title grey-text text-darken-4\"><a href=\"http://localhost/index.php/galeria/galeria-de-eventos\" target=\"_self\">Galer&iacute;a de Eventos</a><i class=\"material-icons right\">close</i></span>\n                        <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\n                                                    <a href=\"http://localhost/index.php/galeria/galeria-de-eventos\" class=\"right\" style=\"margin:10px 5px\">Ir al Álbum</a>\n                                            </div>    \n                                    \n                </div>\n                    </div>\n\n	    <div class=\"ccm-block-page-list-page-entry-horizontal item\">\n            <div class=\"card\">\n                                <div class=\"card-image waves-effect waves-block waves-light animated bounceIn\">\n                                            <img src=\"/application/files/6414/6487/9962/video.png\" alt=\"video.png\" width=\"500\" height=\"300\" class=\"activator img-responsive\">                                    </div>\n                                \n\n                            <div class=\"card-content\">\n                                            <span class=\"card-title activator grey-text text-darken-4\"><a href=\"http://localhost/index.php/galeria/galeria-de-videos\" target=\"_self\">Galer&iacute;a de Videos</a>\n                                                        <i class=\"material-icons right\">more_vert</i>\n                                                        </span>\n                                        \n                    \n                                        </p>\n                </div> \n            \n                                    <div class=\"card-reveal\">\n                        <span class=\"card-title grey-text text-darken-4\"><a href=\"http://localhost/index.php/galeria/galeria-de-videos\" target=\"_self\">Galer&iacute;a de Videos</a><i class=\"material-icons right\">close</i></span>\n                        <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\n                                                    <a href=\"http://localhost/index.php/galeria/galeria-de-videos\" class=\"right\" style=\"margin:10px 5px\">Ir al Álbum</a>\n                                            </div>    \n                                    \n                </div>\n                    </div>\n\n	    <div class=\"ccm-block-page-list-page-entry-horizontal item\">\n            <div class=\"card\">\n                                <div class=\"card-image waves-effect waves-block waves-light animated bounceIn\">\n                                            <img src=\"/application/files/9614/6487/9425/noticias.jpg\" alt=\"noticias.jpg\" width=\"500\" height=\"300\" class=\"activator img-responsive\">                                    </div>\n                                \n\n                            <div class=\"card-content\">\n                                            <span class=\"card-title activator grey-text text-darken-4\"><a href=\"http://localhost/index.php/galeria/galeria-de-imagenes\" target=\"_self\">Galer&iacute;a de Im&aacute;genes</a>\n                                                        <i class=\"material-icons right\">more_vert</i>\n                                                        </span>\n                                        \n                    \n                                        </p>\n                </div> \n            \n                                    <div class=\"card-reveal\">\n                        <span class=\"card-title grey-text text-darken-4\"><a href=\"http://localhost/index.php/galeria/galeria-de-imagenes\" target=\"_self\">Galer&iacute;a de Im&aacute;genes</a><i class=\"material-icons right\">close</i></span>\n                        <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\n                                                    <a href=\"http://localhost/index.php/galeria/galeria-de-imagenes\" class=\"right\" style=\"margin:10px 5px\">Ir al Álbum</a>\n                                            </div>    \n                                    \n                </div>\n                    </div>\n\n	\n    \n</div><!-- end .ccm-block-page-list -->\n\n\n',	1465321234),
(1,	37,	1397,	'Contenido A : 31',	'<p data-redactor-inserted-image=\"true\"><img src=\"/application/files/1414/6488/2186/newspaper.png\" id=\"image-marker\" alt=\"\" style=\"width:30px;height:auto;float: left; margin: 0px 10px 10px 0px;\">\r\n</p>\r\n<h3>Noticias</h3>',	1622722229),
(1,	37,	1399,	'Slider : 1',	'\r\n<style>\r\n    .enlace1399 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1399:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/tramites\" target=\"_self\" class=\"enlace1399\" style=\"cursor:pointer !important;\"><i class=\"fa fa-bookmark\"></i> Trámites</a></div>',	1622657736),
(1,	37,	1400,	'Slider : 1',	'\r\n<style>\r\n    .enlace1400 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1400:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/servicios\" target=\"_self\" class=\"enlace1400\" style=\"cursor:pointer !important;\"><i class=\"fa fa-briefcase\"></i> Servicios</a></div>',	1622657736),
(1,	37,	1403,	'Slider : 1',	'\r\n<style>\r\n    .enlace1403 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1403:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/institucion/mecip\" target=\"_self\" class=\"enlace1403\" style=\"cursor:pointer !important;\"><i class=\"fa fa-building\"></i> MECIP</a></div>',	1622657736),
(1,	37,	1405,	'Slider : 1',	'\r\n<style>\r\n    .enlace1405 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1405:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/compras-publicas\" target=\"_self\" class=\"enlace1405\" style=\"cursor:pointer !important;\"><i class=\"fa fa-shopping-cart\"></i> Compras Públicas</a></div>',	1622657736),
(1,	37,	1406,	'Slider : 36',	'<script>\n$(document).ready(function(){\n    $(function () {\n        $(\".carrusel-1406\").show();\n        \n        $(\".carrusel-1406\").slick({\n                        \n            slidesToShow: 4,            slidesToScroll: 1,            autoplaySpeed: 7000,            speed: 200,            infinite: true,            autoplay: true,            centerMode: false,            adaptiveHeight: true,            responsive: [\n                {\n                  breakpoint: 1035,\n                  settings: {\n                    slidesToShow: 1,\n                    slidesToScroll: 1\n                  }\n                }\n              ]\n        });\n    });\n});\n</script>\n<style>\n        .carrusel-1406 .slick-slide img{\n        padding: 0px;\n    }\n    .carrusel-1406 .carrusel_description_item{\n        background: #8c1917;\n        bottom: 0px;\n        color: #FFF;\n        padding: 10px;\n        margin: -10px 10px 0 10px;\n    }\n</style>\n\n<!--slide-->\n        <section class=\"slidersimple carrusel-1406 \" style=\" display:none\">\n                    <div draggable=\"true\">\n                            <a href=\"http://localhost/template-concrete5/index.php/transparencia\" class=\"mega-link-overlay\" target=\"_self\">\n                                    <img src=\"/template-concrete5/application/files/8414/6487/4258/acceso_informacion_publica_btn-GRAL.png\" alt=\"slide\" width=\"300\" height=\"150\" class=\"img_responsive_items\">                    \n                <div class=\"carrusel_description_item oculto\">\n                                                        </div>    \n                                        </a>\n                \n            \n            </div>\n                    <div draggable=\"true\">\n                            <a href=\"http://www.informacionpublica.gov.py\" class=\"mega-link-overlay\" target=\"_blank\">\n                                    <img src=\"/template-concrete5/application/files/8514/6487/4259/informacion_publica_btn-GRAL.png\" alt=\"slide\" width=\"300\" height=\"150\" class=\"img_responsive_items\">                    \n                <div class=\"carrusel_description_item oculto\">\n                                                        </div>    \n                                        </a>\n                \n            \n            </div>\n                    <div draggable=\"true\">\n                            <a href=\"http://www.denuncias.gov.py/ssps/\" class=\"mega-link-overlay\" target=\"_blank\">\n                                    <img src=\"/template-concrete5/application/files/7514/6487/4258/denuncias_btn.png\" alt=\"slide\" width=\"300\" height=\"150\" class=\"img_responsive_items\">                    \n                <div class=\"carrusel_description_item oculto\">\n                                                        </div>    \n                                        </a>\n                \n            \n            </div>\n                    <div draggable=\"true\">\n                            <a href=\"http://www.paraguay.gov.py\" class=\"mega-link-overlay\" target=\"_blank\">\n                                    <img src=\"/template-concrete5/application/files/3314/6487/4260/portal_parauay_btn2.png\" alt=\"slide\" width=\"300\" height=\"150\" class=\"img_responsive_items\">                    \n                <div class=\"carrusel_description_item oculto\">\n                                                        </div>    \n                                        </a>\n                \n            \n            </div>\n            </section>\n    ',	1622722229),
(1,	37,	1408,	'Slider : 1',	'<style type=\"text/css\">\r\n    #menu ul, #menu li { margin: 0px;\r\n    padding: 0px; outline: 0;\r\n    }\r\n    #menu {  text-align: left;}\r\n    #menu ul { list-style-type: none;  background-color:#FFF; border-radius:5px; padding-top:5px; padding-bottom:5px; }\r\n    #menu ul li.nivel1 { float: left; cursor:pointer;\r\n    }\r\n    #menu ul li a {display: block;\r\n    text-decoration: none;\r\n    color: #333;\r\n    background-color: #fff;\r\n    position: relative;\r\n    }\r\n    #menu ul li:hover {position: relative;\r\n    }\r\n    #menu ul li ul li a:hover {background-color: #d71e1e;\r\n    color: #fff;\r\n    position: relative;\r\n    }\r\n    #menu ul li a.nivel1 {display: block!important;display: none;\r\n    position: relative;border-radius:5px;\r\n    }\r\n    #menu ul li ul {display: none; border-radius:5px;border:1px solid #ddd; \r\n        box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.3);\r\n        -moz-box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.3);\r\n        -webkit-box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.3);\r\n        margin-top:-10px;\r\n    }\r\n    #menu ul li a:hover ul, #menu ul li:hover ul {display: block;\r\n    position: absolute;left: 0px;\r\n    }\r\n    #menu ul li ul li a {width: 195px;\r\n    padding: 6px 0px 8px 0px;\r\n    border-top-color: #000;\r\n    padding-left:5px;\r\n    padding-left:15px;\r\n        padding-right:10px;\r\n    }\r\n    #menu ul li ul li a:hover {border-top-color: #000;\r\n    position: relative;\r\n    }\r\n    table.falsa {border-collapse:collapse;\r\n    border:0px;\r\n    float: left;\r\n    position: relative;\r\n    }\r\n</style>\r\n\r\n<body>\r\n<section id=\"menu\">\r\n    <ul style=\"padding-left:0px !important\">\r\n        <li class=\"nivel1\" style=\"list-style-type:none !important\">\r\n            <img src=\"http://localhost/template-concrete5/application/blocks/leytransparencia/Transparencia.png\" width=\"100%\" style=\"border-radius:3px;\"/>\r\n            <ul style=\"z-index:999; padding-left:0px !important;\">\r\n                                \r\n                                    <hr style=\"margin:5px !important\">\r\n                    <li style=\"list-style-type:none !important\"><a href=\"http://localhost/template-concrete5/index.php/transparencia\" target=\"_blank\">Ver Historial</a></li>\r\n                            </ul>\r\n        </li>\r\n    </ul>\r\n</section>\r\n',	1622722229),
(1,	37,	1410,	'Slider : 2',	'<script>    \n    \n$(document).ready(function(){\n    $(function () {\n        $(\".carrusel-1410\").show();\n        \n        $(\".carrusel-1410\").slick({\n                            dots: true,\n                        \n            slidesToShow: 1,            slidesToScroll: 1,            autoplaySpeed: 5000,            speed: 500,            infinite: true,            autoplay: true,            centerMode: false,            adaptiveHeight: true,            responsive: [\n                {\n                  breakpoint: 1035,\n                  settings: {\n                    slidesToShow: 1,\n                    slidesToScroll: 1\n                  }\n                }\n              ]\n        });\n        \n    });\n});\n</script>\n<style>\n        .carrusel-1410 .slick-slide img{\n        padding: 0px;\n    }\n    .carrusel-1410 .carrusel_description_item{\n        bottom: 0px;\n        color: #FFF;\n        margin: 0px;\n        padding: 5px;\n    }\n</style>\n<!--dots-->\n        <section class=\"sliderprincipal carrusel-1410 \" style=\" display:none\">\n                    <div draggable=\"true\">\n                            <a href=\"http://localhost/template-concrete5/index.php/noticias/noticia-1\" class=\"mega-link-overlay\" target=\"_self\">\n                                                        \n                <div class=\"row\" style=\"background:#8c1917; margin:0px !important\">\n                    <div style=\"padding:0px !important;\" class=\"col l8 m12 s12\">\n                        <img src=\"/template-concrete5/application/files/1214/6488/8860/3.jpg\" alt=\"Titulo Slider 1\" width=\"1000\" height=\"500\" class=\"img_responsive_items\">                    </div>\n                    <div style=\"padding:0px !important;\" class=\"col l4 m12 s12\">\n                        <div class=\"carrusel_description_item\">\n                                                            <div class=\"titulo_item_slider\">Titulo Slider 1</div>\n                                                                                    <div class=\"descripcion_item_slider\"><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p></div>\n                                                                    <p style=\"text-align:right; color:#FFF !important;\">Leer más</p>\n                                                                                    </div>\n                    </div>\n                </div>\n                    \n                                        </a>\n                \n            \n            </div>\n                    <div draggable=\"true\">\n                                                        \n                <div class=\"row\" style=\"background:#8c1917; margin:0px !important\">\n                    <div style=\"padding:0px !important;\" class=\"col l8 m12 s12\">\n                        <img src=\"/template-concrete5/application/files/8514/6488/8898/1809cf7ba79ffb82aab8a2a2a834c1c5.png\" alt=\"Título Slide 2\" width=\"1000\" height=\"500\" class=\"img_responsive_items\">                    </div>\n                    <div style=\"padding:0px !important;\" class=\"col l4 m12 s12\">\n                        <div class=\"carrusel_description_item\">\n                                                            <div class=\"titulo_item_slider\">Título Slide 2</div>\n                                                                                    <div class=\"descripcion_item_slider\"><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.</p></div>\n                                                                                    </div>\n                    </div>\n                </div>\n                    \n                            \n            \n            </div>\n            </section>\n    ',	1622722229),
(1,	37,	1414,	'Footer Legal',	'<p>Portal construido conjuntamente con la <a href=\"https://www.senatics.gov.py/\" target=\"_blank\">SENATICs</a></p><p>2016 Secretaría Nacional de Tecnologías de la Información y Comunicación</p>',	1622722230),
(1,	37,	1417,	'Contenido A : 31',	'<style>\n    .tarjeta{\n        background:rgba(250,250,250,.5);\n        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .07), 0 2px 10px 0 rgba(0, 0, 0, .09);\n        margin: 2rem 0 2rem 0;\n        transition: box-shadow .25s;\n        border-radius: 2px;\n        position: relative;\n        display:block;\n        padding-bottom:15px;\n        padding-right:10px;\n    }\n    .tarjeta:hover{background:#fff; box-shadow:0 8px 17px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.13)}\n    \n    .tarjeta .card-title{\n        color: #fff;\n        margin-top:7px;\n        margin-bottom:7px;\n        font-size: 20px;\n        font-weight: 300; \n    }\n    .tarjeta .card-title.activator {\n        cursor: pointer;   \n    }\n    .tarjeta .oculto{\n        clear: left;   \n    }\n    .tarjeta .card-content p{\n        margin-top:5px;   \n    }\n.portada_imagen{\n    max-width:160px;\n    width:100%;\n    padding:10px;\n    float:left;\n}\n.contenido_detalle{\n    padding-left:180px !important;\n    margin-top:-15px;\n    padding-top:4px;\n}\n@media only screen and (max-width : 600px) {\n    .portada_imagen{\n        max-width:100% !important;\n        padding:0;\n        float:none !important;\n    }\n    .contenido_detalle{\n        padding:10px !important;\n        margin-top:0px;\n    }\n    .fecha_publicacion{\n        padding-left:10px;   \n    }\n}\n</style>\n\n\n<div class=\"listado_enlaces\">\n\n    \n        \n        <div class=\"ccm-block-page-list-page-entry-horizontal item\">\n            <div class=\"tarjeta\">\n            \n                                    <div class=\"portada_imagen\">\n                        <img src=\"/application/files/3614/6487/8942/14_-_75.jpg\" alt=\"14_-_75.jpg\" width=\"800\" height=\"400\" class=\"activator img-responsive materialboxed\">                        \n                                                <div class=\"fecha_publicacion\">\n                            <i class=\"Tiny material-icons left\" style=\"margin-right:5px; margin-top:-1px;\">schedule</i><div class=\"ccm-block-page-list-date\">2 jun. 2016 14:16</div>\n                        </div>\n                                                \n                    </div>\n                                \n                \n            \n\n                            <div class=\"card-content contenido_detalle\">\n                                        \n                    \n                                            <span class=\"card-title activator grey-text text-darken-4\"><a href=\"http://localhost/index.php/noticias/noticia-de-prueba-5\" target=\"_self\">Noticia de prueba 5</a></span>\n                                        \n                                            <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal&hellip;</p>\n                                        <!--<a class=\"right\" href=\"http://localhost/index.php/noticias/noticia-de-prueba-5\" target=\"_self\">Ver info</a>-->\n                    \n                                            <a href=\"http://localhost/index.php/noticias/noticia-de-prueba-5\" style=\"margin:10px 5px; text-align:right\">Ver más</a>\n                                    </div>\n                            <div class=\"oculto\"></div>\n            </div>\n        </div>\n\n	\n        <div class=\"ccm-block-page-list-page-entry-horizontal item\">\n            <div class=\"tarjeta\">\n            \n                                    <div class=\"portada_imagen\">\n                        <img src=\"/application/files/4014/6487/9017/14_-_73.png\" alt=\"14_-_73.png\" width=\"800\" height=\"400\" class=\"activator img-responsive materialboxed\">                        \n                                                <div class=\"fecha_publicacion\">\n                            <i class=\"Tiny material-icons left\" style=\"margin-right:5px; margin-top:-1px;\">schedule</i><div class=\"ccm-block-page-list-date\">2 jun. 2016 10:52</div>\n                        </div>\n                                                \n                    </div>\n                                \n                \n            \n\n                            <div class=\"card-content contenido_detalle\">\n                                        \n                    \n                                            <span class=\"card-title activator grey-text text-darken-4\"><a href=\"http://localhost/index.php/noticias/noticia-de-prueba-4\" target=\"_self\">Noticia de prueba 4</a></span>\n                                        \n                                            <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal&hellip;</p>\n                                        <!--<a class=\"right\" href=\"http://localhost/index.php/noticias/noticia-de-prueba-4\" target=\"_self\">Ver info</a>-->\n                    \n                                            <a href=\"http://localhost/index.php/noticias/noticia-de-prueba-4\" style=\"margin:10px 5px; text-align:right\">Ver más</a>\n                                    </div>\n                            <div class=\"oculto\"></div>\n            </div>\n        </div>\n\n	\n        <div class=\"ccm-block-page-list-page-entry-horizontal item\">\n            <div class=\"tarjeta\">\n            \n                                    <div class=\"portada_imagen\">\n                        <img src=\"/application/files/5914/6487/9035/14_-_2.jpg\" alt=\"14_-_2.jpg\" width=\"800\" height=\"400\" class=\"activator img-responsive materialboxed\">                        \n                                                <div class=\"fecha_publicacion\">\n                            <i class=\"Tiny material-icons left\" style=\"margin-right:5px; margin-top:-1px;\">schedule</i><div class=\"ccm-block-page-list-date\">24 may. 2016 8:43</div>\n                        </div>\n                                                \n                    </div>\n                                \n                \n            \n\n                            <div class=\"card-content contenido_detalle\">\n                                        \n                    \n                                            <span class=\"card-title activator grey-text text-darken-4\"><a href=\"http://localhost/index.php/noticias/noticia-4\" target=\"_self\">Noticia de prueba 3</a></span>\n                                        \n                                            <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal&hellip;</p>\n                                        <!--<a class=\"right\" href=\"http://localhost/index.php/noticias/noticia-4\" target=\"_self\">Ver info</a>-->\n                    \n                                            <a href=\"http://localhost/index.php/noticias/noticia-4\" style=\"margin:10px 5px; text-align:right\">Ver más</a>\n                                    </div>\n                            <div class=\"oculto\"></div>\n            </div>\n        </div>\n\n	\n    \n</div><!-- end .ccm-block-page-list -->\n\n\n',	1465321234),
(1,	37,	1418,	'Contenido A : 31',	'\r\n<style>\r\n    .enlace1418 {\r\n        width:100%; \r\n        padding:5px; \r\n        box-sizing:border-box; \r\n        text-align:center; \r\n        display:inline-block; \r\n        font-size:20px; \r\n        background:; \r\n        color:#c73b3b !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1418:hover {\r\n        background:#878787; \r\n        color:#ffffff !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/noticias\" target=\"_self\" class=\"enlace1418\" style=\"cursor:pointer !important;\">Ver más noticias <i class=\"fa fa-plus-square-o\"></i></a></div>',	1622657736),
(1,	38,	227,	'Header Site Title',	'<img src=\"/application/files/6814/6374/3266/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-227\">\n',	1623163140),
(1,	38,	228,	'Search',	'<img src=\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\" alt=\"Gobierno-Logo-Espanol---Guarani.png\" width=\"600\" height=\"229\" class=\"ccm-image-block img-responsive bID-228\">\n',	1623163140),
(1,	38,	229,	'Footer Contact',	'<img src=\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"Logo-de-la-SENATICS-en-alfacolor.png\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-229\">\n',	1623163140),
(1,	38,	246,	'Contenido A : 32',	'\n<div id=\"HTMLBlock246\" class=\"HTMLBlock\">\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div></div>',	1623163140),
(1,	38,	249,	'Footer Legal',	'\n<div id=\"HTMLBlock249\" class=\"HTMLBlock\">\n<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n    function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          if (modo_lectura_datos == \"black\"){\r\n    		  document.getElementById(\"fondo_sitio\").style.background=null;\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <ul>\r\n     <!-- <li><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">visibility</i></a></li>-->\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div></div>',	1623163141),
(1,	38,	1399,	'Slider : 1',	'\r\n<style>\r\n    .enlace1399 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1399:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/tramites\" target=\"_self\" class=\"enlace1399\" style=\"cursor:pointer !important;\"><i class=\"fa fa-bookmark\"></i> Trámites</a></div>',	1623163140),
(1,	38,	1400,	'Slider : 1',	'\r\n<style>\r\n    .enlace1400 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1400:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/servicios\" target=\"_self\" class=\"enlace1400\" style=\"cursor:pointer !important;\"><i class=\"fa fa-briefcase\"></i> Servicios</a></div>',	1623163140),
(1,	38,	1403,	'Slider : 1',	'\r\n<style>\r\n    .enlace1403 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1403:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/institucion/mecip\" target=\"_self\" class=\"enlace1403\" style=\"cursor:pointer !important;\"><i class=\"fa fa-building\"></i> MECIP</a></div>',	1623163140),
(1,	38,	1405,	'Slider : 1',	'\r\n<style>\r\n    .enlace1405 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1405:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/compras-publicas\" target=\"_self\" class=\"enlace1405\" style=\"cursor:pointer !important;\"><i class=\"fa fa-shopping-cart\"></i> Compras Públicas</a></div>',	1623163140),
(1,	38,	1418,	'Contenido A : 31',	'\r\n<style>\r\n    .enlace1418 {\r\n        width:100%; \r\n        padding:5px; \r\n        box-sizing:border-box; \r\n        text-align:center; \r\n        display:inline-block; \r\n        font-size:20px; \r\n        background:; \r\n        color:#c73b3b !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1418:hover {\r\n        background:#878787; \r\n        color:#ffffff !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/noticias\" target=\"_self\" class=\"enlace1418\" style=\"cursor:pointer !important;\">Ver más noticias <i class=\"fa fa-plus-square-o\"></i></a></div>',	1623163140),
(1,	38,	1446,	'Footer Navigation',	'\n<div id=\"HTMLBlock1446\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1623163108),
(1,	39,	227,	'Header Site Title',	'<img src=\"/application/files/6814/6374/3266/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-227\">\n',	1623163227),
(1,	39,	228,	'Search',	'<img src=\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\" alt=\"Gobierno-Logo-Espanol---Guarani.png\" width=\"600\" height=\"229\" class=\"ccm-image-block img-responsive bID-228\">\n',	1623163227),
(1,	39,	229,	'Footer Contact',	'<img src=\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"Logo-de-la-SENATICS-en-alfacolor.png\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-229\">\n',	1623163228),
(1,	39,	246,	'Contenido A : 32',	'\n<div id=\"HTMLBlock246\" class=\"HTMLBlock\">\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div></div>',	1623163228),
(1,	39,	249,	'Footer Legal',	'\n<div id=\"HTMLBlock249\" class=\"HTMLBlock\">\n<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n    function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          if (modo_lectura_datos == \"black\"){\r\n    		  document.getElementById(\"fondo_sitio\").style.background=null;\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <ul>\r\n     <!-- <li><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">visibility</i></a></li>-->\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div></div>',	1623163228),
(1,	39,	1399,	'Slider : 1',	'\r\n<style>\r\n    .enlace1399 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1399:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/tramites\" target=\"_self\" class=\"enlace1399\" style=\"cursor:pointer !important;\"><i class=\"fa fa-bookmark\"></i> Trámites</a></div>',	1623163227),
(1,	39,	1400,	'Slider : 1',	'\r\n<style>\r\n    .enlace1400 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1400:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/servicios\" target=\"_self\" class=\"enlace1400\" style=\"cursor:pointer !important;\"><i class=\"fa fa-briefcase\"></i> Servicios</a></div>',	1623163228),
(1,	39,	1403,	'Slider : 1',	'\r\n<style>\r\n    .enlace1403 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1403:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/institucion/mecip\" target=\"_self\" class=\"enlace1403\" style=\"cursor:pointer !important;\"><i class=\"fa fa-building\"></i> MECIP</a></div>',	1623163227),
(1,	39,	1405,	'Slider : 1',	'\r\n<style>\r\n    .enlace1405 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1405:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/compras-publicas\" target=\"_self\" class=\"enlace1405\" style=\"cursor:pointer !important;\"><i class=\"fa fa-shopping-cart\"></i> Compras Públicas</a></div>',	1623163228),
(1,	39,	1418,	'Contenido A : 31',	'\r\n<style>\r\n    .enlace1418 {\r\n        width:100%; \r\n        padding:5px; \r\n        box-sizing:border-box; \r\n        text-align:center; \r\n        display:inline-block; \r\n        font-size:20px; \r\n        background:; \r\n        color:#c73b3b !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace1418:hover {\r\n        background:#878787; \r\n        color:#ffffff !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/noticias\" target=\"_self\" class=\"enlace1418\" style=\"cursor:pointer !important;\">Ver más noticias <i class=\"fa fa-plus-square-o\"></i></a></div>',	1623163228),
(1,	39,	1447,	'Footer Navigation',	'\n<div id=\"HTMLBlock1447\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1623163225),
(128,	1,	2,	'Primary',	'\n<h1>Bienvenido nuevamente</h1>\n<br/>\n\n<p><span class=\"label notice\">Actualización Concrete5</span> La última versión de concrete5 es <strong>5.7.5.8</ strong>. En este momento tienes la versión concrete5 <strong>5.7.5.7</ strong>. <a class=\"\" href=\"http://localhost/index.php/dashboard/system/backup/update\">Leer más y Actualizar</a></p>\n\n\n\n',	1465407355),
(128,	1,	4,	'Secondary 1',	'<div>\n<h2><span style=\"color: #ff9900;\"><strong>Do you use an Intranet?</strong></span></h2>\r\n<p> </p>\r\n<p>We\'re starting to build a solution for collaboration and we\'d love to <a href=\"https://www.concrete5.org/about/blog/news/what-do-you-want-intranet\">hear about your experiences</a>. </p>\r\n<p> </p></div>\n\n',	1465328161),
(128,	1,	5,	'Secondary 2',	'<div>\n<h3>New Training Course!</h3>\r\n<p>Learn how to build a custom Theme for concrete5!</p>\r\n<p><a href=\"https://www.concrete5.org/documentation/training1/building-a-concrete5-theme\">Learn More!</a></p></div>\n\n',	1465328162),
(128,	1,	6,	'Secondary 3',	'<h6>Tema destacado</h6>\n	<div class=\"clearfix\">\n	<img src=\"https://www.concrete5.org/files/5514/5090/1893/theme_long_way_home_icon.png\" width=\"50\" height=\"50\" class=\"pull-right\" style=\"margin-left: 10px; margin-bottom: 10px\" />\n	<h4>Long Way Home</h4>\n	<p>A Concrete5 5.7 theme with a hand-drawn touch.</p>\n	</div>\n	\n	<a href=\"https://www.concrete5.org/marketplace/themes/long-way-home1\" class=\"btn btn-default\">Leer más</a>\n',	1465328157),
(128,	1,	7,	'Secondary 4',	'<h6>Complemento Destacado</h6>\n	<div class=\"clearfix\">\n		<img src=\"https://www.concrete5.org/files/9114/6409/8907/formify_icon.png\" width=\"50\" height=\"50\" class=\"pull-right\" style=\"margin-left: 10px; margin-bottom: 10px\" />\n	<h4>Formify</h4>\n	<p>Super-charge your forms and your website.</p>\n	</div>\n	\n	<a href=\"https://www.concrete5.org/marketplace/addons/formify\" class=\"btn btn-default\">Leer más</a>\n',	1465328160),
(128,	1,	8,	'Secondary 5',	'<div>\n\n<div id=\"deal-of-day-0\" class=\"deal-of-day\">\n	<h6>Marketplace Deal of the Day</h6>\n		<div class=\"deal\">\n			<a href=\"http://www.concrete5.org/marketplace/deal/\" target=\"_blank\"><h4>$20 Tuesday  - Themes</h4></a>\n			<div class=\"deal-summary\">\n				\n						\n						<p class=\"deal-of-day-offer-description\">\n							Take advantage of our value days all summer long!						</p>\n						<!--<p class=\"deal-of-day-offer-addons\">\n												Addon:\n						\n						<span>Newsprint</span>						//-->\n						</p>\n						\n										<div class=\"deal-link\">\n					<a class=\"btn btn-default\" href=\"http://www.concrete5.org/marketplace/deal/\" target=\"_blank\">\n						$20.00 - Get the Deal \n					</a>\n				</div>\n			</div>\n		</div>\n		</div></div>\n\n	<div class=\"newsflow-paging-next\"><a href=\"javascript:void(0)\" onclick=\"ConcreteNewsflowDialog.loadEdition(\'341\')\"><i class=\"fa fa-chevron-right\"></i></a></div>\n',	1465328164),
(156,	4,	227,	'Header Site Title',	'<img src=\"/application/files/6814/6374/3266/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-227\">\n',	1622657745),
(156,	4,	228,	'Search',	'<img src=\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\" alt=\"Gobierno-Logo-Espanol---Guarani.png\" width=\"600\" height=\"229\" class=\"ccm-image-block img-responsive bID-228\">\n',	1622657745),
(156,	4,	229,	'Footer Contact',	'<img src=\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"Logo-de-la-SENATICS-en-alfacolor.png\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-229\">\n',	1622657746),
(156,	4,	249,	'Footer Legal',	'\n<div id=\"HTMLBlock249\" class=\"HTMLBlock\">\n<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n    function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          if (modo_lectura_datos == \"black\"){\r\n    		  document.getElementById(\"fondo_sitio\").style.background=null;\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <ul>\r\n     <!-- <li><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">visibility</i></a></li>-->\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div></div>',	1622657746),
(156,	4,	324,	'Footer Navigation',	'\n<div id=\"HTMLBlock324\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1622657746),
(187,	2,	227,	'Header Site Title',	'<img src=\"/application/files/6814/6374/3266/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-227\">\n',	1622749205),
(187,	2,	228,	'Search',	'<img src=\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\" alt=\"Gobierno-Logo-Espanol---Guarani.png\" width=\"600\" height=\"229\" class=\"ccm-image-block img-responsive bID-228\">\n',	1622749205),
(187,	2,	229,	'Footer Contact',	'<img src=\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"Logo-de-la-SENATICS-en-alfacolor.png\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-229\">\n',	1622749205),
(187,	2,	249,	'Footer Legal',	'\n<div id=\"HTMLBlock249\" class=\"HTMLBlock\">\n<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n    function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          if (modo_lectura_datos == \"black\"){\r\n    		  document.getElementById(\"fondo_sitio\").style.background=null;\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <ul>\r\n     <!-- <li><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">visibility</i></a></li>-->\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div></div>',	1622749205),
(187,	2,	324,	'Footer Navigation',	'\n<div id=\"HTMLBlock324\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1622749205),
(189,	2,	227,	'Header Site Title',	'<img src=\"/application/files/6814/6374/3266/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-227\">\n',	1622749201),
(189,	2,	228,	'Search',	'<img src=\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\" alt=\"Gobierno-Logo-Espanol---Guarani.png\" width=\"600\" height=\"229\" class=\"ccm-image-block img-responsive bID-228\">\n',	1622749201),
(189,	2,	229,	'Footer Contact',	'<img src=\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"Logo-de-la-SENATICS-en-alfacolor.png\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-229\">\n',	1622749201),
(189,	2,	249,	'Footer Legal',	'\n<div id=\"HTMLBlock249\" class=\"HTMLBlock\">\n<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n    function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          if (modo_lectura_datos == \"black\"){\r\n    		  document.getElementById(\"fondo_sitio\").style.background=null;\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <ul>\r\n     <!-- <li><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">visibility</i></a></li>-->\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div></div>',	1622749201),
(189,	2,	324,	'Footer Navigation',	'\n<div id=\"HTMLBlock324\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1622749201),
(190,	12,	227,	'Header Site Title',	'<img src=\"/application/files/6814/6374/3266/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-227\">\n',	1622658680),
(190,	12,	228,	'Search',	'<img src=\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\" alt=\"Gobierno-Logo-Espanol---Guarani.png\" width=\"600\" height=\"229\" class=\"ccm-image-block img-responsive bID-228\">\n',	1622658680),
(190,	12,	229,	'Footer Contact',	'<img src=\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"Logo-de-la-SENATICS-en-alfacolor.png\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-229\">\n',	1622658680),
(190,	12,	249,	'Footer Legal',	'\n<div id=\"HTMLBlock249\" class=\"HTMLBlock\">\n<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n    function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          if (modo_lectura_datos == \"black\"){\r\n    		  document.getElementById(\"fondo_sitio\").style.background=null;\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <ul>\r\n     <!-- <li><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">visibility</i></a></li>-->\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div></div>',	1622658680),
(190,	12,	324,	'Footer Navigation',	'\n<div id=\"HTMLBlock324\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1622658680),
(196,	1,	33,	'Contenido',	'<hr/>',	1622657751),
(196,	1,	120,	'Contenido : 12',	'\n<div class=\"ccm-block-share-this-page\">\n    <ul class=\"list-inline\">\n            <li><a href=\"https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-4\"><i class=\"fa fa-facebook\"></i></a></li>\n            <li><a href=\"https://www.twitter.com/intent/tweet?url=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-4\"><i class=\"fa fa-twitter\"></i></a></li>\n            <li><a href=\"https://www.linkedin.com/shareArticle?mini-true&amp;url=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-4&amp;title=Noticia+de+prueba+4\"><i class=\"fa fa-linkedin-square\"></i></a></li>\n            <li><a href=\"https://www.reddit.com/submit?url=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-4\"><i class=\"fa fa-reddit\"></i></a></li>\n            <li><a href=\"https://www.pinterest.com/pin/create/button?url=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-4\"><i class=\"fa fa-pinterest\"></i></a></li>\n            <li><a href=\"https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-4\"><i class=\"fa fa-facebook\"></i></a></li>\n            <li><a href=\"https://plus.google.com/share?url=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-4\"><i class=\"fa fa-google-plus\"></i></a></li>\n            <li><a href=\"mailto:?body=Echa%20un%20vistazo%20a%20este%20art%C3%ADculo%20Template%20Senatics%3A%0A%0ANoticia%20de%20prueba%204%0Ahttp%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-4&amp;subject=Disfruten%20de%20este%20art%C3%ADculo.\"><i class=\"fa fa-envelope\"></i></a></li>\n        </ul>\n</div>',	1622657751),
(196,	1,	148,	'Contenido',	'<hr/>',	1622657751),
(196,	1,	149,	'Contenido',	'<hr/>',	1622657751),
(196,	1,	227,	'Header Site Title',	'<img src=\"/application/files/6814/6374/3266/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-227\">\n',	1622657750),
(196,	1,	228,	'Search',	'<img src=\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\" alt=\"Gobierno-Logo-Espanol---Guarani.png\" width=\"600\" height=\"229\" class=\"ccm-image-block img-responsive bID-228\">\n',	1622657751),
(196,	1,	229,	'Footer Contact',	'<img src=\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"Logo-de-la-SENATICS-en-alfacolor.png\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-229\">\n',	1622657751),
(196,	1,	249,	'Footer Legal',	'\n<div id=\"HTMLBlock249\" class=\"HTMLBlock\">\n<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n    function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          if (modo_lectura_datos == \"black\"){\r\n    		  document.getElementById(\"fondo_sitio\").style.background=null;\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <ul>\r\n     <!-- <li><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">visibility</i></a></li>-->\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div></div>',	1622657751),
(196,	1,	324,	'Footer Navigation',	'\n<div id=\"HTMLBlock324\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1622657751),
(201,	1,	33,	'Contenido',	'<hr/>',	1622657873),
(201,	1,	120,	'Contenido : 12',	'\n<div class=\"ccm-block-share-this-page\">\n    <ul class=\"list-inline\">\n            <li><a href=\"https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-5\"><i class=\"fa fa-facebook\"></i></a></li>\n            <li><a href=\"https://www.twitter.com/intent/tweet?url=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-5\"><i class=\"fa fa-twitter\"></i></a></li>\n            <li><a href=\"https://www.linkedin.com/shareArticle?mini-true&amp;url=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-5&amp;title=Noticia+de+prueba+5\"><i class=\"fa fa-linkedin-square\"></i></a></li>\n            <li><a href=\"https://www.reddit.com/submit?url=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-5\"><i class=\"fa fa-reddit\"></i></a></li>\n            <li><a href=\"https://www.pinterest.com/pin/create/button?url=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-5\"><i class=\"fa fa-pinterest\"></i></a></li>\n            <li><a href=\"https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-5\"><i class=\"fa fa-facebook\"></i></a></li>\n            <li><a href=\"https://plus.google.com/share?url=http%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-5\"><i class=\"fa fa-google-plus\"></i></a></li>\n            <li><a href=\"mailto:?body=Echa%20un%20vistazo%20a%20este%20art%C3%ADculo%20Template%20Senatics%3A%0A%0ANoticia%20de%20prueba%205%0Ahttp%3A%2F%2Flocalhost%2Findex.php%2Fnoticias%2Fnoticia-de-prueba-5&amp;subject=Disfruten%20de%20este%20art%C3%ADculo.\"><i class=\"fa fa-envelope\"></i></a></li>\n        </ul>\n</div>',	1622657874),
(201,	1,	148,	'Contenido',	'<hr/>',	1622657874),
(201,	1,	149,	'Contenido',	'<hr/>',	1622657874),
(201,	1,	227,	'Header Site Title',	'<img src=\"/application/files/6814/6374/3266/Logotipo.png\" alt=\"Logotipo.png\" width=\"400\" height=\"140\" class=\"ccm-image-block img-responsive bID-227\">\n',	1622657873),
(201,	1,	228,	'Search',	'<img src=\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\" alt=\"Gobierno-Logo-Espanol---Guarani.png\" width=\"600\" height=\"229\" class=\"ccm-image-block img-responsive bID-228\">\n',	1622657873),
(201,	1,	229,	'Footer Contact',	'<img src=\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"Logo-de-la-SENATICS-en-alfacolor.png\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-229\">\n',	1622657874),
(201,	1,	249,	'Footer Legal',	'\n<div id=\"HTMLBlock249\" class=\"HTMLBlock\">\n<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n    function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          if (modo_lectura_datos == \"black\"){\r\n    		  document.getElementById(\"fondo_sitio\").style.background=null;\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <ul>\r\n     <!-- <li><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">visibility</i></a></li>-->\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div></div>',	1622657874),
(201,	1,	324,	'Footer Navigation',	'\n<div id=\"HTMLBlock324\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interes</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.repatriados.gov.py/\">Secretaría de Desarrollo para Repatriados y Refugiados Connacionales</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1622657874);

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersionBlockStyles` (`cID`, `cvID`, `bID`, `arHandle`, `issID`) VALUES
(151,	3,	11,	'Main',	1),
(151,	4,	11,	'Main',	1),
(151,	5,	11,	'Main',	1),
(151,	6,	22,	'Main',	1),
(151,	7,	23,	'Main',	1),
(151,	8,	24,	'Main',	1),
(151,	9,	24,	'Main',	1),
(151,	10,	228,	'Main',	1),
(156,	2,	37,	'Contenido : 8',	3),
(156,	3,	37,	'Contenido : 8',	3),
(156,	4,	37,	'Contenido : 8',	3),
(160,	1,	120,	'Contenido : 12',	4),
(160,	2,	120,	'Contenido : 12',	4),
(160,	3,	120,	'Contenido : 12',	4),
(160,	4,	120,	'Contenido : 12',	4),
(160,	5,	120,	'Contenido : 12',	4),
(157,	1,	120,	'Contenido : 12',	5),
(161,	1,	120,	'Contenido : 12',	5),
(161,	2,	120,	'Contenido : 12',	5),
(161,	3,	120,	'Contenido : 12',	5),
(161,	4,	120,	'Contenido : 12',	5),
(162,	1,	120,	'Contenido : 12',	5),
(162,	2,	120,	'Contenido : 12',	5),
(162,	3,	120,	'Contenido : 12',	5),
(196,	1,	120,	'Contenido : 12',	5),
(201,	1,	120,	'Contenido : 12',	5),
(198,	2,	1389,	'Contenido : 33',	6),
(198,	2,	1391,	'Contenido : 34',	7),
(198,	2,	1390,	'Contenido : 35',	8),
(1,	24,	1399,	'Slider : 1',	9),
(1,	25,	1399,	'Slider : 1',	9),
(1,	26,	1399,	'Slider : 1',	9),
(1,	27,	1399,	'Slider : 1',	9),
(1,	28,	1399,	'Slider : 1',	9),
(1,	29,	1399,	'Slider : 1',	9),
(1,	30,	1399,	'Slider : 1',	9),
(1,	31,	1399,	'Slider : 1',	9),
(1,	32,	1399,	'Slider : 1',	9),
(1,	33,	1399,	'Slider : 1',	9),
(1,	34,	1399,	'Slider : 1',	9),
(1,	35,	1399,	'Slider : 1',	9),
(1,	36,	1399,	'Slider : 1',	9),
(1,	37,	1399,	'Slider : 1',	9),
(1,	38,	1399,	'Slider : 1',	9),
(1,	39,	1399,	'Slider : 1',	9),
(1,	24,	1400,	'Slider : 1',	10),
(1,	25,	1400,	'Slider : 1',	10),
(1,	26,	1400,	'Slider : 1',	10),
(1,	27,	1400,	'Slider : 1',	10),
(1,	28,	1400,	'Slider : 1',	10),
(1,	29,	1400,	'Slider : 1',	10),
(1,	30,	1400,	'Slider : 1',	10),
(1,	31,	1400,	'Slider : 1',	10),
(1,	32,	1400,	'Slider : 1',	10),
(1,	33,	1400,	'Slider : 1',	10),
(1,	34,	1400,	'Slider : 1',	10),
(1,	35,	1400,	'Slider : 1',	10),
(1,	36,	1400,	'Slider : 1',	10),
(1,	37,	1400,	'Slider : 1',	10),
(1,	38,	1400,	'Slider : 1',	10),
(1,	39,	1400,	'Slider : 1',	10),
(1,	24,	1401,	'Slider : 1',	11),
(1,	24,	1403,	'Slider : 1',	11),
(1,	25,	1401,	'Slider : 1',	11),
(1,	25,	1403,	'Slider : 1',	11),
(1,	26,	1403,	'Slider : 1',	11),
(1,	26,	1405,	'Slider : 1',	11),
(1,	27,	1403,	'Slider : 1',	11),
(1,	27,	1405,	'Slider : 1',	11),
(1,	28,	1403,	'Slider : 1',	11),
(1,	28,	1405,	'Slider : 1',	11),
(1,	29,	1403,	'Slider : 1',	11),
(1,	29,	1405,	'Slider : 1',	11),
(1,	30,	1403,	'Slider : 1',	11),
(1,	30,	1405,	'Slider : 1',	11),
(1,	31,	1403,	'Slider : 1',	11),
(1,	31,	1405,	'Slider : 1',	11),
(1,	32,	1403,	'Slider : 1',	11),
(1,	32,	1405,	'Slider : 1',	11),
(1,	33,	1403,	'Slider : 1',	11),
(1,	33,	1405,	'Slider : 1',	11),
(1,	34,	1403,	'Slider : 1',	11),
(1,	34,	1405,	'Slider : 1',	11),
(1,	35,	1403,	'Slider : 1',	11),
(1,	35,	1405,	'Slider : 1',	11),
(1,	36,	1403,	'Slider : 1',	11),
(1,	36,	1405,	'Slider : 1',	11),
(1,	37,	1403,	'Slider : 1',	11),
(1,	37,	1405,	'Slider : 1',	11),
(1,	38,	1403,	'Slider : 1',	11),
(1,	38,	1405,	'Slider : 1',	11),
(1,	39,	1403,	'Slider : 1',	11),
(1,	39,	1405,	'Slider : 1',	11),
(1,	28,	1406,	'Slider : 36',	12),
(1,	29,	1406,	'Slider : 36',	12),
(1,	30,	1406,	'Slider : 36',	12),
(1,	31,	1406,	'Slider : 36',	12),
(1,	32,	1406,	'Slider : 36',	12),
(1,	33,	1406,	'Slider : 36',	12),
(1,	34,	1406,	'Slider : 36',	12),
(1,	35,	1406,	'Slider : 36',	12),
(1,	36,	1406,	'Slider : 36',	12),
(1,	37,	1406,	'Slider : 36',	12),
(1,	38,	1406,	'Slider : 36',	12),
(1,	39,	1406,	'Slider : 36',	12),
(1,	29,	1408,	'Slider : 1',	15),
(1,	30,	1408,	'Slider : 1',	15),
(1,	31,	1408,	'Slider : 1',	15),
(1,	32,	1408,	'Slider : 1',	15),
(1,	33,	1408,	'Slider : 1',	15),
(1,	34,	1408,	'Slider : 1',	15),
(1,	35,	1408,	'Slider : 1',	15),
(1,	36,	1408,	'Slider : 1',	15),
(1,	37,	1408,	'Slider : 1',	15),
(1,	38,	1408,	'Slider : 1',	15),
(1,	39,	1408,	'Slider : 1',	15),
(190,	12,	1424,	'Contenido : 27',	18);

DROP TABLE IF EXISTS `CollectionVersionFeatureAssignments`;
CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersionFeatureAssignments` (`cID`, `cvID`, `faID`) VALUES
(146,	2,	1),
(151,	2,	2),
(151,	3,	2),
(151,	4,	2),
(151,	5,	2),
(150,	2,	3),
(151,	6,	4),
(151,	7,	5),
(151,	8,	6),
(151,	9,	6),
(184,	2,	7),
(146,	3,	8),
(151,	10,	9),
(150,	3,	10);

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersionRelatedEdits` (`cID`, `cvID`, `cRelationID`, `cvRelationID`) VALUES
(154,	1,	151,	6);

DROP TABLE IF EXISTS `CollectionVersions`;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`) VALUES
(1,	1,	'Home',	'home',	'',	'2016-05-19 10:26:57',	'2016-05-19 10:26:57',	'Initial Version',	0,	0,	1,	NULL,	3,	5,	NULL),
(1,	2,	'Home',	'home',	'',	'2016-05-19 10:26:57',	'2016-05-20 07:20:19',	'Nueva Versión 2',	0,	0,	1,	1,	3,	5,	NULL),
(1,	3,	'Home',	'home',	'',	'2016-05-19 10:26:57',	'2016-05-20 07:20:24',	'Nueva Versión 3',	0,	0,	1,	1,	3,	7,	NULL),
(1,	4,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-05-20 07:21:10',	'Version 4',	0,	0,	1,	1,	3,	7,	NULL),
(1,	5,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-05-23 09:07:57',	'Version 5',	0,	0,	1,	1,	3,	7,	NULL),
(1,	6,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-05-23 14:16:31',	'Nueva Versión 6',	0,	0,	1,	1,	3,	7,	NULL),
(1,	7,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-05-23 14:49:30',	'Version 7',	0,	0,	1,	1,	3,	7,	NULL),
(1,	8,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-05-23 14:50:06',	'Version 8',	0,	0,	1,	1,	3,	7,	NULL),
(1,	9,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-05-26 10:55:09',	'Version 9',	0,	0,	1,	1,	3,	7,	NULL),
(1,	10,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 09:17:34',	'Version 10',	0,	0,	1,	1,	3,	7,	NULL),
(1,	11,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 09:19:52',	'Version 11',	0,	0,	1,	1,	3,	7,	NULL),
(1,	12,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 09:33:57',	'Version 12',	0,	0,	1,	1,	3,	7,	NULL),
(1,	13,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 09:34:46',	'Version 13',	0,	0,	1,	1,	3,	7,	NULL),
(1,	14,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 09:38:31',	'Version 14',	0,	0,	1,	1,	3,	7,	NULL),
(1,	15,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 09:39:46',	'Version 15',	0,	0,	1,	1,	3,	7,	NULL),
(1,	16,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 09:43:02',	'Version 16',	0,	0,	1,	1,	3,	7,	NULL),
(1,	17,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 09:57:23',	'Version 17',	0,	0,	1,	1,	3,	7,	NULL),
(1,	18,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 10:07:42',	'Version 18',	0,	0,	1,	1,	3,	7,	NULL),
(1,	19,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 10:11:55',	'Version 19',	0,	0,	1,	1,	3,	7,	NULL),
(1,	20,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 10:14:08',	'Version 20',	0,	0,	1,	1,	3,	7,	NULL),
(1,	21,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 10:19:52',	'Version 21',	0,	0,	1,	1,	3,	7,	NULL),
(1,	22,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 11:33:17',	'Version 22',	0,	0,	1,	1,	3,	7,	NULL),
(1,	23,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 11:43:22',	'Version 23',	0,	0,	1,	1,	3,	7,	NULL),
(1,	24,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 11:45:29',	'Version 24',	0,	0,	1,	1,	3,	7,	NULL),
(1,	25,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 11:54:28',	'Version 25',	0,	0,	1,	1,	3,	7,	NULL),
(1,	26,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 11:54:49',	'Version 26',	0,	0,	1,	1,	3,	7,	NULL),
(1,	27,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 11:56:28',	'Version 27',	0,	0,	1,	1,	3,	7,	NULL),
(1,	28,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 11:58:52',	'Version 28',	0,	0,	1,	1,	3,	7,	NULL),
(1,	29,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 13:09:17',	'Version 29',	0,	0,	1,	1,	3,	7,	NULL),
(1,	30,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 13:10:15',	'Version 30',	0,	0,	1,	1,	3,	7,	NULL),
(1,	31,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 13:10:44',	'Version 31',	0,	0,	1,	1,	3,	7,	NULL),
(1,	32,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 13:11:30',	'Version 32',	0,	0,	1,	1,	3,	7,	NULL),
(1,	33,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 13:13:03',	'Version 33',	0,	0,	1,	1,	3,	7,	NULL),
(1,	34,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 13:13:36',	'Version 34',	0,	0,	1,	1,	3,	7,	NULL),
(1,	35,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 13:25:42',	'Version 35',	0,	0,	1,	1,	3,	7,	NULL),
(1,	36,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 13:44:20',	'Nueva Versión 36',	0,	0,	1,	1,	3,	7,	NULL),
(1,	37,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-02 13:44:49',	'Version 37',	0,	0,	1,	1,	3,	7,	NULL),
(1,	38,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-08 10:38:26',	'Version 38',	0,	0,	2,	2,	3,	7,	NULL),
(1,	39,	'Portada',	'portada',	'',	'2016-05-19 10:26:57',	'2016-06-08 10:40:23',	'Version 39',	1,	0,	2,	2,	3,	7,	NULL),
(2,	1,	'Dashboard',	'dashboard',	'',	'2016-05-19 10:27:33',	'2016-05-19 10:27:33',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(3,	1,	'Sitemap',	'sitemap',	'Whole world at a glance.',	'2016-05-19 10:27:33',	'2016-05-19 10:27:33',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(4,	1,	'Full Sitemap',	'full',	'',	'2016-05-19 10:27:34',	'2016-05-19 10:27:34',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(5,	1,	'Flat View',	'explore',	'',	'2016-05-19 10:27:34',	'2016-05-19 10:27:34',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(6,	1,	'Page Search',	'search',	'',	'2016-05-19 10:27:34',	'2016-05-19 10:27:34',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(7,	1,	'Files',	'files',	'All documents and images.',	'2016-05-19 10:27:35',	'2016-05-19 10:27:35',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(8,	1,	'File Manager',	'search',	'',	'2016-05-19 10:27:35',	'2016-05-19 10:27:35',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(9,	1,	'Attributes',	'attributes',	'',	'2016-05-19 10:27:36',	'2016-05-19 10:27:36',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(10,	1,	'File Sets',	'sets',	'',	'2016-05-19 10:27:36',	'2016-05-19 10:27:36',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(11,	1,	'Add File Set',	'add_set',	'',	'2016-05-19 10:27:36',	'2016-05-19 10:27:36',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(12,	1,	'Members',	'users',	'Add and manage the user accounts and groups on your website.',	'2016-05-19 10:27:37',	'2016-05-19 10:27:37',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(13,	1,	'Search Users',	'search',	'',	'2016-05-19 10:27:37',	'2016-05-19 10:27:37',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(14,	1,	'User Groups',	'groups',	'',	'2016-05-19 10:27:37',	'2016-05-19 10:27:37',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(15,	1,	'Attributes',	'attributes',	'',	'2016-05-19 10:27:38',	'2016-05-19 10:27:38',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(16,	1,	'Add User',	'add',	'',	'2016-05-19 10:27:38',	'2016-05-19 10:27:38',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(17,	1,	'Add Group',	'add_group',	'',	'2016-05-19 10:27:39',	'2016-05-19 10:27:39',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(18,	1,	'Move Multiple Groups',	'bulkupdate',	'',	'2016-05-19 10:27:39',	'2016-05-19 10:27:39',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(19,	1,	'Group Sets',	'group_sets',	'',	'2016-05-19 10:27:40',	'2016-05-19 10:27:40',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(20,	1,	'Community Points',	'points',	NULL,	'2016-05-19 10:27:40',	'2016-05-19 10:27:40',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(21,	1,	'Assign Points',	'assign',	NULL,	'2016-05-19 10:27:41',	'2016-05-19 10:27:41',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(22,	1,	'Actions',	'actions',	NULL,	'2016-05-19 10:27:41',	'2016-05-19 10:27:41',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(23,	1,	'Reports',	'reports',	'Get data from forms and logs.',	'2016-05-19 10:27:41',	'2016-05-19 10:27:41',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(24,	1,	'Form Results',	'forms',	'Get submission data.',	'2016-05-19 10:27:42',	'2016-05-19 10:27:42',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(25,	1,	'Surveys',	'surveys',	'',	'2016-05-19 10:27:42',	'2016-05-19 10:27:42',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(26,	1,	'Logs',	'logs',	'',	'2016-05-19 10:27:42',	'2016-05-19 10:27:42',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(27,	1,	'Pages & Themes',	'pages',	'Reskin your site.',	'2016-05-19 10:27:43',	'2016-05-19 10:27:43',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(28,	1,	'Themes',	'themes',	'Reskin your site.',	'2016-05-19 10:27:43',	'2016-05-19 10:27:43',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(29,	1,	'Inspect',	'inspect',	'',	'2016-05-19 10:27:43',	'2016-05-19 10:27:43',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(30,	1,	'Page Types',	'types',	'',	'2016-05-19 10:27:44',	'2016-05-19 10:27:44',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(31,	1,	'Organize Page Type Order',	'organize',	'',	'2016-05-19 10:27:45',	'2016-05-19 10:27:45',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(32,	1,	'Add Page Type',	'add',	'',	'2016-05-19 10:27:45',	'2016-05-19 10:27:45',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(33,	1,	'Compose Form',	'form',	'',	'2016-05-19 10:27:45',	'2016-05-19 10:27:45',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(34,	1,	'Defaults and Output',	'output',	'',	'2016-05-19 10:27:46',	'2016-05-19 10:27:46',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(35,	1,	'Page Type Attributes',	'attributes',	'',	'2016-05-19 10:27:46',	'2016-05-19 10:27:46',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(36,	1,	'Page Type Permissions',	'permissions',	'',	'2016-05-19 10:27:47',	'2016-05-19 10:27:47',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(37,	1,	'Page Templates',	'templates',	'Form factors for pages in your site.',	'2016-05-19 10:27:47',	'2016-05-19 10:27:47',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(38,	1,	'Add Page Template',	'add',	'Add page templates to your site.',	'2016-05-19 10:27:48',	'2016-05-19 10:27:48',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(39,	1,	'Attributes',	'attributes',	'',	'2016-05-19 10:27:48',	'2016-05-19 10:27:48',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(40,	1,	'Single Pages',	'single',	'',	'2016-05-19 10:27:48',	'2016-05-19 10:27:48',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(41,	1,	'RSS Feeds',	'feeds',	'',	'2016-05-19 10:27:49',	'2016-05-19 10:27:49',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(42,	1,	'Conversations',	'conversations',	'',	'2016-05-19 10:27:49',	'2016-05-19 10:27:49',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(43,	1,	'Messages',	'messages',	'',	'2016-05-19 10:27:50',	'2016-05-19 10:27:50',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(44,	1,	'Workflow',	'workflow',	'',	'2016-05-19 10:27:50',	'2016-05-19 10:27:50',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(45,	1,	'Waiting for Me',	'me',	'',	'2016-05-19 10:27:51',	'2016-05-19 10:27:51',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(46,	1,	'Workflow List',	'workflows',	'',	'2016-05-19 10:27:51',	'2016-05-19 10:27:51',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(47,	1,	'Stacks & Blocks',	'blocks',	'Manage sitewide content and administer block types.',	'2016-05-19 10:27:51',	'2016-05-19 10:27:51',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(48,	1,	'Stacks',	'stacks',	'Share content across your site.',	'2016-05-19 10:27:52',	'2016-05-19 10:27:52',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(49,	1,	'Block & Stack Permissions',	'permissions',	'Control who can add blocks and stacks on your site.',	'2016-05-19 10:27:52',	'2016-05-19 10:27:52',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(50,	1,	'Stack List',	'list',	'',	'2016-05-19 10:27:52',	'2016-05-19 10:27:52',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(51,	1,	'Block Types',	'types',	'Manage the installed block types in your site.',	'2016-05-19 10:27:53',	'2016-05-19 10:27:53',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(52,	1,	'Extend concrete5',	'extend',	'',	'2016-05-19 10:27:54',	'2016-05-19 10:27:54',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(53,	1,	'Dashboard',	'news',	'',	'2016-05-19 10:27:54',	'2016-05-19 10:27:54',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(54,	1,	'Add Functionality',	'install',	'Install add-ons & themes.',	'2016-05-19 10:27:55',	'2016-05-19 10:27:55',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(55,	1,	'Update Add-Ons',	'update',	'Update your installed packages.',	'2016-05-19 10:27:55',	'2016-05-19 10:27:55',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(56,	1,	'Connect to the Community',	'connect',	'Connect to the concrete5 community.',	'2016-05-19 10:27:55',	'2016-05-19 10:27:55',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(57,	1,	'Get More Themes',	'themes',	'Download themes from concrete5.org.',	'2016-05-19 10:27:56',	'2016-05-19 10:27:56',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(58,	1,	'Get More Add-Ons',	'addons',	'Download add-ons from concrete5.org.',	'2016-05-19 10:27:56',	'2016-05-19 10:27:56',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(59,	1,	'System & Settings',	'system',	'Secure and setup your site.',	'2016-05-19 10:27:57',	'2016-05-19 10:27:57',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(60,	1,	'Basics',	'basics',	'Basic information about your website.',	'2016-05-19 10:27:57',	'2016-05-19 10:27:57',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(61,	1,	'Site Name',	'name',	'',	'2016-05-19 10:27:58',	'2016-05-19 10:27:58',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(62,	1,	'Accessibility',	'accessibility',	'',	'2016-05-19 10:27:58',	'2016-05-19 10:27:58',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(63,	1,	'Social Links',	'social',	'',	'2016-05-19 10:27:58',	'2016-05-19 10:27:58',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(64,	1,	'Bookmark Icons',	'icons',	'Bookmark icon and mobile home screen icon setup.',	'2016-05-19 10:27:59',	'2016-05-19 10:27:59',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(65,	1,	'Rich Text Editor',	'editor',	'',	'2016-05-19 10:27:59',	'2016-05-19 10:27:59',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(66,	1,	'Languages',	'multilingual',	'',	'2016-05-19 10:28:00',	'2016-05-19 10:28:00',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(67,	1,	'Time Zone',	'timezone',	'',	'2016-05-19 10:28:00',	'2016-05-19 10:28:00',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(68,	1,	'Multilingual',	'multilingual',	'Run your site in multiple languages.',	'2016-05-19 10:28:01',	'2016-05-19 10:28:01',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(69,	1,	'Multilingual Setup',	'setup',	'',	'2016-05-19 10:28:01',	'2016-05-19 10:28:01',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(70,	1,	'Copy Languages',	'copy',	'',	'2016-05-19 10:28:02',	'2016-05-19 10:28:02',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(71,	1,	'Page Report',	'page_report',	'',	'2016-05-19 10:28:02',	'2016-05-19 10:28:02',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(72,	1,	'Translate Site Interface',	'translate_interface',	'',	'2016-05-19 10:28:02',	'2016-05-19 10:28:02',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(73,	1,	'SEO & Statistics',	'seo',	'Enable pretty URLs and tracking codes.',	'2016-05-19 10:28:03',	'2016-05-19 10:28:03',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(74,	1,	'URLs and Redirection',	'urls',	'',	'2016-05-19 10:28:03',	'2016-05-19 10:28:03',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(75,	1,	'Bulk SEO Updater',	'bulk',	'',	'2016-05-19 10:28:04',	'2016-05-19 10:28:04',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(76,	1,	'Tracking Codes',	'codes',	'',	'2016-05-19 10:28:04',	'2016-05-19 10:28:04',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(77,	1,	'Excluded URL Word List',	'excluded',	'',	'2016-05-19 10:28:04',	'2016-05-19 10:28:04',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(78,	1,	'Search Index',	'searchindex',	'',	'2016-05-19 10:28:05',	'2016-05-19 10:28:05',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(79,	1,	'Files',	'files',	'',	'2016-05-19 10:28:05',	'2016-05-19 10:28:05',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(80,	1,	'File Manager Permissions',	'permissions',	'',	'2016-05-19 10:28:06',	'2016-05-19 10:28:06',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(81,	1,	'Allowed File Types',	'filetypes',	'',	'2016-05-19 10:28:06',	'2016-05-19 10:28:06',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(82,	1,	'Thumbnails',	'thumbnails',	'',	'2016-05-19 10:28:06',	'2016-05-19 10:28:06',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(83,	1,	'Image Uploading',	'image_uploading',	'',	'2016-05-19 10:28:07',	'2016-05-19 10:28:07',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(84,	1,	'File Storage Locations',	'storage',	'',	'2016-05-19 10:28:07',	'2016-05-19 10:28:07',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(85,	1,	'Optimization',	'optimization',	'Keep your site running well.',	'2016-05-19 10:28:07',	'2016-05-19 10:28:07',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(86,	1,	'Cache & Speed Settings',	'cache',	'',	'2016-05-19 10:28:08',	'2016-05-19 10:28:08',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(87,	1,	'Clear Cache',	'clearcache',	'',	'2016-05-19 10:28:08',	'2016-05-19 10:28:08',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(88,	1,	'Automated Jobs',	'jobs',	'',	'2016-05-19 10:28:09',	'2016-05-19 10:28:09',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(89,	1,	'Database Query Log',	'query_log',	'',	'2016-05-19 10:28:09',	'2016-05-19 10:28:09',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(90,	1,	'Permissions & Access',	'permissions',	'Control who sees and edits your site.',	'2016-05-19 10:28:09',	'2016-05-19 10:28:09',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(91,	1,	'Site Access',	'site',	'',	'2016-05-19 10:28:10',	'2016-05-19 10:28:10',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(92,	1,	'Task Permissions',	'tasks',	'',	'2016-05-19 10:28:11',	'2016-05-19 10:28:11',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(93,	1,	'User Permissions',	'users',	'',	'2016-05-19 10:28:11',	'2016-05-19 10:28:11',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(94,	1,	'Advanced Permissions',	'advanced',	'',	'2016-05-19 10:28:11',	'2016-05-19 10:28:11',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(95,	1,	'IP Blacklist',	'blacklist',	'',	'2016-05-19 10:28:12',	'2016-05-19 10:28:12',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(96,	1,	'Captcha Setup',	'captcha',	'',	'2016-05-19 10:28:12',	'2016-05-19 10:28:12',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(97,	1,	'Spam Control',	'antispam',	'',	'2016-05-19 10:28:13',	'2016-05-19 10:28:13',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(98,	1,	'Maintenance Mode',	'maintenance',	'',	'2016-05-19 10:28:13',	'2016-05-19 10:28:13',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(99,	1,	'Login & Registration',	'registration',	'Change login behaviors and setup public profiles.',	'2016-05-19 10:28:13',	'2016-05-19 10:28:13',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(100,	1,	'Login Destination',	'postlogin',	'',	'2016-05-19 10:28:14',	'2016-05-19 10:28:14',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(101,	1,	'Public Profiles',	'profiles',	'',	'2016-05-19 10:28:15',	'2016-05-19 10:28:15',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(102,	1,	'Public Registration',	'open',	'',	'2016-05-19 10:28:15',	'2016-05-19 10:28:15',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(103,	1,	'Authentication Types',	'authentication',	'',	'2016-05-19 10:28:15',	'2016-05-19 10:28:15',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(104,	1,	'Email',	'mail',	'Control how your site send and processes mail.',	'2016-05-19 10:28:16',	'2016-05-19 10:28:16',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(105,	1,	'SMTP Method',	'method',	'',	'2016-05-19 10:28:16',	'2016-05-19 10:28:16',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(106,	1,	'Test Mail Settings',	'test',	'',	'2016-05-19 10:28:17',	'2016-05-19 10:28:17',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(107,	1,	'Email Importers',	'importers',	'',	'2016-05-19 10:28:17',	'2016-05-19 10:28:17',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(108,	1,	'Conversations',	'conversations',	'Manage your conversations settings',	'2016-05-19 10:28:17',	'2016-05-19 10:28:17',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(109,	1,	'Settings',	'settings',	'',	'2016-05-19 10:28:18',	'2016-05-19 10:28:18',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(110,	1,	'Community Points',	'points',	'',	'2016-05-19 10:28:18',	'2016-05-19 10:28:18',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(111,	1,	'Banned Words',	'bannedwords',	'',	'2016-05-19 10:28:19',	'2016-05-19 10:28:19',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(112,	1,	'Conversation Permissions',	'permissions',	'',	'2016-05-19 10:28:19',	'2016-05-19 10:28:19',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(113,	1,	'Attributes',	'attributes',	'Setup attributes for pages, users, files and more.',	'2016-05-19 10:28:19',	'2016-05-19 10:28:19',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(114,	1,	'Sets',	'sets',	'Group attributes into sets for easier organization',	'2016-05-19 10:28:20',	'2016-05-19 10:28:20',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(115,	1,	'Types',	'types',	'Choose which attribute types are available for different items.',	'2016-05-19 10:28:20',	'2016-05-19 10:28:20',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(116,	1,	'Topics',	'topics',	'',	'2016-05-19 10:28:21',	'2016-05-19 10:28:21',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(117,	1,	'Add Topic Tree',	'add',	'',	'2016-05-19 10:28:21',	'2016-05-19 10:28:21',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(118,	1,	'Environment',	'environment',	'Advanced settings for web developers.',	'2016-05-19 10:28:21',	'2016-05-19 10:28:21',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(119,	1,	'Environment Information',	'info',	'',	'2016-05-19 10:28:22',	'2016-05-19 10:28:22',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(120,	1,	'Debug Settings',	'debug',	'',	'2016-05-19 10:28:22',	'2016-05-19 10:28:22',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(121,	1,	'Logging Settings',	'logging',	'',	'2016-05-19 10:28:23',	'2016-05-19 10:28:23',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(122,	1,	'Proxy Server',	'proxy',	'',	'2016-05-19 10:28:23',	'2016-05-19 10:28:23',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(123,	1,	'Database Entities',	'entities',	'',	'2016-05-19 10:28:23',	'2016-05-19 10:28:23',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(124,	1,	'Backup & Restore',	'backup',	'Backup or restore your website.',	'2016-05-19 10:28:24',	'2016-05-19 10:28:24',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(125,	1,	'Backup Database',	'backup',	'',	'2016-05-19 10:28:24',	'2016-05-19 10:28:24',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(126,	1,	'Update concrete5',	'update',	'',	'2016-05-19 10:28:25',	'2016-05-19 10:28:25',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(127,	1,	'Welcome to concrete5',	'welcome',	'Learn about how to use concrete5, how to develop for concrete5, and get general help.',	'2016-05-19 10:28:28',	'2016-05-19 10:28:28',	'Initial Version',	1,	0,	1,	NULL,	3,	4,	NULL),
(128,	1,	'Customize Dashboard Home',	'home',	'',	'2016-05-19 10:28:28',	'2016-05-19 10:28:28',	'Initial Version',	1,	0,	1,	NULL,	3,	2,	NULL),
(129,	1,	'Drafts',	'!drafts',	'',	'2016-05-19 10:28:46',	'2016-05-19 10:28:46',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(130,	1,	'Trash',	'!trash',	'',	'2016-05-19 10:28:46',	'2016-05-19 10:28:46',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(131,	1,	'Stacks',	'!stacks',	'',	'2016-05-19 10:28:47',	'2016-05-19 10:28:47',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(132,	1,	'Login',	'login',	'',	'2016-05-19 10:28:47',	'2016-05-19 10:28:47',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(133,	1,	'Register',	'register',	'',	'2016-05-19 10:28:47',	'2016-05-19 10:28:47',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(134,	1,	'My Account',	'account',	'',	'2016-05-19 10:28:48',	'2016-05-19 10:28:48',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(135,	1,	'Edit Profile',	'edit_profile',	'Edit your user profile and change password.',	'2016-05-19 10:28:48',	'2016-05-19 10:28:48',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(136,	1,	'Profile Picture',	'avatar',	'Specify a new image attached to posts or edits.',	'2016-05-19 10:28:48',	'2016-05-19 10:28:48',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(137,	1,	'Messages',	'messages',	'Inbox for site-specific messages.',	'2016-05-19 10:28:49',	'2016-05-19 10:28:49',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(138,	1,	'Inbox',	'inbox',	'',	'2016-05-19 10:28:49',	'2016-05-19 10:28:49',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(139,	1,	'Members',	'members',	'',	'2016-05-19 10:28:50',	'2016-05-19 10:28:50',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(140,	1,	'View Profile',	'profile',	'',	'2016-05-19 10:28:50',	'2016-05-19 10:28:50',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(141,	1,	'Directory',	'directory',	'',	'2016-05-19 10:28:50',	'2016-05-19 10:28:50',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(142,	1,	'Page Not Found',	'page_not_found',	'',	'2016-05-19 10:28:51',	'2016-05-19 10:28:51',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(143,	1,	'Page Forbidden',	'page_forbidden',	'',	'2016-05-19 10:28:51',	'2016-05-19 10:28:51',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(144,	1,	'Download File',	'download_file',	'',	'2016-05-19 10:28:52',	'2016-05-19 10:28:52',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(145,	1,	'',	NULL,	NULL,	'2016-05-19 10:28:55',	'2016-05-19 10:28:55',	'Initial Version',	1,	0,	NULL,	NULL,	0,	5,	NULL),
(146,	1,	'Header Site Title',	'header-site-title',	NULL,	'2016-05-19 10:30:20',	'2016-05-19 10:30:20',	'Initial Version',	0,	0,	1,	NULL,	3,	0,	NULL),
(146,	2,	'Header Site Title',	'header-site-title',	NULL,	'2016-05-19 10:30:20',	'2016-05-20 07:21:10',	'Nueva Versión 2',	0,	0,	1,	1,	3,	0,	NULL),
(146,	3,	'Header Site Title',	'header-site-title',	NULL,	'2016-05-19 10:30:20',	'2016-05-26 10:55:09',	'Nueva Versión 3',	1,	0,	1,	1,	3,	0,	NULL),
(147,	1,	'Header Navigation',	'header-navigation',	NULL,	'2016-05-19 10:30:20',	'2016-05-19 10:30:20',	'Initial Version',	0,	0,	1,	NULL,	3,	0,	NULL),
(147,	2,	'Header Navigation',	'header-navigation',	NULL,	'2016-05-19 10:30:20',	'2016-05-20 07:22:08',	'Nueva Versión 2',	0,	0,	1,	1,	3,	0,	NULL),
(147,	3,	'Header Navigation',	'header-navigation',	NULL,	'2016-05-19 10:30:20',	'2016-05-20 07:22:16',	'Nueva Versión 3',	0,	0,	1,	1,	3,	0,	NULL),
(147,	4,	'Header Navigation',	'header-navigation',	NULL,	'2016-05-19 10:30:20',	'2016-05-20 07:22:22',	'Nueva Versión 4',	0,	0,	1,	1,	3,	0,	NULL),
(147,	5,	'Header Navigation',	'header-navigation',	NULL,	'2016-05-19 10:30:20',	'2016-05-20 07:22:29',	'Nueva Versión 5',	1,	0,	1,	1,	3,	0,	NULL),
(148,	1,	'Footer Legal',	'footer-legal',	NULL,	'2016-05-19 10:30:21',	'2016-05-19 10:30:21',	'Initial Version',	0,	0,	1,	NULL,	3,	0,	NULL),
(148,	2,	'Footer Legal',	'footer-legal',	NULL,	'2016-05-19 10:30:21',	'2016-05-20 07:23:03',	'Nueva Versión 2',	0,	0,	1,	1,	3,	0,	NULL),
(148,	3,	'Footer Legal',	'footer-legal',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 09:57:22',	'Nueva Versión 3',	0,	0,	1,	1,	3,	0,	NULL),
(148,	4,	'Footer Legal',	'footer-legal',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 10:07:57',	'Nueva Versión 4',	0,	0,	1,	1,	3,	0,	NULL),
(148,	5,	'Footer Legal',	'footer-legal',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 13:25:42',	'Nueva Versión 5',	1,	0,	1,	1,	3,	0,	NULL),
(149,	1,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-05-19 10:30:21',	'Initial Version',	0,	0,	1,	NULL,	3,	0,	NULL),
(149,	2,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 10:07:41',	'Nueva Versión 2',	0,	0,	1,	1,	3,	0,	NULL),
(149,	3,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 10:11:55',	'Nueva Versión 3',	0,	0,	1,	1,	3,	0,	NULL),
(149,	4,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 10:14:08',	'Nueva Versión 4',	0,	0,	1,	1,	3,	0,	NULL),
(149,	5,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 10:19:51',	'Nueva Versión 5',	0,	0,	1,	1,	3,	0,	NULL),
(149,	6,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 10:20:11',	'Nueva Versión 6',	0,	0,	1,	1,	3,	0,	NULL),
(149,	7,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 10:20:38',	'Nueva Versión 7',	0,	0,	1,	1,	3,	0,	NULL),
(149,	8,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 10:20:46',	'Nueva Versión 8',	0,	0,	1,	1,	3,	0,	NULL),
(149,	9,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-06-02 10:21:50',	'Nueva Versión 9',	0,	0,	1,	1,	3,	0,	NULL),
(149,	10,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-06-08 10:38:26',	'Nueva Versión 10',	0,	0,	2,	2,	3,	0,	NULL),
(149,	11,	'Footer Navigation',	'footer-navigation',	NULL,	'2016-05-19 10:30:21',	'2016-06-08 10:40:23',	'Nueva Versión 11',	1,	0,	2,	2,	3,	0,	NULL),
(150,	1,	'Footer Contact',	'footer-contact',	NULL,	'2016-05-19 10:30:21',	'2016-05-19 10:30:21',	'Initial Version',	0,	0,	1,	NULL,	3,	0,	NULL),
(150,	2,	'Footer Contact',	'footer-contact',	NULL,	'2016-05-19 10:30:21',	'2016-05-20 07:22:47',	'Nueva Versión 2',	0,	0,	1,	1,	3,	0,	NULL),
(150,	3,	'Footer Contact',	'footer-contact',	NULL,	'2016-05-19 10:30:21',	'2016-05-26 10:55:33',	'Nueva Versión 3',	1,	0,	1,	1,	3,	0,	NULL),
(151,	1,	'Search',	'search',	NULL,	'2016-05-20 07:20:31',	'2016-05-20 07:20:31',	'Initial Version',	0,	0,	1,	NULL,	3,	0,	NULL),
(151,	2,	'Search',	'search',	NULL,	'2016-05-20 07:20:31',	'2016-05-20 07:21:25',	'Nueva Versión 2',	0,	0,	1,	1,	3,	0,	NULL),
(151,	3,	'Search',	'search',	NULL,	'2016-05-20 07:20:31',	'2016-05-20 07:21:36',	'Nueva Versión 3',	0,	0,	1,	1,	3,	0,	NULL),
(151,	4,	'Search',	'search',	NULL,	'2016-05-20 07:20:31',	'2016-05-20 07:21:47',	'Nueva Versión 4',	0,	0,	1,	1,	3,	0,	NULL),
(151,	5,	'Search',	'search',	NULL,	'2016-05-20 07:20:31',	'2016-05-20 07:21:52',	'Nueva Versión 5',	0,	0,	1,	1,	3,	0,	NULL),
(151,	6,	'Search',	'search',	NULL,	'2016-05-20 07:20:31',	'2016-05-23 14:48:54',	'Nueva Versión 6',	0,	0,	1,	NULL,	3,	0,	NULL),
(151,	7,	'Search',	'search',	NULL,	'2016-05-20 07:20:31',	'2016-05-23 14:49:30',	'Nueva Versión 7',	0,	0,	1,	1,	3,	0,	NULL),
(151,	8,	'Search',	'search',	NULL,	'2016-05-20 07:20:31',	'2016-05-23 14:50:05',	'Nueva Versión 8',	0,	0,	1,	1,	3,	0,	NULL),
(151,	9,	'Search',	'search',	NULL,	'2016-05-20 07:20:31',	'2016-05-24 09:00:17',	'Nueva Versión 9',	0,	0,	1,	1,	3,	0,	NULL),
(151,	10,	'Search',	'search',	NULL,	'2016-05-20 07:20:31',	'2016-05-26 10:55:20',	'Nueva Versión 10',	1,	0,	1,	1,	3,	0,	NULL),
(152,	1,	'',	'',	NULL,	'2016-05-23 14:12:33',	'2016-05-23 14:12:33',	'Initial Version',	0,	1,	1,	NULL,	3,	5,	NULL),
(153,	1,	'',	'',	NULL,	'2016-05-23 14:14:01',	'2016-05-23 14:14:01',	'Initial Version',	0,	1,	1,	NULL,	3,	5,	NULL),
(154,	1,	'',	NULL,	NULL,	'2016-05-23 14:20:21',	'2016-05-23 14:20:21',	'Initial Version',	1,	0,	NULL,	NULL,	0,	6,	NULL),
(156,	1,	'Noticias',	'noticias',	'',	'2016-05-23 14:52:46',	'2016-05-23 14:52:46',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(156,	2,	'Noticias',	'noticias',	'',	'2016-05-23 14:52:46',	'2016-05-23 15:33:12',	'Version 2',	0,	0,	1,	1,	3,	6,	NULL),
(156,	3,	'Noticias',	'noticias',	'',	'2016-05-23 14:52:46',	'2016-05-23 15:39:56',	'Version 3',	0,	0,	1,	1,	3,	6,	NULL),
(156,	4,	'Noticias',	'noticias',	'',	'2016-05-23 14:52:46',	'2016-05-24 09:01:24',	'Version 4',	1,	0,	1,	1,	3,	6,	NULL),
(157,	1,	'',	NULL,	NULL,	'2016-05-23 15:09:38',	'2016-05-23 15:09:38',	'Initial Version',	1,	0,	NULL,	NULL,	0,	6,	NULL),
(160,	1,	'noticia 1',	'noticia-1',	'lorem ipsun',	'2016-05-24 08:23:00',	'2016-05-24 08:23:50',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(160,	2,	'noticia 1',	'noticia-1',	'lorem ipsun',	'2016-05-24 08:23:00',	'2016-05-24 08:25:26',	'Version 2',	0,	0,	1,	1,	3,	6,	NULL),
(160,	3,	'noticia 1',	'noticia-1',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-05-24 08:23:00',	'2016-06-02 09:58:07',	'Nueva Versión 3',	0,	0,	1,	1,	3,	6,	NULL),
(160,	4,	'noticia 1',	'noticia-1',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-05-24 08:23:00',	'2016-06-02 09:59:11',	'Version 4',	0,	0,	1,	1,	3,	6,	NULL),
(160,	5,	'Noticia de prueba 1',	'noticia-1',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-05-24 08:23:00',	'2016-06-02 10:22:52',	'Nueva Versión 5',	1,	0,	1,	1,	3,	6,	NULL),
(161,	1,	'Noticia 2',	'noticia-2',	'descripcion',	'2016-05-24 08:28:00',	'2016-05-24 08:28:28',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(161,	2,	'Noticia 2',	'noticia-2',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-05-24 08:28:00',	'2016-06-02 09:58:03',	'Nueva Versión 2',	0,	0,	1,	1,	3,	6,	NULL),
(161,	3,	'Noticia 2',	'noticia-2',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-05-24 08:28:00',	'2016-06-02 10:00:25',	'Nueva Versión 3',	0,	0,	1,	1,	3,	6,	NULL),
(161,	4,	'Noticia de prueba 2',	'noticia-2',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-05-24 08:28:00',	'2016-06-02 10:22:53',	'Nueva Versión 4',	1,	0,	1,	1,	3,	6,	NULL),
(162,	1,	'noticia 4',	'noticia-4',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n',	'2016-05-24 08:43:00',	'2016-05-24 08:43:18',	'Initial Version',	0,	0,	3,	3,	3,	6,	NULL),
(162,	2,	'noticia 4',	'noticia-4',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n',	'2016-05-24 08:43:00',	'2016-06-02 09:58:02',	'Version 2',	0,	0,	1,	1,	3,	6,	NULL),
(162,	3,	'Noticia de prueba 3',	'noticia-4',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n',	'2016-05-24 08:43:00',	'2016-06-02 10:22:54',	'Nueva Versión 3',	1,	0,	1,	1,	3,	6,	NULL),
(163,	1,	'Event Calendar',	'event_calendar',	NULL,	'2016-05-24 08:53:55',	'2016-05-24 08:53:55',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(164,	1,	'Calendars list',	'list_calendar',	'',	'2016-05-24 08:53:56',	'2016-05-24 08:53:56',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(165,	1,	'Events list',	'list_event',	'',	'2016-05-24 08:53:56',	'2016-05-24 08:53:56',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(166,	1,	'Add / edit calendar',	'calendar',	'',	'2016-05-24 08:53:56',	'2016-05-24 08:53:56',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(167,	1,	'Add / edit event',	'event',	'',	'2016-05-24 08:53:57',	'2016-05-24 08:53:57',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(168,	1,	'Type of events',	'types',	'',	'2016-05-24 08:53:57',	'2016-05-24 08:53:57',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(169,	1,	'Settings',	'settings',	'',	'2016-05-24 08:53:57',	'2016-05-24 08:53:57',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(170,	1,	'Open Data',	'open_data',	NULL,	'2016-05-24 08:54:04',	'2016-05-24 08:54:04',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(171,	1,	'Listar Catálogos',	'list_catalog',	'',	'2016-05-24 08:54:04',	'2016-05-24 08:54:04',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(172,	1,	'Agregar/Editar Catálogo',	'catalog',	'',	'2016-05-24 08:54:05',	'2016-05-24 08:54:05',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(173,	1,	'Listar Conjuntos de Datos',	'list_datasets',	'',	'2016-05-24 08:54:05',	'2016-05-24 08:54:05',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(174,	1,	'Agregar/Editar Conjunto de Datos',	'datasets',	'',	'2016-05-24 08:54:06',	'2016-05-24 08:54:06',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(175,	1,	'Tipo de Archivos',	'types',	'',	'2016-05-24 08:54:06',	'2016-05-24 08:54:06',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(176,	1,	'Agregar/Editar Recursos',	'resource',	'',	'2016-05-24 08:54:06',	'2016-05-24 08:54:06',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(177,	1,	'Agregar/Editar Archivos',	'files',	'',	'2016-05-24 08:54:08',	'2016-05-24 08:54:08',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(178,	1,	'Listar Recursos',	'list_resource',	'',	'2016-05-24 08:54:08',	'2016-05-24 08:54:08',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(179,	1,	'Agregar Diccionario',	'dictionary',	'',	'2016-05-24 08:54:09',	'2016-05-24 08:54:09',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(180,	1,	'Listar Diccionario',	'list_dictionary',	'',	'2016-05-24 08:54:10',	'2016-05-24 08:54:10',	'Initial Version',	1,	0,	1,	NULL,	3,	0,	NULL),
(181,	1,	'Buscador',	'buscador',	'',	'2016-05-24 08:55:39',	'2016-05-24 08:55:39',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(181,	2,	'Buscador',	'buscador',	'',	'2016-05-24 08:55:39',	'2016-05-24 08:56:03',	'Nueva Versión 2',	0,	0,	1,	1,	3,	6,	NULL),
(181,	3,	'Buscador',	'buscador',	'',	'2016-05-24 08:55:39',	'2016-05-24 08:56:10',	'Nueva Versión 3',	0,	0,	1,	1,	3,	6,	NULL),
(181,	4,	'Buscador',	'buscador',	'',	'2016-05-24 08:55:00',	'2016-05-24 08:56:51',	'Nueva Versión 4',	0,	0,	1,	1,	3,	6,	NULL),
(181,	5,	'Buscador',	'buscador',	'',	'2016-05-24 08:55:00',	'2016-05-24 08:59:41',	'Version 5',	0,	0,	1,	1,	3,	6,	NULL),
(181,	6,	'Buscador',	'buscador',	'',	'2016-05-24 08:55:00',	'2016-05-24 09:00:17',	'Version 6',	1,	0,	1,	1,	3,	6,	NULL),
(182,	1,	'Institución',	'institucion',	'',	'2016-05-24 09:16:47',	'2016-05-24 09:16:47',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(182,	2,	'Institución',	'institucion',	'',	'2016-05-24 09:16:47',	'2016-05-24 09:18:06',	'Version 2',	0,	0,	1,	1,	3,	6,	NULL),
(182,	3,	'Institución',	'institucion',	'',	'2016-05-24 09:16:47',	'2016-05-24 09:21:19',	'Version 3',	0,	0,	1,	1,	3,	6,	NULL),
(182,	4,	'Institución',	'institucion',	'',	'2016-05-24 09:16:47',	'2016-05-24 09:29:49',	'Version 4',	0,	0,	1,	1,	3,	6,	NULL),
(182,	5,	'Institución',	'institucion',	'',	'2016-05-24 09:16:47',	'2016-06-02 14:09:08',	'Version 5',	1,	0,	1,	1,	3,	6,	NULL),
(183,	1,	'Misión y Visión',	'mision-y-vision',	'',	'2016-05-24 09:19:57',	'2016-05-24 09:19:57',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(183,	2,	'Misión y Visión',	'mision-y-vision',	'',	'2016-05-24 09:19:57',	'2016-05-24 09:23:13',	'Version 2',	0,	0,	1,	1,	3,	6,	NULL),
(183,	3,	'Misión y Visión',	'mision-y-vision',	'',	'2016-05-24 09:19:57',	'2016-05-24 09:28:05',	'Version 3',	0,	0,	1,	1,	3,	6,	NULL),
(183,	4,	'Misión y Visión',	'mision-y-vision',	'',	'2016-05-24 09:19:57',	'2016-05-24 09:29:30',	'Version 4',	1,	0,	1,	1,	3,	6,	NULL),
(184,	1,	'Organigrama',	'organigrama',	'',	'2016-05-24 09:30:13',	'2016-05-24 09:30:13',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(184,	2,	'Organigrama',	'organigrama',	'',	'2016-05-24 09:30:13',	'2016-05-24 09:30:45',	'Version 2',	0,	0,	1,	1,	3,	6,	NULL),
(184,	3,	'Organigrama',	'organigrama',	'',	'2016-05-24 09:30:13',	'2016-06-02 14:09:42',	'Version 3',	1,	0,	1,	1,	3,	6,	NULL),
(185,	1,	'Marco Legal',	'marco-legal',	'',	'2016-05-24 09:33:23',	'2016-05-24 09:33:23',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(185,	2,	'Marco Legal',	'marco-legal',	'',	'2016-05-24 09:33:23',	'2016-05-24 10:00:42',	'Nueva Versión 2',	0,	0,	1,	1,	3,	6,	NULL),
(185,	3,	'Marco Legal',	'marco-legal',	'',	'2016-05-24 09:33:23',	'2016-05-24 10:01:10',	'Version 3',	1,	0,	1,	1,	3,	6,	NULL),
(186,	1,	'Autoridades',	'autoridades',	'',	'2016-05-24 10:05:14',	'2016-05-24 10:05:14',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(186,	2,	'Autoridades',	'autoridades',	'',	'2016-05-24 10:05:14',	'2016-05-24 10:05:40',	'Version 2',	1,	0,	1,	1,	3,	6,	NULL),
(187,	1,	'Agenda',	'agenda',	'',	'2016-05-24 10:41:39',	'2016-05-24 10:41:39',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(187,	2,	'Agenda',	'agenda',	'',	'2016-05-24 10:41:39',	'2016-05-24 11:01:11',	'Version 2',	1,	0,	1,	1,	3,	6,	NULL),
(188,	1,	'Galería',	'galeria',	'',	'2016-05-24 11:01:32',	'2016-05-24 11:01:32',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(188,	2,	'Galería',	'galeria',	'',	'2016-05-24 11:01:32',	'2016-06-02 10:55:44',	'Version 2',	1,	0,	1,	1,	3,	6,	NULL),
(189,	1,	'Transparencia',	'transparencia',	'',	'2016-05-24 11:12:08',	'2016-05-24 11:12:08',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(189,	2,	'Transparencia',	'transparencia',	'',	'2016-05-24 11:12:08',	'2016-06-02 09:56:10',	'Version 2',	1,	0,	1,	1,	3,	6,	NULL),
(190,	1,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-05-24 11:12:24',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(190,	2,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-05-24 11:12:56',	'Version 2',	0,	0,	1,	1,	3,	6,	NULL),
(190,	3,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-05-24 11:16:50',	'Version 3',	0,	0,	1,	1,	3,	6,	NULL),
(190,	4,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-05-24 11:20:08',	'Version 4',	0,	0,	1,	1,	3,	6,	NULL),
(190,	5,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-05-24 11:21:02',	'Version 5',	0,	0,	1,	1,	3,	6,	NULL),
(190,	6,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-06-02 11:35:54',	'Version 6',	0,	0,	1,	1,	3,	6,	NULL),
(190,	7,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-06-02 13:57:08',	'Version 7',	0,	0,	1,	1,	3,	6,	NULL),
(190,	8,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-06-02 14:01:02',	'Version 8',	0,	0,	1,	1,	3,	6,	NULL),
(190,	9,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-06-02 14:03:16',	'Version 9',	0,	0,	1,	1,	3,	6,	NULL),
(190,	10,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-06-02 14:04:16',	'Version 10',	0,	0,	1,	1,	3,	6,	NULL),
(190,	11,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-06-02 14:04:30',	'Version 11',	0,	0,	1,	1,	3,	6,	NULL),
(190,	12,	'Contacto',	'contacto',	'',	'2016-05-24 11:12:24',	'2016-06-02 14:07:41',	'Version 12',	1,	0,	1,	1,	3,	6,	NULL),
(191,	1,	'Trámites',	'tramites',	'',	'2016-06-02 09:24:53',	'2016-06-02 09:24:53',	'Initial Version',	1,	0,	1,	1,	3,	6,	NULL),
(192,	1,	'Servicios',	'servicios',	'',	'2016-06-02 09:27:57',	'2016-06-02 09:27:57',	'Initial Version',	1,	0,	1,	1,	3,	6,	NULL),
(193,	1,	'Compras Públicas',	'compras-publicas',	'',	'2016-06-02 09:28:31',	'2016-06-02 09:28:31',	'Initial Version',	1,	0,	1,	1,	3,	6,	NULL),
(194,	1,	'Datos',	'datos',	'',	'2016-06-02 09:49:10',	'2016-06-02 09:49:10',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(194,	2,	'Datos',	'datos',	'',	'2016-06-02 09:49:10',	'2016-06-02 09:52:38',	'Version 2',	1,	0,	1,	1,	3,	6,	NULL),
(195,	1,	'',	NULL,	NULL,	'2016-06-02 10:28:41',	'2016-06-02 10:28:41',	'Initial Version',	1,	0,	NULL,	NULL,	0,	6,	NULL),
(196,	1,	'Noticia de prueba 4',	'noticia-de-prueba-4',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 10:52:00',	'2016-06-02 10:52:18',	'Initial Version',	1,	0,	1,	1,	3,	6,	NULL),
(197,	1,	'Galería de Imágenes',	'galeria-de-imagenes',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 10:56:14',	'2016-06-02 10:56:14',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(197,	2,	'Galería de Imágenes',	'galeria-de-imagenes',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 10:56:14',	'2016-06-02 11:03:32',	'Version 2',	0,	0,	1,	1,	3,	6,	NULL),
(197,	3,	'Galería de Imágenes',	'galeria-de-imagenes',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 10:56:00',	'2016-06-02 11:04:22',	'Nueva Versión 3',	0,	0,	1,	1,	3,	6,	NULL),
(197,	4,	'Galería de Imágenes',	'galeria-de-imagenes',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 10:56:00',	'2016-06-02 11:30:27',	'Version 4',	0,	0,	1,	1,	3,	6,	NULL),
(197,	5,	'Galería de Imágenes',	'galeria-de-imagenes',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 10:56:00',	'2016-06-02 11:30:43',	'Version 5',	0,	0,	1,	1,	3,	6,	NULL),
(197,	6,	'Galería de Imágenes',	'galeria-de-imagenes',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 10:56:00',	'2016-06-02 13:28:15',	'Version 6',	0,	0,	1,	1,	3,	6,	NULL),
(197,	7,	'Galería de Imágenes',	'galeria-de-imagenes',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 10:56:00',	'2016-06-02 13:28:40',	'Version 7',	0,	0,	1,	1,	3,	6,	NULL),
(197,	8,	'Galería de Imágenes',	'galeria-de-imagenes',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 10:56:00',	'2016-06-02 13:29:01',	'Version 8',	1,	0,	1,	1,	3,	6,	NULL),
(198,	1,	'Galería de Videos',	'galeria-de-videos',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 11:05:43',	'2016-06-02 11:05:43',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(198,	2,	'Galería de Videos',	'galeria-de-videos',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 11:05:43',	'2016-06-02 11:06:29',	'Version 2',	1,	0,	1,	1,	3,	6,	NULL),
(199,	1,	'Galería de Eventos',	'galeria-de-eventos',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 11:26:57',	'2016-06-02 11:26:57',	'Initial Version',	0,	0,	1,	1,	3,	6,	NULL),
(199,	2,	'Galería de Eventos',	'galeria-de-eventos',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2016-06-02 11:26:57',	'2016-06-02 11:29:40',	'Version 2',	1,	0,	1,	1,	3,	6,	NULL),
(200,	1,	'MECIP',	'mecip',	'',	'2016-06-02 11:52:30',	'2016-06-02 11:52:30',	'Initial Version',	1,	0,	1,	1,	3,	6,	NULL),
(201,	1,	'Noticia de prueba 5',	'noticia-de-prueba-5',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n',	'2016-06-02 14:16:00',	'2016-06-02 14:16:14',	'Initial Version',	1,	0,	3,	3,	3,	6,	NULL);

DROP TABLE IF EXISTS `CollectionVersionThemeCustomStyles`;
CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Config`;
CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Config` (`configNamespace`, `configGroup`, `configItem`, `configValue`) VALUES
('',	'concrete',	'security.token.encryption',	'UQTD6Oyby1c80M8nlV6mHAmjr0H9yfeomXa3MkOMDlZJ1OnzsAr9GT7B7Y9rjXmY'),
('',	'concrete',	'security.token.jobs',	'Ll3G23fNtYywc2QW7zCc7zuaQ0SZownW8cU6slSU3nwJrenArY41F1cP0tPKi7ES'),
('',	'concrete',	'security.token.validation',	'HY48tYQXmKQVYoSyFlAbSnTDrkUr49JjOwwKERf5FU1XBFJeqBHlS209j49V3fxW');

DROP TABLE IF EXISTS `ConfigStore`;
CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConfigStore` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('MAIN_HELP_LAST_VIEWED',	'2016-05-19 14:30:21',	'1463668221',	1,	0),
('MAIN_HELP_LAST_VIEWED',	'2016-06-07 17:35:52',	'1465320952',	2,	0),
('MAIN_HELP_LAST_VIEWED',	'2016-05-24 12:42:55',	'1464093775',	3,	0),
('NEWSFLOW_LAST_VIEWED',	'2016-05-19 14:28:57',	'1464980865',	1,	0),
('NEWSFLOW_LAST_VIEWED',	'2016-06-07 17:35:53',	'1465320953',	2,	0);

DROP TABLE IF EXISTS `ConversationDiscussions`;
CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationEditors`;
CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConversationEditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
(1,	'plain_text',	'Plain Text',	1,	0),
(2,	'markdown',	'Markdown',	0,	0),
(3,	'redactor',	'Redactor',	0,	0);

DROP TABLE IF EXISTS `ConversationFeatureDetailAssignments`;
CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationFlaggedMessages`;
CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationFlaggedMessageTypes`;
CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConversationFlaggedMessageTypes` (`cnvMessageFlagTypeID`, `cnvMessageFlagTypeHandle`) VALUES
(1,	'spam');

DROP TABLE IF EXISTS `ConversationMessageAttachments`;
CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationMessageRatings`;
CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationMessages`;
CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0',
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationPermissionAddMessageAccessList`;
CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationPermissionAssignments`;
CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConversationPermissionAssignments` (`cnvID`, `pkID`, `paID`) VALUES
(0,	66,	94),
(0,	67,	95),
(0,	70,	96),
(0,	69,	97),
(0,	71,	98),
(0,	68,	99),
(0,	72,	100),
(0,	73,	101);

DROP TABLE IF EXISTS `ConversationRatingTypes`;
CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConversationRatingTypes` (`cnvRatingTypeID`, `cnvRatingTypeHandle`, `cnvRatingTypeName`, `cnvRatingTypeCommunityPoints`, `pkgID`) VALUES
(1,	'up_vote',	'Up Vote',	1,	0),
(2,	'down_vote',	'Down Vote',	0,	0);

DROP TABLE IF EXISTS `Conversations`;
CREATE TABLE `Conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `ConversationSubscriptions`;
CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ConversationSubscriptions` (`cnvID`, `uID`, `type`) VALUES
(0,	1,	'S');

DROP TABLE IF EXISTS `DownloadStatistics`;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `DownloadStatistics` (`dsID`, `fID`, `fvID`, `uID`, `rcID`, `timestamp`) VALUES
(1,	6,	1,	1,	0,	'2016-06-02 15:41:27');

DROP TABLE IF EXISTS `dsEventCalendar`;
CREATE TABLE `dsEventCalendar` (
  `calendarID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`calendarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsEventCalendar` (`calendarID`, `title`) VALUES
(1,	'Calendario Institución');

DROP TABLE IF EXISTS `dsEventCalendarEvents`;
CREATE TABLE `dsEventCalendarEvents` (
  `eventID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calendarID` int(10) unsigned DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `allDayEvent` int(11) DEFAULT '0',
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `dsEventCalendarSettings`;
CREATE TABLE `dsEventCalendarSettings` (
  `settingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`settingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsEventCalendarSettings` (`settingID`, `opt`, `value`) VALUES
(1,	'lang',	'en-gb'),
(2,	'lang_datepicker',	'en-GB'),
(3,	'formatEvent',	'DD MMMM YYYY'),
(4,	'startFrom',	'1'),
(5,	'eventsInDay',	'3'),
(6,	'default_color',	'#808080'),
(7,	'timeFormat',	'HH:mm'),
(8,	'scrollTime',	'1'),
(9,	'scrollMonth',	'1'),
(10,	'scrollInput',	'1');

DROP TABLE IF EXISTS `dsEventCalendarTypes`;
CREATE TABLE `dsEventCalendarTypes` (
  `typeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `dsOpenData`;
CREATE TABLE `dsOpenData` (
  `opendataID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `email_organization` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`opendataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsOpenData` (`opendataID`, `title`, `organization`, `url`, `email_organization`, `date_created`) VALUES
(1,	'Datos',	'Senatics',	'http://www.senatics.gov.py/',	'soporteportales@senatics.gov.py',	'2016-06-02 13:50:00'),
(2,	'Transparencia',	'Senatics',	'http://www.senatics.gov.py/',	'soporteportales@senatics.gov.py',	'2016-06-02 13:53:48');

DROP TABLE IF EXISTS `dsOpenDataDataset`;
CREATE TABLE `dsOpenDataDataset` (
  `datasetsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opendataID` int(10) unsigned DEFAULT NULL,
  `dictionaryID` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `url_download_page` text COLLATE utf8_unicode_ci,
  `author` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_author` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseID` int(10) unsigned DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`datasetsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsOpenDataDataset` (`datasetsID`, `opendataID`, `dictionaryID`, `title`, `description`, `url_download_page`, `author`, `email_author`, `licenseID`, `tags`, `version`) VALUES
(1,	1,	2,	'Conjunto de Datos Ejemplo',	'',	'http://www.senatics.gov.py/consultas',	'',	'',	2,	'',	''),
(2,	2,	NULL,	'Estructura Orgánica',	'',	'http://www.senatics.gov.py/transparencia',	'',	'',	2,	'',	'');

DROP TABLE IF EXISTS `dsOpenDataDictionary`;
CREATE TABLE `dsOpenDataDictionary` (
  `dictionaryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datasetsID` int(10) unsigned DEFAULT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_label` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `example` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datatype` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardinality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restrictions` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `equivalent_property` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`dictionaryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsOpenDataDictionary` (`dictionaryID`, `datasetsID`, `column_name`, `property_name`, `alternative_label`, `example`, `datatype`, `cardinality`, `format`, `restrictions`, `description`, `equivalent_property`) VALUES
(1,	1,	'Nombre Columna',	'',	'',	'',	'integer',	'0',	'',	'',	'',	''),
(2,	1,	'Nombre Columna 2',	'',	'',	'',	'string',	'0',	'',	'',	'',	'');

DROP TABLE IF EXISTS `dsOpenDataFile`;
CREATE TABLE `dsOpenDataFile` (
  `fileID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resourceID` int(10) unsigned DEFAULT NULL,
  `formatID` int(10) unsigned DEFAULT NULL,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `target` smallint(5) unsigned DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fileID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsOpenDataFile` (`fileID`, `resourceID`, `formatID`, `externalLink`, `internalLinkCID`, `target`, `level`, `fID`) VALUES
(1,	1,	12,	'',	0,	1,	1,	6),
(2,	2,	12,	'',	0,	1,	1,	6);

DROP TABLE IF EXISTS `dsOpenDataFormat`;
CREATE TABLE `dsOpenDataFormat` (
  `formatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`formatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsOpenDataFormat` (`formatID`, `description`) VALUES
(1,	'CSV'),
(2,	'TSV'),
(3,	'JSON'),
(4,	'PDF'),
(5,	'XLS'),
(6,	'XLSX'),
(7,	'XML'),
(8,	'TSV'),
(9,	'DOC'),
(10,	'HTML'),
(11,	'KML'),
(12,	'JPG'),
(13,	'PNG'),
(14,	'SVG'),
(15,	'GIF'),
(16,	'RDF'),
(17,	'RTF'),
(18,	'TXT'),
(19,	'Shapefile'),
(20,	'GeoJSON');

DROP TABLE IF EXISTS `dsOpenDataLicense`;
CREATE TABLE `dsOpenDataLicense` (
  `licenseID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `license_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`licenseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsOpenDataLicense` (`licenseID`, `license_name`, `code_license`) VALUES
(1,	'Atribución CC BY',	'https://creativecommons.org/licenses/by/4.0/legalcode'),
(2,	'Atribución-CompartirIgual CC BY-SA',	'https://creativecommons.org/licenses/by-sa/4.0/legalcode'),
(3,	'Atribución-SinDerivadas CC BY-ND ',	'https://creativecommons.org/licenses/by-nd/4.0/legalcode'),
(4,	'Atribución-NoComercial CC BY-NC ',	'https://creativecommons.org/licenses/by-nc/4.0/legalcode'),
(5,	'Atribución-NoComercial-CompartirIgual CC BY-NC-SA ',	'https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode'),
(6,	'Atribución-NoComercial-SinDerivadas CC BY-NC-ND ',	'https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode');

DROP TABLE IF EXISTS `dsOpenDataResource`;
CREATE TABLE `dsOpenDataResource` (
  `resourceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datasetsID` int(10) unsigned DEFAULT NULL,
  `resource_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`resourceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsOpenDataResource` (`resourceID`, `datasetsID`, `resource_title`, `description`) VALUES
(1,	1,	'Organigrama marzo 2016',	''),
(2,	2,	'Organigrama 2016',	'');

DROP TABLE IF EXISTS `dsOpenDataSettings`;
CREATE TABLE `dsOpenDataSettings` (
  `settingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`settingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `FeatureAssignments`;
CREATE TABLE `FeatureAssignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FeatureAssignments` (`faID`, `feID`, `fcID`, `fdObject`) VALUES
(1,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:46:\"/application/files/6814/6374/3266/Logotipo.png\";s:8:\"\0*\0width\";d:400;s:9:\"\0*\0height\";d:140;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(2,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:69:\"/application/files/8814/6374/3281/Gobierno-Logo-Espanol---Guarani.png\";s:8:\"\0*\0width\";d:244;s:9:\"\0*\0height\";d:95;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(3,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:70:\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\";s:8:\"\0*\0width\";d:300;s:9:\"\0*\0height\";d:64;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(4,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:69:\"/application/files/7414/6402/9330/Gobierno-Logo-Espanol---Guarani.png\";s:8:\"\0*\0width\";d:600;s:9:\"\0*\0height\";d:229;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(5,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:69:\"/application/files/1414/6402/9367/Gobierno-Logo-Espanol---Guarani.png\";s:8:\"\0*\0width\";d:244;s:9:\"\0*\0height\";d:95;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(6,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:69:\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\";s:8:\"\0*\0width\";d:600;s:9:\"\0*\0height\";d:229;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(7,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:49:\"/application/files/5814/6409/6754/Organigrama.jpg\";s:8:\"\0*\0width\";d:2072;s:9:\"\0*\0height\";d:1242;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(8,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:46:\"/application/files/6814/6374/3266/Logotipo.png\";s:8:\"\0*\0width\";d:400;s:9:\"\0*\0height\";d:140;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(9,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:69:\"/application/files/7914/6402/9403/Gobierno-Logo-Espanol---Guarani.png\";s:8:\"\0*\0width\";d:600;s:9:\"\0*\0height\";d:229;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(10,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:70:\"/application/files/2414/6374/3363/Logo-de-la-SENATICS-en-alfacolor.png\";s:8:\"\0*\0width\";d:300;s:9:\"\0*\0height\";d:64;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}');

DROP TABLE IF EXISTS `FeatureCategories`;
CREATE TABLE `FeatureCategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FeatureCategories` (`fcID`, `fcHandle`, `pkgID`) VALUES
(1,	'collection_version',	0),
(2,	'gathering_item',	0);

DROP TABLE IF EXISTS `Features`;
CREATE TABLE `Features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Features` (`feID`, `feHandle`, `feScore`, `feHasCustomClass`, `pkgID`) VALUES
(1,	'title',	1,	0,	0),
(2,	'link',	1,	0,	0),
(3,	'author',	1,	0,	0),
(4,	'date_time',	1,	0,	0),
(5,	'image',	500,	1,	0),
(6,	'conversation',	10,	1,	0),
(7,	'description',	1,	0,	0),
(8,	'featured',	1000,	0,	0);

DROP TABLE IF EXISTS `FileAttributeValues`;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileAttributeValues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1,	1,	14,	118),
(1,	1,	15,	119),
(2,	1,	14,	120),
(2,	1,	15,	121),
(3,	1,	14,	122),
(3,	1,	15,	123),
(2,	2,	14,	128),
(2,	2,	15,	129),
(2,	3,	14,	130),
(2,	3,	15,	131),
(2,	4,	14,	132),
(2,	4,	15,	133),
(2,	5,	14,	134),
(2,	5,	15,	135),
(4,	1,	14,	142),
(4,	1,	15,	143),
(5,	1,	14,	144),
(5,	1,	15,	145),
(6,	1,	14,	181),
(6,	1,	15,	182),
(7,	1,	14,	190),
(7,	1,	15,	191),
(8,	1,	14,	192),
(8,	1,	15,	193),
(9,	1,	14,	194),
(9,	1,	15,	195),
(10,	1,	14,	199),
(10,	1,	15,	200),
(11,	1,	14,	201),
(11,	1,	15,	202),
(12,	1,	14,	203),
(12,	1,	15,	204),
(13,	1,	14,	205),
(13,	1,	15,	206),
(20,	1,	14,	241),
(20,	1,	15,	242),
(21,	1,	14,	243),
(21,	1,	15,	244),
(22,	1,	14,	245),
(22,	1,	15,	246),
(23,	1,	14,	247),
(23,	1,	15,	248),
(24,	1,	14,	249),
(24,	1,	15,	250),
(25,	1,	14,	251),
(25,	1,	15,	252),
(26,	1,	14,	253),
(26,	1,	15,	254),
(27,	1,	14,	255),
(27,	1,	15,	256),
(28,	1,	14,	257),
(28,	1,	15,	258),
(29,	1,	14,	259),
(29,	1,	15,	260),
(30,	1,	14,	261),
(30,	1,	15,	262),
(31,	1,	14,	263),
(31,	1,	15,	264),
(32,	1,	14,	265),
(32,	1,	15,	266),
(32,	2,	14,	267),
(32,	2,	15,	268),
(31,	2,	14,	269),
(31,	2,	15,	270),
(30,	2,	14,	271),
(30,	2,	15,	272),
(29,	2,	14,	273),
(29,	2,	15,	274),
(28,	2,	14,	275),
(28,	2,	15,	276),
(27,	2,	14,	277),
(27,	2,	15,	278),
(26,	2,	14,	279),
(26,	2,	15,	280),
(25,	2,	14,	281),
(25,	2,	15,	282),
(24,	2,	14,	283),
(24,	2,	15,	284),
(23,	2,	14,	285),
(23,	2,	15,	286),
(22,	2,	14,	287),
(22,	2,	15,	288),
(21,	2,	14,	289),
(21,	2,	15,	290),
(20,	2,	14,	291),
(20,	2,	15,	292),
(33,	1,	14,	297),
(33,	1,	15,	298),
(34,	1,	14,	303),
(34,	1,	15,	304),
(35,	1,	14,	306),
(35,	1,	15,	307),
(36,	1,	14,	308),
(36,	1,	15,	309),
(37,	1,	14,	311),
(37,	1,	15,	312),
(9,	2,	14,	313),
(9,	2,	15,	314),
(8,	2,	14,	315),
(8,	2,	15,	316),
(9,	3,	14,	317),
(9,	3,	15,	318),
(8,	3,	14,	319),
(8,	3,	15,	320),
(9,	4,	14,	321),
(9,	4,	15,	322),
(8,	4,	14,	323),
(8,	4,	15,	324);

DROP TABLE IF EXISTS `FileImageThumbnailPaths`;
CREATE TABLE `FileImageThumbnailPaths` (
  `fileID` int(10) unsigned NOT NULL,
  `fileVersionID` int(10) unsigned NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageLocationID` int(10) unsigned NOT NULL,
  `path` longtext COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `thumbnailPathID` (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileImageThumbnailPaths` (`fileID`, `fileVersionID`, `thumbnailTypeHandle`, `storageLocationID`, `path`) VALUES
(6,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/5814/6409/6754/Organigrama.jpg'),
(6,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/5814/6409/6754/Organigrama.jpg'),
(23,	2,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/8114/6487/8972/14_-_18.jpg'),
(23,	2,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/8114/6487/8972/14_-_18.jpg'),
(24,	2,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/4914/6487/8956/14_-_22.jpg'),
(24,	2,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/4914/6487/8956/14_-_22.jpg'),
(25,	2,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/3614/6487/8942/14_-_75.jpg'),
(25,	2,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/3614/6487/8942/14_-_75.jpg'),
(26,	2,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/1614/6487/8924/14_-_77.jpg'),
(26,	2,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/1614/6487/8924/14_-_77.jpg'),
(27,	2,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/1114/6487/8908/14_-_113.jpg'),
(27,	2,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/1114/6487/8908/14_-_113.jpg'),
(28,	2,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/7414/6487/8895/14_-_127.jpg'),
(28,	2,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/7414/6487/8895/14_-_127.jpg'),
(29,	2,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/4614/6487/8881/14_-_138.jpg'),
(29,	2,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/4614/6487/8881/14_-_138.jpg'),
(30,	2,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/4114/6487/8858/14_-_102.jpg'),
(30,	2,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/4114/6487/8858/14_-_102.jpg'),
(31,	2,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/8414/6487/8789/14_-_45.jpg'),
(31,	2,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/8414/6487/8789/14_-_45.jpg'),
(32,	2,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/9814/6487/8767/14_-_31.jpg'),
(32,	2,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/9814/6487/8767/14_-_31.jpg'),
(33,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/9614/6487/9425/noticias.jpg'),
(33,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/9614/6487/9425/noticias.jpg'),
(34,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/6414/6487/9962/video.jpg'),
(34,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/6414/6487/9962/video.jpg'),
(35,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/5514/6488/1250/camera.jpg'),
(35,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/5514/6488/1250/camera.jpg'),
(36,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/1414/6488/2186/newspaper.jpg'),
(36,	1,	'file_manager_listing_2x',	1,	'/1414/6488/2186/newspaper.png'),
(37,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/5614/6488/3225/ENCABEZADO_1-sin_logos.jpg'),
(37,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/5614/6488/3225/ENCABEZADO_1-sin_logos.jpg');

DROP TABLE IF EXISTS `FileImageThumbnailTypes`;
CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileImageThumbnailTypes` (`ftTypeID`, `ftTypeHandle`, `ftTypeName`, `ftTypeWidth`, `ftTypeHeight`, `ftTypeIsRequired`) VALUES
(1,	'file_manager_listing',	'File Manager Thumbnails',	60,	60,	1),
(2,	'file_manager_detail',	'File Manager Detail Thumbnails',	400,	NULL,	1);

DROP TABLE IF EXISTS `FilePermissionAssignments`;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `FilePermissionFileTypes`;
CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Files`;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(1,	'2016-05-20 07:21:06',	1,	1,	0,	0,	NULL),
(2,	'2016-05-20 07:21:21',	1,	1,	0,	0,	NULL),
(3,	'2016-05-20 07:22:43',	1,	1,	0,	0,	NULL),
(4,	'2016-05-23 15:44:23',	1,	1,	0,	0,	NULL),
(5,	'2016-05-23 15:44:24',	1,	1,	0,	0,	NULL),
(6,	'2016-05-24 09:32:34',	1,	1,	0,	0,	NULL),
(7,	'2016-05-24 11:17:31',	1,	1,	0,	0,	NULL),
(8,	'2016-06-02 09:16:55',	1,	1,	0,	0,	NULL),
(9,	'2016-06-02 09:17:19',	1,	1,	0,	0,	NULL),
(10,	'2016-06-02 09:30:58',	1,	1,	0,	0,	NULL),
(11,	'2016-06-02 09:30:58',	1,	1,	0,	0,	NULL),
(12,	'2016-06-02 09:30:59',	1,	1,	0,	0,	NULL),
(13,	'2016-06-02 09:31:00',	1,	1,	0,	0,	NULL),
(20,	'2016-06-02 10:43:38',	1,	1,	0,	0,	NULL),
(21,	'2016-06-02 10:43:39',	1,	1,	0,	0,	NULL),
(22,	'2016-06-02 10:43:42',	1,	1,	0,	0,	NULL),
(23,	'2016-06-02 10:43:44',	1,	1,	0,	0,	NULL),
(24,	'2016-06-02 10:43:45',	1,	1,	0,	0,	NULL),
(25,	'2016-06-02 10:43:47',	1,	1,	0,	0,	NULL),
(26,	'2016-06-02 10:43:49',	1,	1,	0,	0,	NULL),
(27,	'2016-06-02 10:43:50',	1,	1,	0,	0,	NULL),
(28,	'2016-06-02 10:43:52',	1,	1,	0,	0,	NULL),
(29,	'2016-06-02 10:43:54',	1,	1,	0,	0,	NULL),
(30,	'2016-06-02 10:43:58',	1,	1,	0,	0,	NULL),
(31,	'2016-06-02 10:44:00',	1,	1,	0,	0,	NULL),
(32,	'2016-06-02 10:44:04',	1,	1,	0,	0,	NULL),
(33,	'2016-06-02 10:57:05',	1,	1,	0,	0,	NULL),
(34,	'2016-06-02 11:06:02',	1,	1,	0,	0,	NULL),
(35,	'2016-06-02 11:27:30',	1,	1,	0,	0,	NULL),
(36,	'2016-06-02 11:43:06',	1,	1,	0,	0,	NULL),
(37,	'2016-06-02 12:00:25',	1,	1,	0,	0,	NULL),
(38,	'2016-06-02 14:35:54',	1,	1,	0,	0,	NULL);

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileSearchIndexAttributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1,	400.0000,	140.0000,	0.0000),
(2,	600.0000,	229.0000,	0.0000),
(3,	300.0000,	64.0000,	0.0000),
(4,	1000.0000,	350.0000,	0.0000),
(5,	1000.0000,	672.0000,	0.0000),
(6,	2072.0000,	1242.0000,	0.0000),
(7,	700.0000,	150.0000,	0.0000),
(8,	1000.0000,	500.0000,	0.0000),
(9,	1000.0000,	500.0000,	0.0000),
(10,	300.0000,	150.0000,	0.0000),
(11,	300.0000,	150.0000,	0.0000),
(12,	300.0000,	150.0000,	0.0000),
(13,	300.0000,	150.0000,	0.0000),
(20,	800.0000,	400.0000,	0.0000),
(21,	800.0000,	400.0000,	0.0000),
(22,	800.0000,	400.0000,	0.0000),
(23,	800.0000,	400.0000,	0.0000),
(24,	800.0000,	400.0000,	0.0000),
(25,	800.0000,	400.0000,	0.0000),
(26,	800.0000,	400.0000,	0.0000),
(27,	800.0000,	449.0000,	0.0000),
(28,	800.0000,	400.0000,	0.0000),
(29,	800.0000,	400.0000,	0.0000),
(30,	800.0000,	400.0000,	0.0000),
(31,	800.0000,	400.0000,	0.0000),
(32,	800.0000,	400.0000,	0.0000),
(33,	500.0000,	300.0000,	0.0000),
(34,	500.0000,	300.0000,	0.0000),
(35,	500.0000,	300.0000,	0.0000),
(36,	64.0000,	64.0000,	0.0000),
(37,	2048.0000,	534.0000,	0.0000),
(38,	0.0000,	0.0000,	0.0000);

DROP TABLE IF EXISTS `FileSetFiles`;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileSetFiles` (`fsfID`, `fID`, `fsID`, `timestamp`, `fsDisplayOrder`) VALUES
(1,	8,	1,	'2016-06-02 13:17:10',	0),
(2,	9,	1,	'2016-06-02 13:17:26',	1),
(3,	10,	4,	'2016-06-02 13:31:21',	0),
(4,	11,	4,	'2016-06-02 13:31:21',	1),
(5,	12,	4,	'2016-06-02 13:31:21',	2),
(6,	13,	4,	'2016-06-02 13:31:21',	3),
(13,	20,	5,	'2016-06-02 14:44:53',	0),
(14,	21,	5,	'2016-06-02 14:44:53',	1),
(15,	22,	5,	'2016-06-02 14:44:53',	2),
(16,	23,	5,	'2016-06-02 14:44:53',	3),
(17,	24,	5,	'2016-06-02 14:44:53',	4),
(18,	25,	5,	'2016-06-02 14:44:53',	5),
(19,	26,	5,	'2016-06-02 14:44:53',	6),
(20,	27,	5,	'2016-06-02 14:44:53',	7),
(21,	28,	5,	'2016-06-02 14:44:53',	8),
(22,	29,	5,	'2016-06-02 14:44:53',	9),
(23,	30,	5,	'2016-06-02 14:44:53',	10),
(24,	31,	5,	'2016-06-02 14:44:53',	11),
(25,	32,	5,	'2016-06-02 14:44:53',	12),
(26,	33,	3,	'2016-06-02 14:59:56',	0),
(27,	34,	3,	'2016-06-02 15:06:10',	1),
(28,	35,	3,	'2016-06-02 15:27:36',	2),
(29,	37,	6,	'2016-06-02 16:00:44',	0);

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileSetPermissionAssignments` (`fsID`, `pkID`, `paID`) VALUES
(0,	39,	33),
(0,	40,	112),
(0,	41,	112),
(0,	42,	112),
(0,	43,	112),
(0,	44,	112),
(0,	45,	112),
(0,	46,	112),
(0,	47,	112);

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `FileSets`;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileSets` (`fsID`, `fsName`, `uID`, `fsType`, `fsOverrideGlobalPermissions`) VALUES
(1,	'slide',	1,	1,	0),
(2,	'noticias',	0,	1,	0),
(3,	'Galería',	0,	1,	0),
(4,	'menu lateral',	1,	1,	0),
(5,	'Galería Ejemplo',	0,	1,	0),
(6,	'encabezados',	1,	1,	0);

DROP TABLE IF EXISTS `FileSetSavedSearches`;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `FileStorageLocations`;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileStorageLocations` (`fslID`, `fslName`, `fslConfiguration`, `fslIsDefault`) VALUES
(1,	'Default',	'O:69:\"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration\":1:{s:10:\"\0*\0default\";b:1;}',	1);

DROP TABLE IF EXISTS `FileStorageLocationTypes`;
CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslTypeID`),
  UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileStorageLocationTypes` (`fslTypeID`, `fslTypeHandle`, `fslTypeName`, `pkgID`) VALUES
(1,	'default',	'Default',	0),
(2,	'local',	'Local',	0);

DROP TABLE IF EXISTS `FileVersionLog`;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileVersionLog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
(1,	1,	1,	5,	14),
(2,	1,	1,	5,	15),
(3,	2,	1,	5,	14),
(4,	2,	1,	5,	15),
(5,	3,	1,	5,	14),
(6,	3,	1,	5,	15),
(7,	2,	2,	1,	0),
(8,	2,	2,	5,	14),
(9,	2,	2,	5,	15),
(10,	2,	3,	1,	0),
(11,	2,	3,	5,	14),
(12,	2,	3,	5,	15),
(13,	2,	4,	1,	0),
(14,	2,	4,	5,	14),
(15,	2,	4,	5,	15),
(16,	2,	5,	1,	0),
(17,	2,	5,	5,	14),
(18,	2,	5,	5,	15),
(19,	4,	1,	5,	14),
(20,	4,	1,	5,	15),
(21,	5,	1,	5,	14),
(22,	5,	1,	5,	15),
(23,	6,	1,	5,	14),
(24,	6,	1,	5,	15),
(25,	7,	1,	5,	14),
(26,	7,	1,	5,	15),
(27,	8,	1,	5,	14),
(28,	8,	1,	5,	15),
(29,	9,	1,	5,	14),
(30,	9,	1,	5,	15),
(31,	10,	1,	5,	14),
(32,	10,	1,	5,	15),
(33,	11,	1,	5,	14),
(34,	11,	1,	5,	15),
(35,	12,	1,	5,	14),
(36,	12,	1,	5,	15),
(37,	13,	1,	5,	14),
(38,	13,	1,	5,	15),
(63,	20,	1,	5,	14),
(64,	20,	1,	5,	15),
(65,	21,	1,	5,	14),
(66,	21,	1,	5,	15),
(67,	22,	1,	5,	14),
(68,	22,	1,	5,	15),
(69,	23,	1,	5,	14),
(70,	23,	1,	5,	15),
(71,	24,	1,	5,	14),
(72,	24,	1,	5,	15),
(73,	25,	1,	5,	14),
(74,	25,	1,	5,	15),
(75,	26,	1,	5,	14),
(76,	26,	1,	5,	15),
(77,	27,	1,	5,	14),
(78,	27,	1,	5,	15),
(79,	28,	1,	5,	14),
(80,	28,	1,	5,	15),
(81,	29,	1,	5,	14),
(82,	29,	1,	5,	15),
(83,	30,	1,	5,	14),
(84,	30,	1,	5,	15),
(85,	31,	1,	5,	14),
(86,	31,	1,	5,	15),
(87,	32,	1,	5,	14),
(88,	32,	1,	5,	15),
(89,	20,	1,	5,	14),
(90,	21,	1,	5,	14),
(91,	22,	1,	5,	14),
(92,	23,	1,	5,	14),
(93,	24,	1,	5,	14),
(94,	25,	1,	5,	14),
(95,	26,	1,	5,	14),
(96,	27,	1,	5,	14),
(97,	28,	1,	5,	14),
(98,	29,	1,	5,	14),
(99,	30,	1,	5,	14),
(100,	31,	1,	5,	14),
(101,	32,	1,	5,	14),
(102,	20,	1,	5,	15),
(103,	21,	1,	5,	15),
(104,	22,	1,	5,	15),
(105,	23,	1,	5,	15),
(106,	24,	1,	5,	15),
(107,	25,	1,	5,	15),
(108,	26,	1,	5,	15),
(109,	27,	1,	5,	15),
(110,	28,	1,	5,	15),
(111,	29,	1,	5,	15),
(112,	30,	1,	5,	15),
(113,	31,	1,	5,	15),
(114,	32,	1,	5,	15),
(115,	32,	2,	1,	0),
(116,	32,	2,	5,	14),
(117,	32,	2,	5,	15),
(118,	31,	2,	1,	0),
(119,	31,	2,	5,	14),
(120,	31,	2,	5,	15),
(121,	30,	2,	1,	0),
(122,	30,	2,	5,	14),
(123,	30,	2,	5,	15),
(124,	29,	2,	1,	0),
(125,	29,	2,	5,	14),
(126,	29,	2,	5,	15),
(127,	28,	2,	1,	0),
(128,	28,	2,	5,	14),
(129,	28,	2,	5,	15),
(130,	27,	2,	1,	0),
(131,	27,	2,	5,	14),
(132,	27,	2,	5,	15),
(133,	26,	2,	1,	0),
(134,	26,	2,	5,	14),
(135,	26,	2,	5,	15),
(136,	25,	2,	1,	0),
(137,	25,	2,	5,	14),
(138,	25,	2,	5,	15),
(139,	24,	2,	1,	0),
(140,	24,	2,	5,	14),
(141,	24,	2,	5,	15),
(142,	23,	2,	1,	0),
(143,	23,	2,	5,	14),
(144,	23,	2,	5,	15),
(145,	22,	2,	1,	0),
(146,	22,	2,	5,	14),
(147,	22,	2,	5,	15),
(148,	21,	2,	1,	0),
(149,	21,	2,	5,	14),
(150,	21,	2,	5,	15),
(151,	20,	2,	1,	0),
(152,	20,	2,	5,	14),
(153,	20,	2,	5,	15),
(154,	33,	1,	5,	14),
(155,	33,	1,	5,	15),
(156,	34,	1,	5,	14),
(157,	34,	1,	5,	15),
(158,	35,	1,	5,	14),
(159,	35,	1,	5,	15),
(160,	36,	1,	5,	14),
(161,	36,	1,	5,	15),
(162,	37,	1,	5,	14),
(163,	37,	1,	5,	15),
(164,	9,	2,	1,	0),
(165,	9,	2,	5,	14),
(166,	9,	2,	5,	15),
(167,	8,	2,	1,	0),
(168,	8,	2,	5,	14),
(169,	8,	2,	5,	15),
(170,	9,	3,	1,	0),
(171,	9,	3,	5,	14),
(172,	9,	3,	5,	15),
(173,	8,	3,	1,	0),
(174,	8,	3,	5,	14),
(175,	8,	3,	5,	15),
(176,	9,	4,	1,	0),
(177,	9,	4,	5,	14),
(178,	9,	4,	5,	15),
(179,	8,	4,	1,	0),
(180,	8,	4,	5,	14),
(181,	8,	4,	5,	15);

DROP TABLE IF EXISTS `FileVersions`;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(10) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  KEY `fvFilename` (`fvFilename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileVersions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasListingThumbnail`, `fvHasDetailThumbnail`, `fvExtension`, `fvType`) VALUES
(1,	1,	'Logotipo.png',	'681463743266',	0,	3424,	'Logotipo.png',	'',	'',	1,	'2016-05-20 07:21:06',	1,	1,	'2016-05-20 07:21:06',	1,	0,	'png',	1),
(2,	1,	'Gobierno-Logo-Espanol---Guarani.png',	'881463743281',	0,	13422,	'Gobierno-Logo-Espanol---Guarani.png',	'',	'',	0,	'2016-05-20 07:21:21',	1,	1,	'2016-05-20 07:21:21',	1,	0,	'png',	1),
(2,	2,	'Gobierno-Logo-Espanol---Guarani.png',	'741464029330',	0,	34375,	'Gobierno-Logo-Espanol---Guarani.png',	'',	'',	0,	'2016-05-23 14:48:50',	1,	1,	'2016-05-20 07:21:21',	1,	1,	'png',	1),
(2,	3,	'Gobierno-Logo-Espanol---Guarani.png',	'431464029335',	0,	13422,	'Gobierno-Logo-Espanol---Guarani.png',	'',	'',	0,	'2016-05-23 14:48:55',	1,	1,	'2016-05-20 07:21:21',	1,	1,	'png',	1),
(2,	4,	'Gobierno-Logo-Espanol---Guarani.png',	'141464029367',	0,	13422,	'Gobierno-Logo-Espanol---Guarani.png',	'',	'',	0,	'2016-05-23 14:49:27',	1,	1,	'2016-05-20 07:21:21',	1,	1,	'png',	1),
(2,	5,	'Gobierno-Logo-Espanol---Guarani.png',	'791464029403',	0,	34375,	'Gobierno-Logo-Espanol---Guarani.png',	'',	'',	1,	'2016-05-23 14:50:03',	1,	1,	'2016-05-20 07:21:21',	1,	1,	'png',	1),
(3,	1,	'Logo-de-la-SENATICS-en-alfacolor.png',	'241463743363',	0,	11340,	'Logo-de-la-SENATICS-en-alfacolor.png',	'',	'',	1,	'2016-05-20 07:22:43',	1,	1,	'2016-05-20 07:22:43',	1,	0,	'png',	1),
(4,	1,	'Slide2.png',	'361464032663',	0,	437621,	'Slide2.png',	'',	'',	1,	'2016-05-23 15:44:23',	1,	1,	'2016-05-23 15:44:23',	1,	1,	'png',	1),
(5,	1,	'3.jpg',	'581464032664',	0,	450200,	'3.jpg',	'',	'',	1,	'2016-05-23 15:44:24',	1,	1,	'2016-05-23 15:44:24',	1,	1,	'jpg',	1),
(6,	1,	'Organigrama.jpg',	'581464096754',	0,	386183,	'Organigrama.jpg',	'',	'',	1,	'2016-05-24 09:32:34',	1,	1,	'2016-05-24 09:32:34',	1,	1,	'jpg',	1),
(7,	1,	'Logo-SENATICs.png',	'141464103051',	0,	21559,	'Logo-SENATICs.png',	'',	'',	1,	'2016-05-24 11:17:31',	1,	1,	'2016-05-24 11:17:31',	1,	1,	'png',	1),
(8,	1,	'Slide1.png',	'701464873415',	0,	516284,	'Slide1.png',	'',	'',	0,	'2016-06-02 09:16:55',	1,	1,	'2016-06-02 09:16:55',	1,	1,	'png',	1),
(8,	2,	'1809cf7ba79ffb82aab8a2a2a834c1c5.png',	'231464887770',	0,	595419,	'Slide1.png',	'',	'',	0,	'2016-06-02 13:16:10',	1,	1,	'2016-06-02 09:16:55',	1,	1,	'png',	1),
(8,	3,	'1809cf7ba79ffb82aab8a2a2a834c1c5.png',	'251464888018',	0,	587014,	'Slide1.png',	'',	'',	0,	'2016-06-02 13:20:18',	1,	1,	'2016-06-02 09:16:55',	1,	1,	'png',	1),
(8,	4,	'1809cf7ba79ffb82aab8a2a2a834c1c5.png',	'851464888898',	0,	618980,	'Slide1.png',	'',	'',	1,	'2016-06-02 13:34:58',	1,	1,	'2016-06-02 09:16:55',	1,	1,	'png',	1),
(9,	1,	'Slide2.png',	'901464873439',	0,	437621,	'Slide2.png',	'',	'',	0,	'2016-06-02 09:17:19',	1,	1,	'2016-06-02 09:17:19',	1,	1,	'png',	1),
(9,	2,	'3.jpg',	'631464887759',	0,	450200,	'Slide2.png',	'',	'',	0,	'2016-06-02 13:15:59',	1,	1,	'2016-06-02 09:17:19',	1,	1,	'jpg',	1),
(9,	3,	'3.jpg',	'521464887897',	0,	62361,	'Slide2.png',	'',	'',	0,	'2016-06-02 13:18:17',	1,	1,	'2016-06-02 09:17:19',	1,	1,	'jpg',	1),
(9,	4,	'3.jpg',	'121464888860',	0,	63764,	'Slide2.png',	'',	'',	1,	'2016-06-02 13:34:20',	1,	1,	'2016-06-02 09:17:19',	1,	1,	'jpg',	1),
(10,	1,	'acceso_informacion_publica_btn-GRAL.png',	'841464874258',	0,	25458,	'acceso_informacion_publica_btn-GRAL.png',	'',	'',	1,	'2016-06-02 09:30:58',	1,	1,	'2016-06-02 09:30:58',	1,	0,	'png',	1),
(11,	1,	'denuncias_btn.png',	'751464874258',	0,	23136,	'denuncias_btn.png',	'',	'',	1,	'2016-06-02 09:30:59',	1,	1,	'2016-06-02 09:30:59',	1,	0,	'png',	1),
(12,	1,	'informacion_publica_btn-GRAL.png',	'851464874259',	0,	30758,	'informacion_publica_btn-GRAL.png',	'',	'',	1,	'2016-06-02 09:30:59',	1,	1,	'2016-06-02 09:30:59',	1,	0,	'png',	1),
(13,	1,	'portal_parauay_btn2.png',	'331464874260',	0,	45969,	'portal_parauay_btn2.png',	'',	'',	1,	'2016-06-02 09:31:00',	1,	1,	'2016-06-02 09:31:00',	1,	0,	'png',	1),
(20,	1,	'14_-_2.jpg',	'801464878618',	0,	1587862,	'14 - 2.jpg',	'',	'',	0,	'2016-06-02 10:43:38',	1,	1,	'2016-06-02 10:43:38',	1,	1,	'jpg',	1),
(20,	2,	'14_-_2.jpg',	'591464879035',	0,	31685,	'14 - 2.jpg',	'',	'',	1,	'2016-06-02 10:50:35',	1,	1,	'2016-06-02 10:43:38',	1,	1,	'jpg',	1),
(21,	1,	'14_-_73.png',	'421464878619',	0,	691487,	'14 - 7(3).png',	'',	'',	0,	'2016-06-02 10:43:39',	1,	1,	'2016-06-02 10:43:39',	1,	1,	'png',	1),
(21,	2,	'14_-_73.png',	'401464879017',	0,	89146,	'14 - 7(3).png',	'',	'',	1,	'2016-06-02 10:50:17',	1,	1,	'2016-06-02 10:43:39',	1,	1,	'png',	1),
(22,	1,	'14_-_13.png',	'331464878622',	0,	328743,	'14 - 13.png',	'',	'',	0,	'2016-06-02 10:43:42',	1,	1,	'2016-06-02 10:43:42',	1,	1,	'png',	1),
(22,	2,	'14_-_13.png',	'251464878998',	0,	38479,	'14 - 13.png',	'',	'',	1,	'2016-06-02 10:49:58',	1,	1,	'2016-06-02 10:43:42',	1,	1,	'png',	1),
(23,	1,	'14_-_18.jpg',	'351464878624',	0,	171590,	'14 - 18.jpg',	'',	'',	0,	'2016-06-02 10:43:44',	1,	1,	'2016-06-02 10:43:44',	1,	1,	'jpg',	1),
(23,	2,	'14_-_18.jpg',	'811464878972',	0,	23617,	'14 - 18.jpg',	'',	'',	1,	'2016-06-02 10:49:32',	1,	1,	'2016-06-02 10:43:44',	1,	1,	'jpg',	1),
(24,	1,	'14_-_22.png',	'551464878625',	0,	110803,	'14 - 2(2).png',	'',	'',	0,	'2016-06-02 10:43:45',	1,	1,	'2016-06-02 10:43:45',	1,	1,	'png',	1),
(24,	2,	'14_-_22.png',	'491464878956',	0,	20196,	'14 - 2(2).png',	'',	'',	1,	'2016-06-02 10:49:16',	1,	1,	'2016-06-02 10:43:45',	1,	1,	'png',	1),
(25,	1,	'14_-_75.jpg',	'411464878627',	0,	1047928,	'14 - 75.jpg',	'',	'',	0,	'2016-06-02 10:43:47',	1,	1,	'2016-06-02 10:43:47',	1,	1,	'jpg',	1),
(25,	2,	'14_-_75.jpg',	'361464878942',	0,	27038,	'14 - 75.jpg',	'',	'',	1,	'2016-06-02 10:49:02',	1,	1,	'2016-06-02 10:43:47',	1,	1,	'jpg',	1),
(26,	1,	'14_-_77.jpg',	'511464878629',	0,	1050302,	'14 - 77.jpg',	'',	'',	0,	'2016-06-02 10:43:49',	1,	1,	'2016-06-02 10:43:49',	1,	1,	'jpg',	1),
(26,	2,	'14_-_77.jpg',	'161464878924',	0,	25051,	'14 - 77.jpg',	'',	'',	1,	'2016-06-02 10:48:44',	1,	1,	'2016-06-02 10:43:49',	1,	1,	'jpg',	1),
(27,	1,	'14_-_113.png',	'971464878630',	0,	79321,	'14 - 113.png',	'',	'',	0,	'2016-06-02 10:43:50',	1,	1,	'2016-06-02 10:43:50',	1,	1,	'png',	1),
(27,	2,	'14_-_113.png',	'111464878908',	0,	70392,	'14 - 113.png',	'',	'',	1,	'2016-06-02 10:48:28',	1,	1,	'2016-06-02 10:43:50',	1,	1,	'png',	1),
(28,	1,	'14_-_127.png',	'211464878632',	0,	299963,	'14 - 127.png',	'',	'',	0,	'2016-06-02 10:43:52',	1,	1,	'2016-06-02 10:43:52',	1,	1,	'png',	1),
(28,	2,	'14_-_127.png',	'741464878895',	0,	45524,	'14 - 127.png',	'',	'',	1,	'2016-06-02 10:48:15',	1,	1,	'2016-06-02 10:43:52',	1,	1,	'png',	1),
(29,	1,	'14_-_138.png',	'441464878634',	0,	788278,	'14 - 138.png',	'',	'',	0,	'2016-06-02 10:43:54',	1,	1,	'2016-06-02 10:43:54',	1,	1,	'png',	1),
(29,	2,	'14_-_138.png',	'461464878881',	0,	91247,	'14 - 138.png',	'',	'',	1,	'2016-06-02 10:48:01',	1,	1,	'2016-06-02 10:43:54',	1,	1,	'png',	1),
(30,	1,	'14_-_102.jpg',	'111464878638',	0,	321788,	'14 - 102.jpg',	'',	'',	0,	'2016-06-02 10:43:58',	1,	1,	'2016-06-02 10:43:58',	1,	1,	'jpg',	1),
(30,	2,	'14_-_102.jpg',	'411464878858',	0,	21522,	'14 - 102.jpg',	'',	'',	1,	'2016-06-02 10:47:38',	1,	1,	'2016-06-02 10:43:58',	1,	1,	'jpg',	1),
(31,	1,	'14_-_45.png',	'731464878640',	0,	297186,	'14 - 45.png',	'',	'',	0,	'2016-06-02 10:44:00',	1,	1,	'2016-06-02 10:44:00',	1,	1,	'png',	1),
(31,	2,	'14_-_45.png',	'841464878789',	0,	43179,	'14 - 45.png',	'',	'',	1,	'2016-06-02 10:46:29',	1,	1,	'2016-06-02 10:44:00',	1,	1,	'png',	1),
(32,	1,	'14_-_31.png',	'161464878644',	0,	216081,	'14 - 3(1).png',	'',	'',	0,	'2016-06-02 10:44:05',	1,	1,	'2016-06-02 10:44:05',	1,	1,	'png',	1),
(32,	2,	'14_-_31.png',	'981464878767',	0,	28183,	'14 - 3(1).png',	'',	'',	1,	'2016-06-02 10:46:07',	1,	1,	'2016-06-02 10:44:05',	1,	1,	'png',	1),
(33,	1,	'noticias.jpg',	'961464879425',	0,	18199,	'noticias.jpg',	'',	'',	1,	'2016-06-02 10:57:05',	1,	1,	'2016-06-02 10:57:05',	1,	1,	'jpg',	1),
(34,	1,	'video.png',	'641464879962',	0,	14343,	'video.png',	'',	'',	1,	'2016-06-02 11:06:02',	1,	1,	'2016-06-02 11:06:02',	1,	1,	'png',	1),
(35,	1,	'camera.jpg',	'551464881250',	0,	11677,	'camera.jpg',	'',	'',	1,	'2016-06-02 11:27:30',	1,	1,	'2016-06-02 11:27:30',	1,	1,	'jpg',	1),
(36,	1,	'newspaper.png',	'141464882186',	0,	1479,	'newspaper.png',	'',	'',	1,	'2016-06-02 11:43:06',	1,	1,	'2016-06-02 11:43:06',	1,	0,	'png',	1),
(37,	1,	'ENCABEZADO_1-sin_logos.jpg',	'561464883225',	0,	153047,	'ENCABEZADO_1-sin_logos.jpg',	'',	'',	1,	'2016-06-02 12:00:25',	1,	1,	'2016-06-02 12:00:25',	1,	1,	'jpg',	1),
(38,	1,	'icono_gobierno.ico',	'851464892554',	0,	509,	'icono_gobierno.ico',	'',	'',	1,	'2016-06-02 14:35:54',	1,	1,	'2016-06-02 14:35:54',	0,	0,	'ico',	1);

DROP TABLE IF EXISTS `gaPage`;
CREATE TABLE `gaPage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GatheringConfiguredDataSources`;
CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GatheringDataSources`;
CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `GatheringDataSources` (`gasID`, `gasName`, `gasHandle`, `pkgID`, `gasDisplayOrder`) VALUES
(1,	'Site Page',	'page',	0,	0),
(2,	'RSS Feed',	'rss_feed',	0,	1),
(3,	'Flickr Feed',	'flickr_feed',	0,	2),
(4,	'Twitter',	'twitter',	0,	3);

DROP TABLE IF EXISTS `GatheringItemFeatureAssignments`;
CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GatheringItems`;
CREATE TABLE `GatheringItems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GatheringItemSelectedTemplates`;
CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GatheringItemTemplateFeatures`;
CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `GatheringItemTemplateFeatures` (`gfeID`, `gatID`, `feID`) VALUES
(4,	1,	1),
(10,	2,	1),
(13,	3,	1),
(16,	4,	1),
(19,	5,	1),
(23,	7,	1),
(29,	11,	1),
(33,	12,	1),
(37,	13,	1),
(42,	14,	1),
(47,	15,	1),
(53,	17,	1),
(56,	18,	1),
(63,	21,	1),
(64,	22,	1),
(3,	1,	2),
(9,	2,	2),
(12,	3,	2),
(15,	4,	2),
(18,	5,	2),
(21,	6,	2),
(25,	8,	2),
(27,	9,	2),
(41,	13,	3),
(46,	14,	3),
(51,	16,	3),
(55,	17,	3),
(62,	20,	3),
(66,	22,	3),
(2,	1,	4),
(8,	2,	4),
(14,	4,	4),
(17,	5,	4),
(31,	11,	4),
(35,	12,	4),
(39,	13,	4),
(44,	14,	4),
(61,	20,	4),
(5,	1,	5),
(22,	6,	5),
(24,	8,	5),
(26,	9,	5),
(28,	10,	5),
(32,	11,	5),
(36,	12,	5),
(40,	13,	5),
(45,	14,	5),
(49,	15,	5),
(50,	16,	5),
(59,	19,	5),
(65,	22,	5),
(20,	5,	6),
(1,	1,	7),
(7,	2,	7),
(11,	3,	7),
(30,	11,	7),
(34,	12,	7),
(38,	13,	7),
(43,	14,	7),
(48,	15,	7),
(52,	16,	7),
(54,	17,	7),
(57,	18,	7),
(58,	19,	7),
(60,	20,	7),
(6,	1,	8);

DROP TABLE IF EXISTS `GatheringItemTemplates`;
CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `GatheringItemTemplates` (`gatID`, `gatHandle`, `gatName`, `gatHasCustomClass`, `gatFixedSlotWidth`, `gatFixedSlotHeight`, `gatForceDefault`, `pkgID`, `gatTypeID`) VALUES
(1,	'featured',	'Featured Item',	0,	6,	2,	1,	0,	1),
(2,	'title_date_description',	'Title Date & Description',	0,	0,	0,	0,	0,	1),
(3,	'title_description',	'Title & Description',	0,	0,	0,	0,	0,	1),
(4,	'title_date',	'Title & Date',	0,	0,	0,	0,	0,	1),
(5,	'title_date_comments',	'Title, Date & Comments',	1,	0,	0,	0,	0,	1),
(6,	'thumbnail',	'Thumbnail',	0,	0,	0,	0,	0,	1),
(7,	'basic',	'Basic',	0,	0,	0,	0,	0,	2),
(8,	'image_sharing_link',	'Image Sharing Link',	0,	0,	0,	0,	0,	2),
(9,	'image_conversation',	'Image Conversation',	0,	0,	0,	0,	0,	2),
(10,	'image',	'Large Image',	0,	0,	0,	0,	0,	2),
(11,	'masthead_image_left',	'Masthead Image Left',	0,	0,	0,	0,	0,	1),
(12,	'masthead_image_right',	'Masthead Image Right',	0,	0,	0,	0,	0,	1),
(13,	'masthead_image_byline_right',	'Masthead Image Byline Right',	0,	0,	0,	0,	0,	1),
(14,	'masthead_image_byline_left',	'Masthead Image Byline Left',	0,	0,	0,	0,	0,	1),
(15,	'image_masthead_description_center',	'Image Masthead Description Center',	0,	0,	0,	0,	0,	1),
(16,	'image_byline_description_center',	'Image Byline Description Center',	0,	0,	0,	0,	0,	1),
(17,	'masthead_byline_description',	'Masthead Byline Description',	0,	0,	0,	0,	0,	1),
(18,	'masthead_description',	'Masthead Description',	0,	0,	0,	0,	0,	1),
(19,	'thumbnail_description_center',	'Thumbnail & Description Center',	0,	0,	0,	0,	0,	1),
(20,	'tweet',	'Tweet',	0,	0,	0,	0,	0,	1),
(21,	'vimeo',	'Vimeo',	0,	0,	0,	0,	0,	1),
(22,	'image_overlay_headline',	'Image Overlay Headline',	0,	0,	0,	0,	0,	1);

DROP TABLE IF EXISTS `GatheringItemTemplateTypes`;
CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `GatheringItemTemplateTypes` (`gatTypeID`, `gatTypeHandle`, `pkgID`) VALUES
(1,	'tile',	0),
(2,	'detail',	0);

DROP TABLE IF EXISTS `GatheringPermissionAssignments`;
CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Gatherings`;
CREATE TABLE `Gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Groups`;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`, `gIsBadge`, `gBadgeFID`, `gBadgeDescription`, `gBadgeCommunityPointValue`, `gIsAutomated`, `gCheckAutomationOnRegister`, `gCheckAutomationOnLogin`, `gCheckAutomationOnJobRun`, `gPath`, `pkgID`) VALUES
(1,	'Guest',	'The guest group represents unregistered visitors to your site.',	0,	NULL,	NULL,	0,	NULL,	0,	0,	NULL,	0,	0,	0,	0,	0,	'/Guest',	0),
(2,	'Registered Users',	'The registered users group represents all user accounts.',	0,	NULL,	NULL,	0,	NULL,	0,	0,	NULL,	0,	0,	0,	0,	0,	'/Registered Users',	0),
(3,	'Administrators',	'',	0,	NULL,	NULL,	0,	NULL,	0,	0,	NULL,	0,	0,	0,	0,	0,	'/Administrators',	0),
(4,	'Prensa',	'Grupo asignado a la publicación de Noticias.',	0,	NULL,	NULL,	0,	NULL,	0,	0,	NULL,	0,	0,	0,	0,	0,	'/Prensa',	0);

DROP TABLE IF EXISTS `GroupSetGroups`;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `GroupSets`;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Jobs`;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1,	'Index Search Engine - Updates',	'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.',	'2016-05-19 10:27:32',	NULL,	0,	NULL,	0,	'ENABLED',	'index_search',	1,	0,	'days',	0),
(2,	'Index Search Engine - All',	'Empties the page search index and reindexes all pages.',	'2016-05-19 10:27:32',	NULL,	0,	NULL,	0,	'ENABLED',	'index_search_all',	1,	0,	'days',	0),
(3,	'Check Automated Groups',	'Automatically add users to groups and assign badges.',	'2016-05-19 10:27:32',	NULL,	0,	NULL,	0,	'ENABLED',	'check_automated_groups',	0,	0,	'days',	0),
(4,	'Generate the sitemap.xml file',	'Generate the sitemap.xml file that search engines use to crawl your site.',	'2016-05-19 10:27:32',	NULL,	0,	NULL,	0,	'ENABLED',	'generate_sitemap',	0,	0,	'days',	0),
(5,	'Process Email Posts',	'Polls an email account and grabs private messages/postings that are sent there..',	'2016-05-19 10:27:33',	NULL,	0,	NULL,	0,	'ENABLED',	'process_email',	0,	0,	'days',	0),
(6,	'Remove Old Page Versions',	'Removes all except the 10 most recent page versions for each page.',	'2016-05-19 10:27:33',	NULL,	0,	NULL,	0,	'ENABLED',	'remove_old_page_versions',	0,	0,	'days',	0),
(7,	'Update Gatherings',	'Loads new items into gatherings.',	'2016-05-19 10:27:33',	NULL,	0,	NULL,	0,	'ENABLED',	'update_gatherings',	0,	0,	'days',	0);

DROP TABLE IF EXISTS `JobSetJobs`;
CREATE TABLE `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `JobSetJobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1,	1,	0),
(1,	4,	0),
(1,	5,	0),
(1,	6,	0),
(1,	7,	0);

DROP TABLE IF EXISTS `JobSets`;
CREATE TABLE `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `JobSets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1,	'Default',	0,	NULL,	0,	'days',	0);

DROP TABLE IF EXISTS `JobsLog`;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Logs`;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Logs` (`logID`, `channel`, `time`, `message`, `uID`, `level`) VALUES
(1,	'exceptions',	1464004534,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/vendor/oyejorge/less.php/lib/Less/Tree/Variable.php:48 variable @bgcolor-site-color is undefined (0)\n',	1,	600),
(2,	'exceptions',	1464004542,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/vendor/oyejorge/less.php/lib/Less/Tree/Variable.php:48 variable @bgcolor-site-color is undefined (0)\n',	1,	600),
(3,	'exceptions',	1464006539,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/vendor/oyejorge/less.php/lib/Less/Tree/Variable.php:48 variable @bgcolor-site-color is undefined (0)\n',	1,	600),
(4,	'exceptions',	1464006639,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/vendor/oyejorge/less.php/lib/Less/Tree/Variable.php:48 variable @bgcolor-site-color is undefined (0)\n',	1,	600),
(5,	'application',	1464027629,	'Página \"\" en ruta \"/!drafts/155\" eliminado',	1,	100),
(6,	'exceptions',	1464029337,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/controllers/backend/user_interface/block.php:33 Call to a member function setBlockAreaObject() on null (1)\n',	1,	600),
(7,	'exceptions',	1464029342,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/controllers/backend/user_interface/block.php:33 Call to a member function setBlockAreaObject() on null (1)\n',	1,	600),
(8,	'application',	1464033225,	'Página \"Noticia de prueba 1\" en ruta \"/noticias/noticia-de-prueba-1\" movido a la papelera',	1,	100),
(9,	'application',	1464033444,	'Página \"Noticias de prueba 1\" en ruta \"/noticias/noticias-de-prueba-1\" movido a la papelera',	1,	100),
(10,	'exceptions',	1464890242,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/controllers/dialog/block/edit.php:46 Call to a member function getInstance() on null (1)\n',	1,	600),
(11,	'exceptions',	1464890360,	'Exception Occurred: /home/aortiz/repositorio/template-concrete5/concrete/controllers/dialog/block/edit.php:46 Call to a member function getInstance() on null (1)\n',	1,	600),
(12,	'application',	1464891146,	'Página \"Noticias de prueba 1\" en ruta \"/!trash/noticias-de-prueba-1\" eliminado',	1,	100),
(13,	'application',	1464891149,	'Página \"Noticia de prueba 1\" en ruta \"/!trash/noticia-de-prueba-1\" eliminado',	1,	100),
(14,	'application',	1464891161,	'Página \"\" en ruta \"/!drafts/152\" movido a la papelera',	1,	100),
(15,	'application',	1464891165,	'Página \"\" en ruta \"/!drafts/153\" movido a la papelera',	1,	100);

DROP TABLE IF EXISTS `MailImporters`;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `MailImporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1,	'private_message',	'',	NULL,	NULL,	NULL,	0,	'',	0,	0,	'POP');

DROP TABLE IF EXISTS `MailValidationHashes`;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `MultilingualPageRelations`;
CREATE TABLE `MultilingualPageRelations` (
  `mpRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `MultilingualSections`;
CREATE TABLE `MultilingualSections` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msNumPlurals` int(11) NOT NULL DEFAULT '2',
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(n != 1)',
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `MultilingualTranslations`;
CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `OauthUserMap`;
CREATE TABLE `OauthUserMap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Packages`;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Packages` (`pkgID`, `pkgName`, `pkgHandle`, `pkgDescription`, `pkgDateInstalled`, `pkgIsInstalled`, `pkgVersion`, `pkgAvailableVersion`) VALUES
(1,	'Event Calendar',	'dsEventCalendar',	'Event Calendar - you can add, edit and remove one day events on your page',	'2016-05-24 08:53:53',	1,	'3.3.5',	NULL),
(2,	'Datos Abiertos',	'dsOpenData',	'Paquete desarrollado por la SENATICs para la implementación de Datos Abiertos en el portal.',	'2016-05-24 08:54:02',	1,	'1.0',	NULL),
(3,	'Thumb Gallery',	'vivid_thumb_gallery',	'Add a Gallery of Thumbnails to your Site',	'2016-05-24 11:11:45',	1,	'1.0.3',	NULL);

DROP TABLE IF EXISTS `PageFeeds`;
CREATE TABLE `PageFeeds` (
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0',
  `iconFID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pfID`),
  UNIQUE KEY `pfHandle` (`pfHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PagePaths`;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cPath` (`cPath`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PagePaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`, `ppGeneratedFromURLSlugs`) VALUES
(1,	2,	'/dashboard',	'1',	1),
(2,	3,	'/dashboard/sitemap',	'1',	1),
(3,	4,	'/dashboard/sitemap/full',	'1',	1),
(4,	5,	'/dashboard/sitemap/explore',	'1',	1),
(5,	6,	'/dashboard/sitemap/search',	'1',	1),
(6,	7,	'/dashboard/files',	'1',	1),
(7,	8,	'/dashboard/files/search',	'1',	1),
(8,	9,	'/dashboard/files/attributes',	'1',	1),
(9,	10,	'/dashboard/files/sets',	'1',	1),
(10,	11,	'/dashboard/files/add_set',	'1',	1),
(11,	12,	'/dashboard/users',	'1',	1),
(12,	13,	'/dashboard/users/search',	'1',	1),
(13,	14,	'/dashboard/users/groups',	'1',	1),
(14,	15,	'/dashboard/users/attributes',	'1',	1),
(15,	16,	'/dashboard/users/add',	'1',	1),
(16,	17,	'/dashboard/users/add_group',	'1',	1),
(17,	18,	'/dashboard/users/groups/bulkupdate',	'1',	1),
(18,	19,	'/dashboard/users/group_sets',	'1',	1),
(19,	20,	'/dashboard/users/points',	'1',	1),
(20,	21,	'/dashboard/users/points/assign',	'1',	1),
(21,	22,	'/dashboard/users/points/actions',	'1',	1),
(22,	23,	'/dashboard/reports',	'1',	1),
(23,	24,	'/dashboard/reports/forms',	'1',	1),
(24,	25,	'/dashboard/reports/surveys',	'1',	1),
(25,	26,	'/dashboard/reports/logs',	'1',	1),
(26,	27,	'/dashboard/pages',	'1',	1),
(27,	28,	'/dashboard/pages/themes',	'1',	1),
(28,	29,	'/dashboard/pages/themes/inspect',	'1',	1),
(29,	30,	'/dashboard/pages/types',	'1',	1),
(30,	31,	'/dashboard/pages/types/organize',	'1',	1),
(31,	32,	'/dashboard/pages/types/add',	'1',	1),
(32,	33,	'/dashboard/pages/types/form',	'1',	1),
(33,	34,	'/dashboard/pages/types/output',	'1',	1),
(34,	35,	'/dashboard/pages/types/attributes',	'1',	1),
(35,	36,	'/dashboard/pages/types/permissions',	'1',	1),
(36,	37,	'/dashboard/pages/templates',	'1',	1),
(37,	38,	'/dashboard/pages/templates/add',	'1',	1),
(38,	39,	'/dashboard/pages/attributes',	'1',	1),
(39,	40,	'/dashboard/pages/single',	'1',	1),
(40,	41,	'/dashboard/pages/feeds',	'1',	1),
(41,	42,	'/dashboard/conversations',	'1',	1),
(42,	43,	'/dashboard/conversations/messages',	'1',	1),
(43,	44,	'/dashboard/workflow',	'1',	1),
(44,	45,	'/dashboard/workflow/me',	'1',	1),
(45,	46,	'/dashboard/workflow/workflows',	'1',	1),
(46,	47,	'/dashboard/blocks',	'1',	1),
(47,	48,	'/dashboard/blocks/stacks',	'1',	1),
(48,	49,	'/dashboard/blocks/permissions',	'1',	1),
(49,	50,	'/dashboard/blocks/stacks/list',	'1',	1),
(50,	51,	'/dashboard/blocks/types',	'1',	1),
(51,	52,	'/dashboard/extend',	'1',	1),
(52,	53,	'/dashboard/news',	'1',	1),
(53,	54,	'/dashboard/extend/install',	'1',	1),
(54,	55,	'/dashboard/extend/update',	'1',	1),
(55,	56,	'/dashboard/extend/connect',	'1',	1),
(56,	57,	'/dashboard/extend/themes',	'1',	1),
(57,	58,	'/dashboard/extend/addons',	'1',	1),
(58,	59,	'/dashboard/system',	'1',	1),
(59,	60,	'/dashboard/system/basics',	'1',	1),
(60,	61,	'/dashboard/system/basics/name',	'1',	1),
(61,	62,	'/dashboard/system/basics/accessibility',	'1',	1),
(62,	63,	'/dashboard/system/basics/social',	'1',	1),
(63,	64,	'/dashboard/system/basics/icons',	'1',	1),
(64,	65,	'/dashboard/system/basics/editor',	'1',	1),
(65,	66,	'/dashboard/system/basics/multilingual',	'1',	1),
(66,	67,	'/dashboard/system/basics/timezone',	'1',	1),
(67,	68,	'/dashboard/system/multilingual',	'1',	1),
(68,	69,	'/dashboard/system/multilingual/setup',	'1',	1),
(69,	70,	'/dashboard/system/multilingual/copy',	'1',	1),
(70,	71,	'/dashboard/system/multilingual/page_report',	'1',	1),
(71,	72,	'/dashboard/system/multilingual/translate_interface',	'1',	1),
(72,	73,	'/dashboard/system/seo',	'1',	1),
(73,	74,	'/dashboard/system/seo/urls',	'1',	1),
(74,	75,	'/dashboard/system/seo/bulk',	'1',	1),
(75,	76,	'/dashboard/system/seo/codes',	'1',	1),
(76,	77,	'/dashboard/system/seo/excluded',	'1',	1),
(77,	78,	'/dashboard/system/seo/searchindex',	'1',	1),
(78,	79,	'/dashboard/system/files',	'1',	1),
(79,	80,	'/dashboard/system/files/permissions',	'1',	1),
(80,	81,	'/dashboard/system/files/filetypes',	'1',	1),
(81,	82,	'/dashboard/system/files/thumbnails',	'1',	1),
(82,	83,	'/dashboard/system/files/image_uploading',	'1',	1),
(83,	84,	'/dashboard/system/files/storage',	'1',	1),
(84,	85,	'/dashboard/system/optimization',	'1',	1),
(85,	86,	'/dashboard/system/optimization/cache',	'1',	1),
(86,	87,	'/dashboard/system/optimization/clearcache',	'1',	1),
(87,	88,	'/dashboard/system/optimization/jobs',	'1',	1),
(88,	89,	'/dashboard/system/optimization/query_log',	'1',	1),
(89,	90,	'/dashboard/system/permissions',	'1',	1),
(90,	91,	'/dashboard/system/permissions/site',	'1',	1),
(91,	92,	'/dashboard/system/permissions/tasks',	'1',	1),
(92,	93,	'/dashboard/system/permissions/users',	'1',	1),
(93,	94,	'/dashboard/system/permissions/advanced',	'1',	1),
(94,	95,	'/dashboard/system/permissions/blacklist',	'1',	1),
(95,	96,	'/dashboard/system/permissions/captcha',	'1',	1),
(96,	97,	'/dashboard/system/permissions/antispam',	'1',	1),
(97,	98,	'/dashboard/system/permissions/maintenance',	'1',	1),
(98,	99,	'/dashboard/system/registration',	'1',	1),
(99,	100,	'/dashboard/system/registration/postlogin',	'1',	1),
(100,	101,	'/dashboard/system/registration/profiles',	'1',	1),
(101,	102,	'/dashboard/system/registration/open',	'1',	1),
(102,	103,	'/dashboard/system/registration/authentication',	'1',	1),
(103,	104,	'/dashboard/system/mail',	'1',	1),
(104,	105,	'/dashboard/system/mail/method',	'1',	1),
(105,	106,	'/dashboard/system/mail/method/test',	'1',	1),
(106,	107,	'/dashboard/system/mail/importers',	'1',	1),
(107,	108,	'/dashboard/system/conversations',	'1',	1),
(108,	109,	'/dashboard/system/conversations/settings',	'1',	1),
(109,	110,	'/dashboard/system/conversations/points',	'1',	1),
(110,	111,	'/dashboard/system/conversations/bannedwords',	'1',	1),
(111,	112,	'/dashboard/system/conversations/permissions',	'1',	1),
(112,	113,	'/dashboard/system/attributes',	'1',	1),
(113,	114,	'/dashboard/system/attributes/sets',	'1',	1),
(114,	115,	'/dashboard/system/attributes/types',	'1',	1),
(115,	116,	'/dashboard/system/attributes/topics',	'1',	1),
(116,	117,	'/dashboard/system/attributes/topics/add',	'1',	1),
(117,	118,	'/dashboard/system/environment',	'1',	1),
(118,	119,	'/dashboard/system/environment/info',	'1',	1),
(119,	120,	'/dashboard/system/environment/debug',	'1',	1),
(120,	121,	'/dashboard/system/environment/logging',	'1',	1),
(121,	122,	'/dashboard/system/environment/proxy',	'1',	1),
(122,	123,	'/dashboard/system/environment/entities',	'1',	1),
(123,	124,	'/dashboard/system/backup',	'1',	1),
(124,	125,	'/dashboard/system/backup/backup',	'1',	1),
(125,	126,	'/dashboard/system/backup/update',	'1',	1),
(126,	127,	'/dashboard/welcome',	'1',	1),
(127,	128,	'/dashboard/home',	'1',	1),
(128,	129,	'/!drafts',	'1',	1),
(129,	130,	'/!trash',	'1',	1),
(130,	131,	'/!stacks',	'1',	1),
(131,	132,	'/login',	'1',	1),
(132,	133,	'/register',	'1',	1),
(133,	134,	'/account',	'1',	1),
(134,	135,	'/account/edit_profile',	'1',	1),
(135,	136,	'/account/avatar',	'1',	1),
(136,	137,	'/account/messages',	'1',	1),
(137,	138,	'/account/messages/inbox',	'1',	1),
(138,	139,	'/members',	'1',	1),
(139,	140,	'/members/profile',	'1',	1),
(140,	141,	'/members/directory',	'1',	1),
(141,	142,	'/page_not_found',	'1',	1),
(142,	143,	'/page_forbidden',	'1',	1),
(143,	144,	'/download_file',	'1',	1),
(144,	146,	'/!stacks/header-site-title',	'1',	1),
(145,	147,	'/!stacks/header-navigation',	'1',	1),
(146,	148,	'/!stacks/footer-legal',	'1',	1),
(147,	149,	'/!stacks/footer-navigation',	'1',	1),
(148,	150,	'/!stacks/footer-contact',	'1',	1),
(149,	151,	'/!stacks/search',	'1',	1),
(150,	152,	'/!trash/152',	'1',	1),
(151,	153,	'/!trash/153',	'1',	1),
(153,	156,	'/noticias',	'1',	1),
(156,	160,	'/noticias/noticia-1',	'1',	1),
(157,	161,	'/noticias/noticia-2',	'1',	1),
(158,	162,	'/noticias/noticia-4',	'1',	1),
(159,	163,	'/dashboard/event_calendar',	'1',	1),
(160,	164,	'/dashboard/event_calendar/list_calendar',	'1',	1),
(161,	165,	'/dashboard/event_calendar/list_event',	'1',	1),
(162,	166,	'/dashboard/event_calendar/calendar',	'1',	1),
(163,	167,	'/dashboard/event_calendar/event',	'1',	1),
(164,	168,	'/dashboard/event_calendar/types',	'1',	1),
(165,	169,	'/dashboard/event_calendar/settings',	'1',	1),
(166,	170,	'/dashboard/open_data',	'1',	1),
(167,	171,	'/dashboard/open_data/list_catalog',	'1',	1),
(168,	172,	'/dashboard/open_data/catalog',	'1',	1),
(169,	173,	'/dashboard/open_data/list_datasets',	'1',	1),
(170,	174,	'/dashboard/open_data/datasets',	'1',	1),
(171,	175,	'/dashboard/open_data/types',	'1',	1),
(172,	176,	'/dashboard/open_data/resource',	'1',	1),
(173,	177,	'/dashboard/open_data/files',	'1',	1),
(174,	178,	'/dashboard/open_data/list_resource',	'1',	1),
(175,	179,	'/dashboard/open_data/dictionary',	'1',	1),
(176,	180,	'/dashboard/open_data/list_dictionary',	'1',	1),
(177,	181,	'/buscador',	'1',	1),
(178,	182,	'/institucion',	'1',	1),
(179,	183,	'/institucion/mision-y-vision',	'1',	1),
(180,	184,	'/institucion/organigrama',	'1',	1),
(181,	185,	'/institucion/marco-legal',	'1',	1),
(182,	186,	'/institucion/autoridades',	'1',	1),
(183,	187,	'/agenda',	'1',	1),
(184,	188,	'/galeria',	'1',	1),
(185,	189,	'/transparencia',	'1',	1),
(186,	190,	'/contacto',	'1',	1),
(187,	191,	'/tramites',	'1',	1),
(188,	192,	'/servicios',	'1',	1),
(189,	193,	'/compras-publicas',	'1',	1),
(190,	194,	'/datos',	'1',	1),
(191,	196,	'/noticias/noticia-de-prueba-4',	'1',	1),
(192,	197,	'/galeria/galeria-de-imagenes',	'1',	1),
(193,	198,	'/galeria/galeria-de-videos',	'1',	1),
(194,	199,	'/galeria/galeria-de-eventos',	'1',	1),
(195,	200,	'/institucion/mecip',	'1',	1),
(196,	201,	'/noticias/noticia-de-prueba-5',	'1',	1);

DROP TABLE IF EXISTS `PagePermissionAssignments`;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PagePermissionAssignments` (`cID`, `pkID`, `paID`) VALUES
(1,	1,	42),
(2,	1,	122),
(3,	1,	117),
(7,	1,	116),
(12,	1,	123),
(23,	1,	124),
(27,	1,	125),
(42,	1,	126),
(44,	1,	127),
(47,	1,	128),
(52,	1,	129),
(59,	1,	130),
(127,	1,	131),
(128,	1,	132),
(129,	1,	63),
(132,	1,	60),
(133,	1,	61),
(156,	1,	42),
(157,	1,	106),
(170,	1,	133),
(1,	2,	43),
(129,	2,	110),
(156,	2,	43),
(157,	2,	9),
(1,	3,	135),
(129,	3,	65),
(156,	3,	108),
(157,	3,	107),
(1,	4,	113),
(129,	4,	66),
(156,	4,	45),
(157,	4,	107),
(1,	5,	50),
(129,	5,	110),
(156,	5,	46),
(157,	5,	107),
(1,	6,	50),
(129,	6,	110),
(156,	6,	47),
(157,	6,	107),
(1,	7,	50),
(129,	7,	69),
(156,	7,	48),
(157,	7,	107),
(1,	8,	50),
(129,	8,	71),
(156,	8,	50),
(157,	8,	9),
(1,	9,	51),
(129,	9,	84),
(156,	9,	51),
(157,	9,	9),
(1,	10,	52),
(129,	10,	85),
(156,	10,	52),
(157,	10,	9),
(1,	11,	53),
(129,	11,	74),
(156,	11,	53),
(157,	11,	9),
(1,	12,	54),
(129,	12,	110),
(156,	12,	54),
(157,	12,	107),
(1,	13,	55),
(129,	13,	110),
(156,	13,	55),
(157,	13,	9),
(1,	14,	56),
(129,	14,	110),
(156,	14,	56),
(157,	14,	107),
(1,	15,	57),
(129,	15,	78),
(156,	15,	108),
(157,	15,	9),
(1,	16,	58),
(129,	16,	79),
(156,	16,	58),
(157,	16,	107),
(1,	17,	59),
(129,	17,	80),
(156,	17,	59),
(157,	17,	9),
(1,	18,	49),
(129,	18,	70),
(156,	18,	49),
(157,	18,	107);

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PagePermissionPropertyAccessList` (`paID`, `peID`, `name`, `publicDateTime`, `uID`, `description`, `paths`, `attributePermission`) VALUES
(114,	1,	1,	1,	1,	1,	1,	'A'),
(114,	7,	1,	1,	1,	1,	1,	'A');

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Pages`;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Pages` (`cID`, `ptID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cDraftTargetParentPageID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	22,	0,	0,	0,	0,	-1,	'0',	0,	0),
(2,	0,	0,	1,	0,	NULL,	NULL,	NULL,	0,	2,	'OVERRIDE',	'/dashboard/view.php',	0,	NULL,	0,	1,	15,	0,	0,	0,	0,	-1,	'0',	0,	1),
(3,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	3,	'OVERRIDE',	'/dashboard/sitemap/view.php',	0,	NULL,	0,	1,	3,	0,	2,	0,	0,	-1,	'0',	0,	1),
(4,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	3,	'PARENT',	'/dashboard/sitemap/full.php',	0,	NULL,	0,	1,	0,	0,	3,	0,	0,	-1,	'0',	0,	1),
(5,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	3,	'PARENT',	'/dashboard/sitemap/explore.php',	0,	NULL,	0,	1,	0,	1,	3,	0,	0,	-1,	'0',	0,	1),
(6,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	3,	'PARENT',	'/dashboard/sitemap/search.php',	0,	NULL,	0,	1,	0,	2,	3,	0,	0,	-1,	'0',	0,	1),
(7,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	7,	'OVERRIDE',	'/dashboard/files/view.php',	0,	NULL,	0,	1,	4,	1,	2,	0,	0,	-1,	'0',	0,	1),
(8,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	7,	'PARENT',	'/dashboard/files/search.php',	0,	NULL,	0,	1,	0,	0,	7,	0,	0,	-1,	'0',	0,	1),
(9,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	7,	'PARENT',	'/dashboard/files/attributes.php',	0,	NULL,	0,	1,	0,	1,	7,	0,	0,	-1,	'0',	0,	1),
(10,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	7,	'PARENT',	'/dashboard/files/sets.php',	0,	NULL,	0,	1,	0,	2,	7,	0,	0,	-1,	'0',	0,	1),
(11,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	7,	'PARENT',	'/dashboard/files/add_set.php',	0,	NULL,	0,	1,	0,	3,	7,	0,	0,	-1,	'0',	0,	1),
(12,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'OVERRIDE',	'/dashboard/users/view.php',	0,	NULL,	0,	1,	7,	2,	2,	0,	0,	-1,	'0',	0,	1),
(13,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/search.php',	0,	NULL,	0,	1,	0,	0,	12,	0,	0,	-1,	'0',	0,	1),
(14,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/groups.php',	0,	NULL,	0,	1,	1,	1,	12,	0,	0,	-1,	'0',	0,	1),
(15,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/attributes.php',	0,	NULL,	0,	1,	0,	2,	12,	0,	0,	-1,	'0',	0,	1),
(16,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/add.php',	0,	NULL,	0,	1,	0,	3,	12,	0,	0,	-1,	'0',	0,	1),
(17,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/add_group.php',	0,	NULL,	0,	1,	0,	4,	12,	0,	0,	-1,	'0',	0,	1),
(18,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/groups/bulkupdate.php',	0,	NULL,	0,	1,	0,	0,	14,	0,	0,	-1,	'0',	0,	1),
(19,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/group_sets.php',	0,	NULL,	0,	1,	0,	5,	12,	0,	0,	-1,	'0',	0,	1),
(20,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/points/view.php',	0,	NULL,	0,	1,	2,	6,	12,	0,	0,	-1,	'0',	0,	1),
(21,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/points/assign.php',	0,	NULL,	0,	1,	0,	0,	20,	0,	0,	-1,	'0',	0,	1),
(22,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	12,	'PARENT',	'/dashboard/users/points/actions.php',	0,	NULL,	0,	1,	0,	1,	20,	0,	0,	-1,	'0',	0,	1),
(23,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	23,	'OVERRIDE',	'/dashboard/reports.php',	0,	NULL,	0,	1,	3,	3,	2,	0,	0,	-1,	'0',	0,	1),
(24,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	23,	'PARENT',	'/dashboard/reports/forms.php',	0,	NULL,	0,	1,	0,	0,	23,	0,	0,	-1,	'0',	0,	1),
(25,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	23,	'PARENT',	'/dashboard/reports/surveys.php',	0,	NULL,	0,	1,	0,	1,	23,	0,	0,	-1,	'0',	0,	1),
(26,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	23,	'PARENT',	'/dashboard/reports/logs.php',	0,	NULL,	0,	1,	0,	2,	23,	0,	0,	-1,	'0',	0,	1),
(27,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'OVERRIDE',	'/dashboard/pages/view.php',	0,	NULL,	0,	1,	6,	4,	2,	0,	0,	-1,	'0',	0,	1),
(28,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/themes/view.php',	0,	NULL,	0,	1,	1,	0,	27,	0,	0,	-1,	'0',	0,	1),
(29,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/themes/inspect.php',	0,	NULL,	0,	1,	0,	0,	28,	0,	0,	-1,	'0',	0,	1),
(30,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/view.php',	0,	NULL,	0,	1,	6,	1,	27,	0,	0,	-1,	'0',	0,	1),
(31,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/organize.php',	0,	NULL,	0,	1,	0,	0,	30,	0,	0,	-1,	'0',	0,	1),
(32,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/add.php',	0,	NULL,	0,	1,	0,	1,	30,	0,	0,	-1,	'0',	0,	1),
(33,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/form.php',	0,	NULL,	0,	1,	0,	2,	30,	0,	0,	-1,	'0',	0,	1),
(34,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/output.php',	0,	NULL,	0,	1,	0,	3,	30,	0,	0,	-1,	'0',	0,	1),
(35,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/attributes.php',	0,	NULL,	0,	1,	0,	4,	30,	0,	0,	-1,	'0',	0,	1),
(36,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/types/permissions.php',	0,	NULL,	0,	1,	0,	5,	30,	0,	0,	-1,	'0',	0,	1),
(37,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/templates/view.php',	0,	NULL,	0,	1,	1,	2,	27,	0,	0,	-1,	'0',	0,	1),
(38,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/templates/add.php',	0,	NULL,	0,	1,	0,	0,	37,	0,	0,	-1,	'0',	0,	1),
(39,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/attributes.php',	0,	NULL,	0,	1,	0,	3,	27,	0,	0,	-1,	'0',	0,	1),
(40,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/single.php',	0,	NULL,	0,	1,	0,	4,	27,	0,	0,	-1,	'0',	0,	1),
(41,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	27,	'PARENT',	'/dashboard/pages/feeds.php',	0,	NULL,	0,	1,	0,	5,	27,	0,	0,	-1,	'0',	0,	1),
(42,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	42,	'OVERRIDE',	'/dashboard/conversations/view.php',	0,	NULL,	0,	1,	1,	5,	2,	0,	0,	-1,	'0',	0,	1),
(43,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	42,	'PARENT',	'/dashboard/conversations/messages.php',	0,	NULL,	0,	1,	0,	0,	42,	0,	0,	-1,	'0',	0,	1),
(44,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	44,	'OVERRIDE',	'/dashboard/workflow/view.php',	0,	NULL,	0,	1,	2,	6,	2,	0,	0,	-1,	'0',	0,	1),
(45,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	44,	'PARENT',	'/dashboard/workflow/me.php',	0,	NULL,	0,	1,	0,	0,	44,	0,	0,	-1,	'0',	0,	1),
(46,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	44,	'PARENT',	'/dashboard/workflow/workflows.php',	0,	NULL,	0,	1,	0,	1,	44,	0,	0,	-1,	'0',	0,	1),
(47,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	47,	'OVERRIDE',	'/dashboard/blocks/view.php',	0,	NULL,	0,	1,	3,	7,	2,	0,	0,	-1,	'0',	0,	1),
(48,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	47,	'PARENT',	'/dashboard/blocks/stacks/view.php',	0,	NULL,	0,	1,	1,	0,	47,	0,	0,	-1,	'0',	0,	1),
(49,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	47,	'PARENT',	'/dashboard/blocks/permissions.php',	0,	NULL,	0,	1,	0,	1,	47,	0,	0,	-1,	'0',	0,	1),
(50,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	47,	'PARENT',	'/dashboard/blocks/stacks/list/view.php',	0,	NULL,	0,	1,	0,	0,	48,	0,	0,	-1,	'0',	0,	1),
(51,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	47,	'PARENT',	'/dashboard/blocks/types/view.php',	0,	NULL,	0,	1,	0,	2,	47,	0,	0,	-1,	'0',	0,	1),
(52,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'OVERRIDE',	'/dashboard/extend/view.php',	0,	NULL,	0,	1,	5,	8,	2,	0,	0,	-1,	'0',	0,	1),
(53,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/news.php',	0,	NULL,	0,	1,	0,	9,	2,	0,	0,	-1,	'0',	0,	1),
(54,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'PARENT',	'/dashboard/extend/install.php',	0,	NULL,	0,	1,	0,	0,	52,	0,	0,	-1,	'0',	0,	1),
(55,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'PARENT',	'/dashboard/extend/update.php',	0,	NULL,	0,	1,	0,	1,	52,	0,	0,	-1,	'0',	0,	1),
(56,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'PARENT',	'/dashboard/extend/connect.php',	0,	NULL,	0,	1,	0,	2,	52,	0,	0,	-1,	'0',	0,	1),
(57,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'PARENT',	'/dashboard/extend/themes.php',	0,	NULL,	0,	1,	0,	3,	52,	0,	0,	-1,	'0',	0,	1),
(58,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	52,	'PARENT',	'/dashboard/extend/addons.php',	0,	NULL,	0,	1,	0,	4,	52,	0,	0,	-1,	'0',	0,	1),
(59,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'OVERRIDE',	'/dashboard/system/view.php',	0,	NULL,	0,	1,	12,	10,	2,	0,	0,	-1,	'0',	0,	1),
(60,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/view.php',	0,	NULL,	0,	1,	7,	0,	59,	0,	0,	-1,	'0',	0,	1),
(61,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/name.php',	0,	NULL,	0,	1,	0,	0,	60,	0,	0,	-1,	'0',	0,	1),
(62,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/accessibility.php',	0,	NULL,	0,	1,	0,	1,	60,	0,	0,	-1,	'0',	0,	1),
(63,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/social.php',	0,	NULL,	0,	1,	0,	2,	60,	0,	0,	-1,	'0',	0,	1),
(64,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/icons.php',	0,	NULL,	0,	1,	0,	3,	60,	0,	0,	-1,	'0',	0,	1),
(65,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/editor.php',	0,	NULL,	0,	1,	0,	4,	60,	0,	0,	-1,	'0',	0,	1),
(66,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/multilingual/view.php',	0,	NULL,	0,	1,	0,	5,	60,	0,	0,	-1,	'0',	0,	1),
(67,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/basics/timezone.php',	0,	NULL,	0,	1,	0,	6,	60,	0,	0,	-1,	'0',	0,	1),
(68,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/multilingual/view.php',	0,	NULL,	0,	1,	4,	1,	59,	0,	0,	-1,	'0',	0,	1),
(69,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/multilingual/setup.php',	0,	NULL,	0,	1,	0,	0,	68,	0,	0,	-1,	'0',	0,	1),
(70,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/multilingual/copy.php',	0,	NULL,	0,	1,	0,	1,	68,	0,	0,	-1,	'0',	0,	1),
(71,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/multilingual/page_report.php',	0,	NULL,	0,	1,	0,	2,	68,	0,	0,	-1,	'0',	0,	1),
(72,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/multilingual/translate_interface.php',	0,	NULL,	0,	1,	0,	3,	68,	0,	0,	-1,	'0',	0,	1),
(73,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/view.php',	0,	NULL,	0,	1,	5,	2,	59,	0,	0,	-1,	'0',	0,	1),
(74,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/urls.php',	0,	NULL,	0,	1,	0,	0,	73,	0,	0,	-1,	'0',	0,	1),
(75,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/bulk.php',	0,	NULL,	0,	1,	0,	1,	73,	0,	0,	-1,	'0',	0,	1),
(76,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/codes.php',	0,	NULL,	0,	1,	0,	2,	73,	0,	0,	-1,	'0',	0,	1),
(77,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/excluded.php',	0,	NULL,	0,	1,	0,	3,	73,	0,	0,	-1,	'0',	0,	1),
(78,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/seo/searchindex.php',	0,	NULL,	0,	1,	0,	4,	73,	0,	0,	-1,	'0',	0,	1),
(79,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/view.php',	0,	NULL,	0,	1,	5,	3,	59,	0,	0,	-1,	'0',	0,	1),
(80,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/permissions.php',	0,	NULL,	0,	1,	0,	0,	79,	0,	0,	-1,	'0',	0,	1),
(81,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/filetypes.php',	0,	NULL,	0,	1,	0,	1,	79,	0,	0,	-1,	'0',	0,	1),
(82,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/thumbnails.php',	0,	NULL,	0,	1,	0,	2,	79,	0,	0,	-1,	'0',	0,	1),
(83,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/image_uploading.php',	0,	NULL,	0,	1,	0,	3,	79,	0,	0,	-1,	'0',	0,	1),
(84,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/files/storage.php',	0,	NULL,	0,	1,	0,	4,	79,	0,	0,	-1,	'0',	0,	1),
(85,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/optimization/view.php',	0,	NULL,	0,	1,	4,	4,	59,	0,	0,	-1,	'0',	0,	1),
(86,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/optimization/cache.php',	0,	NULL,	0,	1,	0,	0,	85,	0,	0,	-1,	'0',	0,	1),
(87,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/optimization/clearcache.php',	0,	NULL,	0,	1,	0,	1,	85,	0,	0,	-1,	'0',	0,	1),
(88,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/optimization/jobs.php',	0,	NULL,	0,	1,	0,	2,	85,	0,	0,	-1,	'0',	0,	1),
(89,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/optimization/query_log.php',	0,	NULL,	0,	1,	0,	3,	85,	0,	0,	-1,	'0',	0,	1),
(90,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/view.php',	0,	NULL,	0,	1,	8,	5,	59,	0,	0,	-1,	'0',	0,	1),
(91,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/site.php',	0,	NULL,	0,	1,	0,	0,	90,	0,	0,	-1,	'0',	0,	1),
(92,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/tasks.php',	0,	NULL,	0,	1,	0,	1,	90,	0,	0,	-1,	'0',	0,	1),
(93,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/users.php',	0,	NULL,	0,	1,	0,	2,	90,	0,	0,	-1,	'0',	0,	1),
(94,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/advanced.php',	0,	NULL,	0,	1,	0,	3,	90,	0,	0,	-1,	'0',	0,	1),
(95,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/blacklist.php',	0,	NULL,	0,	1,	0,	4,	90,	0,	0,	-1,	'0',	0,	1),
(96,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/captcha.php',	0,	NULL,	0,	1,	0,	5,	90,	0,	0,	-1,	'0',	0,	1),
(97,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/antispam.php',	0,	NULL,	0,	1,	0,	6,	90,	0,	0,	-1,	'0',	0,	1),
(98,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/permissions/maintenance.php',	0,	NULL,	0,	1,	0,	7,	90,	0,	0,	-1,	'0',	0,	1),
(99,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/registration/view.php',	0,	NULL,	0,	1,	4,	6,	59,	0,	0,	-1,	'0',	0,	1),
(100,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/registration/postlogin.php',	0,	NULL,	0,	1,	0,	0,	99,	0,	0,	-1,	'0',	0,	1),
(101,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/registration/profiles.php',	0,	NULL,	0,	1,	0,	1,	99,	0,	0,	-1,	'0',	0,	1),
(102,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/registration/open.php',	0,	NULL,	0,	1,	0,	2,	99,	0,	0,	-1,	'0',	0,	1),
(103,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/registration/authentication.php',	0,	NULL,	0,	1,	0,	3,	99,	0,	0,	-1,	'0',	0,	1),
(104,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/mail/view.php',	0,	NULL,	0,	1,	2,	7,	59,	0,	0,	-1,	'0',	0,	1),
(105,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/mail/method.php',	0,	NULL,	0,	1,	1,	0,	104,	0,	0,	-1,	'0',	0,	1),
(106,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/mail/method/test.php',	0,	NULL,	0,	1,	0,	0,	105,	0,	0,	-1,	'0',	0,	1),
(107,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/mail/importers.php',	0,	NULL,	0,	1,	0,	1,	104,	0,	0,	-1,	'0',	0,	1),
(108,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/conversations/view.php',	0,	NULL,	0,	1,	4,	8,	59,	0,	0,	-1,	'0',	0,	1),
(109,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/conversations/settings.php',	0,	NULL,	0,	1,	0,	0,	108,	0,	0,	-1,	'0',	0,	1),
(110,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/conversations/points.php',	0,	NULL,	0,	1,	0,	1,	108,	0,	0,	-1,	'0',	0,	1),
(111,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/conversations/bannedwords.php',	0,	NULL,	0,	1,	0,	2,	108,	0,	0,	-1,	'0',	0,	1),
(112,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/conversations/permissions.php',	0,	NULL,	0,	1,	0,	3,	108,	0,	0,	-1,	'0',	0,	1),
(113,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/attributes/view.php',	0,	NULL,	0,	1,	3,	9,	59,	0,	0,	-1,	'0',	0,	1),
(114,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/attributes/sets.php',	0,	NULL,	0,	1,	0,	0,	113,	0,	0,	-1,	'0',	0,	1),
(115,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/attributes/types.php',	0,	NULL,	0,	1,	0,	1,	113,	0,	0,	-1,	'0',	0,	1),
(116,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/attributes/topics/view.php',	0,	NULL,	0,	1,	1,	2,	113,	0,	0,	-1,	'0',	0,	1),
(117,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/attributes/topics/add.php',	0,	NULL,	0,	1,	0,	0,	116,	0,	0,	-1,	'0',	0,	1),
(118,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/view.php',	0,	NULL,	0,	1,	5,	10,	59,	0,	0,	-1,	'0',	0,	1),
(119,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/info.php',	0,	NULL,	0,	1,	0,	0,	118,	0,	0,	-1,	'0',	0,	1),
(120,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/debug.php',	0,	NULL,	0,	1,	0,	1,	118,	0,	0,	-1,	'0',	0,	1),
(121,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/logging.php',	0,	NULL,	0,	1,	0,	2,	118,	0,	0,	-1,	'0',	0,	1),
(122,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/proxy.php',	0,	NULL,	0,	1,	0,	3,	118,	0,	0,	-1,	'0',	0,	1),
(123,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/environment/entities.php',	0,	NULL,	0,	1,	0,	4,	118,	0,	0,	-1,	'0',	0,	1),
(124,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/backup/view.php',	0,	NULL,	0,	1,	2,	11,	59,	0,	0,	-1,	'0',	0,	1),
(125,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/backup/backup.php',	0,	NULL,	0,	1,	0,	0,	124,	0,	0,	-1,	'0',	0,	1),
(126,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	59,	'PARENT',	'/dashboard/system/backup/update.php',	0,	NULL,	0,	1,	0,	1,	124,	0,	0,	-1,	'0',	0,	1),
(127,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	127,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	11,	2,	0,	0,	-1,	'0',	0,	1),
(128,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	128,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	12,	2,	0,	0,	-1,	'0',	0,	1),
(129,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	129,	'OVERRIDE',	'/!drafts/view.php',	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	1),
(130,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/!trash/view.php',	0,	NULL,	0,	1,	2,	0,	0,	0,	0,	-1,	'0',	0,	1),
(131,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/!stacks/view.php',	0,	NULL,	0,	1,	6,	0,	0,	0,	0,	-1,	'0',	0,	1),
(132,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	132,	'OVERRIDE',	'/login.php',	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	1),
(133,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	133,	'OVERRIDE',	'/register.php',	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	1),
(134,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/account/view.php',	0,	NULL,	0,	1,	3,	0,	0,	0,	0,	-1,	'0',	0,	1),
(135,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/account/edit_profile.php',	0,	NULL,	0,	1,	0,	0,	134,	0,	0,	-1,	'0',	0,	1),
(136,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/account/avatar.php',	0,	NULL,	0,	1,	0,	1,	134,	0,	0,	-1,	'0',	0,	1),
(137,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/account/messages/view.php',	0,	NULL,	0,	1,	1,	2,	134,	0,	0,	-1,	'0',	0,	1),
(138,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/account/messages/inbox.php',	0,	NULL,	0,	1,	0,	0,	137,	0,	0,	-1,	'0',	0,	1),
(139,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/members/view.php',	0,	NULL,	0,	1,	2,	0,	1,	0,	0,	-1,	'0',	0,	1),
(140,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/members/profile.php',	0,	NULL,	0,	1,	0,	0,	139,	0,	0,	-1,	'0',	0,	1),
(141,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/members/directory.php',	0,	NULL,	0,	1,	0,	1,	139,	0,	0,	-1,	'0',	0,	1),
(142,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/page_not_found.php',	0,	NULL,	0,	1,	0,	1,	0,	0,	0,	-1,	'0',	0,	1),
(143,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/page_forbidden.php',	0,	NULL,	0,	1,	0,	1,	0,	0,	0,	-1,	'0',	0,	1),
(144,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/download_file.php',	0,	NULL,	0,	1,	0,	1,	1,	0,	0,	-1,	'0',	0,	1),
(145,	6,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	145,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(146,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	0,	131,	0,	0,	-1,	'0',	0,	1),
(147,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	1,	131,	0,	0,	-1,	'0',	0,	1),
(148,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	2,	131,	0,	0,	-1,	'0',	0,	1),
(149,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	3,	131,	0,	0,	-1,	'0',	0,	1),
(150,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	4,	131,	0,	0,	-1,	'0',	0,	1),
(151,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	5,	131,	0,	0,	-1,	'0',	0,	1),
(152,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	0,	0,	1,	130,	0,	0,	-1,	'0',	0,	1),
(153,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	0,	0,	2,	130,	0,	0,	-1,	'0',	0,	1),
(154,	6,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	154,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(156,	6,	0,	1,	0,	NULL,	NULL,	NULL,	0,	156,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	5,	1,	1,	0,	1,	-1,	'0',	0,	0),
(157,	7,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	157,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(160,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	156,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	3,	156,	0,	156,	-1,	'0',	0,	0),
(161,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	156,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	4,	156,	0,	156,	-1,	'0',	0,	0),
(162,	7,	0,	3,	0,	NULL,	NULL,	NULL,	1,	157,	'TEMPLATE',	NULL,	0,	NULL,	0,	1,	0,	5,	156,	0,	156,	-1,	'0',	0,	0),
(163,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/view.php',	0,	NULL,	0,	1,	6,	13,	2,	1,	0,	-1,	'0',	0,	1),
(164,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/list_calendar.php',	0,	NULL,	0,	1,	0,	0,	163,	1,	0,	-1,	'0',	0,	1),
(165,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/list_event.php',	0,	NULL,	0,	1,	0,	1,	163,	1,	0,	-1,	'0',	0,	1),
(166,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/calendar.php',	0,	NULL,	0,	1,	0,	2,	163,	1,	0,	-1,	'0',	0,	1),
(167,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/event.php',	0,	NULL,	0,	1,	0,	3,	163,	1,	0,	-1,	'0',	0,	1),
(168,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/types.php',	0,	NULL,	0,	1,	0,	4,	163,	1,	0,	-1,	'0',	0,	1),
(169,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/settings.php',	0,	NULL,	0,	1,	0,	5,	163,	1,	0,	-1,	'0',	0,	1),
(170,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'OVERRIDE',	'/dashboard/open_data/view.php',	0,	NULL,	0,	1,	10,	14,	2,	2,	0,	-1,	'0',	0,	1),
(171,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'PARENT',	'/dashboard/open_data/list_catalog.php',	0,	NULL,	0,	1,	0,	0,	170,	2,	0,	-1,	'0',	0,	1),
(172,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'PARENT',	'/dashboard/open_data/catalog.php',	0,	NULL,	0,	1,	0,	1,	170,	2,	0,	-1,	'0',	0,	1),
(173,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'PARENT',	'/dashboard/open_data/list_datasets.php',	0,	NULL,	0,	1,	0,	2,	170,	2,	0,	-1,	'0',	0,	1),
(174,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'PARENT',	'/dashboard/open_data/datasets.php',	0,	NULL,	0,	1,	0,	3,	170,	2,	0,	-1,	'0',	0,	1),
(175,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'PARENT',	'/dashboard/open_data/types.php',	0,	NULL,	0,	1,	0,	4,	170,	2,	0,	-1,	'0',	0,	1),
(176,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'PARENT',	'/dashboard/open_data/resource.php',	0,	NULL,	0,	1,	0,	5,	170,	2,	0,	-1,	'0',	0,	1),
(177,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'PARENT',	'/dashboard/open_data/files.php',	0,	NULL,	0,	1,	0,	6,	170,	2,	0,	-1,	'0',	0,	1),
(178,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'PARENT',	'/dashboard/open_data/list_resource.php',	0,	NULL,	0,	1,	0,	7,	170,	2,	0,	-1,	'0',	0,	1),
(179,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'PARENT',	'/dashboard/open_data/dictionary.php',	0,	NULL,	0,	1,	0,	8,	170,	2,	0,	-1,	'0',	0,	1),
(180,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	170,	'PARENT',	'/dashboard/open_data/list_dictionary.php',	0,	NULL,	0,	1,	0,	9,	170,	2,	0,	-1,	'0',	0,	1),
(181,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	2,	1,	0,	0,	-1,	'0',	0,	0),
(182,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	5,	0,	1,	0,	1,	-1,	'0',	0,	0),
(183,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	3,	182,	0,	182,	-1,	'0',	0,	0),
(184,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	4,	182,	0,	182,	-1,	'0',	0,	0),
(185,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	5,	182,	0,	182,	-1,	'0',	0,	0),
(186,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	6,	182,	0,	182,	-1,	'0',	0,	0),
(187,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	3,	1,	0,	1,	-1,	'0',	0,	0),
(188,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	3,	4,	1,	0,	1,	-1,	'0',	0,	0),
(189,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	5,	1,	0,	1,	-1,	'0',	0,	0),
(190,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	6,	1,	0,	1,	-1,	'0',	0,	0),
(191,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	7,	1,	0,	1,	-1,	'0',	0,	0),
(192,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	8,	1,	0,	1,	-1,	'0',	0,	0),
(193,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	9,	1,	0,	1,	-1,	'0',	0,	0),
(194,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	10,	1,	0,	1,	-1,	'0',	0,	0),
(195,	8,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	195,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(196,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	157,	'TEMPLATE',	NULL,	0,	NULL,	0,	1,	0,	6,	156,	0,	156,	-1,	'0',	0,	0),
(197,	8,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	3,	188,	0,	188,	-1,	'0',	0,	0),
(198,	8,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	4,	188,	0,	188,	-1,	'0',	0,	0),
(199,	8,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	5,	188,	0,	188,	-1,	'0',	0,	0),
(200,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	7,	182,	0,	182,	-1,	'0',	0,	0),
(201,	7,	0,	3,	0,	NULL,	NULL,	NULL,	1,	157,	'TEMPLATE',	NULL,	0,	NULL,	0,	1,	0,	7,	156,	0,	156,	-1,	'0',	0,	0);

DROP TABLE IF EXISTS `PageSearchIndex`;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageSearchIndex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(2,	'',	'Dashboard',	'',	'/dashboard',	'2016-05-19 10:27:33',	'2016-05-19 10:28:28',	NULL,	0),
(3,	'',	'Sitemap',	'Whole world at a glance.',	'/dashboard/sitemap',	'2016-05-19 10:27:33',	'2016-05-19 10:28:29',	NULL,	0),
(4,	'',	'Full Sitemap',	'',	'/dashboard/sitemap/full',	'2016-05-19 10:27:34',	'2016-05-19 10:28:29',	NULL,	0),
(5,	'',	'Flat View',	'',	'/dashboard/sitemap/explore',	'2016-05-19 10:27:34',	'2016-05-19 10:28:29',	NULL,	0),
(6,	'',	'Page Search',	'',	'/dashboard/sitemap/search',	'2016-05-19 10:27:34',	'2016-05-19 10:28:29',	NULL,	0),
(8,	'',	'File Manager',	'',	'/dashboard/files/search',	'2016-05-19 10:27:35',	'2016-05-19 10:28:29',	NULL,	0),
(9,	'',	'Attributes',	'',	'/dashboard/files/attributes',	'2016-05-19 10:27:36',	'2016-05-19 10:28:29',	NULL,	0),
(10,	'',	'File Sets',	'',	'/dashboard/files/sets',	'2016-05-19 10:27:36',	'2016-05-19 10:28:29',	NULL,	0),
(11,	'',	'Add File Set',	'',	'/dashboard/files/add_set',	'2016-05-19 10:27:36',	'2016-05-19 10:28:30',	NULL,	0),
(12,	'',	'Members',	'Add and manage the user accounts and groups on your website.',	'/dashboard/users',	'2016-05-19 10:27:37',	'2016-05-19 10:28:30',	NULL,	0),
(13,	'',	'Search Users',	'',	'/dashboard/users/search',	'2016-05-19 10:27:37',	'2016-05-19 10:28:30',	NULL,	0),
(14,	'',	'User Groups',	'',	'/dashboard/users/groups',	'2016-05-19 10:27:37',	'2016-05-19 10:28:30',	NULL,	0),
(15,	'',	'Attributes',	'',	'/dashboard/users/attributes',	'2016-05-19 10:27:38',	'2016-05-19 10:28:30',	NULL,	0),
(16,	'',	'Add User',	'',	'/dashboard/users/add',	'2016-05-19 10:27:38',	'2016-05-19 10:28:31',	NULL,	0),
(17,	'',	'Add Group',	'',	'/dashboard/users/add_group',	'2016-05-19 10:27:39',	'2016-05-19 10:28:31',	NULL,	0),
(19,	'',	'Group Sets',	'',	'/dashboard/users/group_sets',	'2016-05-19 10:27:40',	'2016-05-19 10:28:31',	NULL,	0),
(20,	'',	'Community Points',	NULL,	'/dashboard/users/points',	'2016-05-19 10:27:40',	'2016-05-19 10:28:31',	NULL,	0),
(22,	'',	'Actions',	NULL,	'/dashboard/users/points/actions',	'2016-05-19 10:27:41',	'2016-05-19 10:28:31',	NULL,	0),
(23,	'',	'Reports',	'Get data from forms and logs.',	'/dashboard/reports',	'2016-05-19 10:27:41',	'2016-05-19 10:28:31',	NULL,	0),
(24,	'',	'Form Results',	'Get submission data.',	'/dashboard/reports/forms',	'2016-05-19 10:27:42',	'2016-05-19 10:28:32',	NULL,	0),
(25,	'',	'Surveys',	'',	'/dashboard/reports/surveys',	'2016-05-19 10:27:42',	'2016-05-19 10:28:32',	NULL,	0),
(26,	'',	'Logs',	'',	'/dashboard/reports/logs',	'2016-05-19 10:27:42',	'2016-05-19 10:28:32',	NULL,	0),
(28,	'',	'Themes',	'Reskin your site.',	'/dashboard/pages/themes',	'2016-05-19 10:27:43',	'2016-05-19 10:28:32',	NULL,	0),
(29,	'',	'Inspect',	'',	'/dashboard/pages/themes/inspect',	'2016-05-19 10:27:43',	'2016-05-19 10:28:32',	NULL,	0),
(31,	'',	'Organize Page Type Order',	'',	'/dashboard/pages/types/organize',	'2016-05-19 10:27:45',	'2016-05-19 10:28:32',	NULL,	0),
(32,	'',	'Add Page Type',	'',	'/dashboard/pages/types/add',	'2016-05-19 10:27:45',	'2016-05-19 10:28:33',	NULL,	0),
(33,	'',	'Compose Form',	'',	'/dashboard/pages/types/form',	'2016-05-19 10:27:45',	'2016-05-19 10:28:33',	NULL,	0),
(34,	'',	'Defaults and Output',	'',	'/dashboard/pages/types/output',	'2016-05-19 10:27:46',	'2016-05-19 10:28:33',	NULL,	0),
(35,	'',	'Page Type Attributes',	'',	'/dashboard/pages/types/attributes',	'2016-05-19 10:27:46',	'2016-05-19 10:28:33',	NULL,	0),
(36,	'',	'Page Type Permissions',	'',	'/dashboard/pages/types/permissions',	'2016-05-19 10:27:47',	'2016-05-19 10:28:33',	NULL,	0),
(38,	'',	'Add Page Template',	'Add page templates to your site.',	'/dashboard/pages/templates/add',	'2016-05-19 10:27:48',	'2016-05-19 10:28:33',	NULL,	0),
(39,	'',	'Attributes',	'',	'/dashboard/pages/attributes',	'2016-05-19 10:27:48',	'2016-05-19 10:28:33',	NULL,	0),
(40,	'',	'Single Pages',	'',	'/dashboard/pages/single',	'2016-05-19 10:27:48',	'2016-05-19 10:28:34',	NULL,	0),
(41,	'',	'RSS Feeds',	'',	'/dashboard/pages/feeds',	'2016-05-19 10:27:49',	'2016-05-19 10:28:34',	NULL,	0),
(43,	'',	'Messages',	'',	'/dashboard/conversations/messages',	'2016-05-19 10:27:50',	'2016-05-19 10:28:34',	NULL,	0),
(44,	'',	'Workflow',	'',	'/dashboard/workflow',	'2016-05-19 10:27:50',	'2016-05-19 10:28:34',	NULL,	0),
(48,	'',	'Stacks',	'Share content across your site.',	'/dashboard/blocks/stacks',	'2016-05-19 10:27:52',	'2016-05-19 10:28:34',	NULL,	0),
(50,	'',	'Stack List',	'',	'/dashboard/blocks/stacks/list',	'2016-05-19 10:27:52',	'2016-05-19 10:28:35',	NULL,	0),
(51,	'',	'Block Types',	'Manage the installed block types in your site.',	'/dashboard/blocks/types',	'2016-05-19 10:27:53',	'2016-05-19 10:28:35',	NULL,	0),
(52,	'',	'Extend concrete5',	'',	'/dashboard/extend',	'2016-05-19 10:27:54',	'2016-05-19 10:28:35',	NULL,	0),
(53,	'',	'Dashboard',	'',	'/dashboard/news',	'2016-05-19 10:27:54',	'2016-05-19 10:28:35',	NULL,	0),
(54,	'',	'Add Functionality',	'Install add-ons & themes.',	'/dashboard/extend/install',	'2016-05-19 10:27:55',	'2016-05-19 10:28:35',	NULL,	0),
(55,	'',	'Update Add-Ons',	'Update your installed packages.',	'/dashboard/extend/update',	'2016-05-19 10:27:55',	'2016-05-19 10:28:35',	NULL,	0),
(56,	'',	'Connect to the Community',	'Connect to the concrete5 community.',	'/dashboard/extend/connect',	'2016-05-19 10:27:55',	'2016-05-19 10:28:36',	NULL,	0),
(57,	'',	'Get More Themes',	'Download themes from concrete5.org.',	'/dashboard/extend/themes',	'2016-05-19 10:27:56',	'2016-05-19 10:28:36',	NULL,	0),
(58,	'',	'Get More Add-Ons',	'Download add-ons from concrete5.org.',	'/dashboard/extend/addons',	'2016-05-19 10:27:56',	'2016-05-19 10:28:36',	NULL,	0),
(59,	'',	'System & Settings',	'Secure and setup your site.',	'/dashboard/system',	'2016-05-19 10:27:57',	'2016-05-19 10:28:36',	NULL,	0),
(61,	'',	'Site Name',	'',	'/dashboard/system/basics/name',	'2016-05-19 10:27:58',	'2016-05-19 10:28:36',	NULL,	0),
(62,	'',	'Accessibility',	'',	'/dashboard/system/basics/accessibility',	'2016-05-19 10:27:58',	'2016-05-19 10:28:37',	NULL,	0),
(63,	'',	'Social Links',	'',	'/dashboard/system/basics/social',	'2016-05-19 10:27:58',	'2016-05-19 10:28:37',	NULL,	0),
(64,	'',	'Bookmark Icons',	'Bookmark icon and mobile home screen icon setup.',	'/dashboard/system/basics/icons',	'2016-05-19 10:27:59',	'2016-05-19 10:28:37',	NULL,	0),
(65,	'',	'Rich Text Editor',	'',	'/dashboard/system/basics/editor',	'2016-05-19 10:27:59',	'2016-05-19 10:28:37',	NULL,	0),
(66,	'',	'Languages',	'',	'/dashboard/system/basics/multilingual',	'2016-05-19 10:28:00',	'2016-05-19 10:28:37',	NULL,	0),
(67,	'',	'Time Zone',	'',	'/dashboard/system/basics/timezone',	'2016-05-19 10:28:00',	'2016-05-19 10:28:37',	NULL,	0),
(68,	'',	'Multilingual',	'Run your site in multiple languages.',	'/dashboard/system/multilingual',	'2016-05-19 10:28:01',	'2016-05-19 10:28:37',	NULL,	0),
(74,	'',	'URLs and Redirection',	'',	'/dashboard/system/seo/urls',	'2016-05-19 10:28:03',	'2016-05-19 10:28:37',	NULL,	0),
(75,	'',	'Bulk SEO Updater',	'',	'/dashboard/system/seo/bulk',	'2016-05-19 10:28:04',	'2016-05-19 10:28:38',	NULL,	0),
(76,	'',	'Tracking Codes',	'',	'/dashboard/system/seo/codes',	'2016-05-19 10:28:04',	'2016-05-19 10:28:38',	NULL,	0),
(77,	'',	'Excluded URL Word List',	'',	'/dashboard/system/seo/excluded',	'2016-05-19 10:28:04',	'2016-05-19 10:28:38',	NULL,	0),
(78,	'',	'Search Index',	'',	'/dashboard/system/seo/searchindex',	'2016-05-19 10:28:05',	'2016-05-19 10:28:38',	NULL,	0),
(80,	'',	'File Manager Permissions',	'',	'/dashboard/system/files/permissions',	'2016-05-19 10:28:06',	'2016-05-19 10:28:38',	NULL,	0),
(81,	'',	'Allowed File Types',	'',	'/dashboard/system/files/filetypes',	'2016-05-19 10:28:06',	'2016-05-19 10:28:38',	NULL,	0),
(82,	'',	'Thumbnails',	'',	'/dashboard/system/files/thumbnails',	'2016-05-19 10:28:06',	'2016-05-19 10:28:39',	NULL,	0),
(83,	'',	'Image Uploading',	'',	'/dashboard/system/files/image_uploading',	'2016-05-19 10:28:07',	'2016-05-19 10:28:39',	NULL,	0),
(84,	'',	'File Storage Locations',	'',	'/dashboard/system/files/storage',	'2016-05-19 10:28:07',	'2016-05-19 10:28:39',	NULL,	0),
(86,	'',	'Cache & Speed Settings',	'',	'/dashboard/system/optimization/cache',	'2016-05-19 10:28:08',	'2016-05-19 10:28:39',	NULL,	0),
(87,	'',	'Clear Cache',	'',	'/dashboard/system/optimization/clearcache',	'2016-05-19 10:28:08',	'2016-05-19 10:28:39',	NULL,	0),
(88,	'',	'Automated Jobs',	'',	'/dashboard/system/optimization/jobs',	'2016-05-19 10:28:09',	'2016-05-19 10:28:39',	NULL,	0),
(89,	'',	'Database Query Log',	'',	'/dashboard/system/optimization/query_log',	'2016-05-19 10:28:09',	'2016-05-19 10:28:39',	NULL,	0),
(91,	'',	'Site Access',	'',	'/dashboard/system/permissions/site',	'2016-05-19 10:28:10',	'2016-05-19 10:28:39',	NULL,	0),
(92,	'',	'Task Permissions',	'',	'/dashboard/system/permissions/tasks',	'2016-05-19 10:28:11',	'2016-05-19 10:28:40',	NULL,	0),
(95,	'',	'IP Blacklist',	'',	'/dashboard/system/permissions/blacklist',	'2016-05-19 10:28:12',	'2016-05-19 10:28:40',	NULL,	0),
(96,	'',	'Captcha Setup',	'',	'/dashboard/system/permissions/captcha',	'2016-05-19 10:28:12',	'2016-05-19 10:28:40',	NULL,	0),
(97,	'',	'Spam Control',	'',	'/dashboard/system/permissions/antispam',	'2016-05-19 10:28:13',	'2016-05-19 10:28:40',	NULL,	0),
(98,	'',	'Maintenance Mode',	'',	'/dashboard/system/permissions/maintenance',	'2016-05-19 10:28:13',	'2016-05-19 10:28:40',	NULL,	0),
(100,	'',	'Login Destination',	'',	'/dashboard/system/registration/postlogin',	'2016-05-19 10:28:14',	'2016-05-19 10:28:40',	NULL,	0),
(101,	'',	'Public Profiles',	'',	'/dashboard/system/registration/profiles',	'2016-05-19 10:28:15',	'2016-05-19 10:28:41',	NULL,	0),
(102,	'',	'Public Registration',	'',	'/dashboard/system/registration/open',	'2016-05-19 10:28:15',	'2016-05-19 10:28:41',	NULL,	0),
(103,	'',	'Authentication Types',	'',	'/dashboard/system/registration/authentication',	'2016-05-19 10:28:15',	'2016-05-19 10:28:41',	NULL,	0),
(104,	'',	'Email',	'Control how your site send and processes mail.',	'/dashboard/system/mail',	'2016-05-19 10:28:16',	'2016-05-19 10:28:41',	NULL,	0),
(105,	'',	'SMTP Method',	'',	'/dashboard/system/mail/method',	'2016-05-19 10:28:16',	'2016-05-19 10:28:41',	NULL,	0),
(106,	'',	'Test Mail Settings',	'',	'/dashboard/system/mail/method/test',	'2016-05-19 10:28:17',	'2016-05-19 10:28:41',	NULL,	0),
(107,	'',	'Email Importers',	'',	'/dashboard/system/mail/importers',	'2016-05-19 10:28:17',	'2016-05-19 10:28:41',	NULL,	0),
(108,	'',	'Conversations',	'Manage your conversations settings',	'/dashboard/system/conversations',	'2016-05-19 10:28:17',	'2016-05-19 10:28:42',	NULL,	0),
(109,	'',	'Settings',	'',	'/dashboard/system/conversations/settings',	'2016-05-19 10:28:18',	'2016-05-19 10:28:42',	NULL,	0),
(110,	'',	'Community Points',	'',	'/dashboard/system/conversations/points',	'2016-05-19 10:28:18',	'2016-05-19 10:28:42',	NULL,	0),
(111,	'',	'Banned Words',	'',	'/dashboard/system/conversations/bannedwords',	'2016-05-19 10:28:19',	'2016-05-19 10:28:42',	NULL,	0),
(113,	'',	'Attributes',	'Setup attributes for pages, users, files and more.',	'/dashboard/system/attributes',	'2016-05-19 10:28:19',	'2016-05-19 10:28:42',	NULL,	0),
(114,	'',	'Sets',	'Group attributes into sets for easier organization',	'/dashboard/system/attributes/sets',	'2016-05-19 10:28:20',	'2016-05-19 10:28:42',	NULL,	0),
(115,	'',	'Types',	'Choose which attribute types are available for different items.',	'/dashboard/system/attributes/types',	'2016-05-19 10:28:20',	'2016-05-19 10:28:42',	NULL,	0),
(116,	'',	'Topics',	'',	'/dashboard/system/attributes/topics',	'2016-05-19 10:28:21',	'2016-05-19 10:28:42',	NULL,	0),
(118,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(119,	'',	'Environment Information',	'',	'/dashboard/system/environment/info',	'2016-05-19 10:28:22',	'2016-05-19 10:28:43',	NULL,	0),
(120,	'',	'Debug Settings',	'',	'/dashboard/system/environment/debug',	'2016-05-19 10:28:22',	'2016-05-19 10:28:43',	NULL,	0),
(121,	'',	'Logging Settings',	'',	'/dashboard/system/environment/logging',	'2016-05-19 10:28:23',	'2016-05-19 10:28:43',	NULL,	0),
(122,	'',	'Proxy Server',	'',	'/dashboard/system/environment/proxy',	'2016-05-19 10:28:23',	'2016-05-19 10:28:43',	NULL,	0),
(123,	'',	'Database Entities',	'',	'/dashboard/system/environment/entities',	'2016-05-19 10:28:23',	'2016-05-19 10:28:43',	NULL,	0),
(124,	'',	'Backup & Restore',	'Backup or restore your website.',	'/dashboard/system/backup',	'2016-05-19 10:28:24',	'2016-05-19 10:28:43',	NULL,	0),
(126,	'',	'Update concrete5',	'',	'/dashboard/system/backup/update',	'2016-05-19 10:28:25',	'2016-05-19 10:28:44',	NULL,	0),
(127,	'\n\n                                      ',	'Welcome to concrete5',	'Learn about how to use concrete5, how to develop for concrete5, and get general help.',	'/dashboard/welcome',	'2016-05-19 10:28:28',	'2016-05-19 10:28:44',	NULL,	0),
(128,	'',	'Customize Dashboard Home',	'',	'/dashboard/home',	'2016-05-19 10:28:28',	'2016-05-19 10:28:46',	NULL,	0),
(129,	'',	'Drafts',	'',	'/!drafts',	'2016-05-19 10:28:46',	'2016-05-19 10:28:52',	NULL,	0),
(130,	'',	'Trash',	'',	'/!trash',	'2016-05-19 10:28:46',	'2016-05-19 10:28:52',	NULL,	0),
(131,	'',	'Stacks',	'',	'/!stacks',	'2016-05-19 10:28:47',	'2016-05-19 10:28:53',	NULL,	0),
(134,	'',	'My Account',	'',	'/account',	'2016-05-19 10:28:48',	'2016-05-19 10:28:53',	NULL,	0),
(1,	' \r\n(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\nSENATICs Paraguay   \r\n \r\nNoticias Titulo Slider 1  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto  Título Slide 2  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500.   ',	'Portada',	'',	NULL,	'2016-05-19 10:26:57',	'2016-06-08 10:40:29',	NULL,	0),
(146,	'',	'Header Site Title',	NULL,	'/!stacks/header-site-title',	'2016-05-19 10:30:20',	'2016-05-26 10:55:37',	NULL,	0),
(147,	'',	'Header Navigation',	NULL,	'/!stacks/header-navigation',	'2016-05-19 10:30:20',	'2016-05-20 07:23:23',	NULL,	0),
(148,	'\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i  Portal construido conjuntamente con la SENATICs  2016 Secretaría Nacional de Tecnologías de la Información y Comunicación  ',	'Footer Legal',	NULL,	'/!stacks/footer-legal',	'2016-05-19 10:30:21',	'2016-06-02 13:25:45',	NULL,	0),
(150,	'',	'Footer Contact',	NULL,	'/!stacks/footer-contact',	'2016-05-19 10:30:21',	'2016-05-26 10:55:37',	NULL,	0),
(151,	'',	'Search',	NULL,	'/!stacks/search',	'2016-05-20 07:20:31',	'2016-05-26 10:55:38',	NULL,	0),
(156,	' Categorías / Filtrar\r\n  ',	'Noticias',	'',	'/noticias',	'2016-05-23 14:52:46',	'2016-05-24 09:01:32',	NULL,	0),
(201,	'Últimas Noticias Publicadas  Compartir esta noticia\r\n  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n  ',	'Noticia de prueba 5',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n',	'/noticias/noticia-de-prueba-5',	'2016-06-02 14:16:00',	'2016-06-02 14:17:54',	NULL,	0),
(160,	'Últimas Noticias Publicadas  Compartir esta noticia\r\n  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.   ',	'Noticia de prueba 1',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/noticias/noticia-1',	'2016-05-24 08:23:00',	'2016-06-02 10:51:25',	NULL,	0),
(161,	'Últimas Noticias Publicadas  Compartir esta noticia\r\n   Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.      Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.   Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.   Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.      ',	'Noticia de prueba 2',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/noticias/noticia-2',	'2016-05-24 08:28:00',	'2016-06-02 10:51:49',	NULL,	0),
(162,	'Últimas Noticias Publicadas  Compartir esta noticia\r\n     Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.    L  orem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.   Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos   electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum,   y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.   ',	'Noticia de prueba 3',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\n',	'/noticias/noticia-4',	'2016-05-24 08:43:00',	'2016-06-02 10:52:13',	NULL,	0),
(173,	'',	'Listar Conjuntos de Datos',	'',	'/dashboard/open_data/list_datasets',	'2016-05-24 08:54:05',	'2016-05-24 08:54:06',	NULL,	0),
(176,	'',	'Agregar/Editar Recursos',	'',	'/dashboard/open_data/resource',	'2016-05-24 08:54:06',	'2016-05-24 08:54:08',	NULL,	0),
(177,	'',	'Agregar/Editar Archivos',	'',	'/dashboard/open_data/files',	'2016-05-24 08:54:08',	'2016-05-24 08:54:08',	NULL,	0),
(178,	'',	'Listar Recursos',	'',	'/dashboard/open_data/list_resource',	'2016-05-24 08:54:08',	'2016-05-24 08:54:09',	NULL,	0),
(179,	'',	'Agregar Diccionario',	'',	'/dashboard/open_data/dictionary',	'2016-05-24 08:54:09',	'2016-05-24 08:54:10',	NULL,	0),
(180,	'',	'Listar Diccionario',	'',	'/dashboard/open_data/list_dictionary',	'2016-05-24 08:54:10',	'2016-05-24 08:54:11',	NULL,	0),
(181,	'',	'Buscador',	'',	'/buscador',	'2016-05-24 08:55:00',	'2016-05-24 09:00:23',	NULL,	0),
(182,	'',	'Institución',	'',	'/institucion',	'2016-05-24 09:16:47',	'2016-06-02 14:09:19',	NULL,	0),
(183,	'Misión  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.  Visión  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.  Objetivos  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.  ',	'Misión y Visión',	'',	'/institucion/mision-y-vision',	'2016-05-24 09:19:57',	'2016-05-24 09:29:39',	NULL,	0),
(184,	'\r\n  ',	'Organigrama',	'',	'/institucion/organigrama',	'2016-05-24 09:30:13',	'2016-06-02 14:11:17',	NULL,	0),
(185,	' Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.  ',	'Marco Legal',	'',	'/institucion/marco-legal',	'2016-05-24 09:33:23',	'2016-05-24 10:05:07',	NULL,	0),
(186,	'Nombre de la Persona\nCargo / Ocupación\nNombre de la Institución\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. ',	'Autoridades',	'',	'/institucion/autoridades',	'2016-05-24 10:05:14',	'2016-05-24 10:12:05',	NULL,	0),
(187,	'',	'Agenda',	'',	'/agenda',	'2016-05-24 10:41:39',	'2016-05-24 11:01:15',	NULL,	0),
(188,	'',	'Galería',	'',	'/galeria',	'2016-05-24 11:01:32',	'2016-06-02 10:56:09',	NULL,	0),
(189,	'',	'Transparencia',	'',	'/transparencia',	'2016-05-24 11:12:08',	'2016-06-02 09:56:15',	NULL,	0),
(190,	'Secretaría Nacional de Tecnología de la Información y ComunicaciónDiección: Complejo Santos E2 - Gral. Santos 1170 c/ ConcordiaTelefono: (+595 21) 217-9000Asuncion - Paraguay ',	'Contacto',	'',	'/contacto',	'2016-05-24 11:12:24',	'2016-06-02 14:08:29',	NULL,	0),
(191,	'',	'Trámites',	'',	'/tramites',	'2016-06-02 09:24:53',	'2016-06-02 09:25:09',	NULL,	0),
(192,	'',	'Servicios',	'',	'/servicios',	'2016-06-02 09:27:57',	'2016-06-02 09:28:10',	NULL,	0),
(193,	'',	'Compras Públicas',	'',	'/compras-publicas',	'2016-06-02 09:28:31',	'2016-06-02 09:28:45',	NULL,	0),
(194,	'',	'Datos',	'',	'/datos',	'2016-06-02 09:49:10',	'2016-06-02 09:52:43',	NULL,	0),
(149,	'\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n\r\nEnlaces de Interés\r\n\r\n  \r\n    Presidencia de la República del Paraguay\r\n    Secretaría de la Función Pública (SFP)\r\n    Secretaría de Acción Social (SAS)\r\n    Fondo Nacional de la Cultura y las Artes (FONDEC)\r\n    Secretaría Nacional de Turismo (SENATUR)\r\n    Ministerio de Justicia (MJ)\r\n    Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)\r\n      \r\n  \r\n \r\n\r\n  \r\n    Secretaría Nacional de Cultura (SNC)\r\n    Secretaría de Información y Comunicación (SICOM)\r\n    Instituto Paraguayo del Indigena (INDI)\r\n    Ministerio de Educación y Cultura (MEC)\r\n    Ministerio de Hacienda (MH)\r\n    Secretaría Nacional de Deportes (SND)\r\n    Ministerio de Salud Pública y Bienestar Social (MSPyBS)\r\n  \r\n  ',	'Footer Navigation',	NULL,	'/!stacks/footer-navigation',	'2016-05-19 10:30:21',	'2016-06-08 10:40:27',	NULL,	0),
(196,	'Últimas Noticias Publicadas  Compartir esta noticia\r\n   Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.   ',	'Noticia de prueba 4',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/noticias/noticia-de-prueba-4',	'2016-06-02 10:52:00',	'2016-06-02 10:53:30',	NULL,	0),
(197,	'',	'Galería de Imágenes',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/galeria/galeria-de-imagenes',	'2016-06-02 10:56:00',	'2016-06-02 13:29:04',	NULL,	0),
(198,	'',	'Galería de Videos',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/galeria/galeria-de-videos',	'2016-06-02 11:05:43',	'2016-06-02 11:09:51',	NULL,	0),
(199,	'',	'Galería de Eventos',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/galeria/galeria-de-eventos',	'2016-06-02 11:26:57',	'2016-06-02 11:29:59',	NULL,	0),
(200,	'',	'MECIP',	'',	'/institucion/mecip',	'2016-06-02 11:52:30',	'2016-06-02 11:52:59',	NULL,	0);

DROP TABLE IF EXISTS `PageTemplates`;
CREATE TABLE `PageTemplates` (
  `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pTemplateID`),
  UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
(1,	'core_stack',	'',	'Stack',	1,	0),
(2,	'dashboard_primary_five',	'',	'Dashboard Primary + Five',	1,	0),
(3,	'dashboard_header_four_col',	'',	'Dashboard Header + Four Column',	1,	0),
(4,	'dashboard_full',	'',	'Dashboard Full',	1,	0),
(6,	'pagina',	'full.png',	'Pagina',	0,	0),
(7,	'index',	'blank.png',	'Index',	0,	0);

DROP TABLE IF EXISTS `PageThemeCustomStyles`;
CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageThemeCustomStyles` (`pThemeID`, `scvlID`, `preset`, `sccRecordID`) VALUES
(3,	4,	'',	4);

DROP TABLE IF EXISTS `PageThemes`;
CREATE TABLE `PageThemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageThemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
(3,	'TemplateV2-campanha',	'SENATICs-UI - V2(campanhas)',	'Template SENATICs',	0,	0);

DROP TABLE IF EXISTS `PageTypeComposerControlTypes`;
CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypeComposerControlTypes` (`ptComposerControlTypeID`, `ptComposerControlTypeHandle`, `ptComposerControlTypeName`, `pkgID`) VALUES
(1,	'core_page_property',	'Built-In Property',	0),
(2,	'collection_attribute',	'Custom Attribute',	0),
(3,	'block',	'Block',	0);

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSetControls`;
CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypeComposerFormLayoutSetControls` (`ptComposerFormLayoutSetControlID`, `ptComposerFormLayoutSetID`, `ptComposerControlTypeID`, `ptComposerControlObject`, `ptComposerFormLayoutSetControlDisplayOrder`, `ptComposerFormLayoutSetControlCustomLabel`, `ptComposerFormLayoutSetControlCustomTemplate`, `ptComposerFormLayoutSetControlDescription`, `ptComposerFormLayoutSetControlRequired`) VALUES
(1,	1,	1,	'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":11:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	0,	'Page Name',	NULL,	NULL,	1),
(2,	1,	1,	'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	2,	NULL,	NULL,	NULL,	0),
(3,	1,	1,	'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	1,	'URL (Automática)',	'',	'',	0),
(5,	1,	1,	'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	3,	'Ubicación dentro del Mapa del Sitio',	'',	'',	0),
(8,	3,	1,	'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":11:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	0,	'Título de la Noticia',	'',	'',	1),
(9,	3,	1,	'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	1,	'URL (Automática)',	'',	'',	0),
(10,	3,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":12:{s:7:\"\0*\0akID\";s:2:\"18\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"18\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Miniatura\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	2,	'Imagen de Portada',	'',	'',	0),
(11,	3,	1,	'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	3,	'Descripción Corta',	'',	'',	0),
(12,	3,	1,	'O:82:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:9:\"date_time\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:9:\"date_time\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:39:\"/concrete/attributes/date_time/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	4,	NULL,	NULL,	NULL,	0),
(13,	3,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":12:{s:7:\"\0*\0akID\";s:2:\"19\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"19\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Categorías\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/topics/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	5,	NULL,	NULL,	NULL,	0),
(14,	3,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":12:{s:7:\"\0*\0akID\";s:1:\"8\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:1:\"8\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Etiquetas\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	6,	NULL,	NULL,	NULL,	0),
(15,	3,	3,	'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":14:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:9:\"Contenido\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	7,	NULL,	NULL,	NULL,	0),
(16,	1,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":12:{s:7:\"\0*\0akID\";s:1:\"5\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:1:\"5\";s:24:\"\0*\0ptComposerControlName\";s:15:\"Excluir del Nav\";s:27:\"\0*\0ptComposerControlIconSRC\";s:37:\"/concrete/attributes/boolean/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	4,	'Excluir del Menú Principal',	'',	'',	0),
(17,	4,	1,	'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":11:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	0,	'Título del Album',	'',	'',	1),
(18,	4,	1,	'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	1,	NULL,	NULL,	NULL,	0),
(19,	4,	1,	'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	2,	NULL,	NULL,	NULL,	0),
(20,	4,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":12:{s:7:\"\0*\0akID\";s:2:\"18\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"18\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Miniatura\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	3,	'Portada del Album',	'',	'',	1);

DROP TABLE IF EXISTS `PageTypeComposerFormLayoutSets`;
CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypeComposerFormLayoutSets` (`ptComposerFormLayoutSetID`, `ptID`, `ptComposerFormLayoutSetName`, `ptComposerFormLayoutSetDescription`, `ptComposerFormLayoutSetDisplayOrder`) VALUES
(1,	6,	'Configuración Básica de la Página',	'',	0),
(3,	7,	'Configuración Básica de la Noticia',	'',	0),
(4,	8,	'Publicador Galería',	'',	0);

DROP TABLE IF EXISTS `PageTypeComposerOutputBlocks`;
CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypeComposerOutputBlocks` (`ptComposerOutputBlockID`, `cID`, `arHandle`, `cbDisplayOrder`, `ptComposerFormLayoutSetControlID`, `bID`) VALUES
(1,	152,	'Main',	0,	6,	18),
(2,	153,	'Main',	0,	6,	19),
(76,	158,	'Contenido',	3,	15,	114),
(92,	159,	'Contenido',	6,	15,	136),
(1227,	160,	'Contenido',	6,	15,	1347),
(1238,	161,	'Contenido',	8,	15,	1358),
(1244,	162,	'Contenido',	8,	15,	1364),
(1258,	196,	'Contenido',	8,	15,	1378),
(1278,	201,	'Contenido',	8,	15,	1445);

DROP TABLE IF EXISTS `PageTypeComposerOutputControls`;
CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypeComposerOutputControls` (`ptComposerOutputControlID`, `pTemplateID`, `ptID`, `ptComposerFormLayoutSetControlID`) VALUES
(4,	6,	7,	15);

DROP TABLE IF EXISTS `PageTypePageTemplateDefaultPages`;
CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypePageTemplateDefaultPages` (`pTemplateID`, `ptID`, `cID`) VALUES
(6,	6,	154),
(6,	7,	157),
(6,	8,	195);

DROP TABLE IF EXISTS `PageTypePageTemplates`;
CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypePageTemplates` (`ptID`, `pTemplateID`) VALUES
(6,	6),
(7,	6),
(8,	6);

DROP TABLE IF EXISTS `PageTypePermissionAssignments`;
CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypePermissionAssignments` (`ptID`, `pkID`, `paID`) VALUES
(1,	59,	9),
(2,	59,	9),
(3,	59,	9),
(4,	59,	9),
(5,	59,	9),
(6,	59,	9),
(7,	59,	105),
(8,	59,	9),
(1,	60,	9),
(2,	60,	9),
(3,	60,	9),
(4,	60,	9),
(5,	60,	9),
(6,	60,	9),
(7,	60,	9),
(8,	60,	9),
(1,	61,	9),
(2,	61,	9),
(3,	61,	9),
(4,	61,	9),
(5,	61,	9),
(6,	61,	9),
(7,	61,	9),
(8,	61,	9),
(1,	62,	9),
(2,	62,	9),
(3,	62,	9),
(4,	62,	9),
(5,	62,	9),
(6,	62,	9),
(7,	62,	9),
(8,	62,	9),
(1,	63,	26),
(2,	63,	27),
(3,	63,	28),
(4,	63,	29),
(5,	63,	30),
(6,	63,	31),
(7,	63,	102),
(8,	63,	115);

DROP TABLE IF EXISTS `PageTypePublishTargetTypes`;
CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypePublishTargetTypes` (`ptPublishTargetTypeID`, `ptPublishTargetTypeHandle`, `ptPublishTargetTypeName`, `pkgID`) VALUES
(1,	'parent_page',	'Always publish below a certain page',	0),
(2,	'page_type',	'Choose from pages of a certain type',	0),
(3,	'all',	'Choose from all pages when publishing',	0);

DROP TABLE IF EXISTS `PageTypes`;
CREATE TABLE `PageTypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`) VALUES
(1,	'Stack',	'core_stack',	3,	0,	'A',	1,	0,	0,	0,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),
(2,	'Stack Category',	'core_stack_category',	3,	0,	'A',	1,	0,	1,	0,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),
(3,	'Dashboard Primary + Five',	'dashboard_primary_five',	3,	0,	'A',	1,	0,	2,	0,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),
(4,	'Dashboard Header + Four Column',	'dashboard_header_four_col',	3,	0,	'A',	1,	0,	3,	0,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),
(5,	'Dashboard Full',	'dashboard_full',	3,	0,	'A',	1,	0,	4,	0,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";N;s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";N;}'),
(6,	'Página en blanco',	'pagina',	3,	6,	'C',	0,	1,	0,	1,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:15:\"sitemap_in_page\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}'),
(7,	'Publicador de Noticias',	'noticias',	1,	6,	'C',	0,	1,	1,	1,	0,	'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"156\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}'),
(8,	'Publicador Galería',	'galery',	1,	6,	'C',	0,	1,	2,	1,	0,	'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"188\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}');

DROP TABLE IF EXISTS `PageWorkflowProgress`;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PermissionAccess`;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccess` (`paID`, `paIsInUse`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	1),
(6,	1),
(7,	1),
(8,	1),
(9,	1),
(10,	1),
(11,	1),
(12,	1),
(13,	1),
(14,	1),
(15,	1),
(16,	1),
(17,	1),
(18,	1),
(19,	1),
(20,	1),
(21,	1),
(22,	1),
(23,	1),
(24,	1),
(25,	1),
(26,	1),
(27,	1),
(28,	1),
(29,	1),
(30,	1),
(31,	1),
(32,	1),
(33,	1),
(34,	1),
(35,	1),
(36,	1),
(37,	1),
(38,	1),
(39,	1),
(40,	1),
(41,	1),
(42,	1),
(43,	1),
(44,	1),
(45,	1),
(46,	1),
(47,	1),
(48,	1),
(49,	1),
(50,	1),
(51,	1),
(52,	1),
(53,	1),
(54,	1),
(55,	1),
(56,	1),
(57,	1),
(58,	1),
(59,	1),
(60,	1),
(61,	1),
(62,	1),
(63,	1),
(64,	1),
(65,	1),
(66,	1),
(67,	1),
(68,	1),
(69,	1),
(70,	1),
(71,	1),
(72,	1),
(73,	1),
(74,	1),
(75,	1),
(76,	1),
(77,	1),
(78,	1),
(79,	1),
(80,	1),
(81,	1),
(82,	1),
(83,	1),
(84,	1),
(85,	1),
(86,	1),
(87,	1),
(88,	1),
(89,	1),
(90,	1),
(91,	1),
(92,	1),
(93,	1),
(94,	1),
(95,	1),
(96,	1),
(97,	1),
(98,	1),
(99,	1),
(100,	1),
(101,	1),
(102,	1),
(103,	1),
(104,	1),
(105,	1),
(106,	1),
(107,	1),
(108,	1),
(109,	0),
(110,	1),
(111,	0),
(112,	1),
(113,	1),
(114,	1),
(115,	1),
(116,	1),
(117,	1),
(118,	0),
(119,	0),
(120,	1),
(121,	1),
(122,	1),
(123,	1),
(124,	1),
(125,	1),
(126,	1),
(127,	1),
(128,	1),
(129,	1),
(130,	1),
(131,	1),
(132,	1),
(133,	1),
(134,	1),
(135,	1);

DROP TABLE IF EXISTS `PermissionAccessEntities`;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1,	1),
(3,	1),
(5,	1),
(7,	1),
(2,	5),
(6,	6),
(4,	7);

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessEntityGroups` (`pegID`, `peID`, `gID`) VALUES
(1,	1,	3),
(2,	3,	1),
(3,	5,	2),
(4,	7,	4);

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessEntityTypeCategories` (`petID`, `pkCategoryID`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	1),
(1,	4),
(2,	4),
(3,	4),
(4,	4),
(1,	5),
(2,	5),
(3,	5),
(4,	5),
(6,	5),
(1,	6),
(2,	6),
(3,	6),
(4,	6),
(6,	6),
(1,	7),
(2,	7),
(3,	7),
(4,	7),
(1,	8),
(2,	8),
(3,	8),
(4,	8),
(1,	9),
(2,	9),
(3,	9),
(4,	9),
(1,	10),
(2,	10),
(3,	10),
(4,	10),
(1,	11),
(2,	11),
(3,	11),
(4,	11),
(1,	12),
(2,	12),
(3,	12),
(4,	12),
(1,	13),
(2,	13),
(3,	13),
(4,	13),
(1,	14),
(2,	14),
(3,	14),
(4,	14),
(5,	14),
(1,	15),
(2,	15),
(3,	15),
(4,	15),
(1,	16),
(2,	16),
(3,	16),
(4,	16),
(1,	17),
(2,	17),
(3,	17),
(4,	17),
(1,	18),
(2,	18),
(3,	18),
(4,	18),
(1,	19),
(2,	19),
(3,	19),
(4,	19),
(7,	19),
(1,	20),
(2,	20),
(3,	20),
(4,	20),
(7,	20),
(1,	21),
(2,	21),
(4,	21);

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessEntityTypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1,	'group',	'Group',	0),
(2,	'user',	'User',	0),
(3,	'group_set',	'Group Set',	0),
(4,	'group_combination',	'Group Combination',	0),
(5,	'page_owner',	'Page Owner',	0),
(6,	'file_uploader',	'File Uploader',	0),
(7,	'conversation_message_author',	'Message Author',	0);

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PermissionAccessList`;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessList` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1,	1,	0,	10),
(2,	1,	0,	10),
(3,	1,	0,	10),
(4,	1,	0,	10),
(5,	1,	0,	10),
(6,	1,	0,	10),
(7,	1,	0,	10),
(8,	1,	0,	10),
(9,	1,	0,	10),
(10,	1,	0,	10),
(11,	1,	0,	10),
(12,	1,	0,	10),
(13,	1,	0,	10),
(14,	1,	0,	10),
(15,	1,	0,	10),
(16,	1,	0,	10),
(17,	1,	0,	10),
(18,	1,	0,	10),
(19,	1,	0,	10),
(20,	1,	0,	10),
(21,	1,	0,	10),
(22,	1,	0,	10),
(23,	1,	0,	10),
(24,	1,	0,	10),
(25,	1,	0,	10),
(26,	2,	0,	10),
(27,	2,	0,	10),
(28,	2,	0,	10),
(29,	2,	0,	10),
(30,	2,	0,	10),
(31,	2,	0,	10),
(32,	3,	0,	10),
(33,	1,	0,	10),
(33,	3,	0,	10),
(34,	1,	0,	10),
(35,	1,	0,	10),
(36,	1,	0,	10),
(37,	1,	0,	10),
(38,	1,	0,	10),
(39,	1,	0,	10),
(40,	1,	0,	10),
(41,	1,	0,	10),
(42,	3,	0,	10),
(43,	1,	0,	10),
(44,	1,	0,	10),
(45,	1,	0,	10),
(46,	1,	0,	10),
(47,	1,	0,	10),
(48,	1,	0,	10),
(49,	1,	0,	10),
(50,	1,	0,	10),
(51,	1,	0,	10),
(52,	1,	0,	10),
(53,	1,	0,	10),
(54,	1,	0,	10),
(55,	1,	0,	10),
(56,	1,	0,	10),
(57,	1,	0,	10),
(58,	1,	0,	10),
(59,	1,	0,	10),
(60,	3,	0,	10),
(61,	3,	0,	10),
(62,	1,	0,	10),
(63,	3,	0,	10),
(64,	1,	0,	10),
(65,	1,	0,	10),
(66,	1,	0,	10),
(67,	1,	0,	10),
(68,	1,	0,	10),
(69,	1,	0,	10),
(70,	1,	0,	10),
(71,	1,	0,	10),
(72,	1,	0,	10),
(73,	1,	0,	10),
(74,	1,	0,	10),
(75,	1,	0,	10),
(76,	1,	0,	10),
(77,	1,	0,	10),
(78,	1,	0,	10),
(79,	1,	0,	10),
(80,	1,	0,	10),
(81,	1,	0,	10),
(81,	2,	0,	10),
(82,	1,	0,	10),
(82,	2,	0,	10),
(83,	1,	0,	10),
(83,	2,	0,	10),
(84,	1,	0,	10),
(84,	2,	0,	10),
(85,	1,	0,	10),
(85,	2,	0,	10),
(86,	1,	0,	10),
(86,	2,	0,	10),
(87,	1,	0,	10),
(87,	2,	0,	10),
(88,	1,	0,	10),
(88,	2,	0,	10),
(89,	1,	0,	10),
(90,	1,	0,	10),
(91,	1,	0,	10),
(92,	1,	0,	10),
(93,	1,	0,	10),
(94,	3,	0,	10),
(95,	3,	0,	10),
(96,	1,	0,	10),
(96,	4,	0,	10),
(97,	1,	0,	10),
(97,	4,	0,	10),
(98,	1,	0,	10),
(98,	5,	0,	10),
(99,	1,	0,	10),
(100,	1,	0,	10),
(101,	1,	0,	10),
(102,	2,	0,	10),
(103,	3,	0,	10),
(104,	3,	0,	10),
(105,	1,	0,	10),
(105,	7,	0,	10),
(106,	3,	0,	10),
(107,	1,	0,	10),
(107,	7,	0,	10),
(108,	1,	0,	10),
(108,	7,	0,	10),
(109,	1,	0,	10),
(109,	7,	0,	10),
(110,	1,	0,	10),
(110,	2,	0,	10),
(110,	7,	0,	10),
(111,	1,	0,	10),
(111,	3,	0,	10),
(112,	1,	0,	10),
(112,	7,	0,	10),
(113,	1,	0,	10),
(113,	7,	0,	10),
(114,	1,	0,	10),
(114,	7,	0,	10),
(115,	2,	0,	10),
(116,	1,	0,	10),
(116,	7,	0,	10),
(117,	1,	0,	10),
(117,	7,	0,	10),
(118,	1,	0,	10),
(118,	3,	0,	10),
(119,	1,	0,	10),
(120,	1,	0,	10),
(120,	7,	0,	10),
(121,	1,	0,	10),
(122,	1,	0,	10),
(122,	7,	0,	10),
(123,	1,	0,	10),
(124,	1,	0,	10),
(125,	1,	0,	10),
(126,	1,	0,	10),
(127,	1,	0,	10),
(128,	1,	0,	10),
(129,	1,	0,	10),
(130,	1,	0,	10),
(131,	1,	0,	10),
(132,	1,	0,	10),
(133,	1,	0,	10),
(134,	1,	0,	10),
(134,	7,	0,	10),
(135,	1,	0,	10),
(135,	7,	0,	10);

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PermissionAssignments`;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAssignments` (`paID`, `pkID`) VALUES
(1,	19),
(2,	20),
(3,	74),
(4,	75),
(5,	76),
(6,	78),
(7,	79),
(8,	80),
(9,	86),
(10,	87),
(134,	89),
(12,	90),
(13,	91),
(14,	92),
(134,	93),
(16,	94),
(17,	95),
(134,	96),
(19,	97),
(20,	98),
(21,	99),
(22,	100),
(23,	101),
(24,	102),
(25,	103);

DROP TABLE IF EXISTS `PermissionDurationObjects`;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `PermissionKeyCategories`;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionKeyCategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1,	'page',	NULL),
(2,	'single_page',	NULL),
(3,	'stack',	NULL),
(4,	'user',	NULL),
(5,	'file_set',	NULL),
(6,	'file',	NULL),
(7,	'area',	NULL),
(8,	'block_type',	NULL),
(9,	'block',	NULL),
(10,	'admin',	NULL),
(11,	'sitemap',	NULL),
(12,	'marketplace_newsflow',	NULL),
(13,	'basic_workflow',	NULL),
(14,	'page_type',	NULL),
(15,	'gathering',	NULL),
(16,	'group_tree_node',	NULL),
(17,	'topic_category_tree_node',	NULL),
(18,	'topic_tree_node',	NULL),
(19,	'conversation',	NULL),
(20,	'conversation_message',	NULL),
(21,	'multilingual_section',	NULL);

DROP TABLE IF EXISTS `PermissionKeys`;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionKeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1,	'view_page',	'View',	0,	0,	'Can see a page exists and read its content.',	1,	0),
(2,	'view_page_versions',	'View Versions',	0,	0,	'Can view the page versions dialog and read past versions of a page.',	1,	0),
(3,	'view_page_in_sitemap',	'View Page in Sitemap',	0,	0,	'Controls whether a user can see a page in the sitemap or intelligent search.',	1,	0),
(4,	'preview_page_as_user',	'Preview Page As User',	0,	0,	'Ability to see what this page will look like at a specific time in the future as a specific user.',	1,	0),
(5,	'edit_page_properties',	'Edit Properties',	0,	1,	'Ability to change anything in the Page Properties menu.',	1,	0),
(6,	'edit_page_contents',	'Edit Contents',	0,	0,	'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',	1,	0),
(7,	'edit_page_speed_settings',	'Edit Speed Settings',	0,	0,	'Ability to change caching settings.',	1,	0),
(8,	'edit_page_theme',	'Change Theme',	0,	1,	'Ability to change just the theme for this page.',	1,	0),
(9,	'edit_page_template',	'Change Page Template',	0,	0,	'Ability to change just the page template for this page.',	1,	0),
(10,	'edit_page_page_type',	'Edit Page Type',	0,	0,	'Change the type of an existing page.',	1,	0),
(11,	'edit_page_permissions',	'Edit Permissions',	1,	0,	'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',	1,	0),
(12,	'delete_page',	'Delete',	1,	0,	'Ability to move this page to the site\'s Trash.',	1,	0),
(13,	'delete_page_versions',	'Delete Versions',	1,	0,	'Ability to remove old versions of this page.',	1,	0),
(14,	'approve_page_versions',	'Approve Changes',	1,	0,	'Can publish an unapproved version of the page.',	1,	0),
(15,	'add_subpage',	'Add Sub-Page',	0,	1,	'Can add a page beneath the current page.',	1,	0),
(16,	'move_or_copy_page',	'Move or Copy Page',	1,	0,	'Can move or copy this page to another location.',	1,	0),
(17,	'schedule_page_contents_guest_access',	'Schedule Guest Access',	0,	0,	'Can control scheduled guest access to this page.',	1,	0),
(18,	'edit_page_multilingual_settings',	'Edit Multilingual Settings',	0,	0,	'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.',	1,	0),
(19,	'add_block',	'Add Block',	0,	1,	'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',	8,	0),
(20,	'add_stack',	'Add Stack',	0,	0,	'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',	8,	0),
(21,	'view_area',	'View Area',	0,	0,	'Can view the area and its contents.',	7,	0),
(22,	'edit_area_contents',	'Edit Area Contents',	0,	0,	'Can edit blocks within this area.',	7,	0),
(23,	'add_block_to_area',	'Add Block to Area',	0,	1,	'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',	7,	0),
(24,	'add_stack_to_area',	'Add Stack to Area',	0,	0,	'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',	7,	0),
(25,	'add_layout_to_area',	'Add Layouts to Area',	0,	0,	'Controls whether users get the ability to add layouts to a particular area.',	7,	0),
(26,	'edit_area_design',	'Edit Area Design',	0,	0,	'Controls whether users see design controls and can modify an area\'s custom CSS.',	7,	0),
(27,	'edit_area_permissions',	'Edit Area Permissions',	0,	0,	'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',	7,	0),
(28,	'delete_area_contents',	'Delete Area Contents',	0,	0,	'Controls whether users can delete blocks from this area.',	7,	0),
(29,	'schedule_area_contents_guest_access',	'Schedule Guest Access',	0,	0,	'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',	7,	0),
(30,	'view_block',	'View Block',	0,	0,	'Controls whether users can view this block in the page.',	9,	0),
(31,	'edit_block',	'Edit Block',	0,	0,	'Controls whether users can edit this block. This overrides any area or page permissions.',	9,	0),
(32,	'edit_block_custom_template',	'Change Custom Template',	0,	0,	'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',	9,	0),
(33,	'edit_block_cache_settings',	'Edit Cache Settings',	0,	0,	'Controls whether users can change the block cache settings for this block instance.',	9,	0),
(34,	'edit_block_name',	'Edit Name',	0,	0,	'Controls whether users can change the block\'s name (rarely used.)',	9,	0),
(35,	'delete_block',	'Delete Block',	0,	0,	'Controls whether users can delete this block. This overrides any area or page permissions.',	9,	0),
(36,	'edit_block_design',	'Edit Design',	0,	0,	'Controls whether users can set custom design properties or CSS on this block.',	9,	0),
(37,	'edit_block_permissions',	'Edit Permissions',	0,	0,	'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',	9,	0),
(38,	'schedule_guest_access',	'Schedule Guest Access',	0,	0,	'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',	9,	0),
(39,	'view_file_set_file',	'View Files',	0,	0,	'Can view and download files in the site.',	5,	0),
(40,	'search_file_set',	'Search Files in File Manager',	0,	0,	'Can access the file manager',	5,	0),
(41,	'edit_file_set_file_properties',	'Edit File Properties',	0,	0,	'Can edit a file\'s properties.',	5,	0),
(42,	'edit_file_set_file_contents',	'Edit File Contents',	0,	0,	'Can edit or replace files in set.',	5,	0),
(43,	'copy_file_set_files',	'Copy File',	0,	0,	'Can copy files in file set.',	5,	0),
(44,	'edit_file_set_permissions',	'Edit File Access',	0,	0,	'Can edit access to file sets.',	5,	0),
(45,	'delete_file_set',	'Delete File Set',	0,	0,	'Can delete file set.',	5,	0),
(46,	'delete_file_set_files',	'Delete File',	0,	0,	'Can delete files in set.',	5,	0),
(47,	'add_file',	'Add File',	0,	1,	'Can add files to set.',	5,	0),
(48,	'view_file',	'View Files',	0,	0,	'Can view and download files.',	6,	0),
(49,	'view_file_in_file_manager',	'View File in File Manager',	0,	0,	'Can access the File Manager.',	6,	0),
(50,	'edit_file_properties',	'Edit File Properties',	0,	0,	'Can edit a file\'s properties.',	6,	0),
(51,	'edit_file_contents',	'Edit File Contents',	0,	0,	'Can edit or replace files.',	6,	0),
(52,	'copy_file',	'Copy File',	0,	0,	'Can copy file.',	6,	0),
(53,	'edit_file_permissions',	'Edit File Access',	0,	0,	'Can edit access to file.',	6,	0),
(54,	'delete_file',	'Delete File',	0,	0,	'Can delete file.',	6,	0),
(55,	'approve_basic_workflow_action',	'Approve or Deny',	0,	0,	'Grant ability to approve workflow.',	13,	0),
(56,	'notify_on_basic_workflow_entry',	'Notify on Entry',	0,	0,	'Notify approvers that a change has entered the workflow.',	13,	0),
(57,	'notify_on_basic_workflow_approve',	'Notify on Approve',	0,	0,	'Notify approvers that a change has been approved.',	13,	0),
(58,	'notify_on_basic_workflow_deny',	'Notify on Deny',	0,	0,	'Notify approvers that a change has been denied.',	13,	0),
(59,	'add_page_type',	'Add Pages of This Type',	0,	0,	'',	14,	0),
(60,	'edit_page_type',	'Edit Page Type',	0,	0,	'',	14,	0),
(61,	'delete_page_type',	'Delete Page Type',	0,	0,	'',	14,	0),
(62,	'edit_page_type_permissions',	'Edit Page Type Permissions',	0,	0,	'',	14,	0),
(63,	'edit_page_type_drafts',	'Edit Page Type Drafts',	0,	0,	'',	14,	0),
(64,	'view_topic_tree_node',	'View Topic Tree Node',	0,	0,	'',	18,	0),
(65,	'view_topic_category_tree_node',	'View Topic Category Tree Node',	0,	0,	'',	17,	0),
(66,	'add_conversation_message',	'Add Message to Conversation',	0,	1,	'',	19,	0),
(67,	'add_conversation_message_attachments',	'Add Message Attachments',	0,	0,	'',	19,	0),
(68,	'edit_conversation_permissions',	'Edit Conversation Permissions',	0,	0,	'',	19,	0),
(69,	'delete_conversation_message',	'Delete Message',	0,	0,	'',	19,	0),
(70,	'edit_conversation_message',	'Edit Message',	0,	0,	'',	19,	0),
(71,	'rate_conversation_message',	'Rate Message',	0,	0,	'',	19,	0),
(72,	'flag_conversation_message',	'Flag Message',	0,	0,	'',	19,	0),
(73,	'approve_conversation_message',	'Approve Message',	0,	0,	'',	19,	0),
(74,	'edit_user_properties',	'Edit User Details',	0,	1,	NULL,	4,	0),
(75,	'view_user_attributes',	'View User Attributes',	0,	1,	NULL,	4,	0),
(76,	'activate_user',	'Activate/Deactivate User',	0,	0,	NULL,	4,	0),
(77,	'sudo',	'Sign in as User',	0,	0,	NULL,	4,	0),
(78,	'upgrade',	'Upgrade concrete5',	0,	0,	NULL,	10,	0),
(79,	'access_group_search',	'Access Group Search',	0,	0,	NULL,	4,	0),
(80,	'delete_user',	'Delete User',	0,	0,	NULL,	4,	0),
(81,	'search_users_in_group',	'Search User Group',	0,	0,	NULL,	16,	0),
(82,	'edit_group',	'Edit Group',	0,	0,	NULL,	16,	0),
(83,	'assign_group',	'Assign Group',	0,	0,	NULL,	16,	0),
(84,	'add_sub_group',	'Add Child Group',	0,	0,	NULL,	16,	0),
(85,	'edit_group_permissions',	'Edit Group Permissions',	0,	0,	NULL,	16,	0),
(86,	'access_page_type_permissions',	'Access Page Type Permissions',	0,	0,	NULL,	10,	0),
(87,	'backup',	'Perform Backups',	0,	0,	NULL,	10,	0),
(88,	'access_task_permissions',	'Access Task Permissions',	0,	0,	NULL,	10,	0),
(89,	'access_sitemap',	'Access Sitemap',	0,	0,	NULL,	11,	0),
(90,	'access_page_defaults',	'Access Page Type Defaults',	0,	0,	NULL,	10,	0),
(91,	'customize_themes',	'Customize Themes',	0,	0,	NULL,	10,	0),
(92,	'manage_layout_presets',	'Manage Layout Presets',	0,	0,	NULL,	10,	0),
(93,	'empty_trash',	'Empty Trash',	0,	0,	NULL,	10,	0),
(94,	'add_topic_tree',	'Add Topic Tree',	0,	0,	NULL,	10,	0),
(95,	'remove_topic_tree',	'Remove Topic Tree',	0,	0,	NULL,	10,	0),
(96,	'view_in_maintenance_mode',	'View Site in Maintenance Mode',	0,	0,	'Ability to see and use the website when concrete5 is in maintenance mode.',	10,	0),
(97,	'uninstall_packages',	'Uninstall Packages',	0,	0,	NULL,	12,	0),
(98,	'install_packages',	'Install Packages',	0,	0,	NULL,	12,	0),
(99,	'view_newsflow',	'View Newsflow',	0,	0,	NULL,	12,	0),
(100,	'access_user_search_export',	'Export Site Users',	0,	0,	'Controls whether a user can export site users or not',	4,	0),
(101,	'access_user_search',	'Access User Search',	0,	0,	'Controls whether a user can view the search user interface.',	4,	0),
(102,	'edit_gatherings',	'Edit Gatherings',	0,	0,	'Can edit the footprint and items in all gatherings.',	10,	0),
(103,	'edit_gathering_items',	'Edit Gathering Items',	0,	0,	'',	15,	0);

DROP TABLE IF EXISTS `PileContents`;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PileContents` (`pcID`, `pID`, `itemID`, `itemType`, `quantity`, `timestamp`, `displayOrder`) VALUES
(3,	1,	205,	'BLOCK',	1,	'2016-05-24 13:29:35',	0),
(5,	1,	1383,	'BLOCK',	1,	'2016-06-02 15:07:21',	1),
(6,	1,	1401,	'BLOCK',	1,	'2016-06-02 15:52:16',	2);

DROP TABLE IF EXISTS `Piles`;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1,	1,	1,	'2016-05-20 11:20:40',	NULL,	'READY');

DROP TABLE IF EXISTS `QueueMessages`;
CREATE TABLE `QueueMessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `QueueMessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `QueuePageDuplicationRelations`;
CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Queues`;
CREATE TABLE `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Sessions`;
CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `SignupRequests`;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ipFrom` (`ipFrom`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `SignupRequests` (`id`, `ipFrom`, `date_access`) VALUES
(1,	'00000000000000000000000000000001',	'2016-05-19 14:31:54'),
(2,	'0afffe4a',	'2016-05-19 14:41:27'),
(3,	'00000000000000000000000000000001',	'2016-05-23 12:28:12'),
(4,	'00000000000000000000000000000001',	'2016-05-24 12:03:25'),
(5,	'00000000000000000000000000000001',	'2016-05-24 12:42:04'),
(6,	'00000000000000000000000000000001',	'2016-05-24 12:42:18'),
(7,	'0afffe4a',	'2016-05-24 15:39:22'),
(8,	'00000000000000000000000000000001',	'2016-06-02 13:13:59'),
(9,	'00000000000000000000000000000001',	'2016-06-02 13:14:02'),
(10,	'00000000000000000000000000000001',	'2016-06-02 13:14:04'),
(11,	'00000000000000000000000000000001',	'2016-06-02 18:15:16'),
(12,	'00000000000000000000000000000001',	'2016-06-03 19:07:03'),
(13,	'00000000000000000000000000000001',	'2016-06-03 19:07:15'),
(14,	'00000000000000000000000000000001',	'2016-06-03 19:07:23');

DROP TABLE IF EXISTS `SocialLinks`;
CREATE TABLE `SocialLinks` (
  `slID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`slID`),
  UNIQUE KEY `ssHandle` (`ssHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Stacks`;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Stacks` (`stID`, `stName`, `stType`, `cID`, `stMultilingualSection`) VALUES
(1,	'Header Site Title',	20,	146,	0),
(2,	'Header Navigation',	20,	147,	0),
(3,	'Footer Legal',	20,	148,	0),
(4,	'Footer Navigation',	20,	149,	0),
(5,	'Footer Contact',	20,	150,	0),
(6,	'Search',	20,	151,	0);

DROP TABLE IF EXISTS `StyleCustomizerCustomCssRecords`;
CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `StyleCustomizerCustomCssRecords` (`sccRecordID`, `value`) VALUES
(1,	'.slick-prev, .slick-next{\n    display:none;\n}'),
(2,	'.slick-prev, .slick-next{\n    display:none !important;\n}'),
(3,	'.slick-prev, .slick-next{\n    display:none !important;\n}\n.cabecera_pagina{\n    background-image: url(/application/files/5614/6488/3225/ENCABEZADO_1-sin_logos.jpg) !important;\n    background-repeat: no-repeat !important;\n    height: auto;\n    -webkit-box-shadow: inset 0px -3px 8px 0px rgba(0,0,0,0.17);\n    -moz-box-shadow: inset 0px -3px 8px 0px rgba(0,0,0,0.17);\n    box-shadow: inset 0px -3px 8px 0px rgba(0,0,0,0.17);\n}'),
(4,	'.slick-prev, .slick-next{\n    display:none !important;\n}\n.cabecera_pagina{\n    background-image: url(/application/files/5614/6488/3225/ENCABEZADO_1-sin_logos.jpg) !important;\n    background-repeat: no-repeat !important;\n    height: auto;\n    -webkit-box-shadow: inset 0px -3px 8px 0px rgba(0,0,0,0.17);\n    -moz-box-shadow: inset 0px -3px 8px 0px rgba(0,0,0,0.17);\n    box-shadow: inset 0px -3px 8px 0px rgba(0,0,0,0.17);\n}');

DROP TABLE IF EXISTS `StyleCustomizerInlineStylePresets`;
CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `StyleCustomizerInlineStyleSets`;
CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) DEFAULT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundPosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `StyleCustomizerInlineStyleSets` (`issID`, `backgroundColor`, `backgroundImageFileID`, `backgroundRepeat`, `backgroundSize`, `backgroundPosition`, `borderWidth`, `borderColor`, `borderStyle`, `borderRadius`, `baseFontSize`, `alignment`, `textColor`, `linkColor`, `paddingTop`, `paddingBottom`, `paddingLeft`, `paddingRight`, `marginTop`, `marginBottom`, `marginLeft`, `marginRight`, `rotate`, `boxShadowHorizontal`, `boxShadowVertical`, `boxShadowBlur`, `boxShadowSpread`, `boxShadowColor`, `customClass`, `hideOnExtraSmallDevice`, `hideOnSmallDevice`, `hideOnMediumDevice`, `hideOnLargeDevice`) VALUES
(1,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'invisible_smartphone',	0,	0,	0,	0),
(2,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'margin: 20px 0;     padding-left: 1.5rem;     border-left: 5px solid #ee6e73;',	0,	0,	0,	0),
(3,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	'1px',	'rgb(225, 225, 225)',	'solid',	'4px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(4,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	'22px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(5,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	'22px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'7px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(6,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'10px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(7,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'10px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(8,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'10px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(9,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	'6px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(10,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	'6px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(11,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	'6px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(12,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'30px',	'30px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(13,	NULL,	37,	'repeat',	'cover',	'left top',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(14,	NULL,	37,	'repeat',	'cover',	'left top',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'10px',	'10px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(15,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(16,	NULL,	37,	'repeat',	'cover',	'left top',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(17,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'base_contenido',	0,	0,	0,	0),
(18,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'base_contenido_sin_animacion padding_horizontal_10',	0,	0,	0,	0);

DROP TABLE IF EXISTS `StyleCustomizerValueLists`;
CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `StyleCustomizerValueLists` (`scvlID`) VALUES
(1),
(2),
(3),
(4);

DROP TABLE IF EXISTS `StyleCustomizerValues`;
CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `StyleCustomizerValues` (`scvID`, `scvlID`, `value`) VALUES
(1,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:99;s:4:\"\0*\0g\";i:120;s:4:\"\0*\0b\";i:132;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"headerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(2,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:99;s:4:\"\0*\0g\";i:120;s:4:\"\0*\0b\";i:132;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"footerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(3,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"footerText\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(4,	1,	'O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\TypeValue\":12:{s:13:\"\0*\0fontFamily\";s:17:\"Arial, sans-serif\";s:11:\"\0*\0fontSize\";O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\SizeValue\":5:{s:7:\"\0*\0size\";s:2:\"14\";s:7:\"\0*\0unit\";s:2:\"px\";s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:8:\"\0*\0color\";O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:51;s:4:\"\0*\0g\";i:51;s:4:\"\0*\0b\";i:51;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:13:\"\0*\0lineHeight\";i:-1;s:16:\"\0*\0letterSpacing\";i:-1;s:12:\"\0*\0fontStyle\";s:4:\"none\";s:13:\"\0*\0fontWeight\";s:3:\"300\";s:17:\"\0*\0textDecoration\";i:-1;s:16:\"\0*\0textTransform\";i:-1;s:11:\"\0*\0variable\";s:4:\"body\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(5,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ImageValue\":5:{s:11:\"\0*\0imageUrl\";s:59:\"/application/themes/TemplateV2-campanha/img/background1.jpg\";s:6:\"\0*\0fID\";N;s:11:\"\0*\0variable\";s:7:\"bg-site\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(6,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:135;s:4:\"\0*\0g\";i:38;s:4:\"\0*\0b\";i:38;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:12:\"bgcolor-site\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(7,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:226;s:4:\"\0*\0g\";i:45;s:4:\"\0*\0b\";i:45;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"MenuABg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(8,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"MenuATexto\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(9,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:12:\"estiloslider\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(10,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"bg-title\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(11,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:3;s:4:\"\0*\0g\";i:155;s:4:\"\0*\0b\";i:229;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"linksTitle\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(12,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:3;s:4:\"\0*\0g\";i:155;s:4:\"\0*\0b\";i:229;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:7:\"enlaces\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(13,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh1\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(14,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh2\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(15,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh3\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(16,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh4\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(17,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh5\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(18,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh6\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(19,	1,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"estiloparrafos\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(20,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:99;s:4:\"\0*\0g\";i:120;s:4:\"\0*\0b\";i:132;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"headerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(21,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:99;s:4:\"\0*\0g\";i:120;s:4:\"\0*\0b\";i:132;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"footerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(22,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"footerText\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(23,	2,	'O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\TypeValue\":12:{s:13:\"\0*\0fontFamily\";s:17:\"Arial, sans-serif\";s:11:\"\0*\0fontSize\";O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\SizeValue\":5:{s:7:\"\0*\0size\";s:2:\"14\";s:7:\"\0*\0unit\";s:2:\"px\";s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:8:\"\0*\0color\";O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:51;s:4:\"\0*\0g\";i:51;s:4:\"\0*\0b\";i:51;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:13:\"\0*\0lineHeight\";i:-1;s:16:\"\0*\0letterSpacing\";i:-1;s:12:\"\0*\0fontStyle\";s:4:\"none\";s:13:\"\0*\0fontWeight\";s:3:\"300\";s:17:\"\0*\0textDecoration\";i:-1;s:16:\"\0*\0textTransform\";i:-1;s:11:\"\0*\0variable\";s:4:\"body\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(24,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ImageValue\":5:{s:11:\"\0*\0imageUrl\";s:59:\"/application/themes/TemplateV2-campanha/img/background1.jpg\";s:6:\"\0*\0fID\";N;s:11:\"\0*\0variable\";s:7:\"bg-site\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(25,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:135;s:4:\"\0*\0g\";i:38;s:4:\"\0*\0b\";i:38;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:12:\"bgcolor-site\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(26,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:226;s:4:\"\0*\0g\";i:45;s:4:\"\0*\0b\";i:45;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"MenuABg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(27,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"MenuATexto\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(28,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:12:\"estiloslider\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(29,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"bg-title\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(30,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:3;s:4:\"\0*\0g\";i:155;s:4:\"\0*\0b\";i:229;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"linksTitle\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(31,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:3;s:4:\"\0*\0g\";i:155;s:4:\"\0*\0b\";i:229;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:7:\"enlaces\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(32,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh1\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(33,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh2\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(34,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh3\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(35,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh4\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(36,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh5\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(37,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh6\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(38,	2,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"estiloparrafos\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(39,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:99;s:4:\"\0*\0g\";i:120;s:4:\"\0*\0b\";i:132;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"headerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(40,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:99;s:4:\"\0*\0g\";i:120;s:4:\"\0*\0b\";i:132;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"footerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(41,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"footerText\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(42,	3,	'O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\TypeValue\":12:{s:13:\"\0*\0fontFamily\";s:17:\"Arial, sans-serif\";s:11:\"\0*\0fontSize\";O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\SizeValue\":5:{s:7:\"\0*\0size\";s:2:\"14\";s:7:\"\0*\0unit\";s:2:\"px\";s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:8:\"\0*\0color\";O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:51;s:4:\"\0*\0g\";i:51;s:4:\"\0*\0b\";i:51;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:13:\"\0*\0lineHeight\";i:-1;s:16:\"\0*\0letterSpacing\";i:-1;s:12:\"\0*\0fontStyle\";s:4:\"none\";s:13:\"\0*\0fontWeight\";s:3:\"300\";s:17:\"\0*\0textDecoration\";i:-1;s:16:\"\0*\0textTransform\";i:-1;s:11:\"\0*\0variable\";s:4:\"body\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(43,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ImageValue\":5:{s:11:\"\0*\0imageUrl\";s:59:\"/application/themes/TemplateV2-campanha/img/background1.jpg\";s:6:\"\0*\0fID\";N;s:11:\"\0*\0variable\";s:7:\"bg-site\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(44,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:135;s:4:\"\0*\0g\";i:38;s:4:\"\0*\0b\";i:38;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:12:\"bgcolor-site\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(45,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:226;s:4:\"\0*\0g\";i:45;s:4:\"\0*\0b\";i:45;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"MenuABg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(46,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"MenuATexto\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(47,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:12:\"estiloslider\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(48,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"bg-title\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(49,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:3;s:4:\"\0*\0g\";i:155;s:4:\"\0*\0b\";i:229;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"linksTitle\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(50,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:3;s:4:\"\0*\0g\";i:155;s:4:\"\0*\0b\";i:229;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:7:\"enlaces\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(51,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh1\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(52,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh2\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(53,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh3\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(54,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh4\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(55,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh5\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(56,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh6\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(57,	3,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"estiloparrafos\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(58,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:81;s:4:\"\0*\0g\";i:105;s:4:\"\0*\0b\";i:116;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"headerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(59,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:81;s:4:\"\0*\0g\";i:105;s:4:\"\0*\0b\";i:116;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:15:\"footerBg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(60,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"footerText\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(61,	4,	'O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\TypeValue\":12:{s:13:\"\0*\0fontFamily\";s:17:\"Arial, sans-serif\";s:11:\"\0*\0fontSize\";O:51:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\SizeValue\":5:{s:7:\"\0*\0size\";s:2:\"14\";s:7:\"\0*\0unit\";s:2:\"px\";s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:8:\"\0*\0color\";O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:51;s:4:\"\0*\0g\";i:51;s:4:\"\0*\0b\";i:51;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";b:0;s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}s:13:\"\0*\0lineHeight\";i:-1;s:16:\"\0*\0letterSpacing\";i:-1;s:12:\"\0*\0fontStyle\";s:4:\"none\";s:13:\"\0*\0fontWeight\";s:3:\"300\";s:17:\"\0*\0textDecoration\";i:-1;s:16:\"\0*\0textTransform\";i:-1;s:11:\"\0*\0variable\";s:4:\"body\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(62,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ImageValue\":5:{s:11:\"\0*\0imageUrl\";s:59:\"/application/themes/TemplateV2-campanha/img/background1.jpg\";s:6:\"\0*\0fID\";N;s:11:\"\0*\0variable\";s:7:\"bg-site\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(63,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:140;s:4:\"\0*\0g\";i:25;s:4:\"\0*\0b\";i:23;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:12:\"bgcolor-site\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(64,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:140;s:4:\"\0*\0g\";i:25;s:4:\"\0*\0b\";i:23;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"MenuABg-action\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(65,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"MenuATexto\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(66,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:255;s:4:\"\0*\0g\";i:255;s:4:\"\0*\0b\";i:255;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:12:\"estiloslider\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(67,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"bg-title\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(68,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:140;s:4:\"\0*\0g\";i:25;s:4:\"\0*\0b\";i:23;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:10:\"linksTitle\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(69,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:140;s:4:\"\0*\0g\";i:25;s:4:\"\0*\0b\";i:23;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:7:\"enlaces\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(70,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh1\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(71,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh2\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(72,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh3\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(73,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh4\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(74,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh5\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(75,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:8:\"estiloh6\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}'),
(76,	4,	'O:52:\"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue\":7:{s:4:\"\0*\0r\";i:68;s:4:\"\0*\0g\";i:68;s:4:\"\0*\0b\";i:68;s:4:\"\0*\0a\";b:0;s:11:\"\0*\0variable\";s:14:\"estiloparrafos\";s:8:\"\0*\0scvID\";N;s:9:\"\0*\0scvlID\";N;}');

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `SystemCaptchaLibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage',	'SecurImage (Default)',	1,	0);

DROP TABLE IF EXISTS `SystemContentEditorSnippets`;
CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `SystemContentEditorSnippets` (`scsHandle`, `scsName`, `scsIsActive`, `pkgID`) VALUES
('page_name',	'Page Name',	1,	0),
('user_name',	'User Name',	1,	0);

DROP TABLE IF EXISTS `SystemDatabaseMigrations`;
CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `SystemDatabaseMigrations` (`version`) VALUES
('20160412000000');

DROP TABLE IF EXISTS `SystemDatabaseQueryLog`;
CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `TopicTrees`;
CREATE TABLE `TopicTrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TopicTrees` (`treeID`, `topicTreeName`) VALUES
(3,	'Categorías');

DROP TABLE IF EXISTS `TreeCategoryNodes`;
CREATE TABLE `TreeCategoryNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeCategoryNodes` (`treeNodeID`, `treeNodeCategoryName`) VALUES
(6,	'Noticias');

DROP TABLE IF EXISTS `TreeGroupNodes`;
CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeGroupNodes` (`treeNodeID`, `gID`) VALUES
(2,	1),
(3,	2),
(4,	3),
(9,	4);

DROP TABLE IF EXISTS `TreeNodePermissionAssignments`;
CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeNodePermissionAssignments` (`treeNodeID`, `pkID`, `paID`) VALUES
(6,	65,	104),
(1,	81,	89),
(1,	82,	90),
(1,	83,	91),
(1,	84,	92),
(1,	85,	93);

DROP TABLE IF EXISTS `TreeNodes`;
CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeNodes` (`treeNodeID`, `treeNodeTypeID`, `treeID`, `treeNodeParentID`, `treeNodeDisplayOrder`, `treeNodeOverridePermissions`, `inheritPermissionsFromTreeNodeID`) VALUES
(1,	1,	1,	0,	0,	1,	1),
(2,	1,	1,	1,	0,	0,	1),
(3,	1,	1,	1,	1,	0,	1),
(4,	1,	1,	1,	2,	0,	1),
(6,	2,	3,	0,	0,	1,	6),
(8,	3,	3,	6,	0,	0,	6),
(9,	1,	1,	1,	3,	0,	1);

DROP TABLE IF EXISTS `TreeNodeTypes`;
CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeNodeTypes` (`treeNodeTypeID`, `treeNodeTypeHandle`, `pkgID`) VALUES
(1,	'group',	0),
(2,	'topic_category',	0),
(3,	'topic',	0);

DROP TABLE IF EXISTS `Trees`;
CREATE TABLE `Trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
(1,	1,	'2016-05-19 10:26:45',	1),
(3,	2,	'2016-05-23 15:03:48',	6);

DROP TABLE IF EXISTS `TreeTopicNodes`;
CREATE TABLE `TreeTopicNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeTopicNodes` (`treeNodeID`, `treeNodeTopicName`) VALUES
(8,	'TICs');

DROP TABLE IF EXISTS `TreeTypes`;
CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeTypes` (`treeTypeID`, `treeTypeHandle`, `pkgID`) VALUES
(1,	'group',	0),
(2,	'topic',	0);

DROP TABLE IF EXISTS `UserAttributeKeys`;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserAttributeKeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(12,	0,	0,	1,	0,	1,	0,	1,	1),
(13,	0,	0,	1,	0,	1,	0,	2,	1),
(16,	0,	0,	0,	0,	0,	0,	3,	1);

DROP TABLE IF EXISTS `UserAttributeValues`;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserAttributeValues` (`uID`, `akID`, `avID`) VALUES
(2,	12,	114),
(2,	13,	115),
(3,	12,	116),
(3,	13,	117);

DROP TABLE IF EXISTS `UserBannedIPs`;
CREATE TABLE `UserBannedIPs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserGroups`;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserGroups` (`uID`, `gID`, `ugEntered`) VALUES
(2,	3,	'2016-05-19 10:35:19'),
(3,	4,	'2016-05-24 08:40:16');

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPointActions`;
CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserPointActions` (`upaID`, `upaHandle`, `upaName`, `upaDefaultPoints`, `pkgID`, `upaHasCustomClass`, `upaIsActive`, `gBadgeID`) VALUES
(1,	'won_badge',	'Won a Badge',	5,	0,	1,	1,	0);

DROP TABLE IF EXISTS `UserPointHistory`;
CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPrivateMessages`;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uTimezone`, `uDefaultLanguage`) VALUES
(1,	'senatics',	'soporteportales@senatics.gov.py',	'$2a$12$P.PoHRWEGAY34WfhujB05OMn.OwqB1TwFLLBE0r7V1dev4PxjwqnG',	'1',	-1,	1,	'2016-05-19 10:26:46',	'2016-05-19 10:26:46',	0,	1464982801,	1464980863,	'00000000000000000000000000000001',	1464873253,	9,	1,	NULL,	NULL),
(2,	'admin',	'correo@dominio.gov.py',	'$2a$12$z3biCbGqBLGyFa7JCrBVY.4S51iWzKqqe5y7IS3wtThM42.zuLHzC',	'1',	-1,	1,	'2016-05-19 10:35:19',	'2016-05-19 10:35:19',	0,	1465396823,	1465320950,	'00000000000000000000000000000001',	0,	1,	1,	NULL,	'es_PY'),
(3,	'prensa',	'prensa@dominio.gov.py',	'$2a$12$t5NDNyme4Bo0Bjv45x2E5.fTkhhwLf11cj03nJM2EHSOnEYfpLcIm',	'1',	-1,	1,	'2016-05-19 10:36:06',	'2016-05-24 08:42:44',	0,	1464892283,	1464891335,	'00000000000000000000000000000001',	1464093772,	2,	1,	NULL,	'es_PY');

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `UserSearchIndexAttributes` (`uID`, `ak_profile_private_messages_enabled`, `ak_profile_private_messages_notification_enabled`) VALUES
(2,	1,	1),
(3,	1,	1);

DROP TABLE IF EXISTS `UserValidationHashes`;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `WorkflowProgress`;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `WorkflowProgressCategories`;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `WorkflowProgressCategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1,	'page',	NULL),
(2,	'file',	NULL),
(3,	'user',	NULL);

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1,	1,	'2016-05-20 11:20:19',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),
(2,	2,	'2016-05-20 11:20:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"2\";}'),
(3,	3,	'2016-05-20 11:23:22',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"3\";}'),
(4,	1,	'2016-05-23 13:22:21',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"1\";}'),
(5,	2,	'2016-05-23 18:16:32',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"2\";}'),
(6,	3,	'2016-05-23 18:49:33',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"3\";}'),
(7,	4,	'2016-05-23 18:49:34',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"4\";}'),
(8,	5,	'2016-05-23 18:49:36',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"5\";}'),
(9,	6,	'2016-05-23 18:50:13',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:1:\"6\";}'),
(10,	7,	'2016-05-23 18:50:13',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:1:\"7\";}'),
(11,	8,	'2016-05-23 18:53:00',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"156\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"8\";}'),
(12,	9,	'2016-05-23 19:39:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"156\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"9\";}'),
(13,	10,	'2016-05-23 19:39:59',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"156\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"10\";}'),
(14,	11,	'2016-05-23 19:46:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"11\";}'),
(15,	12,	'2016-05-23 19:47:00',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"12\";}'),
(16,	13,	'2016-05-23 19:53:45',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"158\";s:4:\"wrID\";s:2:\"13\";}'),
(17,	14,	'2016-05-23 19:55:06',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"14\";}'),
(18,	15,	'2016-05-23 19:56:36',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"15\";}'),
(19,	16,	'2016-05-23 19:57:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"16\";}'),
(20,	17,	'2016-05-23 19:57:23',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"159\";s:4:\"wrID\";s:2:\"17\";}'),
(21,	1,	'2016-05-24 12:24:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"160\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"1\";}'),
(22,	2,	'2016-05-24 12:25:58',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"160\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"2\";}'),
(23,	3,	'2016-05-24 12:28:51',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"161\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"3\";}'),
(24,	4,	'2016-05-24 12:36:33',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"156\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:1:\"4\";}'),
(25,	5,	'2016-05-24 12:36:37',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"156\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:1:\"5\";}'),
(26,	6,	'2016-05-24 12:37:18',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"156\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:3:\"108\";i:4;s:2:\"45\";i:5;s:2:\"46\";i:6;s:2:\"47\";i:7;s:2:\"48\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:3:\"108\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:1:\"6\";}'),
(27,	7,	'2016-05-24 12:38:56',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:2:\"44\";i:4;s:2:\"50\";i:5;s:2:\"50\";i:6;s:2:\"50\";i:7;s:2:\"50\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:1:\"7\";}'),
(28,	8,	'2016-05-24 12:45:27',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"129\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"63\";i:2;s:3:\"110\";i:3;s:2:\"65\";i:4;s:2:\"66\";i:5;s:3:\"110\";i:6;s:3:\"110\";i:7;s:2:\"69\";i:8;s:2:\"71\";i:9;s:2:\"84\";i:10;s:2:\"85\";i:11;s:2:\"74\";i:12;s:3:\"110\";i:13;s:3:\"110\";i:14;s:3:\"110\";i:15;s:2:\"78\";i:16;s:2:\"79\";i:17;s:2:\"80\";i:18;s:2:\"70\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:1:\"8\";}'),
(29,	9,	'2016-05-24 12:48:23',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"9\";}'),
(30,	10,	'2016-05-24 12:50:20',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:2:\"44\";i:4;s:3:\"113\";i:5;s:2:\"50\";i:6;s:2:\"50\";i:7;s:2:\"50\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"10\";}'),
(31,	11,	'2016-05-24 12:51:02',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:2:\"44\";i:4;s:3:\"113\";i:5;s:3:\"114\";i:6;s:2:\"50\";i:7;s:2:\"50\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"11\";}'),
(32,	12,	'2016-05-24 12:51:40',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:2:\"44\";i:4;s:3:\"113\";i:5;s:2:\"50\";i:6;s:2:\"50\";i:7;s:2:\"50\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"12\";}'),
(33,	13,	'2016-05-24 12:55:52',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"181\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"13\";}'),
(34,	14,	'2016-05-24 12:56:04',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"181\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"14\";}'),
(35,	15,	'2016-05-24 12:56:10',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"181\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"15\";}'),
(36,	16,	'2016-05-24 12:56:51',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"181\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"16\";}'),
(37,	17,	'2016-05-24 12:59:57',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"181\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"17\";}'),
(38,	18,	'2016-05-24 13:00:22',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"181\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"18\";}'),
(39,	19,	'2016-05-24 13:01:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"156\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"19\";}'),
(40,	20,	'2016-05-24 13:17:01',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"182\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"20\";}'),
(41,	21,	'2016-05-24 13:19:50',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"182\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"21\";}'),
(42,	22,	'2016-05-24 13:20:09',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"183\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"22\";}'),
(43,	23,	'2016-05-24 13:21:22',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"182\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"23\";}'),
(44,	24,	'2016-05-24 13:21:34',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"182\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"24\";}'),
(45,	25,	'2016-05-24 13:27:29',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"183\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"25\";}'),
(46,	26,	'2016-05-24 13:28:52',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"183\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"26\";}'),
(47,	27,	'2016-05-24 13:29:38',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"183\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"27\";}'),
(48,	28,	'2016-05-24 13:29:55',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"182\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"28\";}'),
(49,	29,	'2016-05-24 13:30:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"184\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"29\";}'),
(50,	30,	'2016-05-24 13:33:11',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"184\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"30\";}'),
(51,	31,	'2016-05-24 14:00:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"185\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"31\";}'),
(52,	32,	'2016-05-24 14:00:42',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"185\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"32\";}'),
(53,	33,	'2016-05-24 14:05:05',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"185\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"33\";}'),
(54,	34,	'2016-05-24 14:05:22',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"186\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"34\";}'),
(55,	35,	'2016-05-24 14:12:03',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"186\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"35\";}'),
(56,	36,	'2016-05-24 14:41:48',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"187\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"36\";}'),
(57,	37,	'2016-05-24 15:01:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"187\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"37\";}'),
(58,	38,	'2016-05-24 15:01:49',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"38\";}'),
(59,	39,	'2016-05-24 15:12:17',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"189\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"39\";}'),
(60,	40,	'2016-05-24 15:12:34',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"40\";}'),
(61,	41,	'2016-05-24 15:16:33',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"41\";}'),
(62,	42,	'2016-05-24 15:19:22',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"42\";}'),
(63,	43,	'2016-05-24 15:20:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"43\";}'),
(64,	44,	'2016-05-24 15:21:06',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"44\";}'),
(65,	1,	'2016-05-26 14:55:36',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:1:\"1\";}'),
(66,	1,	'2016-06-02 13:17:40',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:1:\"1\";}'),
(67,	2,	'2016-06-02 13:25:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"2\";}'),
(68,	3,	'2016-06-02 13:28:08',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"192\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"3\";}'),
(69,	4,	'2016-06-02 13:28:44',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"193\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"4\";}'),
(70,	5,	'2016-06-02 13:29:17',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:1:\"5\";}'),
(71,	6,	'2016-06-02 13:34:03',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:1:\"6\";}'),
(72,	7,	'2016-06-02 13:38:08',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:1:\"7\";}'),
(73,	8,	'2016-06-02 13:38:55',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:1:\"8\";}'),
(74,	9,	'2016-06-02 13:40:03',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:1:\"9\";}'),
(75,	10,	'2016-06-02 13:43:28',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"10\";}'),
(76,	11,	'2016-06-02 13:49:28',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"194\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"11\";}'),
(77,	12,	'2016-06-02 13:52:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"194\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"12\";}'),
(78,	13,	'2016-06-02 13:56:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"189\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"13\";}'),
(79,	14,	'2016-06-02 13:57:27',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"14\";}'),
(80,	15,	'2016-06-02 13:58:33',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"160\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"15\";}'),
(81,	16,	'2016-06-02 13:59:16',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"160\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"16\";}'),
(82,	17,	'2016-06-02 14:00:02',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"161\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"17\";}'),
(83,	18,	'2016-06-02 14:00:27',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"161\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"18\";}'),
(84,	19,	'2016-06-02 14:02:48',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"19\";}'),
(85,	20,	'2016-06-02 14:09:05',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"20\";}'),
(86,	21,	'2016-06-02 14:11:58',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"21\";}'),
(87,	22,	'2016-06-02 14:16:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:2:\"22\";}'),
(88,	23,	'2016-06-02 14:22:01',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"21\";s:4:\"wrID\";s:2:\"23\";}'),
(89,	24,	'2016-06-02 14:51:23',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"160\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"24\";}'),
(90,	25,	'2016-06-02 14:51:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"161\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"25\";}'),
(91,	26,	'2016-06-02 14:52:12',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"26\";}'),
(92,	27,	'2016-06-02 14:53:28',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"196\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"27\";}'),
(93,	28,	'2016-06-02 14:56:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"188\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"28\";}'),
(94,	29,	'2016-06-02 15:03:04',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"29\";}'),
(95,	30,	'2016-06-02 15:03:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"30\";}'),
(96,	31,	'2016-06-02 15:04:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"31\";}'),
(97,	32,	'2016-06-02 15:06:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"198\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"32\";}'),
(98,	33,	'2016-06-02 15:09:49',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"198\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"33\";}'),
(99,	34,	'2016-06-02 15:27:40',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"199\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"34\";}'),
(100,	35,	'2016-06-02 15:29:58',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"199\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"35\";}'),
(101,	36,	'2016-06-02 15:30:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"36\";}'),
(102,	37,	'2016-06-02 15:30:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"37\";}'),
(103,	38,	'2016-06-02 15:33:40',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"22\";s:4:\"wrID\";s:2:\"38\";}'),
(104,	39,	'2016-06-02 15:35:58',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"39\";}'),
(105,	40,	'2016-06-02 15:44:01',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"23\";s:4:\"wrID\";s:2:\"40\";}'),
(106,	41,	'2016-06-02 15:52:57',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"200\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"41\";}'),
(107,	42,	'2016-06-02 15:53:39',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"24\";s:4:\"wrID\";s:2:\"42\";}'),
(108,	43,	'2016-06-02 15:54:32',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"25\";s:4:\"wrID\";s:2:\"43\";}'),
(109,	44,	'2016-06-02 15:55:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"26\";s:4:\"wrID\";s:2:\"44\";}'),
(110,	45,	'2016-06-02 15:58:19',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"27\";s:4:\"wrID\";s:2:\"45\";}'),
(111,	46,	'2016-06-02 16:01:33',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"28\";s:4:\"wrID\";s:2:\"46\";}'),
(112,	47,	'2016-06-02 17:09:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"29\";s:4:\"wrID\";s:2:\"47\";}'),
(113,	48,	'2016-06-02 17:10:19',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"30\";s:4:\"wrID\";s:2:\"48\";}'),
(114,	49,	'2016-06-02 17:11:08',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"31\";s:4:\"wrID\";s:2:\"49\";}'),
(115,	50,	'2016-06-02 17:11:35',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"32\";s:4:\"wrID\";s:2:\"50\";}'),
(116,	51,	'2016-06-02 17:13:09',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"33\";s:4:\"wrID\";s:2:\"51\";}'),
(117,	52,	'2016-06-02 17:13:43',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"34\";s:4:\"wrID\";s:2:\"52\";}'),
(118,	53,	'2016-06-02 17:25:45',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"35\";s:4:\"wrID\";s:2:\"53\";}'),
(119,	54,	'2016-06-02 17:28:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"54\";}'),
(120,	55,	'2016-06-02 17:28:43',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"55\";}'),
(121,	56,	'2016-06-02 17:29:03',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"56\";}'),
(122,	57,	'2016-06-02 17:44:29',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"36\";s:4:\"wrID\";s:2:\"57\";}'),
(123,	58,	'2016-06-02 17:48:06',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"37\";s:4:\"wrID\";s:2:\"58\";}'),
(124,	59,	'2016-06-02 18:00:39',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"59\";}'),
(125,	60,	'2016-06-02 18:01:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"60\";}'),
(126,	61,	'2016-06-02 18:03:57',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"61\";}'),
(127,	62,	'2016-06-02 18:04:20',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"62\";}'),
(128,	63,	'2016-06-02 18:04:33',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"63\";}'),
(129,	64,	'2016-06-02 18:08:28',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"64\";}'),
(130,	65,	'2016-06-02 18:09:17',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"182\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"65\";}'),
(131,	66,	'2016-06-02 18:11:16',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"184\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"66\";}'),
(132,	67,	'2016-06-02 18:12:41',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"152\";s:4:\"wrID\";s:2:\"67\";}'),
(133,	68,	'2016-06-02 18:12:45',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"153\";s:4:\"wrID\";s:2:\"68\";}'),
(134,	69,	'2016-06-02 18:17:53',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"3\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"201\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"69\";}'),
(135,	70,	'2016-06-02 18:19:06',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"7\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"70\";}'),
(136,	71,	'2016-06-02 18:19:56',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"7\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"116\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"71\";}'),
(137,	72,	'2016-06-02 18:20:05',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"3\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"72\";}'),
(138,	73,	'2016-06-02 18:20:19',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"3\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"117\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"73\";}'),
(139,	74,	'2016-06-02 18:21:28',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangeSubpageDefaultsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:11:\"inheritance\";s:1:\"0\";s:4:\"wrID\";s:2:\"74\";}'),
(140,	75,	'2016-06-02 18:21:40',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"120\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"75\";}'),
(141,	76,	'2016-06-02 18:22:01',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"121\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"76\";}'),
(142,	77,	'2016-06-02 18:22:50',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"2\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"122\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"77\";}'),
(143,	78,	'2016-06-02 18:23:03',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"12\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"78\";}'),
(144,	79,	'2016-06-02 18:23:10',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"12\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"123\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"79\";}'),
(145,	80,	'2016-06-02 18:23:21',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"23\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"80\";}'),
(146,	81,	'2016-06-02 18:23:32',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"23\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"124\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"81\";}'),
(147,	82,	'2016-06-02 18:25:25',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"82\";}'),
(148,	83,	'2016-06-02 18:25:36',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"27\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"125\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"83\";}'),
(149,	84,	'2016-06-02 18:25:44',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"42\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"84\";}'),
(150,	85,	'2016-06-02 18:25:52',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"42\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"126\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"85\";}'),
(151,	86,	'2016-06-02 18:26:03',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"44\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"86\";}'),
(152,	87,	'2016-06-02 18:26:13',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"44\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"127\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"87\";}'),
(153,	88,	'2016-06-02 18:26:23',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"47\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"88\";}'),
(154,	89,	'2016-06-02 18:26:36',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"47\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"128\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"89\";}'),
(155,	90,	'2016-06-02 18:26:49',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"52\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"90\";}'),
(156,	91,	'2016-06-02 18:26:55',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"52\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"129\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"91\";}'),
(157,	92,	'2016-06-02 18:27:25',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"59\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"92\";}'),
(158,	93,	'2016-06-02 18:27:33',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:2:\"59\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"130\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"93\";}'),
(159,	94,	'2016-06-02 18:28:01',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"127\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"94\";}'),
(160,	95,	'2016-06-02 18:28:09',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"127\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"131\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"95\";}'),
(161,	96,	'2016-06-02 18:28:16',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"128\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"96\";}'),
(162,	97,	'2016-06-02 18:28:25',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"128\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"132\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"97\";}'),
(163,	98,	'2016-06-02 18:28:39',	'O:70:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"170\";s:11:\"inheritance\";s:8:\"OVERRIDE\";s:4:\"wrID\";s:2:\"98\";}'),
(164,	99,	'2016-06-02 18:28:47',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"170\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:3:\"133\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:2:\"99\";}'),
(165,	100,	'2016-06-02 18:30:29',	'O:59:\"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:1:\"1\";s:13:\"permissionSet\";O:28:\"Concrete\\Core\\Permission\\Set\":2:{s:14:\"\0*\0permissions\";a:18:{i:1;s:2:\"42\";i:2;s:2:\"43\";i:3;s:3:\"135\";i:4;s:3:\"113\";i:5;s:2:\"50\";i:6;s:2:\"50\";i:7;s:2:\"50\";i:8;s:2:\"50\";i:9;s:2:\"51\";i:10;s:2:\"52\";i:11;s:2:\"53\";i:12;s:2:\"54\";i:13;s:2:\"55\";i:14;s:2:\"56\";i:15;s:2:\"57\";i:16;s:2:\"58\";i:17;s:2:\"59\";i:18;s:2:\"49\";}s:19:\"\0*\0pkCategoryHandle\";s:4:\"page\";}s:4:\"wrID\";s:3:\"100\";}'),
(166,	1,	'2016-06-08 14:38:59',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"38\";s:4:\"wrID\";s:1:\"1\";}'),
(167,	2,	'2016-06-08 14:40:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"2\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"39\";s:4:\"wrID\";s:1:\"2\";}');

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `Workflows`;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `WorkflowTypes`;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `WorkflowTypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1,	'basic',	'Basic Workflow',	0);

-- 2016-06-08 14:41:52
