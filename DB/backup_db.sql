-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `template_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `template_db`;

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
(1,	1,	0,	78,	1),
(2,	1,	1,	79,	2),
(3,	2,	0,	219,	3),
(4,	2,	1,	220,	4),
(5,	3,	0,	221,	5),
(6,	4,	0,	287,	6),
(7,	4,	1,	288,	7),
(8,	5,	0,	289,	8),
(9,	5,	1,	290,	9),
(10,	6,	0,	291,	10),
(11,	6,	1,	292,	11),
(12,	7,	0,	334,	12),
(13,	7,	1,	335,	13),
(14,	8,	0,	287,	6),
(15,	8,	1,	288,	7),
(16,	9,	0,	291,	10),
(17,	9,	1,	292,	11),
(18,	10,	0,	536,	14),
(19,	10,	1,	537,	15);

DROP TABLE IF EXISTS `AreaLayoutCustomColumns`;
CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `AreaLayoutCustomColumns` (`arLayoutColumnID`, `arLayoutColumnWidth`) VALUES
(1,	'0'),
(2,	'0'),
(3,	'0'),
(4,	'0'),
(5,	'0'),
(6,	'750'),
(7,	'243'),
(8,	'738'),
(9,	'255'),
(10,	'753'),
(11,	'271'),
(12,	'0'),
(13,	'0'),
(14,	'698'),
(15,	'295'),
(16,	'255'),
(17,	'769'),
(18,	'694'),
(19,	'299');

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
(1,	10,	0,	0,	0,	0),
(2,	10,	0,	0,	0,	0),
(3,	0,	0,	0,	0,	0),
(4,	10,	1,	0,	0,	0),
(5,	10,	1,	0,	0,	0),
(6,	10,	1,	0,	0,	0),
(7,	10,	0,	0,	0,	0),
(8,	10,	1,	0,	0,	0),
(9,	10,	1,	0,	0,	0),
(10,	10,	1,	0,	0,	0);

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
(22,	1,	'info_superior',	0,	0,	1,	0),
(23,	152,	'Main',	0,	0,	0,	0),
(24,	1,	'search',	0,	0,	1,	0),
(25,	153,	'Main',	0,	0,	0,	0),
(26,	1,	'Espacio 2',	0,	0,	1,	0),
(27,	154,	'Main',	0,	0,	0,	0),
(28,	1,	'Espacio 3',	0,	0,	1,	0),
(29,	1,	'Slider',	0,	0,	0,	0),
(30,	1,	'Contenido A',	0,	0,	0,	0),
(31,	1,	'Contenido B',	0,	0,	0,	0),
(45,	157,	'info_superior',	0,	0,	1,	0),
(46,	157,	'search',	0,	0,	1,	0),
(47,	157,	'Header Site Title',	0,	0,	1,	0),
(48,	157,	'Espacio 2',	0,	0,	1,	0),
(49,	157,	'Espacio 3',	0,	0,	1,	0),
(50,	157,	'Header Navigation',	0,	0,	1,	0),
(51,	157,	'Titulo',	0,	0,	0,	0),
(52,	157,	'Contenido',	0,	0,	0,	0),
(53,	157,	'Footer Contact',	0,	0,	1,	0),
(54,	157,	'Footer Navigation',	0,	0,	1,	0),
(55,	157,	'Footer Legal',	0,	0,	1,	0),
(56,	159,	'info_superior',	0,	0,	1,	0),
(57,	159,	'search',	0,	0,	1,	0),
(58,	159,	'Header Site Title',	0,	0,	1,	0),
(59,	159,	'Espacio 2',	0,	0,	1,	0),
(60,	159,	'Espacio 3',	0,	0,	1,	0),
(61,	159,	'Header Navigation',	0,	0,	1,	0),
(62,	159,	'Titulo',	0,	0,	0,	0),
(63,	159,	'Contenido',	0,	0,	0,	0),
(64,	159,	'Footer Contact',	0,	0,	1,	0),
(65,	159,	'Footer Navigation',	0,	0,	1,	0),
(66,	159,	'Footer Legal',	0,	0,	1,	0),
(67,	160,	'info_superior',	0,	0,	1,	0),
(68,	160,	'search',	0,	0,	1,	0),
(69,	160,	'Header Site Title',	0,	0,	1,	0),
(70,	160,	'Espacio 2',	0,	0,	1,	0),
(71,	160,	'Espacio 3',	0,	0,	1,	0),
(72,	160,	'Header Navigation',	0,	0,	1,	0),
(73,	160,	'Titulo',	0,	0,	0,	0),
(74,	160,	'Contenido',	0,	0,	0,	0),
(75,	160,	'Footer Contact',	0,	0,	1,	0),
(76,	160,	'Footer Navigation',	0,	0,	1,	0),
(77,	160,	'Footer Legal',	0,	0,	1,	0),
(78,	160,	'Contenido : 1',	0,	0,	0,	74),
(79,	160,	'Contenido : 2',	0,	0,	0,	74),
(124,	165,	'info_superior',	0,	0,	1,	0),
(125,	165,	'search',	0,	0,	1,	0),
(126,	165,	'Header Site Title',	0,	0,	1,	0),
(127,	165,	'Espacio 2',	0,	0,	1,	0),
(128,	165,	'Espacio 3',	0,	0,	1,	0),
(129,	165,	'Header Navigation',	0,	0,	1,	0),
(130,	165,	'Titulo',	0,	0,	0,	0),
(131,	165,	'Contenido',	0,	0,	0,	0),
(132,	165,	'Footer Contact',	0,	0,	1,	0),
(133,	165,	'Footer Navigation',	0,	0,	1,	0),
(134,	165,	'Footer Legal',	0,	0,	1,	0),
(135,	166,	'info_superior',	0,	0,	1,	0),
(136,	166,	'search',	0,	0,	1,	0),
(137,	166,	'Header Site Title',	0,	0,	1,	0),
(138,	166,	'Espacio 2',	0,	0,	1,	0),
(139,	166,	'Espacio 3',	0,	0,	1,	0),
(140,	166,	'Header Navigation',	0,	0,	1,	0),
(141,	166,	'Titulo',	0,	0,	0,	0),
(142,	166,	'Contenido',	0,	0,	0,	0),
(143,	166,	'Footer Contact',	0,	0,	1,	0),
(144,	166,	'Footer Navigation',	0,	0,	1,	0),
(145,	166,	'Footer Legal',	0,	0,	1,	0),
(146,	166,	'Contenido Lateral',	0,	0,	0,	0),
(147,	167,	'info_superior',	0,	0,	1,	0),
(148,	167,	'search',	0,	0,	1,	0),
(149,	167,	'Header Site Title',	0,	0,	1,	0),
(150,	167,	'Espacio 2',	0,	0,	1,	0),
(151,	167,	'Espacio 3',	0,	0,	1,	0),
(152,	167,	'Header Navigation',	0,	0,	1,	0),
(153,	167,	'Titulo',	0,	0,	0,	0),
(154,	167,	'Contenido Lateral',	0,	0,	0,	0),
(155,	167,	'Contenido',	0,	0,	0,	0),
(156,	167,	'Footer Contact',	0,	0,	1,	0),
(157,	167,	'Footer Navigation',	0,	0,	1,	0),
(158,	167,	'Footer Legal',	0,	0,	1,	0),
(159,	168,	'info_superior',	0,	0,	1,	0),
(160,	168,	'search',	0,	0,	1,	0),
(161,	168,	'Header Site Title',	0,	0,	1,	0),
(162,	168,	'Espacio 2',	0,	0,	1,	0),
(163,	168,	'Espacio 3',	0,	0,	1,	0),
(164,	168,	'Header Navigation',	0,	0,	1,	0),
(165,	168,	'Titulo',	0,	0,	0,	0),
(166,	168,	'Contenido',	0,	0,	0,	0),
(167,	168,	'Contenido Lateral',	0,	0,	0,	0),
(168,	168,	'Footer Contact',	0,	0,	1,	0),
(169,	168,	'Footer Navigation',	0,	0,	1,	0),
(170,	168,	'Footer Legal',	0,	0,	1,	0),
(171,	169,	'info_superior',	0,	0,	1,	0),
(172,	169,	'search',	0,	0,	1,	0),
(173,	169,	'Header Site Title',	0,	0,	1,	0),
(174,	169,	'Espacio 2',	0,	0,	1,	0),
(175,	169,	'Espacio 3',	0,	0,	1,	0),
(176,	169,	'Header Navigation',	0,	0,	1,	0),
(177,	169,	'Titulo',	0,	0,	0,	0),
(178,	169,	'Contenido',	0,	0,	0,	0),
(179,	169,	'Footer Contact',	0,	0,	1,	0),
(180,	169,	'Footer Navigation',	0,	0,	1,	0),
(181,	169,	'Footer Legal',	0,	0,	1,	0),
(182,	169,	'Contenido Lateral',	0,	0,	0,	0),
(195,	171,	'info_superior',	0,	0,	1,	0),
(196,	171,	'search',	0,	0,	1,	0),
(197,	171,	'Header Site Title',	0,	0,	1,	0),
(198,	171,	'Espacio 2',	0,	0,	1,	0),
(199,	171,	'Espacio 3',	0,	0,	1,	0),
(200,	171,	'Header Navigation',	0,	0,	1,	0),
(201,	171,	'Titulo',	0,	0,	0,	0),
(202,	171,	'Contenido',	0,	0,	0,	0),
(203,	171,	'Footer Contact',	0,	0,	1,	0),
(204,	171,	'Footer Navigation',	0,	0,	1,	0),
(205,	171,	'Footer Legal',	0,	0,	1,	0),
(206,	171,	'Contenido Lateral',	0,	0,	0,	0),
(207,	172,	'info_superior',	0,	0,	1,	0),
(208,	172,	'search',	0,	0,	1,	0),
(209,	172,	'Header Site Title',	0,	0,	1,	0),
(210,	172,	'Espacio 2',	0,	0,	1,	0),
(211,	172,	'Espacio 3',	0,	0,	1,	0),
(212,	172,	'Header Navigation',	0,	0,	1,	0),
(213,	172,	'Titulo',	0,	0,	0,	0),
(214,	172,	'Contenido',	0,	0,	0,	0),
(215,	172,	'Footer Contact',	0,	0,	1,	0),
(216,	172,	'Footer Navigation',	0,	0,	1,	0),
(217,	172,	'Footer Legal',	0,	0,	1,	0),
(218,	172,	'Contenido Lateral',	0,	0,	0,	0),
(219,	166,	'Contenido : 3',	0,	0,	0,	142),
(220,	166,	'Contenido : 4',	0,	0,	0,	142),
(221,	166,	'Contenido : 5',	0,	0,	0,	142),
(222,	159,	'Contenido Lateral',	0,	0,	0,	0),
(249,	142,	'Main',	0,	0,	0,	0),
(276,	177,	'info_superior',	0,	0,	1,	0),
(277,	177,	'search',	0,	0,	1,	0),
(278,	177,	'Header Site Title',	0,	0,	1,	0),
(279,	177,	'Espacio 2',	0,	0,	1,	0),
(280,	177,	'Espacio 3',	0,	0,	1,	0),
(281,	177,	'Header Navigation',	0,	0,	1,	0),
(282,	177,	'Titulo',	0,	0,	0,	0),
(283,	177,	'Contenido',	0,	0,	0,	0),
(284,	177,	'Footer Contact',	0,	0,	1,	0),
(285,	177,	'Footer Navigation',	0,	0,	1,	0),
(286,	177,	'Footer Legal',	0,	0,	1,	0),
(287,	1,	'Contenido A : 6',	0,	0,	0,	30),
(288,	1,	'Contenido A : 7',	0,	0,	0,	30),
(289,	160,	'Titulo : 8',	0,	0,	0,	73),
(290,	160,	'Titulo : 9',	0,	0,	0,	73),
(291,	1,	'Slider : 10',	0,	0,	0,	29),
(292,	1,	'Slider : 11',	0,	0,	0,	29),
(323,	191,	'info_superior',	0,	0,	1,	0),
(324,	191,	'search',	0,	0,	1,	0),
(325,	191,	'Header Site Title',	0,	0,	1,	0),
(326,	191,	'Espacio 2',	0,	0,	1,	0),
(327,	191,	'Espacio 3',	0,	0,	1,	0),
(328,	191,	'Header Navigation',	0,	0,	1,	0),
(329,	191,	'Titulo',	0,	0,	0,	0),
(330,	191,	'Contenido',	0,	0,	0,	0),
(331,	191,	'Footer Contact',	0,	0,	1,	0),
(332,	191,	'Footer Navigation',	0,	0,	1,	0),
(333,	191,	'Footer Legal',	0,	0,	1,	0),
(334,	191,	'Contenido : 12',	0,	0,	0,	330),
(335,	191,	'Contenido : 13',	0,	0,	0,	330),
(336,	192,	'info_superior',	0,	0,	1,	0),
(337,	192,	'search',	0,	0,	1,	0),
(338,	192,	'Header Site Title',	0,	0,	1,	0),
(339,	192,	'Espacio 2',	0,	0,	1,	0),
(340,	192,	'Espacio 3',	0,	0,	1,	0),
(341,	192,	'Header Navigation',	0,	0,	1,	0),
(342,	192,	'Titulo',	0,	0,	0,	0),
(343,	192,	'Contenido',	0,	0,	0,	0),
(344,	192,	'Footer Contact',	0,	0,	1,	0),
(345,	192,	'Footer Navigation',	0,	0,	1,	0),
(346,	192,	'Footer Legal',	0,	0,	1,	0),
(347,	193,	'info_superior',	0,	0,	1,	0),
(348,	193,	'search',	0,	0,	1,	0),
(349,	193,	'Header Site Title',	0,	0,	1,	0),
(350,	193,	'Espacio 2',	0,	0,	1,	0),
(351,	193,	'Espacio 3',	0,	0,	1,	0),
(352,	193,	'Header Navigation',	0,	0,	1,	0),
(353,	193,	'Titulo',	0,	0,	0,	0),
(354,	193,	'Contenido',	0,	0,	0,	0),
(355,	193,	'Footer Contact',	0,	0,	1,	0),
(356,	193,	'Footer Navigation',	0,	0,	1,	0),
(357,	193,	'Footer Legal',	0,	0,	1,	0),
(358,	194,	'info_superior',	0,	0,	1,	0),
(359,	194,	'search',	0,	0,	1,	0),
(360,	194,	'Header Site Title',	0,	0,	1,	0),
(361,	194,	'Espacio 2',	0,	0,	1,	0),
(362,	194,	'Espacio 3',	0,	0,	1,	0),
(363,	194,	'Header Navigation',	0,	0,	1,	0),
(364,	194,	'Titulo',	0,	0,	0,	0),
(365,	194,	'Contenido',	0,	0,	0,	0),
(366,	194,	'Footer Contact',	0,	0,	1,	0),
(367,	194,	'Footer Navigation',	0,	0,	1,	0),
(368,	194,	'Footer Legal',	0,	0,	1,	0),
(369,	195,	'info_superior',	0,	0,	1,	0),
(370,	195,	'search',	0,	0,	1,	0),
(371,	195,	'Header Site Title',	0,	0,	1,	0),
(372,	195,	'Espacio 2',	0,	0,	1,	0),
(373,	195,	'Espacio 3',	0,	0,	1,	0),
(374,	195,	'Header Navigation',	0,	0,	1,	0),
(375,	195,	'Titulo',	0,	0,	0,	0),
(376,	195,	'Contenido',	0,	0,	0,	0),
(377,	195,	'Footer Contact',	0,	0,	1,	0),
(378,	195,	'Footer Navigation',	0,	0,	1,	0),
(379,	195,	'Footer Legal',	0,	0,	1,	0),
(380,	196,	'info_superior',	0,	0,	1,	0),
(381,	196,	'search',	0,	0,	1,	0),
(382,	196,	'Header Site Title',	0,	0,	1,	0),
(383,	196,	'Espacio 2',	0,	0,	1,	0),
(384,	196,	'Espacio 3',	0,	0,	1,	0),
(385,	196,	'Header Navigation',	0,	0,	1,	0),
(386,	196,	'Titulo',	0,	0,	0,	0),
(387,	196,	'Contenido',	0,	0,	0,	0),
(388,	196,	'Footer Contact',	0,	0,	1,	0),
(389,	196,	'Footer Navigation',	0,	0,	1,	0),
(390,	196,	'Footer Legal',	0,	0,	1,	0),
(492,	204,	'info_superior',	0,	0,	1,	0),
(493,	204,	'search',	0,	0,	1,	0),
(494,	204,	'Header Site Title',	0,	0,	1,	0),
(495,	204,	'Espacio 2',	0,	0,	1,	0),
(496,	204,	'Espacio 3',	0,	0,	1,	0),
(497,	204,	'Header Navigation',	0,	0,	1,	0),
(498,	204,	'Titulo',	0,	0,	0,	0),
(499,	204,	'Contenido',	0,	0,	0,	0),
(500,	204,	'Footer Contact',	0,	0,	1,	0),
(501,	204,	'Footer Navigation',	0,	0,	1,	0),
(502,	204,	'Footer Legal',	0,	0,	1,	0),
(503,	204,	'Contenido Lateral',	0,	0,	0,	0),
(504,	212,	'info_superior',	0,	0,	1,	0),
(505,	212,	'search',	0,	0,	1,	0),
(506,	212,	'Header Site Title',	0,	0,	1,	0),
(507,	212,	'Espacio 2',	0,	0,	1,	0),
(508,	212,	'Espacio 3',	0,	0,	1,	0),
(509,	212,	'Header Navigation',	0,	0,	1,	0),
(510,	212,	'Titulo',	0,	0,	0,	0),
(511,	212,	'Contenido',	0,	0,	0,	0),
(512,	212,	'Footer Contact',	0,	0,	1,	0),
(513,	212,	'Footer Navigation',	0,	0,	1,	0),
(514,	212,	'Footer Legal',	0,	0,	1,	0),
(515,	213,	'info_superior',	0,	0,	1,	0),
(516,	213,	'search',	0,	0,	1,	0),
(517,	213,	'Header Site Title',	0,	0,	1,	0),
(518,	213,	'Espacio 2',	0,	0,	1,	0),
(519,	213,	'Espacio 3',	0,	0,	1,	0),
(520,	213,	'Header Navigation',	0,	0,	1,	0),
(521,	213,	'Titulo',	0,	0,	0,	0),
(522,	213,	'Contenido',	0,	0,	0,	0),
(523,	213,	'Footer Contact',	0,	0,	1,	0),
(524,	213,	'Footer Navigation',	0,	0,	1,	0),
(525,	213,	'Footer Legal',	0,	0,	1,	0),
(526,	214,	'info_superior',	0,	0,	1,	0),
(527,	214,	'search',	0,	0,	1,	0),
(528,	214,	'Header Site Title',	0,	0,	1,	0),
(529,	214,	'Header Navigation',	0,	0,	1,	0),
(530,	214,	'Titulo',	0,	0,	0,	0),
(531,	214,	'Contenido',	0,	0,	0,	0),
(532,	214,	'Contenido Lateral',	0,	0,	0,	0),
(533,	214,	'Footer Contact',	0,	0,	1,	0),
(534,	214,	'Footer Navigation',	0,	0,	1,	0),
(535,	214,	'Footer Legal',	0,	0,	1,	0),
(536,	214,	'Titulo : 14',	0,	0,	0,	530),
(537,	214,	'Titulo : 15',	0,	0,	0,	530),
(577,	218,	'Contenido',	0,	0,	0,	0),
(578,	218,	'info_superior',	0,	0,	1,	0),
(579,	218,	'search',	0,	0,	1,	0),
(580,	218,	'Header Site Title',	0,	0,	1,	0),
(581,	218,	'Header Navigation',	0,	0,	1,	0),
(582,	218,	'Titulo',	0,	0,	0,	0),
(583,	218,	'Titulo : 14',	0,	0,	0,	582),
(584,	218,	'Titulo : 15',	0,	0,	0,	582),
(585,	218,	'Contenido Lateral',	0,	0,	0,	0),
(586,	218,	'Footer Contact',	0,	0,	1,	0),
(587,	218,	'Footer Navigation',	0,	0,	1,	0),
(588,	218,	'Footer Legal',	0,	0,	1,	0),
(589,	219,	'Contenido',	0,	0,	0,	0),
(590,	219,	'info_superior',	0,	0,	1,	0),
(591,	219,	'search',	0,	0,	1,	0),
(592,	219,	'Header Site Title',	0,	0,	1,	0),
(593,	219,	'Header Navigation',	0,	0,	1,	0),
(594,	219,	'Titulo',	0,	0,	0,	0),
(595,	219,	'Titulo : 14',	0,	0,	0,	594),
(596,	219,	'Titulo : 15',	0,	0,	0,	594),
(597,	219,	'Contenido Lateral',	0,	0,	0,	0),
(598,	219,	'Footer Contact',	0,	0,	1,	0),
(599,	219,	'Footer Navigation',	0,	0,	1,	0),
(600,	219,	'Footer Legal',	0,	0,	1,	0),
(601,	220,	'Contenido',	0,	0,	0,	0),
(602,	220,	'info_superior',	0,	0,	1,	0),
(603,	220,	'search',	0,	0,	1,	0),
(604,	220,	'Header Site Title',	0,	0,	1,	0),
(605,	220,	'Header Navigation',	0,	0,	1,	0),
(606,	220,	'Titulo',	0,	0,	0,	0),
(607,	220,	'Titulo : 14',	0,	0,	0,	606),
(608,	220,	'Titulo : 15',	0,	0,	0,	606),
(609,	220,	'Contenido Lateral',	0,	0,	0,	0),
(610,	220,	'Footer Contact',	0,	0,	1,	0),
(611,	220,	'Footer Navigation',	0,	0,	1,	0),
(612,	220,	'Footer Legal',	0,	0,	1,	0),
(613,	221,	'Contenido',	0,	0,	0,	0),
(614,	221,	'info_superior',	0,	0,	1,	0),
(615,	221,	'search',	0,	0,	1,	0),
(616,	221,	'Header Site Title',	0,	0,	1,	0),
(617,	221,	'Header Navigation',	0,	0,	1,	0),
(618,	221,	'Titulo',	0,	0,	0,	0),
(619,	221,	'Titulo : 14',	0,	0,	0,	618),
(620,	221,	'Titulo : 15',	0,	0,	0,	618),
(621,	221,	'Contenido Lateral',	0,	0,	0,	0),
(622,	221,	'Footer Contact',	0,	0,	1,	0),
(623,	221,	'Footer Navigation',	0,	0,	1,	0),
(624,	221,	'Footer Legal',	0,	0,	1,	0),
(625,	222,	'Contenido',	0,	0,	0,	0),
(626,	222,	'info_superior',	0,	0,	1,	0),
(627,	222,	'search',	0,	0,	1,	0),
(628,	222,	'Header Site Title',	0,	0,	1,	0),
(629,	222,	'Header Navigation',	0,	0,	1,	0),
(630,	222,	'Titulo',	0,	0,	0,	0),
(631,	222,	'Titulo : 14',	0,	0,	0,	630),
(632,	222,	'Titulo : 15',	0,	0,	0,	630),
(633,	222,	'Contenido Lateral',	0,	0,	0,	0),
(634,	222,	'Footer Contact',	0,	0,	1,	0),
(635,	222,	'Footer Navigation',	0,	0,	1,	0),
(636,	222,	'Footer Legal',	0,	0,	1,	0),
(637,	223,	'Contenido',	0,	0,	0,	0),
(638,	223,	'info_superior',	0,	0,	1,	0),
(639,	223,	'search',	0,	0,	1,	0),
(640,	223,	'Header Site Title',	0,	0,	1,	0),
(641,	223,	'Header Navigation',	0,	0,	1,	0),
(642,	223,	'Titulo',	0,	0,	0,	0),
(643,	223,	'Titulo : 14',	0,	0,	0,	642),
(644,	223,	'Titulo : 15',	0,	0,	0,	642),
(645,	223,	'Contenido Lateral',	0,	0,	0,	0),
(646,	223,	'Footer Contact',	0,	0,	1,	0),
(647,	223,	'Footer Navigation',	0,	0,	1,	0),
(648,	223,	'Footer Legal',	0,	0,	1,	0);

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
(123,	0),
(124,	0),
(125,	1),
(127,	0),
(128,	0),
(129,	0),
(130,	0),
(131,	0),
(132,	0),
(133,	0),
(134,	0),
(135,	0),
(136,	0),
(137,	0),
(138,	0),
(139,	0),
(162,	0),
(163,	1),
(164,	1),
(165,	1),
(166,	1),
(167,	1),
(168,	1),
(177,	0),
(178,	0),
(181,	1),
(182,	1),
(183,	1),
(184,	1),
(228,	0),
(229,	0),
(244,	0),
(279,	0),
(282,	1),
(285,	1),
(322,	1),
(323,	1);

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
(120,	''),
(121,	''),
(122,	''),
(324,	'Noticias');

DROP TABLE IF EXISTS `atFile`;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atFile` (`avID`, `fID`) VALUES
(144,	0),
(309,	0),
(312,	0),
(315,	0),
(147,	5),
(153,	5),
(156,	5),
(173,	5),
(198,	5),
(201,	5),
(159,	6),
(176,	6),
(195,	6),
(204,	14),
(209,	14),
(212,	14),
(318,	14),
(321,	14),
(342,	14),
(215,	15),
(327,	15),
(220,	16),
(296,	16),
(299,	16),
(330,	16),
(225,	17),
(281,	17),
(284,	17),
(290,	17),
(293,	17),
(302,	17),
(306,	17),
(333,	17),
(336,	33),
(339,	38);

DROP TABLE IF EXISTS `atNumber`;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atNumber` (`avID`, `value`) VALUES
(114,	371.0000),
(115,	144.0000),
(116,	371.0000),
(117,	144.0000),
(118,	371.0000),
(119,	144.0000),
(140,	2072.0000),
(141,	1242.0000),
(148,	1000.0000),
(149,	672.0000),
(160,	1000.0000),
(161,	350.0000),
(169,	1000.0000),
(170,	350.0000),
(179,	64.0000),
(180,	64.0000),
(185,	300.0000),
(186,	150.0000),
(187,	300.0000),
(188,	150.0000),
(189,	300.0000),
(190,	150.0000),
(191,	300.0000),
(192,	150.0000),
(205,	2048.0000),
(206,	1535.0000),
(216,	1920.0000),
(217,	1200.0000),
(221,	1366.0000),
(222,	768.0000),
(226,	1920.0000),
(227,	1080.0000),
(230,	128.0000),
(231,	128.0000),
(232,	128.0000),
(233,	128.0000),
(234,	300.0000),
(235,	64.0000),
(236,	800.0000),
(237,	538.0000),
(238,	800.0000),
(239,	538.0000),
(240,	1000.0000),
(241,	500.0000),
(242,	1000.0000),
(243,	500.0000),
(245,	2664.0000),
(246,	2664.0000),
(247,	2880.0000),
(248,	2880.0000),
(249,	2664.0000),
(250,	2664.0000),
(251,	2664.0000),
(252,	2664.0000),
(253,	2664.0000),
(254,	2664.0000),
(255,	2664.0000),
(256,	2664.0000),
(257,	2664.0000),
(258,	2664.0000),
(259,	2664.0000),
(260,	2664.0000),
(261,	2880.0000),
(262,	2880.0000),
(263,	1366.0000),
(264,	768.0000),
(265,	2664.0000),
(266,	2664.0000),
(267,	2664.0000),
(268,	2664.0000),
(269,	2664.0000),
(270,	2664.0000),
(271,	2664.0000),
(272,	2664.0000),
(273,	2664.0000),
(274,	2664.0000),
(275,	2664.0000),
(276,	2664.0000),
(277,	1000.0000),
(278,	260.0000),
(286,	1000.0000),
(287,	143.0000);

DROP TABLE IF EXISTS `atSelectedTopics`;
CREATE TABLE `atSelectedTopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`TopicNodeID`),
  KEY `TopicNodeID` (`TopicNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atSelectedTopics` (`avID`, `TopicNodeID`) VALUES
(145,	7),
(151,	7),
(154,	7),
(171,	7),
(196,	7),
(199,	7),
(218,	7),
(294,	7),
(297,	7),
(316,	7),
(320,	7),
(328,	7),
(331,	7),
(340,	7),
(157,	8),
(174,	8),
(193,	8),
(202,	8),
(207,	8),
(210,	8),
(213,	8),
(223,	8),
(280,	8),
(283,	8),
(288,	8),
(291,	8),
(300,	8),
(304,	8),
(325,	8),
(334,	8);

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
(1,	8,	'Noticias',	0,	1),
(2,	8,	'Prueba',	1,	1),
(3,	8,	'Ciencias',	2,	1),
(4,	8,	'Salud',	3,	1),
(5,	8,	'Nacionales',	4,	1),
(6,	8,	'TICs',	5,	1);

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`),
  KEY `atSelectOptionID` (`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `atSelectOptionsSelected` (`avID`, `atSelectOptionID`) VALUES
(126,	1),
(152,	1),
(155,	2),
(172,	3),
(175,	4),
(194,	4),
(197,	5),
(203,	5),
(208,	5),
(211,	5),
(214,	5),
(326,	5),
(335,	5),
(200,	6),
(219,	6),
(295,	6),
(298,	6),
(317,	6),
(319,	6),
(332,	6),
(341,	6);

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
(18,	5,	2);

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
(18,	'categorias',	'Categorías',	1,	1,	0,	0,	0,	1,	10,	1,	0),
(19,	'thumbnail',	'Imagen Miniatura',	1,	0,	0,	0,	0,	1,	5,	1,	0);

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
(8,	2,	5);

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
(2,	'Navigation and Indexing',	'navigation',	1,	0,	0,	1);

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
(1,	4,	'2018-05-16 12:10:34',	1,	2),
(2,	3,	'2018-05-16 12:10:34',	1,	2),
(3,	3,	'2018-05-16 12:10:35',	1,	2),
(4,	3,	'2018-05-16 12:10:35',	1,	2),
(5,	3,	'2018-05-16 12:10:35',	1,	2),
(6,	3,	'2018-05-16 12:10:35',	1,	2),
(7,	3,	'2018-05-16 12:10:35',	1,	2),
(8,	3,	'2018-05-16 12:10:35',	1,	2),
(9,	5,	'2018-05-16 12:10:35',	1,	3),
(10,	3,	'2018-05-16 12:10:35',	1,	2),
(11,	3,	'2018-05-16 12:10:36',	1,	2),
(12,	3,	'2018-05-16 12:10:36',	1,	2),
(13,	3,	'2018-05-16 12:10:36',	1,	2),
(14,	3,	'2018-05-16 12:10:36',	1,	2),
(15,	3,	'2018-05-16 12:10:36',	1,	2),
(16,	5,	'2018-05-16 12:10:36',	1,	3),
(17,	3,	'2018-05-16 12:10:37',	1,	2),
(18,	5,	'2018-05-16 12:10:37',	1,	3),
(19,	3,	'2018-05-16 12:10:37',	1,	2),
(20,	3,	'2018-05-16 12:10:37',	1,	2),
(21,	3,	'2018-05-16 12:10:37',	1,	2),
(22,	3,	'2018-05-16 12:10:37',	1,	2),
(23,	3,	'2018-05-16 12:10:37',	1,	2),
(24,	3,	'2018-05-16 12:10:38',	1,	2),
(25,	3,	'2018-05-16 12:10:38',	1,	2),
(26,	3,	'2018-05-16 12:10:38',	1,	2),
(27,	3,	'2018-05-16 12:10:38',	1,	2),
(28,	5,	'2018-05-16 12:10:38',	1,	3),
(29,	5,	'2018-05-16 12:10:38',	1,	3),
(30,	5,	'2018-05-16 12:10:39',	1,	3),
(31,	5,	'2018-05-16 12:10:39',	1,	3),
(32,	5,	'2018-05-16 12:10:39',	1,	3),
(33,	5,	'2018-05-16 12:10:39',	1,	3),
(34,	5,	'2018-05-16 12:10:39',	1,	3),
(35,	5,	'2018-05-16 12:10:39',	1,	3),
(36,	3,	'2018-05-16 12:10:39',	1,	2),
(37,	3,	'2018-05-16 12:10:40',	1,	2),
(38,	3,	'2018-05-16 12:10:40',	1,	2),
(39,	4,	'2018-05-16 12:10:40',	1,	2),
(40,	3,	'2018-05-16 12:10:40',	1,	2),
(41,	3,	'2018-05-16 12:10:40',	1,	2),
(42,	5,	'2018-05-16 12:10:41',	1,	3),
(43,	10,	'2018-05-16 12:10:41',	1,	3),
(44,	3,	'2018-05-16 12:10:41',	1,	2),
(45,	3,	'2018-05-16 12:10:41',	1,	2),
(46,	3,	'2018-05-16 12:10:41',	1,	2),
(47,	5,	'2018-05-16 12:10:41',	1,	3),
(48,	3,	'2018-05-16 12:10:41',	1,	2),
(49,	3,	'2018-05-16 12:10:42',	1,	2),
(50,	3,	'2018-05-16 12:10:42',	1,	2),
(51,	5,	'2018-05-16 12:10:42',	1,	3),
(52,	3,	'2018-05-16 12:10:42',	1,	2),
(53,	3,	'2018-05-16 12:10:42',	1,	2),
(54,	3,	'2018-05-16 12:10:42',	1,	2),
(55,	3,	'2018-05-16 12:10:43',	1,	2),
(56,	3,	'2018-05-16 12:10:43',	1,	2),
(57,	3,	'2018-05-16 12:10:43',	1,	2),
(58,	3,	'2018-05-16 12:10:43',	1,	2),
(59,	3,	'2018-05-16 12:10:43',	1,	2),
(60,	3,	'2018-05-16 12:10:43',	1,	2),
(61,	3,	'2018-05-16 12:10:43',	1,	2),
(62,	3,	'2018-05-16 12:10:44',	1,	2),
(63,	3,	'2018-05-16 12:10:44',	1,	2),
(64,	3,	'2018-05-16 12:10:44',	1,	2),
(65,	3,	'2018-05-16 12:10:44',	1,	2),
(66,	3,	'2018-05-16 12:10:44',	1,	2),
(67,	3,	'2018-05-16 12:10:44',	1,	2),
(68,	3,	'2018-05-16 12:10:44',	1,	2),
(69,	3,	'2018-05-16 12:10:44',	1,	2),
(70,	3,	'2018-05-16 12:10:45',	1,	2),
(71,	3,	'2018-05-16 12:10:45',	1,	2),
(72,	3,	'2018-05-16 12:10:45',	1,	2),
(73,	3,	'2018-05-16 12:10:45',	1,	2),
(74,	3,	'2018-05-16 12:10:45',	1,	2),
(75,	3,	'2018-05-16 12:10:45',	1,	2),
(76,	3,	'2018-05-16 12:10:45',	1,	2),
(77,	3,	'2018-05-16 12:10:45',	1,	2),
(78,	3,	'2018-05-16 12:10:46',	1,	2),
(79,	3,	'2018-05-16 12:10:46',	1,	2),
(80,	3,	'2018-05-16 12:10:46',	1,	2),
(81,	3,	'2018-05-16 12:10:46',	1,	2),
(82,	3,	'2018-05-16 12:10:46',	1,	2),
(83,	3,	'2018-05-16 12:10:46',	1,	2),
(84,	3,	'2018-05-16 12:10:46',	1,	2),
(85,	3,	'2018-05-16 12:10:47',	1,	2),
(86,	3,	'2018-05-16 12:10:47',	1,	2),
(87,	3,	'2018-05-16 12:10:47',	1,	2),
(88,	3,	'2018-05-16 12:10:47',	1,	2),
(89,	3,	'2018-05-16 12:10:47',	1,	2),
(90,	3,	'2018-05-16 12:10:47',	1,	2),
(91,	3,	'2018-05-16 12:10:48',	1,	2),
(92,	3,	'2018-05-16 12:10:48',	1,	2),
(93,	3,	'2018-05-16 12:10:48',	1,	2),
(94,	3,	'2018-05-16 12:10:48',	1,	2),
(95,	3,	'2018-05-16 12:10:48',	1,	2),
(96,	3,	'2018-05-16 12:10:48',	1,	2),
(97,	3,	'2018-05-16 12:10:48',	1,	2),
(98,	3,	'2018-05-16 12:10:48',	1,	2),
(99,	10,	'2018-05-16 12:10:49',	1,	3),
(100,	3,	'2018-05-16 12:10:49',	1,	2),
(101,	3,	'2018-05-16 12:10:49',	1,	2),
(102,	3,	'2018-05-16 12:10:49',	1,	2),
(103,	3,	'2018-05-16 12:10:49',	1,	2),
(104,	3,	'2018-05-16 12:10:49',	1,	2),
(105,	3,	'2018-05-16 12:10:49',	1,	2),
(106,	3,	'2018-05-16 12:10:49',	1,	2),
(107,	5,	'2018-05-16 12:10:50',	1,	3),
(108,	5,	'2018-05-16 12:10:51',	1,	3),
(109,	10,	'2018-05-16 12:10:51',	1,	3),
(110,	4,	'2018-05-16 12:10:58',	1,	2),
(111,	4,	'2018-05-16 12:10:58',	1,	2),
(112,	4,	'2018-05-16 12:10:58',	1,	2),
(113,	4,	'2018-05-16 12:10:59',	1,	2),
(114,	14,	'2018-05-16 14:01:46',	1,	6),
(115,	15,	'2018-05-16 14:01:47',	1,	6),
(116,	14,	'2018-05-16 14:02:10',	1,	6),
(117,	15,	'2018-05-16 14:02:10',	1,	6),
(118,	14,	'2018-05-16 14:03:13',	1,	6),
(119,	15,	'2018-05-16 14:03:13',	1,	6),
(120,	1,	'2018-05-16 14:25:55',	1,	1),
(121,	2,	'2018-05-16 14:25:55',	1,	2),
(122,	7,	'2018-05-16 14:25:55',	1,	2),
(123,	11,	'2018-05-16 14:25:55',	1,	3),
(124,	5,	'2018-05-16 14:43:49',	1,	3),
(125,	5,	'2018-05-16 15:21:13',	1,	3),
(126,	8,	'2018-05-16 15:21:32',	1,	8),
(127,	5,	'2018-05-16 15:46:23',	1,	3),
(128,	5,	'2018-05-16 15:47:16',	1,	3),
(129,	5,	'2018-05-16 15:48:19',	1,	3),
(130,	5,	'2018-05-17 09:30:11',	1,	3),
(131,	5,	'2018-05-17 09:30:32',	1,	3),
(132,	5,	'2018-05-17 10:14:16',	1,	3),
(133,	5,	'2018-05-17 10:17:30',	1,	3),
(134,	5,	'2018-05-17 10:35:52',	1,	3),
(135,	5,	'2018-05-17 10:41:49',	1,	3),
(136,	5,	'2018-05-17 10:42:29',	1,	3),
(137,	5,	'2018-05-17 10:43:39',	1,	3),
(138,	5,	'2018-05-17 10:44:57',	1,	3),
(139,	5,	'2018-05-17 10:46:12',	1,	3),
(140,	14,	'2018-05-17 11:00:25',	1,	6),
(141,	15,	'2018-05-17 11:00:25',	1,	6),
(142,	18,	'2018-05-17 11:14:23',	1,	10),
(143,	8,	'2018-05-17 11:14:23',	1,	8),
(144,	19,	'2018-05-17 11:14:23',	1,	5),
(145,	18,	'2018-05-17 11:15:33',	1,	10),
(146,	8,	'2018-05-17 11:15:33',	1,	8),
(147,	19,	'2018-05-17 11:15:33',	1,	5),
(148,	14,	'2018-05-17 11:16:32',	1,	6),
(149,	15,	'2018-05-17 11:16:32',	1,	6),
(150,	8,	'2018-05-17 11:23:02',	1,	8),
(151,	18,	'2018-05-17 11:24:36',	1,	10),
(152,	8,	'2018-05-17 11:24:36',	1,	8),
(153,	19,	'2018-05-17 11:24:37',	1,	5),
(154,	18,	'2018-05-17 11:27:33',	1,	10),
(155,	8,	'2018-05-17 11:27:33',	1,	8),
(156,	19,	'2018-05-17 11:27:34',	1,	5),
(157,	18,	'2018-05-17 11:32:23',	1,	10),
(158,	8,	'2018-05-17 11:32:24',	1,	8),
(159,	19,	'2018-05-17 11:32:24',	1,	5),
(160,	14,	'2018-05-17 11:33:34',	1,	6),
(161,	15,	'2018-05-17 11:33:35',	1,	6),
(162,	5,	'2018-05-17 11:35:06',	1,	3),
(163,	5,	'2018-05-17 11:42:18',	1,	3),
(164,	5,	'2018-05-17 11:42:19',	1,	3),
(165,	5,	'2018-05-17 11:42:20',	1,	3),
(166,	5,	'2018-05-17 11:42:21',	1,	3),
(167,	5,	'2018-05-17 11:42:22',	1,	3),
(168,	5,	'2018-05-17 11:42:23',	1,	3),
(169,	14,	'2018-05-17 12:03:45',	1,	6),
(170,	15,	'2018-05-17 12:03:45',	1,	6),
(171,	18,	'2018-05-18 08:09:26',	1,	10),
(172,	8,	'2018-05-18 08:09:26',	1,	8),
(173,	19,	'2018-05-18 08:09:26',	1,	5),
(174,	18,	'2018-05-18 08:11:23',	1,	10),
(175,	8,	'2018-05-18 08:11:23',	1,	8),
(176,	19,	'2018-05-18 08:11:23',	1,	5),
(177,	5,	'2018-05-18 09:56:03',	1,	3),
(178,	5,	'2018-05-18 10:18:38',	1,	3),
(179,	14,	'2018-05-18 10:25:09',	1,	6),
(180,	15,	'2018-05-18 10:25:09',	1,	6),
(181,	5,	'2018-05-18 10:46:15',	1,	3),
(182,	5,	'2018-05-18 10:46:55',	1,	3),
(183,	5,	'2018-05-18 10:47:15',	1,	3),
(184,	5,	'2018-05-18 10:47:37',	1,	3),
(185,	14,	'2018-05-18 10:55:45',	1,	6),
(186,	15,	'2018-05-18 10:55:45',	1,	6),
(187,	14,	'2018-05-18 10:56:06',	1,	6),
(188,	15,	'2018-05-18 10:56:06',	1,	6),
(189,	14,	'2018-05-18 10:56:28',	1,	6),
(190,	15,	'2018-05-18 10:56:28',	1,	6),
(191,	14,	'2018-05-18 10:56:50',	1,	6),
(192,	15,	'2018-05-18 10:56:50',	1,	6),
(193,	18,	'2018-05-18 11:15:25',	1,	10),
(194,	8,	'2018-05-18 11:15:25',	1,	8),
(195,	19,	'2018-05-18 11:15:25',	1,	5),
(196,	18,	'2018-05-18 11:17:40',	1,	10),
(197,	8,	'2018-05-18 11:17:40',	1,	8),
(198,	19,	'2018-05-18 11:17:40',	1,	5),
(199,	18,	'2018-05-18 11:23:50',	1,	10),
(200,	8,	'2018-05-18 11:23:50',	1,	8),
(201,	19,	'2018-05-18 11:23:50',	1,	5),
(202,	18,	'2018-05-18 11:25:28',	1,	10),
(203,	8,	'2018-05-18 11:25:28',	1,	8),
(204,	19,	'2018-05-18 11:25:28',	1,	5),
(205,	14,	'2018-05-18 11:28:07',	1,	6),
(206,	15,	'2018-05-18 11:28:07',	1,	6),
(207,	18,	'2018-05-18 11:29:30',	1,	10),
(208,	8,	'2018-05-18 11:29:30',	1,	8),
(209,	19,	'2018-05-18 11:29:30',	1,	5),
(210,	18,	'2018-05-18 11:29:47',	1,	10),
(211,	8,	'2018-05-18 11:29:47',	1,	8),
(212,	19,	'2018-05-18 11:29:47',	1,	5),
(213,	18,	'2018-05-18 11:29:55',	1,	10),
(214,	8,	'2018-05-18 11:29:55',	1,	8),
(215,	19,	'2018-05-18 11:29:55',	1,	5),
(216,	14,	'2018-05-18 11:30:40',	1,	6),
(217,	15,	'2018-05-18 11:30:40',	1,	6),
(218,	18,	'2018-05-18 11:32:40',	1,	10),
(219,	8,	'2018-05-18 11:32:40',	1,	8),
(220,	19,	'2018-05-18 11:32:40',	1,	5),
(221,	14,	'2018-05-18 11:33:52',	1,	6),
(222,	15,	'2018-05-18 11:33:52',	1,	6),
(223,	18,	'2018-05-18 11:34:45',	1,	10),
(224,	8,	'2018-05-18 11:34:45',	1,	8),
(225,	19,	'2018-05-18 11:34:45',	1,	5),
(226,	14,	'2018-05-18 11:35:27',	1,	6),
(227,	15,	'2018-05-18 11:35:27',	1,	6),
(228,	5,	'2018-05-18 11:39:56',	1,	3),
(229,	5,	'2018-05-18 11:40:22',	1,	3),
(230,	14,	'2018-05-18 11:44:49',	1,	6),
(231,	15,	'2018-05-18 11:44:50',	1,	6),
(232,	14,	'2018-05-18 11:46:18',	1,	6),
(233,	15,	'2018-05-18 11:46:19',	1,	6),
(234,	14,	'2018-05-18 11:49:11',	1,	6),
(235,	15,	'2018-05-18 11:49:11',	1,	6),
(236,	14,	'2018-05-18 11:54:58',	1,	6),
(237,	15,	'2018-05-18 11:54:58',	1,	6),
(238,	14,	'2018-05-18 11:55:08',	1,	6),
(239,	15,	'2018-05-18 11:55:08',	1,	6),
(240,	14,	'2018-05-18 11:57:05',	1,	6),
(241,	15,	'2018-05-18 11:57:05',	1,	6),
(242,	14,	'2018-05-18 11:57:42',	1,	6),
(243,	15,	'2018-05-18 11:57:42',	1,	6),
(244,	5,	'2018-05-18 12:00:15',	1,	3),
(245,	14,	'2018-05-18 12:11:13',	1,	6),
(246,	15,	'2018-05-18 12:11:13',	1,	6),
(247,	14,	'2018-05-18 12:11:16',	1,	6),
(248,	15,	'2018-05-18 12:11:16',	1,	6),
(249,	14,	'2018-05-18 12:11:18',	1,	6),
(250,	15,	'2018-05-18 12:11:18',	1,	6),
(251,	14,	'2018-05-18 12:11:20',	1,	6),
(252,	15,	'2018-05-18 12:11:21',	1,	6),
(253,	14,	'2018-05-18 12:11:23',	1,	6),
(254,	15,	'2018-05-18 12:11:23',	1,	6),
(255,	14,	'2018-05-18 12:11:25',	1,	6),
(256,	15,	'2018-05-18 12:11:25',	1,	6),
(257,	14,	'2018-05-18 12:11:28',	1,	6),
(258,	15,	'2018-05-18 12:11:28',	1,	6),
(259,	14,	'2018-05-18 12:11:30',	1,	6),
(260,	15,	'2018-05-18 12:11:31',	1,	6),
(261,	14,	'2018-05-18 12:11:33',	1,	6),
(262,	15,	'2018-05-18 12:11:33',	1,	6),
(263,	14,	'2018-05-18 12:11:36',	1,	6),
(264,	15,	'2018-05-18 12:11:36',	1,	6),
(265,	14,	'2018-05-18 12:11:37',	1,	6),
(266,	15,	'2018-05-18 12:11:37',	1,	6),
(267,	14,	'2018-05-18 12:11:39',	1,	6),
(268,	15,	'2018-05-18 12:11:39',	1,	6),
(269,	14,	'2018-05-18 12:11:42',	1,	6),
(270,	15,	'2018-05-18 12:11:43',	1,	6),
(271,	14,	'2018-05-18 12:11:45',	1,	6),
(272,	15,	'2018-05-18 12:11:46',	1,	6),
(273,	14,	'2018-05-18 12:11:48',	1,	6),
(274,	15,	'2018-05-18 12:11:48',	1,	6),
(275,	14,	'2018-05-18 12:11:50',	1,	6),
(276,	15,	'2018-05-18 12:11:50',	1,	6),
(277,	14,	'2018-05-18 13:41:25',	1,	6),
(278,	15,	'2018-05-18 13:41:25',	1,	6),
(279,	5,	'2018-05-18 13:44:31',	1,	3),
(280,	18,	'2018-05-18 13:44:31',	1,	10),
(281,	19,	'2018-05-18 13:44:31',	1,	5),
(282,	5,	'2018-05-18 13:46:30',	1,	3),
(283,	18,	'2018-05-18 13:46:30',	1,	10),
(284,	19,	'2018-05-18 13:46:30',	1,	5),
(285,	5,	'2018-05-18 15:07:47',	1,	3),
(286,	14,	'2018-05-21 09:05:07',	1,	6),
(287,	15,	'2018-05-21 09:05:07',	1,	6),
(288,	18,	'2018-05-21 09:28:09',	1,	10),
(289,	8,	'2018-05-21 09:28:09',	1,	8),
(290,	19,	'2018-05-21 09:28:09',	1,	5),
(291,	18,	'2018-05-21 09:28:28',	1,	10),
(292,	8,	'2018-05-21 09:28:28',	1,	8),
(293,	19,	'2018-05-21 09:28:28',	1,	5),
(294,	18,	'2018-05-21 09:28:57',	1,	10),
(295,	8,	'2018-05-21 09:28:57',	1,	8),
(296,	19,	'2018-05-21 09:28:57',	1,	5),
(297,	18,	'2018-05-21 09:29:12',	1,	10),
(298,	8,	'2018-05-21 09:29:12',	1,	8),
(299,	19,	'2018-05-21 09:29:12',	1,	5),
(300,	18,	'2018-05-21 09:29:30',	1,	10),
(301,	8,	'2018-05-21 09:29:30',	1,	8),
(302,	19,	'2018-05-21 09:29:30',	1,	5),
(303,	8,	'2018-05-21 09:35:44',	1,	8),
(304,	18,	'2018-05-21 09:45:41',	1,	10),
(305,	8,	'2018-05-21 09:45:41',	1,	8),
(306,	19,	'2018-05-21 09:45:41',	1,	5),
(307,	18,	'2018-05-21 09:46:25',	1,	10),
(308,	8,	'2018-05-21 09:46:25',	1,	8),
(309,	19,	'2018-05-21 09:46:25',	1,	5),
(310,	18,	'2018-05-21 09:47:08',	1,	10),
(311,	8,	'2018-05-21 09:47:08',	1,	8),
(312,	19,	'2018-05-21 09:47:08',	1,	5),
(313,	18,	'2018-05-21 09:48:47',	1,	10),
(314,	8,	'2018-05-21 09:48:47',	1,	8),
(315,	19,	'2018-05-21 09:48:47',	1,	5),
(316,	18,	'2018-05-21 09:52:24',	1,	10),
(317,	8,	'2018-05-21 09:52:24',	1,	8),
(318,	19,	'2018-05-21 09:52:24',	1,	5),
(319,	8,	'2018-05-21 09:55:46',	1,	8),
(320,	18,	'2018-05-21 09:55:46',	1,	10),
(321,	19,	'2018-05-21 09:55:46',	1,	5),
(322,	5,	'2018-05-21 09:55:46',	1,	3),
(323,	5,	'2018-05-21 09:56:03',	1,	3),
(324,	3,	'2018-05-21 09:56:14',	1,	2),
(325,	18,	'2018-05-21 09:56:25',	1,	10),
(326,	8,	'2018-05-21 09:56:25',	1,	8),
(327,	19,	'2018-05-21 09:56:25',	1,	5),
(328,	18,	'2018-05-21 09:58:41',	1,	10),
(329,	8,	'2018-05-21 09:58:41',	1,	8),
(330,	19,	'2018-05-21 09:58:41',	1,	5),
(331,	18,	'2018-05-21 10:00:07',	1,	10),
(332,	8,	'2018-05-21 10:00:07',	1,	8),
(333,	19,	'2018-05-21 10:00:07',	1,	5),
(334,	18,	'2018-05-21 10:02:18',	1,	10),
(335,	8,	'2018-05-21 10:02:18',	1,	8),
(336,	19,	'2018-05-21 10:02:18',	1,	5),
(337,	18,	'2018-05-21 10:09:24',	1,	10),
(338,	8,	'2018-05-21 10:09:24',	1,	8),
(339,	19,	'2018-05-21 10:09:24',	1,	5),
(340,	18,	'2018-05-21 10:13:02',	1,	10),
(341,	8,	'2018-05-21 10:13:02',	1,	8),
(342,	19,	'2018-05-21 10:13:02',	1,	5);

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
(153,	2,	11,	2),
(153,	3,	11,	2),
(153,	4,	11,	2),
(153,	5,	11,	2),
(154,	2,	12,	3),
(172,	2,	53,	4),
(150,	2,	422,	5),
(150,	4,	423,	6),
(150,	5,	423,	6),
(150,	6,	423,	6),
(150,	7,	423,	6),
(146,	4,	435,	7);

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
(1,	15,	14,	'DUPLICATE'),
(2,	17,	16,	'DUPLICATE'),
(3,	43,	42,	'DUPLICATE'),
(4,	45,	44,	'DUPLICATE'),
(5,	56,	54,	'DUPLICATE'),
(7,	154,	150,	'DUPLICATE'),
(8,	155,	153,	'DUPLICATE'),
(9,	160,	159,	'DUPLICATE'),
(10,	162,	160,	'DUPLICATE'),
(11,	234,	232,	'DUPLICATE'),
(12,	236,	234,	'DUPLICATE'),
(13,	237,	233,	'DUPLICATE'),
(14,	238,	237,	'DUPLICATE'),
(15,	248,	151,	'DUPLICATE'),
(16,	249,	161,	'DUPLICATE'),
(17,	255,	253,	'DUPLICATE'),
(18,	256,	253,	'DUPLICATE'),
(19,	258,	253,	'DUPLICATE'),
(20,	260,	253,	'DUPLICATE'),
(21,	262,	261,	'DUPLICATE'),
(22,	263,	154,	'DUPLICATE'),
(23,	264,	260,	'DUPLICATE'),
(24,	265,	258,	'DUPLICATE'),
(25,	266,	255,	'DUPLICATE'),
(26,	267,	256,	'DUPLICATE'),
(29,	414,	56,	'DUPLICATE'),
(30,	415,	414,	'DUPLICATE'),
(31,	419,	417,	'DUPLICATE'),
(32,	421,	15,	'DUPLICATE'),
(33,	425,	424,	'DUPLICATE'),
(34,	426,	425,	'DUPLICATE'),
(35,	428,	427,	'DUPLICATE'),
(36,	430,	429,	'DUPLICATE'),
(37,	431,	262,	'DUPLICATE'),
(38,	433,	13,	'DUPLICATE'),
(39,	434,	432,	'DUPLICATE'),
(40,	437,	238,	'DUPLICATE'),
(41,	452,	94,	'DUPLICATE'),
(42,	455,	97,	'DUPLICATE'),
(45,	464,	95,	'DUPLICATE'),
(46,	573,	572,	'DUPLICATE'),
(47,	579,	94,	'DUPLICATE'),
(48,	582,	452,	'DUPLICATE'),
(49,	583,	582,	'DUPLICATE'),
(50,	584,	433,	'DUPLICATE'),
(51,	586,	437,	'DUPLICATE'),
(52,	587,	421,	'DUPLICATE');

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
(1,	'',	'2018-05-16 12:10:50',	'2018-05-16 12:10:50',	NULL,	'0',	12,	1,	NULL),
(2,	'',	'2018-05-16 12:10:50',	'2018-05-16 12:10:50',	NULL,	'0',	9,	1,	NULL),
(3,	'',	'2018-05-16 12:10:50',	'2018-05-16 12:10:50',	NULL,	'0',	10,	1,	NULL),
(4,	'',	'2018-05-16 12:10:50',	'2018-05-16 12:10:50',	NULL,	'0',	8,	1,	NULL),
(5,	'',	'2018-05-16 12:10:50',	'2018-05-16 12:10:50',	NULL,	'0',	8,	1,	NULL),
(6,	'',	'2018-05-16 12:10:51',	'2018-05-16 12:10:51',	NULL,	'0',	7,	1,	NULL),
(7,	'',	'2018-05-16 12:10:51',	'2018-05-16 12:10:51',	NULL,	'0',	6,	1,	NULL),
(8,	'',	'2018-05-16 12:10:51',	'2018-05-16 12:10:51',	NULL,	'0',	8,	1,	NULL),
(9,	'',	'2018-05-16 12:11:01',	'2018-05-16 12:11:01',	NULL,	'0',	2,	1,	NULL),
(10,	'',	'2018-05-16 14:01:57',	'2018-05-16 14:01:57',	NULL,	'0',	27,	1,	NULL),
(11,	'',	'2018-05-16 14:02:13',	'2018-05-16 14:02:13',	NULL,	'0',	27,	1,	NULL),
(12,	'',	'2018-05-16 14:03:17',	'2018-05-16 14:03:17',	NULL,	'0',	27,	1,	NULL),
(13,	'',	'2018-05-16 14:03:42',	'2018-05-16 14:06:10',	'Estilo A',	'0',	32,	1,	NULL),
(14,	'',	'2018-05-16 14:10:50',	'2018-05-16 14:10:50',	NULL,	'0',	12,	1,	NULL),
(15,	'',	'2018-05-16 14:11:00',	'2018-05-16 14:11:01',	NULL,	'1',	12,	1,	NULL),
(16,	'',	'2018-05-16 14:15:57',	'2018-05-16 14:15:57',	NULL,	'0',	39,	1,	NULL),
(17,	'',	'2018-05-16 14:16:53',	'2018-05-16 14:16:53',	NULL,	'1',	39,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjMwOntzOjM6ImJJRCI7czoyOiIxNyI7czo5OiIAKgBfdGFibGUiO3M6MjE6ImJ0U3ZnU29jaWFsTWVkaWFJY29ucyI7czoxMzoib3BlbkxpbmtCbGFuayI7czoxOiIxIjtzOjE0OiJiZWhhbmNlQWRkcmVzcyI7TjtzOjE3OiJkZXZpYW50YXJ0QWRkcmVzcyI7TjtzOjE1OiJkcmliYmJsZUFkZHJlc3MiO047czoxMjoiZW1haWxBZGRyZXNzIjtOO3M6MTU6ImZhY2Vib29rQWRkcmVzcyI7TjtzOjEzOiJmbGlja3JBZGRyZXNzIjtOO3M6MTM6ImdpdGh1YkFkZHJlc3MiO047czoxNzoiZ29vZ2xlcGx1c0FkZHJlc3MiO047czoxNjoiaW5zdGFncmFtQWRkcmVzcyI7TjtzOjEzOiJpdHVuZXNBZGRyZXNzIjtOO3M6MTU6ImxpbmtlZGluQWRkcmVzcyI7TjtzOjE2OiJwaW50ZXJlc3RBZGRyZXNzIjtOO3M6MTI6InNreXBlQWRkcmVzcyI7TjtzOjE3OiJzb3VuZGNsb3VkQWRkcmVzcyI7TjtzOjE0OiJzcG90aWZ5QWRkcmVzcyI7TjtzOjEzOiJ0dW1ibHJBZGRyZXNzIjtOO3M6MTQ6InR3aXR0ZXJBZGRyZXNzIjtOO3M6MTI6InZpbWVvQWRkcmVzcyI7TjtzOjE0OiJ5b3V0dWJlQWRkcmVzcyI7TjtzOjk6Imljb25TaGFwZSI7czo1OiJyb3VuZCI7czo5OiJpY29uQ29sb3IiO3M6NDoibG9nbyI7czo5OiJpY29uSG92ZXIiO3M6NzoiaG92ZXJPbiI7czo4OiJpY29uU2l6ZSI7czoyOiIyNSI7czoxMDoiaWNvbk1hcmdpbiI7czoxOiI1IjtzOjg6InBvc2l0aW9uIjtzOjU6InJpZ2h0IjtzOjQ6Imljb24iO3M6OTc0OiJhOjE5OntzOjc6ImJlaGFuY2UiO2E6MTp7czo3OiJhZGRyZXNzIjtzOjA6IiI7fXM6MTA6ImRldmlhbnRhcnQiO2E6MTp7czo3OiJhZGRyZXNzIjtzOjA6IiI7fXM6ODoiZHJpYmJibGUiO2E6MTp7czo3OiJhZGRyZXNzIjtzOjA6IiI7fXM6ODoiZmFjZWJvb2siO2E6Mjp7czo3OiJjaGVja2VkIjtzOjg6ImZhY2Vib29rIjtzOjc6ImFkZHJlc3MiO3M6MToiIyI7fXM6OToiaW5zdGFncmFtIjthOjI6e3M6NzoiY2hlY2tlZCI7czo5OiJpbnN0YWdyYW0iO3M6NzoiYWRkcmVzcyI7czoxOiIjIjt9czo3OiJ0d2l0dGVyIjthOjI6e3M6NzoiY2hlY2tlZCI7czo3OiJ0d2l0dGVyIjtzOjc6ImFkZHJlc3MiO3M6MToiIyI7fXM6MTA6Imdvb2dsZXBsdXMiO2E6Mjp7czo3OiJjaGVja2VkIjtzOjEwOiJnb29nbGVwbHVzIjtzOjc6ImFkZHJlc3MiO3M6MToiIyI7fXM6NzoieW91dHViZSI7YToyOntzOjc6ImNoZWNrZWQiO3M6NzoieW91dHViZSI7czo3OiJhZGRyZXNzIjtzOjE6IiMiO31zOjU6ImVtYWlsIjthOjI6e3M6NzoiY2hlY2tlZCI7czo1OiJlbWFpbCI7czo3OiJhZGRyZXNzIjtzOjE6IiMiO31zOjY6ImZsaWNrciI7YToxOntzOjc6ImFkZHJlc3MiO3M6MDoiIjt9czo2OiJnaXRodWIiO2E6MTp7czo3OiJhZGRyZXNzIjtzOjA6IiI7fXM6NjoiaXR1bmVzIjthOjE6e3M6NzoiYWRkcmVzcyI7czowOiIiO31zOjg6ImxpbmtlZGluIjthOjE6e3M6NzoiYWRkcmVzcyI7czowOiIiO31zOjk6InBpbnRlcmVzdCI7YToxOntzOjc6ImFkZHJlc3MiO3M6MDoiIjt9czo1OiJza3lwZSI7YToxOntzOjc6ImFkZHJlc3MiO3M6MDoiIjt9czoxMDoic291bmRjbG91ZCI7YToxOntzOjc6ImFkZHJlc3MiO3M6MDoiIjt9czo3OiJzcG90aWZ5IjthOjE6e3M6NzoiYWRkcmVzcyI7czowOiIiO31zOjY6InR1bWJsciI7YToxOntzOjc6ImFkZHJlc3MiO3M6MDoiIjt9czo1OiJ2aW1lbyI7YToxOntzOjc6ImFkZHJlc3MiO3M6MDoiIjt9fSI7czo5OiJzb3J0T3JkZXIiO3M6MTU3OiJCZWhhbmNlLGRldmlhbnRBUlQsRHJpYmJibGUsRmFjZWJvb2ssSW5zdGFncmFtLFR3aXR0ZXIsR29vZ2xlUGx1cyxZb3V0dWJlLEVtYWlsLEZsaWNrcixHaXRodWIsaVR1bmVzLExpbmtlZGluLFBpbnRlcmVzdCxTa3lwZSxTb3VuZENsb3VkLFNwb3RpZnksVHVtYmxyLFZpbWVvIjt9'),
(18,	'',	'2018-05-16 14:18:14',	'2018-05-16 14:18:32',	'SENATICs.php',	'0',	11,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czoyOiIxOCI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtzOjE6IjAiO3M6MjM6ImRpc3BsYXlQYWdlc0luY2x1ZGVTZWxmIjtzOjE6IjAiO3M6MTU6ImRpc3BsYXlTdWJQYWdlcyI7czozOiJhbGwiO3M6MjA6ImRpc3BsYXlTdWJQYWdlTGV2ZWxzIjtzOjM6ImFsbCI7czoyMzoiZGlzcGxheVN1YlBhZ2VMZXZlbHNOdW0iO3M6MToiMCI7czoyMzoiZGlzcGxheVVuYXZhaWxhYmxlUGFnZXMiO3M6MToiMCI7czoxODoiZGlzcGxheVN5c3RlbVBhZ2VzIjtzOjE6IjAiO30='),
(23,	'',	'2018-05-16 14:42:49',	'2018-05-16 14:43:06',	'Camino de Miga.php',	'0',	11,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjExOntzOjM6ImJJRCI7czoyOiIyMyI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtzOjE6IjAiO3M6MjM6ImRpc3BsYXlQYWdlc0luY2x1ZGVTZWxmIjtzOjE6IjAiO3M6MTU6ImRpc3BsYXlTdWJQYWdlcyI7czoxOToicmVsZXZhbnRfYnJlYWRjcnVtYiI7czoyMDoiZGlzcGxheVN1YlBhZ2VMZXZlbHMiO3M6MzoiYWxsIjtzOjIzOiJkaXNwbGF5U3ViUGFnZUxldmVsc051bSI7czoxOiIwIjtzOjIzOiJkaXNwbGF5VW5hdmFpbGFibGVQYWdlcyI7czoxOiIwIjtzOjE4OiJkaXNwbGF5U3lzdGVtUGFnZXMiO3M6MToiMCI7fQ=='),
(25,	'',	'2018-05-16 15:12:30',	'2018-05-16 15:12:30',	NULL,	'0',	3,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI1IjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRDb3JlU2NyYXBib29rRGlzcGxheSI7czoxMToiYk9yaWdpbmFsSUQiO3M6MjoiMjMiO30='),
(26,	'',	'2018-05-16 15:13:36',	'2018-05-16 15:13:36',	NULL,	'0',	2,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI2IjtzOjk6IgAqAF90YWJsZSI7czozNToiYnRDb3JlUGFnZVR5cGVDb21wb3NlckNvbnRyb2xPdXRwdXQiO3M6MjU6InB0Q29tcG9zZXJPdXRwdXRDb250cm9sSUQiO3M6MToiNSI7fQ=='),
(27,	'',	'2018-05-16 15:18:31',	'2018-05-16 15:18:31',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI3IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiIxIjt9'),
(30,	'',	'2018-05-16 15:19:31',	'2018-05-16 15:19:52',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjMwIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyMToiPGg1PkNhdGVnb3LDrWFzOjwvaDU+Ijt9'),
(31,	'',	'2018-05-16 15:20:08',	'2018-05-16 15:20:08',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjMxIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxOToiPGg1PkV0aXF1ZXRhczo8L2g1PiI7fQ=='),
(32,	'',	'2018-05-17 10:13:15',	'2018-05-17 10:13:15',	NULL,	'0',	18,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjMyIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtzOjE6IjAiO3M6OToidGl0bGVUZXh0IjtzOjIzOiJbVMOtdHVsbyBkZSBsYSBQw6FnaW5hXSI7czoxMDoiZm9ybWF0dGluZyI7czoyOiJoNCI7fQ=='),
(33,	'',	'2018-05-17 10:15:06',	'2018-05-17 10:15:06',	NULL,	'0',	18,	1,	NULL),
(34,	'',	'2018-05-17 10:15:46',	'2018-05-17 10:15:46',	NULL,	'0',	18,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjM0IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtzOjE6IjAiO3M6OToidGl0bGVUZXh0IjtzOjg6Ik5vdGljaWFzIjtzOjEwOiJmb3JtYXR0aW5nIjtzOjI6Img0Ijt9'),
(35,	'',	'2018-05-17 10:37:31',	'2018-05-17 10:37:31',	NULL,	'0',	18,	1,	NULL),
(36,	'',	'2018-05-17 10:37:38',	'2018-05-17 10:37:38',	NULL,	'0',	3,	1,	NULL),
(37,	'',	'2018-05-17 10:38:45',	'2018-05-17 10:39:50',	'Menu lateral.php',	'0',	11,	1,	NULL),
(38,	'',	'2018-05-17 10:40:08',	'2018-05-17 10:40:08',	NULL,	'0',	18,	1,	NULL),
(39,	'',	'2018-05-17 10:40:16',	'2018-05-17 10:40:16',	NULL,	'0',	3,	1,	NULL),
(40,	'',	'2018-05-17 10:40:42',	'2018-05-17 10:40:54',	'Menu lateral.php',	'0',	11,	1,	NULL),
(41,	'',	'2018-05-17 10:41:33',	'2018-05-17 10:41:41',	'Menu lateral.php',	'0',	11,	1,	NULL),
(42,	'',	'2018-05-17 10:44:15',	'2018-05-17 10:44:26',	'Menu lateral.php',	'0',	11,	1,	NULL),
(43,	'',	'2018-05-17 10:44:49',	'2018-05-17 10:44:49',	'Menu lateral.php',	'1',	11,	1,	NULL),
(44,	'',	'2018-05-17 10:47:20',	'2018-05-17 10:47:20',	NULL,	'0',	43,	1,	NULL),
(45,	'',	'2018-05-17 10:47:46',	'2018-05-17 10:47:46',	NULL,	'1',	43,	1,	NULL),
(46,	'',	'2018-05-17 10:48:26',	'2018-05-17 10:48:26',	NULL,	'0',	12,	1,	NULL),
(47,	'',	'2018-05-17 10:49:40',	'2018-05-17 10:49:40',	NULL,	'0',	1,	1,	NULL),
(48,	'',	'2018-05-17 10:49:54',	'2018-05-17 10:49:54',	NULL,	'0',	1,	1,	NULL),
(49,	'',	'2018-05-17 10:50:17',	'2018-05-17 10:53:12',	'Estilo A',	'0',	19,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjQ5IjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czo0OiJzdGFyIjtzOjU6InRpdGxlIjtzOjc6Ik1pc2nDs24iO3M6OToicGFyYWdyYXBoIjtzOjgyMzoiPHAgc3R5bGU9InRleHQtYWxpZ246IGp1c3RpZnk7Ij5Mb3JlbSBJcHN1bSBlcyBzaW1wbGVtZW50ZSBlbCB0ZXh0byBkZSByZWxsZW5vIGRlIGxhcyBpbXByZW50YXMgeSBhcmNoaXZvcyBkZSB0ZXh0by4gTG9yZW0gSXBzdW0gaGEgc2lkbyBlbCB0ZXh0byBkZSByZWxsZW5vIGVzdMOhbmRhciBkZSBsYXMgaW5kdXN0cmlhcyBkZXNkZSBlbCBhw7FvIDE1MDAsIGN1YW5kbyB1biBpbXByZXNvciAoTi4gZGVsIFQuIHBlcnNvbmEgcXVlIHNlIGRlZGljYSBhIGxhIGltcHJlbnRhKSBkZXNjb25vY2lkbyB1c8OzIHVuYSBnYWxlcsOtYSBkZSB0ZXh0b3MgeSBsb3MgbWV6Y2zDsyBkZSB0YWwgbWFuZXJhIHF1ZSBsb2dyw7MgaGFjZXIgdW4gbGlicm8gZGUgdGV4dG9zIGVzcGVjaW1lbi4gTm8gc8OzbG8gc29icmV2aXZpw7MgNTAwIGHDsW9zLCBzaW5vIHF1ZSB0YW1iaWVuIGluZ3Jlc8OzIGNvbW8gdGV4dG8gZGUgcmVsbGVubyBlbiBkb2N1bWVudG9zIGVsZWN0csOzbmljb3MsIHF1ZWRhbmRvIGVzZW5jaWFsbWVudGUgaWd1YWwgYWwgb3JpZ2luYWwuIEZ1ZSBwb3B1bGFyaXphZG8gZW4gbG9zIDYwcyBjb24gbGEgY3JlYWNpw7NuIGRlIGxhcyBob2phcyAiTGV0cmFzZXQiLCBsYXMgY3VhbGVzIGNvbnRlbmlhbiBwYXNhamVzIGRlIExvcmVtIElwc3VtLCB5IG3DoXMgcmVjaWVudGVtZW50ZSBjb24gc29mdHdhcmUgZGUgYXV0b2VkaWNpw7NuLCBjb21vIHBvciBlamVtcGxvIEFsZHVzIFBhZ2VNYWtlciwgZWwgY3VhbCBpbmNsdXllIHZlcnNpb25lcyBkZSBMb3JlbSBJcHN1bS48L3A+PHAgc3R5bGU9InRleHQtYWxpZ246IGp1c3RpZnk7Ij48YnI+PC9wPiI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtzOjE6IjAiO30='),
(50,	'',	'2018-05-17 10:51:03',	'2018-05-17 10:53:05',	'Estilo A',	'0',	19,	1,	NULL),
(51,	'',	'2018-05-17 10:52:41',	'2018-05-17 10:52:59',	'Estilo A',	'0',	19,	1,	NULL),
(52,	'',	'2018-05-17 10:55:07',	'2018-05-17 10:55:15',	'Estilo A',	'0',	19,	1,	NULL),
(53,	'',	'2018-05-17 11:00:30',	'2018-05-17 11:00:38',	'materialboxed.php',	'0',	27,	1,	NULL),
(54,	'',	'2018-05-17 11:09:02',	'2018-05-17 11:09:23',	'SENATICs Estilo C [img big] (Lista Horizontal)',	'0',	30,	1,	NULL),
(56,	'',	'2018-05-17 11:15:11',	'2018-05-17 11:15:11',	'SENATICs Estilo C [img big] (Lista Horizontal)',	'1',	30,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjMzOntzOjM6ImJJRCI7czoyOiI1NiI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjI6IjEwIjtzOjc6Im9yZGVyQnkiO3M6MTE6ImNocm9ub19kZXNjIjtzOjk6ImNQYXJlbnRJRCI7czoxOiIwIjtzOjU6ImNUaGlzIjtzOjE6IjAiO3M6MTY6InVzZUJ1dHRvbkZvckxpbmsiO3M6MToiMSI7czoxNDoiYnV0dG9uTGlua1RleHQiO3M6ODoiVmVyIG3DoXMiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MDoiIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjM6ImFsbCI7czoxNDoiZmlsdGVyRGF0ZURheXMiO3M6MToiMCI7czoxNToiZmlsdGVyRGF0ZVN0YXJ0IjtOO3M6MTM6ImZpbHRlckRhdGVFbmQiO047czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO3M6MToiMCI7czoxMToiaW5jbHVkZU5hbWUiO3M6MToiMSI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjEiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjEiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIxIjtzOjg6InBhZ2luYXRlIjtzOjE6IjEiO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MTc6Imlnbm9yZVBlcm1pc3Npb25zIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjEiO3M6NDoicHRJRCI7czoxOiI3IjtzOjQ6InBmSUQiO3M6MToiMSI7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMSI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjQwOiJObyBzZSBlbmNvbnRyYXJvbiBub3RpY2lhcyByZWxhY2lvbmFkYXMuIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjEiO3M6MTM6InRydW5jYXRlQ2hhcnMiO3M6MzoiMzAwIjt9'),
(92,	'',	'2018-05-17 11:18:51',	'2018-05-17 11:18:51',	NULL,	'0',	18,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjkyIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRQYWdlVGl0bGUiO3M6MTQ6InVzZUN1c3RvbVRpdGxlIjtzOjE6IjAiO3M6OToidGl0bGVUZXh0IjtzOjIzOiJbVMOtdHVsbyBkZSBsYSBQw6FnaW5hXSI7czoxMDoiZm9ybWF0dGluZyI7czoyOiJoNCI7fQ=='),
(94,	'',	'2018-05-17 11:20:34',	'2018-05-21 10:11:32',	'Estilo-A.php',	'0',	20,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6Ijk0IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJTIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czoxMDoiY2F0ZWdvcmlhcyI7czoxMToidG9waWNUcmVlSUQiO3M6MToiMiI7czo5OiJjUGFyZW50SUQiO3M6MToiMCI7czo1OiJ0aXRsZSI7czoxOToiVGVtYXMgLyBDYXRlZ29yw61hcyI7fQ=='),
(95,	'',	'2018-05-17 11:22:14',	'2018-05-17 11:22:14',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijk1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozMDoiPGg1PkNhdGVnb3LDrWFzIC8gRmlsdHJhcjwvaDU+Ijt9'),
(96,	'',	'2018-05-17 11:22:33',	'2018-05-17 11:22:33',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijk2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxODoiPGg1PkV0aXF1ZXRhczwvaDU+Ijt9'),
(97,	'',	'2018-05-17 11:23:02',	'2018-05-17 11:23:09',	NULL,	'0',	36,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjY6e3M6MzoiYklEIjtzOjI6Ijk3IjtzOjk6IgAqAF90YWJsZSI7czo2OiJidFRhZ3MiO3M6NToidGl0bGUiO3M6MDoiIjtzOjk6InRhcmdldENJRCI7czozOiIxNTkiO3M6MTE6ImRpc3BsYXlNb2RlIjtzOjU6ImNsb3VkIjtzOjEwOiJjbG91ZENvdW50IjtzOjI6IjExIjt9'),
(98,	'',	'2018-05-17 11:23:47',	'2018-05-17 11:23:47',	NULL,	'0',	13,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6Ijk4IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnREYXRlTmF2aWdhdGlvbiI7czo1OiJ0aXRsZSI7czoyMToiQXJjaGl2b3MgLyBCaWJsaW90ZWNhIjtzOjE0OiJmaWx0ZXJCeVBhcmVudCI7czoxOiIwIjtzOjE3OiJyZWRpcmVjdFRvUmVzdWx0cyI7czoxOiIwIjtzOjk6ImNQYXJlbnRJRCI7czoxOiIwIjtzOjk6ImNUYXJnZXRJRCI7czoxOiIwIjtzOjQ6InB0SUQiO3M6MToiNyI7fQ=='),
(101,	'',	'2018-05-17 11:25:59',	'2018-05-17 11:30:14',	'Estilo-A.php',	'0',	20,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjEwMSI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0VG9waWNMaXN0IjtzOjQ6Im1vZGUiO3M6MToiUCI7czoyMzoidG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MTA6ImNhdGVnb3JpYXMiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjIiO3M6OToiY1BhcmVudElEIjtzOjM6IjE1OSI7czo1OiJ0aXRsZSI7czowOiIiO30='),
(102,	'',	'2018-05-17 11:26:55',	'2018-05-17 11:27:09',	'',	'0',	36,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjY6e3M6MzoiYklEIjtzOjM6IjEwMiI7czo5OiIAKgBfdGFibGUiO3M6NjoiYnRUYWdzIjtzOjU6InRpdGxlIjtzOjA6IiI7czo5OiJ0YXJnZXRDSUQiO3M6MzoiMTU5IjtzOjExOiJkaXNwbGF5TW9kZSI7czo0OiJwYWdlIjtzOjEwOiJjbG91ZENvdW50IjtzOjE6IjAiO30='),
(118,	'',	'2018-05-17 11:30:54',	'2018-05-17 11:30:54',	NULL,	'0',	3,	1,	NULL),
(119,	'',	'2018-05-17 11:32:05',	'2018-05-17 11:32:05',	NULL,	'0',	12,	1,	NULL),
(148,	'',	'2018-05-17 11:36:59',	'2018-05-17 11:36:59',	NULL,	'0',	50,	1,	NULL),
(149,	'',	'2018-05-17 11:52:02',	'2018-05-17 11:52:02',	NULL,	'0',	51,	1,	NULL),
(150,	'',	'2018-05-17 11:57:52',	'2018-05-17 11:57:52',	NULL,	'0',	45,	1,	NULL),
(151,	'',	'2018-05-17 11:58:45',	'2018-05-17 11:58:45',	NULL,	'0',	1,	1,	NULL),
(152,	'',	'2018-05-17 11:59:35',	'2018-05-17 11:59:35',	NULL,	'0',	40,	1,	NULL),
(153,	'',	'2018-05-17 11:59:54',	'2018-05-17 12:00:07',	NULL,	'0',	40,	1,	NULL),
(154,	'',	'2018-05-17 12:01:02',	'2018-05-17 12:01:03',	NULL,	'1',	45,	1,	NULL),
(155,	'',	'2018-05-17 12:03:51',	'2018-05-17 12:03:51',	NULL,	'1',	40,	1,	NULL),
(156,	'',	'2018-05-17 14:56:24',	'2018-05-18 11:22:05',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE1NiI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MToiNSI7fQ=='),
(157,	'',	'2018-05-17 14:57:06',	'2018-05-18 11:20:57',	'',	'0',	16,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjE1NyI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0UGFnZUF0dHJpYnV0ZURpc3BsYXkiO3M6MTU6ImF0dHJpYnV0ZUhhbmRsZSI7czoxODoicnB2X3BhZ2VEYXRlUHVibGljIjtzOjE4OiJhdHRyaWJ1dGVUaXRsZVRleHQiO3M6MTE6IlB1YmxpY2FkbzogIjtzOjEwOiJkaXNwbGF5VGFnIjtzOjEwOiJibG9ja3F1b3RlIjtzOjEwOiJkYXRlRm9ybWF0IjtzOjExOiJtL2QveSBoOmk6YSI7czoxNToidGh1bWJuYWlsSGVpZ2h0IjtzOjM6IjI1MCI7czoxNDoidGh1bWJuYWlsV2lkdGgiO3M6MzoiMjUwIjt9'),
(158,	'',	'2018-05-17 14:58:17',	'2018-05-18 11:21:47',	'',	'0',	23,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjM6IjE1OCI7czo5OiIAKgBfdGFibGUiO3M6MTU6ImJ0U2hhcmVUaGlzUGFnZSI7czoxNzoiYnRTaGFyZVRoaXNQYWdlSUQiO3M6MToiMSI7czo3OiJzZXJ2aWNlIjtzOjg6ImZhY2Vib29rIjtzOjEyOiJkaXNwbGF5T3JkZXIiO3M6MToiMCI7fQ=='),
(159,	'',	'2018-05-17 15:03:39',	'2018-05-17 15:03:39',	NULL,	'0',	42,	1,	NULL),
(160,	'',	'2018-05-17 15:04:41',	'2018-05-17 15:05:02',	'Slider-Principal',	'1',	42,	1,	NULL),
(161,	'',	'2018-05-17 15:05:44',	'2018-05-17 15:05:44',	NULL,	'0',	1,	1,	NULL),
(162,	'',	'2018-05-17 15:06:14',	'2018-05-17 15:06:14',	'Slider-Principal',	'1',	42,	1,	NULL),
(231,	'',	'2018-05-18 10:01:17',	'2018-05-18 10:01:17',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjIzMSI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MToiNyI7fQ=='),
(232,	'',	'2018-05-18 10:03:02',	'2018-05-18 10:03:02',	NULL,	'0',	17,	1,	NULL),
(233,	'',	'2018-05-18 10:06:37',	'2018-05-18 10:07:05',	'',	'0',	12,	1,	NULL),
(234,	'',	'2018-05-18 10:08:08',	'2018-05-18 10:08:09',	NULL,	'1',	17,	1,	NULL),
(235,	'',	'2018-05-18 10:09:09',	'2018-05-18 10:09:09',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjIzNSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzI6IjxoNT5Gb3JtdWxhcmlvIGRlIENvbnRhY3RvIDwvaDU+Ijt9'),
(236,	'',	'2018-05-18 10:09:34',	'2018-05-18 10:10:32',	'',	'1',	17,	1,	NULL),
(237,	'',	'2018-05-18 10:11:02',	'2018-05-18 10:11:03',	'',	'1',	12,	1,	NULL),
(238,	'',	'2018-05-18 10:11:55',	'2018-05-18 10:12:12',	'',	'1',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjIzOCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NzExOiI8cCBzdHlsZT0idGV4dC1hbGlnbjogY2VudGVyOyI+PGltZyBzcmM9Ii9hcHBsaWNhdGlvbi9maWxlcy82MzE1LzI2NDkvMzcwNi9zZW5hdGljc18xLnBuZyIgaWQ9ImltYWdlLW1hcmtlciIgaGVpZ2h0PSI5NyIgd2lkdGg9IjQ1OSIgc3R5bGU9IndpZHRoOiA0NTlweDsgaGVpZ2h0OiBhdXRvOyI+DQo8L3A+PGg2PjxzdHJvbmc+PGkgY2xhc3M9ImZhIGZhLW1hcC1tYXJrZXIiPjwvaT4gRGlyZWNjacOzbjo8L3N0cm9uZz4gQ29tcGxlam8gU2FudG9zIEUyIC0gR3JhbC4gU2FudG9zIDExNzAgYy8gQ29uY29yZGlhPC9oNj48aDY+PHN0cm9uZz48aSBjbGFzcz0iZmEgZmEtcGhvbmUiPjwvaT5UZWxlZm9ubzo8L3N0cm9uZz4gKCs1OTUgMjEpIDIxNyAtIDkwMDA8L2g2PjxoNj48c3Ryb25nPjxpIGNsYXNzPSJmYSBmYS1jbG9jay1vIj48L2k+IEhvcmFyaW9zIGRlIEF0ZW5jacOzbjo8L3N0cm9uZz4gZGUgMDc6MDBocyBhIDE1OjAwaHM8L2g2PjxoNj48c3Ryb25nPjxpIGNsYXNzPSJmYSBmYS1lbnZlbG9wZSI+PC9pPiBFLW1haWw6PC9zdHJvbmc+IDxhIGhyZWY9Im1haWx0bzptYWlsdG86Y29tdW5pY2FjaW9uQHNlbmF0aWNzLmdvdi5weSI+Y29tdW5pY2FjaW9uQHNlbmF0aWNzLmdvdi5weTwvYT48L2g2PjxoNCBzdHlsZT0idGV4dC1hbGlnbjogY2VudGVyOyIgcmVsPSJ0ZXh0LWFsaWduOiBjZW50ZXI7Ij5Bc3VuY2lvbiAtIFBhcmFndWF5PC9oND4iO30='),
(239,	'',	'2018-05-18 10:24:17',	'2018-05-18 10:24:17',	NULL,	'0',	25,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjIzOSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NzI4OiI8ZGl2IGlkPSJmYi1yb290Ij48L2Rpdj4NCjxzY3JpcHQ+KGZ1bmN0aW9uKGQsIHMsIGlkKSB7DQogIHZhciBqcywgZmpzID0gZC5nZXRFbGVtZW50c0J5VGFnTmFtZShzKVswXTsNCiAgaWYgKGQuZ2V0RWxlbWVudEJ5SWQoaWQpKSByZXR1cm47DQogIGpzID0gZC5jcmVhdGVFbGVtZW50KHMpOyBqcy5pZCA9IGlkOw0KICBqcy5zcmMgPSAiLy9jb25uZWN0LmZhY2Vib29rLm5ldC9lc19MQS9zZGsuanMjeGZibWw9MSZ2ZXJzaW9uPXYyLjQiOw0KICBmanMucGFyZW50Tm9kZS5pbnNlcnRCZWZvcmUoanMsIGZqcyk7DQp9KGRvY3VtZW50LCAnc2NyaXB0JywgJ2ZhY2Vib29rLWpzc2RrJykpOzwvc2NyaXB0Pg0KPGRpdiBjbGFzcz0iZmItcGFnZSIgZGF0YS1ocmVmPSJodHRwczovL3d3dy5mYWNlYm9vay5jb20vU0VOQVRJQ3NQeSIgZGF0YS1zbWFsbC1oZWFkZXI9InRydWUiIGRhdGEtYWRhcHQtY29udGFpbmVyLXdpZHRoPSJ0cnVlIiBkYXRhLWhpZGUtY292ZXI9InRydWUiIGRhdGEtc2hvdy1mYWNlcGlsZT0idHJ1ZSIgZGF0YS1zaG93LXBvc3RzPSJ0cnVlIj48ZGl2IGNsYXNzPSJmYi14ZmJtbC1wYXJzZS1pZ25vcmUiPjxibG9ja3F1b3RlIGNpdGU9Imh0dHBzOi8vd3d3LmZhY2Vib29rLmNvbS9TRU5BVElDc1B5Ij48YSBocmVmPSJodHRwczovL3d3dy5mYWNlYm9vay5jb20vU0VOQVRJQ3NQeSI+U0VOQVRJQ3MgUGFyYWd1YXk8L2E+PC9ibG9ja3F1b3RlPjwvZGl2PjwvZGl2PiI7fQ=='),
(240,	'',	'2018-05-18 10:25:25',	'2018-05-18 10:25:25',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjI0MCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjE3OiI8cCBkYXRhLXJlZGFjdG9yLWluc2VydGVkLWltYWdlPSJ0cnVlIj48aW1nIHNyYz0iL2FwcGxpY2F0aW9uL2ZpbGVzLzQ0MTUvMjY2NS8zNTA5L25ld3NwYXBlci5wbmciIGlkPSJpbWFnZS1tYXJrZXIiIGFsdD0iIiBzdHlsZT0id2lkdGg6MzBweDtoZWlnaHQ6YXV0bztmbG9hdDogbGVmdDsgbWFyZ2luOiAwcHggMTBweCAxMHB4IDBweDsiPg0KPC9wPjxoMz5Ob3RpY2lhczwvaDM+Ijt9'),
(241,	'',	'2018-05-18 10:27:01',	'2018-05-18 10:27:01',	NULL,	'0',	41,	1,	NULL),
(242,	'',	'2018-05-18 10:28:01',	'2018-05-18 10:28:01',	NULL,	'0',	41,	1,	NULL),
(243,	'',	'2018-05-18 10:28:14',	'2018-05-18 10:28:14',	NULL,	'0',	41,	1,	NULL),
(244,	'',	'2018-05-18 10:28:21',	'2018-05-18 10:28:21',	NULL,	'0',	41,	1,	NULL),
(245,	'',	'2018-05-18 10:28:44',	'2018-05-18 10:28:44',	NULL,	'0',	41,	1,	NULL),
(246,	'',	'2018-05-18 10:29:45',	'2018-05-18 10:29:45',	NULL,	'0',	41,	1,	NULL),
(247,	'',	'2018-05-18 10:29:53',	'2018-05-18 10:29:53',	NULL,	'0',	41,	1,	NULL),
(248,	'',	'2018-05-18 10:30:52',	'2018-05-18 10:30:52',	NULL,	'1',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjI0OCI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MToiOCI7fQ=='),
(249,	'',	'2018-05-18 10:31:02',	'2018-05-18 10:32:04',	NULL,	'1',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjI0OSI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MToiOSI7fQ=='),
(250,	'',	'2018-05-18 10:33:40',	'2018-05-18 10:33:40',	NULL,	'0',	41,	1,	NULL),
(251,	'',	'2018-05-18 10:41:18',	'2018-05-18 10:41:18',	NULL,	'0',	41,	1,	NULL),
(252,	'',	'2018-05-18 10:41:45',	'2018-05-18 10:41:45',	NULL,	'0',	41,	1,	NULL),
(253,	'',	'2018-05-18 10:44:25',	'2018-05-18 10:44:25',	NULL,	'0',	41,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czozOiIyNTMiO3M6OToiACoAX3RhYmxlIjtzOjc6ImJ0Qm90b24iO3M6NToidGV4dG8iO3M6OToiVHLDoW1pdGVzIjtzOjQ6Imljb24iO3M6ODoiYm9va21hcmsiO3M6MTY6ImFsaW5lYWNpb25faWNvbm8iO3M6MToiMCI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtzOjE6IjAiO3M6NjoidGFyZ2V0IjtzOjE6IjAiO3M6MTQ6InRhbWFuaG9fZnVlbnRlIjtzOjI6IjE0IjtzOjEyOiJjb2xvcl9mdWVudGUiO3M6NzoiI2JhM2EzYSI7czoxNzoiYWxpbmVhY2lvbl9mdWVudGUiO3M6MToiMSI7czoxMToiY29sb3JfZm9uZG8iO3M6NzoiI2ZmZmZmZiI7czo3OiJwYWRkaW5nIjtzOjE6IjgiO3M6NToiYW5jaG8iO3M6MzoiMTAwIjtzOjEzOiJhbmNob19mb3JtYXRvIjtzOjE6IiUiO3M6MTY6ImFsaW5lYWNpb25fYm90b24iO3M6MToiMCI7czozOiJmSUQiO047czoxODoiY29sb3JfZnVlbnRlX2hvdmVyIjtzOjc6IiMyMjIyMjIiO3M6MTc6ImNvbG9yX2ZvbmRvX2hvdmVyIjtzOjc6IiNmMGYwZjAiO30='),
(255,	'',	'2018-05-18 10:50:10',	'2018-05-18 10:50:10',	NULL,	'1',	41,	1,	NULL),
(256,	'',	'2018-05-18 10:50:28',	'2018-05-18 10:50:29',	NULL,	'1',	41,	1,	NULL),
(258,	'',	'2018-05-18 10:50:51',	'2018-05-18 10:50:51',	NULL,	'1',	41,	1,	NULL),
(260,	'',	'2018-05-18 10:51:14',	'2018-05-18 10:51:14',	NULL,	'1',	41,	1,	NULL),
(261,	'',	'2018-05-18 10:57:17',	'2018-05-18 10:57:17',	NULL,	'0',	42,	1,	NULL),
(262,	'',	'2018-05-18 10:58:09',	'2018-05-18 10:58:48',	'',	'1',	42,	1,	NULL),
(263,	'',	'2018-05-18 10:59:33',	'2018-05-18 10:59:33',	'',	'1',	45,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjI2MyI7czo5OiIAKgBfdGFibGUiO3M6MTg6ImJ0TGV5VHJhbnNwYXJlbmNpYSI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtzOjM6IjE3NyI7fQ=='),
(264,	'',	'2018-05-18 10:59:45',	'2018-05-18 11:02:44',	'',	'1',	41,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czozOiIyNjQiO3M6OToiACoAX3RhYmxlIjtzOjc6ImJ0Qm90b24iO3M6NToidGV4dG8iO3M6OToiU2VydmljaW9zIjtzOjQ6Imljb24iO3M6OToiYnJpZWZjYXNlIjtzOjE2OiJhbGluZWFjaW9uX2ljb25vIjtzOjE6IjAiO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7czozOiIxOTYiO3M6NjoidGFyZ2V0IjtzOjE6IjAiO3M6MTQ6InRhbWFuaG9fZnVlbnRlIjtzOjI6IjE0IjtzOjEyOiJjb2xvcl9mdWVudGUiO3M6NzoiI2JhM2EzYSI7czoxNzoiYWxpbmVhY2lvbl9mdWVudGUiO3M6MToiMSI7czoxMToiY29sb3JfZm9uZG8iO3M6NzoiI2ZmZmZmZiI7czo3OiJwYWRkaW5nIjtzOjE6IjgiO3M6NToiYW5jaG8iO3M6MzoiMTAwIjtzOjEzOiJhbmNob19mb3JtYXRvIjtzOjE6IiUiO3M6MTY6ImFsaW5lYWNpb25fYm90b24iO3M6MToiMCI7czozOiJmSUQiO047czoxODoiY29sb3JfZnVlbnRlX2hvdmVyIjtzOjc6IiMyMjIyMjIiO3M6MTc6ImNvbG9yX2ZvbmRvX2hvdmVyIjtzOjc6IiNmMGYwZjAiO30='),
(265,	'',	'2018-05-18 10:59:58',	'2018-05-18 11:02:16',	'',	'1',	41,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czozOiIyNjUiO3M6OToiACoAX3RhYmxlIjtzOjc6ImJ0Qm90b24iO3M6NToidGV4dG8iO3M6MTc6IkNvbXByYXMgUMO6YmxpY2FzIjtzOjQ6Imljb24iO3M6MTM6InNob3BwaW5nLWNhcnQiO3M6MTY6ImFsaW5lYWNpb25faWNvbm8iO3M6MToiMCI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtzOjM6IjE5NSI7czo2OiJ0YXJnZXQiO3M6MToiMCI7czoxNDoidGFtYW5ob19mdWVudGUiO3M6MjoiMTQiO3M6MTI6ImNvbG9yX2Z1ZW50ZSI7czo3OiIjYmEzYTNhIjtzOjE3OiJhbGluZWFjaW9uX2Z1ZW50ZSI7czoxOiIxIjtzOjExOiJjb2xvcl9mb25kbyI7czo3OiIjZmZmZmZmIjtzOjc6InBhZGRpbmciO3M6MToiOCI7czo1OiJhbmNobyI7czozOiIxMDAiO3M6MTM6ImFuY2hvX2Zvcm1hdG8iO3M6MToiJSI7czoxNjoiYWxpbmVhY2lvbl9ib3RvbiI7czoxOiIwIjtzOjM6ImZJRCI7TjtzOjE4OiJjb2xvcl9mdWVudGVfaG92ZXIiO3M6NzoiIzIyMjIyMiI7czoxNzoiY29sb3JfZm9uZG9faG92ZXIiO3M6NzoiI2YwZjBmMCI7fQ=='),
(266,	'',	'2018-05-18 11:00:09',	'2018-05-18 11:01:16',	'',	'1',	41,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czozOiIyNjYiO3M6OToiACoAX3RhYmxlIjtzOjc6ImJ0Qm90b24iO3M6NToidGV4dG8iO3M6MTQ6IlRyw6FtaXRlc01FQ0lQIjtzOjQ6Imljb24iO3M6ODoiYnVpbGRpbmciO3M6MTY6ImFsaW5lYWNpb25faWNvbm8iO3M6MToiMCI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtzOjM6IjE5MyI7czo2OiJ0YXJnZXQiO3M6MToiMCI7czoxNDoidGFtYW5ob19mdWVudGUiO3M6MjoiMTQiO3M6MTI6ImNvbG9yX2Z1ZW50ZSI7czo3OiIjYmEzYTNhIjtzOjE3OiJhbGluZWFjaW9uX2Z1ZW50ZSI7czoxOiIxIjtzOjExOiJjb2xvcl9mb25kbyI7czo3OiIjZmZmZmZmIjtzOjc6InBhZGRpbmciO3M6MToiOCI7czo1OiJhbmNobyI7czozOiIxMDAiO3M6MTM6ImFuY2hvX2Zvcm1hdG8iO3M6MToiJSI7czoxNjoiYWxpbmVhY2lvbl9ib3RvbiI7czoxOiIwIjtzOjM6ImZJRCI7TjtzOjE4OiJjb2xvcl9mdWVudGVfaG92ZXIiO3M6NzoiIzIyMjIyMiI7czoxNzoiY29sb3JfZm9uZG9faG92ZXIiO3M6NzoiI2YwZjBmMCI7fQ=='),
(267,	'',	'2018-05-18 11:00:24',	'2018-05-18 11:01:47',	'',	'1',	41,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czozOiIyNjciO3M6OToiACoAX3RhYmxlIjtzOjc6ImJ0Qm90b24iO3M6NToidGV4dG8iO3M6OToiVHLDoW1pdGVzIjtzOjQ6Imljb24iO3M6ODoiYm9va21hcmsiO3M6MTY6ImFsaW5lYWNpb25faWNvbm8iO3M6MToiMCI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtzOjM6IjE5NCI7czo2OiJ0YXJnZXQiO3M6MToiMCI7czoxNDoidGFtYW5ob19mdWVudGUiO3M6MjoiMTQiO3M6MTI6ImNvbG9yX2Z1ZW50ZSI7czo3OiIjYmEzYTNhIjtzOjE3OiJhbGluZWFjaW9uX2Z1ZW50ZSI7czoxOiIxIjtzOjExOiJjb2xvcl9mb25kbyI7czo3OiIjZmZmZmZmIjtzOjc6InBhZGRpbmciO3M6MToiOCI7czo1OiJhbmNobyI7czozOiIxMDAiO3M6MTM6ImFuY2hvX2Zvcm1hdG8iO3M6MToiJSI7czoxNjoiYWxpbmVhY2lvbl9ib3RvbiI7czoxOiIwIjtzOjM6ImZJRCI7TjtzOjE4OiJjb2xvcl9mdWVudGVfaG92ZXIiO3M6NzoiIzIyMjIyMiI7czoxNzoiY29sb3JfZm9uZG9faG92ZXIiO3M6NzoiI2YwZjBmMCI7fQ=='),
(414,	'',	'2018-05-18 11:37:11',	'2018-05-18 11:37:11',	'SENATICs Estilo C [img big] (Lista Horizontal)',	'1',	30,	1,	NULL),
(415,	'',	'2018-05-18 11:37:36',	'2018-05-18 11:37:36',	'SENATICs Estilo C [img big] (Lista Horizontal)',	'1',	30,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjMzOntzOjM6ImJJRCI7czozOiI0MTUiO3M6OToiACoAX3RhYmxlIjtzOjEwOiJidFBhZ2VMaXN0IjtzOjM6Im51bSI7czoxOiIzIjtzOjc6Im9yZGVyQnkiO3M6MTE6ImNocm9ub19kZXNjIjtzOjk6ImNQYXJlbnRJRCI7czoxOiIwIjtzOjU6ImNUaGlzIjtzOjE6IjAiO3M6MTY6InVzZUJ1dHRvbkZvckxpbmsiO3M6MToiMSI7czoxNDoiYnV0dG9uTGlua1RleHQiO3M6ODoiVmVyIG3DoXMiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MDoiIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjM6ImFsbCI7czoxNDoiZmlsdGVyRGF0ZURheXMiO3M6MToiMCI7czoxNToiZmlsdGVyRGF0ZVN0YXJ0IjtOO3M6MTM6ImZpbHRlckRhdGVFbmQiO047czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO3M6MToiMCI7czoxMToiaW5jbHVkZU5hbWUiO3M6MToiMSI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjEiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjEiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIxIjtzOjg6InBhZ2luYXRlIjtzOjE6IjAiO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MTc6Imlnbm9yZVBlcm1pc3Npb25zIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjAiO3M6NDoicHRJRCI7czoxOiI3IjtzOjQ6InBmSUQiO3M6MToiMSI7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMSI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjQwOiJObyBzZSBlbmNvbnRyYXJvbiBub3RpY2lhcyByZWxhY2lvbmFkYXMuIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjEiO3M6MTM6InRydW5jYXRlQ2hhcnMiO3M6MzoiMzAwIjt9'),
(416,	'',	'2018-05-18 11:38:53',	'2018-05-18 11:38:53',	NULL,	'0',	41,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjE5OntzOjM6ImJJRCI7czozOiI0MTYiO3M6OToiACoAX3RhYmxlIjtzOjc6ImJ0Qm90b24iO3M6NToidGV4dG8iO3M6MTc6IlZlciBtw6FzIG5vdGljaWFzIjtzOjQ6Imljb24iO3M6MTM6InBsdXMtc3F1YXJlLW8iO3M6MTY6ImFsaW5lYWNpb25faWNvbm8iO3M6MToiMCI7czoxMjoiZXh0ZXJuYWxMaW5rIjtOO3M6MTU6ImludGVybmFsTGlua0NJRCI7czozOiIxNTkiO3M6NjoidGFyZ2V0IjtzOjE6IjAiO3M6MTQ6InRhbWFuaG9fZnVlbnRlIjtzOjI6IjIwIjtzOjEyOiJjb2xvcl9mdWVudGUiO3M6NzoiI2M3M2IzYiI7czoxNzoiYWxpbmVhY2lvbl9mdWVudGUiO3M6MToiMCI7czoxMToiY29sb3JfZm9uZG8iO3M6MDoiIjtzOjc6InBhZGRpbmciO3M6MToiNSI7czo1OiJhbmNobyI7czozOiIxMDAiO3M6MTM6ImFuY2hvX2Zvcm1hdG8iO3M6MToiJSI7czoxNjoiYWxpbmVhY2lvbl9ib3RvbiI7czoxOiIwIjtzOjM6ImZJRCI7TjtzOjE4OiJjb2xvcl9mdWVudGVfaG92ZXIiO3M6NzoiI2ZmZmZmZiI7czoxNzoiY29sb3JfZm9uZG9faG92ZXIiO3M6NzoiIzg3ODc4NyI7fQ=='),
(417,	'',	'2018-05-18 11:44:54',	'2018-05-18 11:44:54',	NULL,	'0',	22,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjM6IjQxNyI7czo5OiIAKgBfdGFibGUiO3M6MTM6ImJ0VGVzdGltb25pYWwiO3M6MzoiZklEIjtzOjI6IjE4IjtzOjQ6Im5hbWUiO3M6MjA6Ik5vbWJyZSBkZSBsYSBQZXJzb25hIjtzOjg6InBvc2l0aW9uIjtzOjE4OiJDYXJnbyAvIE9jdXBhY2nDs24iO3M6NzoiY29tcGFueSI7czoyNToiTm9tYnJlIGRlIGxhIEluc3RpdHVjacOzbiI7czoxMDoiY29tcGFueVVSTCI7czowOiIiO3M6OToicGFyYWdyYXBoIjtzOjM1NDoiTG9yZW0gSXBzdW0gZXMgc2ltcGxlbWVudGUgZWwgdGV4dG8gZGUgcmVsbGVubyBkZSBsYXMgaW1wcmVudGFzIHkgYXJjaGl2b3MgZGUgdGV4dG8uIExvcmVtIElwc3VtIGhhIHNpZG8gZWwgdGV4dG8gZGUgcmVsbGVubyBlc3TDoW5kYXIgZGUgbGFzIGluZHVzdHJpYXMgZGVzZGUgZWwgYcOxbyAxNTAwLCBjdWFuZG8gdW4gaW1wcmVzb3IgKE4uIGRlbCBULiBwZXJzb25hIHF1ZSBzZSBkZWRpY2EgYSBsYSBpbXByZW50YSkgZGVzY29ub2NpZG8gdXPDsyB1bmEgZ2FsZXLDrWEgZGUgdGV4dG9zIHkgbG9zIG1lemNsw7MgZGUgdGFsIG1hbmVyYSBxdWUgbG9ncsOzIGhhY2VyIHVuIGxpYnJvIGRlIHRleHRvcyBlc3BlY2ltZW4uIjt9'),
(419,	'',	'2018-05-18 11:46:21',	'2018-05-18 11:46:22',	NULL,	'1',	22,	1,	NULL),
(420,	'',	'2018-05-18 11:47:48',	'2018-05-18 11:47:48',	NULL,	'0',	25,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQyMCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjI4MjoiPHN0eWxlPg0KDQoud2hpdGUtZW5sYWNlc3sNCiAgICAgICAgZm9udC1zaXplOjEycHggIWltcG9ydGFudDsNCiAgICB9DQo8L3N0eWxlPg0KPGg1IGNsYXNzPSJ3aGl0ZS10ZXh0Ij5FbmxhY2VzIGRlIEludGVyw6lzPC9oNT4NCjxkaXYgY2xhc3M9ImNvbCBsNiBzMTIiPg0KICA8dWw+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LnByZXNpZGVuY2lhLmdvdi5weS8iPlByZXNpZGVuY2lhIGRlIGxhIFJlcMO6YmxpY2EgZGVsIFBhcmFndWF5PC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LnNmcC5nb3YucHkvIj5TZWNyZXRhcsOtYSBkZSBsYSBGdW5jacOzbiBQw7pibGljYSAoU0ZQKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5zYXMuZ292LnB5LyI+U2VjcmV0YXLDrWEgZGUgQWNjacOzbiBTb2NpYWwgKFNBUyk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuZm9uZGVjLmdvdi5weS8iPkZvbmRvIE5hY2lvbmFsIGRlIGxhIEN1bHR1cmEgeSBsYXMgQXJ0ZXMgKEZPTkRFQyk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuc2VuYXR1ci5nb3YucHkvIj5TZWNyZXRhcsOtYSBOYWNpb25hbCBkZSBUdXJpc21vIChTRU5BVFVSKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5taW5pc3RlcmlvZGVqdXN0aWNpYS5nb3YucHkvIj5NaW5pc3RlcmlvIGRlIEp1c3RpY2lhIChNSik8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cubXRlc3MuZ292LnB5LyI+TWluaXN0ZXJpbyBkZSBUcmFiYWpvLCBFbXBsZW8geSBTZWd1cmlkYWQgU29jaWFsIChNVEVTUyk8L2E+PC9saT4NCiAgICAgIA0KICA8L3VsPg0KPC9kaXY+DQo8ZGl2IGNsYXNzPSJjb2wgbDYgczEyIj4NCiAgPHVsPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5jdWx0dXJhLmdvdi5weS8iPlNlY3JldGFyw61hIE5hY2lvbmFsIGRlIEN1bHR1cmEgKFNOQyk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuc2ljb20uZ292LnB5LyI+U2VjcmV0YXLDrWEgZGUgSW5mb3JtYWNpw7NuIHkgQ29tdW5pY2FjacOzbiAoU0lDT00pPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3LmluZGkuZ292LnB5LyI+SW5zdGl0dXRvIFBhcmFndWF5byBkZWwgSW5kaWdlbmEgKElOREkpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3Lm1lYy5nb3YucHkvY21zLyI+TWluaXN0ZXJpbyBkZSBFZHVjYWNpw7NuIHkgQ3VsdHVyYSAoTUVDKTwvYT48L2xpPg0KICAgIDxsaT48YSBjbGFzcz0id2hpdGUtdGV4dCB3aGl0ZS1lbmxhY2VzIiB0YXJnZXQ9Il9ibGFuayIgaHJlZj0iaHR0cDovL3d3dy5oYWNpZW5kYS5nb3YucHkvIj5NaW5pc3RlcmlvIGRlIEhhY2llbmRhIChNSCk8L2E+PC9saT4NCiAgICA8bGk+PGEgY2xhc3M9IndoaXRlLXRleHQgd2hpdGUtZW5sYWNlcyIgdGFyZ2V0PSJfYmxhbmsiIGhyZWY9Imh0dHA6Ly93d3cuc25kLmdvdi5weS8iPlNlY3JldGFyw61hIE5hY2lvbmFsIGRlIERlcG9ydGVzIChTTkQpPC9hPjwvbGk+DQogICAgPGxpPjxhIGNsYXNzPSJ3aGl0ZS10ZXh0IHdoaXRlLWVubGFjZXMiIHRhcmdldD0iX2JsYW5rIiBocmVmPSJodHRwOi8vd3d3Lm1zcGJzLmdvdi5weS8iPk1pbmlzdGVyaW8gZGUgU2FsdWQgUMO6YmxpY2EgeSBCaWVuZXN0YXIgU29jaWFsIChNU1B5QlMpPC9hPjwvbGk+DQogIDwvdWw+DQo8L2Rpdj4iO30='),
(421,	'',	'2018-05-18 11:48:19',	'2018-05-18 11:48:19',	NULL,	'1',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQyMSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjAyOiI8cD5Qb3J0YWwgY29uc3RydWlkbyBjb25qdW50YW1lbnRlIGNvbiBsYSA8YSBocmVmPSJodHRwczovL3d3dy5zZW5hdGljcy5nb3YucHkvIiB0YXJnZXQ9Il9ibGFuayI+U0VOQVRJQ3M8L2E+DQo8L3A+PHA+U2VjcmV0YXLDrWEgTmFjaW9uYWwgZGUgVGVjbm9sb2fDrWFzIGRlIGxhIEluZm9ybWFjacOzbiB5IENvbXVuaWNhY2nDs24gLSAyMDE4DQo8L3A+Ijt9'),
(422,	'',	'2018-05-18 11:48:40',	'2018-05-18 11:48:40',	NULL,	'0',	27,	1,	NULL),
(423,	'',	'2018-05-18 11:49:19',	'2018-05-18 11:49:19',	NULL,	'0',	27,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiI0MjMiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO3M6MjoiMjAiO3M6MTA6ImZPbnN0YXRlSUQiO3M6MToiMCI7czo4OiJtYXhXaWR0aCI7czoxOiIwIjtzOjk6Im1heEhlaWdodCI7czoxOiIwIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO3M6MToiMCI7czo3OiJhbHRUZXh0IjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO30='),
(424,	'',	'2018-05-18 11:53:53',	'2018-05-18 11:54:10',	'Slider-Principal',	'0',	42,	1,	NULL),
(425,	'',	'2018-05-18 11:55:12',	'2018-05-18 11:55:13',	'Slider-Principal',	'1',	42,	1,	NULL),
(426,	'',	'2018-05-18 11:58:13',	'2018-05-18 11:58:14',	'Slider-Principal',	'1',	42,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEyOntzOjM6ImJJRCI7czozOiI0MjYiO3M6OToiACoAX3RhYmxlIjtzOjEwOiJidENhcnJ1c2VsIjtzOjE0OiJuYXZpZ2F0aW9uVHlwZSI7czoxOiIxIjtzOjE0OiJzbGlkZXNUb1Njcm9sbCI7czoxOiIxIjtzOjEyOiJzbGlkZXNUb1Nob3ciO3M6MToiMSI7czo3OiJ0aW1lb3V0IjtzOjQ6IjUwMDAiO3M6NToic3BlZWQiO3M6MzoiNTAwIjtzOjk6Im5vQW5pbWF0ZSI7czoxOiIxIjtzOjg6ImluZmluaXRlIjtzOjE6IjEiO3M6MTE6Im1vZG9fY2VudGVyIjtzOjE6IjAiO3M6MTE6ImF1dG9faGVpZ2h0IjtzOjE6IjEiO3M6ODoibWF4V2lkdGgiO3M6MToiMCI7fQ=='),
(427,	'',	'2018-05-18 12:00:41',	'2018-05-18 12:00:41',	NULL,	'0',	52,	1,	NULL),
(428,	'',	'2018-05-18 12:01:54',	'2018-05-18 12:01:59',	NULL,	'1',	52,	1,	NULL),
(429,	'',	'2018-05-18 12:12:30',	'2018-05-18 12:20:39',	NULL,	'0',	46,	1,	NULL),
(430,	'',	'2018-05-18 12:21:05',	'2018-05-18 12:21:06',	NULL,	'1',	46,	1,	NULL),
(431,	'',	'2018-05-18 13:42:04',	'2018-05-18 13:42:34',	'',	'1',	42,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEyOntzOjM6ImJJRCI7czozOiI0MzEiO3M6OToiACoAX3RhYmxlIjtzOjEwOiJidENhcnJ1c2VsIjtzOjE0OiJuYXZpZ2F0aW9uVHlwZSI7czoxOiIxIjtzOjE0OiJzbGlkZXNUb1Njcm9sbCI7czoxOiIxIjtzOjEyOiJzbGlkZXNUb1Nob3ciO3M6MToiNCI7czo3OiJ0aW1lb3V0IjtzOjQ6IjcwMDAiO3M6NToic3BlZWQiO3M6MzoiMjAwIjtzOjk6Im5vQW5pbWF0ZSI7czoxOiIxIjtzOjg6ImluZmluaXRlIjtzOjE6IjEiO3M6MTE6Im1vZG9fY2VudGVyIjtzOjE6IjAiO3M6MTE6ImF1dG9faGVpZ2h0IjtzOjE6IjEiO3M6ODoibWF4V2lkdGgiO3M6MToiMCI7fQ=='),
(432,	'',	'2018-05-18 15:08:24',	'2018-05-18 15:11:55',	'',	'0',	32,	1,	NULL),
(433,	'',	'2018-05-18 15:11:25',	'2018-05-21 10:23:07',	'Estilo A',	'1',	32,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjQzMyI7czo5OiIAKgBfdGFibGUiO3M6ODoiYnRTZWFyY2giO3M6NToidGl0bGUiO3M6MDoiIjtzOjEwOiJidXR0b25UZXh0IjtzOjY6IkJ1c2NhciI7czoxNDoiYmFzZVNlYXJjaFBhdGgiO3M6MDoiIjtzOjEwOiJwb3N0VG9fY0lEIjtzOjM6IjIxMyI7czoxMDoicmVzdWx0c1VSTCI7czowOiIiO30='),
(434,	'',	'2018-05-18 15:12:20',	'2018-05-18 15:12:20',	'Estilo A',	'1',	32,	1,	NULL),
(435,	'',	'2018-05-21 09:05:21',	'2018-05-21 09:05:21',	NULL,	'0',	27,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czozOiI0MzUiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRJbWFnZSI7czozOiJmSUQiO3M6MjoiNDAiO3M6MTA6ImZPbnN0YXRlSUQiO3M6MToiMCI7czo4OiJtYXhXaWR0aCI7czoxOiIwIjtzOjk6Im1heEhlaWdodCI7czoxOiIwIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO3M6MToiMSI7czo3OiJhbHRUZXh0IjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO30='),
(436,	'',	'2018-05-21 09:08:06',	'2018-05-21 09:08:06',	NULL,	'0',	3,	1,	NULL),
(437,	'',	'2018-05-21 09:08:23',	'2018-05-21 09:08:24',	'',	'1',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQzNyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDU0OiI8aDY+PHN0cm9uZz48aSBjbGFzcz0iZmEgZmEtbWFwLW1hcmtlciI+PC9pPiBEaXJlY2Npw7NuOjwvc3Ryb25nPiBDb21wbGVqbyBTYW50b3MgRTIgLSBHcmFsLiBTYW50b3MgMTE3MCBjLyBDb25jb3JkaWE8L2g2PjxoNj48c3Ryb25nPjxpIGNsYXNzPSJmYSBmYS1waG9uZSI+PC9pPlRlbGVmb25vOjwvc3Ryb25nPiAoKzU5NSAyMSkgMjE3IC0gOTAwMDwvaDY+PGg2PjxzdHJvbmc+PGkgY2xhc3M9ImZhIGZhLWNsb2NrLW8iPjwvaT4gSG9yYXJpb3MgZGUgQXRlbmNpw7NuOjwvc3Ryb25nPiBkZSAwNzowMGhzIGEgMTU6MDBoczwvaDY+PGg2PjxzdHJvbmc+PGkgY2xhc3M9ImZhIGZhLWVudmVsb3BlIj48L2k+IEUtbWFpbDo8L3N0cm9uZz4gPGEgaHJlZj0ibWFpbHRvOm1haWx0bzpjb211bmljYWNpb25Ac2VuYXRpY3MuZ292LnB5Ij5jb211bmljYWNpb25Ac2VuYXRpY3MuZ292LnB5PC9hPjwvaDY+Ijt9'),
(444,	'',	'2018-05-21 09:32:45',	'2018-05-21 09:32:45',	NULL,	'0',	18,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjM6IjQ0NCI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7aTowO3M6OToidGl0bGVUZXh0IjtzOjIzOiJbVMOtdHVsbyBkZSBsYSBQw6FnaW5hXSI7czoxMDoiZm9ybWF0dGluZyI7czoyOiJoNCI7fQ=='),
(445,	'',	'2018-05-21 09:33:01',	'2018-05-21 09:33:01',	NULL,	'0',	1,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQ0NSI7czo5OiIAKgBfdGFibGUiO3M6MTY6ImJ0Q29yZUFyZWFMYXlvdXQiO3M6MTA6ImFyTGF5b3V0SUQiO3M6MjoiMTAiO30='),
(446,	'',	'2018-05-21 09:33:22',	'2018-05-21 09:33:22',	NULL,	'0',	3,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQ0NiI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0Q29yZVNjcmFwYm9va0Rpc3BsYXkiO3M6MTE6ImJPcmlnaW5hbElEIjtzOjI6IjIzIjt9'),
(447,	'',	'2018-05-21 09:33:30',	'2018-05-21 09:33:30',	NULL,	'0',	3,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQ0NyI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0Q29yZVNjcmFwYm9va0Rpc3BsYXkiO3M6MTE6ImJPcmlnaW5hbElEIjtzOjM6IjE1OCI7fQ=='),
(448,	'',	'2018-05-21 09:33:35',	'2018-05-21 09:33:35',	NULL,	'0',	3,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQ0OCI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0Q29yZVNjcmFwYm9va0Rpc3BsYXkiO3M6MTE6ImJPcmlnaW5hbElEIjtzOjM6IjE1NyI7fQ=='),
(449,	'',	'2018-05-21 09:33:59',	'2018-05-21 09:33:59',	NULL,	'0',	2,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQ0OSI7czo5OiIAKgBfdGFibGUiO3M6MzU6ImJ0Q29yZVBhZ2VUeXBlQ29tcG9zZXJDb250cm9sT3V0cHV0IjtzOjI1OiJwdENvbXBvc2VyT3V0cHV0Q29udHJvbElEIjtzOjE6IjYiO30='),
(450,	'',	'2018-05-21 09:34:55',	'2018-05-21 09:34:55',	NULL,	'0',	3,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQ1MCI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0Q29yZVNjcmFwYm9va0Rpc3BsYXkiO3M6MTE6ImJPcmlnaW5hbElEIjtzOjI6Ijk1Ijt9'),
(452,	'',	'2018-05-21 09:35:21',	'2018-05-21 10:15:04',	'Estilo-A.php',	'1',	20,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjQ1MiI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0VG9waWNMaXN0IjtzOjQ6Im1vZGUiO3M6MToiUCI7czoyMzoidG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MTA6ImNhdGVnb3JpYXMiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjIiO3M6OToiY1BhcmVudElEIjtpOjE1OTtzOjU6InRpdGxlIjtzOjA6IiI7fQ=='),
(453,	'',	'2018-05-21 09:35:27',	'2018-05-21 09:35:27',	NULL,	'0',	3,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQ1MyI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0Q29yZVNjcmFwYm9va0Rpc3BsYXkiO3M6MTE6ImJPcmlnaW5hbElEIjtzOjI6Ijk2Ijt9'),
(455,	'',	'2018-05-21 09:35:44',	'2018-05-21 09:35:44',	NULL,	'1',	36,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjY6e3M6MzoiYklEIjtzOjM6IjQ1NSI7czo5OiIAKgBfdGFibGUiO3M6NjoiYnRUYWdzIjtzOjU6InRpdGxlIjtzOjA6IiI7czo5OiJ0YXJnZXRDSUQiO3M6MzoiMTU5IjtzOjExOiJkaXNwbGF5TW9kZSI7czo0OiJwYWdlIjtzOjEwOiJjbG91ZENvdW50IjtzOjI6IjExIjt9'),
(456,	'',	'2018-05-21 09:35:52',	'2018-05-21 09:35:52',	NULL,	'0',	3,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQ1NiI7czo5OiIAKgBfdGFibGUiO3M6MjI6ImJ0Q29yZVNjcmFwYm9va0Rpc3BsYXkiO3M6MTE6ImJPcmlnaW5hbElEIjtzOjI6Ijk4Ijt9'),
(462,	'',	'2018-05-21 09:44:00',	'2018-05-21 09:44:34',	'SENATICs Estilo A [1 col] (Lista Vertical-Slide)',	'0',	30,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI5OntzOjM6ImJJRCI7czozOiI0NjIiO3M6OToiACoAX3RhYmxlIjtzOjEwOiJidFBhZ2VMaXN0IjtzOjM6Im51bSI7czoxOiI1IjtzOjc6Im9yZGVyQnkiO3M6MTE6ImNocm9ub19kZXNjIjtzOjk6ImNQYXJlbnRJRCI7aTowO3M6NToiY1RoaXMiO3M6MToiMCI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIwIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czowOiIiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MDoiIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjA6IiI7czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO2k6MDtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMSI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMSI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO2k6MDtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjQ6InB0SUQiO2k6NztzOjQ6InBmSUQiO2k6MDtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIxIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjAiO3M6MTY6Im5vUmVzdWx0c01lc3NhZ2UiO3M6MTU6Ik5vIGhheSBub3RpY2lhcyI7czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIxIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtpOjE1MDt9'),
(464,	'',	'2018-05-21 09:44:58',	'2018-05-21 09:44:58',	NULL,	'1',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQ2NCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjY6IjxoNT7Dmmx0aW1hcyBOb3RpY2lhczwvaDU+Ijt9'),
(498,	'',	'2018-05-21 09:54:37',	'2018-05-21 09:54:37',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjQ5OCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzIzMToiPHAgZGF0YS1yZWRhY3Rvci1pbnNlcnRlZC1pbWFnZT0idHJ1ZSI+PGEgaHJlZj0ie0NDTTpCQVNFX1VSTH0vaW5kZXgucGhwL2Rvd25sb2FkX2ZpbGUvdmlld19pbmxpbmUvMTQiIGRhdGEtY29uY3JldGU1LWxpbmstbGlnaHRib3g9ImltYWdlIj48Y29uY3JldGUtcGljdHVyZSBmSUQ9IjE0IiBpZD0iaW1hZ2UtbWFya2VyIiB3aWR0aD0iMjUyIiBoZWlnaHQ9IjE4OSIgYWx0PSIiIHN0eWxlPSJ3aWR0aDogMjUycHg7IGhlaWdodDogMTg5cHg7IGZsb2F0OiBsZWZ0OyBtYXJnaW46IDBweCAxMHB4IDEwcHggMHB4OyIgLz48L2E+PC9wPjxoMj7Cv1F1w6kgZXMgTG9yZW0gSXBzdW0/PC9oMj48cD48c3Ryb25nPkxvcmVtIElwc3VtPC9zdHJvbmc+IGVzIHNpbXBsZW1lbnRlIGVsIHRleHRvIGRlIHJlbGxlbm8gZGUgbGFzIGltcHJlbnRhcyB5IGFyY2hpdm9zIGRlIHRleHRvLiBMb3JlbSBJcHN1bSBoYSBzaWRvIGVsIHRleHRvIGRlIHJlbGxlbm8gZXN0w6FuZGFyIGRlIGxhcyBpbmR1c3RyaWFzIGRlc2RlIGVsIGHDsW8gMTUwMCwgY3VhbmRvIHVuIGltcHJlc29yIChOLiBkZWwgVC4gcGVyc29uYSBxdWUgc2UgZGVkaWNhIGEgbGEgaW1wcmVudGEpIGRlc2Nvbm9jaWRvIHVzw7MgdW5hIGdhbGVyw61hIGRlIHRleHRvcyB5IGxvcyBtZXpjbMOzIGRlIHRhbCBtYW5lcmEgcXVlIGxvZ3LDsyBoYWNlciB1biBsaWJybyBkZSB0ZXh0b3MgZXNwZWNpbWVuLiBObyBzw7NsbyBzb2JyZXZpdmnDsyA1MDAgYcOxb3MsIHNpbm8gcXVlIHRhbWJpZW4gaW5ncmVzw7MgY29tbyB0ZXh0byBkZSByZWxsZW5vIGVuIGRvY3VtZW50b3MgZWxlY3Ryw7NuaWNvcywgcXVlZGFuZG8gZXNlbmNpYWxtZW50ZSBpZ3VhbCBhbCBvcmlnaW5hbC4gRnVlIHBvcHVsYXJpemFkbyBlbiBsb3MgNjBzIGNvbiBsYSBjcmVhY2nDs24gZGUgbGFzIGhvamFzICJMZXRyYXNldCIsIGxhcyBjdWFsZXMgY29udGVuaWFuIHBhc2FqZXMgZGUgTG9yZW0gSXBzdW0sIHkgbcOhcyByZWNpZW50ZW1lbnRlIGNvbiBzb2Z0d2FyZSBkZSBhdXRvZWRpY2nDs24sIGNvbW8gcG9yIGVqZW1wbG8gQWxkdXMgUGFnZU1ha2VyLCBlbCBjdWFsIGluY2x1eWUgdmVyc2lvbmVzIGRlIExvcmVtIElwc3VtLjwvcD48aDI+wr9Qb3IgcXXDqSBsbyB1c2Ftb3M/PC9oMj48cD5FcyB1biBoZWNobyBlc3RhYmxlY2lkbyBoYWNlIGRlbWFzaWFkbyB0aWVtcG8gcXVlIHVuIGxlY3RvciBzZSBkaXN0cmFlcsOhIGNvbiBlbCBjb250ZW5pZG8gZGVsIHRleHRvIGRlIHVuIHNpdGlvIG1pZW50cmFzIHF1ZSBtaXJhIHN1IGRpc2XDsW8uIEVsIHB1bnRvIGRlIHVzYXIgTG9yZW0gSXBzdW0gZXMgcXVlIHRpZW5lIHVuYSBkaXN0cmlidWNpw7NuIG3DoXMgbyBtZW5vcyBub3JtYWwgZGUgbGFzIGxldHJhcywgYWwgY29udHJhcmlvIGRlIHVzYXIgdGV4dG9zIGNvbW8gcG9yIGVqZW1wbG8gIkNvbnRlbmlkbyBhcXXDrSwgY29udGVuaWRvIGFxdcOtIi4gRXN0b3MgdGV4dG9zIGhhY2VuIHBhcmVjZXJsbyB1biBlc3Bhw7FvbCBxdWUgc2UgcHVlZGUgbGVlci4gTXVjaG9zIHBhcXVldGVzIGRlIGF1dG9lZGljacOzbiB5IGVkaXRvcmVzIGRlIHDDoWdpbmFzIHdlYiB1c2FuIGVsIExvcmVtIElwc3VtIGNvbW8gc3UgdGV4dG8gcG9yIGRlZmVjdG8sIHkgYWwgaGFjZXIgdW5hIGLDunNxdWVkYSBkZSAiTG9yZW0gSXBzdW0iIHZhIGEgZGFyIHBvciByZXN1bHRhZG8gbXVjaG9zIHNpdGlvcyB3ZWIgcXVlIHVzYW4gZXN0ZSB0ZXh0byBzaSBzZSBlbmN1ZW50cmFuIGVuIGVzdGFkbyBkZSBkZXNhcnJvbGxvLiBNdWNoYXMgdmVyc2lvbmVzIGhhbiBldm9sdWNpb25hZG8gYSB0cmF2w6lzIGRlIGxvcyBhw7FvcywgYWxndW5hcyB2ZWNlcyBwb3IgYWNjaWRlbnRlLCBvdHJhcyB2ZWNlcyBhIHByb3DDs3NpdG8gKHBvciBlamVtcGxvIGluc2VydMOhbmRvbGUgaHVtb3IgeSBjb3NhcyBwb3IgZWwgZXN0aWxvKS48L3A+CjxoMj7Cv0RlIGTDs25kZSB2aWVuZT88L2gyPjxwPkFsIGNvbnRyYXJpbyBkZWwgcGVuc2FtaWVudG8gcG9wdWxhciwgZWwgdGV4dG8gZGUgTG9yZW0gSXBzdW0gbm8gZXMgc2ltcGxlbWVudGUgdGV4dG8gYWxlYXRvcmlvLiBUaWVuZSBzdXMgcmFpY2VzIGVuIHVuYSBwaWV6YSBjbMK0c2ljYSBkZSBsYSBsaXRlcmF0dXJhIGRlbCBMYXRpbiwgcXVlIGRhdGEgZGVsIGHDsW8gNDUgYW50ZXMgZGUgQ3Jpc3RvLCBoYWNpZW5kbyBxdWUgZXN0ZSBhZHF1aWVyYSBtYXMgZGUgMjAwMCBhw7FvcyBkZSBhbnRpZ3VlZGFkLiBSaWNoYXJkIE1jQ2xpbnRvY2ssIHVuIHByb2Zlc29yIGRlIExhdGluIGRlIGxhIFVuaXZlcnNpZGFkIGRlIEhhbXBkZW4tU3lkbmV5IGVuIFZpcmdpbmlhLCBlbmNvbnRyw7MgdW5hIGRlIGxhcyBwYWxhYnJhcyBtw6FzIG9zY3VyYXMgZGUgbGEgbGVuZ3VhIGRlbCBsYXTDrW4sICJjb25zZWN0ZXVyIiwgZW4gdW4gcGFzYWplIGRlIExvcmVtIElwc3VtLCB5IGFsIHNlZ3VpciBsZXllbmRvIGRpc3RpbnRvcyB0ZXh0b3MgZGVsIGxhdMOtbiwgZGVzY3VicmnDsyBsYSBmdWVudGUgaW5kdWRhYmxlLiBMb3JlbSBJcHN1bSB2aWVuZSBkZSBsYXMgc2VjY2lvbmVzIDEuMTAuMzIgeSAxLjEwLjMzIGRlICJkZSBGaW5uaWJ1cyBCb25vcnVtIGV0IE1hbG9ydW0iIChMb3MgRXh0cmVtb3MgZGVsIEJpZW4geSBFbCBNYWwpIHBvciBDaWNlcm8sIGVzY3JpdG8gZW4gZWwgYcOxbyA0NSBhbnRlcyBkZSBDcmlzdG8uIEVzdGUgbGlicm8gZXMgdW4gdHJhdGFkbyBkZSB0ZW9yw61hIGRlIMOpdGljYXMsIG11eSBwb3B1bGFyIGR1cmFudGUgZWwgUmVuYWNpbWllbnRvLiBMYSBwcmltZXJhIGxpbmVhIGRlbCBMb3JlbSBJcHN1bSwgIkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0Li4iLCB2aWVuZSBkZSB1bmEgbGluZWEgZW4gbGEgc2VjY2nDs24gMS4xMC4zMjwvcD48cD5FbCB0cm96byBkZSB0ZXh0byBlc3TDoW5kYXIgZGUgTG9yZW0gSXBzdW0gdXNhZG8gZGVzZGUgZWwgYcOxbyAxNTAwIGVzIHJlcHJvZHVjaWRvIGRlYmFqbyBwYXJhIGFxdWVsbG9zIGludGVyZXNhZG9zLiBMYXMgc2VjY2lvbmVzIDEuMTAuMzIgeSAxLjEwLjMzIGRlICJkZSBGaW5pYnVzIEJvbm9ydW0gZXQgTWFsb3J1bSIgcG9yIENpY2VybyBzb24gdGFtYmnDqW4gcmVwcm9kdWNpZGFzIGVuIHN1IGZvcm1hIG9yaWdpbmFsIGV4YWN0YSwgYWNvbXBhw7FhZGFzIHBvciB2ZXJzaW9uZXMgZW4gSW5nbMOpcyBkZSBsYSB0cmFkdWNjacOzbiByZWFsaXphZGEgZW4gMTkxNCBwb3IgSC4gUmFja2hhbS48L3A+Ijt9'),
(519,	'',	'2018-05-21 09:58:05',	'2018-05-21 09:58:05',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjUxOSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDE4ODoiPHAgZGF0YS1yZWRhY3Rvci1pbnNlcnRlZC1pbWFnZT0idHJ1ZSI+PGEgaHJlZj0ie0NDTTpCQVNFX1VSTH0vaW5kZXgucGhwL2Rvd25sb2FkX2ZpbGUvdmlld19pbmxpbmUvMTUiIGRhdGEtY29uY3JldGU1LWxpbmstbGlnaHRib3g9ImltYWdlIj48Y29uY3JldGUtcGljdHVyZSBmSUQ9IjE1IiBpZD0iaW1hZ2UtbWFya2VyIiBhbHQ9IiIgd2lkdGg9IjQxMSIgaGVpZ2h0PSIyNTkiIHN0eWxlPSJmbG9hdDogcmlnaHQ7IHdpZHRoOiA0MTFweDsgaGVpZ2h0OiAyNTlweDsgbWFyZ2luOiAwcHggMHB4IDEwcHggMTBweDsiIC8+PC9hPjwvcD48aDI+wr9RdcOpIGVzIExvcmVtIElwc3VtPzwvaDI+PHAgc3R5bGU9InRleHQtYWxpZ246IGp1c3RpZnk7Ij48c3Ryb25nPkxvcmVtIElwc3VtPC9zdHJvbmc+IGVzIHNpbXBsZW1lbnRlIGVsIHRleHRvIGRlIHJlbGxlbm8gZGUgbGFzIGltcHJlbnRhcyB5IGFyY2hpdm9zIGRlIHRleHRvLiBMb3JlbSBJcHN1bSBoYSBzaWRvIGVsIHRleHRvIGRlIHJlbGxlbm8gZXN0w6FuZGFyIGRlIGxhcyBpbmR1c3RyaWFzIGRlc2RlIGVsIGHDsW8gMTUwMCwgY3VhbmRvIHVuIGltcHJlc29yIChOLiBkZWwgVC4gcGVyc29uYSBxdWUgc2UgZGVkaWNhIGEgbGEgaW1wcmVudGEpIGRlc2Nvbm9jaWRvIHVzw7MgdW5hIGdhbGVyw61hIGRlIHRleHRvcyB5IGxvcyBtZXpjbMOzIGRlIHRhbCBtYW5lcmEgcXVlIGxvZ3LDsyBoYWNlciB1biBsaWJybyBkZSB0ZXh0b3MgZXNwZWNpbWVuLiBObyBzw7NsbyBzb2JyZXZpdmnDsyA1MDAgYcOxb3MsIHNpbm8gcXVlIHRhbWJpZW4gaW5ncmVzw7MgY29tbyB0ZXh0byBkZSByZWxsZW5vIGVuIGRvY3VtZW50b3MgZWxlY3Ryw7NuaWNvcywgcXVlZGFuZG8gZXNlbmNpYWxtZW50ZSBpZ3VhbCBhbCBvcmlnaW5hbC4gRnVlIHBvcHVsYXJpemFkbyBlbiBsb3MgNjBzIGNvbiBsYSBjcmVhY2nDs24gZGUgbGFzIGhvamFzICJMZXRyYXNldCIsIGxhcyBjdWFsZXMgY29udGVuaWFuIHBhc2FqZXMgZGUgTG9yZW0gSXBzdW0sIHkgbcOhcyByZWNpZW50ZW1lbnRlIGNvbiBzb2Z0d2FyZSBkZSBhdXRvZWRpY2nDs24sIGNvbW8gcG9yIGVqZW1wbG8gQWxkdXMgUGFnZU1ha2VyLCBlbCBjdWFsIGluY2x1eWUgdmVyc2lvbmVzIGRlIExvcmVtIElwc3VtLjwvcD48aDI+wr9Qb3IgcXXDqSBsbyB1c2Ftb3M/PC9oMj48cCBzdHlsZT0idGV4dC1hbGlnbjoganVzdGlmeTsiPkVzIHVuIGhlY2hvIGVzdGFibGVjaWRvIGhhY2UgZGVtYXNpYWRvIHRpZW1wbyBxdWUgdW4gbGVjdG9yIHNlIGRpc3RyYWVyw6EgY29uIGVsIGNvbnRlbmlkbyBkZWwgdGV4dG8gZGUgdW4gc2l0aW8gbWllbnRyYXMgcXVlIG1pcmEgc3UgZGlzZcOxby4gRWwgcHVudG8gZGUgdXNhciBMb3JlbSBJcHN1bSBlcyBxdWUgdGllbmUgdW5hIGRpc3RyaWJ1Y2nDs24gbcOhcyBvIG1lbm9zIG5vcm1hbCBkZSBsYXMgbGV0cmFzLCBhbCBjb250cmFyaW8gZGUgdXNhciB0ZXh0b3MgY29tbyBwb3IgZWplbXBsbyAiQ29udGVuaWRvIGFxdcOtLCBjb250ZW5pZG8gYXF1w60iLiBFc3RvcyB0ZXh0b3MgaGFjZW4gcGFyZWNlcmxvIHVuIGVzcGHDsW9sIHF1ZSBzZSBwdWVkZSBsZWVyLiBNdWNob3MgcGFxdWV0ZXMgZGUgYXV0b2VkaWNpw7NuIHkgZWRpdG9yZXMgZGUgcMOhZ2luYXMgd2ViIHVzYW4gZWwgTG9yZW0gSXBzdW0gY29tbyBzdSB0ZXh0byBwb3IgZGVmZWN0bywgeSBhbCBoYWNlciB1bmEgYsO6c3F1ZWRhIGRlICJMb3JlbSBJcHN1bSIgdmEgYSBkYXIgcG9yIHJlc3VsdGFkbyBtdWNob3Mgc2l0aW9zIHdlYiBxdWUgdXNhbiBlc3RlIHRleHRvIHNpIHNlIGVuY3VlbnRyYW4gZW4gZXN0YWRvIGRlIGRlc2Fycm9sbG8uIE11Y2hhcyB2ZXJzaW9uZXMgaGFuIGV2b2x1Y2lvbmFkbyBhIHRyYXbDqXMgZGUgbG9zIGHDsW9zLCBhbGd1bmFzIHZlY2VzIHBvciBhY2NpZGVudGUsIG90cmFzIHZlY2VzIGEgcHJvcMOzc2l0byAocG9yIGVqZW1wbG8gaW5zZXJ0w6FuZG9sZSBodW1vciB5IGNvc2FzIHBvciBlbCBlc3RpbG8pLjwvcD4KPGgyPsK/RGUgZMOzbmRlIHZpZW5lPzwvaDI+PHA+QWwgY29udHJhcmlvIGRlbCBwZW5zYW1pZW50byBwb3B1bGFyLCBlbCB0ZXh0byBkZSBMb3JlbSBJcHN1bSBubyBlcyBzaW1wbGVtZW50ZSB0ZXh0byBhbGVhdG9yaW8uIFRpZW5lIHN1cyByYWljZXMgZW4gdW5hIHBpZXphIGNswrRzaWNhIGRlIGxhIGxpdGVyYXR1cmEgZGVsIExhdGluLCBxdWUgZGF0YSBkZWwgYcOxbyA0NSBhbnRlcyBkZSBDcmlzdG8sIGhhY2llbmRvIHF1ZSBlc3RlIGFkcXVpZXJhIG1hcyBkZSAyMDAwIGHDsW9zIGRlIGFudGlndWVkYWQuIFJpY2hhcmQgTWNDbGludG9jaywgdW4gcHJvZmVzb3IgZGUgTGF0aW4gZGUgbGEgVW5pdmVyc2lkYWQgZGUgSGFtcGRlbi1TeWRuZXkgZW4gVmlyZ2luaWEsIGVuY29udHLDsyB1bmEgZGUgbGFzIHBhbGFicmFzIG3DoXMgb3NjdXJhcyBkZSBsYSBsZW5ndWEgZGVsIGxhdMOtbiwgImNvbnNlY3RldXIiLCBlbiB1biBwYXNhamUgZGUgTG9yZW0gSXBzdW0sIHkgYWwgc2VndWlyIGxleWVuZG8gZGlzdGludG9zIHRleHRvcyBkZWwgbGF0w61uLCBkZXNjdWJyacOzIGxhIGZ1ZW50ZSBpbmR1ZGFibGUuIExvcmVtIElwc3VtIHZpZW5lIGRlIGxhcyBzZWNjaW9uZXMgMS4xMC4zMiB5IDEuMTAuMzMgZGUgImRlIEZpbm5pYnVzIEJvbm9ydW0gZXQgTWFsb3J1bSIgKExvcyBFeHRyZW1vcyBkZWwgQmllbiB5IEVsIE1hbCkgcG9yIENpY2VybywgZXNjcml0byBlbiBlbCBhw7FvIDQ1IGFudGVzIGRlIENyaXN0by4gRXN0ZSBsaWJybyBlcyB1biB0cmF0YWRvIGRlIHRlb3LDrWEgZGUgw6l0aWNhcywgbXV5IHBvcHVsYXIgZHVyYW50ZSBlbCBSZW5hY2ltaWVudG8uIExhIHByaW1lcmEgbGluZWEgZGVsIExvcmVtIElwc3VtLCAiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQuLiIsIHZpZW5lIGRlIHVuYSBsaW5lYSBlbiBsYSBzZWNjacOzbiAxLjEwLjMyPC9wPjxwPkVsIHRyb3pvIGRlIHRleHRvIGVzdMOhbmRhciBkZSBMb3JlbSBJcHN1bSB1c2FkbyBkZXNkZSBlbCBhw7FvIDE1MDAgZXMgcmVwcm9kdWNpZG8gZGViYWpvIHBhcmEgYXF1ZWxsb3MgaW50ZXJlc2Fkb3MuIExhcyBzZWNjaW9uZXMgMS4xMC4zMiB5IDEuMTAuMzMgZGUgImRlIEZpbmlidXMgQm9ub3J1bSBldCBNYWxvcnVtIiBwb3IgQ2ljZXJvIHNvbiB0YW1iacOpbiByZXByb2R1Y2lkYXMgZW4gc3UgZm9ybWEgb3JpZ2luYWwgZXhhY3RhLCBhY29tcGHDsWFkYXMgcG9yIHZlcnNpb25lcyBlbiBJbmdsw6lzIGRlIGxhIHRyYWR1Y2Npw7NuIHJlYWxpemFkYSBlbiAxOTE0IHBvciBILiBSYWNraGFtLjwvcD48aDI+wr9Ew7NuZGUgcHVlZG8gY29uc2VndWlybG8/PC9oMj48cD5IYXkgbXVjaGFzIHZhcmlhY2lvbmVzIGRlIGxvcyBwYXNhamVzIGRlIExvcmVtIElwc3VtIGRpc3BvbmlibGVzLCBwZXJvIGxhIG1heW9yw61hIHN1ZnJpw7MgYWx0ZXJhY2lvbmVzIGVuIGFsZ3VuYSBtYW5lcmEsIHlhIHNlYSBwb3JxdWUgc2UgbGUgYWdyZWfDsyBodW1vciwgbyBwYWxhYnJhcyBhbGVhdG9yaWFzIHF1ZSBubyBwYXJlY2VuIG5pIHVuIHBvY28gY3Jlw61ibGVzLiBTaSB2YXMgYSB1dGlsaXphciB1biBwYXNhamUgZGUgTG9yZW0gSXBzdW0sIG5lY2VzaXTDoXMgZXN0YXIgc2VndXJvIGRlIHF1ZSBubyBoYXkgbmFkYSBhdmVyZ29uemFudGUgZXNjb25kaWRvIGVuIGVsIG1lZGlvIGRlbCB0ZXh0by4gVG9kb3MgbG9zIGdlbmVyYWRvcmVzIGRlIExvcmVtIElwc3VtIHF1ZSBzZSBlbmN1ZW50cmFuIGVuIEludGVybmV0IHRpZW5kZW4gYSByZXBldGlyIHRyb3pvcyBwcmVkZWZpbmlkb3MgY3VhbmRvIHNlYSBuZWNlc2FyaW8sIGhhY2llbmRvIGEgZXN0ZSBlbCDDum5pY28gZ2VuZXJhZG9yIHZlcmRhZGVybyAodsOhbGlkbykgZW4gbGEgSW50ZXJuZXQuIFVzYSB1biBkaWNjaW9uYXJpbyBkZSBtYXMgZGUgMjAwIHBhbGFicmFzIHByb3ZlbmllbnRlcyBkZWwgbGF0w61uLCBjb21iaW5hZGFzIGNvbiBlc3RydWN0dXJhcyBtdXkgw7p0aWxlcyBkZSBzZW50ZW5jaWFzLCBwYXJhIGdlbmVyYXIgdGV4dG8gZGUgTG9yZW0gSXBzdW0gcXVlIHBhcmV6Y2EgcmF6b25hYmxlLiBFc3RlIExvcmVtIElwc3VtIGdlbmVyYWRvIHNpZW1wcmUgZXN0YXLDoSBsaWJyZSBkZSByZXBldGljaW9uZXMsIGh1bW9yIGFncmVnYWRvIG8gcGFsYWJyYXMgbm8gY2FyYWN0ZXLDrXN0aWNhcyBkZWwgbGVuZ3VhamUsIGV0Yy48L3A+Ijt9'),
(533,	'',	'2018-05-21 09:59:49',	'2018-05-21 09:59:49',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjUzMyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDExOToiPHAgZGF0YS1yZWRhY3Rvci1pbnNlcnRlZC1pbWFnZT0idHJ1ZSI+PGEgaHJlZj0ie0NDTTpCQVNFX1VSTH0vaW5kZXgucGhwL2Rvd25sb2FkX2ZpbGUvdmlld19pbmxpbmUvMTYiIGRhdGEtY29uY3JldGU1LWxpbmstbGlnaHRib3g9ImltYWdlIj48Y29uY3JldGUtcGljdHVyZSBmSUQ9IjE2IiBpZD0iaW1hZ2UtbWFya2VyIiB3aWR0aD0iNTU0IiBoZWlnaHQ9IjMwOSIgc3R5bGU9IndpZHRoOiA1NTRweDsgaGVpZ2h0OiAzMDlweDsgZGlzcGxheTogYmxvY2s7IG1hcmdpbjogYXV0bzsiIGFsdD0iIiAvPjwvYT48L3A+PGgyPsK/UXXDqSBlcyBMb3JlbSBJcHN1bT88L2gyPjxwPjxzdHJvbmc+TG9yZW0gSXBzdW08L3N0cm9uZz4gZXMgc2ltcGxlbWVudGUgZWwgdGV4dG8gZGUgcmVsbGVubyBkZSBsYXMgaW1wcmVudGFzIHkgYXJjaGl2b3MgZGUgdGV4dG8uIExvcmVtIElwc3VtIGhhIHNpZG8gZWwgdGV4dG8gZGUgcmVsbGVubyBlc3TDoW5kYXIgZGUgbGFzIGluZHVzdHJpYXMgZGVzZGUgZWwgYcOxbyAxNTAwLCBjdWFuZG8gdW4gaW1wcmVzb3IgKE4uIGRlbCBULiBwZXJzb25hIHF1ZSBzZSBkZWRpY2EgYSBsYSBpbXByZW50YSkgZGVzY29ub2NpZG8gdXPDsyB1bmEgZ2FsZXLDrWEgZGUgdGV4dG9zIHkgbG9zIG1lemNsw7MgZGUgdGFsIG1hbmVyYSBxdWUgbG9ncsOzIGhhY2VyIHVuIGxpYnJvIGRlIHRleHRvcyBlc3BlY2ltZW4uIE5vIHPDs2xvIHNvYnJldml2acOzIDUwMCBhw7Fvcywgc2lubyBxdWUgdGFtYmllbiBpbmdyZXPDsyBjb21vIHRleHRvIGRlIHJlbGxlbm8gZW4gZG9jdW1lbnRvcyBlbGVjdHLDs25pY29zLCBxdWVkYW5kbyBlc2VuY2lhbG1lbnRlIGlndWFsIGFsIG9yaWdpbmFsLiBGdWUgcG9wdWxhcml6YWRvIGVuIGxvcyA2MHMgY29uIGxhIGNyZWFjacOzbiBkZSBsYXMgaG9qYXMgIkxldHJhc2V0IiwgbGFzIGN1YWxlcyBjb250ZW5pYW4gcGFzYWplcyBkZSBMb3JlbSBJcHN1bSwgeSBtw6FzIHJlY2llbnRlbWVudGUgY29uIHNvZnR3YXJlIGRlIGF1dG9lZGljacOzbiwgY29tbyBwb3IgZWplbXBsbyBBbGR1cyBQYWdlTWFrZXIsIGVsIGN1YWwgaW5jbHV5ZSB2ZXJzaW9uZXMgZGUgTG9yZW0gSXBzdW0uPC9wPjxoMj7Cv1BvciBxdcOpIGxvIHVzYW1vcz88L2gyPjxwPkVzIHVuIGhlY2hvIGVzdGFibGVjaWRvIGhhY2UgZGVtYXNpYWRvIHRpZW1wbyBxdWUgdW4gbGVjdG9yIHNlIGRpc3RyYWVyw6EgY29uIGVsIGNvbnRlbmlkbyBkZWwgdGV4dG8gZGUgdW4gc2l0aW8gbWllbnRyYXMgcXVlIG1pcmEgc3UgZGlzZcOxby4gRWwgcHVudG8gZGUgdXNhciBMb3JlbSBJcHN1bSBlcyBxdWUgdGllbmUgdW5hIGRpc3RyaWJ1Y2nDs24gbcOhcyBvIG1lbm9zIG5vcm1hbCBkZSBsYXMgbGV0cmFzLCBhbCBjb250cmFyaW8gZGUgdXNhciB0ZXh0b3MgY29tbyBwb3IgZWplbXBsbyAiQ29udGVuaWRvIGFxdcOtLCBjb250ZW5pZG8gYXF1w60iLiBFc3RvcyB0ZXh0b3MgaGFjZW4gcGFyZWNlcmxvIHVuIGVzcGHDsW9sIHF1ZSBzZSBwdWVkZSBsZWVyLiBNdWNob3MgcGFxdWV0ZXMgZGUgYXV0b2VkaWNpw7NuIHkgZWRpdG9yZXMgZGUgcMOhZ2luYXMgd2ViIHVzYW4gZWwgTG9yZW0gSXBzdW0gY29tbyBzdSB0ZXh0byBwb3IgZGVmZWN0bywgeSBhbCBoYWNlciB1bmEgYsO6c3F1ZWRhIGRlICJMb3JlbSBJcHN1bSIgdmEgYSBkYXIgcG9yIHJlc3VsdGFkbyBtdWNob3Mgc2l0aW9zIHdlYiBxdWUgdXNhbiBlc3RlIHRleHRvIHNpIHNlIGVuY3VlbnRyYW4gZW4gZXN0YWRvIGRlIGRlc2Fycm9sbG8uIE11Y2hhcyB2ZXJzaW9uZXMgaGFuIGV2b2x1Y2lvbmFkbyBhIHRyYXbDqXMgZGUgbG9zIGHDsW9zLCBhbGd1bmFzIHZlY2VzIHBvciBhY2NpZGVudGUsIG90cmFzIHZlY2VzIGEgcHJvcMOzc2l0byAocG9yIGVqZW1wbG8gaW5zZXJ0w6FuZG9sZSBodW1vciB5IGNvc2FzIHBvciBlbCBlc3RpbG8pLjwvcD4KPGgyPsK/RGUgZMOzbmRlIHZpZW5lPzwvaDI+PHA+QWwgY29udHJhcmlvIGRlbCBwZW5zYW1pZW50byBwb3B1bGFyLCBlbCB0ZXh0byBkZSBMb3JlbSBJcHN1bSBubyBlcyBzaW1wbGVtZW50ZSB0ZXh0byBhbGVhdG9yaW8uIFRpZW5lIHN1cyByYWljZXMgZW4gdW5hIHBpZXphIGNswrRzaWNhIGRlIGxhIGxpdGVyYXR1cmEgZGVsIExhdGluLCBxdWUgZGF0YSBkZWwgYcOxbyA0NSBhbnRlcyBkZSBDcmlzdG8sIGhhY2llbmRvIHF1ZSBlc3RlIGFkcXVpZXJhIG1hcyBkZSAyMDAwIGHDsW9zIGRlIGFudGlndWVkYWQuIFJpY2hhcmQgTWNDbGludG9jaywgdW4gcHJvZmVzb3IgZGUgTGF0aW4gZGUgbGEgVW5pdmVyc2lkYWQgZGUgSGFtcGRlbi1TeWRuZXkgZW4gVmlyZ2luaWEsIGVuY29udHLDsyB1bmEgZGUgbGFzIHBhbGFicmFzIG3DoXMgb3NjdXJhcyBkZSBsYSBsZW5ndWEgZGVsIGxhdMOtbiwgImNvbnNlY3RldXIiLCBlbiB1biBwYXNhamUgZGUgTG9yZW0gSXBzdW0sIHkgYWwgc2VndWlyIGxleWVuZG8gZGlzdGludG9zIHRleHRvcyBkZWwgbGF0w61uLCBkZXNjdWJyacOzIGxhIGZ1ZW50ZSBpbmR1ZGFibGUuIExvcmVtIElwc3VtIHZpZW5lIGRlIGxhcyBzZWNjaW9uZXMgMS4xMC4zMiB5IDEuMTAuMzMgZGUgImRlIEZpbm5pYnVzIEJvbm9ydW0gZXQgTWFsb3J1bSIgKExvcyBFeHRyZW1vcyBkZWwgQmllbiB5IEVsIE1hbCkgcG9yIENpY2VybywgZXNjcml0byBlbiBlbCBhw7FvIDQ1IGFudGVzIGRlIENyaXN0by4gRXN0ZSBsaWJybyBlcyB1biB0cmF0YWRvIGRlIHRlb3LDrWEgZGUgw6l0aWNhcywgbXV5IHBvcHVsYXIgZHVyYW50ZSBlbCBSZW5hY2ltaWVudG8uIExhIHByaW1lcmEgbGluZWEgZGVsIExvcmVtIElwc3VtLCAiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQuLiIsIHZpZW5lIGRlIHVuYSBsaW5lYSBlbiBsYSBzZWNjacOzbiAxLjEwLjMyPC9wPjxwPkVsIHRyb3pvIGRlIHRleHRvIGVzdMOhbmRhciBkZSBMb3JlbSBJcHN1bSB1c2FkbyBkZXNkZSBlbCBhw7FvIDE1MDAgZXMgcmVwcm9kdWNpZG8gZGViYWpvIHBhcmEgYXF1ZWxsb3MgaW50ZXJlc2Fkb3MuIExhcyBzZWNjaW9uZXMgMS4xMC4zMiB5IDEuMTAuMzMgZGUgImRlIEZpbmlidXMgQm9ub3J1bSBldCBNYWxvcnVtIiBwb3IgQ2ljZXJvIHNvbiB0YW1iacOpbiByZXByb2R1Y2lkYXMgZW4gc3UgZm9ybWEgb3JpZ2luYWwgZXhhY3RhLCBhY29tcGHDsWFkYXMgcG9yIHZlcnNpb25lcyBlbiBJbmdsw6lzIGRlIGxhIHRyYWR1Y2Npw7NuIHJlYWxpemFkYSBlbiAxOTE0IHBvciBILiBSYWNraGFtLjwvcD48aDI+wr9Ew7NuZGUgcHVlZG8gY29uc2VndWlybG8/PC9oMj48cD5IYXkgbXVjaGFzIHZhcmlhY2lvbmVzIGRlIGxvcyBwYXNhamVzIGRlIExvcmVtIElwc3VtIGRpc3BvbmlibGVzLCBwZXJvIGxhIG1heW9yw61hIHN1ZnJpw7MgYWx0ZXJhY2lvbmVzIGVuIGFsZ3VuYSBtYW5lcmEsIHlhIHNlYSBwb3JxdWUgc2UgbGUgYWdyZWfDsyBodW1vciwgbyBwYWxhYnJhcyBhbGVhdG9yaWFzIHF1ZSBubyBwYXJlY2VuIG5pIHVuIHBvY28gY3Jlw61ibGVzLiBTaSB2YXMgYSB1dGlsaXphciB1biBwYXNhamUgZGUgTG9yZW0gSXBzdW0sIG5lY2VzaXTDoXMgZXN0YXIgc2VndXJvIGRlIHF1ZSBubyBoYXkgbmFkYSBhdmVyZ29uemFudGUgZXNjb25kaWRvIGVuIGVsIG1lZGlvIGRlbCB0ZXh0by4gVG9kb3MgbG9zIGdlbmVyYWRvcmVzIGRlIExvcmVtIElwc3VtIHF1ZSBzZSBlbmN1ZW50cmFuIGVuIEludGVybmV0IHRpZW5kZW4gYSByZXBldGlyIHRyb3pvcyBwcmVkZWZpbmlkb3MgY3VhbmRvIHNlYSBuZWNlc2FyaW8sIGhhY2llbmRvIGEgZXN0ZSBlbCDDum5pY28gZ2VuZXJhZG9yIHZlcmRhZGVybyAodsOhbGlkbykgZW4gbGEgSW50ZXJuZXQuIFVzYSB1biBkaWNjaW9uYXJpbyBkZSBtYXMgZGUgMjAwIHBhbGFicmFzIHByb3ZlbmllbnRlcyBkZWwgbGF0w61uLCBjb21iaW5hZGFzIGNvbiBlc3RydWN0dXJhcyBtdXkgw7p0aWxlcyBkZSBzZW50ZW5jaWFzLCBwYXJhIGdlbmVyYXIgdGV4dG8gZGUgTG9yZW0gSXBzdW0gcXVlIHBhcmV6Y2EgcmF6b25hYmxlLiBFc3RlIExvcmVtIElwc3VtIGdlbmVyYWRvIHNpZW1wcmUgZXN0YXLDoSBsaWJyZSBkZSByZXBldGljaW9uZXMsIGh1bW9yIGFncmVnYWRvIG8gcGFsYWJyYXMgbm8gY2FyYWN0ZXLDrXN0aWNhcyBkZWwgbGVuZ3VhamUsIGV0Yy48L3A+Ijt9'),
(557,	'',	'2018-05-21 10:02:01',	'2018-05-21 10:02:01',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjU1NyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDM4NzoiPHA+PGEgaHJlZj0ie0NDTTpCQVNFX1VSTH0vaW5kZXgucGhwL2Rvd25sb2FkX2ZpbGUvdmlld19pbmxpbmUvMTciIGRhdGEtY29uY3JldGU1LWxpbmstbGlnaHRib3g9ImltYWdlIj48Y29uY3JldGUtcGljdHVyZSBmSUQ9IjE3IiBpZD0iaW1hZ2UtbWFya2VyIiB3aWR0aD0iNDgyIiBoZWlnaHQ9IjI3MSIgc3R5bGU9IndpZHRoOiA0ODJweDsgaGVpZ2h0OiAyNzFweDsgZGlzcGxheTogYmxvY2s7IG1hcmdpbjogYXV0bzsiIGFsdD0iIiAvPjwvYT48L3A+PGgyPsK/UXXDqSBlcyBMb3JlbSBJcHN1bT88L2gyPjxwPjxzdHJvbmc+TG9yZW0gSXBzdW08L3N0cm9uZz4gZXMgc2ltcGxlbWVudGUgZWwgdGV4dG8gZGUgcmVsbGVubyBkZSBsYXMgaW1wcmVudGFzIHkgYXJjaGl2b3MgZGUgdGV4dG8uIExvcmVtIElwc3VtIGhhIHNpZG8gZWwgdGV4dG8gZGUgcmVsbGVubyBlc3TDoW5kYXIgZGUgbGFzIGluZHVzdHJpYXMgZGVzZGUgZWwgYcOxbyAxNTAwLCBjdWFuZG8gdW4gaW1wcmVzb3IgKE4uIGRlbCBULiBwZXJzb25hIHF1ZSBzZSBkZWRpY2EgYSBsYSBpbXByZW50YSkgZGVzY29ub2NpZG8gdXPDsyB1bmEgZ2FsZXLDrWEgZGUgdGV4dG9zIHkgbG9zIG1lemNsw7MgZGUgdGFsIG1hbmVyYSBxdWUgbG9ncsOzIGhhY2VyIHVuIGxpYnJvIGRlIHRleHRvcyBlc3BlY2ltZW4uIE5vIHPDs2xvIHNvYnJldml2acOzIDUwMCBhw7Fvcywgc2lubyBxdWUgdGFtYmllbiBpbmdyZXPDsyBjb21vIHRleHRvIGRlIHJlbGxlbm8gZW4gZG9jdW1lbnRvcyBlbGVjdHLDs25pY29zLCBxdWVkYW5kbyBlc2VuY2lhbG1lbnRlIGlndWFsIGFsIG9yaWdpbmFsLiBGdWUgcG9wdWxhcml6YWRvIGVuIGxvcyA2MHMgY29uIGxhIGNyZWFjacOzbiBkZSBsYXMgaG9qYXMgIkxldHJhc2V0IiwgbGFzIGN1YWxlcyBjb250ZW5pYW4gcGFzYWplcyBkZSBMb3JlbSBJcHN1bSwgeSBtw6FzIHJlY2llbnRlbWVudGUgY29uIHNvZnR3YXJlIGRlIGF1dG9lZGljacOzbiwgY29tbyBwb3IgZWplbXBsbyBBbGR1cyBQYWdlTWFrZXIsIGVsIGN1YWwgaW5jbHV5ZSB2ZXJzaW9uZXMgZGUgTG9yZW0gSXBzdW0uPC9wPjxoMj7Cv1BvciBxdcOpIGxvIHVzYW1vcz88L2gyPjxwPkVzIHVuIGhlY2hvIGVzdGFibGVjaWRvIGhhY2UgZGVtYXNpYWRvIHRpZW1wbyBxdWUgdW4gbGVjdG9yIHNlIGRpc3RyYWVyw6EgY29uIGVsIGNvbnRlbmlkbyBkZWwgdGV4dG8gZGUgdW4gc2l0aW8gbWllbnRyYXMgcXVlIG1pcmEgc3UgZGlzZcOxby4gRWwgcHVudG8gZGUgdXNhciBMb3JlbSBJcHN1bSBlcyBxdWUgdGllbmUgdW5hIGRpc3RyaWJ1Y2nDs24gbcOhcyBvIG1lbm9zIG5vcm1hbCBkZSBsYXMgbGV0cmFzLCBhbCBjb250cmFyaW8gZGUgdXNhciB0ZXh0b3MgY29tbyBwb3IgZWplbXBsbyAiQ29udGVuaWRvIGFxdcOtLCBjb250ZW5pZG8gYXF1w60iLiBFc3RvcyB0ZXh0b3MgaGFjZW4gcGFyZWNlcmxvIHVuIGVzcGHDsW9sIHF1ZSBzZSBwdWVkZSBsZWVyLiBNdWNob3MgcGFxdWV0ZXMgZGUgYXV0b2VkaWNpw7NuIHkgZWRpdG9yZXMgZGUgcMOhZ2luYXMgd2ViIHVzYW4gZWwgTG9yZW0gSXBzdW0gY29tbyBzdSB0ZXh0byBwb3IgZGVmZWN0bywgeSBhbCBoYWNlciB1bmEgYsO6c3F1ZWRhIGRlICJMb3JlbSBJcHN1bSIgdmEgYSBkYXIgcG9yIHJlc3VsdGFkbyBtdWNob3Mgc2l0aW9zIHdlYiBxdWUgdXNhbiBlc3RlIHRleHRvIHNpIHNlIGVuY3VlbnRyYW4gZW4gZXN0YWRvIGRlIGRlc2Fycm9sbG8uIE11Y2hhcyB2ZXJzaW9uZXMgaGFuIGV2b2x1Y2lvbmFkbyBhIHRyYXbDqXMgZGUgbG9zIGHDsW9zLCBhbGd1bmFzIHZlY2VzIHBvciBhY2NpZGVudGUsIG90cmFzIHZlY2VzIGEgcHJvcMOzc2l0byAocG9yIGVqZW1wbG8gaW5zZXJ0w6FuZG9sZSBodW1vciB5IGNvc2FzIHBvciBlbCBlc3RpbG8pLjwvcD48cCBkYXRhLXJlZGFjdG9yLWluc2VydGVkLWltYWdlPSJ0cnVlIj48YSBocmVmPSJ7Q0NNOkJBU0VfVVJMfS9pbmRleC5waHAvZG93bmxvYWRfZmlsZS92aWV3X2lubGluZS8zMSIgZGF0YS1jb25jcmV0ZTUtbGluay1saWdodGJveD0iaW1hZ2UiPjxjb25jcmV0ZS1waWN0dXJlIGZJRD0iMzEiIGlkPSJpbWFnZS1tYXJrZXIiIHN0eWxlPSJ3aWR0aDogMzcycHg7IGhlaWdodDogMzc1cHg7IGZsb2F0OiBsZWZ0OyBtYXJnaW46IDBweCAxMHB4IDEwcHggMHB4OyIgd2lkdGg9IjM3MiIgaGVpZ2h0PSIzNzUiIGFsdD0iIiAvPjwvYT48L3A+CjxoMj7Cv0RlIGTDs25kZSB2aWVuZT88L2gyPjxwPkFsIGNvbnRyYXJpbyBkZWwgcGVuc2FtaWVudG8gcG9wdWxhciwgZWwgdGV4dG8gZGUgTG9yZW0gSXBzdW0gbm8gZXMgc2ltcGxlbWVudGUgdGV4dG8gYWxlYXRvcmlvLiBUaWVuZSBzdXMgcmFpY2VzIGVuIHVuYSBwaWV6YSBjbMK0c2ljYSBkZSBsYSBsaXRlcmF0dXJhIGRlbCBMYXRpbiwgcXVlIGRhdGEgZGVsIGHDsW8gNDUgYW50ZXMgZGUgQ3Jpc3RvLCBoYWNpZW5kbyBxdWUgZXN0ZSBhZHF1aWVyYSBtYXMgZGUgMjAwMCBhw7FvcyBkZSBhbnRpZ3VlZGFkLiBSaWNoYXJkIE1jQ2xpbnRvY2ssIHVuIHByb2Zlc29yIGRlIExhdGluIGRlIGxhIFVuaXZlcnNpZGFkIGRlIEhhbXBkZW4tU3lkbmV5IGVuIFZpcmdpbmlhLCBlbmNvbnRyw7MgdW5hIGRlIGxhcyBwYWxhYnJhcyBtw6FzIG9zY3VyYXMgZGUgbGEgbGVuZ3VhIGRlbCBsYXTDrW4sICJjb25zZWN0ZXVyIiwgZW4gdW4gcGFzYWplIGRlIExvcmVtIElwc3VtLCB5IGFsIHNlZ3VpciBsZXllbmRvIGRpc3RpbnRvcyB0ZXh0b3MgZGVsIGxhdMOtbiwgZGVzY3VicmnDsyBsYSBmdWVudGUgaW5kdWRhYmxlLiBMb3JlbSBJcHN1bSB2aWVuZSBkZSBsYXMgc2VjY2lvbmVzIDEuMTAuMzIgeSAxLjEwLjMzIGRlICJkZSBGaW5uaWJ1cyBCb25vcnVtIGV0IE1hbG9ydW0iIChMb3MgRXh0cmVtb3MgZGVsIEJpZW4geSBFbCBNYWwpIHBvciBDaWNlcm8sIGVzY3JpdG8gZW4gZWwgYcOxbyA0NSBhbnRlcyBkZSBDcmlzdG8uIEVzdGUgbGlicm8gZXMgdW4gdHJhdGFkbyBkZSB0ZW9yw61hIGRlIMOpdGljYXMsIG11eSBwb3B1bGFyIGR1cmFudGUgZWwgUmVuYWNpbWllbnRvLiBMYSBwcmltZXJhIGxpbmVhIGRlbCBMb3JlbSBJcHN1bSwgIkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0Li4iLCB2aWVuZSBkZSB1bmEgbGluZWEgZW4gbGEgc2VjY2nDs24gMS4xMC4zMjwvcD48cD5FbCB0cm96byBkZSB0ZXh0byBlc3TDoW5kYXIgZGUgTG9yZW0gSXBzdW0gdXNhZG8gZGVzZGUgZWwgYcOxbyAxNTAwIGVzIHJlcHJvZHVjaWRvIGRlYmFqbyBwYXJhIGFxdWVsbG9zIGludGVyZXNhZG9zLiBMYXMgc2VjY2lvbmVzIDEuMTAuMzIgeSAxLjEwLjMzIGRlICJkZSBGaW5pYnVzIEJvbm9ydW0gZXQgTWFsb3J1bSIgcG9yIENpY2VybyBzb24gdGFtYmnDqW4gcmVwcm9kdWNpZGFzIGVuIHN1IGZvcm1hIG9yaWdpbmFsIGV4YWN0YSwgYWNvbXBhw7FhZGFzIHBvciB2ZXJzaW9uZXMgZW4gSW5nbMOpcyBkZSBsYSB0cmFkdWNjacOzbiByZWFsaXphZGEgZW4gMTkxNCBwb3IgSC4gUmFja2hhbS48L3A+PGgyPsK/RMOzbmRlIHB1ZWRvIGNvbnNlZ3VpcmxvPzwvaDI+PHA+SGF5IG11Y2hhcyB2YXJpYWNpb25lcyBkZSBsb3MgcGFzYWplcyBkZSBMb3JlbSBJcHN1bSBkaXNwb25pYmxlcywgcGVybyBsYSBtYXlvcsOtYSBzdWZyacOzIGFsdGVyYWNpb25lcyBlbiBhbGd1bmEgbWFuZXJhLCB5YSBzZWEgcG9ycXVlIHNlIGxlIGFncmVnw7MgaHVtb3IsIG8gcGFsYWJyYXMgYWxlYXRvcmlhcyBxdWUgbm8gcGFyZWNlbiBuaSB1biBwb2NvIGNyZcOtYmxlcy4gU2kgdmFzIGEgdXRpbGl6YXIgdW4gcGFzYWplIGRlIExvcmVtIElwc3VtLCBuZWNlc2l0w6FzIGVzdGFyIHNlZ3VybyBkZSBxdWUgbm8gaGF5IG5hZGEgYXZlcmdvbnphbnRlIGVzY29uZGlkbyBlbiBlbCBtZWRpbyBkZWwgdGV4dG8uIFRvZG9zIGxvcyBnZW5lcmFkb3JlcyBkZSBMb3JlbSBJcHN1bSBxdWUgc2UgZW5jdWVudHJhbiBlbiBJbnRlcm5ldCB0aWVuZGVuIGEgcmVwZXRpciB0cm96b3MgcHJlZGVmaW5pZG9zIGN1YW5kbyBzZWEgbmVjZXNhcmlvLCBoYWNpZW5kbyBhIGVzdGUgZWwgw7puaWNvIGdlbmVyYWRvciB2ZXJkYWRlcm8gKHbDoWxpZG8pIGVuIGxhIEludGVybmV0LiBVc2EgdW4gZGljY2lvbmFyaW8gZGUgbWFzIGRlIDIwMCBwYWxhYnJhcyBwcm92ZW5pZW50ZXMgZGVsIGxhdMOtbiwgY29tYmluYWRhcyBjb24gZXN0cnVjdHVyYXMgbXV5IMO6dGlsZXMgZGUgc2VudGVuY2lhcywgcGFyYSBnZW5lcmFyIHRleHRvIGRlIExvcmVtIElwc3VtIHF1ZSBwYXJlemNhIHJhem9uYWJsZS4gRXN0ZSBMb3JlbSBJcHN1bSBnZW5lcmFkbyBzaWVtcHJlIGVzdGFyw6EgbGlicmUgZGUgcmVwZXRpY2lvbmVzLCBodW1vciBhZ3JlZ2FkbyBvIHBhbGFicmFzIG5vIGNhcmFjdGVyw61zdGljYXMgZGVsIGxlbmd1YWplLCBldGMuPC9wPiI7fQ=='),
(572,	'',	'2018-05-21 10:03:30',	'2018-05-21 10:03:30',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjU3MiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDEyOToiPHAgZGF0YS1yZWRhY3Rvci1pbnNlcnRlZC1pbWFnZT0idHJ1ZSI+PGEgaHJlZj0ie0NDTTpCQVNFX1VSTH0vaW5kZXgucGhwL2Rvd25sb2FkX2ZpbGUvdmlld19pbmxpbmUvMzMiIGRhdGEtY29uY3JldGU1LWxpbmstbGlnaHRib3g9ImltYWdlIj48Y29uY3JldGUtcGljdHVyZSBmSUQ9IjMzIiBpZD0iaW1hZ2UtbWFya2VyIiB3aWR0aD0iMzQwIiBoZWlnaHQ9IjM0MyIgc3R5bGU9IndpZHRoOiAzNDBweDsgaGVpZ2h0OiAzNDNweDsgZmxvYXQ6IGxlZnQ7IG1hcmdpbjogMHB4IDEwcHggMTBweCAwcHg7IiBhbHQ9IiIgLz48L2E+PC9wPjxoMj7Cv1F1w6kgZXMgTG9yZW0gSXBzdW0/PC9oMj48cD48c3Ryb25nPkxvcmVtIElwc3VtPC9zdHJvbmc+IGVzIHNpbXBsZW1lbnRlIGVsIHRleHRvIGRlIHJlbGxlbm8gZGUgbGFzIGltcHJlbnRhcyB5IGFyY2hpdm9zIGRlIHRleHRvLiBMb3JlbSBJcHN1bSBoYSBzaWRvIGVsIHRleHRvIGRlIHJlbGxlbm8gZXN0w6FuZGFyIGRlIGxhcyBpbmR1c3RyaWFzIGRlc2RlIGVsIGHDsW8gMTUwMCwgY3VhbmRvIHVuIGltcHJlc29yIChOLiBkZWwgVC4gcGVyc29uYSBxdWUgc2UgZGVkaWNhIGEgbGEgaW1wcmVudGEpIGRlc2Nvbm9jaWRvIHVzw7MgdW5hIGdhbGVyw61hIGRlIHRleHRvcyB5IGxvcyBtZXpjbMOzIGRlIHRhbCBtYW5lcmEgcXVlIGxvZ3LDsyBoYWNlciB1biBsaWJybyBkZSB0ZXh0b3MgZXNwZWNpbWVuLiBObyBzw7NsbyBzb2JyZXZpdmnDsyA1MDAgYcOxb3MsIHNpbm8gcXVlIHRhbWJpZW4gaW5ncmVzw7MgY29tbyB0ZXh0byBkZSByZWxsZW5vIGVuIGRvY3VtZW50b3MgZWxlY3Ryw7NuaWNvcywgcXVlZGFuZG8gZXNlbmNpYWxtZW50ZSBpZ3VhbCBhbCBvcmlnaW5hbC4gRnVlIHBvcHVsYXJpemFkbyBlbiBsb3MgNjBzIGNvbiBsYSBjcmVhY2nDs24gZGUgbGFzIGhvamFzICJMZXRyYXNldCIsIGxhcyBjdWFsZXMgY29udGVuaWFuIHBhc2FqZXMgZGUgTG9yZW0gSXBzdW0sIHkgbcOhcyByZWNpZW50ZW1lbnRlIGNvbiBzb2Z0d2FyZSBkZSBhdXRvZWRpY2nDs24sIGNvbW8gcG9yIGVqZW1wbG8gQWxkdXMgUGFnZU1ha2VyLCBlbCBjdWFsIGluY2x1eWUgdmVyc2lvbmVzIGRlIExvcmVtIElwc3VtLjwvcD48aDI+wr9Qb3IgcXXDqSBsbyB1c2Ftb3M/PC9oMj48cD5FcyB1biBoZWNobyBlc3RhYmxlY2lkbyBoYWNlIGRlbWFzaWFkbyB0aWVtcG8gcXVlIHVuIGxlY3RvciBzZSBkaXN0cmFlcsOhIGNvbiBlbCBjb250ZW5pZG8gZGVsIHRleHRvIGRlIHVuIHNpdGlvIG1pZW50cmFzIHF1ZSBtaXJhIHN1IGRpc2XDsW8uIEVsIHB1bnRvIGRlIHVzYXIgTG9yZW0gSXBzdW0gZXMgcXVlIHRpZW5lIHVuYSBkaXN0cmlidWNpw7NuIG3DoXMgbyBtZW5vcyBub3JtYWwgZGUgbGFzIGxldHJhcywgYWwgY29udHJhcmlvIGRlIHVzYXIgdGV4dG9zIGNvbW8gcG9yIGVqZW1wbG8gIkNvbnRlbmlkbyBhcXXDrSwgY29udGVuaWRvIGFxdcOtIi4gRXN0b3MgdGV4dG9zIGhhY2VuIHBhcmVjZXJsbyB1biBlc3Bhw7FvbCBxdWUgc2UgcHVlZGUgbGVlci4gTXVjaG9zIHBhcXVldGVzIGRlIGF1dG9lZGljacOzbiB5IGVkaXRvcmVzIGRlIHDDoWdpbmFzIHdlYiB1c2FuIGVsIExvcmVtIElwc3VtIGNvbW8gc3UgdGV4dG8gcG9yIGRlZmVjdG8sIHkgYWwgaGFjZXIgdW5hIGLDunNxdWVkYSBkZSAiTG9yZW0gSXBzdW0iIHZhIGEgZGFyIHBvciByZXN1bHRhZG8gbXVjaG9zIHNpdGlvcyB3ZWIgcXVlIHVzYW4gZXN0ZSB0ZXh0byBzaSBzZSBlbmN1ZW50cmFuIGVuIGVzdGFkbyBkZSBkZXNhcnJvbGxvLiBNdWNoYXMgdmVyc2lvbmVzIGhhbiBldm9sdWNpb25hZG8gYSB0cmF2w6lzIGRlIGxvcyBhw7FvcywgYWxndW5hcyB2ZWNlcyBwb3IgYWNjaWRlbnRlLCBvdHJhcyB2ZWNlcyBhIHByb3DDs3NpdG8gKHBvciBlamVtcGxvIGluc2VydMOhbmRvbGUgaHVtb3IgeSBjb3NhcyBwb3IgZWwgZXN0aWxvKS48L3A+CjxoMj7Cv0RlIGTDs25kZSB2aWVuZT88L2gyPjxwPkFsIGNvbnRyYXJpbyBkZWwgcGVuc2FtaWVudG8gcG9wdWxhciwgZWwgdGV4dG8gZGUgTG9yZW0gSXBzdW0gbm8gZXMgc2ltcGxlbWVudGUgdGV4dG8gYWxlYXRvcmlvLiBUaWVuZSBzdXMgcmFpY2VzIGVuIHVuYSBwaWV6YSBjbMK0c2ljYSBkZSBsYSBsaXRlcmF0dXJhIGRlbCBMYXRpbiwgcXVlIGRhdGEgZGVsIGHDsW8gNDUgYW50ZXMgZGUgQ3Jpc3RvLCBoYWNpZW5kbyBxdWUgZXN0ZSBhZHF1aWVyYSBtYXMgZGUgMjAwMCBhw7FvcyBkZSBhbnRpZ3VlZGFkLiBSaWNoYXJkIE1jQ2xpbnRvY2ssIHVuIHByb2Zlc29yIGRlIExhdGluIGRlIGxhIFVuaXZlcnNpZGFkIGRlIEhhbXBkZW4tU3lkbmV5IGVuIFZpcmdpbmlhLCBlbmNvbnRyw7MgdW5hIGRlIGxhcyBwYWxhYnJhcyBtw6FzIG9zY3VyYXMgZGUgbGEgbGVuZ3VhIGRlbCBsYXTDrW4sICJjb25zZWN0ZXVyIiwgZW4gdW4gcGFzYWplIGRlIExvcmVtIElwc3VtLCB5IGFsIHNlZ3VpciBsZXllbmRvIGRpc3RpbnRvcyB0ZXh0b3MgZGVsIGxhdMOtbiwgZGVzY3VicmnDsyBsYSBmdWVudGUgaW5kdWRhYmxlLiBMb3JlbSBJcHN1bSB2aWVuZSBkZSBsYXMgc2VjY2lvbmVzIDEuMTAuMzIgeSAxLjEwLjMzIGRlICJkZSBGaW5uaWJ1cyBCb25vcnVtIGV0IE1hbG9ydW0iIChMb3MgRXh0cmVtb3MgZGVsIEJpZW4geSBFbCBNYWwpIHBvciBDaWNlcm8sIGVzY3JpdG8gZW4gZWwgYcOxbyA0NSBhbnRlcyBkZSBDcmlzdG8uIEVzdGUgbGlicm8gZXMgdW4gdHJhdGFkbyBkZSB0ZW9yw61hIGRlIMOpdGljYXMsIG11eSBwb3B1bGFyIGR1cmFudGUgZWwgUmVuYWNpbWllbnRvLiBMYSBwcmltZXJhIGxpbmVhIGRlbCBMb3JlbSBJcHN1bSwgIkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0Li4iLCB2aWVuZSBkZSB1bmEgbGluZWEgZW4gbGEgc2VjY2nDs24gMS4xMC4zMjwvcD48cD5FbCB0cm96byBkZSB0ZXh0byBlc3TDoW5kYXIgZGUgTG9yZW0gSXBzdW0gdXNhZG8gZGVzZGUgZWwgYcOxbyAxNTAwIGVzIHJlcHJvZHVjaWRvIGRlYmFqbyBwYXJhIGFxdWVsbG9zIGludGVyZXNhZG9zLiBMYXMgc2VjY2lvbmVzIDEuMTAuMzIgeSAxLjEwLjMzIGRlICJkZSBGaW5pYnVzIEJvbm9ydW0gZXQgTWFsb3J1bSIgcG9yIENpY2VybyBzb24gdGFtYmnDqW4gcmVwcm9kdWNpZGFzIGVuIHN1IGZvcm1hIG9yaWdpbmFsIGV4YWN0YSwgYWNvbXBhw7FhZGFzIHBvciB2ZXJzaW9uZXMgZW4gSW5nbMOpcyBkZSBsYSB0cmFkdWNjacOzbiByZWFsaXphZGEgZW4gMTkxNCBwb3IgSC4gUmFja2hhbS48L3A+PGgyPsK/RMOzbmRlIHB1ZWRvIGNvbnNlZ3VpcmxvPzwvaDI+PHA+SGF5IG11Y2hhcyB2YXJpYWNpb25lcyBkZSBsb3MgcGFzYWplcyBkZSBMb3JlbSBJcHN1bSBkaXNwb25pYmxlcywgcGVybyBsYSBtYXlvcsOtYSBzdWZyacOzIGFsdGVyYWNpb25lcyBlbiBhbGd1bmEgbWFuZXJhLCB5YSBzZWEgcG9ycXVlIHNlIGxlIGFncmVnw7MgaHVtb3IsIG8gcGFsYWJyYXMgYWxlYXRvcmlhcyBxdWUgbm8gcGFyZWNlbiBuaSB1biBwb2NvIGNyZcOtYmxlcy4gU2kgdmFzIGEgdXRpbGl6YXIgdW4gcGFzYWplIGRlIExvcmVtIElwc3VtLCBuZWNlc2l0w6FzIGVzdGFyIHNlZ3VybyBkZSBxdWUgbm8gaGF5IG5hZGEgYXZlcmdvbnphbnRlIGVzY29uZGlkbyBlbiBlbCBtZWRpbyBkZWwgdGV4dG8uIFRvZG9zIGxvcyBnZW5lcmFkb3JlcyBkZSBMb3JlbSBJcHN1bSBxdWUgc2UgZW5jdWVudHJhbiBlbiBJbnRlcm5ldCB0aWVuZGVuIGEgcmVwZXRpciB0cm96b3MgcHJlZGVmaW5pZG9zIGN1YW5kbyBzZWEgbmVjZXNhcmlvLCBoYWNpZW5kbyBhIGVzdGUgZWwgw7puaWNvIGdlbmVyYWRvciB2ZXJkYWRlcm8gKHbDoWxpZG8pIGVuIGxhIEludGVybmV0LiBVc2EgdW4gZGljY2lvbmFyaW8gZGUgbWFzIGRlIDIwMCBwYWxhYnJhcyBwcm92ZW5pZW50ZXMgZGVsIGxhdMOtbiwgY29tYmluYWRhcyBjb24gZXN0cnVjdHVyYXMgbXV5IMO6dGlsZXMgZGUgc2VudGVuY2lhcywgcGFyYSBnZW5lcmFyIHRleHRvIGRlIExvcmVtIElwc3VtIHF1ZSBwYXJlemNhIHJhem9uYWJsZS4gRXN0ZSBMb3JlbSBJcHN1bSBnZW5lcmFkbyBzaWVtcHJlIGVzdGFyw6EgbGlicmUgZGUgcmVwZXRpY2lvbmVzLCBodW1vciBhZ3JlZ2FkbyBvIHBhbGFicmFzIG5vIGNhcmFjdGVyw61zdGljYXMgZGVsIGxlbmd1YWplLCBldGMuPC9wPiI7fQ=='),
(573,	'',	'2018-05-21 10:04:33',	'2018-05-21 10:04:33',	NULL,	'1',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjU3MyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDIyNDoiPGgyPsK/UXXDqSBlcyBMb3JlbSBJcHN1bT88L2gyPjxwIGRhdGEtcmVkYWN0b3ItaW5zZXJ0ZWQtaW1hZ2U9InRydWUiPjxhIGhyZWY9IntDQ006QkFTRV9VUkx9L2luZGV4LnBocC9kb3dubG9hZF9maWxlL3ZpZXdfaW5saW5lLzMzIiBkYXRhLWNvbmNyZXRlNS1saW5rLWxpZ2h0Ym94PSJpbWFnZSI+PGNvbmNyZXRlLXBpY3R1cmUgZklEPSIzMyIgaWQ9ImltYWdlLW1hcmtlciIgd2lkdGg9IjM5MCIgaGVpZ2h0PSIzOTQiIGFsdD0iIiBzdHlsZT0id2lkdGg6IDM5MHB4OyBoZWlnaHQ6IDM5NHB4OyBmbG9hdDogbGVmdDsgbWFyZ2luOiAwcHggMTBweCAxMHB4IDBweDsiIC8+PC9hPg0KPC9wPjxwIHN0eWxlPSJ0ZXh0LWFsaWduOiBqdXN0aWZ5OyI+PHN0cm9uZz5Mb3JlbSBJcHN1bTwvc3Ryb25nPiBlcyBzaW1wbGVtZW50ZSBlbCB0ZXh0byBkZSByZWxsZW5vIGRlIGxhcyBpbXByZW50YXMgeSBhcmNoaXZvcyBkZSB0ZXh0by4gTG9yZW0gSXBzdW0gaGEgc2lkbyBlbCB0ZXh0byBkZSByZWxsZW5vIGVzdMOhbmRhciBkZSBsYXMgaW5kdXN0cmlhcyBkZXNkZSBlbCBhw7FvIDE1MDAsIGN1YW5kbyB1biBpbXByZXNvciAoTi4gZGVsIFQuIHBlcnNvbmEgcXVlIHNlIGRlZGljYSBhIGxhIGltcHJlbnRhKSBkZXNjb25vY2lkbyB1c8OzIHVuYSBnYWxlcsOtYSBkZSB0ZXh0b3MgeSBsb3MgbWV6Y2zDsyBkZSB0YWwgbWFuZXJhIHF1ZSBsb2dyw7MgaGFjZXIgdW4gbGlicm8gZGUgdGV4dG9zIGVzcGVjaW1lbi4gTm8gc8OzbG8gc29icmV2aXZpw7MgNTAwIGHDsW9zLCBzaW5vIHF1ZSB0YW1iaWVuIGluZ3Jlc8OzIGNvbW8gdGV4dG8gZGUgcmVsbGVubyBlbiBkb2N1bWVudG9zIGVsZWN0csOzbmljb3MsIHF1ZWRhbmRvIGVzZW5jaWFsbWVudGUgaWd1YWwgYWwgb3JpZ2luYWwuIEZ1ZSBwb3B1bGFyaXphZG8gZW4gbG9zIDYwcyBjb24gbGEgY3JlYWNpw7NuIGRlIGxhcyBob2phcyAiTGV0cmFzZXQiLCBsYXMgY3VhbGVzIGNvbnRlbmlhbiBwYXNhamVzIGRlIExvcmVtIElwc3VtLCB5IG3DoXMgcmVjaWVudGVtZW50ZSBjb24gc29mdHdhcmUgZGUgYXV0b2VkaWNpw7NuLCBjb21vIHBvciBlamVtcGxvIEFsZHVzIFBhZ2VNYWtlciwgZWwgY3VhbCBpbmNsdXllIHZlcnNpb25lcyBkZSBMb3JlbSBJcHN1bS4NCjwvcD48aDI+PGJyPjwvaDI+PGgyPjxicj48L2gyPjxoMj7Cv1BvciBxdcOpIGxvIHVzYW1vcz88L2gyPjxwIHN0eWxlPSJ0ZXh0LWFsaWduOiBqdXN0aWZ5OyI+RXMgdW4gaGVjaG8gZXN0YWJsZWNpZG8gaGFjZSBkZW1hc2lhZG8gdGllbXBvIHF1ZSB1biBsZWN0b3Igc2UgZGlzdHJhZXLDoSBjb24gZWwgY29udGVuaWRvIGRlbCB0ZXh0byBkZSB1biBzaXRpbyBtaWVudHJhcyBxdWUgbWlyYSBzdSBkaXNlw7FvLiBFbCBwdW50byBkZSB1c2FyIExvcmVtIElwc3VtIGVzIHF1ZSB0aWVuZSB1bmEgZGlzdHJpYnVjacOzbiBtw6FzIG8gbWVub3Mgbm9ybWFsIGRlIGxhcyBsZXRyYXMsIGFsIGNvbnRyYXJpbyBkZSB1c2FyIHRleHRvcyBjb21vIHBvciBlamVtcGxvICJDb250ZW5pZG8gYXF1w60sIGNvbnRlbmlkbyBhcXXDrSIuIEVzdG9zIHRleHRvcyBoYWNlbiBwYXJlY2VybG8gdW4gZXNwYcOxb2wgcXVlIHNlIHB1ZWRlIGxlZXIuIE11Y2hvcyBwYXF1ZXRlcyBkZSBhdXRvZWRpY2nDs24geSBlZGl0b3JlcyBkZSBww6FnaW5hcyB3ZWIgdXNhbiBlbCBMb3JlbSBJcHN1bSBjb21vIHN1IHRleHRvIHBvciBkZWZlY3RvLCB5IGFsIGhhY2VyIHVuYSBiw7pzcXVlZGEgZGUgIkxvcmVtIElwc3VtIiB2YSBhIGRhciBwb3IgcmVzdWx0YWRvIG11Y2hvcyBzaXRpb3Mgd2ViIHF1ZSB1c2FuIGVzdGUgdGV4dG8gc2kgc2UgZW5jdWVudHJhbiBlbiBlc3RhZG8gZGUgZGVzYXJyb2xsby4gTXVjaGFzIHZlcnNpb25lcyBoYW4gZXZvbHVjaW9uYWRvIGEgdHJhdsOpcyBkZSBsb3MgYcOxb3MsIGFsZ3VuYXMgdmVjZXMgcG9yIGFjY2lkZW50ZSwgb3RyYXMgdmVjZXMgYSBwcm9ww7NzaXRvIChwb3IgZWplbXBsbyBpbnNlcnTDoW5kb2xlIGh1bW9yIHkgY29zYXMgcG9yIGVsIGVzdGlsbykuDQo8L3A+PGgyPsK/RGUgZMOzbmRlIHZpZW5lPzwvaDI+PHA+QWwgY29udHJhcmlvIGRlbCBwZW5zYW1pZW50byBwb3B1bGFyLCBlbCB0ZXh0byBkZSBMb3JlbSBJcHN1bSBubyBlcyBzaW1wbGVtZW50ZSB0ZXh0byBhbGVhdG9yaW8uIFRpZW5lIHN1cyByYWljZXMgZW4gdW5hIHBpZXphIGNswrRzaWNhIGRlIGxhIGxpdGVyYXR1cmEgZGVsIExhdGluLCBxdWUgZGF0YSBkZWwgYcOxbyA0NSBhbnRlcyBkZSBDcmlzdG8sIGhhY2llbmRvIHF1ZSBlc3RlIGFkcXVpZXJhIG1hcyBkZSAyMDAwIGHDsW9zIGRlIGFudGlndWVkYWQuIFJpY2hhcmQgTWNDbGludG9jaywgdW4gcHJvZmVzb3IgZGUgTGF0aW4gZGUgbGEgVW5pdmVyc2lkYWQgZGUgSGFtcGRlbi1TeWRuZXkgZW4gVmlyZ2luaWEsIGVuY29udHLDsyB1bmEgZGUgbGFzIHBhbGFicmFzIG3DoXMgb3NjdXJhcyBkZSBsYSBsZW5ndWEgZGVsIGxhdMOtbiwgImNvbnNlY3RldXIiLCBlbiB1biBwYXNhamUgZGUgTG9yZW0gSXBzdW0sIHkgYWwgc2VndWlyIGxleWVuZG8gZGlzdGludG9zIHRleHRvcyBkZWwgbGF0w61uLCBkZXNjdWJyacOzIGxhIGZ1ZW50ZSBpbmR1ZGFibGUuIExvcmVtIElwc3VtIHZpZW5lIGRlIGxhcyBzZWNjaW9uZXMgMS4xMC4zMiB5IDEuMTAuMzMgZGUgImRlIEZpbm5pYnVzIEJvbm9ydW0gZXQgTWFsb3J1bSIgKExvcyBFeHRyZW1vcyBkZWwgQmllbiB5IEVsIE1hbCkgcG9yIENpY2VybywgZXNjcml0byBlbiBlbCBhw7FvIDQ1IGFudGVzIGRlIENyaXN0by4gRXN0ZSBsaWJybyBlcyB1biB0cmF0YWRvIGRlIHRlb3LDrWEgZGUgw6l0aWNhcywgbXV5IHBvcHVsYXIgZHVyYW50ZSBlbCBSZW5hY2ltaWVudG8uIExhIHByaW1lcmEgbGluZWEgZGVsIExvcmVtIElwc3VtLCAiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQuLiIsIHZpZW5lIGRlIHVuYSBsaW5lYSBlbiBsYSBzZWNjacOzbiAxLjEwLjMyDQo8L3A+PHA+RWwgdHJvem8gZGUgdGV4dG8gZXN0w6FuZGFyIGRlIExvcmVtIElwc3VtIHVzYWRvIGRlc2RlIGVsIGHDsW8gMTUwMCBlcyByZXByb2R1Y2lkbyBkZWJham8gcGFyYSBhcXVlbGxvcyBpbnRlcmVzYWRvcy4gTGFzIHNlY2Npb25lcyAxLjEwLjMyIHkgMS4xMC4zMyBkZSAiZGUgRmluaWJ1cyBCb25vcnVtIGV0IE1hbG9ydW0iIHBvciBDaWNlcm8gc29uIHRhbWJpw6luIHJlcHJvZHVjaWRhcyBlbiBzdSBmb3JtYSBvcmlnaW5hbCBleGFjdGEsIGFjb21wYcOxYWRhcyBwb3IgdmVyc2lvbmVzIGVuIEluZ2zDqXMgZGUgbGEgdHJhZHVjY2nDs24gcmVhbGl6YWRhIGVuIDE5MTQgcG9yIEguIFJhY2toYW0uDQo8L3A+PGgyPsK/RMOzbmRlIHB1ZWRvIGNvbnNlZ3VpcmxvPzwvaDI+PHA+SGF5IG11Y2hhcyB2YXJpYWNpb25lcyBkZSBsb3MgcGFzYWplcyBkZSBMb3JlbSBJcHN1bSBkaXNwb25pYmxlcywgcGVybyBsYSBtYXlvcsOtYSBzdWZyacOzIGFsdGVyYWNpb25lcyBlbiBhbGd1bmEgbWFuZXJhLCB5YSBzZWEgcG9ycXVlIHNlIGxlIGFncmVnw7MgaHVtb3IsIG8gcGFsYWJyYXMgYWxlYXRvcmlhcyBxdWUgbm8gcGFyZWNlbiBuaSB1biBwb2NvIGNyZcOtYmxlcy4gU2kgdmFzIGEgdXRpbGl6YXIgdW4gcGFzYWplIGRlIExvcmVtIElwc3VtLCBuZWNlc2l0w6FzIGVzdGFyIHNlZ3VybyBkZSBxdWUgbm8gaGF5IG5hZGEgYXZlcmdvbnphbnRlIGVzY29uZGlkbyBlbiBlbCBtZWRpbyBkZWwgdGV4dG8uIFRvZG9zIGxvcyBnZW5lcmFkb3JlcyBkZSBMb3JlbSBJcHN1bSBxdWUgc2UgZW5jdWVudHJhbiBlbiBJbnRlcm5ldCB0aWVuZGVuIGEgcmVwZXRpciB0cm96b3MgcHJlZGVmaW5pZG9zIGN1YW5kbyBzZWEgbmVjZXNhcmlvLCBoYWNpZW5kbyBhIGVzdGUgZWwgw7puaWNvIGdlbmVyYWRvciB2ZXJkYWRlcm8gKHbDoWxpZG8pIGVuIGxhIEludGVybmV0LiBVc2EgdW4gZGljY2lvbmFyaW8gZGUgbWFzIGRlIDIwMCBwYWxhYnJhcyBwcm92ZW5pZW50ZXMgZGVsIGxhdMOtbiwgY29tYmluYWRhcyBjb24gZXN0cnVjdHVyYXMgbXV5IMO6dGlsZXMgZGUgc2VudGVuY2lhcywgcGFyYSBnZW5lcmFyIHRleHRvIGRlIExvcmVtIElwc3VtIHF1ZSBwYXJlemNhIHJhem9uYWJsZS4gRXN0ZSBMb3JlbSBJcHN1bSBnZW5lcmFkbyBzaWVtcHJlIGVzdGFyw6EgbGlicmUgZGUgcmVwZXRpY2lvbmVzLCBodW1vciBhZ3JlZ2FkbyBvIHBhbGFicmFzIG5vIGNhcmFjdGVyw61zdGljYXMgZGVsIGxlbmd1YWplLCBldGMuDQo8L3A+Ijt9'),
(578,	'',	'2018-05-21 10:09:48',	'2018-05-21 10:09:48',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjU3OCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MjE6IjxwPnRleHRvIHNlbmNpbGxvPC9wPiI7fQ=='),
(579,	'',	'2018-05-21 10:11:49',	'2018-05-21 10:15:54',	'Estilo-A.php',	'1',	20,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjU3OSI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0VG9waWNMaXN0IjtzOjQ6Im1vZGUiO3M6MToiUyI7czoyMzoidG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MTA6ImNhdGVnb3JpYXMiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjIiO3M6OToiY1BhcmVudElEIjtpOjA7czo1OiJ0aXRsZSI7czowOiIiO30='),
(581,	'',	'2018-05-21 10:13:07',	'2018-05-21 10:13:07',	NULL,	'0',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjU4MSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MzIzMDoiPHAgZGF0YS1yZWRhY3Rvci1pbnNlcnRlZC1pbWFnZT0idHJ1ZSI+PGEgaHJlZj0ie0NDTTpCQVNFX1VSTH0vaW5kZXgucGhwL2Rvd25sb2FkX2ZpbGUvdmlld19pbmxpbmUvMTQiIGRhdGEtY29uY3JldGU1LWxpbmstbGlnaHRib3g9ImltYWdlIj48Y29uY3JldGUtcGljdHVyZSBmSUQ9IjE0IiBpZD0iaW1hZ2UtbWFya2VyIiB3aWR0aD0iMjUyIiBoZWlnaHQ9IjE4OSIgYWx0PSIiIHN0eWxlPSJ3aWR0aDogMjUycHg7IGhlaWdodDogMTg5cHg7IGZsb2F0OiBsZWZ0OyBtYXJnaW46IDBweCAxMHB4IDEwcHggMHB4OyIgLz48L2E+PC9wPjxoMj7Cv1F1w6kgZXMgTG9yZW0gSXBzdW0/PC9oMj48cD48c3Ryb25nPkxvcmVtIElwc3VtPC9zdHJvbmc+IGVzIHNpbXBsZW1lbnRlIGVsIHRleHRvIGRlIHJlbGxlbm8gZGUgbGFzIGltcHJlbnRhcyB5IGFyY2hpdm9zIGRlIHRleHRvLiBMb3JlbSBJcHN1bSBoYSBzaWRvIGVsIHRleHRvIGRlIHJlbGxlbm8gZXN0w6FuZGFyIGRlIGxhcyBpbmR1c3RyaWFzIGRlc2RlIGVsIGHDsW8gMTUwMCwgY3VhbmRvIHVuIGltcHJlc29yIChOLiBkZWwgVC4gcGVyc29uYSBxdWUgc2UgZGVkaWNhIGEgbGEgaW1wcmVudGEpIGRlc2Nvbm9jaWRvIHVzw7MgdW5hIGdhbGVyw61hIGRlIHRleHRvcyB5IGxvcyBtZXpjbMOzIGRlIHRhbCBtYW5lcmEgcXVlIGxvZ3LDsyBoYWNlciB1biBsaWJybyBkZSB0ZXh0b3MgZXNwZWNpbWVuLiBObyBzw7NsbyBzb2JyZXZpdmnDsyA1MDAgYcOxb3MsIHNpbm8gcXVlIHRhbWJpZW4gaW5ncmVzw7MgY29tbyB0ZXh0byBkZSByZWxsZW5vIGVuIGRvY3VtZW50b3MgZWxlY3Ryw7NuaWNvcywgcXVlZGFuZG8gZXNlbmNpYWxtZW50ZSBpZ3VhbCBhbCBvcmlnaW5hbC4gRnVlIHBvcHVsYXJpemFkbyBlbiBsb3MgNjBzIGNvbiBsYSBjcmVhY2nDs24gZGUgbGFzIGhvamFzICJMZXRyYXNldCIsIGxhcyBjdWFsZXMgY29udGVuaWFuIHBhc2FqZXMgZGUgTG9yZW0gSXBzdW0sIHkgbcOhcyByZWNpZW50ZW1lbnRlIGNvbiBzb2Z0d2FyZSBkZSBhdXRvZWRpY2nDs24sIGNvbW8gcG9yIGVqZW1wbG8gQWxkdXMgUGFnZU1ha2VyLCBlbCBjdWFsIGluY2x1eWUgdmVyc2lvbmVzIGRlIExvcmVtIElwc3VtLjwvcD48aDI+wr9Qb3IgcXXDqSBsbyB1c2Ftb3M/PC9oMj48cD5FcyB1biBoZWNobyBlc3RhYmxlY2lkbyBoYWNlIGRlbWFzaWFkbyB0aWVtcG8gcXVlIHVuIGxlY3RvciBzZSBkaXN0cmFlcsOhIGNvbiBlbCBjb250ZW5pZG8gZGVsIHRleHRvIGRlIHVuIHNpdGlvIG1pZW50cmFzIHF1ZSBtaXJhIHN1IGRpc2XDsW8uIEVsIHB1bnRvIGRlIHVzYXIgTG9yZW0gSXBzdW0gZXMgcXVlIHRpZW5lIHVuYSBkaXN0cmlidWNpw7NuIG3DoXMgbyBtZW5vcyBub3JtYWwgZGUgbGFzIGxldHJhcywgYWwgY29udHJhcmlvIGRlIHVzYXIgdGV4dG9zIGNvbW8gcG9yIGVqZW1wbG8gIkNvbnRlbmlkbyBhcXXDrSwgY29udGVuaWRvIGFxdcOtIi4gRXN0b3MgdGV4dG9zIGhhY2VuIHBhcmVjZXJsbyB1biBlc3Bhw7FvbCBxdWUgc2UgcHVlZGUgbGVlci4gTXVjaG9zIHBhcXVldGVzIGRlIGF1dG9lZGljacOzbiB5IGVkaXRvcmVzIGRlIHDDoWdpbmFzIHdlYiB1c2FuIGVsIExvcmVtIElwc3VtIGNvbW8gc3UgdGV4dG8gcG9yIGRlZmVjdG8sIHkgYWwgaGFjZXIgdW5hIGLDunNxdWVkYSBkZSAiTG9yZW0gSXBzdW0iIHZhIGEgZGFyIHBvciByZXN1bHRhZG8gbXVjaG9zIHNpdGlvcyB3ZWIgcXVlIHVzYW4gZXN0ZSB0ZXh0byBzaSBzZSBlbmN1ZW50cmFuIGVuIGVzdGFkbyBkZSBkZXNhcnJvbGxvLiBNdWNoYXMgdmVyc2lvbmVzIGhhbiBldm9sdWNpb25hZG8gYSB0cmF2w6lzIGRlIGxvcyBhw7FvcywgYWxndW5hcyB2ZWNlcyBwb3IgYWNjaWRlbnRlLCBvdHJhcyB2ZWNlcyBhIHByb3DDs3NpdG8gKHBvciBlamVtcGxvIGluc2VydMOhbmRvbGUgaHVtb3IgeSBjb3NhcyBwb3IgZWwgZXN0aWxvKS48L3A+PGgyPsK/RGUgZMOzbmRlIHZpZW5lPzwvaDI+PHA+QWwgY29udHJhcmlvIGRlbCBwZW5zYW1pZW50byBwb3B1bGFyLCBlbCB0ZXh0byBkZSBMb3JlbSBJcHN1bSBubyBlcyBzaW1wbGVtZW50ZSB0ZXh0byBhbGVhdG9yaW8uIFRpZW5lIHN1cyByYWljZXMgZW4gdW5hIHBpZXphIGNswrRzaWNhIGRlIGxhIGxpdGVyYXR1cmEgZGVsIExhdGluLCBxdWUgZGF0YSBkZWwgYcOxbyA0NSBhbnRlcyBkZSBDcmlzdG8sIGhhY2llbmRvIHF1ZSBlc3RlIGFkcXVpZXJhIG1hcyBkZSAyMDAwIGHDsW9zIGRlIGFudGlndWVkYWQuIFJpY2hhcmQgTWNDbGludG9jaywgdW4gcHJvZmVzb3IgZGUgTGF0aW4gZGUgbGEgVW5pdmVyc2lkYWQgZGUgSGFtcGRlbi1TeWRuZXkgZW4gVmlyZ2luaWEsIGVuY29udHLDsyB1bmEgZGUgbGFzIHBhbGFicmFzIG3DoXMgb3NjdXJhcyBkZSBsYSBsZW5ndWEgZGVsIGxhdMOtbiwgImNvbnNlY3RldXIiLCBlbiB1biBwYXNhamUgZGUgTG9yZW0gSXBzdW0sIHkgYWwgc2VndWlyIGxleWVuZG8gZGlzdGludG9zIHRleHRvcyBkZWwgbGF0w61uLCBkZXNjdWJyacOzIGxhIGZ1ZW50ZSBpbmR1ZGFibGUuIExvcmVtIElwc3VtIHZpZW5lIGRlIGxhcyBzZWNjaW9uZXMgMS4xMC4zMiB5IDEuMTAuMzMgZGUgImRlIEZpbm5pYnVzIEJvbm9ydW0gZXQgTWFsb3J1bSIgKExvcyBFeHRyZW1vcyBkZWwgQmllbiB5IEVsIE1hbCkgcG9yIENpY2VybywgZXNjcml0byBlbiBlbCBhw7FvIDQ1IGFudGVzIGRlIENyaXN0by4gRXN0ZSBsaWJybyBlcyB1biB0cmF0YWRvIGRlIHRlb3LDrWEgZGUgw6l0aWNhcywgbXV5IHBvcHVsYXIgZHVyYW50ZSBlbCBSZW5hY2ltaWVudG8uIExhIHByaW1lcmEgbGluZWEgZGVsIExvcmVtIElwc3VtLCAiTG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQuLiIsIHZpZW5lIGRlIHVuYSBsaW5lYSBlbiBsYSBzZWNjacOzbiAxLjEwLjMyPC9wPjxwPkVsIHRyb3pvIGRlIHRleHRvIGVzdMOhbmRhciBkZSBMb3JlbSBJcHN1bSB1c2FkbyBkZXNkZSBlbCBhw7FvIDE1MDAgZXMgcmVwcm9kdWNpZG8gZGViYWpvIHBhcmEgYXF1ZWxsb3MgaW50ZXJlc2Fkb3MuIExhcyBzZWNjaW9uZXMgMS4xMC4zMiB5IDEuMTAuMzMgZGUgImRlIEZpbmlidXMgQm9ub3J1bSBldCBNYWxvcnVtIiBwb3IgQ2ljZXJvIHNvbiB0YW1iacOpbiByZXByb2R1Y2lkYXMgZW4gc3UgZm9ybWEgb3JpZ2luYWwgZXhhY3RhLCBhY29tcGHDsWFkYXMgcG9yIHZlcnNpb25lcyBlbiBJbmdsw6lzIGRlIGxhIHRyYWR1Y2Npw7NuIHJlYWxpemFkYSBlbiAxOTE0IHBvciBILiBSYWNraGFtLjwvcD4iO30='),
(582,	'',	'2018-05-21 10:13:20',	'2018-05-21 10:13:57',	'',	'1',	20,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjU4MiI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0VG9waWNMaXN0IjtzOjQ6Im1vZGUiO3M6MToiUCI7czoyMzoidG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MTA6ImNhdGVnb3JpYXMiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjIiO3M6OToiY1BhcmVudElEIjtpOjE1OTtzOjU6InRpdGxlIjtzOjA6IiI7fQ=='),
(583,	'',	'2018-05-21 10:14:26',	'2018-05-21 10:14:26',	'Estilo-A.php',	'1',	20,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjU4MyI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0VG9waWNMaXN0IjtzOjQ6Im1vZGUiO3M6MToiUCI7czoyMzoidG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MTA6ImNhdGVnb3JpYXMiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjIiO3M6OToiY1BhcmVudElEIjtzOjM6IjE1OSI7czo1OiJ0aXRsZSI7czowOiIiO30='),
(584,	'',	'2018-05-21 10:23:32',	'2018-05-21 10:23:33',	'Estilo A',	'1',	32,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjU4NCI7czo5OiIAKgBfdGFibGUiO3M6ODoiYnRTZWFyY2giO3M6NToidGl0bGUiO3M6MDoiIjtzOjEwOiJidXR0b25UZXh0IjtzOjY6IkJ1c2NhciI7czoxNDoiYmFzZVNlYXJjaFBhdGgiO3M6MDoiIjtzOjEwOiJwb3N0VG9fY0lEIjtzOjM6IjIxMyI7czoxMDoicmVzdWx0c1VSTCI7czowOiIiO30='),
(585,	'',	'2018-05-21 10:24:22',	'2018-05-21 10:24:22',	NULL,	'0',	25,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjU4NSI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NDU3NzoiPHNjcmlwdD4NCiAgICB2YXIgbWluPTEyOw0KICAgIHZhciBtYXg9MzA7DQogICAgZnVuY3Rpb24gaW5jcmVhc2VGb250U2l6ZSgpIHsNCg0KICAgICAgIHZhciBwID0gZG9jdW1lbnQuZ2V0RWxlbWVudHNCeVRhZ05hbWUoJ3AnKTsNCiAgICAgICB2YXIgYmxvY2txdW90ZSA9IGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCdibG9ja3F1b3RlJyk7DQogICAgICAgdmFyIGNvbGxlY3Rpb24gPSBkb2N1bWVudC5nZXRFbGVtZW50c0J5Q2xhc3NOYW1lKCJjb2xsZWN0aW9uIik7DQogICAgICAgDQogICAgICAgZm9yKGk9MDtpPHAubGVuZ3RoO2krKykgew0KDQogICAgICAgICAgaWYocFtpXS5zdHlsZS5mb250U2l6ZSkgew0KICAgICAgICAgICAgIHZhciBzID0gcGFyc2VJbnQocFtpXS5zdHlsZS5mb250U2l6ZS5yZXBsYWNlKCJweCIsIiIpKTsNCiAgICAgICAgICB9IGVsc2Ugew0KDQogICAgICAgICAgICAgdmFyIHMgPSAxNDsNCiAgICAgICAgICB9DQogICAgICAgICAgaWYocyE9bWF4KSB7DQoNCiAgICAgICAgICAgICBzICs9IDE7DQogICAgICAgICAgfQ0KICAgICAgICAgIHBbaV0uc3R5bGUuZm9udFNpemUgPSBzKyJweCI7DQogICAgICAgfQ0KICAgICAgIGZvcihpPTA7aTxibG9ja3F1b3RlLmxlbmd0aDtpKyspIHsNCiAgICAgICAgICBpZihibG9ja3F1b3RlW2ldLnN0eWxlLmZvbnRTaXplKSB7DQogICAgICAgICAgICAgdmFyIGIgPSBwYXJzZUludChibG9ja3F1b3RlW2ldLnN0eWxlLmZvbnRTaXplLnJlcGxhY2UoInB4IiwiIikpOw0KICAgICAgICAgIH0gZWxzZSB7DQoNCiAgICAgICAgICAgICB2YXIgYiA9IDE0Ow0KICAgICAgICAgIH0NCiAgICAgICAgICBpZihzIT1tYXgpIHsNCg0KICAgICAgICAgICAgIGIgKz0gMTsNCiAgICAgICAgICB9DQogICAgICAgICAgYmxvY2txdW90ZVtpXS5zdHlsZS5mb250U2l6ZSA9IGIrInB4IjsNCiAgICAgICB9DQogICAgICAgZm9yKGk9MDtpPGNvbGxlY3Rpb24ubGVuZ3RoO2krKykgew0KICAgICAgICAgIGlmKGNvbGxlY3Rpb25baV0uc3R5bGUuZm9udFNpemUpIHsNCiAgICAgICAgICAgICB2YXIgYyA9IHBhcnNlSW50KGNvbGxlY3Rpb25baV0uc3R5bGUuZm9udFNpemUucmVwbGFjZSgicHgiLCIiKSk7DQogICAgICAgICAgfSBlbHNlIHsNCg0KICAgICAgICAgICAgIHZhciBjID0gMTQ7DQogICAgICAgICAgfQ0KICAgICAgICAgIGlmKHMhPW1heCkgew0KDQogICAgICAgICAgICAgYyArPSAxOw0KICAgICAgICAgIH0NCiAgICAgICAgICBjb2xsZWN0aW9uW2ldLnN0eWxlLmZvbnRTaXplID0gYysicHgiOw0KICAgICAgIH0NCiAgICB9DQogICAgZnVuY3Rpb24gZGVjcmVhc2VGb250U2l6ZSgpIHsNCiAgICAgICB2YXIgcCA9IGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCdwJyk7DQogICAgICAgdmFyIGJsb2NrcXVvdGUgPSBkb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgnYmxvY2txdW90ZScpOw0KICAgICAgIHZhciBjb2xsZWN0aW9uID0gZG9jdW1lbnQuZ2V0RWxlbWVudHNCeUNsYXNzTmFtZSgiY29sbGVjdGlvbiIpOw0KICAgICAgIA0KICAgICAgIGZvcihpPTA7aTxwLmxlbmd0aDtpKyspIHsNCiAgICAgICAgICBpZihwW2ldLnN0eWxlLmZvbnRTaXplKSB7DQogICAgICAgICAgICAgdmFyIHMgPSBwYXJzZUludChwW2ldLnN0eWxlLmZvbnRTaXplLnJlcGxhY2UoInB4IiwiIikpOw0KICAgICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAgdmFyIHMgPSAxNDsNCiAgICAgICAgICB9DQogICAgICAgICAgaWYocyE9bWluKSB7DQogICAgICAgICAgICAgcyAtPSAxOw0KICAgICAgICAgIH0NCiAgICAgICAgICBwW2ldLnN0eWxlLmZvbnRTaXplID0gcysicHgiOw0KICAgICAgIH0NCiAgICAgICBmb3IoaT0wO2k8YmxvY2txdW90ZS5sZW5ndGg7aSsrKSB7DQogICAgICAgICAgaWYoYmxvY2txdW90ZVtpXS5zdHlsZS5mb250U2l6ZSkgew0KICAgICAgICAgICAgIHZhciBiID0gcGFyc2VJbnQoYmxvY2txdW90ZVtpXS5zdHlsZS5mb250U2l6ZS5yZXBsYWNlKCJweCIsIiIpKTsNCiAgICAgICAgICB9IGVsc2Ugew0KICAgICAgICAgICAgIHZhciBiID0gMTQ7DQogICAgICAgICAgfQ0KICAgICAgICAgIGlmKHMhPW1heCkgew0KICAgICAgICAgICAgIGIgLT0gMTsNCiAgICAgICAgICB9DQogICAgICAgICAgYmxvY2txdW90ZVtpXS5zdHlsZS5mb250U2l6ZSA9IGIrInB4Ig0KICAgICAgIH0NCiAgICAgICBmb3IoaT0wO2k8Y29sbGVjdGlvbi5sZW5ndGg7aSsrKSB7DQogICAgICAgICAgaWYoY29sbGVjdGlvbltpXS5zdHlsZS5mb250U2l6ZSkgew0KICAgICAgICAgICAgIHZhciBjID0gcGFyc2VJbnQoY29sbGVjdGlvbltpXS5zdHlsZS5mb250U2l6ZS5yZXBsYWNlKCJweCIsIiIpKTsNCiAgICAgICAgICB9IGVsc2Ugew0KDQogICAgICAgICAgICAgdmFyIGMgPSAxNDsNCiAgICAgICAgICB9DQogICAgICAgICAgaWYocyE9bWF4KSB7DQoNCiAgICAgICAgICAgICBjIC09IDE7DQogICAgICAgICAgfQ0KICAgICAgICAgIGNvbGxlY3Rpb25baV0uc3R5bGUuZm9udFNpemUgPSBjKyJweCI7DQogICAgICAgfQ0KICAgIH0NCiAgICBmdW5jdGlvbiBub3JtYWxGb250U2l6ZSgpIHsNCiAgICAgICB2YXIgcCA9IGRvY3VtZW50LmdldEVsZW1lbnRzQnlUYWdOYW1lKCdwJyk7DQogICAgICAgdmFyIGJsb2NrcXVvdGUgPSBkb2N1bWVudC5nZXRFbGVtZW50c0J5VGFnTmFtZSgnYmxvY2txdW90ZScpOw0KICAgICAgIHZhciBjb2xsZWN0aW9uID0gZG9jdW1lbnQuZ2V0RWxlbWVudHNCeUNsYXNzTmFtZSgiY29sbGVjdGlvbiIpOw0KICAgICAgIA0KICAgICAgIGZvcihpPTA7aTxwLmxlbmd0aDtpKyspIHsNCiAgICAgICAgICBwW2ldLnJlbW92ZUF0dHJpYnV0ZSgnc3R5bGUnKTsNCiAgICAgICB9DQogICAgICAgZm9yKGk9MDtpPGJsb2NrcXVvdGUubGVuZ3RoO2krKykgew0KICAgICAgICAgIGJsb2NrcXVvdGVbaV0ucmVtb3ZlQXR0cmlidXRlKCdzdHlsZScpOw0KICAgICAgIH0NCiAgICAgICBmb3IoaT0wO2k8Y29sbGVjdGlvbi5sZW5ndGg7aSsrKSB7DQogICAgICAgICAgY29sbGVjdGlvbltpXS5yZW1vdmVBdHRyaWJ1dGUoJ3N0eWxlJyk7DQogICAgICAgfQ0KICAgIH0NCglmdW5jdGlvbiBsZWN0dXJhKCkgew0KICAgICAgICAgIHZhciBtb2RvX2xlY3R1cmFfZGF0b3MgPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgiZm9uZG9fc2l0aW8iKS5zdHlsZS5iYWNrZ3JvdW5kOw0KICAgICAgICAgIA0KICAgICAgICAgIGlmIChtb2RvX2xlY3R1cmFfZGF0b3MgPT0gImJsYWNrIiB8fCBtb2RvX2xlY3R1cmFfZGF0b3MgPT0gImJsYWNrIG5vbmUgcmVwZWF0IHNjcm9sbCAwJSAwJSIpew0KICAgIAkJICBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgiZm9uZG9fc2l0aW8iKS5yZW1vdmVBdHRyaWJ1dGUoInN0eWxlIik7DQogICAgCQkgIGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKCJjYWJlY2VyYSIpLnN0eWxlLmRpc3BsYXk9J2Jsb2NrJzsNCiAgICAJICB9ZWxzZXsNCiAgICAJICAgICAgZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoImZvbmRvX3NpdGlvIikuc3R5bGUuYmFja2dyb3VuZD0nYmxhY2snOw0KICAgIAkgICAgICBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgiY2FiZWNlcmEiKS5zdHlsZS5kaXNwbGF5PSdub25lJzsNCiAgICAJICB9DQoJfQ0KPC9zY3JpcHQ+DQoNCg0KPGRpdiBjbGFzcz0iZml4ZWQtYWN0aW9uLWJ0biBob3Jpem9udGFsIGNsaWNrLXRvLXRvZ2dsZSBpbnZpc2libGVfc21hcnRwaG9uZSIgc3R5bGU9ImJvdHRvbTogNDVweDsgcmlnaHQ6IDI0cHg7Ij4NCiAgICA8YSBjbGFzcz0iYnRuLWZsb2F0aW5nIGJ0bi1sYXJnZSByZWQiPg0KICAgICAgPGkgY2xhc3M9ImxhcmdlIG1kaS1uYXZpZ2F0aW9uLW1lbnUiPjwvaT4NCiAgICA8L2E+DQogICAgPHN0eWxlPg0KICAgICAgICAuYWNjZXNpYmlsaWRhZCBsaXsNCiAgICAgICAgICAgIGxpc3Qtc3R5bGUtdHlwZTogbm9uZSAhaW1wb3J0YW50Ow0KICAgICAgICB9DQogICAgICAgIA0KICAgIDwvc3R5bGU+DQogICAgPHVsIGNsYXNzPSJhY2Nlc2liaWxpZGFkIj4NCiAgICAgIDxsaSBjbGFzcz0iaGlkZGVuLXhzIj48YSBocmVmPSJqYXZhc2NyaXB0OmxlY3R1cmEoKTsiIGNsYXNzPSJidG4tZmxvYXRpbmcgcmVkIj48aSBjbGFzcz0ibWF0ZXJpYWwtaWNvbnMiPnNldHRpbmdzX2JyaWdodG5lc3M8L2k+PC9hPjwvbGk+DQogICAgICA8bGk+PGEgaHJlZj0iamF2YXNjcmlwdDppbmNyZWFzZUZvbnRTaXplKCk7IiBjbGFzcz0iYnRuLWZsb2F0aW5nIGdyZWVuIj48aSBjbGFzcz0ibWF0ZXJpYWwtaWNvbnMiPnpvb21faW48L2k+PC9hPjwvbGk+DQogICAgICA8bGk+PGEgaHJlZj0iamF2YXNjcmlwdDpkZWNyZWFzZUZvbnRTaXplKCk7IiBjbGFzcz0iYnRuLWZsb2F0aW5nIGJsdWUiPjxpIGNsYXNzPSJtYXRlcmlhbC1pY29ucyI+em9vbV9vdXQ8L2k+PC9hPjwvbGk+DQogICAgICA8bGk+PGEgaHJlZj0iamF2YXNjcmlwdDpub3JtYWxGb250U2l6ZSgpOyIgY2xhc3M9ImJ0bi1mbG9hdGluZyBvcmFuZ2UiPjxpIGNsYXNzPSJtYXRlcmlhbC1pY29ucyI+c3BlbGxjaGVjazwvaT48L2E+PC9saT4NCiAgICA8L3VsPg0KICA8L2Rpdj4iO30='),
(586,	'',	'2018-05-21 10:24:39',	'2018-05-21 10:24:39',	'',	'1',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjU4NiI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6NjQ0OiI8aDY+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTJweDsiPjxzdHJvbmc+PGkgY2xhc3M9ImZhIGZhLW1hcC1tYXJrZXIiPjwvaT4gRGlyZWNjacOzbjo8L3N0cm9uZz4gQ29tcGxlam8gU2FudG9zIEUyIC0gR3JhbC4gU2FudG9zIDExNzAgYy8gQ29uY29yZGlhPC9zcGFuPjwvaDY+PGg2PjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEycHg7Ij48c3Ryb25nPjxpIGNsYXNzPSJmYSBmYS1waG9uZSI+PC9pPlRlbGVmb25vOjwvc3Ryb25nPiAoKzU5NSAyMSkgMjE3IC0gOTAwMDwvc3Bhbj48L2g2PjxoNj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxMnB4OyI+PHN0cm9uZz48aSBjbGFzcz0iZmEgZmEtY2xvY2stbyI+PC9pPiBIb3JhcmlvcyBkZSBBdGVuY2nDs246PC9zdHJvbmc+IGRlIDA3OjAwaHMgYSAxNTowMGhzPC9zcGFuPjwvaDY+PGg2PjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEycHg7Ij48c3Ryb25nPjxpIGNsYXNzPSJmYSBmYS1lbnZlbG9wZSI+PC9pPiBFLW1haWw6PC9zdHJvbmc+IDwvc3Bhbj48YSBocmVmPSJtYWlsdG86bWFpbHRvOmNvbXVuaWNhY2lvbkBzZW5hdGljcy5nb3YucHkiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEycHg7Ij5jb211bmljYWNpb25Ac2VuYXRpY3MuZ292LnB5PC9zcGFuPjwvYT48L2g2PiI7fQ=='),
(587,	'',	'2018-05-21 10:24:54',	'2018-05-21 10:24:55',	NULL,	'1',	12,	1,	'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjU4NyI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudExvY2FsIjtzOjc6ImNvbnRlbnQiO3M6MTkzOiI8cD5Qb3J0YWwgY29uc3RydWlkbyBjb25qdW50YW1lbnRlIGNvbiBsYSA8YSBocmVmPSJodHRwczovL3d3dy5zZW5hdGljcy5nb3YucHkvIiB0YXJnZXQ9Il9ibGFuayI+U0VOQVRJQ3M8L2E+DQo8L3A+PHA+U2VjcmV0YXLDrWEgTmFjaW9uYWwgZGUgVGVjbm9sb2fDrWFzIGRlIGxhIEluZm9ybWFjacOzbiB5IENvbXVuaWNhY2nDs248L3A+Ijt9');

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
(5,	'core_conversation',	'Conversation',	'Displays conversations on a page.',	1,	0,	0,	0,	0,	0,	0,	400,	400,	0),
(6,	'dashboard_featured_addon',	'Dashboard Featured Add-On',	'Features an add-on from concrete5.org.',	0,	0,	1,	0,	0,	0,	0,	300,	100,	0),
(7,	'dashboard_featured_theme',	'Dashboard Featured Theme',	'Features a theme from concrete5.org.',	0,	0,	1,	0,	0,	0,	0,	300,	100,	0),
(8,	'dashboard_newsflow_latest',	'Dashboard Newsflow Latest',	'Grabs the latest newsflow data from concrete5.org.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(9,	'dashboard_app_status',	'Dashboard App Status',	'Displays update and welcome back information on your dashboard.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(10,	'dashboard_site_activity',	'Dashboard Site Activity',	'Displays a summary of website activity.',	0,	0,	1,	0,	0,	0,	0,	400,	400,	0),
(11,	'autonav',	'Auto-Nav',	'Creates navigation trees and sitemaps.',	0,	0,	0,	0,	0,	0,	0,	800,	350,	0),
(12,	'content',	'Content',	'HTML/WYSIWYG Editor Content.',	0,	0,	0,	1,	1,	0,	0,	600,	465,	0),
(13,	'date_navigation',	'Date Navigation',	'Displays a list of months to filter a page list by.',	0,	0,	0,	0,	0,	0,	0,	400,	450,	0),
(14,	'external_form',	'External Form',	'Include external forms in the filesystem and place them on pages.',	0,	0,	0,	0,	0,	0,	0,	370,	175,	0),
(15,	'file',	'File',	'Link to files stored in the asset library.',	0,	0,	0,	0,	0,	0,	0,	300,	320,	0),
(16,	'page_attribute_display',	'Page Attribute Display',	'Displays the value of a page attribute for the current page.',	0,	0,	0,	0,	0,	0,	0,	500,	365,	0),
(17,	'form',	'Form',	'Build simple forms and surveys.',	1,	0,	0,	0,	0,	0,	0,	420,	430,	0),
(18,	'page_title',	'Page Title',	'Displays a Page\'s Title',	0,	0,	0,	0,	0,	0,	0,	400,	400,	0),
(19,	'feature',	'Feature',	'Displays an icon, a title, and a short paragraph description.',	0,	0,	0,	0,	0,	0,	0,	400,	520,	0),
(20,	'topic_list',	'Topic List',	'Displays a list of your site\'s topics, allowing you to click on them to filter a page list.',	0,	0,	0,	0,	0,	0,	0,	400,	400,	0),
(21,	'social_links',	'Social Links',	'Allows users to add social icons to their website',	0,	0,	0,	0,	0,	0,	0,	400,	400,	0),
(22,	'testimonial',	'Testimonial',	'Displays a quote or paragraph next to biographical information and a person\'s picture.',	0,	0,	0,	0,	0,	0,	0,	450,	560,	0),
(23,	'share_this_page',	'Share This Page',	'Allows users to share this page with social networks.',	0,	0,	0,	0,	0,	0,	0,	400,	400,	0),
(24,	'google_map',	'Google Map',	'Enter an address and a Google Map of that location will be placed in your page.',	0,	0,	0,	0,	0,	0,	0,	400,	460,	0),
(25,	'html',	'HTML',	'For adding HTML by hand.',	0,	0,	0,	0,	0,	1,	0,	600,	500,	0),
(26,	'horizontal_rule',	'Horizontal Rule',	'Adds a thin hairline horizontal divider to the page.',	0,	0,	0,	0,	0,	1,	0,	400,	400,	0),
(27,	'image',	'Image',	'Adds images and onstates from the library to pages.',	0,	0,	0,	0,	0,	0,	0,	400,	550,	0),
(28,	'faq',	'FAQ',	'Frequently Asked Questions Block',	0,	0,	0,	0,	0,	0,	0,	600,	465,	0),
(29,	'next_previous',	'Next & Previous Nav',	'Navigate through sibling pages.',	0,	0,	0,	0,	0,	0,	0,	430,	400,	0),
(30,	'page_list',	'Page List',	'List pages based on type, area.',	0,	0,	0,	0,	0,	0,	0,	800,	350,	0),
(31,	'rss_displayer',	'RSS Displayer',	'Fetch, parse and display the contents of an RSS or Atom feed.',	0,	0,	0,	0,	0,	0,	0,	400,	550,	0),
(32,	'search',	'Search',	'Add a search box to your site.',	0,	0,	0,	0,	0,	0,	0,	400,	420,	0),
(33,	'image_slider',	'Image Slider',	'Display your images and captions in an attractive slideshow format.',	0,	0,	0,	0,	0,	1,	0,	600,	550,	0),
(34,	'survey',	'Survey',	'Provide a simple survey, along with results in a pie chart format.',	0,	0,	0,	0,	0,	0,	0,	420,	400,	0),
(35,	'switch_language',	'Switch Language',	'Adds a front-end language switcher to your website.',	0,	0,	0,	0,	0,	0,	0,	500,	150,	0),
(36,	'tags',	'Tags',	'List pages based on type, area.',	0,	0,	0,	0,	0,	0,	0,	450,	439,	0),
(37,	'video',	'Video Player',	'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.',	0,	0,	0,	0,	0,	0,	0,	320,	270,	0),
(38,	'youtube',	'YouTube Video',	'Embeds a YouTube Video in your web page.',	0,	0,	0,	0,	0,	0,	0,	400,	490,	0),
(39,	'svg_social_media_icons',	'SVG Social Media Icons',	'Add SVG social media icons with PNG fallback on your pages.',	0,	0,	0,	0,	0,	0,	0,	450,	580,	1),
(40,	'agregarslider',	'Slider de Fotos',	'Despliega tus imagenes o noticias en un Slider de Fotos!!',	0,	0,	0,	0,	0,	1,	0,	700,	500,	0),
(41,	'boton',	'Boton',	'Agrega un Boton al sitio web',	0,	0,	0,	0,	0,	0,	0,	950,	400,	0),
(42,	'carrusel',	'Carrusel Banners',	'Muestra un Carrusel de fotos',	0,	0,	0,	0,	0,	1,	0,	700,	650,	0),
(43,	'convenios',	'Convenios & Documentos',	'Permite listar los Convenios y Documentos',	0,	0,	0,	0,	0,	0,	0,	600,	500,	0),
(44,	'iframe',	'Iframe Popup',	'Agrega un Popup con Iframe',	0,	0,	0,	0,	0,	0,	0,	400,	550,	0),
(45,	'leytransparencia',	'Ley 5189/14',	'Administrador de la Ley Transparencia 5189/14',	0,	0,	0,	0,	0,	0,	0,	600,	500,	0),
(46,	'listaritems',	'Galería de Fotos',	'Despliega una lista de Imagenes Dinamicas!!',	0,	0,	0,	0,	0,	1,	0,	1024,	600,	0),
(47,	'listartramites',	'Lista de Tramites',	'Despliega una lista de Trámites que la Institución Ofrece!!',	0,	0,	0,	0,	0,	1,	0,	1024,	750,	0),
(48,	'mapas',	'Mapas Senatics',	'Introduzca una dirección y un mapa de Google de la ubicación Que se colocará en su página.',	0,	0,	0,	0,	0,	0,	0,	1050,	500,	0),
(49,	'publicaciones',	'Publicaciones',	'Permite realizar publicaciones, anexar al mismo enlaces a archivos/sitios',	0,	0,	0,	0,	0,	1,	0,	700,	650,	0),
(50,	'transparenciaactiva',	'Transparencia Activa',	'Administrador de Transparencia Activa permite insertar por cada bloque un conjunto de archivos del mismo tema, y asociarle un Autor del mismo como asi tambien indicar a que mes corresponde',	0,	0,	0,	0,	0,	0,	0,	1024,	600,	0),
(51,	'open_data',	'Datos Abiertos',	'',	0,	0,	0,	0,	0,	0,	0,	400,	400,	2),
(52,	'event_calendar',	'Event Calendar',	'',	0,	0,	0,	0,	0,	0,	0,	400,	200,	3);

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
(39,	4,	5),
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
(253,	'Trámites',	'bookmark',	0,	'',	0,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(255,	'TrámitesMECIP',	'building',	0,	'',	193,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(256,	'Trámites',	'bookmark',	0,	'',	194,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(258,	'Compras Públicas',	'shopping-cart',	0,	'',	195,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(260,	'Servicios',	'briefcase',	0,	'',	196,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(264,	'Servicios',	'briefcase',	0,	'',	196,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(265,	'Compras Públicas',	'shopping-cart',	0,	'',	195,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(266,	'TrámitesMECIP',	'building',	0,	'',	193,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(267,	'Trámites',	'bookmark',	0,	'',	194,	0,	14,	'#ba3a3a',	1,	'#ffffff',	8,	'100',	'%',	0,	NULL,	'#222222',	'#f0f0f0'),
(416,	'Ver más noticias',	'plus-square-o',	0,	NULL,	159,	0,	20,	'#c73b3b',	0,	'',	5,	'100',	'%',	0,	NULL,	'#ffffff',	'#878787');

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
(159,	0,	1,	1,	5000,	500,	1,	1,	0,	1,	0),
(160,	0,	1,	1,	5000,	500,	1,	1,	0,	1,	0),
(162,	0,	1,	1,	5000,	500,	1,	1,	0,	1,	0),
(261,	0,	3,	3,	4000,	500,	0,	0,	0,	0,	0),
(262,	1,	1,	4,	7000,	200,	1,	1,	0,	1,	0),
(424,	0,	1,	1,	5000,	500,	1,	1,	0,	1,	0),
(425,	0,	1,	1,	5000,	500,	1,	1,	0,	1,	0),
(426,	1,	1,	1,	5000,	500,	1,	1,	0,	1,	0),
(431,	1,	1,	4,	7000,	200,	1,	1,	0,	1,	0);

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
(1,	159,	0,	8,	'',	0,	'',	'',	0,	0),
(2,	159,	0,	6,	'',	0,	'',	'',	0,	1),
(5,	160,	0,	8,	'',	0,	'Título del Slide 1',	'<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p><p><br></p>',	0,	0),
(6,	160,	0,	6,	'',	0,	'Título del Slide 2',	'<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p><br></p>',	0,	1),
(9,	162,	0,	8,	'',	0,	'Título del Slide 1',	'<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	0,	0),
(10,	162,	0,	6,	'',	0,	'Título del Slide 2',	'<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>',	0,	1),
(11,	261,	0,	10,	'',	177,	'',	'',	0,	0),
(12,	261,	0,	11,	'http://www.informacionpublica.gov.py',	0,	'',	'',	1,	1),
(13,	261,	0,	12,	'http://www.denuncias.gov.py/ssps/',	0,	'',	'',	1,	2),
(14,	261,	0,	13,	'https://www.paraguay.gov.py',	0,	'',	'',	0,	3),
(19,	262,	0,	10,	'',	177,	'',	'',	0,	0),
(20,	262,	0,	11,	'http://www.informacionpublica.gov.py',	0,	'',	'',	1,	1),
(21,	262,	0,	12,	'http://www.denuncias.gov.py/ssps/',	0,	'',	'',	1,	2),
(22,	262,	0,	13,	'https://www.paraguay.gov.py',	0,	'',	'',	0,	3),
(23,	424,	0,	8,	'',	198,	'Titulo slide 1',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>',	0,	0),
(24,	424,	0,	6,	'',	0,	'Título del Slide 2',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>',	0,	1),
(27,	425,	0,	21,	'',	198,	'Titulo slide 1',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>',	0,	0),
(28,	425,	0,	22,	'',	0,	'Título del Slide 2',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>',	0,	1),
(31,	426,	0,	21,	'',	198,	'Titulo slide 1',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>',	0,	0),
(32,	426,	0,	22,	'',	0,	'Título del Slide 2',	'<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>',	0,	1),
(33,	431,	0,	10,	'',	177,	'',	'',	0,	0),
(34,	431,	0,	11,	'http://www.informacionpublica.gov.py',	0,	'',	'',	1,	1),
(35,	431,	0,	12,	'http://www.denuncias.gov.py/ssps/',	0,	'',	'',	1,	2),
(36,	431,	0,	13,	'https://www.paraguay.gov.py',	0,	'',	'',	0,	3);

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


DROP TABLE IF EXISTS `btContentIframe`;
CREATE TABLE `btContentIframe` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
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
(10,	1,	0,	0,	0,	'',	1,	'',	''),
(11,	2,	0,	0,	0,	'',	0,	'',	''),
(12,	3,	0,	0,	0,	'',	0,	'',	''),
(53,	4,	0,	0,	0,	'',	0,	'',	''),
(422,	1,	0,	0,	0,	'',	0,	'',	''),
(423,	20,	0,	0,	0,	'',	0,	'',	''),
(435,	40,	0,	0,	0,	'',	1,	'',	'');

DROP TABLE IF EXISTS `btContentLocal`;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(1,	'<div style=\"padding: 40px; text-align: center\">\n<iframe width=\"853\" height=\"480\" src=\"//www.youtube.com/embed/VB-R71zk06U\" frameborder=\"0\" allowfullscreen></iframe>\n                                    </div>'),
(14,	'<p>Secretaría Nacional de Tecnologías de la Información y Comunicación - 2018 ©</p>'),
(15,	'<p>Secretaría Nacional de Tecnologías de la Información y Comunicación - 2018</p>'),
(30,	'<h5>Categorías:</h5>'),
(31,	'<h5>Etiquetas:</h5>'),
(46,	'<p style=\"text-align: justify;\">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>'),
(95,	'<h5>Categorías / Filtrar</h5>'),
(96,	'<h5>Etiquetas</h5>'),
(119,	'<h5 style=\"text-align: center;\"><a href=\"{CCM:CID_159}\">Ver más</a></h5>'),
(233,	'<p style=\"text-align: center;\"><img src=\"https://www.senatics.gov.py/download_file/view_inline/14\" id=\"image-marker\" height=\"97\" width=\"459\" style=\"width: 459px; height: 97px;\">\r\n</p><h6><strong><i class=\"fa fa-map-marker\"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class=\"fa fa-phone\"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class=\"fa fa-clock-o\"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class=\"fa fa-envelope\"></i> E-mail:</strong> <a href=\"mailto:mailto:comunicacion@senatics.gov.py\">comunicacion@senatics.gov.py</a></h6><h4 style=\"text-align: center;\" rel=\"text-align: center;\">Asuncion - Paraguay</h4>'),
(235,	'<h5>Formulario de Contacto </h5>'),
(237,	'<p style=\"text-align: center;\"><img src=\"https://www.senatics.gov.py/download_file/view_inline/14\" id=\"image-marker\" height=\"97\" width=\"459\" style=\"width: 459px; height: 97px;\">\r\n</p><h6><strong><i class=\"fa fa-map-marker\"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class=\"fa fa-phone\"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class=\"fa fa-clock-o\"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class=\"fa fa-envelope\"></i> E-mail:</strong> <a href=\"mailto:mailto:comunicacion@senatics.gov.py\">comunicacion@senatics.gov.py</a></h6><h4 style=\"text-align: center;\" rel=\"text-align: center;\">Asuncion - Paraguay</h4>'),
(238,	'<p style=\"text-align: center;\"><img src=\"/application/files/6315/2649/3706/senatics_1.png\" id=\"image-marker\" height=\"97\" width=\"459\" style=\"width: 459px; height: auto;\">\r\n</p><h6><strong><i class=\"fa fa-map-marker\"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class=\"fa fa-phone\"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class=\"fa fa-clock-o\"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class=\"fa fa-envelope\"></i> E-mail:</strong> <a href=\"mailto:mailto:comunicacion@senatics.gov.py\">comunicacion@senatics.gov.py</a></h6><h4 style=\"text-align: center;\" rel=\"text-align: center;\">Asuncion - Paraguay</h4>'),
(239,	'<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div>'),
(240,	'<p data-redactor-inserted-image=\"true\"><img src=\"/application/files/4415/2665/3509/newspaper.png\" id=\"image-marker\" alt=\"\" style=\"width:30px;height:auto;float: left; margin: 0px 10px 10px 0px;\">\r\n</p><h3>Noticias</h3>'),
(420,	'<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(421,	'<p>Portal construido conjuntamente con la <a href=\"https://www.senatics.gov.py/\" target=\"_blank\">SENATICs</a>\r\n</p><p>Secretaría Nacional de Tecnologías de la Información y Comunicación - 2018\r\n</p>'),
(437,	'<h6><strong><i class=\"fa fa-map-marker\"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class=\"fa fa-phone\"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class=\"fa fa-clock-o\"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class=\"fa fa-envelope\"></i> E-mail:</strong> <a href=\"mailto:mailto:comunicacion@senatics.gov.py\">comunicacion@senatics.gov.py</a></h6>'),
(464,	'<h5>Últimas Noticias</h5>'),
(498,	'<p data-redactor-inserted-image=\"true\"><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/14\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"14\" id=\"image-marker\" width=\"252\" height=\"189\" alt=\"\" style=\"width: 252px; height: 189px; float: left; margin: 0px 10px 10px 0px;\" /></a></p><h2>¿Qué es Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><h2>¿Por qué lo usamos?</h2><p>Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p>\n<h2>¿De dónde viene?</h2><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p><p>El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.</p>'),
(519,	'<p data-redactor-inserted-image=\"true\"><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/15\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"15\" id=\"image-marker\" alt=\"\" width=\"411\" height=\"259\" style=\"float: right; width: 411px; height: 259px; margin: 0px 0px 10px 10px;\" /></a></p><h2>¿Qué es Lorem Ipsum?</h2><p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><h2>¿Por qué lo usamos?</h2><p style=\"text-align: justify;\">Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p>\n<h2>¿De dónde viene?</h2><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p><p>El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.</p><h2>¿Dónde puedo conseguirlo?</h2><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p>'),
(533,	'<p data-redactor-inserted-image=\"true\"><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/16\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"16\" id=\"image-marker\" width=\"554\" height=\"309\" style=\"width: 554px; height: 309px; display: block; margin: auto;\" alt=\"\" /></a></p><h2>¿Qué es Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><h2>¿Por qué lo usamos?</h2><p>Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p>\n<h2>¿De dónde viene?</h2><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p><p>El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.</p><h2>¿Dónde puedo conseguirlo?</h2><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p>'),
(557,	'<p><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/17\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"17\" id=\"image-marker\" width=\"482\" height=\"271\" style=\"width: 482px; height: 271px; display: block; margin: auto;\" alt=\"\" /></a></p><h2>¿Qué es Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><h2>¿Por qué lo usamos?</h2><p>Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p><p data-redactor-inserted-image=\"true\"><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/31\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"31\" id=\"image-marker\" style=\"width: 372px; height: 375px; float: left; margin: 0px 10px 10px 0px;\" width=\"372\" height=\"375\" alt=\"\" /></a></p>\n<h2>¿De dónde viene?</h2><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p><p>El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.</p><h2>¿Dónde puedo conseguirlo?</h2><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p>'),
(572,	'<p data-redactor-inserted-image=\"true\"><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/33\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"33\" id=\"image-marker\" width=\"340\" height=\"343\" style=\"width: 340px; height: 343px; float: left; margin: 0px 10px 10px 0px;\" alt=\"\" /></a></p><h2>¿Qué es Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><h2>¿Por qué lo usamos?</h2><p>Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p>\n<h2>¿De dónde viene?</h2><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p><p>El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.</p><h2>¿Dónde puedo conseguirlo?</h2><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.</p>'),
(573,	'<h2>¿Qué es Lorem Ipsum?</h2><p data-redactor-inserted-image=\"true\"><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/33\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"33\" id=\"image-marker\" width=\"390\" height=\"394\" alt=\"\" style=\"width: 390px; height: 394px; float: left; margin: 0px 10px 10px 0px;\" /></a>\r\n</p><p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\n</p><h2><br></h2><h2><br></h2><h2>¿Por qué lo usamos?</h2><p style=\"text-align: justify;\">Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).\r\n</p><h2>¿De dónde viene?</h2><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\r\n</p><p>El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.\r\n</p><h2>¿Dónde puedo conseguirlo?</h2><p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.\r\n</p>'),
(578,	'<p>texto sencillo</p>'),
(581,	'<p data-redactor-inserted-image=\"true\"><a href=\"{CCM:BASE_URL}/index.php/download_file/view_inline/14\" data-concrete5-link-lightbox=\"image\"><concrete-picture fID=\"14\" id=\"image-marker\" width=\"252\" height=\"189\" alt=\"\" style=\"width: 252px; height: 189px; float: left; margin: 0px 10px 10px 0px;\" /></a></p><h2>¿Qué es Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><h2>¿Por qué lo usamos?</h2><p>Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).</p><h2>¿De dónde viene?</h2><p>Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32</p><p>El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.</p>'),
(585,	'<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n	function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          \r\n          if (modo_lectura_datos == \"black\" || modo_lectura_datos == \"black none repeat scroll 0% 0%\"){\r\n    		  document.getElementById(\"fondo_sitio\").removeAttribute(\"style\");\r\n    		  document.getElementById(\"cabecera\").style.display=\'block\';\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	      document.getElementById(\"cabecera\").style.display=\'none\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle invisible_smartphone\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <style>\r\n        .accesibilidad li{\r\n            list-style-type: none !important;\r\n        }\r\n        \r\n    </style>\r\n    <ul class=\"accesibilidad\">\r\n      <li class=\"hidden-xs\"><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">settings_brightness</i></a></li>\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div>'),
(586,	'<h6><span style=\"font-size: 12px;\"><strong><i class=\"fa fa-map-marker\"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</span></h6><h6><span style=\"font-size: 12px;\"><strong><i class=\"fa fa-phone\"></i>Telefono:</strong> (+595 21) 217 - 9000</span></h6><h6><span style=\"font-size: 12px;\"><strong><i class=\"fa fa-clock-o\"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</span></h6><h6><span style=\"font-size: 12px;\"><strong><i class=\"fa fa-envelope\"></i> E-mail:</strong> </span><a href=\"mailto:mailto:comunicacion@senatics.gov.py\"><span style=\"font-size: 12px;\">comunicacion@senatics.gov.py</span></a></h6>'),
(587,	'<p>Portal construido conjuntamente con la <a href=\"https://www.senatics.gov.py/\" target=\"_blank\">SENATICs</a>\r\n</p><p>Secretaría Nacional de Tecnologías de la Información y Comunicación</p>');

DROP TABLE IF EXISTS `btConvenios`;
CREATE TABLE `btConvenios` (
  `bID` int(10) unsigned NOT NULL,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btConvenios` (`bID`, `fecha_actualizacion`) VALUES
(44,	'2018-05-17 14:47:20'),
(45,	'2018-05-17 14:47:20');

DROP TABLE IF EXISTS `btConveniosEntries`;
CREATE TABLE `btConveniosEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `numero` text COLLATE utf8_unicode_ci,
  `anho` text COLLATE utf8_unicode_ci,
  `titulo` text COLLATE utf8_unicode_ci,
  `descripcion` text COLLATE utf8_unicode_ci,
  `institucion` text COLLATE utf8_unicode_ci,
  `fecha` date DEFAULT NULL,
  `enlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btConveniosEntries` (`id`, `bID`, `numero`, `anho`, `titulo`, `descripcion`, `institucion`, `fecha`, `enlace`, `orden`, `fecha_actualizacion`) VALUES
(1,	44,	'1',	'2018',	'Prueba de Documento de Resolución 05/2018',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	NULL,	NULL,	'#',	0,	'2018-05-17 14:47:20'),
(3,	45,	'1',	'2018',	'Prueba de Documento de Resolución 05/2018',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos espécimen.',	NULL,	NULL,	'#',	0,	'2018-05-17 14:47:46');

DROP TABLE IF EXISTS `btCoreAreaLayout`;
CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btCoreAreaLayout` (`bID`, `arLayoutID`) VALUES
(27,	1),
(47,	2),
(48,	3),
(151,	4),
(156,	5),
(161,	6),
(231,	7),
(248,	8),
(249,	9),
(445,	10);

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
(26,	5),
(449,	6);

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btCoreScrapbookDisplay` (`bID`, `bOriginalID`) VALUES
(25,	23),
(36,	23),
(39,	23),
(446,	23),
(118,	56),
(450,	95),
(453,	96),
(456,	98),
(448,	157),
(447,	158),
(436,	238);

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
(98,	'Archivos / Biblioteca',	0,	0,	0,	0,	7);

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
(427,	0,	'en-gb',	'0',	''),
(428,	1,	'es',	'0',	'');

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
(49,	'star',	'Misión',	'<p style=\"text-align: justify;\">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p style=\"text-align: justify;\"><br></p>',	'',	0),
(50,	'trophy',	'Visión',	'<p style=\"text-align: justify;\">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p style=\"text-align: justify;\"><br></p>',	'',	0),
(51,	'university',	'Ejes Estratégicos',	'<p style=\"text-align: justify;\">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p style=\"text-align: justify;\"><br></p>',	'',	0),
(52,	'legal',	'',	'<p style=\"text-align: justify;\">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p style=\"text-align: justify;\"><br></p>',	'',	0);

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
(232,	1526652094,	'Contacto',	'Enviar',	'Gracias por su mensaje!',	0,	'',	1,	0,	0),
(234,	1526652094,	'Contacto',	'Enviar',	'Gracias por su mensaje!',	0,	'',	1,	0,	0),
(236,	1526652094,	'Contacto',	'Enviar',	'Gracias por su mensaje!',	0,	'',	1,	0,	0);

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
(1,	1,	232,	1526652094,	'Nombres',	'field',	'',	1000,	50,	3,	'',	1),
(2,	2,	232,	1526652094,	'Apellidos',	'field',	'',	1000,	50,	3,	'',	1),
(3,	3,	232,	1526652094,	'Correo Electrónico',	'email',	'a:1:{s:22:\"send_notification_from\";i:0;}',	1000,	50,	3,	'',	1),
(4,	4,	232,	1526652094,	'Mensaje',	'text',	'',	1000,	250,	4,	'',	1),
(5,	4,	234,	1526652094,	'Mensaje',	'text',	'',	1000,	150,	4,	'',	1),
(6,	1,	234,	1526652094,	'Nombres',	'field',	'',	1000,	50,	3,	'',	1),
(7,	2,	234,	1526652094,	'Apellidos',	'field',	'',	1000,	50,	3,	'',	1),
(8,	3,	234,	1526652094,	'Correo Electrónico',	'email',	'a:1:{s:22:\"send_notification_from\";i:0;}',	1000,	50,	3,	'',	1),
(13,	3,	236,	1526652094,	'Correo Electrónico',	'email',	'a:1:{s:22:\"send_notification_from\";i:0;}',	1000,	50,	3,	'',	1),
(14,	4,	236,	1526652094,	'Mensaje',	'text',	'',	1000,	150,	3,	'',	1),
(15,	1,	236,	1526652094,	'Nombre y Apellido',	'field',	'',	1000,	50,	3,	'',	1);

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
(150,	177),
(154,	177),
(263,	177);

DROP TABLE IF EXISTS `btLeyTransparenciaEntries`;
CREATE TABLE `btLeyTransparenciaEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btLeyTransparenciaEntries` (`id`, `bID`, `nombre`, `orden`, `fID`) VALUES
(25,	263,	'Nomina de Funcionarios',	0,	7),
(26,	263,	'Ejecuci&oacute;n Presupuestaria',	1,	7),
(27,	263,	'Inventario',	2,	7),
(28,	263,	'Reglamento Interno',	3,	7),
(29,	263,	'Anexo del Personal',	4,	7),
(30,	263,	'Presupuesto de Ingresos',	5,	7),
(31,	263,	'Manual de Funciones',	6,	7),
(32,	263,	'Informe de Vi&aacute;ticos',	7,	7);

DROP TABLE IF EXISTS `btListaItems`;
CREATE TABLE `btListaItems` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantItemsPag` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btListaItems` (`bID`, `titulo`, `cantItemsPag`) VALUES
(429,	NULL,	9),
(430,	NULL,	6);

DROP TABLE IF EXISTS `btListaItemsEntries`;
CREATE TABLE `btListaItemsEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btListaItemsEntries` (`id`, `bID`, `nombre`, `descripcion`, `orden`, `fID`) VALUES
(2,	429,	'',	'',	0,	38),
(3,	429,	'',	'',	1,	37),
(4,	429,	'',	'',	2,	36),
(5,	429,	'',	'',	3,	35),
(6,	429,	'',	'',	4,	34),
(7,	429,	'',	'',	5,	34),
(8,	429,	'',	'',	6,	33),
(9,	429,	'',	'',	7,	32),
(10,	429,	'',	'',	8,	32),
(11,	429,	'',	'',	9,	31),
(12,	429,	'',	'',	10,	30),
(13,	429,	'',	'',	11,	29),
(26,	430,	'',	'',	0,	38),
(27,	430,	'',	'',	1,	37),
(28,	430,	'',	'',	2,	36),
(29,	430,	'',	'',	3,	35),
(30,	430,	'',	'',	4,	34),
(31,	430,	'',	'',	5,	34),
(32,	430,	'',	'',	6,	33),
(33,	430,	'',	'',	7,	32),
(34,	430,	'',	'',	8,	32),
(35,	430,	'',	'',	9,	31),
(36,	430,	'',	'',	10,	30),
(37,	430,	'',	'',	11,	29);

DROP TABLE IF EXISTS `btListarTramites`;
CREATE TABLE `btListarTramites` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantItemsPag` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btListarTramitesEntries`;
CREATE TABLE `btListarTramitesEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sitio_web` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `institucion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_servicio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producto` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canal` text COLLATE utf8_unicode_ci,
  `area_servicio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audiencia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tramite` text COLLATE utf8_unicode_ci,
  `etiqueta` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentacion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tiempo_estimado` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forma_pago` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `atencion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo_servicio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formulario` text COLLATE utf8_unicode_ci,
  `online` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btMapas`;
CREATE TABLE `btMapas` (
  `bID` int(10) unsigned NOT NULL,
  `titulo_mapa` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zoom` int(11) DEFAULT '14',
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` longblob NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `btMapasEntries`;
CREATE TABLE `btMapasEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `icono` int(11) DEFAULT NULL,
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
(18,	'display_asc',	'top',	0,	0,	'all',	'all',	0,	0,	0),
(23,	'display_asc',	'top',	0,	0,	'relevant_breadcrumb',	'all',	0,	0,	0),
(37,	'display_asc',	'current',	0,	0,	'none',	'none',	0,	0,	0),
(40,	'display_asc',	'current',	0,	0,	'none',	'enough',	0,	0,	0),
(41,	'display_asc',	'current',	0,	0,	'none',	'enough',	0,	0,	0),
(42,	'display_asc',	'current',	0,	0,	'all',	'enough',	0,	0,	0),
(43,	'display_asc',	'below',	0,	0,	'all',	'enough',	0,	0,	0);

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
(149,	1,	NULL,	'0',	'0');

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
(157,	'rpv_pageDatePublic',	'Publicado: ',	'blockquote',	'm/d/y h:i:a',	250,	250);

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
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT '0',
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

INSERT INTO `btPageList` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `useButtonForLink`, `buttonLinkText`, `pageListTitle`, `filterByRelated`, `filterByCustomTopic`, `filterDateOption`, `filterDateDays`, `filterDateStart`, `filterDateEnd`, `relatedTopicAttributeKeyHandle`, `customTopicAttributeKeyHandle`, `customTopicTreeNodeID`, `includeName`, `includeDescription`, `includeDate`, `includeAllDescendents`, `paginate`, `displayAliases`, `ignorePermissions`, `enableExternalFiltering`, `ptID`, `pfID`, `truncateSummaries`, `displayFeaturedOnly`, `noResultsMessage`, `displayThumbnail`, `truncateChars`) VALUES
(54,	10,	'chrono_desc',	0,	0,	1,	'Ver más',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	1,	1,	0,	0,	1,	7,	0,	1,	0,	'No se encontraron noticias relacionadas.',	0,	300),
(56,	10,	'chrono_desc',	0,	0,	1,	'Ver más',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	1,	1,	0,	0,	1,	7,	1,	1,	0,	'No se encontraron noticias relacionadas.',	1,	300),
(414,	3,	'chrono_desc',	0,	0,	1,	'Ver más',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	1,	1,	0,	0,	1,	7,	1,	1,	0,	'No se encontraron noticias relacionadas.',	1,	300),
(415,	3,	'chrono_desc',	0,	0,	1,	'Ver más',	'',	0,	0,	'all',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	1,	0,	0,	0,	0,	7,	1,	1,	0,	'No se encontraron noticias relacionadas.',	1,	300),
(462,	5,	'chrono_desc',	0,	0,	0,	'',	'',	0,	0,	'',	0,	NULL,	NULL,	'',	'',	0,	1,	1,	1,	0,	0,	0,	0,	0,	7,	0,	1,	0,	'No hay noticias',	1,	150);

DROP TABLE IF EXISTS `btPageTitle`;
CREATE TABLE `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btPageTitle` (`bID`, `useCustomTitle`, `titleText`, `formatting`) VALUES
(32,	0,	'[Título de la Página]',	'h4'),
(33,	0,	'Noticias',	'h4'),
(34,	0,	'Noticias',	'h4'),
(35,	0,	'[Título de la Página]',	'h4'),
(38,	0,	'[Título de la Página]',	'h4'),
(92,	0,	'[Título de la Página]',	'h4'),
(444,	0,	'[Título de la Página]',	'h4');

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
(13,	'',	'Buscar',	'',	'',	''),
(432,	'',	'',	'',	'',	''),
(433,	'',	'Buscar',	'',	'213',	''),
(434,	'',	'',	'',	'',	''),
(584,	'',	'Buscar',	'',	'213',	'');

DROP TABLE IF EXISTS `btShareThisPage`;
CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btShareThisPage` (`btShareThisPageID`, `bID`, `service`, `displayOrder`) VALUES
(1,	158,	'facebook',	0),
(2,	158,	'twitter',	1),
(3,	158,	'linkedin',	2),
(4,	158,	'reddit',	3),
(5,	158,	'pinterest',	4),
(6,	158,	'google_plus',	5),
(7,	158,	'print',	6),
(8,	158,	'email',	7);

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
(153,	0,	0,	7,	0),
(155,	0,	0,	7,	0);

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
(2,	153,	0,	6,	'',	'',	'',	0),
(4,	155,	0,	6,	'',	'',	'',	0),
(5,	155,	0,	8,	'',	'',	'',	1);

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


DROP TABLE IF EXISTS `btSvgSocialMediaIcons`;
CREATE TABLE `btSvgSocialMediaIcons` (
  `bID` int(10) unsigned NOT NULL,
  `openLinkBlank` int(11) DEFAULT NULL,
  `behanceAddress` text COLLATE utf8_unicode_ci,
  `deviantartAddress` text COLLATE utf8_unicode_ci,
  `dribbbleAddress` text COLLATE utf8_unicode_ci,
  `emailAddress` text COLLATE utf8_unicode_ci,
  `facebookAddress` text COLLATE utf8_unicode_ci,
  `flickrAddress` text COLLATE utf8_unicode_ci,
  `githubAddress` text COLLATE utf8_unicode_ci,
  `googleplusAddress` text COLLATE utf8_unicode_ci,
  `instagramAddress` text COLLATE utf8_unicode_ci,
  `itunesAddress` text COLLATE utf8_unicode_ci,
  `linkedinAddress` text COLLATE utf8_unicode_ci,
  `pinterestAddress` text COLLATE utf8_unicode_ci,
  `skypeAddress` text COLLATE utf8_unicode_ci,
  `soundcloudAddress` text COLLATE utf8_unicode_ci,
  `spotifyAddress` text COLLATE utf8_unicode_ci,
  `tumblrAddress` text COLLATE utf8_unicode_ci,
  `twitterAddress` text COLLATE utf8_unicode_ci,
  `vimeoAddress` text COLLATE utf8_unicode_ci,
  `youtubeAddress` text COLLATE utf8_unicode_ci,
  `iconShape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iconColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iconHover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iconSize` int(11) DEFAULT NULL,
  `iconMargin` int(11) DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8_unicode_ci,
  `sortOrder` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btSvgSocialMediaIcons` (`bID`, `openLinkBlank`, `behanceAddress`, `deviantartAddress`, `dribbbleAddress`, `emailAddress`, `facebookAddress`, `flickrAddress`, `githubAddress`, `googleplusAddress`, `instagramAddress`, `itunesAddress`, `linkedinAddress`, `pinterestAddress`, `skypeAddress`, `soundcloudAddress`, `spotifyAddress`, `tumblrAddress`, `twitterAddress`, `vimeoAddress`, `youtubeAddress`, `iconShape`, `iconColor`, `iconHover`, `iconSize`, `iconMargin`, `position`, `icon`, `sortOrder`) VALUES
(16,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'round',	'logo',	'hoverOn',	30,	5,	'right',	'a:19:{s:7:\"behance\";a:1:{s:7:\"address\";s:0:\"\";}s:10:\"deviantart\";a:1:{s:7:\"address\";s:0:\"\";}s:8:\"dribbble\";a:1:{s:7:\"address\";s:0:\"\";}s:8:\"facebook\";a:2:{s:7:\"checked\";s:8:\"facebook\";s:7:\"address\";s:1:\"#\";}s:9:\"instagram\";a:2:{s:7:\"checked\";s:9:\"instagram\";s:7:\"address\";s:1:\"#\";}s:7:\"twitter\";a:2:{s:7:\"checked\";s:7:\"twitter\";s:7:\"address\";s:1:\"#\";}s:10:\"googleplus\";a:2:{s:7:\"checked\";s:10:\"googleplus\";s:7:\"address\";s:1:\"#\";}s:7:\"youtube\";a:2:{s:7:\"checked\";s:7:\"youtube\";s:7:\"address\";s:1:\"#\";}s:5:\"email\";a:2:{s:7:\"checked\";s:5:\"email\";s:7:\"address\";s:1:\"#\";}s:6:\"flickr\";a:1:{s:7:\"address\";s:0:\"\";}s:6:\"github\";a:1:{s:7:\"address\";s:0:\"\";}s:6:\"itunes\";a:1:{s:7:\"address\";s:0:\"\";}s:8:\"linkedin\";a:1:{s:7:\"address\";s:0:\"\";}s:9:\"pinterest\";a:1:{s:7:\"address\";s:0:\"\";}s:5:\"skype\";a:1:{s:7:\"address\";s:0:\"\";}s:10:\"soundcloud\";a:1:{s:7:\"address\";s:0:\"\";}s:7:\"spotify\";a:1:{s:7:\"address\";s:0:\"\";}s:6:\"tumblr\";a:1:{s:7:\"address\";s:0:\"\";}s:5:\"vimeo\";a:1:{s:7:\"address\";s:0:\"\";}}',	'Behance,deviantART,Dribbble,Facebook,Instagram,Twitter,GooglePlus,Youtube,Email,Flickr,Github,iTunes,Linkedin,Pinterest,Skype,SoundCloud,Spotify,Tumblr,Vimeo'),
(17,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'round',	'logo',	'hoverOn',	25,	5,	'right',	'a:19:{s:7:\"behance\";a:1:{s:7:\"address\";s:0:\"\";}s:10:\"deviantart\";a:1:{s:7:\"address\";s:0:\"\";}s:8:\"dribbble\";a:1:{s:7:\"address\";s:0:\"\";}s:8:\"facebook\";a:2:{s:7:\"checked\";s:8:\"facebook\";s:7:\"address\";s:1:\"#\";}s:9:\"instagram\";a:2:{s:7:\"checked\";s:9:\"instagram\";s:7:\"address\";s:1:\"#\";}s:7:\"twitter\";a:2:{s:7:\"checked\";s:7:\"twitter\";s:7:\"address\";s:1:\"#\";}s:10:\"googleplus\";a:2:{s:7:\"checked\";s:10:\"googleplus\";s:7:\"address\";s:1:\"#\";}s:7:\"youtube\";a:2:{s:7:\"checked\";s:7:\"youtube\";s:7:\"address\";s:1:\"#\";}s:5:\"email\";a:2:{s:7:\"checked\";s:5:\"email\";s:7:\"address\";s:1:\"#\";}s:6:\"flickr\";a:1:{s:7:\"address\";s:0:\"\";}s:6:\"github\";a:1:{s:7:\"address\";s:0:\"\";}s:6:\"itunes\";a:1:{s:7:\"address\";s:0:\"\";}s:8:\"linkedin\";a:1:{s:7:\"address\";s:0:\"\";}s:9:\"pinterest\";a:1:{s:7:\"address\";s:0:\"\";}s:5:\"skype\";a:1:{s:7:\"address\";s:0:\"\";}s:10:\"soundcloud\";a:1:{s:7:\"address\";s:0:\"\";}s:7:\"spotify\";a:1:{s:7:\"address\";s:0:\"\";}s:6:\"tumblr\";a:1:{s:7:\"address\";s:0:\"\";}s:5:\"vimeo\";a:1:{s:7:\"address\";s:0:\"\";}}',	'Behance,deviantART,Dribbble,Facebook,Instagram,Twitter,GooglePlus,Youtube,Email,Flickr,Github,iTunes,Linkedin,Pinterest,Skype,SoundCloud,Spotify,Tumblr,Vimeo');

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
(97,	'',	159,	'cloud',	11),
(102,	'',	159,	'page',	0),
(455,	'',	159,	'page',	11);

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
(417,	18,	'Nombre de la Persona',	'Cargo / Ocupación',	'Nombre de la Institución',	'',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.'),
(419,	19,	'Nombre de la Persona',	'Cargo / Ocupación',	'Nombre de la Institución',	'',	'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.');

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
(94,	'S',	'categorias',	2,	0,	'Temas / Categorías'),
(101,	'P',	'categorias',	2,	159,	''),
(452,	'P',	'categorias',	2,	159,	''),
(579,	'S',	'categorias',	2,	0,	''),
(582,	'P',	'categorias',	2,	159,	''),
(583,	'P',	'categorias',	2,	159,	'');

DROP TABLE IF EXISTS `btTransparenciaActiva`;
CREATE TABLE `btTransparenciaActiva` (
  `bID` int(10) unsigned NOT NULL,
  `titulo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `resumen` text COLLATE utf8_unicode_ci,
  `autor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btTransparenciaActiva` (`bID`, `titulo`, `mes`, `resumen`, `autor`) VALUES
(148,	'Organigrama',	1,	'<p style=\"text-align: justify;\">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>',	'test');

DROP TABLE IF EXISTS `btTransparenciaActivaEntries`;
CREATE TABLE `btTransparenciaActivaEntries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `texto_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `btTransparenciaActivaEntries` (`id`, `bID`, `orden`, `fID`, `texto_link`) VALUES
(1,	148,	0,	4,	'Descargar');

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
(1,	10,	1,	120),
(1,	11,	1,	120),
(1,	12,	1,	120),
(1,	13,	1,	120),
(1,	14,	1,	120),
(1,	15,	1,	120),
(1,	16,	1,	120),
(1,	17,	1,	120),
(1,	18,	1,	120),
(1,	19,	1,	120),
(1,	20,	1,	120),
(1,	21,	1,	120),
(1,	22,	1,	120),
(1,	23,	1,	120),
(1,	24,	1,	120),
(1,	25,	1,	120),
(1,	26,	1,	120),
(1,	27,	1,	120),
(1,	28,	1,	120),
(1,	29,	1,	120),
(1,	30,	1,	120),
(1,	31,	1,	120),
(1,	32,	1,	120),
(1,	33,	1,	120),
(1,	34,	1,	120),
(1,	35,	1,	120),
(1,	36,	1,	120),
(1,	37,	1,	120),
(1,	38,	1,	120),
(1,	39,	1,	120),
(1,	40,	1,	120),
(1,	41,	1,	120),
(1,	42,	1,	120),
(1,	10,	2,	121),
(1,	11,	2,	121),
(1,	12,	2,	121),
(1,	13,	2,	121),
(1,	14,	2,	121),
(1,	15,	2,	121),
(1,	16,	2,	121),
(1,	17,	2,	121),
(1,	18,	2,	121),
(1,	19,	2,	121),
(1,	20,	2,	121),
(1,	21,	2,	121),
(1,	22,	2,	121),
(1,	23,	2,	121),
(1,	24,	2,	121),
(1,	25,	2,	121),
(1,	26,	2,	121),
(1,	27,	2,	121),
(1,	28,	2,	121),
(1,	29,	2,	121),
(1,	30,	2,	121),
(1,	31,	2,	121),
(1,	32,	2,	121),
(1,	33,	2,	121),
(1,	34,	2,	121),
(1,	35,	2,	121),
(1,	36,	2,	121),
(1,	37,	2,	121),
(1,	38,	2,	121),
(1,	39,	2,	121),
(1,	40,	2,	121),
(1,	41,	2,	121),
(1,	42,	2,	121),
(1,	10,	7,	122),
(1,	11,	7,	122),
(1,	12,	7,	122),
(1,	13,	7,	122),
(1,	14,	7,	122),
(1,	15,	7,	122),
(1,	16,	7,	122),
(1,	17,	7,	122),
(1,	18,	7,	122),
(1,	19,	7,	122),
(1,	20,	7,	122),
(1,	21,	7,	122),
(1,	22,	7,	122),
(1,	23,	7,	122),
(1,	24,	7,	122),
(1,	25,	7,	122),
(1,	26,	7,	122),
(1,	27,	7,	122),
(1,	28,	7,	122),
(1,	29,	7,	122),
(1,	30,	7,	122),
(1,	31,	7,	122),
(1,	32,	7,	122),
(1,	33,	7,	122),
(1,	34,	7,	122),
(1,	35,	7,	122),
(1,	36,	7,	122),
(1,	37,	7,	122),
(1,	38,	7,	122),
(1,	39,	7,	122),
(1,	40,	7,	122),
(1,	41,	7,	122),
(1,	42,	7,	122),
(1,	10,	11,	123),
(1,	11,	11,	123),
(1,	12,	11,	123),
(1,	13,	11,	123),
(1,	14,	11,	123),
(1,	15,	11,	123),
(1,	16,	11,	123),
(1,	17,	11,	123),
(1,	18,	11,	123),
(1,	19,	11,	123),
(1,	20,	11,	123),
(1,	21,	11,	123),
(1,	22,	11,	123),
(1,	23,	11,	123),
(1,	24,	11,	123),
(1,	25,	11,	123),
(1,	26,	11,	123),
(1,	27,	11,	123),
(1,	28,	11,	123),
(1,	29,	11,	123),
(1,	30,	11,	123),
(1,	31,	11,	123),
(1,	32,	11,	123),
(1,	33,	11,	123),
(1,	34,	11,	123),
(1,	35,	11,	123),
(1,	36,	11,	123),
(1,	37,	11,	123),
(1,	38,	11,	123),
(1,	39,	11,	123),
(1,	40,	11,	123),
(1,	41,	11,	123),
(1,	42,	11,	123),
(159,	1,	5,	124),
(159,	2,	5,	124),
(159,	3,	5,	124),
(159,	4,	5,	124),
(159,	5,	5,	124),
(159,	6,	5,	124),
(159,	7,	5,	124),
(160,	1,	5,	125),
(160,	1,	8,	126),
(165,	1,	5,	132),
(165,	2,	5,	132),
(165,	3,	5,	132),
(166,	1,	5,	133),
(166,	2,	5,	134),
(166,	3,	5,	134),
(166,	4,	5,	134),
(166,	5,	5,	134),
(169,	1,	5,	135),
(169,	2,	5,	135),
(169,	3,	5,	135),
(169,	4,	5,	135),
(171,	1,	5,	138),
(171,	2,	5,	138),
(171,	3,	5,	138),
(172,	1,	5,	139),
(172,	2,	5,	139),
(159,	5,	8,	150),
(159,	6,	8,	150),
(159,	7,	8,	150),
(177,	1,	5,	162),
(177,	2,	5,	162),
(177,	3,	5,	162),
(181,	1,	5,	163),
(184,	1,	5,	164),
(185,	1,	5,	165),
(186,	1,	5,	166),
(187,	1,	5,	167),
(188,	1,	5,	168),
(191,	1,	5,	177),
(191,	2,	5,	177),
(191,	3,	5,	177),
(191,	4,	5,	177),
(191,	5,	5,	177),
(191,	6,	5,	177),
(191,	7,	5,	177),
(191,	8,	5,	177),
(191,	9,	5,	177),
(192,	1,	5,	178),
(192,	2,	5,	178),
(192,	3,	5,	178),
(193,	1,	5,	181),
(194,	1,	5,	182),
(195,	1,	5,	183),
(196,	1,	5,	184),
(204,	1,	5,	229),
(204,	2,	5,	229),
(204,	3,	5,	229),
(204,	4,	5,	229),
(212,	1,	5,	244),
(212,	2,	5,	244),
(212,	3,	5,	244),
(213,	1,	5,	285),
(213,	2,	5,	285),
(213,	3,	5,	285),
(213,	4,	5,	285),
(214,	1,	8,	303),
(218,	1,	18,	316),
(218,	1,	8,	317),
(218,	1,	19,	318),
(218,	2,	8,	319),
(218,	2,	18,	320),
(218,	2,	19,	321),
(218,	2,	5,	322),
(218,	3,	5,	322),
(218,	4,	5,	322),
(214,	1,	5,	323),
(219,	1,	5,	323),
(220,	1,	5,	323),
(221,	1,	5,	323),
(222,	1,	5,	323),
(222,	2,	5,	323),
(223,	1,	5,	323),
(214,	1,	3,	324),
(219,	1,	3,	324),
(220,	1,	3,	324),
(221,	1,	3,	324),
(222,	1,	3,	324),
(222,	2,	3,	324),
(223,	1,	3,	324),
(219,	1,	18,	325),
(219,	1,	8,	326),
(219,	1,	19,	327),
(220,	1,	18,	328),
(220,	1,	19,	330),
(221,	1,	18,	331),
(221,	1,	8,	332),
(221,	1,	19,	333),
(222,	1,	18,	334),
(222,	2,	18,	334),
(222,	1,	8,	335),
(222,	2,	8,	335),
(222,	1,	19,	336),
(222,	2,	19,	336),
(223,	1,	18,	337),
(223,	1,	19,	339),
(218,	3,	18,	340),
(218,	4,	18,	340),
(218,	3,	8,	341),
(218,	4,	8,	341),
(218,	3,	19,	342),
(218,	4,	19,	342);

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
(1,	'2018-05-16 12:09:07',	'2018-05-21 10:25:12',	'home'),
(2,	'2018-05-16 12:09:37',	'2018-05-16 12:09:37',	'dashboard'),
(3,	'2018-05-16 12:09:37',	'2018-05-16 12:09:38',	'sitemap'),
(4,	'2018-05-16 12:09:38',	'2018-05-16 12:09:38',	'full'),
(5,	'2018-05-16 12:09:38',	'2018-05-16 12:09:38',	'explore'),
(6,	'2018-05-16 12:09:38',	'2018-05-16 12:09:39',	'search'),
(7,	'2018-05-16 12:09:39',	'2018-05-16 12:09:39',	'files'),
(8,	'2018-05-16 12:09:39',	'2018-05-16 12:09:39',	'search'),
(9,	'2018-05-16 12:09:39',	'2018-05-16 12:09:40',	'attributes'),
(10,	'2018-05-16 12:09:40',	'2018-05-16 12:09:40',	'sets'),
(11,	'2018-05-16 12:09:40',	'2018-05-16 12:09:40',	'add_set'),
(12,	'2018-05-16 12:09:41',	'2018-05-16 12:09:41',	'users'),
(13,	'2018-05-16 12:09:41',	'2018-05-16 12:09:42',	'search'),
(14,	'2018-05-16 12:09:42',	'2018-05-16 12:09:42',	'groups'),
(15,	'2018-05-16 12:09:42',	'2018-05-16 12:09:42',	'attributes'),
(16,	'2018-05-16 12:09:43',	'2018-05-16 12:09:43',	'add'),
(17,	'2018-05-16 12:09:43',	'2018-05-16 12:09:43',	'add_group'),
(18,	'2018-05-16 12:09:44',	'2018-05-16 12:09:44',	'bulkupdate'),
(19,	'2018-05-16 12:09:44',	'2018-05-16 12:09:44',	'group_sets'),
(20,	'2018-05-16 12:09:44',	'2018-05-16 12:09:45',	'points'),
(21,	'2018-05-16 12:09:45',	'2018-05-16 12:09:45',	'assign'),
(22,	'2018-05-16 12:09:45',	'2018-05-16 12:09:45',	'actions'),
(23,	'2018-05-16 12:09:45',	'2018-05-16 12:09:46',	'reports'),
(24,	'2018-05-16 12:09:46',	'2018-05-16 12:09:46',	'forms'),
(25,	'2018-05-16 12:09:46',	'2018-05-16 12:09:46',	'surveys'),
(26,	'2018-05-16 12:09:46',	'2018-05-16 12:09:47',	'logs'),
(27,	'2018-05-16 12:09:47',	'2018-05-16 12:09:47',	'pages'),
(28,	'2018-05-16 12:09:47',	'2018-05-16 12:09:48',	'themes'),
(29,	'2018-05-16 12:09:48',	'2018-05-16 12:09:48',	'inspect'),
(30,	'2018-05-16 12:09:48',	'2018-05-16 12:09:48',	'types'),
(31,	'2018-05-16 12:09:48',	'2018-05-16 12:09:49',	'organize'),
(32,	'2018-05-16 12:09:49',	'2018-05-16 12:09:49',	'add'),
(33,	'2018-05-16 12:09:49',	'2018-05-16 12:09:49',	'form'),
(34,	'2018-05-16 12:09:49',	'2018-05-16 12:09:50',	'output'),
(35,	'2018-05-16 12:09:50',	'2018-05-16 12:09:50',	'attributes'),
(36,	'2018-05-16 12:09:50',	'2018-05-16 12:09:51',	'permissions'),
(37,	'2018-05-16 12:09:51',	'2018-05-16 12:09:51',	'templates'),
(38,	'2018-05-16 12:09:51',	'2018-05-16 12:09:52',	'add'),
(39,	'2018-05-16 12:09:52',	'2018-05-16 12:09:52',	'attributes'),
(40,	'2018-05-16 12:09:52',	'2018-05-16 12:09:53',	'single'),
(41,	'2018-05-16 12:09:53',	'2018-05-16 12:09:53',	'feeds'),
(42,	'2018-05-16 12:09:53',	'2018-05-16 12:09:54',	'conversations'),
(43,	'2018-05-16 12:09:54',	'2018-05-16 12:09:54',	'messages'),
(44,	'2018-05-16 12:09:54',	'2018-05-16 12:09:55',	'workflow'),
(45,	'2018-05-16 12:09:55',	'2018-05-16 12:09:55',	'me'),
(46,	'2018-05-16 12:09:55',	'2018-05-16 12:09:55',	'workflows'),
(47,	'2018-05-16 12:09:56',	'2018-05-16 12:09:56',	'blocks'),
(48,	'2018-05-16 12:09:56',	'2018-05-16 12:09:56',	'stacks'),
(49,	'2018-05-16 12:09:56',	'2018-05-16 12:09:57',	'permissions'),
(50,	'2018-05-16 12:09:57',	'2018-05-16 12:09:57',	'list'),
(51,	'2018-05-16 12:09:57',	'2018-05-16 12:09:57',	'types'),
(52,	'2018-05-16 12:09:57',	'2018-05-16 12:09:58',	'extend'),
(53,	'2018-05-16 12:09:58',	'2018-05-16 12:09:58',	'news'),
(54,	'2018-05-16 12:09:58',	'2018-05-16 12:09:59',	'install'),
(55,	'2018-05-16 12:09:59',	'2018-05-16 12:09:59',	'update'),
(56,	'2018-05-16 12:09:59',	'2018-05-16 12:09:59',	'connect'),
(57,	'2018-05-16 12:10:00',	'2018-05-16 12:10:00',	'themes'),
(58,	'2018-05-16 12:10:00',	'2018-05-16 12:10:01',	'addons'),
(59,	'2018-05-16 12:10:01',	'2018-05-16 12:10:01',	'system'),
(60,	'2018-05-16 12:10:02',	'2018-05-16 12:10:02',	'basics'),
(61,	'2018-05-16 12:10:02',	'2018-05-16 12:10:02',	'name'),
(62,	'2018-05-16 12:10:02',	'2018-05-16 12:10:03',	'accessibility'),
(63,	'2018-05-16 12:10:03',	'2018-05-16 12:10:03',	'social'),
(64,	'2018-05-16 12:10:03',	'2018-05-16 12:10:03',	'icons'),
(65,	'2018-05-16 12:10:03',	'2018-05-16 12:10:04',	'editor'),
(66,	'2018-05-16 12:10:04',	'2018-05-16 12:10:05',	'multilingual'),
(67,	'2018-05-16 12:10:05',	'2018-05-16 12:10:05',	'timezone'),
(68,	'2018-05-16 12:10:05',	'2018-05-16 12:10:06',	'multilingual'),
(69,	'2018-05-16 12:10:06',	'2018-05-16 12:10:06',	'setup'),
(70,	'2018-05-16 12:10:06',	'2018-05-16 12:10:07',	'copy'),
(71,	'2018-05-16 12:10:07',	'2018-05-16 12:10:07',	'page_report'),
(72,	'2018-05-16 12:10:07',	'2018-05-16 12:10:08',	'translate_interface'),
(73,	'2018-05-16 12:10:08',	'2018-05-16 12:10:08',	'seo'),
(74,	'2018-05-16 12:10:08',	'2018-05-16 12:10:08',	'urls'),
(75,	'2018-05-16 12:10:08',	'2018-05-16 12:10:09',	'bulk'),
(76,	'2018-05-16 12:10:09',	'2018-05-16 12:10:09',	'codes'),
(77,	'2018-05-16 12:10:09',	'2018-05-16 12:10:10',	'excluded'),
(78,	'2018-05-16 12:10:10',	'2018-05-16 12:10:10',	'searchindex'),
(79,	'2018-05-16 12:10:10',	'2018-05-16 12:10:10',	'files'),
(80,	'2018-05-16 12:10:11',	'2018-05-16 12:10:11',	'permissions'),
(81,	'2018-05-16 12:10:11',	'2018-05-16 12:10:11',	'filetypes'),
(82,	'2018-05-16 12:10:11',	'2018-05-16 12:10:11',	'thumbnails'),
(83,	'2018-05-16 12:10:12',	'2018-05-16 12:10:12',	'image_uploading'),
(84,	'2018-05-16 12:10:12',	'2018-05-16 12:10:12',	'storage'),
(85,	'2018-05-16 12:10:13',	'2018-05-16 12:10:13',	'optimization'),
(86,	'2018-05-16 12:10:13',	'2018-05-16 12:10:13',	'cache'),
(87,	'2018-05-16 12:10:13',	'2018-05-16 12:10:14',	'clearcache'),
(88,	'2018-05-16 12:10:14',	'2018-05-16 12:10:14',	'jobs'),
(89,	'2018-05-16 12:10:14',	'2018-05-16 12:10:14',	'query_log'),
(90,	'2018-05-16 12:10:15',	'2018-05-16 12:10:15',	'permissions'),
(91,	'2018-05-16 12:10:15',	'2018-05-16 12:10:15',	'site'),
(92,	'2018-05-16 12:10:15',	'2018-05-16 12:10:16',	'tasks'),
(93,	'2018-05-16 12:10:16',	'2018-05-16 12:10:16',	'users'),
(94,	'2018-05-16 12:10:16',	'2018-05-16 12:10:16',	'advanced'),
(95,	'2018-05-16 12:10:17',	'2018-05-16 12:10:17',	'blacklist'),
(96,	'2018-05-16 12:10:17',	'2018-05-16 12:10:17',	'captcha'),
(97,	'2018-05-16 12:10:18',	'2018-05-16 12:10:18',	'antispam'),
(98,	'2018-05-16 12:10:18',	'2018-05-16 12:10:18',	'maintenance'),
(99,	'2018-05-16 12:10:19',	'2018-05-16 12:10:19',	'registration'),
(100,	'2018-05-16 12:10:19',	'2018-05-16 12:10:19',	'postlogin'),
(101,	'2018-05-16 12:10:19',	'2018-05-16 12:10:20',	'profiles'),
(102,	'2018-05-16 12:10:20',	'2018-05-16 12:10:20',	'open'),
(103,	'2018-05-16 12:10:20',	'2018-05-16 12:10:20',	'authentication'),
(104,	'2018-05-16 12:10:20',	'2018-05-16 12:10:21',	'mail'),
(105,	'2018-05-16 12:10:21',	'2018-05-16 12:10:21',	'method'),
(106,	'2018-05-16 12:10:21',	'2018-05-16 12:10:22',	'test'),
(107,	'2018-05-16 12:10:22',	'2018-05-16 12:10:22',	'importers'),
(108,	'2018-05-16 12:10:22',	'2018-05-16 12:10:23',	'conversations'),
(109,	'2018-05-16 12:10:23',	'2018-05-16 12:10:23',	'settings'),
(110,	'2018-05-16 12:10:23',	'2018-05-16 12:10:24',	'points'),
(111,	'2018-05-16 12:10:24',	'2018-05-16 12:10:24',	'bannedwords'),
(112,	'2018-05-16 12:10:24',	'2018-05-16 12:10:25',	'permissions'),
(113,	'2018-05-16 12:10:25',	'2018-05-16 12:10:25',	'attributes'),
(114,	'2018-05-16 12:10:25',	'2018-05-16 12:10:26',	'sets'),
(115,	'2018-05-16 12:10:26',	'2018-05-16 12:10:26',	'types'),
(116,	'2018-05-16 12:10:26',	'2018-05-16 12:10:26',	'topics'),
(117,	'2018-05-16 12:10:26',	'2018-05-16 12:10:27',	'add'),
(118,	'2018-05-16 12:10:27',	'2018-05-16 12:10:27',	'environment'),
(119,	'2018-05-16 12:10:27',	'2018-05-16 12:10:28',	'info'),
(120,	'2018-05-16 12:10:28',	'2018-05-16 12:10:28',	'debug'),
(121,	'2018-05-16 12:10:28',	'2018-05-16 12:10:28',	'logging'),
(122,	'2018-05-16 12:10:28',	'2018-05-16 12:10:29',	'proxy'),
(123,	'2018-05-16 12:10:29',	'2018-05-16 12:10:29',	'entities'),
(124,	'2018-05-16 12:10:29',	'2018-05-16 12:10:30',	'backup'),
(125,	'2018-05-16 12:10:30',	'2018-05-16 12:10:30',	'backup'),
(126,	'2018-05-16 12:10:31',	'2018-05-16 12:10:31',	'update'),
(127,	'2018-05-16 12:10:33',	'2018-05-16 12:10:34',	'welcome'),
(128,	'2018-05-16 12:10:34',	'2018-05-16 12:10:34',	'home'),
(129,	'2018-05-16 12:10:51',	'2018-05-16 12:10:52',	'!drafts'),
(130,	'2018-05-16 12:10:52',	'2018-05-16 12:10:52',	'!trash'),
(131,	'2018-05-16 12:10:52',	'2018-05-16 12:10:53',	'!stacks'),
(132,	'2018-05-16 12:10:53',	'2018-05-16 12:10:53',	'login'),
(133,	'2018-05-16 12:10:53',	'2018-05-16 12:10:54',	'register'),
(134,	'2018-05-16 12:10:54',	'2018-05-16 12:10:54',	'account'),
(135,	'2018-05-16 12:10:54',	'2018-05-16 12:10:54',	'edit_profile'),
(136,	'2018-05-16 12:10:54',	'2018-05-16 12:10:55',	'avatar'),
(137,	'2018-05-16 12:10:55',	'2018-05-16 12:10:55',	'messages'),
(138,	'2018-05-16 12:10:55',	'2018-05-16 12:10:55',	'inbox'),
(139,	'2018-05-16 12:10:56',	'2018-05-16 12:10:56',	'members'),
(140,	'2018-05-16 12:10:56',	'2018-05-16 12:10:56',	'profile'),
(141,	'2018-05-16 12:10:56',	'2018-05-16 12:10:56',	'directory'),
(142,	'2018-05-16 12:10:57',	'2018-05-16 12:10:57',	'page_not_found'),
(143,	'2018-05-16 12:10:57',	'2018-05-16 12:10:57',	'page_forbidden'),
(144,	'2018-05-16 12:10:58',	'2018-05-16 12:10:58',	'download_file'),
(145,	'2018-05-16 12:11:01',	'2018-05-16 12:11:01',	NULL),
(146,	'2018-05-16 13:36:29',	'2018-05-21 09:05:27',	'header-site-title'),
(147,	'2018-05-16 13:36:29',	'2018-05-17 15:05:53',	'header-navigation'),
(148,	'2018-05-16 13:36:30',	'2018-05-21 10:25:13',	'footer-legal'),
(149,	'2018-05-16 13:36:30',	'2018-05-18 11:49:29',	'footer-navigation'),
(150,	'2018-05-16 13:36:30',	'2018-05-21 10:25:13',	'footer-contact'),
(151,	'2018-05-16 13:55:32',	'2018-05-16 14:16:57',	'info-superior'),
(152,	'2018-05-16 13:55:32',	'2018-05-21 10:23:38',	'search'),
(153,	'2018-05-16 13:55:33',	'2018-05-21 09:03:32',	'espacio-2'),
(154,	'2018-05-16 13:55:33',	'2018-05-21 09:03:32',	'espacio-3'),
(157,	'2018-05-16 14:30:58',	'2018-05-16 14:30:58',	NULL),
(159,	'2018-05-16 14:43:48',	'2018-05-21 10:15:57',	''),
(160,	'2018-05-16 15:11:48',	'2018-05-16 15:11:48',	NULL),
(165,	'2018-05-17 10:14:16',	'2018-05-17 10:44:52',	''),
(166,	'2018-05-17 10:17:29',	'2018-05-17 10:53:15',	''),
(167,	'2018-05-17 10:36:28',	'2018-05-17 10:36:28',	NULL),
(168,	'2018-05-17 10:39:58',	'2018-05-17 10:39:58',	NULL),
(169,	'2018-05-17 10:41:49',	'2018-05-17 10:55:33',	''),
(171,	'2018-05-17 10:44:57',	'2018-05-17 10:47:52',	''),
(172,	'2018-05-17 10:46:12',	'2018-05-17 11:00:41',	''),
(177,	'2018-05-17 11:35:06',	'2018-05-17 11:52:06',	''),
(178,	'2018-05-17 11:42:16',	'2018-05-17 11:42:16',	'open_data'),
(179,	'2018-05-17 11:42:17',	'2018-05-17 11:42:17',	'list_catalog'),
(180,	'2018-05-17 11:42:17',	'2018-05-17 11:42:17',	'catalog'),
(181,	'2018-05-17 11:42:18',	'2018-05-17 11:42:18',	'list_datasets'),
(182,	'2018-05-17 11:42:18',	'2018-05-17 11:42:18',	'datasets'),
(183,	'2018-05-17 11:42:18',	'2018-05-17 11:42:19',	'types'),
(184,	'2018-05-17 11:42:19',	'2018-05-17 11:42:19',	'resource'),
(185,	'2018-05-17 11:42:20',	'2018-05-17 11:42:20',	'files'),
(186,	'2018-05-17 11:42:20',	'2018-05-17 11:42:21',	'list_resource'),
(187,	'2018-05-17 11:42:21',	'2018-05-17 11:42:22',	'dictionary'),
(188,	'2018-05-17 11:42:22',	'2018-05-17 11:42:22',	'list_dictionary'),
(191,	'2018-05-18 09:56:03',	'2018-05-21 09:07:54',	''),
(192,	'2018-05-18 10:18:37',	'2018-05-18 12:21:09',	''),
(193,	'2018-05-18 10:46:14',	'2018-05-18 10:46:32',	''),
(194,	'2018-05-18 10:46:54',	'2018-05-18 10:47:11',	''),
(195,	'2018-05-18 10:47:15',	'2018-05-18 10:47:29',	''),
(196,	'2018-05-18 10:47:37',	'2018-05-18 10:47:48',	''),
(204,	'2018-05-18 11:40:22',	'2018-05-18 11:49:28',	''),
(205,	'2018-05-18 11:59:54',	'2018-05-18 11:59:54',	'event_calendar'),
(206,	'2018-05-18 11:59:55',	'2018-05-18 11:59:55',	'list_calendar'),
(207,	'2018-05-18 11:59:55',	'2018-05-18 11:59:55',	'list_event'),
(208,	'2018-05-18 11:59:56',	'2018-05-18 11:59:56',	'calendar'),
(209,	'2018-05-18 11:59:56',	'2018-05-18 11:59:56',	'event'),
(210,	'2018-05-18 11:59:57',	'2018-05-18 11:59:57',	'types'),
(211,	'2018-05-18 11:59:57',	'2018-05-18 11:59:57',	'settings'),
(212,	'2018-05-18 12:00:15',	'2018-05-18 12:02:02',	''),
(213,	'2018-05-18 15:07:46',	'2018-05-18 15:12:23',	''),
(214,	'2018-05-21 09:32:29',	'2018-05-21 09:32:29',	NULL),
(218,	'2018-05-21 09:52:23',	'2018-05-21 10:14:30',	''),
(219,	'2018-05-21 09:56:24',	'2018-05-21 09:58:06',	''),
(220,	'2018-05-21 09:58:40',	'2018-05-21 09:59:50',	''),
(221,	'2018-05-21 10:00:06',	'2018-05-21 10:02:02',	''),
(222,	'2018-05-21 10:02:17',	'2018-05-21 10:04:37',	''),
(223,	'2018-05-21 10:09:23',	'2018-05-21 10:10:57',	'');

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
  `ak_categorias` longtext COLLATE utf8_unicode_ci,
  `ak_thumbnail` int(11) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_categorias`, `ak_thumbnail`) VALUES
(1,	'',	'',	NULL,	NULL,	0,	0,	'',	NULL,	0,	0,	0,	NULL,	0),
(2,	NULL,	NULL,	NULL,	'fa fa-th-large',	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(3,	NULL,	NULL,	'pages, add page, delete page, copy, move, alias',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(4,	NULL,	NULL,	'pages, add page, delete page, copy, move, alias',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(5,	NULL,	NULL,	'pages, add page, delete page, copy, move, alias, bulk',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(6,	NULL,	NULL,	'find page, search page, search, find, pages, sitemap',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(8,	NULL,	NULL,	'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(9,	NULL,	NULL,	'file, file attributes, title, attribute, description, rename',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(10,	NULL,	NULL,	'files, category, categories',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(11,	NULL,	NULL,	'new file set',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(12,	NULL,	NULL,	'users, groups, people, find, delete user, remove user, change password, password',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(13,	NULL,	NULL,	'find, search, people, delete user, remove user, change password, password',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(14,	NULL,	NULL,	'user, group, people, permissions, expire, badges',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(15,	NULL,	NULL,	'user attributes, user data, gather data, registration data',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(16,	NULL,	NULL,	'new user, create',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(17,	NULL,	NULL,	'new user group, new group, group, create',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(19,	NULL,	NULL,	'group set',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(20,	NULL,	NULL,	'community, points, karma',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(22,	NULL,	NULL,	'action, community actions',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(23,	NULL,	NULL,	'forms, log, error, email, mysql, exception, survey',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(24,	NULL,	NULL,	'forms, questions, response, data',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(25,	NULL,	NULL,	'questions, quiz, response',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(26,	NULL,	NULL,	'forms, log, error, email, mysql, exception, survey, history',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(28,	NULL,	NULL,	'new theme, theme, active theme, change theme, template, css',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(29,	NULL,	NULL,	'page types',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(31,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(32,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(33,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(34,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(35,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(36,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(38,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(39,	NULL,	NULL,	'page attributes, custom',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(40,	NULL,	NULL,	'single, page, custom, application',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(41,	NULL,	NULL,	'atom, rss, feed, syndication',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(43,	NULL,	NULL,	NULL,	'icon-bullhorn',	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(44,	NULL,	NULL,	'add workflow, remove workflow',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(48,	NULL,	NULL,	'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(50,	NULL,	NULL,	'edit stacks, view stacks, all stacks',	NULL,	1,	0,	NULL,	NULL,	0,	1,	0,	NULL,	0),
(51,	NULL,	NULL,	'block, refresh, custom',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(52,	NULL,	NULL,	'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(53,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(54,	NULL,	NULL,	'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(55,	NULL,	NULL,	'update, upgrade',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(56,	NULL,	NULL,	'concrete5.org, my account, marketplace',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(57,	NULL,	NULL,	'buy theme, new theme, marketplace, template',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(58,	NULL,	NULL,	'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(59,	NULL,	NULL,	'dashboard, configuration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(61,	NULL,	NULL,	'website name, title',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(62,	NULL,	NULL,	'accessibility, easy mode',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(63,	NULL,	NULL,	'sharing, facebook, twitter',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(64,	NULL,	NULL,	'logo, favicon, iphone, icon, bookmark',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(65,	NULL,	NULL,	'tinymce, content block, fonts, editor, content, overlay',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(66,	NULL,	NULL,	'translate, translation, internationalization, multilingual',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(67,	NULL,	NULL,	'timezone, profile, locale',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(68,	NULL,	NULL,	'multilingual, localization, internationalization, i18n',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(74,	NULL,	NULL,	'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(75,	NULL,	NULL,	'bulk, seo, change keywords, engine, optimization, search',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(76,	NULL,	NULL,	'traffic, statistics, google analytics, quant, pageviews, hits',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(77,	NULL,	NULL,	'pretty, slug',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(78,	NULL,	NULL,	'configure search, site search, search option',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(80,	NULL,	NULL,	'file options, file manager, upload, modify',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(81,	NULL,	NULL,	'security, files, media, extension, manager, upload',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(82,	NULL,	NULL,	'images, picture, responsive, retina',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(83,	NULL,	NULL,	'uploading, upload, images, image, resizing, manager',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(84,	NULL,	NULL,	'security, alternate storage, hide files',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(86,	NULL,	NULL,	'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(87,	NULL,	NULL,	'cache option, turn off cache, no cache, page cache, caching',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(88,	NULL,	NULL,	'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(89,	NULL,	NULL,	'queries, database, mysql',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(91,	NULL,	NULL,	'editors, hide site, offline, private, public, access',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(92,	NULL,	NULL,	'security, actions, administrator, admin, package, marketplace, search',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(95,	NULL,	NULL,	'security, lock ip, lock out, block ip, address, restrict, access',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(96,	NULL,	NULL,	'security, registration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(97,	NULL,	NULL,	'antispam, block spam, security',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(98,	NULL,	NULL,	'lock site, under construction, hide, hidden',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(100,	NULL,	NULL,	'profile, login, redirect, specific, dashboard, administrators',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(101,	NULL,	NULL,	'member profile, member page, community, forums, social, avatar',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(102,	NULL,	NULL,	'signup, new user, community, public registration, public, registration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(103,	NULL,	NULL,	'auth, authentication, types, oauth, facebook, login, registration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(104,	NULL,	NULL,	'smtp, mail settings',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(105,	NULL,	NULL,	'email server, mail settings, mail configuration, external, internal',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(106,	NULL,	NULL,	'test smtp, test mail',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(107,	NULL,	NULL,	'email server, mail settings, mail configuration, private message, message system, import, email, message',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(108,	NULL,	NULL,	'conversations',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(109,	NULL,	NULL,	'conversations',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(110,	NULL,	NULL,	'conversations ratings, ratings, community, community points',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(111,	NULL,	NULL,	'conversations bad words, banned words, banned, bad words, bad, words, list',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(113,	NULL,	NULL,	'attribute configuration',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(114,	NULL,	NULL,	'attributes, sets',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(115,	NULL,	NULL,	'attributes, types',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(116,	NULL,	NULL,	'topics, tags, taxonomy',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(118,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	1,	0,	NULL,	0),
(119,	NULL,	NULL,	'overrides, system info, debug, support, help',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(120,	NULL,	NULL,	'errors, exceptions, develop, support, help',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(121,	NULL,	NULL,	'email, logging, logs, smtp, pop, errors, mysql, log',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(122,	NULL,	NULL,	'network, proxy server',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(123,	NULL,	NULL,	'database, entities, doctrine, orm',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(124,	NULL,	NULL,	'export, backup, database, sql, mysql, encryption, restore',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(126,	NULL,	NULL,	'upgrade, new version, update',	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(127,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(128,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	1,	0,	NULL,	0),
(129,	NULL,	NULL,	NULL,	'fa fa-edit',	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(130,	NULL,	NULL,	NULL,	'fa fa-trash-o',	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(131,	NULL,	NULL,	NULL,	'fa fa-th',	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(134,	NULL,	NULL,	NULL,	'fa fa-briefcase',	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(146,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(147,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(148,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(149,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(150,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(151,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(152,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(153,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(154,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(159,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	'',	0,	0,	0,	NULL,	0),
(165,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(166,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(169,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(171,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(172,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(177,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(181,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(184,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(185,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(186,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(187,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(188,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(191,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(192,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(193,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(194,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(195,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(196,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(204,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(212,	NULL,	NULL,	NULL,	NULL,	0,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(213,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	NULL,	0),
(218,	NULL,	NULL,	NULL,	NULL,	1,	0,	NULL,	'\nTICs\n',	0,	0,	0,	'||/Informática||',	14),
(219,	NULL,	NULL,	'Noticias',	NULL,	1,	0,	NULL,	'\nNacionales\n',	0,	0,	0,	'||/Salud||',	15),
(220,	NULL,	NULL,	'Noticias',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	'||/Informática||',	16),
(221,	NULL,	NULL,	'Noticias',	NULL,	1,	0,	NULL,	'\nTICs\n',	0,	0,	0,	'||/Informática||',	17),
(222,	NULL,	NULL,	'Noticias',	NULL,	1,	0,	NULL,	'\nNacionales\n',	0,	0,	0,	'||/Salud||',	33),
(223,	NULL,	NULL,	'Noticias',	NULL,	1,	0,	NULL,	NULL,	0,	0,	0,	'||',	38);

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(1,	11,	118,	'Contenido A',	0,	1,	0,	0,	0,	0,	0),
(1,	12,	118,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	12,	119,	'Contenido A',	1,	1,	0,	0,	0,	0,	0),
(1,	13,	118,	'Contenido A',	1,	0,	0,	0,	0,	0,	0),
(1,	13,	119,	'Contenido A',	2,	0,	0,	0,	0,	0,	0),
(1,	13,	150,	'Contenido A',	0,	1,	0,	0,	0,	0,	0),
(1,	14,	118,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	119,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	14,	150,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	14,	151,	'Contenido A',	0,	1,	0,	0,	0,	0,	0),
(1,	14,	153,	'Slider',	0,	1,	0,	0,	0,	0,	0),
(1,	15,	118,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	119,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	15,	151,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	153,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	15,	154,	'Contenido A : 7',	0,	1,	0,	0,	0,	0,	0),
(1,	16,	118,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	119,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	16,	151,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	154,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	16,	155,	'Slider',	0,	1,	0,	0,	0,	0,	0),
(1,	17,	118,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	119,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	17,	151,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	17,	154,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	118,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	119,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	18,	151,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	18,	154,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	118,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	119,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	19,	151,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	19,	154,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	118,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	119,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	20,	151,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	154,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	160,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	20,	161,	'Slider',	0,	1,	0,	0,	0,	0,	0),
(1,	21,	118,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	119,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	21,	151,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	154,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	161,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	21,	162,	'Slider : 10',	0,	1,	0,	0,	0,	0,	0),
(1,	22,	118,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	22,	151,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	154,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	161,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	162,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	22,	239,	'Contenido A : 7',	1,	1,	0,	0,	0,	0,	0),
(1,	22,	240,	'Contenido A : 6',	0,	1,	0,	0,	0,	0,	0),
(1,	23,	118,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	23,	154,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	162,	'Slider : 11',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	239,	'Contenido A : 7',	1,	0,	0,	0,	0,	0,	0),
(1,	23,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	23,	248,	'Contenido A',	0,	1,	0,	0,	0,	0,	0),
(1,	23,	249,	'Slider',	0,	1,	0,	0,	0,	0,	0),
(1,	24,	118,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	24,	154,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	24,	239,	'Contenido A : 7',	1,	0,	0,	0,	0,	0,	0),
(1,	24,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	24,	253,	'Slider : 10',	0,	1,	0,	0,	0,	0,	0),
(1,	25,	118,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	25,	154,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	25,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	25,	255,	'Slider : 10',	1,	1,	0,	0,	0,	0,	0),
(1,	25,	256,	'Slider : 10',	0,	1,	0,	0,	0,	0,	0),
(1,	25,	258,	'Slider : 10',	2,	1,	0,	0,	0,	0,	0),
(1,	25,	260,	'Slider : 10',	3,	1,	0,	0,	0,	0,	0),
(1,	26,	118,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	26,	154,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	26,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	255,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	26,	256,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	26,	258,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	26,	260,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	26,	261,	'Slider',	1,	1,	0,	0,	0,	0,	0),
(1,	27,	118,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	27,	154,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	27,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	255,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	27,	256,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	27,	258,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	27,	260,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	27,	262,	'Slider',	1,	1,	0,	0,	0,	0,	0),
(1,	28,	118,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	28,	154,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	28,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	255,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	28,	256,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	28,	258,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	28,	260,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	28,	262,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	29,	118,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	29,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	29,	262,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	29,	263,	'Slider : 10',	4,	1,	0,	0,	0,	0,	0),
(1,	29,	264,	'Slider : 10',	3,	1,	0,	0,	0,	0,	0),
(1,	29,	265,	'Slider : 10',	2,	1,	0,	0,	0,	0,	0),
(1,	29,	266,	'Slider : 10',	1,	1,	0,	0,	0,	0,	0),
(1,	29,	267,	'Slider : 10',	0,	1,	0,	0,	0,	0,	0),
(1,	30,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	262,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	30,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	30,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	30,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	30,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	30,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	30,	414,	'Contenido A : 6',	1,	1,	0,	0,	0,	0,	0),
(1,	31,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	262,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	31,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	31,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	31,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	31,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	31,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	31,	415,	'Contenido A : 6',	1,	1,	0,	0,	0,	0,	0),
(1,	31,	416,	'Contenido A : 6',	2,	1,	0,	0,	0,	0,	0),
(1,	32,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	262,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	32,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	32,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	32,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	32,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	32,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	32,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	32,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	32,	424,	'Slider : 11',	0,	1,	0,	0,	0,	0,	0),
(1,	33,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	262,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	33,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	33,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	33,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	33,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	33,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	33,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	33,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	33,	424,	'Slider : 11',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	262,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	34,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	34,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	34,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	34,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	34,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	34,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	34,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	34,	425,	'Slider : 11',	0,	1,	0,	0,	0,	0,	0),
(1,	35,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	262,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	35,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	35,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	35,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	35,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	35,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	35,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	35,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	35,	426,	'Slider : 11',	0,	1,	0,	0,	0,	0,	0),
(1,	36,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	36,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	36,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	36,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	36,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	36,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	36,	426,	'Slider : 11',	0,	0,	0,	0,	0,	0,	0),
(1,	36,	431,	'Slider',	1,	1,	0,	0,	0,	0,	0),
(1,	37,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	37,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	37,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	37,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	37,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	37,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	37,	426,	'Slider : 11',	0,	0,	0,	0,	0,	0,	0),
(1,	37,	431,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	38,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	38,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	38,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	38,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	38,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	38,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	38,	426,	'Slider : 11',	0,	0,	0,	0,	0,	0,	0),
(1,	38,	431,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	39,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	39,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	39,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	39,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	39,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	39,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	39,	426,	'Slider : 11',	0,	0,	0,	0,	0,	0,	0),
(1,	39,	431,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	40,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	40,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	40,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	40,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	40,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	40,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	40,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	40,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	40,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	40,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	40,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	40,	426,	'Slider : 11',	0,	0,	0,	0,	0,	0,	0),
(1,	40,	431,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	41,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	41,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	41,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	41,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	41,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	41,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	41,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	41,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	41,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	41,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	41,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	41,	426,	'Slider : 11',	0,	0,	0,	0,	0,	0,	0),
(1,	41,	431,	'Slider',	1,	0,	0,	0,	0,	0,	0),
(1,	42,	239,	'Contenido A : 7',	0,	0,	0,	0,	0,	0,	0),
(1,	42,	240,	'Contenido A : 6',	0,	0,	0,	0,	0,	0,	0),
(1,	42,	248,	'Contenido A',	0,	0,	0,	0,	0,	0,	0),
(1,	42,	249,	'Slider',	0,	0,	0,	0,	0,	0,	0),
(1,	42,	263,	'Slider : 10',	4,	0,	0,	0,	0,	0,	0),
(1,	42,	264,	'Slider : 10',	3,	0,	0,	0,	0,	0,	0),
(1,	42,	265,	'Slider : 10',	2,	0,	0,	0,	0,	0,	0),
(1,	42,	266,	'Slider : 10',	1,	0,	0,	0,	0,	0,	0),
(1,	42,	267,	'Slider : 10',	0,	0,	0,	0,	0,	0,	0),
(1,	42,	415,	'Contenido A : 6',	1,	0,	0,	0,	0,	0,	0),
(1,	42,	416,	'Contenido A : 6',	2,	0,	0,	0,	0,	0,	0),
(1,	42,	426,	'Slider : 11',	0,	0,	0,	0,	0,	0,	0),
(1,	42,	431,	'Slider',	1,	0,	0,	0,	0,	0,	0),
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
(146,	4,	435,	'Main',	0,	1,	0,	0,	0,	0,	0),
(147,	2,	18,	'Main',	0,	1,	0,	0,	0,	0,	0),
(147,	3,	18,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	4,	18,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	4,	33,	'Main',	1,	1,	0,	0,	0,	0,	0),
(147,	5,	18,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	5,	33,	'Main',	1,	0,	0,	0,	0,	0,	0),
(147,	6,	18,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	6,	33,	'Main',	1,	0,	0,	0,	0,	0,	0),
(147,	7,	18,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	8,	18,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	8,	159,	'Main',	1,	1,	0,	0,	0,	0,	0),
(147,	9,	18,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	9,	160,	'Main',	1,	1,	0,	0,	0,	0,	0),
(147,	10,	18,	'Main',	0,	0,	0,	0,	0,	0,	0),
(147,	10,	160,	'Main',	1,	0,	0,	0,	0,	0,	0),
(147,	11,	18,	'Main',	0,	0,	0,	0,	0,	0,	0),
(148,	2,	14,	'Main',	0,	1,	0,	0,	0,	0,	0),
(148,	3,	15,	'Main',	0,	1,	0,	0,	0,	0,	0),
(148,	4,	421,	'Main',	0,	1,	0,	0,	0,	0,	0),
(148,	5,	421,	'Main',	0,	0,	0,	0,	0,	0,	0),
(148,	5,	585,	'Main',	1,	1,	0,	0,	0,	0,	0),
(148,	6,	585,	'Main',	1,	0,	0,	0,	0,	0,	0),
(148,	6,	587,	'Main',	0,	1,	0,	0,	0,	0,	0),
(149,	2,	420,	'Main',	0,	1,	0,	0,	0,	0,	0),
(150,	2,	422,	'Main',	0,	1,	0,	0,	0,	0,	0),
(150,	4,	423,	'Main',	0,	1,	0,	0,	0,	0,	0),
(150,	5,	423,	'Main',	0,	0,	0,	0,	0,	0,	0),
(150,	5,	436,	'Main',	1,	1,	0,	0,	0,	0,	0),
(150,	6,	423,	'Main',	0,	0,	0,	0,	0,	0,	0),
(150,	6,	437,	'Main',	1,	1,	0,	0,	0,	0,	0),
(150,	7,	423,	'Main',	0,	0,	0,	0,	0,	0,	0),
(150,	7,	586,	'Main',	1,	1,	0,	0,	0,	0,	0),
(151,	2,	16,	'Main',	0,	0,	0,	0,	0,	0,	0),
(151,	3,	16,	'Main',	0,	0,	0,	0,	0,	0,	0),
(151,	4,	17,	'Main',	0,	1,	0,	0,	0,	0,	0),
(152,	2,	13,	'Main',	0,	1,	0,	0,	0,	0,	0),
(152,	3,	13,	'Main',	0,	0,	0,	0,	0,	0,	0),
(152,	4,	433,	'Main',	0,	1,	0,	0,	0,	0,	0),
(152,	5,	433,	'Main',	0,	0,	0,	0,	0,	0,	0),
(152,	6,	584,	'Main',	0,	1,	0,	0,	0,	0,	0),
(153,	2,	11,	'Main',	0,	1,	0,	0,	0,	0,	0),
(153,	3,	11,	'Main',	1,	0,	0,	0,	0,	0,	0),
(153,	3,	16,	'Main',	0,	1,	0,	0,	0,	0,	0),
(153,	4,	11,	'Main',	1,	0,	0,	0,	0,	0,	0),
(153,	4,	16,	'Main',	0,	0,	0,	0,	0,	0,	0),
(153,	5,	11,	'Main',	1,	0,	0,	0,	0,	0,	0),
(154,	2,	12,	'Main',	0,	1,	0,	0,	0,	0,	0),
(157,	1,	23,	'Titulo',	1,	1,	0,	0,	0,	0,	0),
(157,	1,	32,	'Titulo',	0,	1,	0,	0,	0,	0,	0),
(159,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(159,	2,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(159,	2,	34,	'Titulo',	0,	1,	0,	0,	0,	0,	0),
(159,	3,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(159,	3,	34,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(159,	3,	54,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(159,	4,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(159,	4,	34,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(159,	4,	56,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(159,	5,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(159,	5,	34,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(159,	5,	56,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(159,	5,	94,	'Contenido Lateral',	1,	1,	0,	0,	0,	0,	0),
(159,	5,	95,	'Contenido Lateral',	0,	1,	0,	0,	0,	0,	0),
(159,	5,	96,	'Contenido Lateral',	2,	1,	0,	0,	0,	0,	0),
(159,	5,	97,	'Contenido Lateral',	3,	1,	0,	0,	0,	0,	0),
(159,	5,	98,	'Contenido Lateral',	4,	1,	0,	0,	0,	0,	0),
(159,	6,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(159,	6,	34,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(159,	6,	56,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(159,	6,	95,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(159,	6,	96,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(159,	6,	97,	'Contenido Lateral',	3,	0,	0,	0,	0,	0,	0),
(159,	6,	98,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(159,	6,	579,	'Contenido Lateral',	1,	1,	0,	0,	0,	0,	0),
(159,	7,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(159,	7,	34,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(159,	7,	56,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(159,	7,	95,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(159,	7,	96,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(159,	7,	97,	'Contenido Lateral',	3,	0,	0,	0,	0,	0,	0),
(159,	7,	98,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(159,	7,	579,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(160,	1,	25,	'Titulo : 8',	1,	1,	0,	0,	0,	0,	0),
(160,	1,	26,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(160,	1,	27,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(160,	1,	30,	'Contenido : 1',	0,	1,	0,	0,	0,	0,	0),
(160,	1,	31,	'Contenido : 2',	0,	1,	0,	0,	0,	0,	0),
(160,	1,	92,	'Titulo : 8',	0,	1,	0,	0,	0,	0,	0),
(160,	1,	101,	'Contenido : 1',	1,	1,	0,	0,	0,	0,	0),
(160,	1,	102,	'Contenido : 2',	1,	1,	0,	0,	0,	0,	0),
(160,	1,	156,	'Titulo',	2,	1,	0,	0,	0,	0,	0),
(160,	1,	157,	'Titulo : 9',	0,	1,	0,	0,	0,	0,	0),
(160,	1,	158,	'Titulo : 9',	1,	1,	0,	0,	0,	0,	0),
(165,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(165,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(165,	2,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(165,	2,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(165,	2,	42,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(165,	3,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(165,	3,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(165,	3,	43,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(166,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(166,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(166,	2,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(166,	2,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(166,	3,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(166,	3,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(166,	4,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(166,	4,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(166,	4,	41,	'Contenido Lateral',	0,	1,	0,	0,	0,	0,	0),
(166,	5,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(166,	5,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(166,	5,	41,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(166,	5,	47,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(166,	5,	48,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(166,	5,	49,	'Contenido : 3',	0,	1,	0,	0,	0,	0,	0),
(166,	5,	50,	'Contenido : 4',	0,	1,	0,	0,	0,	0,	0),
(166,	5,	51,	'Contenido : 5',	0,	1,	0,	0,	0,	0,	0),
(167,	1,	35,	'Titulo',	0,	1,	0,	0,	0,	0,	0),
(167,	1,	36,	'Titulo',	1,	1,	0,	0,	0,	0,	0),
(167,	1,	37,	'Contenido Lateral',	0,	1,	0,	0,	0,	0,	0),
(168,	1,	38,	'Titulo',	0,	1,	0,	0,	0,	0,	0),
(168,	1,	39,	'Titulo',	1,	1,	0,	0,	0,	0,	0),
(168,	1,	40,	'Contenido Lateral',	0,	1,	0,	0,	0,	0,	0),
(169,	1,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	1,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	1,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(169,	2,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	2,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	2,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(169,	2,	46,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(169,	3,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	3,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	3,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(169,	3,	46,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(169,	3,	52,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(169,	4,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(169,	4,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(169,	4,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(169,	4,	52,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(171,	1,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(171,	1,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(171,	1,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(171,	2,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(171,	2,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(171,	2,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(171,	2,	44,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(171,	3,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(171,	3,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(171,	3,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(171,	3,	45,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(172,	1,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(172,	1,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(172,	1,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(172,	2,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(172,	2,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(172,	2,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(172,	2,	53,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(177,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(177,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(177,	2,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(177,	2,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(177,	2,	148,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(177,	3,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(177,	3,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(177,	3,	149,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(191,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(191,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(191,	2,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(191,	2,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(191,	2,	231,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(191,	2,	232,	'Contenido : 12',	0,	1,	0,	0,	0,	0,	0),
(191,	3,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(191,	3,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(191,	3,	231,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(191,	3,	232,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(191,	3,	233,	'Contenido : 13',	0,	1,	0,	0,	0,	0,	0),
(191,	4,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(191,	4,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(191,	4,	231,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(191,	4,	233,	'Contenido : 13',	0,	0,	0,	0,	0,	0,	0),
(191,	4,	234,	'Contenido : 12',	0,	1,	0,	0,	0,	0,	0),
(191,	5,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(191,	5,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(191,	5,	231,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(191,	5,	233,	'Contenido : 13',	0,	0,	0,	0,	0,	0,	0),
(191,	5,	234,	'Contenido : 12',	1,	0,	0,	0,	0,	0,	0),
(191,	5,	235,	'Contenido : 12',	0,	1,	0,	0,	0,	0,	0),
(191,	6,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(191,	6,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(191,	6,	231,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(191,	6,	233,	'Contenido : 13',	0,	0,	0,	0,	0,	0,	0),
(191,	6,	235,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(191,	6,	236,	'Contenido : 12',	1,	1,	0,	0,	0,	0,	0),
(191,	7,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(191,	7,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(191,	7,	231,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(191,	7,	233,	'Contenido : 13',	0,	0,	0,	0,	0,	0,	0),
(191,	7,	235,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(191,	7,	236,	'Contenido : 12',	1,	0,	0,	0,	0,	0,	0),
(191,	8,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(191,	8,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(191,	8,	231,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(191,	8,	235,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(191,	8,	236,	'Contenido : 12',	1,	0,	0,	0,	0,	0,	0),
(191,	8,	237,	'Contenido : 13',	0,	1,	0,	0,	0,	0,	0),
(191,	9,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(191,	9,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(191,	9,	231,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(191,	9,	235,	'Contenido : 12',	0,	0,	0,	0,	0,	0,	0),
(191,	9,	236,	'Contenido : 12',	1,	0,	0,	0,	0,	0,	0),
(191,	9,	238,	'Contenido : 13',	0,	1,	0,	0,	0,	0,	0),
(192,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(192,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(192,	2,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(192,	2,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(192,	2,	429,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(192,	3,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(192,	3,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(192,	3,	430,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(193,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(193,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(194,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(194,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(195,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(195,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(196,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(196,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(204,	1,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(204,	1,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(204,	1,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(204,	2,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(204,	2,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(204,	2,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(204,	2,	417,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(204,	2,	419,	'Contenido',	1,	1,	0,	0,	0,	0,	0),
(204,	3,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(204,	3,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(204,	3,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(204,	3,	417,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(204,	3,	419,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(204,	4,	35,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(204,	4,	36,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(204,	4,	37,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(204,	4,	417,	'Contenido',	1,	0,	0,	0,	0,	0,	0),
(204,	4,	419,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(212,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(212,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(212,	2,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(212,	2,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(212,	2,	427,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(212,	3,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(212,	3,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(212,	3,	428,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(213,	1,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(213,	1,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(213,	2,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(213,	2,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(213,	2,	432,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(213,	3,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(213,	3,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(213,	3,	432,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(213,	4,	23,	'Titulo',	1,	0,	0,	0,	0,	0,	0),
(213,	4,	32,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(213,	4,	434,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(214,	1,	444,	'Titulo : 14',	0,	1,	0,	0,	0,	0,	0),
(214,	1,	445,	'Titulo',	1,	1,	0,	0,	0,	0,	0),
(214,	1,	446,	'Titulo : 14',	1,	1,	0,	0,	0,	0,	0),
(214,	1,	447,	'Titulo : 15',	1,	1,	0,	0,	0,	0,	0),
(214,	1,	448,	'Titulo : 15',	0,	1,	0,	0,	0,	0,	0),
(214,	1,	449,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(214,	1,	450,	'Contenido Lateral',	2,	1,	0,	0,	0,	0,	0),
(214,	1,	452,	'Contenido Lateral',	3,	1,	0,	0,	0,	0,	0),
(214,	1,	453,	'Contenido Lateral',	4,	1,	0,	0,	0,	0,	0),
(214,	1,	455,	'Contenido Lateral',	5,	1,	0,	0,	0,	0,	0),
(214,	1,	456,	'Contenido Lateral',	6,	1,	0,	0,	0,	0,	0),
(214,	1,	462,	'Contenido Lateral',	1,	1,	0,	0,	0,	0,	0),
(214,	1,	464,	'Contenido Lateral',	0,	1,	0,	0,	0,	0,	0),
(218,	1,	444,	'Titulo : 14',	0,	0,	0,	0,	0,	0,	0),
(218,	1,	445,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(218,	1,	446,	'Titulo : 14',	1,	0,	0,	0,	0,	0,	0),
(218,	1,	447,	'Titulo : 15',	1,	0,	0,	0,	0,	0,	0),
(218,	1,	448,	'Titulo : 15',	0,	0,	0,	0,	0,	0,	0),
(218,	1,	450,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(218,	1,	452,	'Contenido Lateral',	3,	0,	0,	0,	0,	0,	0),
(218,	1,	453,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(218,	1,	455,	'Contenido Lateral',	5,	0,	0,	0,	0,	0,	0),
(218,	1,	456,	'Contenido Lateral',	6,	0,	0,	0,	0,	0,	0),
(218,	1,	462,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(218,	1,	464,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(218,	1,	498,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(218,	2,	444,	'Titulo : 14',	0,	0,	0,	0,	0,	0,	0),
(218,	2,	445,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(218,	2,	446,	'Titulo : 14',	1,	0,	0,	0,	0,	0,	0),
(218,	2,	447,	'Titulo : 15',	1,	0,	0,	0,	0,	0,	0),
(218,	2,	448,	'Titulo : 15',	0,	0,	0,	0,	0,	0,	0),
(218,	2,	450,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(218,	2,	452,	'Contenido Lateral',	3,	0,	0,	0,	0,	0,	0),
(218,	2,	453,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(218,	2,	455,	'Contenido Lateral',	5,	0,	0,	0,	0,	0,	0),
(218,	2,	456,	'Contenido Lateral',	6,	0,	0,	0,	0,	0,	0),
(218,	2,	462,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(218,	2,	464,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(218,	2,	498,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(218,	3,	444,	'Titulo : 14',	0,	0,	0,	0,	0,	0,	0),
(218,	3,	445,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(218,	3,	446,	'Titulo : 14',	1,	0,	0,	0,	0,	0,	0),
(218,	3,	447,	'Titulo : 15',	1,	0,	0,	0,	0,	0,	0),
(218,	3,	448,	'Titulo : 15',	0,	0,	0,	0,	0,	0,	0),
(218,	3,	450,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(218,	3,	453,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(218,	3,	455,	'Contenido Lateral',	5,	0,	0,	0,	0,	0,	0),
(218,	3,	456,	'Contenido Lateral',	6,	0,	0,	0,	0,	0,	0),
(218,	3,	462,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(218,	3,	464,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(218,	3,	581,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(218,	3,	582,	'Contenido Lateral',	3,	1,	0,	0,	0,	0,	0),
(218,	4,	444,	'Titulo : 14',	0,	0,	0,	0,	0,	0,	0),
(218,	4,	445,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(218,	4,	446,	'Titulo : 14',	1,	0,	0,	0,	0,	0,	0),
(218,	4,	447,	'Titulo : 15',	1,	0,	0,	0,	0,	0,	0),
(218,	4,	448,	'Titulo : 15',	0,	0,	0,	0,	0,	0,	0),
(218,	4,	450,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(218,	4,	453,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(218,	4,	455,	'Contenido Lateral',	5,	0,	0,	0,	0,	0,	0),
(218,	4,	456,	'Contenido Lateral',	6,	0,	0,	0,	0,	0,	0),
(218,	4,	462,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(218,	4,	464,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(218,	4,	581,	'Contenido',	0,	0,	0,	0,	0,	0,	0),
(218,	4,	583,	'Contenido Lateral',	3,	1,	0,	0,	0,	0,	0),
(219,	1,	444,	'Titulo : 14',	0,	0,	0,	0,	0,	0,	0),
(219,	1,	445,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(219,	1,	446,	'Titulo : 14',	1,	0,	0,	0,	0,	0,	0),
(219,	1,	447,	'Titulo : 15',	1,	0,	0,	0,	0,	0,	0),
(219,	1,	448,	'Titulo : 15',	0,	0,	0,	0,	0,	0,	0),
(219,	1,	450,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(219,	1,	452,	'Contenido Lateral',	3,	0,	0,	0,	0,	0,	0),
(219,	1,	453,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(219,	1,	455,	'Contenido Lateral',	5,	0,	0,	0,	0,	0,	0),
(219,	1,	456,	'Contenido Lateral',	6,	0,	0,	0,	0,	0,	0),
(219,	1,	462,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(219,	1,	464,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(219,	1,	519,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(220,	1,	444,	'Titulo : 14',	0,	0,	0,	0,	0,	0,	0),
(220,	1,	445,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(220,	1,	446,	'Titulo : 14',	1,	0,	0,	0,	0,	0,	0),
(220,	1,	447,	'Titulo : 15',	1,	0,	0,	0,	0,	0,	0),
(220,	1,	448,	'Titulo : 15',	0,	0,	0,	0,	0,	0,	0),
(220,	1,	450,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(220,	1,	452,	'Contenido Lateral',	3,	0,	0,	0,	0,	0,	0),
(220,	1,	453,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(220,	1,	455,	'Contenido Lateral',	5,	0,	0,	0,	0,	0,	0),
(220,	1,	456,	'Contenido Lateral',	6,	0,	0,	0,	0,	0,	0),
(220,	1,	462,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(220,	1,	464,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(220,	1,	533,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(221,	1,	444,	'Titulo : 14',	0,	0,	0,	0,	0,	0,	0),
(221,	1,	445,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(221,	1,	446,	'Titulo : 14',	1,	0,	0,	0,	0,	0,	0),
(221,	1,	447,	'Titulo : 15',	1,	0,	0,	0,	0,	0,	0),
(221,	1,	448,	'Titulo : 15',	0,	0,	0,	0,	0,	0,	0),
(221,	1,	450,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(221,	1,	452,	'Contenido Lateral',	3,	0,	0,	0,	0,	0,	0),
(221,	1,	453,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(221,	1,	455,	'Contenido Lateral',	5,	0,	0,	0,	0,	0,	0),
(221,	1,	456,	'Contenido Lateral',	6,	0,	0,	0,	0,	0,	0),
(221,	1,	462,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(221,	1,	464,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(221,	1,	557,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(222,	1,	444,	'Titulo : 14',	0,	0,	0,	0,	0,	0,	0),
(222,	1,	445,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(222,	1,	446,	'Titulo : 14',	1,	0,	0,	0,	0,	0,	0),
(222,	1,	447,	'Titulo : 15',	1,	0,	0,	0,	0,	0,	0),
(222,	1,	448,	'Titulo : 15',	0,	0,	0,	0,	0,	0,	0),
(222,	1,	450,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(222,	1,	452,	'Contenido Lateral',	3,	0,	0,	0,	0,	0,	0),
(222,	1,	453,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(222,	1,	455,	'Contenido Lateral',	5,	0,	0,	0,	0,	0,	0),
(222,	1,	456,	'Contenido Lateral',	6,	0,	0,	0,	0,	0,	0),
(222,	1,	462,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(222,	1,	464,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(222,	1,	572,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(222,	2,	444,	'Titulo : 14',	0,	0,	0,	0,	0,	0,	0),
(222,	2,	445,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(222,	2,	446,	'Titulo : 14',	1,	0,	0,	0,	0,	0,	0),
(222,	2,	447,	'Titulo : 15',	1,	0,	0,	0,	0,	0,	0),
(222,	2,	448,	'Titulo : 15',	0,	0,	0,	0,	0,	0,	0),
(222,	2,	450,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(222,	2,	452,	'Contenido Lateral',	3,	0,	0,	0,	0,	0,	0),
(222,	2,	453,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(222,	2,	455,	'Contenido Lateral',	5,	0,	0,	0,	0,	0,	0),
(222,	2,	456,	'Contenido Lateral',	6,	0,	0,	0,	0,	0,	0),
(222,	2,	462,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(222,	2,	464,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(222,	2,	573,	'Contenido',	0,	1,	0,	0,	0,	0,	0),
(223,	1,	444,	'Titulo : 14',	0,	0,	0,	0,	0,	0,	0),
(223,	1,	445,	'Titulo',	0,	0,	0,	0,	0,	0,	0),
(223,	1,	446,	'Titulo : 14',	1,	0,	0,	0,	0,	0,	0),
(223,	1,	447,	'Titulo : 15',	1,	0,	0,	0,	0,	0,	0),
(223,	1,	448,	'Titulo : 15',	0,	0,	0,	0,	0,	0,	0),
(223,	1,	450,	'Contenido Lateral',	2,	0,	0,	0,	0,	0,	0),
(223,	1,	452,	'Contenido Lateral',	3,	0,	0,	0,	0,	0,	0),
(223,	1,	453,	'Contenido Lateral',	4,	0,	0,	0,	0,	0,	0),
(223,	1,	455,	'Contenido Lateral',	5,	0,	0,	0,	0,	0,	0),
(223,	1,	456,	'Contenido Lateral',	6,	0,	0,	0,	0,	0,	0),
(223,	1,	462,	'Contenido Lateral',	1,	0,	0,	0,	0,	0,	0),
(223,	1,	464,	'Contenido Lateral',	0,	0,	0,	0,	0,	0,	0),
(223,	1,	578,	'Contenido',	0,	1,	0,	0,	0,	0,	0);

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
(1,	40,	17,	'info_superior',	'\n<style>\n.ccm-block-svg_social_media_icons .icon-container {\n    display: inline-block;\n    padding-top: 5px;\n    padding-bottom: 5px;\n}\n</style>\n\n<div class=\"ccm-block-svg_social_media_icons\" style=\"text-align: right;\">\n    <div class=\"icon-container\">\n\n    <style>.facebook25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook-round-logo.svg\') no-repeat;}.facebook25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook-round-hover.svg\') no-repeat;}</style><a title=\"Facebook\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"facebook25-round-logo\"></div></a><style>.instagram25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram-round-logo.svg\') no-repeat;}.instagram25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram-round-hover.svg\') no-repeat;}</style><a title=\"Instagram\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"instagram25-round-logo\"></div></a><style>.twitter25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter-round-logo.svg\') no-repeat;}.twitter25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter-round-hover.svg\') no-repeat;}</style><a title=\"Twitter\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"twitter25-round-logo\"></div></a><style>.googleplus25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus-round-logo.svg\') no-repeat;}.googleplus25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus-round-hover.svg\') no-repeat;}</style><a title=\"GooglePlus\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"googleplus25-round-logo\"></div></a><style>.youtube25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube-round-logo.svg\') no-repeat;}.youtube25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube-round-hover.svg\') no-repeat;}</style><a title=\"Youtube\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"youtube25-round-logo\"></div></a><style>.email25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email-round-logo.svg\') no-repeat;}.email25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email-round-hover.svg\') no-repeat;}</style><a title=\"Email\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"email25-round-logo\"></div></a>\n    </div>\n</div>\n',	1684675459),
(1,	40,	18,	'Header Navigation',	'<!-- Menu Horizontal con color NO basado en personalización que (SI es fijo, y SI se expande con un boton en el responsive)  -->\r\n\r\n\r\n\r\n<style>\r\n.Menu_18 .submenu a{\r\n    display: inline-block;\r\n}\r\n.Menu_18 .submenu li{\r\n    overflow-y:visible;\r\n    width:100%;\r\n}\r\n.Menu_18 .submenu li a{\r\n    line-height:15px !important;\r\n    padding: 10px 15px !important;\r\n}\r\n.Menu_18 .submenu > ul > .submenu .icono_submenu{\r\n    transform: rotate(-90deg);\r\n    -webkit-transform: rotate(-90deg);\r\n    -moz-transform: rotate(-90deg);\r\n    -o-transform: rotate(-90deg);\r\n    margin-top:5px;\r\n}\r\n.Menu_18 > .submenu .icono_submenu{\r\n    display: inline-block;\r\n    margin-left: 0px;\r\n    margin-right: 10px;\r\n    cursor:pointer;\r\n}\r\n\r\n.Menu_18 .submenu:hover > ul{\r\n    display:block;\r\n    opacity:1;\r\n}\r\n.Menu_18 .submenu ul{\r\n    overflow-y:visible;\r\n    display: none;\r\n}\r\n.Menu_18 > li > ul > .submenu a{\r\n    float:left;\r\n}\r\n.Menu_18 > li > ul > .submenu ul{\r\n    left:200px;\r\n}\r\n@media screen and (max-width: 1035px) {\r\n	.Menu_18 .submenu .icono_submenu{\r\n        color:#222;\r\n    }\r\n    .Menu_18 li{\r\n        box-sizing:border-box;\r\n        padding:0px !important;\r\n    }\r\n    .Menu_18 .submenu ul{\r\n        overflow-y:visible;\r\n        width:100%;\r\n        margin-left:15px;\r\n        padding-right:10px !important;\r\n    }\r\n    .Menu_18 > li > ul > .submenu ul{\r\n        left:0px !important;\r\n        margin-top:5px;\r\n    }\r\n}\r\n</style>\r\n<ul class=\"hide-on-med-and-down Menu_18\"><li class=\"active active\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php\" target=\"_self\"><div class=\"linea_icono\"></div>Portada</a></li><li class=\"submenu\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion\" target=\"_self\"><div class=\"linea_icono\"></div>Instituci&oacute;n</a><i class=\"mdi-navigation-arrow-drop-down right icono_submenu\"></i><ul class=\"dropdown-content sub-menu children\"><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/mision-y-vision\" target=\"_self\"><div class=\"linea_icono\"></div>Misi&oacute;n y Visi&oacute;n</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/marco-legal\" target=\"_self\"><div class=\"linea_icono\"></div>Marco Legal</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/resoluciones\" target=\"_self\"><div class=\"linea_icono\"></div>Resoluciones</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/organigrama\" target=\"_self\"><div class=\"linea_icono\"></div>Organigrama</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/autoridades\" target=\"_self\"><div class=\"linea_icono\"></div>Autoridades</a></li></ul></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/noticias\" target=\"_self\"><div class=\"linea_icono\"></div>Noticias</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/agenda\" target=\"_self\"><div class=\"linea_icono\"></div>Agenda</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/galeria\" target=\"_self\"><div class=\"linea_icono\"></div>Galer&iacute;a</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/transparencia\" target=\"_self\"><div class=\"linea_icono\"></div>Transparencia</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/contacto\" target=\"_self\"><div class=\"linea_icono\"></div>Contacto</a></li></ul><ul id=\"nav-mobile\" class=\"side-nav Menu_18\"><li class=\"active active\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php\" target=\"_self\">Portada</a></li><li class=\"submenu\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion\" target=\"_self\">Instituci&oacute;n</a><i class=\"mdi-navigation-arrow-drop-down right icono_submenu\"></i><ul class=\"dropdown-content sub-menu children\"><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/mision-y-vision\" target=\"_self\">Misi&oacute;n y Visi&oacute;n</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/marco-legal\" target=\"_self\">Marco Legal</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/resoluciones\" target=\"_self\">Resoluciones</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/organigrama\" target=\"_self\">Organigrama</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/autoridades\" target=\"_self\">Autoridades</a></li></ul></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/noticias\" target=\"_self\">Noticias</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/agenda\" target=\"_self\">Agenda</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/galeria\" target=\"_self\">Galer&iacute;a</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/transparencia\" target=\"_self\">Transparencia</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/contacto\" target=\"_self\">Contacto</a></li></ul><a href=\"#\" data-activates=\"nav-mobile\" class=\"button-collapse\"><i class=\"material-icons\">menu</i></a>',	1526909359),
(1,	40,	239,	'Contenido A : 7',	'\n<div id=\"HTMLBlock239\" class=\"HTMLBlock\">\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div></div>',	1684675454),
(1,	40,	240,	'Contenido A : 6',	'<p data-redactor-inserted-image=\"true\"><img src=\"/application/files/4415/2665/3509/newspaper.png\" id=\"image-marker\" alt=\"\" style=\"width:30px;height:auto;float: left; margin: 0px 10px 10px 0px;\">\r\n</p><h3>Noticias</h3>',	1684675459),
(1,	40,	263,	'Slider : 10',	'<style type=\"text/css\">\r\n    #menu ul, #menu li { margin: 0px;\r\n    padding: 0px; outline: 0;\r\n    }\r\n    #menu {  text-align: left;}\r\n    #menu ul { list-style-type: none;  background-color:#FFF; border-radius:5px; padding-top:5px; padding-bottom:5px; }\r\n    #menu ul li.nivel1 { float: left; cursor:pointer;\r\n    }\r\n    #menu ul li a {display: block;\r\n    text-decoration: none;\r\n    color: #333;\r\n    background-color: #fff;\r\n    position: relative;\r\n    }\r\n    #menu ul li:hover {position: relative;\r\n    }\r\n    #menu ul li ul li a:hover {background-color: #d71e1e;\r\n    color: #fff;\r\n    position: relative;\r\n    }\r\n    #menu ul li a.nivel1 {display: block!important;display: none;\r\n    position: relative;border-radius:5px;\r\n    }\r\n    #menu ul li ul {display: none; border-radius:5px;border:1px solid #ddd; \r\n        box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.3);\r\n        -moz-box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.3);\r\n        -webkit-box-shadow: 2px 3px 10px 0 rgba(0,0,0,0.3);\r\n        margin-top:-10px;\r\n    }\r\n    #menu ul li a:hover ul, #menu ul li:hover ul {display: block;\r\n    position: absolute;left: 0px;\r\n    }\r\n    #menu ul li ul li a {width: 195px;\r\n    padding: 6px 0px 8px 0px;\r\n    border-top-color: #000;\r\n    padding-left:5px;\r\n    padding-left:15px;\r\n        padding-right:10px;\r\n    }\r\n    #menu ul li ul li a:hover {border-top-color: #000;\r\n    position: relative;\r\n    }\r\n    table.falsa {border-collapse:collapse;\r\n    border:0px;\r\n    float: left;\r\n    position: relative;\r\n    }\r\n</style>\r\n\r\n<body>\r\n<section id=\"menu\">\r\n    <ul style=\"padding-left:0px !important\">\r\n        <li class=\"nivel1\" style=\"list-style-type:none !important\">\r\n            <img src=\"http://localhost/application/blocks/leytransparencia/Transparencia.png\" width=\"100%\" style=\"border-radius:3px;\"/>\r\n            <ul style=\"z-index:999; padding-left:0px !important;\">\r\n                                            <li style=\"list-style-type:none !important\">\r\n                            <a href=\"http://localhost/application/files/8015/2657/2581/pdfDePrueba.pdf\" target=\"_blank\">Nomina de Funcionarios</a></li>\r\n                                                <li style=\"list-style-type:none !important\">\r\n                            <a href=\"http://localhost/application/files/8015/2657/2581/pdfDePrueba.pdf\" target=\"_blank\">Ejecución Presupuestaria</a></li>\r\n                                                <li style=\"list-style-type:none !important\">\r\n                            <a href=\"http://localhost/application/files/8015/2657/2581/pdfDePrueba.pdf\" target=\"_blank\">Inventario</a></li>\r\n                                                <li style=\"list-style-type:none !important\">\r\n                            <a href=\"http://localhost/application/files/8015/2657/2581/pdfDePrueba.pdf\" target=\"_blank\">Reglamento Interno</a></li>\r\n                                                <li style=\"list-style-type:none !important\">\r\n                            <a href=\"http://localhost/application/files/8015/2657/2581/pdfDePrueba.pdf\" target=\"_blank\">Anexo del Personal</a></li>\r\n                                                <li style=\"list-style-type:none !important\">\r\n                            <a href=\"http://localhost/application/files/8015/2657/2581/pdfDePrueba.pdf\" target=\"_blank\">Presupuesto de Ingresos</a></li>\r\n                                                <li style=\"list-style-type:none !important\">\r\n                            <a href=\"http://localhost/application/files/8015/2657/2581/pdfDePrueba.pdf\" target=\"_blank\">Manual de Funciones</a></li>\r\n                                                <li style=\"list-style-type:none !important\">\r\n                            <a href=\"http://localhost/application/files/8015/2657/2581/pdfDePrueba.pdf\" target=\"_blank\">Informe de Viáticos</a></li>\r\n                                    \r\n                                    <hr style=\"margin:5px !important\">\r\n                    <li style=\"list-style-type:none !important\"><a href=\"http://localhost/index.php/transparencia\" target=\"_blank\">Histórico</a></li>\r\n                            </ul>\r\n        </li>\r\n    </ul>\r\n</section>\r\n',	1684675459),
(1,	40,	264,	'Slider : 10',	'\r\n<style>\r\n    .enlace264 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace264:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/servicios\" target=\"_self\" class=\"enlace264\" style=\"cursor:pointer !important;\"><i class=\"fa fa-briefcase\"></i> Servicios</a></div>',	1684675454),
(1,	40,	265,	'Slider : 10',	'\r\n<style>\r\n    .enlace265 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace265:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/compras-publicas\" target=\"_self\" class=\"enlace265\" style=\"cursor:pointer !important;\"><i class=\"fa fa-shopping-cart\"></i> Compras Públicas</a></div>',	1684675454),
(1,	40,	266,	'Slider : 10',	'\r\n<style>\r\n    .enlace266 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace266:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/mecip\" target=\"_self\" class=\"enlace266\" style=\"cursor:pointer !important;\"><i class=\"fa fa-building\"></i> TrámitesMECIP</a></div>',	1684675454),
(1,	40,	267,	'Slider : 10',	'\r\n<style>\r\n    .enlace267 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace267:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/tramites\" target=\"_self\" class=\"enlace267\" style=\"cursor:pointer !important;\"><i class=\"fa fa-bookmark\"></i> Trámites</a></div>',	1684675454),
(1,	40,	415,	'Contenido A : 6',	'<style>\n    .tarjeta{\n        background:rgba(250,250,250,.5);\n        box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .07), 0 2px 10px 0 rgba(0, 0, 0, .09);\n        margin: 2rem 0 2rem 0;\n        transition: box-shadow .25s;\n        border-radius: 2px;\n        position: relative;\n        display:block;\n        padding-bottom:15px;\n        padding-right:10px;\n    }\n    .tarjeta:hover{background:#fff; box-shadow:0 8px 17px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0 rgba(0, 0, 0, 0.13)}\n    .tarjeta .card-title{\n        color: #fff;\n        margin-top:7px;\n        margin-bottom:7px !important;\n        font-size: 20px;\n        font-weight: 300; \n    }\n    .tarjeta .card-title.activator {\n        cursor: pointer;   \n    }\n    .tarjeta .oculto{\n        clear: left;   \n    }\n    .tarjeta .card-content p{\n        margin-top:5px;   \n    }\n.portada_imagen{\n    max-width:210px;\n    width:100%;\n    padding:10px;\n    float:left;\n}\n.contenido_detalle{\n    padding-left:240px !important;\n    margin-top:-15px;\n    padding-top:4px;\n}\n@media only screen and (max-width : 600px) {\n    .portada_imagen{\n        max-width:100% !important;\n        padding:0;\n        float:none !important;\n    }\n    .contenido_detalle{\n        padding:10px !important;\n        margin-top:0px;\n    }\n    .fecha_publicacion{\n        padding-left:10px;   \n    }\n}\n</style>\n\n\n<div class=\"listado_enlaces\">\n\n    \n            <a href=\"http://localhost/index.php/rss/noticias\" target=\"_blank\" class=\"ccm-block-page-list-rss-feed\"><i class=\"fa fa-rss\"></i></a>\n        \n        <div class=\"ccm-block-page-list-page-entry-horizontal item\">\n            <div class=\"tarjeta\">\n            \n                \n                                    <div class=\"portada_imagen\">\n                        <img src=\"/application/files/6315/2665/7727/14_-_85.png\" alt=\"14_-_85.png\" width=\"1920\" height=\"1080\" class=\"activator img-responsive materialboxed\">                        \n                                                <div class=\"fecha_publicacion\">\n                            <i class=\"Tiny material-icons left\" style=\"margin-right:5px; margin-top:-1px;\">schedule</i><div class=\"ccm-block-page-list-date\">18 may. 2018 11:34</div>\n                        </div>\n                                                \n                    </div>\n                              \n\n                            <div class=\"card-content contenido_detalle\">\n                                        \n                                            <span class=\"card-title activator grey-text text-darken-4\"><a href=\"http://localhost/index.php/noticias/noticia-de-prueba-5\" target=\"_self\">Noticia de prueba 5</a></span>\n                                        \n                                            <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal&hellip;</p>\n                                        <!--<a class=\"right\" href=\"http://localhost/index.php/noticias/noticia-de-prueba-5\" target=\"_self\">Ver info</a>-->\n                    \n                                            <a href=\"http://localhost/index.php/noticias/noticia-de-prueba-5\" style=\"margin:10px 5px; text-align:right\">Ver más</a>\n                                    </div>\n                            <div class=\"oculto\"></div>\n                <div style=\"clear:both\"></div>\n            </div>\n            <div style=\"clear:both\"></div>\n        </div>\n        <div style=\"clear:both\"></div>\n\n	\n        <div class=\"ccm-block-page-list-page-entry-horizontal item\">\n            <div class=\"tarjeta\">\n            \n                \n                                    <div class=\"portada_imagen\">\n                        <img src=\"/application/files/1115/2665/7632/14_-_71.png\" alt=\"14_-_71.png\" width=\"1366\" height=\"768\" class=\"activator img-responsive materialboxed\">                        \n                                                <div class=\"fecha_publicacion\">\n                            <i class=\"Tiny material-icons left\" style=\"margin-right:5px; margin-top:-1px;\">schedule</i><div class=\"ccm-block-page-list-date\">18 may. 2018 11:32</div>\n                        </div>\n                                                \n                    </div>\n                              \n\n                            <div class=\"card-content contenido_detalle\">\n                                        \n                                            <span class=\"card-title activator grey-text text-darken-4\"><a href=\"http://localhost/index.php/noticias/noticia-de-prueba-4\" target=\"_self\">Noticia de prueba 4</a></span>\n                                        \n                                            <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal&hellip;</p>\n                                        <!--<a class=\"right\" href=\"http://localhost/index.php/noticias/noticia-de-prueba-4\" target=\"_self\">Ver info</a>-->\n                    \n                                            <a href=\"http://localhost/index.php/noticias/noticia-de-prueba-4\" style=\"margin:10px 5px; text-align:right\">Ver más</a>\n                                    </div>\n                            <div class=\"oculto\"></div>\n                <div style=\"clear:both\"></div>\n            </div>\n            <div style=\"clear:both\"></div>\n        </div>\n        <div style=\"clear:both\"></div>\n\n	\n        <div class=\"ccm-block-page-list-page-entry-horizontal item\">\n            <div class=\"tarjeta\">\n            \n                \n                                    <div class=\"portada_imagen\">\n                        <img src=\"/application/files/4515/2665/7440/14_-_23.png\" alt=\"14_-_23.png\" width=\"1920\" height=\"1200\" class=\"activator img-responsive materialboxed\">                        \n                                                <div class=\"fecha_publicacion\">\n                            <i class=\"Tiny material-icons left\" style=\"margin-right:5px; margin-top:-1px;\">schedule</i><div class=\"ccm-block-page-list-date\">18 may. 2018 11:29</div>\n                        </div>\n                                                \n                    </div>\n                              \n\n                            <div class=\"card-content contenido_detalle\">\n                                        \n                                            <span class=\"card-title activator grey-text text-darken-4\"><a href=\"http://localhost/index.php/noticias/noticia-de-prueba-3\" target=\"_self\">Noticia de prueba 3</a></span>\n                                        \n                                            <p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal&hellip;</p>\n                                        <!--<a class=\"right\" href=\"http://localhost/index.php/noticias/noticia-de-prueba-3\" target=\"_self\">Ver info</a>-->\n                    \n                                            <a href=\"http://localhost/index.php/noticias/noticia-de-prueba-3\" style=\"margin:10px 5px; text-align:right\">Ver más</a>\n                                    </div>\n                            <div class=\"oculto\"></div>\n                <div style=\"clear:both\"></div>\n            </div>\n            <div style=\"clear:both\"></div>\n        </div>\n        <div style=\"clear:both\"></div>\n\n	\n    \n</div><!-- end .ccm-block-page-list -->\n\n\n',	1526909359),
(1,	40,	416,	'Contenido A : 6',	'\r\n<style>\r\n    .enlace416 {\r\n        width:100%; \r\n        padding:5px; \r\n        box-sizing:border-box; \r\n        text-align:center; \r\n        display:inline-block; \r\n        font-size:20px; \r\n        background:; \r\n        color:#c73b3b !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace416:hover {\r\n        background:#878787; \r\n        color:#ffffff !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/noticias\" target=\"_self\" class=\"enlace416\" style=\"cursor:pointer !important;\"><i class=\"fa fa-plus-square-o\"></i> Ver más noticias</a></div>',	1684675454),
(1,	40,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684675455),
(1,	40,	421,	'Footer Legal',	'<p>Portal construido conjuntamente con la <a href=\"https://www.senatics.gov.py/\" target=\"_blank\">SENATICs</a>\r\n</p><p>Secretaría Nacional de Tecnologías de la Información y Comunicación - 2018\r\n</p>',	1684675459),
(1,	40,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684675455),
(1,	40,	426,	'Slider : 11',	'<script>    \n    \n$(document).ready(function(){\n    $(function () {\n        $(\".carrusel-426\").show();\n        \n        $(\".carrusel-426\").slick({\n                        \n            slidesToShow: 1,            slidesToScroll: 1,            autoplaySpeed: 5000,            speed: 500,            infinite: true,            autoplay: true,            centerMode: false,            adaptiveHeight: true,            responsive: [\n                {\n                  breakpoint: 1035,\n                  settings: {\n                    slidesToShow: 1,\n                    slidesToScroll: 1\n                  }\n                }\n              ]\n        });\n        \n    });\n});\n</script>\n<style>\n        .carrusel-426 .slick-slide img{\n        padding: 0px;\n    }\n    .carrusel-426 .carrusel_description_item{\n        bottom: 0px;\n        color: #FFF;\n        margin: 0px;\n        padding: 5px;\n    }\n</style>\n<!--slide-->\n        <section class=\"sliderprincipal carrusel-426 \" style=\" display:none\">\n                    <div draggable=\"true\">\n                            <a href=\"http://localhost/index.php/noticias/noticia-de-prueba-1\" class=\"mega-link-overlay\" target=\"_self\">\n                                                        \n                <div class=\"row\" style=\"background:#8c1917; margin:0px !important\">\n                    <div style=\"padding:0px !important;\" class=\"col l8 m12 s12\">\n                        <img src=\"/application/files/8315/2665/9062/1809cf7ba79ffb82aab8a2a2a834c1c5.png\" alt=\"Titulo slide 1\" width=\"1000\" height=\"500\" class=\"img_responsive_items\">                    </div>\n                    <div style=\"padding:0px !important;\" class=\"col l4 m12 s12\">\n                        <div class=\"carrusel_description_item\">\n                                                            <div class=\"titulo_item_slider\">Titulo slide 1</div>\n                                                                                    <div class=\"descripcion_item_slider\"><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p></div>\n                                                                    <p style=\"text-align:right; color:#FFF !important;\">Leer más</p>\n                                                                                    </div>\n                    </div>\n                </div>\n                    \n                                        </a>\n                \n            \n            </div>\n                    <div draggable=\"true\">\n                                                        \n                <div class=\"row\" style=\"background:#8c1917; margin:0px !important\">\n                    <div style=\"padding:0px !important;\" class=\"col l8 m12 s12\">\n                        <img src=\"/application/files/6815/2665/9025/f9607bc798b79d66672dfc3f4d5f7f94.png\" alt=\"Título del Slide 2\" width=\"1000\" height=\"500\" class=\"img_responsive_items\">                    </div>\n                    <div style=\"padding:0px !important;\" class=\"col l4 m12 s12\">\n                        <div class=\"carrusel_description_item\">\n                                                            <div class=\"titulo_item_slider\">Título del Slide 2</div>\n                                                                                    <div class=\"descripcion_item_slider\"><p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p></div>\n                                                                                    </div>\n                    </div>\n                </div>\n                    \n                            \n            \n            </div>\n            </section>\n    ',	1684675459),
(1,	40,	431,	'Slider',	'<script>\n$(document).ready(function(){\n    $(function () {\n        $(\".carrusel-431\").show();\n        \n        $(\".carrusel-431\").slick({\n                        \n            slidesToShow: 4,            slidesToScroll: 1,            autoplaySpeed: 7000,            speed: 200,            infinite: true,            autoplay: true,            centerMode: false,            adaptiveHeight: true,            responsive: [\n                {\n                  breakpoint: 1035,\n                  settings: {\n                    slidesToShow: 1,\n                    slidesToScroll: 1\n                  }\n                }\n              ]\n        });\n    });\n});\n</script>\n<style>\n        .carrusel-431 .slick-slide img{\n        padding: 0px;\n    }\n    .carrusel-431 .carrusel_description_item{\n        background: #8c1917;\n        bottom: 0px;\n        color: #FFF;\n        padding: 10px;\n        margin: -10px 10px 0 10px;\n    }\n</style>\n\n<!--slide-->\n        <section class=\"slidersimple carrusel-431 \" style=\" display:none\">\n                    <div draggable=\"true\">\n                            <a href=\"http://localhost/index.php/transparencia\" class=\"mega-link-overlay\" target=\"_self\">\n                                    <img src=\"/application/files/5815/2665/5345/acceso_informacion_publica_btn-GRAL.png\" alt=\"slide\" width=\"300\" height=\"150\" class=\"img_responsive_items\">                    \n                <div class=\"carrusel_description_item oculto\">\n                                                        </div>    \n                                        </a>\n                \n            \n            </div>\n                    <div draggable=\"true\">\n                            <a href=\"http://www.informacionpublica.gov.py\" class=\"mega-link-overlay\" target=\"_blank\">\n                                    <img src=\"/application/files/3115/2665/5366/informacion_publica_btn-GRAL.png\" alt=\"slide\" width=\"300\" height=\"150\" class=\"img_responsive_items\">                    \n                <div class=\"carrusel_description_item oculto\">\n                                                        </div>    \n                                        </a>\n                \n            \n            </div>\n                    <div draggable=\"true\">\n                            <a href=\"http://www.denuncias.gov.py/ssps/\" class=\"mega-link-overlay\" target=\"_blank\">\n                                    <img src=\"/application/files/6715/2665/5388/denuncias_btn.png\" alt=\"slide\" width=\"300\" height=\"150\" class=\"img_responsive_items\">                    \n                <div class=\"carrusel_description_item oculto\">\n                                                        </div>    \n                                        </a>\n                \n            \n            </div>\n                    <div draggable=\"true\">\n                            <a href=\"https://www.paraguay.gov.py\" class=\"mega-link-overlay\" target=\"_self\">\n                                    <img src=\"/application/files/3215/2665/5409/portal_parauay_btn2.png\" alt=\"slide\" width=\"300\" height=\"150\" class=\"img_responsive_items\">                    \n                <div class=\"carrusel_description_item oculto\">\n                                                        </div>    \n                                        </a>\n                \n            \n            </div>\n            </section>\n    ',	1684675459),
(1,	40,	433,	'search',	'<form action=\"http://localhost/index.php/buscador\" method=\"get\" class=\"input-field buscador_menu\"><input name=\"search_paths[]\" type=\"hidden\" value=\"\" />     \n        <input name=\"submit\" type=\"submit\" value=\"Buscar\" class=\"btn btn-default ccm-search-block-submit right\" style=\"margin-bottom:-40px;\"/>\n        <input name=\"query\" placeholder=\"Buscar...\" type=\"text\" value=\"\" class=\"validate ibuscador\" />\n    \n    </form>',	1684675459),
(1,	40,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684675454),
(1,	40,	437,	'Footer Contact',	'<h6><strong><i class=\"fa fa-map-marker\"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class=\"fa fa-phone\"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class=\"fa fa-clock-o\"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class=\"fa fa-envelope\"></i> E-mail:</strong> <a href=\"mailto:mailto:comunicacion@senatics.gov.py\">comunicacion@senatics.gov.py</a></h6>',	1684675459),
(1,	41,	239,	'Contenido A : 7',	'\n<div id=\"HTMLBlock239\" class=\"HTMLBlock\">\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div></div>',	1684679018),
(1,	41,	264,	'Slider : 10',	'\r\n<style>\r\n    .enlace264 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace264:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/servicios\" target=\"_self\" class=\"enlace264\" style=\"cursor:pointer !important;\"><i class=\"fa fa-briefcase\"></i> Servicios</a></div>',	1684679018),
(1,	41,	265,	'Slider : 10',	'\r\n<style>\r\n    .enlace265 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace265:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/compras-publicas\" target=\"_self\" class=\"enlace265\" style=\"cursor:pointer !important;\"><i class=\"fa fa-shopping-cart\"></i> Compras Públicas</a></div>',	1684679018),
(1,	41,	266,	'Slider : 10',	'\r\n<style>\r\n    .enlace266 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace266:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/mecip\" target=\"_self\" class=\"enlace266\" style=\"cursor:pointer !important;\"><i class=\"fa fa-building\"></i> TrámitesMECIP</a></div>',	1684679018),
(1,	41,	267,	'Slider : 10',	'\r\n<style>\r\n    .enlace267 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace267:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/tramites\" target=\"_self\" class=\"enlace267\" style=\"cursor:pointer !important;\"><i class=\"fa fa-bookmark\"></i> Trámites</a></div>',	1684679018),
(1,	41,	416,	'Contenido A : 6',	'\r\n<style>\r\n    .enlace416 {\r\n        width:100%; \r\n        padding:5px; \r\n        box-sizing:border-box; \r\n        text-align:center; \r\n        display:inline-block; \r\n        font-size:20px; \r\n        background:; \r\n        color:#c73b3b !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace416:hover {\r\n        background:#878787; \r\n        color:#ffffff !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/noticias\" target=\"_self\" class=\"enlace416\" style=\"cursor:pointer !important;\"><i class=\"fa fa-plus-square-o\"></i> Ver más noticias</a></div>',	1684679018),
(1,	41,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684679019),
(1,	41,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684679019),
(1,	41,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684679018),
(1,	42,	239,	'Contenido A : 7',	'\n<div id=\"HTMLBlock239\" class=\"HTMLBlock\">\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/SENATICsPy\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"true\" data-show-facepile=\"true\" data-show-posts=\"true\"><div class=\"fb-xfbml-parse-ignore\"><blockquote cite=\"https://www.facebook.com/SENATICsPy\"><a href=\"https://www.facebook.com/SENATICsPy\">SENATICs Paraguay</a></blockquote></div></div></div>',	1684679114),
(1,	42,	264,	'Slider : 10',	'\r\n<style>\r\n    .enlace264 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace264:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/servicios\" target=\"_self\" class=\"enlace264\" style=\"cursor:pointer !important;\"><i class=\"fa fa-briefcase\"></i> Servicios</a></div>',	1684679114),
(1,	42,	265,	'Slider : 10',	'\r\n<style>\r\n    .enlace265 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace265:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/compras-publicas\" target=\"_self\" class=\"enlace265\" style=\"cursor:pointer !important;\"><i class=\"fa fa-shopping-cart\"></i> Compras Públicas</a></div>',	1684679114),
(1,	42,	266,	'Slider : 10',	'\r\n<style>\r\n    .enlace266 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace266:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/mecip\" target=\"_self\" class=\"enlace266\" style=\"cursor:pointer !important;\"><i class=\"fa fa-building\"></i> TrámitesMECIP</a></div>',	1684679114),
(1,	42,	267,	'Slider : 10',	'\r\n<style>\r\n    .enlace267 {\r\n        width:100%; \r\n        padding:8px; \r\n        box-sizing:border-box; \r\n        text-align:left; \r\n        display:inline-block; \r\n        font-size:14px; \r\n        background:#ffffff; \r\n        color:#ba3a3a !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace267:hover {\r\n        background:#f0f0f0; \r\n        color:#222222 !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/tramites\" target=\"_self\" class=\"enlace267\" style=\"cursor:pointer !important;\"><i class=\"fa fa-bookmark\"></i> Trámites</a></div>',	1684679114),
(1,	42,	416,	'Contenido A : 6',	'\r\n<style>\r\n    .enlace416 {\r\n        width:100%; \r\n        padding:5px; \r\n        box-sizing:border-box; \r\n        text-align:center; \r\n        display:inline-block; \r\n        font-size:20px; \r\n        background:; \r\n        color:#c73b3b !important;\r\n        transition:all .4s; \r\n    }\r\n    .enlace416:hover {\r\n        background:#878787; \r\n        color:#ffffff !important; \r\n        transition:all .4s; \r\n    }\r\n</style><div style=\"text-align:center\"><a href=\"http://localhost/index.php/noticias\" target=\"_self\" class=\"enlace416\" style=\"cursor:pointer !important;\"><i class=\"fa fa-plus-square-o\"></i> Ver más noticias</a></div>',	1684679114),
(1,	42,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684679114),
(1,	42,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684679114),
(1,	42,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684679114),
(1,	42,	585,	'Footer Legal',	'\n<div id=\"HTMLBlock585\" class=\"HTMLBlock\">\n<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+\"px\";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+\"px\"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace(\"px\",\"\"));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+\"px\";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n	function lectura() {\r\n          var modo_lectura_datos = document.getElementById(\"fondo_sitio\").style.background;\r\n          \r\n          if (modo_lectura_datos == \"black\" || modo_lectura_datos == \"black none repeat scroll 0% 0%\"){\r\n    		  document.getElementById(\"fondo_sitio\").removeAttribute(\"style\");\r\n    		  document.getElementById(\"cabecera\").style.display=\'block\';\r\n    	  }else{\r\n    	      document.getElementById(\"fondo_sitio\").style.background=\'black\';\r\n    	      document.getElementById(\"cabecera\").style.display=\'none\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class=\"fixed-action-btn horizontal click-to-toggle invisible_smartphone\" style=\"bottom: 45px; right: 24px;\">\r\n    <a class=\"btn-floating btn-large red\">\r\n      <i class=\"large mdi-navigation-menu\"></i>\r\n    </a>\r\n    <style>\r\n        .accesibilidad li{\r\n            list-style-type: none !important;\r\n        }\r\n        \r\n    </style>\r\n    <ul class=\"accesibilidad\">\r\n      <li class=\"hidden-xs\"><a href=\"javascript:lectura();\" class=\"btn-floating red\"><i class=\"material-icons\">settings_brightness</i></a></li>\r\n      <li><a href=\"javascript:increaseFontSize();\" class=\"btn-floating green\"><i class=\"material-icons\">zoom_in</i></a></li>\r\n      <li><a href=\"javascript:decreaseFontSize();\" class=\"btn-floating blue\"><i class=\"material-icons\">zoom_out</i></a></li>\r\n      <li><a href=\"javascript:normalFontSize();\" class=\"btn-floating orange\"><i class=\"material-icons\">spellcheck</i></a></li>\r\n    </ul>\r\n  </div></div>',	1684679063),
(159,	5,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684675805),
(159,	5,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684675805),
(159,	5,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684675804),
(159,	6,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684678315),
(159,	6,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684678315),
(159,	6,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684678315),
(159,	7,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684678558),
(159,	7,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684678558),
(159,	7,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684678558),
(160,	1,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684678512),
(160,	1,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684678512),
(160,	1,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684678512),
(191,	9,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684677899),
(191,	9,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684677899),
(191,	9,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684677899),
(201,	1,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684675728),
(201,	1,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684675728),
(201,	1,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684675728),
(201,	2,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684675738),
(201,	2,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684675738),
(201,	2,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684675738),
(201,	3,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684675754),
(201,	3,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684675754),
(201,	3,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684675753),
(202,	4,	17,	'info_superior',	'\n<style>\n.ccm-block-svg_social_media_icons .icon-container {\n    display: inline-block;\n    padding-top: 5px;\n    padding-bottom: 5px;\n}\n</style>\n\n<div class=\"ccm-block-svg_social_media_icons\" style=\"text-align: right;\">\n    <div class=\"icon-container\">\n\n    <style>.facebook25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook-round-logo.svg\') no-repeat;}.facebook25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook-round-hover.svg\') no-repeat;}</style><a title=\"Facebook\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"facebook25-round-logo\"></div></a><style>.instagram25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram-round-logo.svg\') no-repeat;}.instagram25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram-round-hover.svg\') no-repeat;}</style><a title=\"Instagram\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"instagram25-round-logo\"></div></a><style>.twitter25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter-round-logo.svg\') no-repeat;}.twitter25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter-round-hover.svg\') no-repeat;}</style><a title=\"Twitter\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"twitter25-round-logo\"></div></a><style>.googleplus25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus-round-logo.svg\') no-repeat;}.googleplus25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus-round-hover.svg\') no-repeat;}</style><a title=\"GooglePlus\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"googleplus25-round-logo\"></div></a><style>.youtube25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube-round-logo.svg\') no-repeat;}.youtube25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube-round-hover.svg\') no-repeat;}</style><a title=\"Youtube\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"youtube25-round-logo\"></div></a><style>.email25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email-round-logo.svg\') no-repeat;}.email25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email-round-hover.svg\') no-repeat;}</style><a title=\"Email\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"email25-round-logo\"></div></a>\n    </div>\n</div>\n',	1684675656),
(202,	4,	18,	'Header Navigation',	'<!-- Menu Horizontal con color NO basado en personalización que (SI es fijo, y SI se expande con un boton en el responsive)  -->\r\n\r\n\r\n\r\n<style>\r\n.Menu_18 .submenu a{\r\n    display: inline-block;\r\n}\r\n.Menu_18 .submenu li{\r\n    overflow-y:visible;\r\n    width:100%;\r\n}\r\n.Menu_18 .submenu li a{\r\n    line-height:15px !important;\r\n    padding: 10px 15px !important;\r\n}\r\n.Menu_18 .submenu > ul > .submenu .icono_submenu{\r\n    transform: rotate(-90deg);\r\n    -webkit-transform: rotate(-90deg);\r\n    -moz-transform: rotate(-90deg);\r\n    -o-transform: rotate(-90deg);\r\n    margin-top:5px;\r\n}\r\n.Menu_18 > .submenu .icono_submenu{\r\n    display: inline-block;\r\n    margin-left: 0px;\r\n    margin-right: 10px;\r\n    cursor:pointer;\r\n}\r\n\r\n.Menu_18 .submenu:hover > ul{\r\n    display:block;\r\n    opacity:1;\r\n}\r\n.Menu_18 .submenu ul{\r\n    overflow-y:visible;\r\n    display: none;\r\n}\r\n.Menu_18 > li > ul > .submenu a{\r\n    float:left;\r\n}\r\n.Menu_18 > li > ul > .submenu ul{\r\n    left:200px;\r\n}\r\n@media screen and (max-width: 1035px) {\r\n	.Menu_18 .submenu .icono_submenu{\r\n        color:#222;\r\n    }\r\n    .Menu_18 li{\r\n        box-sizing:border-box;\r\n        padding:0px !important;\r\n    }\r\n    .Menu_18 .submenu ul{\r\n        overflow-y:visible;\r\n        width:100%;\r\n        margin-left:15px;\r\n        padding-right:10px !important;\r\n    }\r\n    .Menu_18 > li > ul > .submenu ul{\r\n        left:0px !important;\r\n        margin-top:5px;\r\n    }\r\n}\r\n</style>\r\n<ul class=\"hide-on-med-and-down Menu_18\"><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php\" target=\"_self\"><div class=\"linea_icono\"></div>Portada</a></li><li class=\"submenu\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion\" target=\"_self\"><div class=\"linea_icono\"></div>Instituci&oacute;n</a><i class=\"mdi-navigation-arrow-drop-down right icono_submenu\"></i><ul class=\"dropdown-content sub-menu children\"><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/mision-y-vision\" target=\"_self\"><div class=\"linea_icono\"></div>Misi&oacute;n y Visi&oacute;n</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/marco-legal\" target=\"_self\"><div class=\"linea_icono\"></div>Marco Legal</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/resoluciones\" target=\"_self\"><div class=\"linea_icono\"></div>Resoluciones</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/organigrama\" target=\"_self\"><div class=\"linea_icono\"></div>Organigrama</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/autoridades\" target=\"_self\"><div class=\"linea_icono\"></div>Autoridades</a></li></ul></li><li class=\"active\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/noticias\" target=\"_self\"><div class=\"linea_icono\"></div>Noticias</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/agenda\" target=\"_self\"><div class=\"linea_icono\"></div>Agenda</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/galeria\" target=\"_self\"><div class=\"linea_icono\"></div>Galer&iacute;a</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/transparencia\" target=\"_self\"><div class=\"linea_icono\"></div>Transparencia</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/contacto\" target=\"_self\"><div class=\"linea_icono\"></div>Contacto</a></li></ul><ul id=\"nav-mobile\" class=\"side-nav Menu_18\"><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php\" target=\"_self\">Portada</a></li><li class=\"submenu\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion\" target=\"_self\">Instituci&oacute;n</a><i class=\"mdi-navigation-arrow-drop-down right icono_submenu\"></i><ul class=\"dropdown-content sub-menu children\"><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/mision-y-vision\" target=\"_self\">Misi&oacute;n y Visi&oacute;n</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/marco-legal\" target=\"_self\">Marco Legal</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/resoluciones\" target=\"_self\">Resoluciones</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/organigrama\" target=\"_self\">Organigrama</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/autoridades\" target=\"_self\">Autoridades</a></li></ul></li><li class=\"active\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/noticias\" target=\"_self\">Noticias</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/agenda\" target=\"_self\">Agenda</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/galeria\" target=\"_self\">Galer&iacute;a</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/transparencia\" target=\"_self\">Transparencia</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/contacto\" target=\"_self\">Contacto</a></li></ul><a href=\"#\" data-activates=\"nav-mobile\" class=\"button-collapse\"><i class=\"material-icons\">menu</i></a>',	1526909556),
(202,	4,	23,	'Titulo : 8',	'<!-- Menu Camino de Miga por Edgar Missael Cabral Baez  -->\r\n<style>\r\n.breadcrumb ul {\r\n  margin: 0;\r\n  padding: 0;\r\n  list-style-type: none;\r\n}\r\n.breadcrumb ul li {\r\n  display: inline-block;\r\n  color: #666;\r\n    padding-left:5px;\r\n}\r\n.breadcrumb ul li a {\r\n  text-decoration: none;\r\n}\r\n.breadcrumb ul li span {\r\n  color: #444;\r\n}\r\n\r\n</style>\r\n\r\n\r\n\r\n\r\n<div class=\"breadcrumb\"><ul><li><a href=\"http://localhost/index.php\" target=\"_self\"><i class=\"tiny material-icons\" style=\"vertical-align: text-top;\" >home</i></a></li><li>/</li><li><a href=\"http://localhost/index.php/noticias\" target=\"_self\">Noticias</a></li></ul></div>',	1526909556),
(202,	4,	25,	'Titulo : 8',	'\n\n    <!-- Menu Camino de Miga por Edgar Missael Cabral Baez  -->\r\n<style>\r\n.breadcrumb ul {\r\n  margin: 0;\r\n  padding: 0;\r\n  list-style-type: none;\r\n}\r\n.breadcrumb ul li {\r\n  display: inline-block;\r\n  color: #666;\r\n    padding-left:5px;\r\n}\r\n.breadcrumb ul li a {\r\n  text-decoration: none;\r\n}\r\n.breadcrumb ul li span {\r\n  color: #444;\r\n}\r\n\r\n</style>\r\n\r\n\r\n\r\n\r\n<div class=\"breadcrumb\"><ul><li><a href=\"http://localhost/index.php\" target=\"_self\"><i class=\"tiny material-icons\" style=\"vertical-align: text-top;\" >home</i></a></li><li>/</li><li><a href=\"http://localhost/index.php/noticias\" target=\"_self\">Noticias</a></li></ul></div>\n',	1526909556),
(202,	4,	30,	'Contenido : 1',	'<h5>Categorías:</h5>',	1684675657),
(202,	4,	31,	'Contenido : 2',	'<h5>Etiquetas:</h5>',	1684675657),
(202,	4,	92,	'Titulo : 8',	'<h4 class=\"page-title\">Noticia de prueba 5</h4>\n',	1684675656),
(202,	4,	102,	'Contenido : 2',	'\n',	1684675657),
(202,	4,	157,	'Titulo : 9',	'<blockquote class=\"ccm-block-page-attribute-display-wrapper\">Publicado:  05/18/18 11:34:a. m.</blockquote>',	1684675656),
(202,	4,	413,	'Contenido',	'<p data-redactor-inserted-image=\"true\"><a href=\"http://localhost/index.php/download_file/view_inline/17\" data-concrete5-link-lightbox=\"image\"><img src=\"/application/files/6315/2665/7727/14_-_85.png\" alt=\"\" width=\"425\" height=\"240\" id=\"image-marker\" style=\" display: block; margin: auto;\"></a></p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"></span></span></span>',	1684675656),
(202,	4,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684675657),
(202,	4,	421,	'Footer Legal',	'<p>Portal construido conjuntamente con la <a href=\"https://www.senatics.gov.py/\" target=\"_blank\">SENATICs</a>\r\n</p><p>Secretaría Nacional de Tecnologías de la Información y Comunicación - 2018\r\n</p>',	1684675657),
(202,	4,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684675657),
(202,	4,	433,	'search',	'<form action=\"http://localhost/index.php/buscador\" method=\"get\" class=\"input-field buscador_menu\"><input name=\"search_paths[]\" type=\"hidden\" value=\"\" />     \n        <input name=\"submit\" type=\"submit\" value=\"Buscar\" class=\"btn btn-default ccm-search-block-submit right\" style=\"margin-bottom:-40px;\"/>\n        <input name=\"query\" placeholder=\"Buscar...\" type=\"text\" value=\"\" class=\"validate ibuscador\" />\n    \n    </form>',	1684675656),
(202,	4,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684675656),
(202,	4,	437,	'Footer Contact',	'<h6><strong><i class=\"fa fa-map-marker\"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class=\"fa fa-phone\"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class=\"fa fa-clock-o\"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class=\"fa fa-envelope\"></i> E-mail:</strong> <a href=\"mailto:mailto:comunicacion@senatics.gov.py\">comunicacion@senatics.gov.py</a></h6>',	1684675657),
(202,	5,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684675691),
(202,	5,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684675691),
(202,	5,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684675691),
(202,	6,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684675710),
(202,	6,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684675710),
(202,	6,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684675710),
(202,	7,	17,	'info_superior',	'\n<style>\n.ccm-block-svg_social_media_icons .icon-container {\n    display: inline-block;\n    padding-top: 5px;\n    padding-bottom: 5px;\n}\n</style>\n\n<div class=\"ccm-block-svg_social_media_icons\" style=\"text-align: right;\">\n    <div class=\"icon-container\">\n\n    <style>.facebook25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook-round-logo.svg\') no-repeat;}.facebook25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/facebook-round-hover.svg\') no-repeat;}</style><a title=\"Facebook\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"facebook25-round-logo\"></div></a><style>.instagram25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram-round-logo.svg\') no-repeat;}.instagram25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/instagram-round-hover.svg\') no-repeat;}</style><a title=\"Instagram\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"instagram25-round-logo\"></div></a><style>.twitter25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter-round-logo.svg\') no-repeat;}.twitter25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/twitter-round-hover.svg\') no-repeat;}</style><a title=\"Twitter\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"twitter25-round-logo\"></div></a><style>.googleplus25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus-round-logo.svg\') no-repeat;}.googleplus25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/googleplus-round-hover.svg\') no-repeat;}</style><a title=\"GooglePlus\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"googleplus25-round-logo\"></div></a><style>.youtube25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube-round-logo.svg\') no-repeat;}.youtube25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/youtube-round-hover.svg\') no-repeat;}</style><a title=\"Youtube\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"youtube25-round-logo\"></div></a><style>.email25-round-logo{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email25-round-logo.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email-round-logo.svg\') no-repeat;}.email25-round-logo:hover{background:url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email25-round-hover.png\') no-repeat;background:none,url(\'/packages/svg_social_media_icons/blocks/svg_social_media_icons/images/email-round-hover.svg\') no-repeat;}</style><a title=\"Email\" target=\"_blank\" style=\"margin-left: 2.5px; margin-right: 2.5px; margin-bottom: 5px; float: left;\" href=\"#\"><div style=\"height: 25px; width: 25px\" class=\"email25-round-logo\"></div></a>\n    </div>\n</div>\n',	1684676717),
(202,	7,	18,	'Header Navigation',	'<!-- Menu Horizontal con color NO basado en personalización que (SI es fijo, y SI se expande con un boton en el responsive)  -->\r\n\r\n\r\n\r\n<style>\r\n.Menu_18 .submenu a{\r\n    display: inline-block;\r\n}\r\n.Menu_18 .submenu li{\r\n    overflow-y:visible;\r\n    width:100%;\r\n}\r\n.Menu_18 .submenu li a{\r\n    line-height:15px !important;\r\n    padding: 10px 15px !important;\r\n}\r\n.Menu_18 .submenu > ul > .submenu .icono_submenu{\r\n    transform: rotate(-90deg);\r\n    -webkit-transform: rotate(-90deg);\r\n    -moz-transform: rotate(-90deg);\r\n    -o-transform: rotate(-90deg);\r\n    margin-top:5px;\r\n}\r\n.Menu_18 > .submenu .icono_submenu{\r\n    display: inline-block;\r\n    margin-left: 0px;\r\n    margin-right: 10px;\r\n    cursor:pointer;\r\n}\r\n\r\n.Menu_18 .submenu:hover > ul{\r\n    display:block;\r\n    opacity:1;\r\n}\r\n.Menu_18 .submenu ul{\r\n    overflow-y:visible;\r\n    display: none;\r\n}\r\n.Menu_18 > li > ul > .submenu a{\r\n    float:left;\r\n}\r\n.Menu_18 > li > ul > .submenu ul{\r\n    left:200px;\r\n}\r\n@media screen and (max-width: 1035px) {\r\n	.Menu_18 .submenu .icono_submenu{\r\n        color:#222;\r\n    }\r\n    .Menu_18 li{\r\n        box-sizing:border-box;\r\n        padding:0px !important;\r\n    }\r\n    .Menu_18 .submenu ul{\r\n        overflow-y:visible;\r\n        width:100%;\r\n        margin-left:15px;\r\n        padding-right:10px !important;\r\n    }\r\n    .Menu_18 > li > ul > .submenu ul{\r\n        left:0px !important;\r\n        margin-top:5px;\r\n    }\r\n}\r\n</style>\r\n<ul class=\"hide-on-med-and-down Menu_18\"><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php\" target=\"_self\"><div class=\"linea_icono\"></div>Portada</a></li><li class=\"submenu\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion\" target=\"_self\"><div class=\"linea_icono\"></div>Instituci&oacute;n</a><i class=\"mdi-navigation-arrow-drop-down right icono_submenu\"></i><ul class=\"dropdown-content sub-menu children\"><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/mision-y-vision\" target=\"_self\"><div class=\"linea_icono\"></div>Misi&oacute;n y Visi&oacute;n</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/marco-legal\" target=\"_self\"><div class=\"linea_icono\"></div>Marco Legal</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/resoluciones\" target=\"_self\"><div class=\"linea_icono\"></div>Resoluciones</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/organigrama\" target=\"_self\"><div class=\"linea_icono\"></div>Organigrama</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/institucion/autoridades\" target=\"_self\"><div class=\"linea_icono\"></div>Autoridades</a></li></ul></li><li class=\"active\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/noticias\" target=\"_self\"><div class=\"linea_icono\"></div>Noticias</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/agenda\" target=\"_self\"><div class=\"linea_icono\"></div>Agenda</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/galeria\" target=\"_self\"><div class=\"linea_icono\"></div>Galer&iacute;a</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/transparencia\" target=\"_self\"><div class=\"linea_icono\"></div>Transparencia</a></li><li class=\"\"><a class=\"waves-effect waves-brow no-opacity\" href=\"http://localhost/index.php/contacto\" target=\"_self\"><div class=\"linea_icono\"></div>Contacto</a></li></ul><ul id=\"nav-mobile\" class=\"side-nav Menu_18\"><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php\" target=\"_self\">Portada</a></li><li class=\"submenu\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion\" target=\"_self\">Instituci&oacute;n</a><i class=\"mdi-navigation-arrow-drop-down right icono_submenu\"></i><ul class=\"dropdown-content sub-menu children\"><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/mision-y-vision\" target=\"_self\">Misi&oacute;n y Visi&oacute;n</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/marco-legal\" target=\"_self\">Marco Legal</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/resoluciones\" target=\"_self\">Resoluciones</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/organigrama\" target=\"_self\">Organigrama</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/institucion/autoridades\" target=\"_self\">Autoridades</a></li></ul></li><li class=\"active\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/noticias\" target=\"_self\">Noticias</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/agenda\" target=\"_self\">Agenda</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/galeria\" target=\"_self\">Galer&iacute;a</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/transparencia\" target=\"_self\">Transparencia</a></li><li class=\"\"><a class=\"waves-effect waves-brow\" href=\"http://localhost/index.php/contacto\" target=\"_self\">Contacto</a></li></ul><a href=\"#\" data-activates=\"nav-mobile\" class=\"button-collapse\"><i class=\"material-icons\">menu</i></a>',	1526910617),
(202,	7,	23,	'Titulo : 8',	'<!-- Menu Camino de Miga por Edgar Missael Cabral Baez  -->\r\n<style>\r\n.breadcrumb ul {\r\n  margin: 0;\r\n  padding: 0;\r\n  list-style-type: none;\r\n}\r\n.breadcrumb ul li {\r\n  display: inline-block;\r\n  color: #666;\r\n    padding-left:5px;\r\n}\r\n.breadcrumb ul li a {\r\n  text-decoration: none;\r\n}\r\n.breadcrumb ul li span {\r\n  color: #444;\r\n}\r\n\r\n</style>\r\n\r\n\r\n\r\n\r\n<div class=\"breadcrumb\"><ul><li><a href=\"http://localhost/index.php\" target=\"_self\"><i class=\"tiny material-icons\" style=\"vertical-align: text-top;\" >home</i></a></li><li>/</li><li><a href=\"http://localhost/index.php/noticias\" target=\"_self\">Noticias</a></li></ul></div>',	1526910617),
(202,	7,	25,	'Titulo : 8',	'\n\n    <!-- Menu Camino de Miga por Edgar Missael Cabral Baez  -->\r\n<style>\r\n.breadcrumb ul {\r\n  margin: 0;\r\n  padding: 0;\r\n  list-style-type: none;\r\n}\r\n.breadcrumb ul li {\r\n  display: inline-block;\r\n  color: #666;\r\n    padding-left:5px;\r\n}\r\n.breadcrumb ul li a {\r\n  text-decoration: none;\r\n}\r\n.breadcrumb ul li span {\r\n  color: #444;\r\n}\r\n\r\n</style>\r\n\r\n\r\n\r\n\r\n<div class=\"breadcrumb\"><ul><li><a href=\"http://localhost/index.php\" target=\"_self\"><i class=\"tiny material-icons\" style=\"vertical-align: text-top;\" >home</i></a></li><li>/</li><li><a href=\"http://localhost/index.php/noticias\" target=\"_self\">Noticias</a></li></ul></div>\n',	1526910618),
(202,	7,	30,	'Contenido : 1',	'<h5>Categorías:</h5>',	1684676718),
(202,	7,	31,	'Contenido : 2',	'<h5>Etiquetas:</h5>',	1684676718),
(202,	7,	92,	'Titulo : 8',	'<h4 class=\"page-title\">Noticia de prueba 5</h4>\n',	1684676717),
(202,	7,	102,	'Contenido : 2',	'\n',	1684676718),
(202,	7,	157,	'Titulo : 9',	'<blockquote class=\"ccm-block-page-attribute-display-wrapper\">Publicado:  05/18/18 11:34:a. m.</blockquote>',	1684676718),
(202,	7,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684675772),
(202,	7,	421,	'Footer Legal',	'<p>Portal construido conjuntamente con la <a href=\"https://www.senatics.gov.py/\" target=\"_blank\">SENATICs</a>\r\n</p><p>Secretaría Nacional de Tecnologías de la Información y Comunicación - 2018\r\n</p>',	1684676718),
(202,	7,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684675772),
(202,	7,	433,	'search',	'<form action=\"http://localhost/index.php/buscador\" method=\"get\" class=\"input-field buscador_menu\"><input name=\"search_paths[]\" type=\"hidden\" value=\"\" />     \n        <input name=\"submit\" type=\"submit\" value=\"Buscar\" class=\"btn btn-default ccm-search-block-submit right\" style=\"margin-bottom:-40px;\"/>\n        <input name=\"query\" placeholder=\"Buscar...\" type=\"text\" value=\"\" class=\"validate ibuscador\" />\n    \n    </form>',	1684676717),
(202,	7,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684675772),
(202,	7,	437,	'Footer Contact',	'<h6><strong><i class=\"fa fa-map-marker\"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class=\"fa fa-phone\"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class=\"fa fa-clock-o\"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class=\"fa fa-envelope\"></i> E-mail:</strong> <a href=\"mailto:mailto:comunicacion@senatics.gov.py\">comunicacion@senatics.gov.py</a></h6>',	1684676718),
(202,	7,	443,	'Contenido',	'<p data-redactor-inserted-image=\"true\"><a href=\"http://localhost/index.php/download_file/view_inline/17\" data-concrete5-link-lightbox=\"image\"><img src=\"/application/files/6315/2665/7727/14_-_85.png\" alt=\"\" width=\"425\" height=\"240\" id=\"image-marker\" style=\" display: block; margin: auto;\"></a></p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.<span class=\"redactor-invisible-space\"></span></span></span>',	1684676718),
(202,	8,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684676729),
(202,	8,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684676729),
(202,	8,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684676728),
(202,	9,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684676944),
(202,	9,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684676944),
(202,	9,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684676944),
(214,	1,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684675950),
(214,	1,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684675949),
(214,	1,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684675949),
(218,	1,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684677278),
(218,	1,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684677278),
(218,	1,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684677278),
(218,	2,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684677347),
(218,	2,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684677347),
(218,	2,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684677346),
(218,	3,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684678388),
(218,	3,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684678388),
(218,	3,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684678387),
(218,	4,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684678471),
(218,	4,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684678471),
(218,	4,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684678470),
(219,	1,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684677486),
(219,	1,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684677486),
(219,	1,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684677486),
(220,	1,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684677591),
(220,	1,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684677591),
(220,	1,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684677591),
(221,	1,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684677723),
(221,	1,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684677723),
(221,	1,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684677723),
(222,	1,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684677812),
(222,	1,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684677812),
(222,	1,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684677811),
(222,	2,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684677877),
(222,	2,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684677877),
(222,	2,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684677877),
(223,	1,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684678190),
(223,	1,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684678190),
(223,	1,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684678189),
(223,	2,	420,	'Footer Navigation',	'\n<div id=\"HTMLBlock420\" class=\"HTMLBlock\">\n<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class=\"white-text\">Enlaces de Interés</h5>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.presidencia.gov.py/\">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sfp.gov.py/\">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sas.gov.py/\">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.fondec.gov.py/\">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.senatur.gov.py/\">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.ministeriodejusticia.gov.py/\">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mtess.gov.py/\">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class=\"col l6 s12\">\r\n  <ul>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.cultura.gov.py/\">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.sicom.gov.py/\">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.indi.gov.py/\">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mec.gov.py/cms/\">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.hacienda.gov.py/\">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.snd.gov.py/\">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class=\"white-text white-enlaces\" target=\"_blank\" href=\"http://www.mspbs.gov.py/\">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div></div>',	1684678214),
(223,	2,	423,	'Footer Contact',	'<img src=\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\" alt=\"\" width=\"300\" height=\"64\" class=\"ccm-image-block img-responsive bID-423\">\n',	1684678214),
(223,	2,	435,	'Header Site Title',	'<a href=\"http://localhost/index.php\"><img src=\"/application/files/1815/2690/7906/Cabeceras.png\" alt=\"\" width=\"1000\" height=\"143\" class=\"ccm-image-block img-responsive bID-435\"></a>\n',	1684678214);

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
(159,	5,	94,	'Contenido Lateral',	1),
(191,	3,	233,	'Contenido : 13',	5),
(191,	4,	233,	'Contenido : 13',	5),
(191,	5,	233,	'Contenido : 13',	5),
(191,	6,	233,	'Contenido : 13',	5),
(191,	7,	233,	'Contenido : 13',	5),
(191,	7,	236,	'Contenido : 12',	6),
(191,	8,	236,	'Contenido : 12',	6),
(191,	9,	236,	'Contenido : 12',	6),
(191,	8,	237,	'Contenido : 13',	7),
(191,	9,	238,	'Contenido : 13',	7),
(1,	28,	262,	'Slider',	8),
(1,	29,	262,	'Slider',	8),
(1,	30,	262,	'Slider',	8),
(1,	31,	262,	'Slider',	8),
(1,	32,	262,	'Slider',	8),
(1,	33,	262,	'Slider',	8),
(1,	34,	262,	'Slider',	8),
(1,	35,	262,	'Slider',	8),
(1,	29,	263,	'Slider : 10',	9),
(1,	30,	263,	'Slider : 10',	9),
(1,	31,	263,	'Slider : 10',	9),
(1,	32,	263,	'Slider : 10',	9),
(1,	33,	263,	'Slider : 10',	9),
(1,	34,	263,	'Slider : 10',	9),
(1,	35,	263,	'Slider : 10',	9),
(1,	36,	263,	'Slider : 10',	9),
(1,	37,	263,	'Slider : 10',	9),
(1,	38,	263,	'Slider : 10',	9),
(1,	39,	263,	'Slider : 10',	9),
(1,	40,	263,	'Slider : 10',	9),
(1,	41,	263,	'Slider : 10',	9),
(1,	42,	263,	'Slider : 10',	9),
(1,	29,	266,	'Slider : 10',	14),
(1,	30,	266,	'Slider : 10',	14),
(1,	31,	266,	'Slider : 10',	14),
(1,	32,	266,	'Slider : 10',	14),
(1,	33,	266,	'Slider : 10',	14),
(1,	34,	266,	'Slider : 10',	14),
(1,	35,	266,	'Slider : 10',	14),
(1,	36,	266,	'Slider : 10',	14),
(1,	37,	266,	'Slider : 10',	14),
(1,	38,	266,	'Slider : 10',	14),
(1,	39,	266,	'Slider : 10',	14),
(1,	40,	266,	'Slider : 10',	14),
(1,	41,	266,	'Slider : 10',	14),
(1,	42,	266,	'Slider : 10',	14),
(1,	29,	267,	'Slider : 10',	15),
(1,	30,	267,	'Slider : 10',	15),
(1,	31,	267,	'Slider : 10',	15),
(1,	32,	267,	'Slider : 10',	15),
(1,	33,	267,	'Slider : 10',	15),
(1,	34,	267,	'Slider : 10',	15),
(1,	35,	267,	'Slider : 10',	15),
(1,	36,	267,	'Slider : 10',	15),
(1,	37,	267,	'Slider : 10',	15),
(1,	38,	267,	'Slider : 10',	15),
(1,	39,	267,	'Slider : 10',	15),
(1,	40,	267,	'Slider : 10',	15),
(1,	41,	267,	'Slider : 10',	15),
(1,	42,	267,	'Slider : 10',	15),
(1,	29,	265,	'Slider : 10',	16),
(1,	30,	265,	'Slider : 10',	16),
(1,	31,	265,	'Slider : 10',	16),
(1,	32,	265,	'Slider : 10',	16),
(1,	33,	265,	'Slider : 10',	16),
(1,	34,	265,	'Slider : 10',	16),
(1,	35,	265,	'Slider : 10',	16),
(1,	36,	265,	'Slider : 10',	16),
(1,	37,	265,	'Slider : 10',	16),
(1,	38,	265,	'Slider : 10',	16),
(1,	39,	265,	'Slider : 10',	16),
(1,	40,	265,	'Slider : 10',	16),
(1,	41,	265,	'Slider : 10',	16),
(1,	42,	265,	'Slider : 10',	16),
(1,	29,	264,	'Slider : 10',	17),
(1,	30,	264,	'Slider : 10',	17),
(1,	31,	264,	'Slider : 10',	17),
(1,	32,	264,	'Slider : 10',	17),
(1,	33,	264,	'Slider : 10',	17),
(1,	34,	264,	'Slider : 10',	17),
(1,	35,	264,	'Slider : 10',	17),
(1,	36,	264,	'Slider : 10',	17),
(1,	37,	264,	'Slider : 10',	17),
(1,	38,	264,	'Slider : 10',	17),
(1,	39,	264,	'Slider : 10',	17),
(1,	40,	264,	'Slider : 10',	17),
(1,	41,	264,	'Slider : 10',	17),
(1,	42,	264,	'Slider : 10',	17),
(160,	1,	157,	'Titulo : 9',	23),
(160,	1,	158,	'Titulo : 9',	26),
(1,	36,	431,	'Slider',	28),
(1,	37,	431,	'Slider',	28),
(1,	38,	431,	'Slider',	28),
(1,	39,	431,	'Slider',	28),
(1,	40,	431,	'Slider',	28),
(1,	41,	431,	'Slider',	28),
(1,	42,	431,	'Slider',	28),
(213,	3,	432,	'Contenido',	29),
(213,	4,	434,	'Contenido',	30),
(159,	6,	579,	'Contenido Lateral',	31),
(152,	5,	433,	'Main',	32),
(152,	6,	584,	'Main',	33);

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
(153,	2,	2),
(153,	3,	2),
(153,	4,	2),
(153,	5,	2),
(154,	2,	3),
(172,	2,	4),
(150,	2,	5),
(150,	4,	6),
(150,	5,	6),
(150,	6,	6),
(150,	7,	6),
(146,	4,	7);

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(1,	1,	'Home',	'home',	'',	'2018-05-16 12:09:07',	'2018-05-16 12:09:07',	'Initial Version',	0,	0,	1,	NULL,	2,	5,	NULL),
(1,	2,	'Home',	'home',	'',	'2018-05-16 12:09:07',	'2018-05-16 13:43:07',	'Nueva Versión 2',	0,	0,	1,	1,	2,	6,	NULL),
(1,	3,	'Home',	'home',	'',	'2018-05-16 12:09:07',	'2018-05-16 13:45:14',	'Nueva Versión 3',	0,	0,	1,	1,	2,	6,	NULL),
(1,	4,	'Home',	'home',	'',	'2018-05-16 12:09:07',	'2018-05-16 14:01:57',	'Version 4',	0,	0,	1,	1,	2,	6,	NULL),
(1,	5,	'Home',	'home',	'',	'2018-05-16 12:09:07',	'2018-05-16 14:06:10',	'Version 5',	0,	0,	1,	1,	2,	6,	NULL),
(1,	6,	'Home',	'home',	'',	'2018-05-16 12:09:07',	'2018-05-16 14:10:50',	'Version 6',	0,	0,	1,	1,	2,	6,	NULL),
(1,	7,	'Home',	'home',	'',	'2018-05-16 12:09:07',	'2018-05-16 14:16:07',	'Version 7',	0,	0,	1,	1,	2,	6,	NULL),
(1,	8,	'Home',	'home',	'',	'2018-05-16 12:09:07',	'2018-05-16 14:16:53',	'Version 8',	0,	0,	1,	1,	2,	6,	NULL),
(1,	9,	'Home',	'home',	'',	'2018-05-16 12:09:07',	'2018-05-16 14:18:14',	'Version 9',	0,	0,	1,	1,	2,	6,	NULL),
(1,	10,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-16 14:25:54',	'Nueva Versión 10',	0,	0,	1,	1,	2,	6,	NULL),
(1,	11,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 11:30:53',	'Nueva Versión 11',	0,	0,	1,	1,	2,	6,	NULL),
(1,	12,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 11:32:05',	'Version 12',	0,	0,	1,	1,	2,	6,	NULL),
(1,	13,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 11:57:52',	'Version 13',	0,	0,	1,	1,	2,	6,	NULL),
(1,	14,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 11:58:44',	'Version 14',	0,	0,	1,	1,	2,	6,	NULL),
(1,	15,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 12:01:02',	'Version 15',	0,	0,	1,	1,	2,	6,	NULL),
(1,	16,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 12:03:50',	'Version 16',	0,	0,	1,	1,	2,	6,	NULL),
(1,	17,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 15:03:39',	'Version 17',	0,	0,	1,	1,	2,	6,	NULL),
(1,	18,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 15:04:41',	'Version 18',	0,	0,	1,	1,	2,	6,	NULL),
(1,	19,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 15:05:02',	'Version 19',	0,	0,	1,	1,	2,	6,	NULL),
(1,	20,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 15:05:44',	'Version 20',	0,	0,	1,	1,	2,	6,	NULL),
(1,	21,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-17 15:06:13',	'Version 21',	0,	0,	1,	1,	2,	6,	NULL),
(1,	22,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 10:24:17',	'Version 22',	0,	0,	1,	1,	2,	6,	NULL),
(1,	23,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 10:30:52',	'Version 23',	0,	0,	1,	1,	2,	6,	NULL),
(1,	24,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 10:32:13',	'Version 24',	0,	0,	1,	1,	2,	6,	NULL),
(1,	25,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 10:49:33',	'Version 25',	0,	0,	1,	1,	2,	6,	NULL),
(1,	26,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 10:57:16',	'Version 26',	0,	0,	1,	1,	2,	6,	NULL),
(1,	27,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 10:58:08',	'Version 27',	0,	0,	1,	1,	2,	6,	NULL),
(1,	28,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 10:58:48',	'Version 28',	0,	0,	1,	1,	2,	6,	NULL),
(1,	29,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 10:59:32',	'Version 29',	0,	0,	1,	1,	2,	6,	NULL),
(1,	30,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 11:37:10',	'Version 30',	0,	0,	1,	1,	2,	6,	NULL),
(1,	31,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 11:37:36',	'Version 31',	0,	0,	1,	1,	2,	6,	NULL),
(1,	32,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 11:53:52',	'Version 32',	0,	0,	1,	1,	2,	6,	NULL),
(1,	33,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 11:54:10',	'Version 33',	0,	0,	1,	1,	2,	6,	NULL),
(1,	34,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 11:55:12',	'Version 34',	0,	0,	1,	1,	2,	6,	NULL),
(1,	35,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 11:58:12',	'Version 35',	0,	0,	1,	1,	2,	6,	NULL),
(1,	36,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 13:42:04',	'Version 36',	0,	0,	1,	1,	2,	6,	NULL),
(1,	37,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-18 15:11:24',	'Version 37',	0,	0,	1,	1,	2,	6,	NULL),
(1,	38,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-21 09:03:19',	'Version 38',	0,	0,	1,	1,	2,	6,	NULL),
(1,	39,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-21 09:05:22',	'Version 39',	0,	0,	1,	1,	2,	6,	NULL),
(1,	40,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-21 09:08:06',	'Version 40',	0,	0,	1,	1,	2,	6,	NULL),
(1,	41,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-21 10:23:06',	'Version 41',	0,	0,	1,	1,	2,	6,	NULL),
(1,	42,	'Portada',	'portada',	'',	'2018-05-16 12:09:07',	'2018-05-21 10:24:22',	'Version 42',	1,	0,	1,	1,	2,	6,	NULL),
(2,	1,	'Dashboard',	'dashboard',	'',	'2018-05-16 12:09:37',	'2018-05-16 12:09:37',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(3,	1,	'Sitemap',	'sitemap',	'Whole world at a glance.',	'2018-05-16 12:09:37',	'2018-05-16 12:09:37',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(4,	1,	'Full Sitemap',	'full',	'',	'2018-05-16 12:09:38',	'2018-05-16 12:09:38',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(5,	1,	'Flat View',	'explore',	'',	'2018-05-16 12:09:38',	'2018-05-16 12:09:38',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(6,	1,	'Page Search',	'search',	'',	'2018-05-16 12:09:38',	'2018-05-16 12:09:38',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(7,	1,	'Files',	'files',	'All documents and images.',	'2018-05-16 12:09:39',	'2018-05-16 12:09:39',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(8,	1,	'File Manager',	'search',	'',	'2018-05-16 12:09:39',	'2018-05-16 12:09:39',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(9,	1,	'Attributes',	'attributes',	'',	'2018-05-16 12:09:39',	'2018-05-16 12:09:39',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(10,	1,	'File Sets',	'sets',	'',	'2018-05-16 12:09:40',	'2018-05-16 12:09:40',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(11,	1,	'Add File Set',	'add_set',	'',	'2018-05-16 12:09:40',	'2018-05-16 12:09:40',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(12,	1,	'Members',	'users',	'Add and manage the user accounts and groups on your website.',	'2018-05-16 12:09:41',	'2018-05-16 12:09:41',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(13,	1,	'Search Users',	'search',	'',	'2018-05-16 12:09:41',	'2018-05-16 12:09:41',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(14,	1,	'User Groups',	'groups',	'',	'2018-05-16 12:09:42',	'2018-05-16 12:09:42',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(15,	1,	'Attributes',	'attributes',	'',	'2018-05-16 12:09:42',	'2018-05-16 12:09:42',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(16,	1,	'Add User',	'add',	'',	'2018-05-16 12:09:43',	'2018-05-16 12:09:43',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(17,	1,	'Add Group',	'add_group',	'',	'2018-05-16 12:09:43',	'2018-05-16 12:09:43',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(18,	1,	'Move Multiple Groups',	'bulkupdate',	'',	'2018-05-16 12:09:44',	'2018-05-16 12:09:44',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(19,	1,	'Group Sets',	'group_sets',	'',	'2018-05-16 12:09:44',	'2018-05-16 12:09:44',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(20,	1,	'Community Points',	'points',	NULL,	'2018-05-16 12:09:44',	'2018-05-16 12:09:44',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(21,	1,	'Assign Points',	'assign',	NULL,	'2018-05-16 12:09:45',	'2018-05-16 12:09:45',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(22,	1,	'Actions',	'actions',	NULL,	'2018-05-16 12:09:45',	'2018-05-16 12:09:45',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(23,	1,	'Reports',	'reports',	'Get data from forms and logs.',	'2018-05-16 12:09:45',	'2018-05-16 12:09:45',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(24,	1,	'Form Results',	'forms',	'Get submission data.',	'2018-05-16 12:09:46',	'2018-05-16 12:09:46',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(25,	1,	'Surveys',	'surveys',	'',	'2018-05-16 12:09:46',	'2018-05-16 12:09:46',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(26,	1,	'Logs',	'logs',	'',	'2018-05-16 12:09:46',	'2018-05-16 12:09:46',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(27,	1,	'Pages & Themes',	'pages',	'Reskin your site.',	'2018-05-16 12:09:47',	'2018-05-16 12:09:47',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(28,	1,	'Themes',	'themes',	'Reskin your site.',	'2018-05-16 12:09:47',	'2018-05-16 12:09:47',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(29,	1,	'Inspect',	'inspect',	'',	'2018-05-16 12:09:48',	'2018-05-16 12:09:48',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(30,	1,	'Page Types',	'types',	'',	'2018-05-16 12:09:48',	'2018-05-16 12:09:48',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(31,	1,	'Organize Page Type Order',	'organize',	'',	'2018-05-16 12:09:48',	'2018-05-16 12:09:48',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(32,	1,	'Add Page Type',	'add',	'',	'2018-05-16 12:09:49',	'2018-05-16 12:09:49',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(33,	1,	'Compose Form',	'form',	'',	'2018-05-16 12:09:49',	'2018-05-16 12:09:49',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(34,	1,	'Defaults and Output',	'output',	'',	'2018-05-16 12:09:49',	'2018-05-16 12:09:49',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(35,	1,	'Page Type Attributes',	'attributes',	'',	'2018-05-16 12:09:50',	'2018-05-16 12:09:50',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(36,	1,	'Page Type Permissions',	'permissions',	'',	'2018-05-16 12:09:50',	'2018-05-16 12:09:50',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(37,	1,	'Page Templates',	'templates',	'Form factors for pages in your site.',	'2018-05-16 12:09:51',	'2018-05-16 12:09:51',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(38,	1,	'Add Page Template',	'add',	'Add page templates to your site.',	'2018-05-16 12:09:51',	'2018-05-16 12:09:51',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(39,	1,	'Attributes',	'attributes',	'',	'2018-05-16 12:09:52',	'2018-05-16 12:09:52',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(40,	1,	'Single Pages',	'single',	'',	'2018-05-16 12:09:52',	'2018-05-16 12:09:52',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(41,	1,	'RSS Feeds',	'feeds',	'',	'2018-05-16 12:09:53',	'2018-05-16 12:09:53',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(42,	1,	'Conversations',	'conversations',	'',	'2018-05-16 12:09:53',	'2018-05-16 12:09:53',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(43,	1,	'Messages',	'messages',	'',	'2018-05-16 12:09:54',	'2018-05-16 12:09:54',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(44,	1,	'Workflow',	'workflow',	'',	'2018-05-16 12:09:54',	'2018-05-16 12:09:54',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(45,	1,	'Waiting for Me',	'me',	'',	'2018-05-16 12:09:55',	'2018-05-16 12:09:55',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(46,	1,	'Workflow List',	'workflows',	'',	'2018-05-16 12:09:55',	'2018-05-16 12:09:55',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(47,	1,	'Stacks & Blocks',	'blocks',	'Manage sitewide content and administer block types.',	'2018-05-16 12:09:56',	'2018-05-16 12:09:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(48,	1,	'Stacks',	'stacks',	'Share content across your site.',	'2018-05-16 12:09:56',	'2018-05-16 12:09:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(49,	1,	'Block & Stack Permissions',	'permissions',	'Control who can add blocks and stacks on your site.',	'2018-05-16 12:09:56',	'2018-05-16 12:09:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(50,	1,	'Stack List',	'list',	'',	'2018-05-16 12:09:57',	'2018-05-16 12:09:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(51,	1,	'Block Types',	'types',	'Manage the installed block types in your site.',	'2018-05-16 12:09:57',	'2018-05-16 12:09:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(52,	1,	'Extend concrete5',	'extend',	'',	'2018-05-16 12:09:57',	'2018-05-16 12:09:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(53,	1,	'Dashboard',	'news',	'',	'2018-05-16 12:09:58',	'2018-05-16 12:09:58',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(54,	1,	'Add Functionality',	'install',	'Install add-ons & themes.',	'2018-05-16 12:09:58',	'2018-05-16 12:09:58',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(55,	1,	'Update Add-Ons',	'update',	'Update your installed packages.',	'2018-05-16 12:09:59',	'2018-05-16 12:09:59',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(56,	1,	'Connect to the Community',	'connect',	'Connect to the concrete5 community.',	'2018-05-16 12:09:59',	'2018-05-16 12:09:59',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(57,	1,	'Get More Themes',	'themes',	'Download themes from concrete5.org.',	'2018-05-16 12:10:00',	'2018-05-16 12:10:00',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(58,	1,	'Get More Add-Ons',	'addons',	'Download add-ons from concrete5.org.',	'2018-05-16 12:10:00',	'2018-05-16 12:10:00',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(59,	1,	'System & Settings',	'system',	'Secure and setup your site.',	'2018-05-16 12:10:01',	'2018-05-16 12:10:01',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(60,	1,	'Basics',	'basics',	'Basic information about your website.',	'2018-05-16 12:10:02',	'2018-05-16 12:10:02',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(61,	1,	'Site Name',	'name',	'',	'2018-05-16 12:10:02',	'2018-05-16 12:10:02',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(62,	1,	'Accessibility',	'accessibility',	'',	'2018-05-16 12:10:02',	'2018-05-16 12:10:02',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(63,	1,	'Social Links',	'social',	'',	'2018-05-16 12:10:03',	'2018-05-16 12:10:03',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(64,	1,	'Bookmark Icons',	'icons',	'Bookmark icon and mobile home screen icon setup.',	'2018-05-16 12:10:03',	'2018-05-16 12:10:03',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(65,	1,	'Rich Text Editor',	'editor',	'',	'2018-05-16 12:10:03',	'2018-05-16 12:10:03',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(66,	1,	'Languages',	'multilingual',	'',	'2018-05-16 12:10:04',	'2018-05-16 12:10:04',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(67,	1,	'Time Zone',	'timezone',	'',	'2018-05-16 12:10:05',	'2018-05-16 12:10:05',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(68,	1,	'Multilingual',	'multilingual',	'Run your site in multiple languages.',	'2018-05-16 12:10:05',	'2018-05-16 12:10:05',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(69,	1,	'Multilingual Setup',	'setup',	'',	'2018-05-16 12:10:06',	'2018-05-16 12:10:06',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(70,	1,	'Copy Languages',	'copy',	'',	'2018-05-16 12:10:06',	'2018-05-16 12:10:06',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(71,	1,	'Page Report',	'page_report',	'',	'2018-05-16 12:10:07',	'2018-05-16 12:10:07',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(72,	1,	'Translate Site Interface',	'translate_interface',	'',	'2018-05-16 12:10:07',	'2018-05-16 12:10:07',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(73,	1,	'SEO & Statistics',	'seo',	'Enable pretty URLs and tracking codes.',	'2018-05-16 12:10:08',	'2018-05-16 12:10:08',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(74,	1,	'URLs and Redirection',	'urls',	'',	'2018-05-16 12:10:08',	'2018-05-16 12:10:08',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(75,	1,	'Bulk SEO Updater',	'bulk',	'',	'2018-05-16 12:10:08',	'2018-05-16 12:10:08',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(76,	1,	'Tracking Codes',	'codes',	'',	'2018-05-16 12:10:09',	'2018-05-16 12:10:09',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(77,	1,	'Excluded URL Word List',	'excluded',	'',	'2018-05-16 12:10:09',	'2018-05-16 12:10:09',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(78,	1,	'Search Index',	'searchindex',	'',	'2018-05-16 12:10:10',	'2018-05-16 12:10:10',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(79,	1,	'Files',	'files',	'',	'2018-05-16 12:10:10',	'2018-05-16 12:10:10',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(80,	1,	'File Manager Permissions',	'permissions',	'',	'2018-05-16 12:10:11',	'2018-05-16 12:10:11',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(81,	1,	'Allowed File Types',	'filetypes',	'',	'2018-05-16 12:10:11',	'2018-05-16 12:10:11',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(82,	1,	'Thumbnails',	'thumbnails',	'',	'2018-05-16 12:10:11',	'2018-05-16 12:10:11',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(83,	1,	'Image Uploading',	'image_uploading',	'',	'2018-05-16 12:10:12',	'2018-05-16 12:10:12',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(84,	1,	'File Storage Locations',	'storage',	'',	'2018-05-16 12:10:12',	'2018-05-16 12:10:12',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(85,	1,	'Optimization',	'optimization',	'Keep your site running well.',	'2018-05-16 12:10:13',	'2018-05-16 12:10:13',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(86,	1,	'Cache & Speed Settings',	'cache',	'',	'2018-05-16 12:10:13',	'2018-05-16 12:10:13',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(87,	1,	'Clear Cache',	'clearcache',	'',	'2018-05-16 12:10:13',	'2018-05-16 12:10:13',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(88,	1,	'Automated Jobs',	'jobs',	'',	'2018-05-16 12:10:14',	'2018-05-16 12:10:14',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(89,	1,	'Database Query Log',	'query_log',	'',	'2018-05-16 12:10:14',	'2018-05-16 12:10:14',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(90,	1,	'Permissions & Access',	'permissions',	'Control who sees and edits your site.',	'2018-05-16 12:10:15',	'2018-05-16 12:10:15',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(91,	1,	'Site Access',	'site',	'',	'2018-05-16 12:10:15',	'2018-05-16 12:10:15',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(92,	1,	'Task Permissions',	'tasks',	'',	'2018-05-16 12:10:15',	'2018-05-16 12:10:15',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(93,	1,	'User Permissions',	'users',	'',	'2018-05-16 12:10:16',	'2018-05-16 12:10:16',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(94,	1,	'Advanced Permissions',	'advanced',	'',	'2018-05-16 12:10:16',	'2018-05-16 12:10:16',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(95,	1,	'IP Blacklist',	'blacklist',	'',	'2018-05-16 12:10:17',	'2018-05-16 12:10:17',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(96,	1,	'Captcha Setup',	'captcha',	'',	'2018-05-16 12:10:17',	'2018-05-16 12:10:17',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(97,	1,	'Spam Control',	'antispam',	'',	'2018-05-16 12:10:18',	'2018-05-16 12:10:18',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(98,	1,	'Maintenance Mode',	'maintenance',	'',	'2018-05-16 12:10:18',	'2018-05-16 12:10:18',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(99,	1,	'Login & Registration',	'registration',	'Change login behaviors and setup public profiles.',	'2018-05-16 12:10:19',	'2018-05-16 12:10:19',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(100,	1,	'Login Destination',	'postlogin',	'',	'2018-05-16 12:10:19',	'2018-05-16 12:10:19',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(101,	1,	'Public Profiles',	'profiles',	'',	'2018-05-16 12:10:19',	'2018-05-16 12:10:19',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(102,	1,	'Public Registration',	'open',	'',	'2018-05-16 12:10:20',	'2018-05-16 12:10:20',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(103,	1,	'Authentication Types',	'authentication',	'',	'2018-05-16 12:10:20',	'2018-05-16 12:10:20',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(104,	1,	'Email',	'mail',	'Control how your site send and processes mail.',	'2018-05-16 12:10:20',	'2018-05-16 12:10:20',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(105,	1,	'SMTP Method',	'method',	'',	'2018-05-16 12:10:21',	'2018-05-16 12:10:21',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(106,	1,	'Test Mail Settings',	'test',	'',	'2018-05-16 12:10:21',	'2018-05-16 12:10:21',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(107,	1,	'Email Importers',	'importers',	'',	'2018-05-16 12:10:22',	'2018-05-16 12:10:22',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(108,	1,	'Conversations',	'conversations',	'Manage your conversations settings',	'2018-05-16 12:10:22',	'2018-05-16 12:10:22',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(109,	1,	'Settings',	'settings',	'',	'2018-05-16 12:10:23',	'2018-05-16 12:10:23',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(110,	1,	'Community Points',	'points',	'',	'2018-05-16 12:10:23',	'2018-05-16 12:10:23',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(111,	1,	'Banned Words',	'bannedwords',	'',	'2018-05-16 12:10:24',	'2018-05-16 12:10:24',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(112,	1,	'Conversation Permissions',	'permissions',	'',	'2018-05-16 12:10:24',	'2018-05-16 12:10:24',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(113,	1,	'Attributes',	'attributes',	'Setup attributes for pages, users, files and more.',	'2018-05-16 12:10:25',	'2018-05-16 12:10:25',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(114,	1,	'Sets',	'sets',	'Group attributes into sets for easier organization',	'2018-05-16 12:10:25',	'2018-05-16 12:10:25',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(115,	1,	'Types',	'types',	'Choose which attribute types are available for different items.',	'2018-05-16 12:10:26',	'2018-05-16 12:10:26',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(116,	1,	'Topics',	'topics',	'',	'2018-05-16 12:10:26',	'2018-05-16 12:10:26',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(117,	1,	'Add Topic Tree',	'add',	'',	'2018-05-16 12:10:26',	'2018-05-16 12:10:26',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(118,	1,	'Environment',	'environment',	'Advanced settings for web developers.',	'2018-05-16 12:10:27',	'2018-05-16 12:10:27',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(119,	1,	'Environment Information',	'info',	'',	'2018-05-16 12:10:27',	'2018-05-16 12:10:27',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(120,	1,	'Debug Settings',	'debug',	'',	'2018-05-16 12:10:28',	'2018-05-16 12:10:28',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(121,	1,	'Logging Settings',	'logging',	'',	'2018-05-16 12:10:28',	'2018-05-16 12:10:28',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(122,	1,	'Proxy Server',	'proxy',	'',	'2018-05-16 12:10:28',	'2018-05-16 12:10:28',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(123,	1,	'Database Entities',	'entities',	'',	'2018-05-16 12:10:29',	'2018-05-16 12:10:29',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(124,	1,	'Backup & Restore',	'backup',	'Backup or restore your website.',	'2018-05-16 12:10:29',	'2018-05-16 12:10:29',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(125,	1,	'Backup Database',	'backup',	'',	'2018-05-16 12:10:30',	'2018-05-16 12:10:30',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(126,	1,	'Update concrete5',	'update',	'',	'2018-05-16 12:10:31',	'2018-05-16 12:10:31',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(127,	1,	'Welcome to concrete5',	'welcome',	'Learn about how to use concrete5, how to develop for concrete5, and get general help.',	'2018-05-16 12:10:33',	'2018-05-16 12:10:33',	'Initial Version',	1,	0,	1,	NULL,	2,	4,	NULL),
(128,	1,	'Customize Dashboard Home',	'home',	'',	'2018-05-16 12:10:34',	'2018-05-16 12:10:34',	'Initial Version',	1,	0,	1,	NULL,	2,	2,	NULL),
(129,	1,	'Drafts',	'!drafts',	'',	'2018-05-16 12:10:51',	'2018-05-16 12:10:51',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(130,	1,	'Trash',	'!trash',	'',	'2018-05-16 12:10:52',	'2018-05-16 12:10:52',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(131,	1,	'Stacks',	'!stacks',	'',	'2018-05-16 12:10:52',	'2018-05-16 12:10:52',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(132,	1,	'Login',	'login',	'',	'2018-05-16 12:10:53',	'2018-05-16 12:10:53',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(133,	1,	'Register',	'register',	'',	'2018-05-16 12:10:53',	'2018-05-16 12:10:53',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(134,	1,	'My Account',	'account',	'',	'2018-05-16 12:10:54',	'2018-05-16 12:10:54',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(135,	1,	'Edit Profile',	'edit_profile',	'Edit your user profile and change password.',	'2018-05-16 12:10:54',	'2018-05-16 12:10:54',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(136,	1,	'Profile Picture',	'avatar',	'Specify a new image attached to posts or edits.',	'2018-05-16 12:10:54',	'2018-05-16 12:10:54',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(137,	1,	'Messages',	'messages',	'Inbox for site-specific messages.',	'2018-05-16 12:10:55',	'2018-05-16 12:10:55',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(138,	1,	'Inbox',	'inbox',	'',	'2018-05-16 12:10:55',	'2018-05-16 12:10:55',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(139,	1,	'Members',	'members',	'',	'2018-05-16 12:10:56',	'2018-05-16 12:10:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(140,	1,	'View Profile',	'profile',	'',	'2018-05-16 12:10:56',	'2018-05-16 12:10:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(141,	1,	'Directory',	'directory',	'',	'2018-05-16 12:10:56',	'2018-05-16 12:10:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(142,	1,	'Page Not Found',	'page_not_found',	'',	'2018-05-16 12:10:57',	'2018-05-16 12:10:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(143,	1,	'Page Forbidden',	'page_forbidden',	'',	'2018-05-16 12:10:57',	'2018-05-16 12:10:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(144,	1,	'Download File',	'download_file',	'',	'2018-05-16 12:10:58',	'2018-05-16 12:10:58',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(145,	1,	'',	NULL,	NULL,	'2018-05-16 12:11:01',	'2018-05-16 12:11:01',	'Initial Version',	1,	0,	NULL,	NULL,	0,	5,	NULL),
(146,	1,	'Header Site Title',	'header-site-title',	NULL,	'2018-05-16 13:36:29',	'2018-05-16 13:36:29',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(146,	2,	'Header Site Title',	'header-site-title',	NULL,	'2018-05-16 13:36:29',	'2018-05-16 14:01:57',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(146,	3,	'Header Site Title',	'header-site-title',	NULL,	'2018-05-16 13:36:29',	'2018-05-21 09:03:22',	'Nueva Versión 3',	0,	0,	1,	1,	2,	0,	NULL),
(146,	4,	'Header Site Title',	'header-site-title',	NULL,	'2018-05-16 13:36:29',	'2018-05-21 09:05:21',	'Nueva Versión 4',	1,	0,	1,	1,	2,	0,	NULL),
(147,	1,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-16 13:36:29',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(147,	2,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-16 14:18:14',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(147,	3,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-16 14:18:32',	'Nueva Versión 3',	0,	0,	1,	1,	2,	0,	NULL),
(147,	4,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-17 10:15:06',	'Nueva Versión 4',	0,	0,	1,	1,	2,	0,	NULL),
(147,	5,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-17 10:15:12',	'Nueva Versión 5',	0,	0,	1,	1,	2,	0,	NULL),
(147,	6,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-17 10:15:25',	'Nueva Versión 6',	0,	0,	1,	1,	2,	0,	NULL),
(147,	7,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-17 10:15:33',	'Nueva Versión 7',	0,	0,	1,	1,	2,	0,	NULL),
(147,	8,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-17 15:03:39',	'Nueva Versión 8',	0,	0,	1,	1,	2,	0,	NULL),
(147,	9,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-17 15:04:41',	'Nueva Versión 9',	0,	0,	1,	1,	2,	0,	NULL),
(147,	10,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-17 15:05:01',	'Nueva Versión 10',	0,	0,	1,	1,	2,	0,	NULL),
(147,	11,	'Header Navigation',	'header-navigation',	NULL,	'2018-05-16 13:36:29',	'2018-05-17 15:05:50',	'Nueva Versión 11',	1,	0,	1,	1,	2,	0,	NULL),
(148,	1,	'Footer Legal',	'footer-legal',	NULL,	'2018-05-16 13:36:30',	'2018-05-16 13:36:30',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(148,	2,	'Footer Legal',	'footer-legal',	NULL,	'2018-05-16 13:36:30',	'2018-05-16 14:10:50',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(148,	3,	'Footer Legal',	'footer-legal',	NULL,	'2018-05-16 13:36:30',	'2018-05-16 14:11:00',	'Nueva Versión 3',	0,	0,	1,	1,	2,	0,	NULL),
(148,	4,	'Footer Legal',	'footer-legal',	NULL,	'2018-05-16 13:36:30',	'2018-05-18 11:48:19',	'Nueva Versión 4',	0,	0,	1,	1,	2,	0,	NULL),
(148,	5,	'Footer Legal',	'footer-legal',	NULL,	'2018-05-16 13:36:30',	'2018-05-21 10:24:21',	'Nueva Versión 5',	0,	0,	1,	1,	2,	0,	NULL),
(148,	6,	'Footer Legal',	'footer-legal',	NULL,	'2018-05-16 13:36:30',	'2018-05-21 10:24:54',	'Nueva Versión 6',	1,	0,	1,	1,	2,	0,	NULL),
(149,	1,	'Footer Navigation',	'footer-navigation',	NULL,	'2018-05-16 13:36:30',	'2018-05-16 13:36:30',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(149,	2,	'Footer Navigation',	'footer-navigation',	NULL,	'2018-05-16 13:36:30',	'2018-05-18 11:47:48',	'Nueva Versión 2',	1,	0,	1,	1,	2,	0,	NULL),
(150,	1,	'Footer Contact',	'footer-contact',	NULL,	'2018-05-16 13:36:30',	'2018-05-16 13:36:30',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(150,	2,	'Footer Contact',	'footer-contact',	NULL,	'2018-05-16 13:36:30',	'2018-05-18 11:48:40',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(150,	3,	'Footer Contact',	'footer-contact',	NULL,	'2018-05-16 13:36:30',	'2018-05-18 11:48:44',	'Nueva Versión 3',	0,	0,	1,	1,	2,	0,	NULL),
(150,	4,	'Footer Contact',	'footer-contact',	NULL,	'2018-05-16 13:36:30',	'2018-05-18 11:49:18',	'Nueva Versión 4',	0,	0,	1,	1,	2,	0,	NULL),
(150,	5,	'Footer Contact',	'footer-contact',	NULL,	'2018-05-16 13:36:30',	'2018-05-21 09:08:05',	'Nueva Versión 5',	0,	0,	1,	1,	2,	0,	NULL),
(150,	6,	'Footer Contact',	'footer-contact',	NULL,	'2018-05-16 13:36:30',	'2018-05-21 09:08:23',	'Nueva Versión 6',	0,	0,	1,	1,	2,	0,	NULL),
(150,	7,	'Footer Contact',	'footer-contact',	NULL,	'2018-05-16 13:36:30',	'2018-05-21 10:24:39',	'Nueva Versión 7',	1,	0,	1,	1,	2,	0,	NULL),
(151,	1,	'info_superior',	'info-superior',	NULL,	'2018-05-16 13:55:32',	'2018-05-16 13:55:32',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(151,	2,	'info_superior',	'info-superior',	NULL,	'2018-05-16 13:55:32',	'2018-05-16 14:16:12',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(151,	3,	'info_superior',	'info-superior',	NULL,	'2018-05-16 13:55:32',	'2018-05-16 14:16:12',	'Nueva Versión 3',	0,	0,	1,	1,	2,	0,	NULL),
(151,	4,	'info_superior',	'info-superior',	NULL,	'2018-05-16 13:55:32',	'2018-05-16 14:16:53',	'Nueva Versión 4',	1,	0,	1,	1,	2,	0,	NULL),
(152,	1,	'search',	'search',	NULL,	'2018-05-16 13:55:32',	'2018-05-16 13:55:32',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(152,	2,	'search',	'search',	NULL,	'2018-05-16 13:55:32',	'2018-05-16 14:03:42',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(152,	3,	'search',	'search',	NULL,	'2018-05-16 13:55:32',	'2018-05-16 14:06:10',	'Nueva Versión 3',	0,	0,	1,	1,	2,	0,	NULL),
(152,	4,	'search',	'search',	NULL,	'2018-05-16 13:55:32',	'2018-05-18 15:11:24',	'Nueva Versión 4',	0,	0,	1,	1,	2,	0,	NULL),
(152,	5,	'search',	'search',	NULL,	'2018-05-16 13:55:32',	'2018-05-21 10:23:06',	'Nueva Versión 5',	0,	0,	1,	1,	2,	0,	NULL),
(152,	6,	'search',	'search',	NULL,	'2018-05-16 13:55:32',	'2018-05-21 10:23:32',	'Nueva Versión 6',	1,	0,	1,	1,	2,	0,	NULL),
(153,	1,	'Espacio 2',	'espacio-2',	NULL,	'2018-05-16 13:55:33',	'2018-05-16 13:55:33',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(153,	2,	'Espacio 2',	'espacio-2',	NULL,	'2018-05-16 13:55:33',	'2018-05-16 14:02:13',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(153,	3,	'Espacio 2',	'espacio-2',	NULL,	'2018-05-16 13:55:33',	'2018-05-16 14:15:57',	'Nueva Versión 3',	0,	0,	1,	1,	2,	0,	NULL),
(153,	4,	'Espacio 2',	'espacio-2',	NULL,	'2018-05-16 13:55:33',	'2018-05-16 14:16:08',	'Nueva Versión 4',	0,	0,	1,	1,	2,	0,	NULL),
(153,	5,	'Espacio 2',	'espacio-2',	NULL,	'2018-05-16 13:55:33',	'2018-05-16 14:16:12',	'Nueva Versión 5',	0,	0,	1,	1,	2,	0,	NULL),
(153,	6,	'Espacio 2',	'espacio-2',	NULL,	'2018-05-16 13:55:33',	'2018-05-21 09:03:19',	'Nueva Versión 6',	1,	0,	1,	1,	2,	0,	NULL),
(154,	1,	'Espacio 3',	'espacio-3',	NULL,	'2018-05-16 13:55:33',	'2018-05-16 13:55:33',	'Initial Version',	0,	0,	1,	NULL,	2,	0,	NULL),
(154,	2,	'Espacio 3',	'espacio-3',	NULL,	'2018-05-16 13:55:33',	'2018-05-16 14:03:17',	'Nueva Versión 2',	0,	0,	1,	1,	2,	0,	NULL),
(154,	3,	'Espacio 3',	'espacio-3',	NULL,	'2018-05-16 13:55:33',	'2018-05-21 09:03:20',	'Nueva Versión 3',	1,	0,	1,	1,	2,	0,	NULL),
(157,	1,	'',	NULL,	NULL,	'2018-05-16 14:30:58',	'2018-05-16 14:30:58',	'Initial Version',	1,	0,	NULL,	NULL,	0,	7,	NULL),
(159,	1,	'Noticias',	'noticias',	'',	'2018-05-16 14:43:48',	'2018-05-16 14:43:48',	'Version 1',	0,	0,	1,	1,	2,	7,	NULL),
(159,	2,	'Noticias',	'noticias',	'',	'2018-05-16 14:43:48',	'2018-05-17 10:15:06',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(159,	3,	'Noticias',	'noticias',	'',	'2018-05-16 14:43:48',	'2018-05-17 11:09:02',	'Version 3',	0,	0,	1,	1,	2,	9,	NULL),
(159,	4,	'Noticias',	'noticias',	'',	'2018-05-16 14:43:48',	'2018-05-17 11:15:11',	'Version 4',	0,	0,	1,	1,	2,	9,	NULL),
(159,	5,	'Noticias',	'noticias',	'',	'2018-05-16 14:43:48',	'2018-05-17 11:20:33',	'Version 5',	0,	0,	1,	1,	2,	9,	NULL),
(159,	6,	'Noticias',	'noticias',	'',	'2018-05-16 14:43:48',	'2018-05-21 10:11:31',	'Version 6',	0,	0,	1,	1,	2,	9,	NULL),
(159,	7,	'Noticias',	'noticias',	'',	'2018-05-16 14:43:48',	'2018-05-21 10:15:53',	'Version 7',	1,	0,	1,	1,	2,	9,	NULL),
(160,	1,	'',	NULL,	NULL,	'2018-05-16 15:11:48',	'2018-05-16 15:11:48',	'Initial Version',	1,	0,	NULL,	NULL,	0,	7,	NULL),
(165,	1,	'Institución',	'institucion',	'',	'2018-05-17 10:14:16',	'2018-05-17 10:14:16',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(165,	2,	'Institución',	'institucion',	'',	'2018-05-17 10:14:16',	'2018-05-17 10:44:15',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(165,	3,	'Institución',	'institucion',	'',	'2018-05-17 10:14:16',	'2018-05-17 10:44:49',	'Version 3',	1,	0,	1,	1,	2,	7,	NULL),
(166,	1,	'Misión y Visión',	'mision-y-vision',	'',	'2018-05-17 10:17:29',	'2018-05-17 10:17:29',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(166,	2,	'Misión y Visión',	'mision-y-vision',	'',	'2018-05-17 10:17:29',	'2018-05-17 10:35:51',	'Nueva Versión 2',	0,	0,	1,	1,	2,	8,	NULL),
(166,	3,	'Misión y Visión',	'mision-y-vision',	'',	'2018-05-17 10:17:29',	'2018-05-17 10:41:13',	'Nueva Versión 3',	0,	0,	1,	1,	2,	8,	NULL),
(166,	4,	'Misión y Visión',	'mision-y-vision',	'',	'2018-05-17 10:17:29',	'2018-05-17 10:41:33',	'Version 4',	0,	0,	1,	1,	2,	8,	NULL),
(166,	5,	'Misión y Visión',	'mision-y-vision',	'',	'2018-05-17 10:17:29',	'2018-05-17 10:49:39',	'Version 5',	1,	0,	1,	1,	2,	8,	NULL),
(167,	1,	'',	NULL,	NULL,	'2018-05-17 10:36:28',	'2018-05-17 10:36:28',	'Initial Version',	1,	0,	NULL,	NULL,	0,	8,	NULL),
(168,	1,	'',	NULL,	NULL,	'2018-05-17 10:39:58',	'2018-05-17 10:39:58',	'Initial Version',	1,	0,	NULL,	NULL,	0,	9,	NULL),
(169,	1,	'Marco Legal',	'marco-legal',	'',	'2018-05-17 10:41:49',	'2018-05-17 10:41:49',	'Initial Version',	0,	0,	1,	1,	2,	8,	NULL),
(169,	2,	'Marco Legal',	'marco-legal',	'',	'2018-05-17 10:41:49',	'2018-05-17 10:48:26',	'Version 2',	0,	0,	1,	1,	2,	8,	NULL),
(169,	3,	'Marco Legal',	'marco-legal',	'',	'2018-05-17 10:41:49',	'2018-05-17 10:55:07',	'Version 3',	0,	0,	1,	1,	2,	8,	NULL),
(169,	4,	'Marco Legal',	'marco-legal',	'',	'2018-05-17 10:41:49',	'2018-05-17 10:55:31',	'Version 4',	1,	0,	1,	1,	2,	8,	NULL),
(171,	1,	'Resoluciones',	'resoluciones',	'',	'2018-05-17 10:44:57',	'2018-05-17 10:44:57',	'Initial Version',	0,	0,	1,	1,	2,	8,	NULL),
(171,	2,	'Resoluciones',	'resoluciones',	'',	'2018-05-17 10:44:57',	'2018-05-17 10:47:20',	'Version 2',	0,	0,	1,	1,	2,	8,	NULL),
(171,	3,	'Resoluciones',	'resoluciones',	'',	'2018-05-17 10:44:57',	'2018-05-17 10:47:46',	'Version 3',	1,	0,	1,	1,	2,	8,	NULL),
(172,	1,	'Organigrama',	'organigrama',	'',	'2018-05-17 10:46:12',	'2018-05-17 10:46:12',	'Initial Version',	0,	0,	1,	1,	2,	8,	NULL),
(172,	2,	'Organigrama',	'organigrama',	'',	'2018-05-17 10:46:12',	'2018-05-17 11:00:30',	'Version 2',	1,	0,	1,	1,	2,	8,	NULL),
(177,	1,	'Transparencia',	'transparencia',	'',	'2018-05-17 11:35:06',	'2018-05-17 11:35:06',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(177,	2,	'Transparencia',	'transparencia',	'',	'2018-05-17 11:35:06',	'2018-05-17 11:36:59',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(177,	3,	'Transparencia',	'transparencia',	'',	'2018-05-17 11:35:06',	'2018-05-17 11:51:48',	'Version 3',	1,	0,	1,	1,	2,	7,	NULL),
(178,	1,	'Open Data',	'open_data',	NULL,	'2018-05-17 11:42:16',	'2018-05-17 11:42:16',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(179,	1,	'Listar Catálogos',	'list_catalog',	'',	'2018-05-17 11:42:17',	'2018-05-17 11:42:17',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(180,	1,	'Agregar/Editar Catálogo',	'catalog',	'',	'2018-05-17 11:42:17',	'2018-05-17 11:42:17',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(181,	1,	'Listar Conjuntos de Datos',	'list_datasets',	'',	'2018-05-17 11:42:18',	'2018-05-17 11:42:18',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(182,	1,	'Agregar/Editar Conjunto de Datos',	'datasets',	'',	'2018-05-17 11:42:18',	'2018-05-17 11:42:18',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(183,	1,	'Tipo de Archivos',	'types',	'',	'2018-05-17 11:42:18',	'2018-05-17 11:42:18',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(184,	1,	'Agregar/Editar Recursos',	'resource',	'',	'2018-05-17 11:42:19',	'2018-05-17 11:42:19',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(185,	1,	'Agregar/Editar Archivos',	'files',	'',	'2018-05-17 11:42:20',	'2018-05-17 11:42:20',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(186,	1,	'Listar Recursos',	'list_resource',	'',	'2018-05-17 11:42:20',	'2018-05-17 11:42:20',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(187,	1,	'Agregar Diccionario',	'dictionary',	'',	'2018-05-17 11:42:21',	'2018-05-17 11:42:21',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(188,	1,	'Listar Diccionario',	'list_dictionary',	'',	'2018-05-17 11:42:22',	'2018-05-17 11:42:22',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(191,	1,	'Contacto',	'contacto',	'',	'2018-05-18 09:56:03',	'2018-05-18 09:56:03',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(191,	2,	'Contacto',	'contacto',	'',	'2018-05-18 09:56:03',	'2018-05-18 10:01:17',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(191,	3,	'Contacto',	'contacto',	'',	'2018-05-18 09:56:03',	'2018-05-18 10:06:37',	'Version 3',	0,	0,	1,	1,	2,	7,	NULL),
(191,	4,	'Contacto',	'contacto',	'',	'2018-05-18 09:56:03',	'2018-05-18 10:08:08',	'Version 4',	0,	0,	1,	1,	2,	7,	NULL),
(191,	5,	'Contacto',	'contacto',	'',	'2018-05-18 09:56:03',	'2018-05-18 10:09:09',	'Version 5',	0,	0,	1,	1,	2,	7,	NULL),
(191,	6,	'Contacto',	'contacto',	'',	'2018-05-18 09:56:03',	'2018-05-18 10:09:33',	'Version 6',	0,	0,	1,	1,	2,	7,	NULL),
(191,	7,	'Contacto',	'contacto',	'',	'2018-05-18 09:56:03',	'2018-05-18 10:10:32',	'Version 7',	0,	0,	1,	1,	2,	7,	NULL),
(191,	8,	'Contacto',	'contacto',	'',	'2018-05-18 09:56:03',	'2018-05-18 10:11:02',	'Version 8',	0,	0,	1,	1,	2,	7,	NULL),
(191,	9,	'Contacto',	'contacto',	'',	'2018-05-18 09:56:03',	'2018-05-18 10:11:55',	'Version 9',	1,	0,	1,	1,	2,	7,	NULL),
(192,	1,	'Galería',	'galeria',	'',	'2018-05-18 10:18:37',	'2018-05-18 10:18:37',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(192,	2,	'Galería',	'galeria',	'',	'2018-05-18 10:18:37',	'2018-05-18 12:12:29',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(192,	3,	'Galería',	'galeria',	'',	'2018-05-18 10:18:37',	'2018-05-18 12:21:05',	'Version 3',	1,	0,	1,	1,	2,	7,	NULL),
(193,	1,	'MECIP',	'mecip',	'',	'2018-05-18 10:46:14',	'2018-05-18 10:46:14',	'Initial Version',	1,	0,	1,	1,	2,	7,	NULL),
(194,	1,	'Trámites',	'tramites',	'',	'2018-05-18 10:46:54',	'2018-05-18 10:46:54',	'Initial Version',	1,	0,	1,	1,	2,	7,	NULL),
(195,	1,	'Compras Públicas',	'compras-publicas',	'',	'2018-05-18 10:47:15',	'2018-05-18 10:47:15',	'Initial Version',	1,	0,	1,	1,	2,	7,	NULL),
(196,	1,	'Servicios',	'servicios',	'',	'2018-05-18 10:47:37',	'2018-05-18 10:47:37',	'Initial Version',	1,	0,	1,	1,	2,	7,	NULL),
(204,	1,	'Autoridades',	'autoridades',	'',	'2018-05-18 11:40:22',	'2018-05-18 11:40:22',	'Initial Version',	0,	0,	1,	1,	2,	8,	NULL),
(204,	2,	'Autoridades',	'autoridades',	'',	'2018-05-18 11:40:22',	'2018-05-18 11:44:53',	'Version 2',	0,	0,	1,	1,	2,	8,	NULL),
(204,	3,	'Autoridades',	'autoridades',	'',	'2018-05-18 11:40:22',	'2018-05-18 11:46:37',	'Version 3',	0,	0,	1,	1,	2,	8,	NULL),
(204,	4,	'Autoridades',	'autoridades',	'',	'2018-05-18 11:40:22',	'2018-05-18 11:47:49',	'Version 4',	1,	0,	1,	1,	2,	8,	NULL),
(205,	1,	'Event Calendar',	'event_calendar',	NULL,	'2018-05-18 11:59:54',	'2018-05-18 11:59:54',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(206,	1,	'Calendars list',	'list_calendar',	'',	'2018-05-18 11:59:55',	'2018-05-18 11:59:55',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(207,	1,	'Events list',	'list_event',	'',	'2018-05-18 11:59:55',	'2018-05-18 11:59:55',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(208,	1,	'Add / edit calendar',	'calendar',	'',	'2018-05-18 11:59:56',	'2018-05-18 11:59:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(209,	1,	'Add / edit event',	'event',	'',	'2018-05-18 11:59:56',	'2018-05-18 11:59:56',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(210,	1,	'Type of events',	'types',	'',	'2018-05-18 11:59:57',	'2018-05-18 11:59:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(211,	1,	'Settings',	'settings',	'',	'2018-05-18 11:59:57',	'2018-05-18 11:59:57',	'Initial Version',	1,	0,	1,	NULL,	2,	0,	NULL),
(212,	1,	'Agenda',	'agenda',	'',	'2018-05-18 12:00:15',	'2018-05-18 12:00:15',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(212,	2,	'Agenda',	'agenda',	'',	'2018-05-18 12:00:15',	'2018-05-18 12:00:40',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(212,	3,	'Agenda',	'agenda',	'',	'2018-05-18 12:00:15',	'2018-05-18 12:01:54',	'Version 3',	1,	0,	1,	1,	2,	7,	NULL),
(213,	1,	'Buscador',	'buscador',	'',	'2018-05-18 15:07:46',	'2018-05-18 15:07:46',	'Initial Version',	0,	0,	1,	1,	2,	7,	NULL),
(213,	2,	'Buscador',	'buscador',	'',	'2018-05-18 15:07:46',	'2018-05-18 15:08:24',	'Version 2',	0,	0,	1,	1,	2,	7,	NULL),
(213,	3,	'Buscador',	'buscador',	'',	'2018-05-18 15:07:46',	'2018-05-18 15:11:55',	'Version 3',	0,	0,	1,	1,	2,	7,	NULL),
(213,	4,	'Buscador',	'buscador',	'',	'2018-05-18 15:07:46',	'2018-05-18 15:12:20',	'Version 4',	1,	0,	1,	1,	2,	7,	NULL),
(214,	1,	'',	NULL,	NULL,	'2018-05-21 09:32:29',	'2018-05-21 09:32:29',	'Initial Version',	1,	0,	NULL,	NULL,	0,	9,	NULL),
(218,	1,	'Noticia de prueba 1',	'noticia-de-prueba-1',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2018-05-21 09:52:00',	'2018-05-21 09:52:23',	'Initial Version',	0,	0,	1,	1,	2,	9,	NULL),
(218,	2,	'Noticia de prueba 1',	'noticia-de-prueba-1',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2018-05-21 09:52:00',	'2018-05-21 09:55:45',	'Nueva Versión 2',	0,	0,	1,	1,	2,	9,	NULL),
(218,	3,	'Noticia de prueba 1',	'noticia-de-prueba-1',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2018-05-21 09:52:00',	'2018-05-21 10:13:01',	'Version 3',	0,	0,	1,	1,	2,	9,	NULL),
(218,	4,	'Noticia de prueba 1',	'noticia-de-prueba-1',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2018-05-21 09:52:00',	'2018-05-21 10:13:56',	'Version 4',	1,	0,	1,	1,	2,	9,	NULL),
(219,	1,	'Noticia de prueba 2',	'noticia-de-prueba-2',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2018-05-21 09:56:00',	'2018-05-21 09:56:24',	'Initial Version',	1,	0,	1,	1,	2,	9,	NULL),
(220,	1,	'Noticia de prueba 3',	'noticia-de-prueba-3',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2018-05-21 09:58:00',	'2018-05-21 09:58:40',	'Initial Version',	1,	0,	1,	1,	2,	9,	NULL),
(221,	1,	'Noticia de prueba 4',	'noticia-de-prueba-4',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2018-05-21 10:00:00',	'2018-05-21 10:00:06',	'Initial Version',	1,	0,	1,	1,	2,	9,	NULL),
(222,	1,	'Noticia de prueba 5',	'noticia-de-prueba-5',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2018-05-21 10:02:00',	'2018-05-21 10:02:17',	'Initial Version',	0,	0,	1,	1,	2,	9,	NULL),
(222,	2,	'Noticia de prueba 5',	'noticia-de-prueba-5',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'2018-05-21 10:02:00',	'2018-05-21 10:04:32',	'Version 2',	1,	0,	1,	1,	2,	9,	NULL),
(223,	1,	'noticia 6',	'noticia-6',	'texto sencillo',	'2018-05-21 10:09:00',	'2018-05-21 10:09:23',	'Initial Version',	1,	0,	1,	1,	2,	9,	NULL);

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
('',	'concrete',	'marketplace.token',	'HvuJXhD3SbRRHGBlKLpVLOsqAvT8Tkem36WhXPiU0Px6EBJb3hAEOKwObvVJHnVS'),
('',	'concrete',	'marketplace.url_token',	'8gbhsyr5bbfj5a7z9nkuuuqo'),
('',	'concrete',	'security.token.encryption',	'0839ccd115fd07e7d212cff401b868047988542efc45d3c055f8d1fd408ce67b'),
('',	'concrete',	'security.token.jobs',	'96fb99ef0aa6449ad604b3c16bb027433548656d4c527497df04aa14b6b2ba18'),
('',	'concrete',	'security.token.validation',	'0444321991b282daadf3be728c08f79ba5f20f687bb2154bf68020ff57c2c4d8');

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
('MAIN_HELP_LAST_VIEWED',	'2018-05-16 17:36:31',	'1526492191',	1,	0),
('NEWSFLOW_LAST_VIEWED',	'2018-05-16 16:11:03',	'1526907669',	1,	0);

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
(0,	66,	86),
(0,	67,	87),
(0,	70,	88),
(0,	69,	89),
(0,	71,	90),
(0,	68,	91),
(0,	72,	92),
(0,	73,	93);

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


DROP TABLE IF EXISTS `dsEventCalendar`;
CREATE TABLE `dsEventCalendar` (
  `calendarID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`calendarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dsEventCalendar` (`calendarID`, `title`) VALUES
(1,	'Calendario Principal');

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
(1,	'lang',	'es'),
(2,	'lang_datepicker',	'es'),
(3,	'formatEvent',	'DD MMMM YYYY'),
(4,	'startFrom',	'1'),
(5,	'eventsInDay',	'5'),
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
(1,	'Transparencia',	'Nombre de la Organización',	'http://www.miinstitucion.gov.py',	'soporte@institucion.gov.py',	'2018-05-17 15:43:31');

DROP TABLE IF EXISTS `dsOpenDataDataset`;
CREATE TABLE `dsOpenDataDataset` (
  `datasetsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opendataID` int(10) unsigned DEFAULT NULL,
  `dictionaryID` int(10) unsigned DEFAULT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
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
(1,	1,	NULL,	'a. Estructura orgánica',	'Los artículos 9° y 10 de la Ley 4989/2013 “QUE CREA EL MARCO DE APLICACIÓN DE LAS TECNOLOGÍAS DE LA INFORMACIÓN Y COMUNICACIÓN EN EL SECTOR PÚBLICO Y CREA LA SECRETARÍA NACIONAL DE TECNOLOGÍAS DE LA INFORMACIÓN Y COMUNICACIÓN (SENATICs)” establecen una estructura orgánica básica y las direcciones que esta Secretaría podrá incorporar en su organigrama a fin de dar cumplimiento a sus fines. En concordancia, el Decreto N° 11.624/2013, que reglamenta dicha ley, establece la estructura orgánica y funcional de esta Secretaría Nacional, la cual se ha complementado con las demás áreas creadas y establecidas en el Organigrama institucional que se adjunta.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'Transparencia',	''),
(2,	1,	NULL,	'b. Facultades, deberes, funciones y/o atribuciones de sus órganos y dependencias internas.',	'La Ley N˚4989/2013 que crea la SENATICs dispone, entre otras cosas,  que la dirección de esta Secretaría Nacional será ejercida por un Ministro Secretario Ejecutivo; establece además la estructura orgánica básica, los requisitos para ocupar el cargo de Ministro y de directores y las Direcciones con las que ésta deberá contar mínimamente. Se describen las funciones que corresponderán a cada una de éstas  en los artículos 13, 14 y 15 de la Ley.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(3,	1,	NULL,	'c. Marco normativo que rija su funcionamiento y las normas constitucionales, legales de alcance nacional o local y reglamentario cuya aplicación esté',	'La Constitución Nacional del Paraguay, expresa, en el Artículo 30 “... la Ley asegurará, en igualdad de oportunidades, el libre acceso al aprovechamiento del espectro electromagnético, así como al de los instrumentos electrónicos de acumulación y procesamiento de información pública, sin más límites que los impuestos por las regulaciones internacionales y las normas técnicas. Las autoridades asegurarán que estos elementos no sean utilizados para vulnerar la intimidad personal o familiar y los demás derechos establecidos en esta Constitución”.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(4,	1,	NULL,	'd. Descripción general de cómo funciona y cuál es el proceso de toma de decisiones.',	'Por Resolución SENATICs N° 28/2014 se establece un sistema de gestión y se disponen los  valores y normas que rigen y orientan la conducta de los servidores de esta Secretaría Nacional, así mismo, por Resolución SENTACIs N° 40/2014 aprueba el Código de Buen Gobierno, documento que establece las pautas de acción tendientes a promover la transparencia y fortalecer la eficiencia en el cumplimiento de los objetivos institucionales definen y fiscalización las políticas transversales en el ámbito de las TICs.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(5,	1,	NULL,	'e. Nomina de Funcionarios.',	'Listado actualizado de todas las personas que cumplan una función pública o sean funcionarios públicos, con indicación de sus números de cédula de identidad civil, las funciones que realizan, los salarios u honorarios que perciben en forma mensual, incluyendo todos los adicionales, prestaciones complementarias y/o viáticos.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(6,	1,	NULL,	'f. Descripción de la política institucional y de los planes de acción.',	'La descripción de la política Institucional y de los  planes de acción se encuentran contenidos en el Plan Estratégico Institucional de la SENATICs, el cual fue elaborado de manera participativa  con las Altas Autoridades, Directores Generales y responsables de diversas unidades de la SENATICs. Aprobado por Resolución SENTACIs N° 259/2015.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(7,	1,	NULL,	'g. Descripción de los proyectos institucionales en ejecución, con la definición de metas, el grado de ejecución de las mismas y el presupuesto aplicad',	'De acuerdo al Presupuesto General de Gastos de la Nación la SENATICs se encuentra dentro del Eje 2 -  Crecimiento económico inclusivo, consistente en el mantenimiento de las condiciones de estabilidad macroeconómica, mejoramiento de los arreglos institucionales y regulatorios, promoviendo la libertad de emprendimiento, la competitividad y la utilización racional de los recursos. Dentro del programa “Competitividad e Innovación”, contribuyendo a la seguridad jurídica y desarrollo de un gobierno abierto, transparente y eficiente, con adecuado apoyo a la producción y mejoramiento de la infraestructura de transporte, logística y telecomunicaciones, teniendo como fundamentos la educación superior, la innovación, la investigación y el desarrollo tecnológico  con la estrategia 1.2 “Aumentar el acceso a la información pública y trámites por medio de redes electrónicas”.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(8,	1,	NULL,	'h. Informes de auditoría',	'Informes Finales de Auditoria Interna del ejercicio fiscal 2015',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(9,	1,	NULL,	'i. Informes de los viajes oficiales realizados dentro del territorio de la República o al Extranjero.',	'Los viajes realizados por las Autoridades y funcionarios de la SENATICs, se encuentran descritos en la planilla de Registro de Viajes, indicando el nombre del o los mismos, el cargo o función que desempeña, fecha del viaje, destino, el viático asignado y el motivo del viaje. Así también se visualizan los informes correspondientes a la actividad desarrollada.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(10,	1,	NULL,	'j. Convenios y contratos celebrados, fecha de celebración, objeto, monto total de la contratación, plazos de ejecución, mecanismos de control y rendic',	'Se detallan los contratos 2015 y Convenios firmados con otras instituciones',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(11,	1,	NULL,	'k. Cartas oficiales',	'Cartas oficiales',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(12,	1,	NULL,	'l. Informes de consultoria',	'Contratos de consultoría realizadas por la institución.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(13,	1,	NULL,	'm. Cuadros de resultados',	'Cuadros de Resultados',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(14,	1,	NULL,	'n. Listado de poderes vigentes otorgados a abogados',	'Poderes otorgado a abogados.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(15,	1,	NULL,	'o. Sistema de mantenimiento, clasificación e índice de los documentos existentes.',	'La SENATICs realiza servicios TICS diversos para diferentes entidades del estado paraguayo, los cuales originan registros en forma de pedidos y solicitudes diversas.  Muchos de estos documentos requieren ser conservados en forma ordenada, sistemática, de forma tal que cuando haya necesidad de referirse a ellos por cualquier circunstancia, puedan ser localizados fácil y prontamente.\r\nPara tal efecto se cuenta con un repositorio de documentos virtual en el cual se mantiene el archivo escaneado en forma organizada los registros, documentos de interés para la institución.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(16,	1,	NULL,	'p. Descripción de los procedimientos previstos para que las personas interesadas puedan acceder a los documentos que obren en su poder, incluyendo el',	'Con el fin de optimizar los tiempos de respuesta a las solicitudes, expedientes y trámites ciudadanos, posibilitando su seguimiento vía Internet, la SENATICs ha desarrollado un servicio de Seguimiento de Expedientes Oficiales (Notas y documentos ingresados por mesa de entrada) que permite conocer el  estado de los mismos desde Internet.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	''),
(17,	1,	NULL,	'q. Mecanismos de participación ciudadana',	'La SENATICs ha desarrollado e implementado distintos mecanismos que permiten y facilitan la interacción de la ciudadanía con esta Secretaría Nacional como también con las demás instituciones públicas a traves de distintos portales que permiten acceder a Información Pública, realizar denuncias, consutlar acerca de información de interes, etc. Así mismo, la SENATICs desarrolló aplicaciones destinadas a facilitar al ciudadano el acceso a la \r\ninformación pública de distintas instituciones del Estado y realizar trámites varios, que eliminan los tiempos de espera, la burocracia y brinda más posibilidades de desarrollo y transparencia. También ha organizado el evento “INNOVANDO PARAGUAY” en su compromiso de \r\nimpulso y desarrollo de iniciativas gubernamentales que fomenten la transparencia, la participación ciudadana, la rendición de cuentas y Acceso a la Información Pública; mediante el concurso para el desarrollo de aplicaciones orientadas a Servicios Públicos; a través de una maratón de desarrollo de aplicaciones de uso ciudadano basado en información pública en formato de datos abiertos, las aplicaciones ganadoras ya se encuentran disponibles y pueden ser de gran utilidad para el ciudadano.',	'http://www.miinstitucion.gov.py/transparencia',	'',	'',	5,	'',	'');

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
(1,	1,	10,	'',	172,	1,	1,	0);

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
(1,	1,	'Organigrama',	'Organigrama Oficial');

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
(1,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:48:\"/application/files/6315/2649/3706/senatics_1.png\";s:8:\"\0*\0width\";d:371;s:9:\"\0*\0height\";d:144;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(2,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:55:\"/application/files/2215/2649/3730/gobierno-nacional.png\";s:8:\"\0*\0width\";d:371;s:9:\"\0*\0height\";d:144;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(3,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:57:\"/application/files/6315/2649/3792/marca-pais-paraguay.png\";s:8:\"\0*\0width\";d:371;s:9:\"\0*\0height\";d:144;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(4,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:49:\"/application/files/2915/2656/9225/Organigrama.jpg\";s:8:\"\0*\0width\";d:2072;s:9:\"\0*\0height\";d:1242;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(5,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:48:\"/application/files/6315/2649/3706/senatics_1.png\";s:8:\"\0*\0width\";d:371;s:9:\"\0*\0height\";d:144;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(6,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:70:\"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png\";s:8:\"\0*\0width\";d:300;s:9:\"\0*\0height\";d:64;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}'),
(7,	5,	1,	'O:40:\"Concrete\\Core\\Feature\\Detail\\ImageDetail\":5:{s:6:\"\0*\0src\";s:47:\"/application/files/1815/2690/7906/Cabeceras.png\";s:8:\"\0*\0width\";d:1000;s:9:\"\0*\0height\";d:143;s:7:\"\0*\0item\";N;s:5:\"error\";s:0:\"\";}');

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
(1,	1,	14,	114),
(1,	1,	15,	115),
(2,	1,	14,	116),
(2,	1,	15,	117),
(3,	1,	14,	118),
(3,	1,	15,	119),
(4,	1,	14,	140),
(4,	1,	15,	141),
(5,	1,	14,	148),
(5,	1,	15,	149),
(6,	1,	14,	160),
(6,	1,	15,	161),
(8,	1,	14,	169),
(8,	1,	15,	170),
(9,	1,	14,	179),
(9,	1,	15,	180),
(10,	1,	14,	185),
(10,	1,	15,	186),
(11,	1,	14,	187),
(11,	1,	15,	188),
(12,	1,	14,	189),
(12,	1,	15,	190),
(13,	1,	14,	191),
(13,	1,	15,	192),
(14,	1,	14,	205),
(14,	1,	15,	206),
(15,	1,	14,	216),
(15,	1,	15,	217),
(16,	1,	14,	221),
(16,	1,	15,	222),
(17,	1,	14,	226),
(17,	1,	15,	227),
(18,	1,	14,	230),
(18,	1,	15,	231),
(19,	1,	14,	232),
(19,	1,	15,	233),
(20,	1,	14,	234),
(20,	1,	15,	235),
(21,	1,	14,	236),
(21,	1,	15,	237),
(22,	1,	14,	238),
(22,	1,	15,	239),
(22,	2,	14,	240),
(22,	2,	15,	241),
(21,	2,	14,	242),
(21,	2,	15,	243),
(23,	1,	14,	245),
(23,	1,	15,	246),
(24,	1,	14,	247),
(24,	1,	15,	248),
(25,	1,	14,	249),
(25,	1,	15,	250),
(26,	1,	14,	251),
(26,	1,	15,	252),
(27,	1,	14,	253),
(27,	1,	15,	254),
(28,	1,	14,	255),
(28,	1,	15,	256),
(29,	1,	14,	257),
(29,	1,	15,	258),
(30,	1,	14,	259),
(30,	1,	15,	260),
(31,	1,	14,	261),
(31,	1,	15,	262),
(32,	1,	14,	263),
(32,	1,	15,	264),
(33,	1,	14,	265),
(33,	1,	15,	266),
(34,	1,	14,	267),
(34,	1,	15,	268),
(35,	1,	14,	269),
(35,	1,	15,	270),
(36,	1,	14,	271),
(36,	1,	15,	272),
(37,	1,	14,	273),
(37,	1,	15,	274),
(38,	1,	14,	275),
(38,	1,	15,	276),
(39,	1,	14,	277),
(39,	1,	15,	278),
(40,	1,	14,	286),
(40,	1,	15,	287);

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
(1,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/6315/2649/3706/senatics_1.jpg'),
(1,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/6315/2649/3706/senatics_1.jpg'),
(2,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/2215/2649/3730/gobierno-nacional.jpg'),
(2,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/2215/2649/3730/gobierno-nacional.jpg'),
(3,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/6315/2649/3792/marca-pais-paraguay.jpg'),
(3,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/6315/2649/3792/marca-pais-paraguay.jpg'),
(4,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/2915/2656/9225/Organigrama.jpg'),
(4,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/2915/2656/9225/Organigrama.jpg'),
(5,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/5515/2657/0192/3.jpg'),
(5,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/5515/2657/0192/3.jpg'),
(6,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/1515/2657/1214/Slide2.jpg'),
(6,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/1515/2657/1214/Slide2.jpg'),
(8,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/8615/2657/3025/Slide1.jpg'),
(8,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/8615/2657/3025/Slide1.jpg'),
(9,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/4415/2665/3509/newspaper.jpg'),
(9,	1,	'file_manager_listing_2x',	1,	'/4415/2665/3509/newspaper.png'),
(10,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/5815/2665/5345/acceso_informacion_publica_btn-GRAL.jpg'),
(10,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/5815/2665/5345/acceso_informacion_publica_btn-GRAL.jpg'),
(11,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/3115/2665/5366/informacion_publica_btn-GRAL.jpg'),
(11,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/3115/2665/5366/informacion_publica_btn-GRAL.jpg'),
(12,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/6715/2665/5388/denuncias_btn.jpg'),
(12,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/6715/2665/5388/denuncias_btn.jpg'),
(13,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/3215/2665/5409/portal_parauay_btn2.jpg'),
(13,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/3215/2665/5409/portal_parauay_btn2.jpg'),
(14,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/2215/2665/7287/14_-_2.jpg'),
(14,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/2215/2665/7287/14_-_2.jpg'),
(15,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/4515/2665/7440/14_-_23.jpg'),
(15,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/4515/2665/7440/14_-_23.jpg'),
(16,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/1115/2665/7632/14_-_71.jpg'),
(16,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/1115/2665/7632/14_-_71.jpg'),
(17,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/6315/2665/7727/14_-_85.jpg'),
(17,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/6315/2665/7727/14_-_85.jpg'),
(18,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/2115/2665/8289/boss.jpg'),
(18,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/2115/2665/8289/boss.jpg'),
(19,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/2115/2665/8378/woman.jpg'),
(19,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/2115/2665/8378/woman.jpg'),
(20,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.jpg'),
(20,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.jpg'),
(31,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/1715/2665/9893/14_-_8.jpg'),
(31,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/1715/2665/9893/14_-_8.jpg'),
(32,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/1915/2665/9896/14_-_71.jpg'),
(32,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/1915/2665/9896/14_-_71.jpg'),
(33,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/7015/2665/9897/14_-_101.jpg'),
(33,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/7015/2665/9897/14_-_101.jpg'),
(34,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/4115/2665/9899/14_-_91.jpg'),
(34,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/4115/2665/9899/14_-_91.jpg'),
(35,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/5615/2665/9902/14_-_11.jpg'),
(35,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/5615/2665/9902/14_-_11.jpg'),
(36,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/6215/2665/9905/14_-_10.jpg'),
(36,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/6215/2665/9905/14_-_10.jpg'),
(37,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/8115/2665/9907/14_-_92.jpg'),
(37,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/8115/2665/9907/14_-_92.jpg'),
(38,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/8115/2665/9910/14_-_102.jpg'),
(38,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/8115/2665/9910/14_-_102.jpg'),
(39,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/6415/2666/5285/ENCABEZADO_1-sin_logos.jpg'),
(39,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/6415/2666/5285/ENCABEZADO_1-sin_logos.jpg'),
(40,	1,	'file_manager_listing',	1,	'/thumbnails/file_manager_listing/1815/2690/7906/Cabeceras.jpg'),
(40,	1,	'file_manager_listing_2x',	1,	'/thumbnails/file_manager_listing_2x/1815/2690/7906/Cabeceras.jpg');

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
(1,	'2018-05-16 14:01:46',	1,	1,	0,	0,	NULL),
(2,	'2018-05-16 14:02:10',	1,	1,	0,	0,	NULL),
(3,	'2018-05-16 14:03:12',	1,	1,	0,	0,	NULL),
(4,	'2018-05-17 11:00:25',	1,	1,	0,	0,	NULL),
(5,	'2018-05-17 11:16:32',	1,	1,	0,	0,	NULL),
(6,	'2018-05-17 11:33:34',	1,	1,	0,	0,	NULL),
(7,	'2018-05-17 11:56:21',	1,	1,	0,	0,	NULL),
(8,	'2018-05-17 12:03:45',	1,	1,	0,	0,	NULL),
(9,	'2018-05-18 10:25:09',	1,	1,	0,	0,	NULL),
(10,	'2018-05-18 10:55:45',	1,	1,	0,	0,	NULL),
(11,	'2018-05-18 10:56:06',	1,	1,	0,	0,	NULL),
(12,	'2018-05-18 10:56:28',	1,	1,	0,	0,	NULL),
(13,	'2018-05-18 10:56:49',	1,	1,	0,	0,	NULL),
(14,	'2018-05-18 11:28:07',	1,	1,	0,	0,	NULL),
(15,	'2018-05-18 11:30:40',	1,	1,	0,	0,	NULL),
(16,	'2018-05-18 11:33:52',	1,	1,	0,	0,	NULL),
(17,	'2018-05-18 11:35:27',	1,	1,	0,	0,	NULL),
(18,	'2018-05-18 11:44:49',	1,	1,	0,	0,	NULL),
(19,	'2018-05-18 11:46:18',	1,	1,	0,	0,	NULL),
(20,	'2018-05-18 11:49:10',	1,	1,	0,	0,	NULL),
(21,	'2018-05-18 11:54:58',	1,	1,	0,	0,	NULL),
(22,	'2018-05-18 11:55:08',	1,	1,	0,	0,	NULL),
(23,	'2018-05-18 12:11:13',	1,	1,	0,	0,	NULL),
(24,	'2018-05-18 12:11:15',	1,	1,	0,	0,	NULL),
(25,	'2018-05-18 12:11:18',	1,	1,	0,	0,	NULL),
(26,	'2018-05-18 12:11:20',	1,	1,	0,	0,	NULL),
(27,	'2018-05-18 12:11:22',	1,	1,	0,	0,	NULL),
(28,	'2018-05-18 12:11:25',	1,	1,	0,	0,	NULL),
(29,	'2018-05-18 12:11:28',	1,	1,	0,	0,	NULL),
(30,	'2018-05-18 12:11:30',	1,	1,	0,	0,	NULL),
(31,	'2018-05-18 12:11:33',	1,	1,	0,	0,	NULL),
(32,	'2018-05-18 12:11:36',	1,	1,	0,	0,	NULL),
(33,	'2018-05-18 12:11:37',	1,	1,	0,	0,	NULL),
(34,	'2018-05-18 12:11:39',	1,	1,	0,	0,	NULL),
(35,	'2018-05-18 12:11:42',	1,	1,	0,	0,	NULL),
(36,	'2018-05-18 12:11:45',	1,	1,	0,	0,	NULL),
(37,	'2018-05-18 12:11:47',	1,	1,	0,	0,	NULL),
(38,	'2018-05-18 12:11:50',	1,	1,	0,	0,	NULL),
(39,	'2018-05-18 13:41:25',	1,	1,	0,	0,	NULL),
(40,	'2018-05-21 09:05:06',	1,	1,	0,	0,	NULL);

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `FileSearchIndexAttributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1,	371.0000,	144.0000,	0.0000),
(2,	371.0000,	144.0000,	0.0000),
(3,	371.0000,	144.0000,	0.0000),
(4,	2072.0000,	1242.0000,	0.0000),
(5,	1000.0000,	672.0000,	0.0000),
(6,	1000.0000,	350.0000,	0.0000),
(7,	0.0000,	0.0000,	0.0000),
(8,	1000.0000,	350.0000,	0.0000),
(9,	64.0000,	64.0000,	0.0000),
(10,	300.0000,	150.0000,	0.0000),
(11,	300.0000,	150.0000,	0.0000),
(12,	300.0000,	150.0000,	0.0000),
(13,	300.0000,	150.0000,	0.0000),
(14,	2048.0000,	1535.0000,	0.0000),
(15,	1920.0000,	1200.0000,	0.0000),
(16,	1366.0000,	768.0000,	0.0000),
(17,	1920.0000,	1080.0000,	0.0000),
(18,	128.0000,	128.0000,	0.0000),
(19,	128.0000,	128.0000,	0.0000),
(20,	300.0000,	64.0000,	0.0000),
(21,	1000.0000,	500.0000,	0.0000),
(22,	1000.0000,	500.0000,	0.0000),
(23,	2664.0000,	2664.0000,	0.0000),
(24,	2880.0000,	2880.0000,	0.0000),
(25,	2664.0000,	2664.0000,	0.0000),
(26,	2664.0000,	2664.0000,	0.0000),
(27,	2664.0000,	2664.0000,	0.0000),
(28,	2664.0000,	2664.0000,	0.0000),
(29,	2664.0000,	2664.0000,	0.0000),
(30,	2664.0000,	2664.0000,	0.0000),
(31,	2880.0000,	2880.0000,	0.0000),
(32,	1366.0000,	768.0000,	0.0000),
(33,	2664.0000,	2664.0000,	0.0000),
(34,	2664.0000,	2664.0000,	0.0000),
(35,	2664.0000,	2664.0000,	0.0000),
(36,	2664.0000,	2664.0000,	0.0000),
(37,	2664.0000,	2664.0000,	0.0000),
(38,	2664.0000,	2664.0000,	0.0000),
(39,	1000.0000,	260.0000,	0.0000),
(40,	1000.0000,	143.0000,	0.0000);

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
(1,	5,	1,	'2018-05-17 15:17:01',	0);

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
(0,	40,	34),
(0,	41,	35),
(0,	42,	36),
(0,	43,	37),
(0,	44,	38),
(0,	46,	39),
(0,	45,	40),
(0,	47,	41);

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
(1,	'Noticias',	1,	1,	0);

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
(7,	4,	1,	5,	14),
(8,	4,	1,	5,	15),
(9,	5,	1,	5,	14),
(10,	5,	1,	5,	15),
(11,	6,	1,	5,	14),
(12,	6,	1,	5,	15),
(13,	8,	1,	5,	14),
(14,	8,	1,	5,	15),
(15,	9,	1,	5,	14),
(16,	9,	1,	5,	15),
(17,	10,	1,	5,	14),
(18,	10,	1,	5,	15),
(19,	11,	1,	5,	14),
(20,	11,	1,	5,	15),
(21,	12,	1,	5,	14),
(22,	12,	1,	5,	15),
(23,	13,	1,	5,	14),
(24,	13,	1,	5,	15),
(25,	14,	1,	5,	14),
(26,	14,	1,	5,	15),
(27,	15,	1,	5,	14),
(28,	15,	1,	5,	15),
(29,	16,	1,	5,	14),
(30,	16,	1,	5,	15),
(31,	17,	1,	5,	14),
(32,	17,	1,	5,	15),
(33,	18,	1,	5,	14),
(34,	18,	1,	5,	15),
(35,	19,	1,	5,	14),
(36,	19,	1,	5,	15),
(37,	20,	1,	5,	14),
(38,	20,	1,	5,	15),
(39,	21,	1,	5,	14),
(40,	21,	1,	5,	15),
(41,	22,	1,	5,	14),
(42,	22,	1,	5,	15),
(43,	22,	2,	1,	0),
(44,	22,	2,	5,	14),
(45,	22,	2,	5,	15),
(46,	21,	2,	1,	0),
(47,	21,	2,	5,	14),
(48,	21,	2,	5,	15),
(49,	23,	1,	5,	14),
(50,	23,	1,	5,	15),
(51,	24,	1,	5,	14),
(52,	24,	1,	5,	15),
(53,	25,	1,	5,	14),
(54,	25,	1,	5,	15),
(55,	26,	1,	5,	14),
(56,	26,	1,	5,	15),
(57,	27,	1,	5,	14),
(58,	27,	1,	5,	15),
(59,	28,	1,	5,	14),
(60,	28,	1,	5,	15),
(61,	29,	1,	5,	14),
(62,	29,	1,	5,	15),
(63,	30,	1,	5,	14),
(64,	30,	1,	5,	15),
(65,	31,	1,	5,	14),
(66,	31,	1,	5,	15),
(67,	32,	1,	5,	14),
(68,	32,	1,	5,	15),
(69,	33,	1,	5,	14),
(70,	33,	1,	5,	15),
(71,	34,	1,	5,	14),
(72,	34,	1,	5,	15),
(73,	35,	1,	5,	14),
(74,	35,	1,	5,	15),
(75,	36,	1,	5,	14),
(76,	36,	1,	5,	15),
(77,	37,	1,	5,	14),
(78,	37,	1,	5,	15),
(79,	38,	1,	5,	14),
(80,	38,	1,	5,	15),
(81,	39,	1,	5,	14),
(82,	39,	1,	5,	15),
(83,	40,	1,	5,	14),
(84,	40,	1,	5,	15);

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
(1,	1,	'senatics_1.png',	'631526493706',	0,	15857,	'senatics (1).png',	'',	'',	1,	'2018-05-16 14:01:46',	1,	1,	'2018-05-16 14:01:46',	1,	0,	'png',	1),
(2,	1,	'gobierno-nacional.png',	'221526493730',	0,	15735,	'gobierno-nacional.png',	'',	'',	1,	'2018-05-16 14:02:10',	1,	1,	'2018-05-16 14:02:10',	1,	0,	'png',	1),
(3,	1,	'marca-pais-paraguay.png',	'631526493792',	0,	19011,	'marca-pais-paraguay.png',	'',	'',	1,	'2018-05-16 14:03:13',	1,	1,	'2018-05-16 14:03:13',	1,	0,	'png',	1),
(4,	1,	'Organigrama.jpg',	'291526569225',	0,	386183,	'Organigrama.jpg',	'',	'',	1,	'2018-05-17 11:00:25',	1,	1,	'2018-05-17 11:00:25',	1,	1,	'jpg',	1),
(5,	1,	'3.jpg',	'551526570192',	0,	450200,	'3.jpg',	'',	'',	1,	'2018-05-17 11:16:32',	1,	1,	'2018-05-17 11:16:32',	1,	1,	'jpg',	1),
(6,	1,	'Slide2.png',	'151526571214',	0,	437621,	'Slide2.png',	'',	'',	1,	'2018-05-17 11:33:34',	1,	1,	'2018-05-17 11:33:34',	1,	1,	'png',	1),
(7,	1,	'pdfDePrueba.pdf',	'801526572581',	0,	22625,	'pdfDePrueba.pdf',	'',	'',	1,	'2018-05-17 11:56:21',	1,	1,	'2018-05-17 11:56:21',	0,	0,	'pdf',	5),
(8,	1,	'Slide1.png',	'861526573025',	0,	516284,	'Slide1.png',	'',	'',	1,	'2018-05-17 12:03:45',	1,	1,	'2018-05-17 12:03:45',	1,	1,	'png',	1),
(9,	1,	'newspaper.png',	'441526653509',	0,	1479,	'newspaper.png',	'',	'',	1,	'2018-05-18 10:25:09',	1,	1,	'2018-05-18 10:25:09',	1,	0,	'png',	1),
(10,	1,	'acceso_informacion_publica_btn-GRAL.png',	'581526655345',	0,	25458,	'acceso_informacion_publica_btn-GRAL.png',	'',	'',	1,	'2018-05-18 10:55:45',	1,	1,	'2018-05-18 10:55:45',	1,	0,	'png',	1),
(11,	1,	'informacion_publica_btn-GRAL.png',	'311526655366',	0,	30758,	'informacion_publica_btn-GRAL.png',	'',	'',	1,	'2018-05-18 10:56:06',	1,	1,	'2018-05-18 10:56:06',	1,	0,	'png',	1),
(12,	1,	'denuncias_btn.png',	'671526655388',	0,	23136,	'denuncias_btn.png',	'',	'',	1,	'2018-05-18 10:56:28',	1,	1,	'2018-05-18 10:56:28',	1,	0,	'png',	1),
(13,	1,	'portal_parauay_btn2.png',	'321526655409',	0,	45969,	'portal_parauay_btn2.png',	'',	'',	1,	'2018-05-18 10:56:50',	1,	1,	'2018-05-18 10:56:50',	1,	0,	'png',	1),
(14,	1,	'14_-_2.jpg',	'221526657287',	0,	1587862,	'14 - 2.jpg',	'',	'',	1,	'2018-05-18 11:28:07',	1,	1,	'2018-05-18 11:28:07',	1,	1,	'jpg',	1),
(15,	1,	'14_-_23.png',	'451526657440',	0,	137830,	'14 - 2(3).png',	'',	'',	1,	'2018-05-18 11:30:40',	1,	1,	'2018-05-18 11:30:40',	1,	1,	'png',	1),
(16,	1,	'14_-_71.png',	'111526657632',	0,	123568,	'14 - 7(1).png',	'',	'',	1,	'2018-05-18 11:33:52',	1,	1,	'2018-05-18 11:33:52',	1,	1,	'png',	1),
(17,	1,	'14_-_85.png',	'631526657727',	0,	92752,	'14 - 85.png',	'',	'',	1,	'2018-05-18 11:35:27',	1,	1,	'2018-05-18 11:35:27',	1,	1,	'png',	1),
(18,	1,	'boss.png',	'211526658289',	0,	4280,	'boss.png',	'',	'',	1,	'2018-05-18 11:44:49',	1,	1,	'2018-05-18 11:44:49',	1,	0,	'png',	1),
(19,	1,	'woman.png',	'211526658378',	0,	4626,	'woman.png',	'',	'',	1,	'2018-05-18 11:46:18',	1,	1,	'2018-05-18 11:46:18',	1,	0,	'png',	1),
(20,	1,	'Logo-de-la-SENATICS-en-alfacolor.png',	'581526658550',	0,	11340,	'Logo-de-la-SENATICS-en-alfacolor.png',	'',	'',	1,	'2018-05-18 11:49:11',	1,	1,	'2018-05-18 11:49:11',	1,	0,	'png',	1),
(21,	1,	'1809cf7ba79ffb82aab8a2a2a834c1c5.png',	'141526658898',	0,	595419,	'1809cf7ba79ffb82aab8a2a2a834c1c5.png',	'',	'',	0,	'2018-05-18 11:54:58',	1,	1,	'2018-05-18 11:54:58',	1,	1,	'png',	1),
(21,	2,	'1809cf7ba79ffb82aab8a2a2a834c1c5.png',	'831526659062',	0,	569233,	'1809cf7ba79ffb82aab8a2a2a834c1c5.png',	'',	'',	1,	'2018-05-18 11:57:42',	1,	1,	'2018-05-18 11:54:58',	1,	1,	'png',	1),
(22,	1,	'f9607bc798b79d66672dfc3f4d5f7f94.png',	'121526658908',	0,	507300,	'f9607bc798b79d66672dfc3f4d5f7f94.png',	'',	'',	0,	'2018-05-18 11:55:08',	1,	1,	'2018-05-18 11:55:08',	1,	1,	'png',	1),
(22,	2,	'f9607bc798b79d66672dfc3f4d5f7f94.png',	'681526659025',	0,	522590,	'f9607bc798b79d66672dfc3f4d5f7f94.png',	'',	'',	1,	'2018-05-18 11:57:05',	1,	1,	'2018-05-18 11:55:08',	1,	1,	'png',	1),
(23,	1,	'14_-_61.png',	'831526659873',	0,	86964,	'14 - 6(1).png',	'',	'',	1,	'2018-05-18 12:11:13',	1,	1,	'2018-05-18 12:11:13',	1,	1,	'png',	1),
(24,	1,	'14_-_7.png',	'641526659875',	0,	480197,	'14 - 7.png',	'',	'',	1,	'2018-05-18 12:11:15',	1,	1,	'2018-05-18 12:11:15',	1,	1,	'png',	1),
(25,	1,	'14_-_72.png',	'561526659878',	0,	402957,	'14 - 7(2).png',	'',	'',	1,	'2018-05-18 12:11:18',	1,	1,	'2018-05-18 12:11:18',	1,	1,	'png',	1),
(26,	1,	'14_-_62.png',	'731526659880',	0,	381759,	'14 - 6(2).png',	'',	'',	1,	'2018-05-18 12:11:20',	1,	1,	'2018-05-18 12:11:20',	1,	1,	'png',	1),
(27,	1,	'14_-_73.png',	'451526659882',	0,	691487,	'14 - 7(3).png',	'',	'',	1,	'2018-05-18 12:11:23',	1,	1,	'2018-05-18 12:11:23',	1,	1,	'png',	1),
(28,	1,	'14_-_82.png',	'531526659885',	0,	216446,	'14 - 8(2).png',	'',	'',	1,	'2018-05-18 12:11:25',	1,	1,	'2018-05-18 12:11:25',	1,	1,	'png',	1),
(29,	1,	'14_-_9.png',	'971526659888',	0,	443770,	'14 - 9.png',	'',	'',	1,	'2018-05-18 12:11:28',	1,	1,	'2018-05-18 12:11:28',	1,	1,	'png',	1),
(30,	1,	'14_-_81.png',	'961526659890',	0,	213354,	'14 - 8(1).png',	'',	'',	1,	'2018-05-18 12:11:30',	1,	1,	'2018-05-18 12:11:30',	1,	1,	'png',	1),
(31,	1,	'14_-_8.png',	'171526659893',	0,	463382,	'14 - 8.png',	'',	'',	1,	'2018-05-18 12:11:33',	1,	1,	'2018-05-18 12:11:33',	1,	1,	'png',	1),
(32,	1,	'14_-_71.png',	'191526659896',	0,	123568,	'14 - 7(1).png',	'',	'',	1,	'2018-05-18 12:11:36',	1,	1,	'2018-05-18 12:11:36',	1,	1,	'png',	1),
(33,	1,	'14_-_101.png',	'701526659897',	0,	189084,	'14 - 10(1).png',	'',	'',	1,	'2018-05-18 12:11:37',	1,	1,	'2018-05-18 12:11:37',	1,	1,	'png',	1),
(34,	1,	'14_-_91.png',	'411526659899',	0,	232476,	'14 - 9(1).png',	'',	'',	1,	'2018-05-18 12:11:39',	1,	1,	'2018-05-18 12:11:39',	1,	1,	'png',	1),
(35,	1,	'14_-_11.png',	'561526659902',	0,	416258,	'14 - 11.png',	'',	'',	1,	'2018-05-18 12:11:42',	1,	1,	'2018-05-18 12:11:42',	1,	1,	'png',	1),
(36,	1,	'14_-_10.png',	'621526659905',	0,	446116,	'14 - 10.png',	'',	'',	1,	'2018-05-18 12:11:45',	1,	1,	'2018-05-18 12:11:45',	1,	1,	'png',	1),
(37,	1,	'14_-_92.png',	'811526659907',	0,	263334,	'14 - 9(2).png',	'',	'',	1,	'2018-05-18 12:11:47',	1,	1,	'2018-05-18 12:11:47',	1,	1,	'png',	1),
(38,	1,	'14_-_102.png',	'811526659910',	0,	329240,	'14 - 10(2).png',	'',	'',	1,	'2018-05-18 12:11:50',	1,	1,	'2018-05-18 12:11:50',	1,	1,	'png',	1),
(39,	1,	'ENCABEZADO_1-sin_logos.jpg',	'641526665285',	0,	45263,	'ENCABEZADO_1-sin_logos.jpg',	'',	'',	1,	'2018-05-18 13:41:25',	1,	1,	'2018-05-18 13:41:25',	1,	1,	'jpg',	1),
(40,	1,	'Cabeceras.png',	'181526907906',	0,	42439,	'Cabeceras.png',	'',	'',	1,	'2018-05-21 09:05:06',	1,	1,	'2018-05-21 09:05:06',	1,	1,	'png',	1);

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
(3,	'Administrators',	'',	0,	NULL,	NULL,	0,	NULL,	0,	0,	NULL,	0,	0,	0,	0,	0,	'/Administrators',	0);

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
(1,	'Index Search Engine - Updates',	'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.',	'2018-05-16 12:09:36',	NULL,	0,	NULL,	0,	'ENABLED',	'index_search',	1,	0,	'days',	0),
(2,	'Index Search Engine - All',	'Empties the page search index and reindexes all pages.',	'2018-05-16 12:09:36',	NULL,	0,	NULL,	0,	'ENABLED',	'index_search_all',	1,	0,	'days',	0),
(3,	'Check Automated Groups',	'Automatically add users to groups and assign badges.',	'2018-05-16 12:09:36',	NULL,	0,	NULL,	0,	'ENABLED',	'check_automated_groups',	0,	0,	'days',	0),
(4,	'Generate the sitemap.xml file',	'Generate the sitemap.xml file that search engines use to crawl your site.',	'2018-05-16 12:09:37',	NULL,	0,	NULL,	0,	'ENABLED',	'generate_sitemap',	0,	0,	'days',	0),
(5,	'Process Email Posts',	'Polls an email account and grabs private messages/postings that are sent there..',	'2018-05-16 12:09:37',	NULL,	0,	NULL,	0,	'ENABLED',	'process_email',	0,	0,	'days',	0),
(6,	'Remove Old Page Versions',	'Removes all except the 10 most recent page versions for each page.',	'2018-05-16 12:09:37',	NULL,	0,	NULL,	0,	'ENABLED',	'remove_old_page_versions',	0,	0,	'days',	0),
(7,	'Update Gatherings',	'Loads new items into gatherings.',	'2018-05-16 12:09:37',	NULL,	0,	NULL,	0,	'ENABLED',	'update_gatherings',	0,	0,	'days',	0);

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
(1,	'exceptions',	1526492589,	'Exception Occurred: /home/aortiz/github/template-concrete5/concrete/vendor/oyejorge/less.php/lib/Less/Tree/Variable.php:48 variable @bgcolor-site-color is undefined (0)\n',	1,	600),
(2,	'exceptions',	1526492716,	'Exception Occurred: /home/aortiz/github/template-concrete5/concrete/vendor/oyejorge/less.php/lib/Less/Tree/Variable.php:48 variable @bgcolor-site-color is undefined (0)\n',	1,	600),
(3,	'application',	1526496225,	'Página \"Noticias\" en ruta \"/noticias\" movido a la papelera',	1,	100),
(4,	'application',	1526500026,	'Página \"\" en ruta \"/!drafts/155\" movido a la papelera',	1,	100),
(5,	'application',	1526500031,	'Página \"\" en ruta \"/!drafts/156\" movido a la papelera',	1,	100),
(6,	'application',	1526566438,	'Página \"Resoluciones\" en ruta \"/institucion/resoluciones\" movido a la papelera',	1,	100),
(7,	'application',	1526566442,	'Página \"Marco Legal\" en ruta \"/institucion/marco-legal\" movido a la papelera',	1,	100),
(8,	'application',	1526566446,	'Página \"Misión, Visión y Ejes Estrategicos\" en ruta \"/institucion/mision-vision-y-ejes-estrategicos\" movido a la papelera',	1,	100),
(9,	'application',	1526566452,	'Página \"Institución\" en ruta \"/institucion\" movido a la papelera',	1,	100),
(10,	'application',	1526568224,	'Página \"Resoluciones\" en ruta \"/institucion/resoluciones\" movido a la papelera',	1,	100),
(11,	'application',	1526570072,	'Página \"\" en ruta \"/!drafts/173\" eliminado',	1,	100),
(12,	'application',	1526570843,	'Página \"Noticia de Prueba 1\" en ruta \"/noticias/noticia-de-prueba-1\" movido a la papelera',	1,	100),
(13,	'application',	1526645352,	'Página \"Noticia de Prueba 2\" en ruta \"/noticias/noticia-de-prueba-2\" movido a la papelera',	1,	100),
(14,	'application',	1526645358,	'Página \"Noticia de Prueba 1\" en ruta \"/noticias/noticia-de-prueba-1\" movido a la papelera',	1,	100),
(15,	'application',	1526656512,	'Página \"Noticia de prueba 1\" en ruta \"/noticias/noticia-de-prueba-1\" movido a la papelera',	1,	100),
(16,	'application',	1526656526,	'Página \"Noticia de prueba 2\" en ruta \"/noticias/noticia-de-prueba-2\" movido a la papelera',	1,	100),
(17,	'application',	1526656943,	'Página \"Noticia de prueba 1\" en ruta \"/noticias/noticia-de-prueba-1\" movido a la papelera',	1,	100),
(18,	'application',	1526658017,	'Página \"Autoridades\" en ruta \"/institucion/autoridades\" movido a la papelera',	1,	100),
(19,	'application',	1526908769,	'Session Invalidated. Session user agent \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\" did not match provided agent \"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Mobile Safari/537.36\"',	1,	100),
(20,	'application',	1526910543,	'Página \"Noticia 1\" en ruta \"/!drafts/217\" eliminado',	1,	100),
(21,	'application',	1526910558,	'Página \"Noticia de prueba 1\" en ruta \"/noticias/noticia-de-prueba-1\" movido a la papelera',	1,	100),
(22,	'application',	1526910562,	'Página \"Noticia de prueba 2\" en ruta \"/noticias/noticia-de-prueba-2\" movido a la papelera',	1,	100),
(23,	'application',	1526910566,	'Página \"Noticia de prueba 3\" en ruta \"/noticias/noticia-de-prueba-3\" movido a la papelera',	1,	100),
(24,	'application',	1526910570,	'Página \"Noticia de prueba 4\" en ruta \"/noticias/noticia-de-prueba-4\" movido a la papelera',	1,	100),
(25,	'application',	1526910588,	'Página \"Noticia de prueba 5\" en ruta \"/noticias/noticia-de-prueba-5\" movido a la papelera',	1,	100),
(26,	'application',	1526910598,	'Página \"\" en ruta \"/!drafts/215\" movido a la papelera',	1,	100),
(27,	'application',	1526910602,	'Página \"\" en ruta \"/!drafts/216\" movido a la papelera',	1,	100),
(28,	'application',	1526910607,	'Página \"Noticia de prueba 1\" en ruta \"/!trash/noticia-de-prueba-1-4\" eliminado',	1,	100),
(29,	'application',	1526910608,	'Página \"Autoridades\" en ruta \"/!trash/autoridades\" eliminado',	1,	100),
(30,	'application',	1526910608,	'Página \"Noticia de prueba 1\" en ruta \"/!trash/noticia-de-prueba-1-3\" eliminado',	1,	100),
(31,	'application',	1526910609,	'Página \"Noticia de prueba 2\" en ruta \"/!trash/noticia-de-prueba-2-1\" eliminado',	1,	100),
(32,	'application',	1526910611,	'Página \"Noticia de prueba 2\" en ruta \"/!trash/noticia-de-prueba-2-2\" eliminado',	1,	100),
(33,	'application',	1526910614,	'Página \"Noticia de prueba 3\" en ruta \"/!trash/noticia-de-prueba-3\" eliminado',	1,	100),
(34,	'application',	1526910615,	'Página \"\" en ruta \"/!trash/216\" eliminado',	1,	100),
(35,	'application',	1526910616,	'Página \"\" en ruta \"/!trash/215\" eliminado',	1,	100),
(36,	'application',	1526910616,	'Página \"Noticia de prueba 5\" en ruta \"/!trash/noticia-de-prueba-5\" eliminado',	1,	100),
(37,	'application',	1526910622,	'Página \"Noticia de prueba 4\" en ruta \"/!trash/noticia-de-prueba-4\" eliminado',	1,	100),
(38,	'application',	1526910624,	'Página \"Noticia de prueba 1\" en ruta \"/!trash/noticia-de-prueba-1-2\" eliminado',	1,	100),
(39,	'application',	1526910625,	'Página \"Noticia de Prueba 1\" en ruta \"/!trash/noticia-de-prueba-1-1\" eliminado',	1,	100),
(40,	'application',	1526910627,	'Página \"Marco Legal\" en ruta \"/!trash/marco-legal\" eliminado',	1,	100),
(41,	'application',	1526910627,	'Página \"Resoluciones\" en ruta \"/!trash/resoluciones\" eliminado',	1,	100),
(42,	'application',	1526910627,	'Página \"\" en ruta \"/!trash/156\" eliminado',	1,	100),
(43,	'application',	1526910628,	'Página \"\" en ruta \"/!trash/155\" eliminado',	1,	100),
(44,	'application',	1526910628,	'Página \"Misión, Visión y Ejes Estrategicos\" en ruta \"/!trash/mision-vision-y-ejes-estrategicos\" eliminado',	1,	100),
(45,	'application',	1526910629,	'Página \"Institución\" en ruta \"/!trash/institucion\" eliminado',	1,	100),
(46,	'application',	1526910629,	'Página \"Noticia de Prueba 2\" en ruta \"/!trash/noticia-de-prueba-2\" eliminado',	1,	100),
(47,	'application',	1526910631,	'Página \"Noticia de Prueba 1\" en ruta \"/!trash/noticia-de-prueba-1\" eliminado',	1,	100),
(48,	'application',	1526910633,	'Página \"Resoluciones\" en ruta \"/!trash/resoluciones-1\" eliminado',	1,	100),
(49,	'application',	1526910634,	'Página \"Noticias\" en ruta \"/!trash/noticias\" eliminado',	1,	100),
(50,	'application',	1526911857,	'Página \"noticia 6\" en ruta \"/noticias/noticia-6\" movido a la papelera',	1,	100);

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
(1,	'SVG Social Media Icons',	'svg_social_media_icons',	'Add SVG social media icons with PNG fallback on your pages.',	'2018-05-16 14:13:59',	1,	'0.9.9',	'0.9.9'),
(2,	'Datos Abiertos',	'dsOpenData',	'Paquete desarrollado por la SENATICs para la implementación de Datos Abiertos en el portal.',	'2018-05-17 11:42:14',	1,	'1.0',	NULL),
(3,	'Event Calendar',	'dsEventCalendar',	'Event Calendar - you can add, edit and remove one day events on your page',	'2018-05-18 11:59:53',	1,	'3.3.5',	NULL);

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

INSERT INTO `PageFeeds` (`pfID`, `cParentID`, `pfTitle`, `pfHandle`, `pfDescription`, `pfIncludeAllDescendents`, `pfContentToDisplay`, `pfAreaHandleToDisplay`, `customTopicAttributeKeyHandle`, `customTopicTreeNodeID`, `pfDisplayAliases`, `ptID`, `pfDisplayFeaturedOnly`, `iconFID`) VALUES
(1,	0,	'RSS Noticias',	'noticias',	'RSS de Noticias del Sitio Web',	1,	'S',	NULL,	NULL,	0,	0,	7,	0,	0);

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
(149,	151,	'/!stacks/info-superior',	'1',	1),
(150,	152,	'/!stacks/search',	'1',	1),
(151,	153,	'/!stacks/espacio-2',	'1',	1),
(152,	154,	'/!stacks/espacio-3',	'1',	1),
(156,	159,	'/noticias',	'1',	1),
(161,	165,	'/institucion',	'1',	1),
(162,	166,	'/institucion/mision-y-vision',	'1',	1),
(163,	169,	'/institucion/marco-legal',	'1',	1),
(165,	171,	'/institucion/resoluciones',	'1',	1),
(166,	172,	'/institucion/organigrama',	'1',	1),
(171,	177,	'/transparencia',	'1',	1),
(172,	178,	'/dashboard/open_data',	'1',	1),
(173,	179,	'/dashboard/open_data/list_catalog',	'1',	1),
(174,	180,	'/dashboard/open_data/catalog',	'1',	1),
(175,	181,	'/dashboard/open_data/list_datasets',	'1',	1),
(176,	182,	'/dashboard/open_data/datasets',	'1',	1),
(177,	183,	'/dashboard/open_data/types',	'1',	1),
(178,	184,	'/dashboard/open_data/resource',	'1',	1),
(179,	185,	'/dashboard/open_data/files',	'1',	1),
(180,	186,	'/dashboard/open_data/list_resource',	'1',	1),
(181,	187,	'/dashboard/open_data/dictionary',	'1',	1),
(182,	188,	'/dashboard/open_data/list_dictionary',	'1',	1),
(185,	191,	'/contacto',	'1',	1),
(186,	192,	'/galeria',	'1',	1),
(187,	193,	'/mecip',	'1',	1),
(188,	194,	'/tramites',	'1',	1),
(189,	195,	'/compras-publicas',	'1',	1),
(190,	196,	'/servicios',	'1',	1),
(198,	204,	'/institucion/autoridades',	'1',	1),
(199,	205,	'/dashboard/event_calendar',	'1',	1),
(200,	206,	'/dashboard/event_calendar/list_calendar',	'1',	1),
(201,	207,	'/dashboard/event_calendar/list_event',	'1',	1),
(202,	208,	'/dashboard/event_calendar/calendar',	'1',	1),
(203,	209,	'/dashboard/event_calendar/event',	'1',	1),
(204,	210,	'/dashboard/event_calendar/types',	'1',	1),
(205,	211,	'/dashboard/event_calendar/settings',	'1',	1),
(206,	212,	'/agenda',	'1',	1),
(207,	213,	'/buscador',	'1',	1),
(211,	218,	'/noticias/noticia-de-prueba-1',	'1',	1),
(212,	219,	'/noticias/noticia-de-prueba-2',	'1',	1),
(213,	220,	'/noticias/noticia-de-prueba-3',	'1',	1),
(214,	221,	'/noticias/noticia-de-prueba-4',	'1',	1),
(215,	222,	'/noticias/noticia-de-prueba-5',	'1',	1),
(216,	223,	'/!trash/noticia-6',	'1',	1);

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
(2,	1,	62),
(129,	1,	63),
(132,	1,	60),
(133,	1,	61),
(1,	2,	43),
(129,	2,	64),
(1,	3,	44),
(129,	3,	65),
(1,	4,	45),
(129,	4,	66),
(1,	5,	46),
(129,	5,	67),
(1,	6,	47),
(129,	6,	68),
(1,	7,	48),
(129,	7,	69),
(1,	8,	50),
(129,	8,	71),
(1,	9,	51),
(129,	9,	72),
(1,	10,	52),
(129,	10,	73),
(1,	11,	53),
(129,	11,	74),
(1,	12,	54),
(129,	12,	75),
(1,	13,	55),
(129,	13,	76),
(1,	14,	56),
(129,	14,	77),
(1,	15,	57),
(129,	15,	78),
(1,	16,	58),
(129,	16,	79),
(1,	17,	59),
(129,	17,	80),
(1,	18,	49),
(129,	18,	70);

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
(2,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'OVERRIDE',	'/dashboard/view.php',	0,	NULL,	0,	1,	15,	0,	0,	0,	0,	-1,	'0',	0,	1),
(3,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/sitemap/view.php',	0,	NULL,	0,	1,	3,	0,	2,	0,	0,	-1,	'0',	0,	1),
(4,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/sitemap/full.php',	0,	NULL,	0,	1,	0,	0,	3,	0,	0,	-1,	'0',	0,	1),
(5,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/sitemap/explore.php',	0,	NULL,	0,	1,	0,	1,	3,	0,	0,	-1,	'0',	0,	1),
(6,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/sitemap/search.php',	0,	NULL,	0,	1,	0,	2,	3,	0,	0,	-1,	'0',	0,	1),
(7,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/files/view.php',	0,	NULL,	0,	1,	4,	1,	2,	0,	0,	-1,	'0',	0,	1),
(8,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/files/search.php',	0,	NULL,	0,	1,	0,	0,	7,	0,	0,	-1,	'0',	0,	1),
(9,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/files/attributes.php',	0,	NULL,	0,	1,	0,	1,	7,	0,	0,	-1,	'0',	0,	1),
(10,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/files/sets.php',	0,	NULL,	0,	1,	0,	2,	7,	0,	0,	-1,	'0',	0,	1),
(11,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/files/add_set.php',	0,	NULL,	0,	1,	0,	3,	7,	0,	0,	-1,	'0',	0,	1),
(12,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/view.php',	0,	NULL,	0,	1,	7,	2,	2,	0,	0,	-1,	'0',	0,	1),
(13,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/search.php',	0,	NULL,	0,	1,	0,	0,	12,	0,	0,	-1,	'0',	0,	1),
(14,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/groups.php',	0,	NULL,	0,	1,	1,	1,	12,	0,	0,	-1,	'0',	0,	1),
(15,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/attributes.php',	0,	NULL,	0,	1,	0,	2,	12,	0,	0,	-1,	'0',	0,	1),
(16,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/add.php',	0,	NULL,	0,	1,	0,	3,	12,	0,	0,	-1,	'0',	0,	1),
(17,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/add_group.php',	0,	NULL,	0,	1,	0,	4,	12,	0,	0,	-1,	'0',	0,	1),
(18,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/groups/bulkupdate.php',	0,	NULL,	0,	1,	0,	0,	14,	0,	0,	-1,	'0',	0,	1),
(19,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/group_sets.php',	0,	NULL,	0,	1,	0,	5,	12,	0,	0,	-1,	'0',	0,	1),
(20,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/points/view.php',	0,	NULL,	0,	1,	2,	6,	12,	0,	0,	-1,	'0',	0,	1),
(21,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/points/assign.php',	0,	NULL,	0,	1,	0,	0,	20,	0,	0,	-1,	'0',	0,	1),
(22,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/users/points/actions.php',	0,	NULL,	0,	1,	0,	1,	20,	0,	0,	-1,	'0',	0,	1),
(23,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/reports.php',	0,	NULL,	0,	1,	3,	3,	2,	0,	0,	-1,	'0',	0,	1),
(24,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/reports/forms.php',	0,	NULL,	0,	1,	0,	0,	23,	0,	0,	-1,	'0',	0,	1),
(25,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/reports/surveys.php',	0,	NULL,	0,	1,	0,	1,	23,	0,	0,	-1,	'0',	0,	1),
(26,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/reports/logs.php',	0,	NULL,	0,	1,	0,	2,	23,	0,	0,	-1,	'0',	0,	1),
(27,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/view.php',	0,	NULL,	0,	1,	6,	4,	2,	0,	0,	-1,	'0',	0,	1),
(28,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/themes/view.php',	0,	NULL,	0,	1,	1,	0,	27,	0,	0,	-1,	'0',	0,	1),
(29,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/themes/inspect.php',	0,	NULL,	0,	1,	0,	0,	28,	0,	0,	-1,	'0',	0,	1),
(30,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/types/view.php',	0,	NULL,	0,	1,	6,	1,	27,	0,	0,	-1,	'0',	0,	1),
(31,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/types/organize.php',	0,	NULL,	0,	1,	0,	0,	30,	0,	0,	-1,	'0',	0,	1),
(32,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/types/add.php',	0,	NULL,	0,	1,	0,	1,	30,	0,	0,	-1,	'0',	0,	1),
(33,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/types/form.php',	0,	NULL,	0,	1,	0,	2,	30,	0,	0,	-1,	'0',	0,	1),
(34,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/types/output.php',	0,	NULL,	0,	1,	0,	3,	30,	0,	0,	-1,	'0',	0,	1),
(35,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/types/attributes.php',	0,	NULL,	0,	1,	0,	4,	30,	0,	0,	-1,	'0',	0,	1),
(36,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/types/permissions.php',	0,	NULL,	0,	1,	0,	5,	30,	0,	0,	-1,	'0',	0,	1),
(37,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/templates/view.php',	0,	NULL,	0,	1,	1,	2,	27,	0,	0,	-1,	'0',	0,	1),
(38,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/templates/add.php',	0,	NULL,	0,	1,	0,	0,	37,	0,	0,	-1,	'0',	0,	1),
(39,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/attributes.php',	0,	NULL,	0,	1,	0,	3,	27,	0,	0,	-1,	'0',	0,	1),
(40,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/single.php',	0,	NULL,	0,	1,	0,	4,	27,	0,	0,	-1,	'0',	0,	1),
(41,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/pages/feeds.php',	0,	NULL,	0,	1,	0,	5,	27,	0,	0,	-1,	'0',	0,	1),
(42,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/conversations/view.php',	0,	NULL,	0,	1,	1,	5,	2,	0,	0,	-1,	'0',	0,	1),
(43,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/conversations/messages.php',	0,	NULL,	0,	1,	0,	0,	42,	0,	0,	-1,	'0',	0,	1),
(44,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/workflow/view.php',	0,	NULL,	0,	1,	2,	6,	2,	0,	0,	-1,	'0',	0,	1),
(45,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/workflow/me.php',	0,	NULL,	0,	1,	0,	0,	44,	0,	0,	-1,	'0',	0,	1),
(46,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/workflow/workflows.php',	0,	NULL,	0,	1,	0,	1,	44,	0,	0,	-1,	'0',	0,	1),
(47,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/blocks/view.php',	0,	NULL,	0,	1,	3,	7,	2,	0,	0,	-1,	'0',	0,	1),
(48,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/blocks/stacks/view.php',	0,	NULL,	0,	1,	1,	0,	47,	0,	0,	-1,	'0',	0,	1),
(49,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/blocks/permissions.php',	0,	NULL,	0,	1,	0,	1,	47,	0,	0,	-1,	'0',	0,	1),
(50,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/blocks/stacks/list/view.php',	0,	NULL,	0,	1,	0,	0,	48,	0,	0,	-1,	'0',	0,	1),
(51,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/blocks/types/view.php',	0,	NULL,	0,	1,	0,	2,	47,	0,	0,	-1,	'0',	0,	1),
(52,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/extend/view.php',	0,	NULL,	0,	1,	5,	8,	2,	0,	0,	-1,	'0',	0,	1),
(53,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/news.php',	0,	NULL,	0,	1,	0,	9,	2,	0,	0,	-1,	'0',	0,	1),
(54,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/extend/install.php',	0,	NULL,	0,	1,	0,	0,	52,	0,	0,	-1,	'0',	0,	1),
(55,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/extend/update.php',	0,	NULL,	0,	1,	0,	1,	52,	0,	0,	-1,	'0',	0,	1),
(56,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/extend/connect.php',	0,	NULL,	0,	1,	0,	2,	52,	0,	0,	-1,	'0',	0,	1),
(57,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/extend/themes.php',	0,	NULL,	0,	1,	0,	3,	52,	0,	0,	-1,	'0',	0,	1),
(58,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/extend/addons.php',	0,	NULL,	0,	1,	0,	4,	52,	0,	0,	-1,	'0',	0,	1),
(59,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/view.php',	0,	NULL,	0,	1,	12,	10,	2,	0,	0,	-1,	'0',	0,	1),
(60,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/basics/view.php',	0,	NULL,	0,	1,	7,	0,	59,	0,	0,	-1,	'0',	0,	1),
(61,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/basics/name.php',	0,	NULL,	0,	1,	0,	0,	60,	0,	0,	-1,	'0',	0,	1),
(62,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/basics/accessibility.php',	0,	NULL,	0,	1,	0,	1,	60,	0,	0,	-1,	'0',	0,	1),
(63,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/basics/social.php',	0,	NULL,	0,	1,	0,	2,	60,	0,	0,	-1,	'0',	0,	1),
(64,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/basics/icons.php',	0,	NULL,	0,	1,	0,	3,	60,	0,	0,	-1,	'0',	0,	1),
(65,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/basics/editor.php',	0,	NULL,	0,	1,	0,	4,	60,	0,	0,	-1,	'0',	0,	1),
(66,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/basics/multilingual/view.php',	0,	NULL,	0,	1,	0,	5,	60,	0,	0,	-1,	'0',	0,	1),
(67,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/basics/timezone.php',	0,	NULL,	0,	1,	0,	6,	60,	0,	0,	-1,	'0',	0,	1),
(68,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/multilingual/view.php',	0,	NULL,	0,	1,	4,	1,	59,	0,	0,	-1,	'0',	0,	1),
(69,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/multilingual/setup.php',	0,	NULL,	0,	1,	0,	0,	68,	0,	0,	-1,	'0',	0,	1),
(70,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/multilingual/copy.php',	0,	NULL,	0,	1,	0,	1,	68,	0,	0,	-1,	'0',	0,	1),
(71,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/multilingual/page_report.php',	0,	NULL,	0,	1,	0,	2,	68,	0,	0,	-1,	'0',	0,	1),
(72,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/multilingual/translate_interface.php',	0,	NULL,	0,	1,	0,	3,	68,	0,	0,	-1,	'0',	0,	1),
(73,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/seo/view.php',	0,	NULL,	0,	1,	5,	2,	59,	0,	0,	-1,	'0',	0,	1),
(74,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/seo/urls.php',	0,	NULL,	0,	1,	0,	0,	73,	0,	0,	-1,	'0',	0,	1),
(75,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/seo/bulk.php',	0,	NULL,	0,	1,	0,	1,	73,	0,	0,	-1,	'0',	0,	1),
(76,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/seo/codes.php',	0,	NULL,	0,	1,	0,	2,	73,	0,	0,	-1,	'0',	0,	1),
(77,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/seo/excluded.php',	0,	NULL,	0,	1,	0,	3,	73,	0,	0,	-1,	'0',	0,	1),
(78,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/seo/searchindex.php',	0,	NULL,	0,	1,	0,	4,	73,	0,	0,	-1,	'0',	0,	1),
(79,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/files/view.php',	0,	NULL,	0,	1,	5,	3,	59,	0,	0,	-1,	'0',	0,	1),
(80,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/files/permissions.php',	0,	NULL,	0,	1,	0,	0,	79,	0,	0,	-1,	'0',	0,	1),
(81,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/files/filetypes.php',	0,	NULL,	0,	1,	0,	1,	79,	0,	0,	-1,	'0',	0,	1),
(82,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/files/thumbnails.php',	0,	NULL,	0,	1,	0,	2,	79,	0,	0,	-1,	'0',	0,	1),
(83,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/files/image_uploading.php',	0,	NULL,	0,	1,	0,	3,	79,	0,	0,	-1,	'0',	0,	1),
(84,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/files/storage.php',	0,	NULL,	0,	1,	0,	4,	79,	0,	0,	-1,	'0',	0,	1),
(85,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/optimization/view.php',	0,	NULL,	0,	1,	4,	4,	59,	0,	0,	-1,	'0',	0,	1),
(86,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/optimization/cache.php',	0,	NULL,	0,	1,	0,	0,	85,	0,	0,	-1,	'0',	0,	1),
(87,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/optimization/clearcache.php',	0,	NULL,	0,	1,	0,	1,	85,	0,	0,	-1,	'0',	0,	1),
(88,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/optimization/jobs.php',	0,	NULL,	0,	1,	0,	2,	85,	0,	0,	-1,	'0',	0,	1),
(89,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/optimization/query_log.php',	0,	NULL,	0,	1,	0,	3,	85,	0,	0,	-1,	'0',	0,	1),
(90,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/permissions/view.php',	0,	NULL,	0,	1,	8,	5,	59,	0,	0,	-1,	'0',	0,	1),
(91,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/permissions/site.php',	0,	NULL,	0,	1,	0,	0,	90,	0,	0,	-1,	'0',	0,	1),
(92,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/permissions/tasks.php',	0,	NULL,	0,	1,	0,	1,	90,	0,	0,	-1,	'0',	0,	1),
(93,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/permissions/users.php',	0,	NULL,	0,	1,	0,	2,	90,	0,	0,	-1,	'0',	0,	1),
(94,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/permissions/advanced.php',	0,	NULL,	0,	1,	0,	3,	90,	0,	0,	-1,	'0',	0,	1),
(95,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/permissions/blacklist.php',	0,	NULL,	0,	1,	0,	4,	90,	0,	0,	-1,	'0',	0,	1),
(96,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/permissions/captcha.php',	0,	NULL,	0,	1,	0,	5,	90,	0,	0,	-1,	'0',	0,	1),
(97,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/permissions/antispam.php',	0,	NULL,	0,	1,	0,	6,	90,	0,	0,	-1,	'0',	0,	1),
(98,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/permissions/maintenance.php',	0,	NULL,	0,	1,	0,	7,	90,	0,	0,	-1,	'0',	0,	1),
(99,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/registration/view.php',	0,	NULL,	0,	1,	4,	6,	59,	0,	0,	-1,	'0',	0,	1),
(100,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/registration/postlogin.php',	0,	NULL,	0,	1,	0,	0,	99,	0,	0,	-1,	'0',	0,	1),
(101,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/registration/profiles.php',	0,	NULL,	0,	1,	0,	1,	99,	0,	0,	-1,	'0',	0,	1),
(102,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/registration/open.php',	0,	NULL,	0,	1,	0,	2,	99,	0,	0,	-1,	'0',	0,	1),
(103,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/registration/authentication.php',	0,	NULL,	0,	1,	0,	3,	99,	0,	0,	-1,	'0',	0,	1),
(104,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/mail/view.php',	0,	NULL,	0,	1,	2,	7,	59,	0,	0,	-1,	'0',	0,	1),
(105,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/mail/method.php',	0,	NULL,	0,	1,	1,	0,	104,	0,	0,	-1,	'0',	0,	1),
(106,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/mail/method/test.php',	0,	NULL,	0,	1,	0,	0,	105,	0,	0,	-1,	'0',	0,	1),
(107,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/mail/importers.php',	0,	NULL,	0,	1,	0,	1,	104,	0,	0,	-1,	'0',	0,	1),
(108,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/conversations/view.php',	0,	NULL,	0,	1,	4,	8,	59,	0,	0,	-1,	'0',	0,	1),
(109,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/conversations/settings.php',	0,	NULL,	0,	1,	0,	0,	108,	0,	0,	-1,	'0',	0,	1),
(110,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/conversations/points.php',	0,	NULL,	0,	1,	0,	1,	108,	0,	0,	-1,	'0',	0,	1),
(111,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/conversations/bannedwords.php',	0,	NULL,	0,	1,	0,	2,	108,	0,	0,	-1,	'0',	0,	1),
(112,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/conversations/permissions.php',	0,	NULL,	0,	1,	0,	3,	108,	0,	0,	-1,	'0',	0,	1),
(113,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/attributes/view.php',	0,	NULL,	0,	1,	3,	9,	59,	0,	0,	-1,	'0',	0,	1),
(114,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/attributes/sets.php',	0,	NULL,	0,	1,	0,	0,	113,	0,	0,	-1,	'0',	0,	1),
(115,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/attributes/types.php',	0,	NULL,	0,	1,	0,	1,	113,	0,	0,	-1,	'0',	0,	1),
(116,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/attributes/topics/view.php',	0,	NULL,	0,	1,	1,	2,	113,	0,	0,	-1,	'0',	0,	1),
(117,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/attributes/topics/add.php',	0,	NULL,	0,	1,	0,	0,	116,	0,	0,	-1,	'0',	0,	1),
(118,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/environment/view.php',	0,	NULL,	0,	1,	5,	10,	59,	0,	0,	-1,	'0',	0,	1),
(119,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/environment/info.php',	0,	NULL,	0,	1,	0,	0,	118,	0,	0,	-1,	'0',	0,	1),
(120,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/environment/debug.php',	0,	NULL,	0,	1,	0,	1,	118,	0,	0,	-1,	'0',	0,	1),
(121,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/environment/logging.php',	0,	NULL,	0,	1,	0,	2,	118,	0,	0,	-1,	'0',	0,	1),
(122,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/environment/proxy.php',	0,	NULL,	0,	1,	0,	3,	118,	0,	0,	-1,	'0',	0,	1),
(123,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/environment/entities.php',	0,	NULL,	0,	1,	0,	4,	118,	0,	0,	-1,	'0',	0,	1),
(124,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/backup/view.php',	0,	NULL,	0,	1,	2,	11,	59,	0,	0,	-1,	'0',	0,	1),
(125,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/backup/backup.php',	0,	NULL,	0,	1,	0,	0,	124,	0,	0,	-1,	'0',	0,	1),
(126,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/system/backup/update.php',	0,	NULL,	0,	1,	0,	1,	124,	0,	0,	-1,	'0',	0,	1),
(127,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	11,	2,	0,	0,	-1,	'0',	0,	1),
(128,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	12,	2,	0,	0,	-1,	'0',	0,	1),
(129,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	129,	'OVERRIDE',	'/!drafts/view.php',	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	1),
(130,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/!trash/view.php',	0,	NULL,	0,	1,	1,	0,	0,	0,	0,	-1,	'0',	0,	1),
(131,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	'/!stacks/view.php',	0,	NULL,	0,	1,	9,	0,	0,	0,	0,	-1,	'0',	0,	1),
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
(152,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	6,	131,	0,	0,	-1,	'0',	0,	1),
(153,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	7,	131,	0,	0,	-1,	'0',	0,	1),
(154,	1,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	8,	131,	0,	0,	-1,	'0',	0,	1),
(157,	6,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	157,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(159,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	5,	1,	1,	0,	1,	-1,	'0',	0,	0),
(160,	7,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	160,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(165,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	5,	0,	1,	0,	1,	-1,	'0',	0,	0),
(166,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	2,	165,	0,	1,	-1,	'0',	0,	0),
(167,	6,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	167,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(168,	6,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	168,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(169,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	3,	165,	0,	165,	-1,	'0',	0,	0),
(171,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	4,	165,	0,	165,	-1,	'0',	0,	0),
(172,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	5,	165,	0,	165,	-1,	'0',	0,	0),
(177,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	4,	1,	0,	1,	-1,	'0',	0,	0),
(178,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/view.php',	0,	NULL,	0,	1,	10,	13,	2,	2,	0,	-1,	'0',	0,	1),
(179,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/list_catalog.php',	0,	NULL,	0,	1,	0,	0,	178,	2,	0,	-1,	'0',	0,	1),
(180,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/catalog.php',	0,	NULL,	0,	1,	0,	1,	178,	2,	0,	-1,	'0',	0,	1),
(181,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/list_datasets.php',	0,	NULL,	0,	1,	0,	2,	178,	2,	0,	-1,	'0',	0,	1),
(182,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/datasets.php',	0,	NULL,	0,	1,	0,	3,	178,	2,	0,	-1,	'0',	0,	1),
(183,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/types.php',	0,	NULL,	0,	1,	0,	4,	178,	2,	0,	-1,	'0',	0,	1),
(184,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/resource.php',	0,	NULL,	0,	1,	0,	5,	178,	2,	0,	-1,	'0',	0,	1),
(185,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/files.php',	0,	NULL,	0,	1,	0,	6,	178,	2,	0,	-1,	'0',	0,	1),
(186,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/list_resource.php',	0,	NULL,	0,	1,	0,	7,	178,	2,	0,	-1,	'0',	0,	1),
(187,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/dictionary.php',	0,	NULL,	0,	1,	0,	8,	178,	2,	0,	-1,	'0',	0,	1),
(188,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/open_data/list_dictionary.php',	0,	NULL,	0,	1,	0,	9,	178,	2,	0,	-1,	'0',	0,	1),
(191,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	5,	1,	0,	1,	-1,	'0',	0,	0),
(192,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	3,	1,	0,	1,	-1,	'0',	0,	0),
(193,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	7,	1,	0,	1,	-1,	'0',	0,	0),
(194,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	6,	1,	0,	1,	-1,	'0',	0,	0),
(195,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	8,	1,	0,	1,	-1,	'0',	0,	0),
(196,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	9,	1,	0,	1,	-1,	'0',	0,	0),
(204,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	6,	165,	0,	165,	-1,	'0',	0,	0),
(205,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/view.php',	0,	NULL,	0,	1,	6,	14,	2,	3,	0,	-1,	'0',	0,	1),
(206,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/list_calendar.php',	0,	NULL,	0,	1,	0,	0,	205,	3,	0,	-1,	'0',	0,	1),
(207,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/list_event.php',	0,	NULL,	0,	1,	0,	1,	205,	3,	0,	-1,	'0',	0,	1),
(208,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/calendar.php',	0,	NULL,	0,	1,	0,	2,	205,	3,	0,	-1,	'0',	0,	1),
(209,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/event.php',	0,	NULL,	0,	1,	0,	3,	205,	3,	0,	-1,	'0',	0,	1),
(210,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/types.php',	0,	NULL,	0,	1,	0,	4,	205,	3,	0,	-1,	'0',	0,	1),
(211,	0,	0,	1,	0,	NULL,	NULL,	NULL,	1,	2,	'PARENT',	'/dashboard/event_calendar/settings.php',	0,	NULL,	0,	1,	0,	5,	205,	3,	0,	-1,	'0',	0,	1),
(212,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	2,	1,	0,	1,	-1,	'0',	0,	0),
(213,	6,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	10,	1,	0,	1,	-1,	'0',	0,	0),
(214,	7,	1,	NULL,	0,	NULL,	NULL,	NULL,	1,	214,	'OVERRIDE',	NULL,	0,	NULL,	0,	1,	0,	0,	0,	0,	0,	-1,	'0',	0,	0),
(218,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	1,	159,	0,	159,	-1,	'0',	0,	0),
(219,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	2,	159,	0,	159,	-1,	'0',	0,	0),
(220,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	3,	159,	0,	159,	-1,	'0',	0,	0),
(221,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	4,	159,	0,	159,	-1,	'0',	0,	0),
(222,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	1,	0,	5,	159,	0,	159,	-1,	'0',	0,	0),
(223,	7,	0,	1,	0,	NULL,	NULL,	NULL,	1,	1,	'PARENT',	NULL,	0,	NULL,	0,	0,	0,	7,	130,	0,	159,	-1,	'0',	0,	1);

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
(2,	'',	'Dashboard',	'',	'/dashboard',	'2018-05-16 12:09:37',	'2018-05-16 12:10:34',	NULL,	0),
(3,	'',	'Sitemap',	'Whole world at a glance.',	'/dashboard/sitemap',	'2018-05-16 12:09:37',	'2018-05-16 12:10:35',	NULL,	0),
(4,	'',	'Full Sitemap',	'',	'/dashboard/sitemap/full',	'2018-05-16 12:09:38',	'2018-05-16 12:10:35',	NULL,	0),
(5,	'',	'Flat View',	'',	'/dashboard/sitemap/explore',	'2018-05-16 12:09:38',	'2018-05-16 12:10:35',	NULL,	0),
(6,	'',	'Page Search',	'',	'/dashboard/sitemap/search',	'2018-05-16 12:09:38',	'2018-05-16 12:10:35',	NULL,	0),
(8,	'',	'File Manager',	'',	'/dashboard/files/search',	'2018-05-16 12:09:39',	'2018-05-16 12:10:35',	NULL,	0),
(9,	'',	'Attributes',	'',	'/dashboard/files/attributes',	'2018-05-16 12:09:39',	'2018-05-16 12:10:35',	NULL,	0),
(10,	'',	'File Sets',	'',	'/dashboard/files/sets',	'2018-05-16 12:09:40',	'2018-05-16 12:10:35',	NULL,	0),
(11,	'',	'Add File Set',	'',	'/dashboard/files/add_set',	'2018-05-16 12:09:40',	'2018-05-16 12:10:36',	NULL,	0),
(12,	'',	'Members',	'Add and manage the user accounts and groups on your website.',	'/dashboard/users',	'2018-05-16 12:09:41',	'2018-05-16 12:10:36',	NULL,	0),
(13,	'',	'Search Users',	'',	'/dashboard/users/search',	'2018-05-16 12:09:41',	'2018-05-16 12:10:36',	NULL,	0),
(14,	'',	'User Groups',	'',	'/dashboard/users/groups',	'2018-05-16 12:09:42',	'2018-05-16 12:10:36',	NULL,	0),
(15,	'',	'Attributes',	'',	'/dashboard/users/attributes',	'2018-05-16 12:09:42',	'2018-05-16 12:10:36',	NULL,	0),
(16,	'',	'Add User',	'',	'/dashboard/users/add',	'2018-05-16 12:09:43',	'2018-05-16 12:10:37',	NULL,	0),
(17,	'',	'Add Group',	'',	'/dashboard/users/add_group',	'2018-05-16 12:09:43',	'2018-05-16 12:10:37',	NULL,	0),
(19,	'',	'Group Sets',	'',	'/dashboard/users/group_sets',	'2018-05-16 12:09:44',	'2018-05-16 12:10:37',	NULL,	0),
(20,	'',	'Community Points',	NULL,	'/dashboard/users/points',	'2018-05-16 12:09:44',	'2018-05-16 12:10:37',	NULL,	0),
(22,	'',	'Actions',	NULL,	'/dashboard/users/points/actions',	'2018-05-16 12:09:45',	'2018-05-16 12:10:37',	NULL,	0),
(23,	'',	'Reports',	'Get data from forms and logs.',	'/dashboard/reports',	'2018-05-16 12:09:45',	'2018-05-16 12:10:37',	NULL,	0),
(24,	'',	'Form Results',	'Get submission data.',	'/dashboard/reports/forms',	'2018-05-16 12:09:46',	'2018-05-16 12:10:38',	NULL,	0),
(25,	'',	'Surveys',	'',	'/dashboard/reports/surveys',	'2018-05-16 12:09:46',	'2018-05-16 12:10:38',	NULL,	0),
(26,	'',	'Logs',	'',	'/dashboard/reports/logs',	'2018-05-16 12:09:46',	'2018-05-16 12:10:38',	NULL,	0),
(28,	'',	'Themes',	'Reskin your site.',	'/dashboard/pages/themes',	'2018-05-16 12:09:47',	'2018-05-16 12:10:38',	NULL,	0),
(29,	'',	'Inspect',	'',	'/dashboard/pages/themes/inspect',	'2018-05-16 12:09:48',	'2018-05-16 12:10:38',	NULL,	0),
(31,	'',	'Organize Page Type Order',	'',	'/dashboard/pages/types/organize',	'2018-05-16 12:09:48',	'2018-05-16 12:10:39',	NULL,	0),
(32,	'',	'Add Page Type',	'',	'/dashboard/pages/types/add',	'2018-05-16 12:09:49',	'2018-05-16 12:10:39',	NULL,	0),
(33,	'',	'Compose Form',	'',	'/dashboard/pages/types/form',	'2018-05-16 12:09:49',	'2018-05-16 12:10:39',	NULL,	0),
(34,	'',	'Defaults and Output',	'',	'/dashboard/pages/types/output',	'2018-05-16 12:09:49',	'2018-05-16 12:10:39',	NULL,	0),
(35,	'',	'Page Type Attributes',	'',	'/dashboard/pages/types/attributes',	'2018-05-16 12:09:50',	'2018-05-16 12:10:39',	NULL,	0),
(36,	'',	'Page Type Permissions',	'',	'/dashboard/pages/types/permissions',	'2018-05-16 12:09:50',	'2018-05-16 12:10:39',	NULL,	0),
(38,	'',	'Add Page Template',	'Add page templates to your site.',	'/dashboard/pages/templates/add',	'2018-05-16 12:09:51',	'2018-05-16 12:10:39',	NULL,	0),
(39,	'',	'Attributes',	'',	'/dashboard/pages/attributes',	'2018-05-16 12:09:52',	'2018-05-16 12:10:40',	NULL,	0),
(40,	'',	'Single Pages',	'',	'/dashboard/pages/single',	'2018-05-16 12:09:52',	'2018-05-16 12:10:40',	NULL,	0),
(41,	'',	'RSS Feeds',	'',	'/dashboard/pages/feeds',	'2018-05-16 12:09:53',	'2018-05-16 12:10:40',	NULL,	0),
(43,	'',	'Messages',	'',	'/dashboard/conversations/messages',	'2018-05-16 12:09:54',	'2018-05-16 12:10:40',	NULL,	0),
(44,	'',	'Workflow',	'',	'/dashboard/workflow',	'2018-05-16 12:09:54',	'2018-05-16 12:10:40',	NULL,	0),
(48,	'',	'Stacks',	'Share content across your site.',	'/dashboard/blocks/stacks',	'2018-05-16 12:09:56',	'2018-05-16 12:10:41',	NULL,	0),
(50,	'',	'Stack List',	'',	'/dashboard/blocks/stacks/list',	'2018-05-16 12:09:57',	'2018-05-16 12:10:41',	NULL,	0),
(51,	'',	'Block Types',	'Manage the installed block types in your site.',	'/dashboard/blocks/types',	'2018-05-16 12:09:57',	'2018-05-16 12:10:41',	NULL,	0),
(52,	'',	'Extend concrete5',	'',	'/dashboard/extend',	'2018-05-16 12:09:57',	'2018-05-16 12:10:41',	NULL,	0),
(53,	'',	'Dashboard',	'',	'/dashboard/news',	'2018-05-16 12:09:58',	'2018-05-16 12:10:41',	NULL,	0),
(54,	'',	'Add Functionality',	'Install add-ons & themes.',	'/dashboard/extend/install',	'2018-05-16 12:09:58',	'2018-05-16 12:10:42',	NULL,	0),
(55,	'',	'Update Add-Ons',	'Update your installed packages.',	'/dashboard/extend/update',	'2018-05-16 12:09:59',	'2018-05-16 12:10:42',	NULL,	0),
(56,	'',	'Connect to the Community',	'Connect to the concrete5 community.',	'/dashboard/extend/connect',	'2018-05-16 12:09:59',	'2018-05-16 12:10:42',	NULL,	0),
(57,	'',	'Get More Themes',	'Download themes from concrete5.org.',	'/dashboard/extend/themes',	'2018-05-16 12:10:00',	'2018-05-16 12:10:42',	NULL,	0),
(58,	'',	'Get More Add-Ons',	'Download add-ons from concrete5.org.',	'/dashboard/extend/addons',	'2018-05-16 12:10:00',	'2018-05-16 12:10:42',	NULL,	0),
(59,	'',	'System & Settings',	'Secure and setup your site.',	'/dashboard/system',	'2018-05-16 12:10:01',	'2018-05-16 12:10:43',	NULL,	0),
(61,	'',	'Site Name',	'',	'/dashboard/system/basics/name',	'2018-05-16 12:10:02',	'2018-05-16 12:10:43',	NULL,	0),
(62,	'',	'Accessibility',	'',	'/dashboard/system/basics/accessibility',	'2018-05-16 12:10:02',	'2018-05-16 12:10:43',	NULL,	0),
(63,	'',	'Social Links',	'',	'/dashboard/system/basics/social',	'2018-05-16 12:10:03',	'2018-05-16 12:10:43',	NULL,	0),
(64,	'',	'Bookmark Icons',	'Bookmark icon and mobile home screen icon setup.',	'/dashboard/system/basics/icons',	'2018-05-16 12:10:03',	'2018-05-16 12:10:43',	NULL,	0),
(65,	'',	'Rich Text Editor',	'',	'/dashboard/system/basics/editor',	'2018-05-16 12:10:03',	'2018-05-16 12:10:43',	NULL,	0),
(66,	'',	'Languages',	'',	'/dashboard/system/basics/multilingual',	'2018-05-16 12:10:04',	'2018-05-16 12:10:43',	NULL,	0),
(67,	'',	'Time Zone',	'',	'/dashboard/system/basics/timezone',	'2018-05-16 12:10:05',	'2018-05-16 12:10:44',	NULL,	0),
(68,	'',	'Multilingual',	'Run your site in multiple languages.',	'/dashboard/system/multilingual',	'2018-05-16 12:10:05',	'2018-05-16 12:10:44',	NULL,	0),
(74,	'',	'URLs and Redirection',	'',	'/dashboard/system/seo/urls',	'2018-05-16 12:10:08',	'2018-05-16 12:10:44',	NULL,	0),
(75,	'',	'Bulk SEO Updater',	'',	'/dashboard/system/seo/bulk',	'2018-05-16 12:10:08',	'2018-05-16 12:10:44',	NULL,	0),
(76,	'',	'Tracking Codes',	'',	'/dashboard/system/seo/codes',	'2018-05-16 12:10:09',	'2018-05-16 12:10:44',	NULL,	0),
(77,	'',	'Excluded URL Word List',	'',	'/dashboard/system/seo/excluded',	'2018-05-16 12:10:09',	'2018-05-16 12:10:44',	NULL,	0),
(78,	'',	'Search Index',	'',	'/dashboard/system/seo/searchindex',	'2018-05-16 12:10:10',	'2018-05-16 12:10:44',	NULL,	0),
(80,	'',	'File Manager Permissions',	'',	'/dashboard/system/files/permissions',	'2018-05-16 12:10:11',	'2018-05-16 12:10:44',	NULL,	0),
(81,	'',	'Allowed File Types',	'',	'/dashboard/system/files/filetypes',	'2018-05-16 12:10:11',	'2018-05-16 12:10:45',	NULL,	0),
(82,	'',	'Thumbnails',	'',	'/dashboard/system/files/thumbnails',	'2018-05-16 12:10:11',	'2018-05-16 12:10:45',	NULL,	0),
(83,	'',	'Image Uploading',	'',	'/dashboard/system/files/image_uploading',	'2018-05-16 12:10:12',	'2018-05-16 12:10:45',	NULL,	0),
(84,	'',	'File Storage Locations',	'',	'/dashboard/system/files/storage',	'2018-05-16 12:10:12',	'2018-05-16 12:10:45',	NULL,	0),
(86,	'',	'Cache & Speed Settings',	'',	'/dashboard/system/optimization/cache',	'2018-05-16 12:10:13',	'2018-05-16 12:10:45',	NULL,	0),
(87,	'',	'Clear Cache',	'',	'/dashboard/system/optimization/clearcache',	'2018-05-16 12:10:13',	'2018-05-16 12:10:45',	NULL,	0),
(88,	'',	'Automated Jobs',	'',	'/dashboard/system/optimization/jobs',	'2018-05-16 12:10:14',	'2018-05-16 12:10:45',	NULL,	0),
(89,	'',	'Database Query Log',	'',	'/dashboard/system/optimization/query_log',	'2018-05-16 12:10:14',	'2018-05-16 12:10:45',	NULL,	0),
(91,	'',	'Site Access',	'',	'/dashboard/system/permissions/site',	'2018-05-16 12:10:15',	'2018-05-16 12:10:46',	NULL,	0),
(92,	'',	'Task Permissions',	'',	'/dashboard/system/permissions/tasks',	'2018-05-16 12:10:15',	'2018-05-16 12:10:46',	NULL,	0),
(95,	'',	'IP Blacklist',	'',	'/dashboard/system/permissions/blacklist',	'2018-05-16 12:10:17',	'2018-05-16 12:10:46',	NULL,	0),
(96,	'',	'Captcha Setup',	'',	'/dashboard/system/permissions/captcha',	'2018-05-16 12:10:17',	'2018-05-16 12:10:46',	NULL,	0),
(97,	'',	'Spam Control',	'',	'/dashboard/system/permissions/antispam',	'2018-05-16 12:10:18',	'2018-05-16 12:10:46',	NULL,	0),
(98,	'',	'Maintenance Mode',	'',	'/dashboard/system/permissions/maintenance',	'2018-05-16 12:10:18',	'2018-05-16 12:10:46',	NULL,	0),
(100,	'',	'Login Destination',	'',	'/dashboard/system/registration/postlogin',	'2018-05-16 12:10:19',	'2018-05-16 12:10:46',	NULL,	0),
(101,	'',	'Public Profiles',	'',	'/dashboard/system/registration/profiles',	'2018-05-16 12:10:19',	'2018-05-16 12:10:47',	NULL,	0),
(102,	'',	'Public Registration',	'',	'/dashboard/system/registration/open',	'2018-05-16 12:10:20',	'2018-05-16 12:10:47',	NULL,	0),
(103,	'',	'Authentication Types',	'',	'/dashboard/system/registration/authentication',	'2018-05-16 12:10:20',	'2018-05-16 12:10:47',	NULL,	0),
(104,	'',	'Email',	'Control how your site send and processes mail.',	'/dashboard/system/mail',	'2018-05-16 12:10:20',	'2018-05-16 12:10:47',	NULL,	0),
(105,	'',	'SMTP Method',	'',	'/dashboard/system/mail/method',	'2018-05-16 12:10:21',	'2018-05-16 12:10:47',	NULL,	0),
(106,	'',	'Test Mail Settings',	'',	'/dashboard/system/mail/method/test',	'2018-05-16 12:10:21',	'2018-05-16 12:10:47',	NULL,	0),
(107,	'',	'Email Importers',	'',	'/dashboard/system/mail/importers',	'2018-05-16 12:10:22',	'2018-05-16 12:10:48',	NULL,	0),
(108,	'',	'Conversations',	'Manage your conversations settings',	'/dashboard/system/conversations',	'2018-05-16 12:10:22',	'2018-05-16 12:10:48',	NULL,	0),
(109,	'',	'Settings',	'',	'/dashboard/system/conversations/settings',	'2018-05-16 12:10:23',	'2018-05-16 12:10:48',	NULL,	0),
(110,	'',	'Community Points',	'',	'/dashboard/system/conversations/points',	'2018-05-16 12:10:23',	'2018-05-16 12:10:48',	NULL,	0),
(111,	'',	'Banned Words',	'',	'/dashboard/system/conversations/bannedwords',	'2018-05-16 12:10:24',	'2018-05-16 12:10:48',	NULL,	0),
(113,	'',	'Attributes',	'Setup attributes for pages, users, files and more.',	'/dashboard/system/attributes',	'2018-05-16 12:10:25',	'2018-05-16 12:10:48',	NULL,	0),
(114,	'',	'Sets',	'Group attributes into sets for easier organization',	'/dashboard/system/attributes/sets',	'2018-05-16 12:10:25',	'2018-05-16 12:10:48',	NULL,	0),
(115,	'',	'Types',	'Choose which attribute types are available for different items.',	'/dashboard/system/attributes/types',	'2018-05-16 12:10:26',	'2018-05-16 12:10:48',	NULL,	0),
(116,	'',	'Topics',	'',	'/dashboard/system/attributes/topics',	'2018-05-16 12:10:26',	'2018-05-16 12:10:49',	NULL,	0),
(118,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(119,	'',	'Environment Information',	'',	'/dashboard/system/environment/info',	'2018-05-16 12:10:27',	'2018-05-16 12:10:49',	NULL,	0),
(120,	'',	'Debug Settings',	'',	'/dashboard/system/environment/debug',	'2018-05-16 12:10:28',	'2018-05-16 12:10:49',	NULL,	0),
(121,	'',	'Logging Settings',	'',	'/dashboard/system/environment/logging',	'2018-05-16 12:10:28',	'2018-05-16 12:10:49',	NULL,	0),
(122,	'',	'Proxy Server',	'',	'/dashboard/system/environment/proxy',	'2018-05-16 12:10:28',	'2018-05-16 12:10:49',	NULL,	0),
(123,	'',	'Database Entities',	'',	'/dashboard/system/environment/entities',	'2018-05-16 12:10:29',	'2018-05-16 12:10:49',	NULL,	0),
(124,	'',	'Backup & Restore',	'Backup or restore your website.',	'/dashboard/system/backup',	'2018-05-16 12:10:29',	'2018-05-16 12:10:49',	NULL,	0),
(126,	'',	'Update concrete5',	'',	'/dashboard/system/backup/update',	'2018-05-16 12:10:31',	'2018-05-16 12:10:50',	NULL,	0),
(127,	'\n\n                                      ',	'Welcome to concrete5',	'Learn about how to use concrete5, how to develop for concrete5, and get general help.',	'/dashboard/welcome',	'2018-05-16 12:10:33',	'2018-05-16 12:10:50',	NULL,	0),
(128,	'',	'Customize Dashboard Home',	'',	'/dashboard/home',	'2018-05-16 12:10:34',	'2018-05-16 12:10:51',	NULL,	0),
(129,	'',	'Drafts',	'',	'/!drafts',	'2018-05-16 12:10:51',	'2018-05-16 12:10:58',	NULL,	0),
(130,	'',	'Trash',	'',	'/!trash',	'2018-05-16 12:10:52',	'2018-05-16 12:10:58',	NULL,	0),
(131,	'',	'Stacks',	'',	'/!stacks',	'2018-05-16 12:10:52',	'2018-05-16 12:10:58',	NULL,	0),
(134,	'',	'My Account',	'',	'/account',	'2018-05-16 12:10:54',	'2018-05-16 12:10:59',	NULL,	0),
(1,	' \r\n(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\nSENATICs Paraguay   \r\n Noticias Titulo slide 1  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto  Título del Slide 2  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto   ',	'Portada',	'',	NULL,	'2018-05-16 12:09:07',	'2018-05-21 10:25:15',	NULL,	0),
(146,	'',	'Header Site Title',	NULL,	'/!stacks/header-site-title',	'2018-05-16 13:36:29',	'2018-05-21 09:05:27',	NULL,	0),
(152,	'',	'search',	NULL,	'/!stacks/search',	'2018-05-16 13:55:32',	'2018-05-21 10:23:38',	NULL,	0),
(153,	'',	'Espacio 2',	NULL,	'/!stacks/espacio-2',	'2018-05-16 13:55:33',	'2018-05-21 09:03:32',	NULL,	0),
(154,	'',	'Espacio 3',	NULL,	'/!stacks/espacio-3',	'2018-05-16 13:55:33',	'2018-05-21 09:03:32',	NULL,	0),
(148,	'\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName(\"collection\");\r\n       \r\n       for(i=0;i  Portal construido conjuntamente con la SENATICs\r\n  Secretaría Nacional de Tecnologías de la Información y Comunicación  ',	'Footer Legal',	NULL,	'/!stacks/footer-legal',	'2018-05-16 13:36:30',	'2018-05-21 10:25:13',	NULL,	0),
(151,	'',	'info_superior',	NULL,	'/!stacks/info-superior',	'2018-05-16 13:55:32',	'2018-05-16 14:16:57',	NULL,	0),
(147,	'',	'Header Navigation',	NULL,	'/!stacks/header-navigation',	'2018-05-16 13:36:29',	'2018-05-17 15:05:54',	NULL,	0),
(218,	'Categorías / Filtrar Etiquetas Últimas Noticias  ¿Qué es Lorem Ipsum? Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. ¿Por qué lo usamos? Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo). ¿De dónde viene? Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32  El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.  ',	'Noticia de prueba 1',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/noticias/noticia-de-prueba-1',	'2018-05-21 09:52:00',	'2018-05-21 10:14:32',	NULL,	0),
(159,	'Categorías / Filtrar Etiquetas ',	'Noticias',	'',	'/noticias',	'2018-05-16 14:43:48',	'2018-05-21 10:15:59',	NULL,	0),
(165,	'',	'Institución',	'',	'/institucion',	'2018-05-17 10:14:16',	'2018-05-17 10:44:54',	NULL,	0),
(166,	'Misión Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.    Visión Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.    Ejes Estratégicos Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.    ',	'Misión y Visión',	'',	'/institucion/mision-y-vision',	'2018-05-17 10:17:29',	'2018-05-17 10:53:17',	NULL,	0),
(169,	' Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.    ',	'Marco Legal',	'',	'/institucion/marco-legal',	'2018-05-17 10:41:49',	'2018-05-17 10:55:34',	NULL,	0),
(171,	'',	'Resoluciones',	'',	'/institucion/resoluciones',	'2018-05-17 10:44:57',	'2018-05-17 10:47:53',	NULL,	0),
(172,	'',	'Organigrama',	'',	'/institucion/organigrama',	'2018-05-17 10:46:12',	'2018-05-17 11:00:42',	NULL,	0),
(220,	'Categorías / Filtrar Etiquetas Últimas Noticias  ¿Qué es Lorem Ipsum? Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. ¿Por qué lo usamos? Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo). \n¿De dónde viene? Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32  El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham. ¿Dónde puedo conseguirlo? Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.  ',	'Noticia de prueba 3',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/noticias/noticia-de-prueba-3',	'2018-05-21 09:58:00',	'2018-05-21 09:59:52',	NULL,	0),
(219,	'Categorías / Filtrar Etiquetas Últimas Noticias  ¿Qué es Lorem Ipsum?Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. ¿Por qué lo usamos?Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo). \n¿De dónde viene? Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32  El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham. ¿Dónde puedo conseguirlo? Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.  ',	'Noticia de prueba 2',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/noticias/noticia-de-prueba-2',	'2018-05-21 09:56:00',	'2018-05-21 09:58:07',	NULL,	0),
(177,	'',	'Transparencia',	'',	'/transparencia',	'2018-05-17 11:35:06',	'2018-05-17 11:52:07',	NULL,	0),
(181,	'',	'Listar Conjuntos de Datos',	'',	'/dashboard/open_data/list_datasets',	'2018-05-17 11:42:18',	'2018-05-17 11:42:18',	NULL,	0),
(184,	'',	'Agregar/Editar Recursos',	'',	'/dashboard/open_data/resource',	'2018-05-17 11:42:19',	'2018-05-17 11:42:20',	NULL,	0),
(185,	'',	'Agregar/Editar Archivos',	'',	'/dashboard/open_data/files',	'2018-05-17 11:42:20',	'2018-05-17 11:42:20',	NULL,	0),
(186,	'',	'Listar Recursos',	'',	'/dashboard/open_data/list_resource',	'2018-05-17 11:42:20',	'2018-05-17 11:42:21',	NULL,	0),
(187,	'',	'Agregar Diccionario',	'',	'/dashboard/open_data/dictionary',	'2018-05-17 11:42:21',	'2018-05-17 11:42:22',	NULL,	0),
(188,	'',	'Listar Diccionario',	'',	'/dashboard/open_data/list_dictionary',	'2018-05-17 11:42:22',	'2018-05-17 11:42:23',	NULL,	0),
(221,	'Categorías / Filtrar Etiquetas Últimas Noticias   ¿Qué es Lorem Ipsum? Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. ¿Por qué lo usamos? Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).  \n¿De dónde viene? Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32  El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham. ¿Dónde puedo conseguirlo? Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.  ',	'Noticia de prueba 4',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/noticias/noticia-de-prueba-4',	'2018-05-21 10:00:00',	'2018-05-21 10:02:04',	NULL,	0),
(191,	'Formulario de Contacto  \r\n  Dirección: Complejo Santos E2 - Gral. Santos 1170 c/ ConcordiaTelefono: (+595 21) 217 - 9000 Horarios de Atención: de 07:00hs a 15:00hs E-mail: comunicacion@senatics.gov.pyAsuncion - Paraguay ',	'Contacto',	'',	'/contacto',	'2018-05-18 09:56:03',	'2018-05-21 09:07:55',	NULL,	0),
(192,	'',	'Galería',	'',	'/galeria',	'2018-05-18 10:18:37',	'2018-05-18 12:21:11',	NULL,	0),
(193,	'',	'MECIP',	'',	'/mecip',	'2018-05-18 10:46:14',	'2018-05-18 10:46:33',	NULL,	0),
(194,	'',	'Trámites',	'',	'/tramites',	'2018-05-18 10:46:54',	'2018-05-18 10:47:12',	NULL,	0),
(195,	'',	'Compras Públicas',	'',	'/compras-publicas',	'2018-05-18 10:47:15',	'2018-05-18 10:47:30',	NULL,	0),
(196,	'',	'Servicios',	'',	'/servicios',	'2018-05-18 10:47:37',	'2018-05-18 10:47:49',	NULL,	0),
(223,	'Categorías / Filtrar Etiquetas Últimas Noticias  texto sencillo  ',	'noticia 6',	'texto sencillo',	'/noticias/noticia-6',	'2018-05-21 10:09:00',	'2018-05-21 10:09:51',	NULL,	0),
(222,	'Categorías / Filtrar Etiquetas Últimas Noticias ¿Qué es Lorem Ipsum?\r\n Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.\r\n   ¿Por qué lo usamos?Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo \"Contenido aquí, contenido aquí\". Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de \"Lorem Ipsum\" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).\r\n ¿De dónde viene? Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontró una de las palabras más oscuras de la lengua del latín, \"consecteur\", en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del latín, descubrió la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de \"de Finnibus Bonorum et Malorum\" (Los Extremos del Bien y El Mal) por Cicero, escrito en el año 45 antes de Cristo. Este libro es un tratado de teoría de éticas, muy popular durante el Renacimiento. La primera linea del Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", viene de una linea en la sección 1.10.32\r\n  El trozo de texto estándar de Lorem Ipsum usado desde el año 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de \"de Finibus Bonorum et Malorum\" por Cicero son también reproducidas en su forma original exacta, acompañadas por versiones en Inglés de la traducción realizada en 1914 por H. Rackham.\r\n ¿Dónde puedo conseguirlo? Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.\r\n  ',	'Noticia de prueba 5',	'¿Qué es Lorem Ipsum?\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',	'/noticias/noticia-de-prueba-5',	'2018-05-21 10:02:00',	'2018-05-21 10:04:38',	NULL,	0),
(204,	'Nombre de la Persona\nCargo / Ocupación\nNombre de la Institución\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. Nombre de la Persona\nCargo / Ocupación\nNombre de la Institución\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. ',	'Autoridades',	'',	'/institucion/autoridades',	'2018-05-18 11:40:22',	'2018-05-18 11:49:31',	NULL,	0),
(149,	'\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n\r\nEnlaces de Interés\r\n\r\n  \r\n    Presidencia de la República del Paraguay\r\n    Secretaría de la Función Pública (SFP)\r\n    Secretaría de Acción Social (SAS)\r\n    Fondo Nacional de la Cultura y las Artes (FONDEC)\r\n    Secretaría Nacional de Turismo (SENATUR)\r\n    Ministerio de Justicia (MJ)\r\n    Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)\r\n      \r\n  \r\n \r\n\r\n  \r\n    Secretaría Nacional de Cultura (SNC)\r\n    Secretaría de Información y Comunicación (SICOM)\r\n    Instituto Paraguayo del Indigena (INDI)\r\n    Ministerio de Educación y Cultura (MEC)\r\n    Ministerio de Hacienda (MH)\r\n    Secretaría Nacional de Deportes (SND)\r\n    Ministerio de Salud Pública y Bienestar Social (MSPyBS)\r\n  \r\n  ',	'Footer Navigation',	NULL,	'/!stacks/footer-navigation',	'2018-05-16 13:36:30',	'2018-05-18 11:49:29',	NULL,	0),
(150,	' Dirección: Complejo Santos E2 - Gral. Santos 1170 c/ ConcordiaTelefono: (+595 21) 217 - 9000 Horarios de Atención: de 07:00hs a 15:00hs E-mail: comunicacion@senatics.gov.py ',	'Footer Contact',	NULL,	'/!stacks/footer-contact',	'2018-05-16 13:36:30',	'2018-05-21 10:25:13',	NULL,	0),
(212,	'',	'Agenda',	'',	'/agenda',	'2018-05-18 12:00:15',	'2018-05-18 12:02:03',	NULL,	0),
(213,	'',	'Buscador',	'',	'/buscador',	'2018-05-18 15:07:46',	'2018-05-18 15:12:25',	NULL,	0);

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
(6,	'index',	'full.png',	'Index',	0,	0),
(7,	'pagina',	'full.png',	'Pagina',	0,	0),
(8,	'left_sidebar',	'left_sidebar.png',	'Left Sidebar',	0,	0),
(9,	'right_sidebar',	'right_sidebar.png',	'Right Sidebar',	0,	0);

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
(2,	'TemplateV2-campanha',	'SENATICs-UI - V2(campanhas)',	'Template SENATICs',	0,	0);

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
(5,	1,	1,	'O:87:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:14:\"publish_target\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:14:\"publish_target\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	3,	NULL,	NULL,	NULL,	0),
(8,	1,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":12:{s:7:\"\0*\0akID\";s:1:\"5\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:1:\"5\";s:24:\"\0*\0ptComposerControlName\";s:15:\"Excluir del Nav\";s:27:\"\0*\0ptComposerControlIconSRC\";s:37:\"/concrete/attributes/boolean/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	4,	'Excluir del Menú Principal',	'',	'',	0),
(9,	3,	1,	'O:78:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty\":11:{s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:1;s:17:\"\0*\0propertyHandle\";s:4:\"name\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:4:\"name\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	0,	'Titulo de la Noticia',	'',	'',	1),
(10,	3,	1,	'O:81:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:8:\"url_slug\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:8:\"url_slug\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:34:\"/concrete/attributes/text/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	1,	'URL (Automatica)',	'',	'',	0),
(12,	3,	1,	'O:85:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:11:\"description\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:11:\"description\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:38:\"/concrete/attributes/textarea/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	2,	'Descripción corta',	'',	'',	0),
(13,	3,	1,	'O:82:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:9:\"date_time\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:9:\"date_time\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:39:\"/concrete/attributes/date_time/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	4,	'Fecha/Hora de publicación',	'',	'',	0),
(14,	3,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":12:{s:7:\"\0*\0akID\";s:1:\"8\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:1:\"8\";s:24:\"\0*\0ptComposerControlName\";s:9:\"Etiquetas\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	6,	NULL,	NULL,	NULL,	0),
(15,	3,	3,	'O:53:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl\":14:{s:7:\"\0*\0btID\";i:12;s:30:\"\0*\0ptComposerControlTypeHandle\";s:5:\"block\";s:5:\"\0*\0bt\";b:0;s:4:\"\0*\0b\";b:0;s:13:\"\0*\0controller\";N;s:30:\"\0*\0ptComposerControlIdentifier\";i:12;s:24:\"\0*\0ptComposerControlName\";s:9:\"Contenido\";s:27:\"\0*\0ptComposerControlIconSRC\";s:33:\"/concrete/blocks/content/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	8,	NULL,	NULL,	NULL,	0),
(16,	3,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":12:{s:7:\"\0*\0akID\";s:2:\"18\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"18\";s:24:\"\0*\0ptComposerControlName\";s:11:\"Categorías\";s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/topics/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	5,	NULL,	NULL,	NULL,	0),
(17,	1,	1,	'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	5,	NULL,	NULL,	NULL,	0),
(18,	3,	2,	'O:67:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl\":12:{s:7:\"\0*\0akID\";s:2:\"19\";s:5:\"\0*\0ak\";b:0;s:30:\"\0*\0ptComposerControlTypeHandle\";s:20:\"collection_attribute\";s:30:\"\0*\0ptComposerControlIdentifier\";s:2:\"19\";s:24:\"\0*\0ptComposerControlName\";s:16:\"Imagen Miniatura\";s:27:\"\0*\0ptComposerControlIconSRC\";s:40:\"/concrete/attributes/image_file/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	7,	'Imagen Miniatura',	'',	'',	1),
(20,	3,	1,	'O:86:\"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty\":11:{s:17:\"\0*\0propertyHandle\";s:13:\"page_template\";s:30:\"\0*\0ptComposerControlTypeHandle\";s:18:\"core_page_property\";s:30:\"\0*\0ptComposerControlIdentifier\";s:13:\"page_template\";s:24:\"\0*\0ptComposerControlName\";N;s:27:\"\0*\0ptComposerControlIconSRC\";s:36:\"/concrete/attributes/select/icon.png\";s:20:\"\0*\0ptComposerControl\";N;s:37:\"\0*\0ptComposerControlRequiredByDefault\";b:0;s:41:\"\0*\0ptComposerControlRequiredOnThisRequest\";b:0;s:31:\"\0*\0ptComposerControlCustomLabel\";N;s:31:\"\0*\0ptComposerControlDescription\";N;s:5:\"error\";s:0:\"\";}',	3,	'',	'',	'Seleccione el modo de visualización de la Noticia',	0);

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
(3,	7,	'Configuración Básica de la Noticia',	'',	0);

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
(1,	155,	'Main',	0,	6,	19),
(2,	156,	'Main',	0,	6,	20),
(3,	173,	'Contenido',	2,	15,	55),
(40,	174,	'Contenido',	2,	15,	100),
(54,	175,	'Contenido',	2,	15,	116),
(82,	176,	'Contenido',	2,	15,	147),
(103,	189,	'Contenido',	2,	15,	183),
(151,	190,	'Contenido',	2,	15,	269),
(166,	197,	'Contenido',	2,	15,	284),
(184,	198,	'Contenido',	2,	15,	302),
(234,	199,	'Contenido',	2,	15,	352),
(255,	200,	'Contenido',	2,	15,	373),
(300,	201,	'Contenido',	2,	15,	442),
(303,	202,	'Contenido',	2,	15,	466),
(304,	215,	'Contenido',	2,	15,	467),
(305,	216,	'Contenido',	2,	15,	468),
(308,	217,	'Contenido',	0,	15,	471),
(356,	219,	'Contenido',	0,	15,	519),
(370,	220,	'Contenido',	0,	15,	533),
(394,	221,	'Contenido',	0,	15,	557),
(409,	222,	'Contenido',	0,	15,	572),
(410,	222,	'Contenido',	0,	15,	573),
(415,	223,	'Contenido',	0,	15,	578),
(417,	218,	'Contenido',	0,	15,	581);

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
(5,	7,	7,	15),
(6,	9,	7,	15);

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
(7,	6,	157),
(7,	7,	160),
(8,	6,	167),
(9,	6,	168),
(9,	7,	214);

DROP TABLE IF EXISTS `PageTypePageTemplates`;
CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PageTypePageTemplates` (`ptID`, `pTemplateID`) VALUES
(6,	7),
(7,	7),
(6,	8),
(6,	9),
(7,	9);

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
(7,	59,	9),
(1,	60,	9),
(2,	60,	9),
(3,	60,	9),
(4,	60,	9),
(5,	60,	9),
(6,	60,	9),
(7,	60,	9),
(1,	61,	9),
(2,	61,	9),
(3,	61,	9),
(4,	61,	9),
(5,	61,	9),
(6,	61,	9),
(7,	61,	9),
(1,	62,	9),
(2,	62,	9),
(3,	62,	9),
(4,	62,	9),
(5,	62,	9),
(6,	62,	9),
(7,	62,	9),
(1,	63,	26),
(2,	63,	27),
(3,	63,	28),
(4,	63,	29),
(5,	63,	30),
(6,	63,	31),
(7,	63,	94);

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
(6,	'Page',	'page',	3,	7,	'C',	0,	1,	0,	1,	0,	'O:68:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration\":7:{s:21:\"\0*\0selectorFormFactor\";s:0:\"\";s:22:\"\0*\0startingPointPageID\";N;s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"3\";s:25:\"ptPublishTargetTypeHandle\";s:3:\"all\";s:9:\"pkgHandle\";b:0;s:17:\"startingPointPage\";s:1:\"0\";}'),
(7,	'Publicador de Noticias',	'noticias',	1,	9,	'C',	0,	1,	1,	1,	0,	'O:75:\"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration\":5:{s:12:\"\0*\0cParentID\";s:3:\"159\";s:5:\"error\";s:0:\"\";s:21:\"ptPublishTargetTypeID\";s:1:\"1\";s:25:\"ptPublishTargetTypeHandle\";s:11:\"parent_page\";s:9:\"pkgHandle\";b:0;}');

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
(95,	1);

DROP TABLE IF EXISTS `PermissionAccessEntities`;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1,	1),
(5,	1),
(6,	1),
(2,	5),
(3,	6),
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
(2,	5,	1),
(3,	6,	2);

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
(32,	5,	0,	10),
(33,	1,	0,	10),
(33,	5,	0,	10),
(34,	1,	0,	10),
(35,	1,	0,	10),
(36,	1,	0,	10),
(37,	1,	0,	10),
(38,	1,	0,	10),
(39,	1,	0,	10),
(40,	1,	0,	10),
(41,	1,	0,	10),
(42,	5,	0,	10),
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
(60,	5,	0,	10),
(61,	5,	0,	10),
(62,	1,	0,	10),
(63,	1,	0,	10),
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
(82,	1,	0,	10),
(83,	1,	0,	10),
(84,	1,	0,	10),
(85,	1,	0,	10),
(86,	5,	0,	10),
(87,	5,	0,	10),
(88,	1,	0,	10),
(88,	4,	0,	10),
(89,	1,	0,	10),
(89,	4,	0,	10),
(90,	1,	0,	10),
(90,	6,	0,	10),
(91,	1,	0,	10),
(92,	1,	0,	10),
(93,	1,	0,	10),
(94,	2,	0,	10),
(95,	5,	0,	10);

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
(11,	89),
(12,	90),
(13,	91),
(14,	92),
(15,	93),
(16,	94),
(17,	95),
(18,	96),
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
(1,	1,	23,	'BLOCK',	1,	'2018-05-16 19:12:05',	1),
(2,	1,	49,	'BLOCK',	1,	'2018-05-17 14:52:03',	2),
(3,	1,	56,	'BLOCK',	1,	'2018-05-17 15:30:36',	3),
(4,	1,	158,	'BLOCK',	1,	'2018-05-17 18:59:00',	4),
(5,	1,	157,	'BLOCK',	1,	'2018-05-17 18:59:02',	5),
(6,	1,	253,	'BLOCK',	1,	'2018-05-18 14:44:56',	6),
(7,	1,	417,	'BLOCK',	1,	'2018-05-18 15:45:14',	7),
(8,	1,	238,	'BLOCK',	1,	'2018-05-21 13:07:51',	8),
(9,	1,	95,	'BLOCK',	1,	'2018-05-21 13:34:28',	9),
(10,	1,	94,	'BLOCK',	1,	'2018-05-21 13:34:30',	10),
(11,	1,	96,	'BLOCK',	1,	'2018-05-21 13:34:33',	11),
(12,	1,	97,	'BLOCK',	1,	'2018-05-21 13:34:34',	12),
(13,	1,	98,	'BLOCK',	1,	'2018-05-21 13:34:36',	13),
(14,	1,	457,	'BLOCK',	1,	'2018-05-21 13:41:45',	14);

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
(1,	1,	1,	'2018-05-16 18:01:20',	NULL,	'READY');

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
(1,	'7f000001',	'2018-05-21 13:00:09'),
(2,	'7f000001',	'2018-05-21 13:00:13'),
(3,	'7f000001',	'2018-05-21 13:00:33'),
(4,	'7f000001',	'2018-05-21 13:23:39');

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
(6,	'info_superior',	20,	151,	0),
(7,	'search',	20,	152,	0),
(8,	'Espacio 2',	20,	153,	0),
(9,	'Espacio 3',	20,	154,	0);

DROP TABLE IF EXISTS `StyleCustomizerCustomCssRecords`;
CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(1,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	'1px',	'rgb(225, 225, 225)',	'solid',	'4px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(2,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	'right',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(3,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	'14px',	'right',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(4,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	'20px',	'right',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(5,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'base_contenido paddind_10',	0,	0,	0,	0),
(6,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'10px',	'10px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(7,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'10px',	'10px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'base_contenido paddind_10',	0,	0,	0,	0),
(8,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'30px',	'30px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(9,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(10,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(11,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(12,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(13,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(14,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	'6px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(15,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	'6px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(16,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	'6px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(17,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'15px',	'15px',	'6px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(18,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	'right',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(19,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	'left',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(20,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	'14px',	'right',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(21,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	'left',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'-15px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(22,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	'left',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'-15px',	NULL,	'-15px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(23,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	'left',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'-15px',	'-15px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(24,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	'18px',	'right',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(25,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	'17px',	'right',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(26,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	'17px',	'right',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(27,	NULL,	39,	'no-repeat',	'cover',	'left top',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'20px',	'20px',	NULL,	NULL,	NULL,	NULL,	'30px',	'30px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(28,	NULL,	39,	'no-repeat',	'cover',	'left top',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'20px',	'20px',	'30px',	'30px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(29,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'10px',	'10px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(30,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'10px',	'10px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(31,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	'1px',	'rgb(225, 225, 225)',	'solid',	'4px',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	0,	0,	0),
(32,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'animated slideInUp',	0,	0,	0,	0),
(33,	NULL,	0,	'no-repeat',	'auto',	'0% 0%',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'animated slideInDown',	0,	0,	0,	0);

DROP TABLE IF EXISTS `StyleCustomizerValueLists`;
CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `StyleCustomizerValues`;
CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
('20160615000000');

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
(2,	'Categorías');

DROP TABLE IF EXISTS `TreeCategoryNodes`;
CREATE TABLE `TreeCategoryNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeCategoryNodes` (`treeNodeID`, `treeNodeCategoryName`) VALUES
(5,	'');

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
(4,	3);

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
(5,	65,	95),
(1,	81,	81),
(1,	82,	82),
(1,	83,	83),
(1,	84,	84),
(1,	85,	85);

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
(5,	2,	2,	0,	0,	1,	5),
(7,	3,	2,	5,	0,	0,	5),
(8,	3,	2,	5,	1,	0,	5);

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
(1,	1,	'2018-05-16 12:08:56',	1),
(2,	2,	'2018-05-16 15:05:04',	5);

DROP TABLE IF EXISTS `TreeTopicNodes`;
CREATE TABLE `TreeTopicNodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `TreeTopicNodes` (`treeNodeID`, `treeNodeTopicName`) VALUES
(7,	'Informática'),
(8,	'Salud');

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
(1,	3,	'2018-05-18 13:49:21');

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
(1,	'admin',	'gobiernoelectronico@senatics.gov.py',	'$2a$12$omSqpYlje/lWaJXhtXqjG.7FpcDO5VrNNE/Ui/K4Ha4Pa1Zk3dtuq',	'1',	-1,	1,	'2018-05-16 12:08:56',	'2018-05-18 13:49:00',	0,	1526913125,	1526909273,	'7f000001',	1526909031,	4,	1,	NULL,	'es_PY');

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


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
(1,	1,	'2018-05-16 17:43:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"1\";}'),
(2,	2,	'2018-05-16 17:45:15',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"2\";}'),
(3,	3,	'2018-05-16 18:04:02',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"3\";}'),
(4,	4,	'2018-05-16 18:06:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"4\";}'),
(5,	5,	'2018-05-16 18:16:00',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"5\";}'),
(6,	6,	'2018-05-16 18:16:18',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"6\";}'),
(7,	7,	'2018-05-16 18:16:56',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:1:\"7\";}'),
(8,	8,	'2018-05-16 18:18:36',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:1:\"8\";}'),
(9,	9,	'2018-05-16 18:25:58',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:1:\"9\";}'),
(10,	10,	'2018-05-16 18:31:42',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"158\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"10\";}'),
(11,	11,	'2018-05-16 18:43:45',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"158\";s:4:\"wrID\";s:2:\"11\";}'),
(12,	12,	'2018-05-16 18:44:02',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"12\";}'),
(13,	13,	'2018-05-16 19:12:10',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"13\";}'),
(14,	14,	'2018-05-16 19:46:40',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"161\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"14\";}'),
(15,	15,	'2018-05-16 19:47:06',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"155\";s:4:\"wrID\";s:2:\"15\";}'),
(16,	16,	'2018-05-16 19:47:10',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"156\";s:4:\"wrID\";s:2:\"16\";}'),
(17,	17,	'2018-05-16 19:47:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"17\";}'),
(18,	18,	'2018-05-16 19:48:37',	'O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"161\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"162\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:2:\"18\";}'),
(19,	19,	'2018-05-16 19:48:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"162\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"19\";}'),
(20,	20,	'2018-05-17 13:30:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"163\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"20\";}'),
(21,	21,	'2018-05-17 13:30:45',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"164\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"21\";}'),
(22,	22,	'2018-05-17 14:13:58',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"164\";s:4:\"wrID\";s:2:\"22\";}'),
(23,	23,	'2018-05-17 14:14:02',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"163\";s:4:\"wrID\";s:2:\"23\";}'),
(24,	24,	'2018-05-17 14:14:06',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"162\";s:4:\"wrID\";s:2:\"24\";}'),
(25,	25,	'2018-05-17 14:14:12',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"161\";s:4:\"wrID\";s:2:\"25\";}'),
(26,	26,	'2018-05-17 14:14:40',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"165\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"26\";}'),
(27,	27,	'2018-05-17 14:15:49',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"27\";}'),
(28,	28,	'2018-05-17 14:17:45',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"28\";}'),
(29,	29,	'2018-05-17 14:18:01',	'O:46:\"Concrete\\Core\\Workflow\\Request\\MovePageRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"165\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"16\";s:3:\"cID\";s:3:\"166\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:2:\"29\";}'),
(30,	30,	'2018-05-17 14:35:59',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"30\";}'),
(31,	31,	'2018-05-17 14:41:16',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"31\";}'),
(32,	32,	'2018-05-17 14:41:43',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"32\";}'),
(33,	33,	'2018-05-17 14:42:04',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"33\";}'),
(34,	34,	'2018-05-17 14:43:11',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"170\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"34\";}'),
(35,	35,	'2018-05-17 14:43:21',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"170\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"35\";}'),
(36,	36,	'2018-05-17 14:43:44',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"170\";s:4:\"wrID\";s:2:\"36\";}'),
(37,	37,	'2018-05-17 14:44:29',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"165\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"37\";}'),
(38,	38,	'2018-05-17 14:44:52',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"165\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"38\";}'),
(39,	39,	'2018-05-17 14:45:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"171\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"39\";}'),
(40,	40,	'2018-05-17 14:46:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"172\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"40\";}'),
(41,	41,	'2018-05-17 14:47:24',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"171\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"41\";}'),
(42,	42,	'2018-05-17 14:47:52',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"171\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"42\";}'),
(43,	43,	'2018-05-17 14:48:38',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"43\";}'),
(44,	44,	'2018-05-17 14:53:15',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"166\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"44\";}'),
(45,	45,	'2018-05-17 14:55:23',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"45\";}'),
(46,	46,	'2018-05-17 14:55:33',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"169\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"46\";}'),
(47,	47,	'2018-05-17 15:00:41',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"172\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"47\";}'),
(48,	48,	'2018-05-17 15:09:44',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"48\";}'),
(49,	49,	'2018-05-17 15:15:18',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"49\";}'),
(50,	50,	'2018-05-17 15:18:23',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"174\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"50\";}'),
(51,	51,	'2018-05-17 15:19:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"174\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"51\";}'),
(52,	52,	'2018-05-17 15:23:53',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"52\";}'),
(53,	53,	'2018-05-17 15:24:38',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"174\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"53\";}'),
(54,	54,	'2018-05-17 15:27:23',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"174\";s:4:\"wrID\";s:2:\"54\";}'),
(55,	55,	'2018-05-17 15:28:42',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"175\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"55\";}'),
(56,	56,	'2018-05-17 15:29:47',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"175\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"56\";}'),
(57,	57,	'2018-05-17 15:30:39',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"57\";}'),
(58,	58,	'2018-05-17 15:31:00',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"58\";}'),
(59,	59,	'2018-05-17 15:32:11',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"59\";}'),
(60,	60,	'2018-05-17 15:34:40',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"176\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"60\";}'),
(61,	61,	'2018-05-17 15:35:35',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"177\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"61\";}'),
(62,	62,	'2018-05-17 15:42:05',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"177\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"62\";}'),
(63,	63,	'2018-05-17 15:52:06',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"177\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"63\";}'),
(64,	64,	'2018-05-17 15:57:56',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"64\";}'),
(65,	65,	'2018-05-17 16:00:10',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"65\";}'),
(66,	66,	'2018-05-17 16:01:05',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"66\";}'),
(67,	67,	'2018-05-17 16:04:09',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"67\";}'),
(68,	68,	'2018-05-17 19:03:44',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"68\";}'),
(69,	69,	'2018-05-17 19:04:44',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"69\";}'),
(70,	70,	'2018-05-17 19:05:04',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"70\";}'),
(71,	71,	'2018-05-17 19:05:53',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:2:\"71\";}'),
(72,	72,	'2018-05-17 19:06:16',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"21\";s:4:\"wrID\";s:2:\"72\";}'),
(73,	73,	'2018-05-18 12:09:12',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"176\";s:4:\"wrID\";s:2:\"73\";}'),
(74,	74,	'2018-05-18 12:09:18',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"175\";s:4:\"wrID\";s:2:\"74\";}'),
(75,	75,	'2018-05-18 12:11:08',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"189\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"75\";}'),
(76,	76,	'2018-05-18 12:15:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"190\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"76\";}'),
(77,	77,	'2018-05-18 14:00:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"77\";}'),
(78,	78,	'2018-05-18 14:03:18',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"78\";}'),
(79,	79,	'2018-05-18 14:07:51',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"79\";}'),
(80,	80,	'2018-05-18 14:08:16',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"80\";}'),
(81,	81,	'2018-05-18 14:09:12',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"81\";}'),
(82,	82,	'2018-05-18 14:10:03',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"82\";}'),
(83,	83,	'2018-05-18 14:10:39',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"83\";}'),
(84,	84,	'2018-05-18 14:11:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"84\";}'),
(85,	85,	'2018-05-18 14:12:16',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"85\";}'),
(86,	86,	'2018-05-18 14:18:51',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"192\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"86\";}'),
(87,	87,	'2018-05-18 14:30:00',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"22\";s:4:\"wrID\";s:2:\"87\";}'),
(88,	88,	'2018-05-18 14:32:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"23\";s:4:\"wrID\";s:2:\"88\";}'),
(89,	89,	'2018-05-18 14:45:04',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"24\";s:4:\"wrID\";s:2:\"89\";}'),
(90,	90,	'2018-05-18 14:46:32',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"193\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"90\";}'),
(91,	91,	'2018-05-18 14:47:11',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"194\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"91\";}'),
(92,	92,	'2018-05-18 14:47:29',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"195\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"92\";}'),
(93,	93,	'2018-05-18 14:47:48',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"196\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"93\";}'),
(94,	94,	'2018-05-18 14:51:18',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"25\";s:4:\"wrID\";s:2:\"94\";}'),
(95,	95,	'2018-05-18 14:57:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"26\";s:4:\"wrID\";s:2:\"95\";}'),
(96,	96,	'2018-05-18 14:58:13',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"27\";s:4:\"wrID\";s:2:\"96\";}'),
(97,	97,	'2018-05-18 14:58:51',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"28\";s:4:\"wrID\";s:2:\"97\";}'),
(98,	98,	'2018-05-18 15:02:53',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"29\";s:4:\"wrID\";s:2:\"98\";}'),
(99,	99,	'2018-05-18 15:15:12',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"189\";s:4:\"wrID\";s:2:\"99\";}'),
(100,	100,	'2018-05-18 15:15:26',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"190\";s:4:\"wrID\";s:3:\"100\";}'),
(101,	101,	'2018-05-18 15:18:52',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"197\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"101\";}'),
(102,	102,	'2018-05-18 15:22:23',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"197\";s:4:\"wrID\";s:3:\"102\";}'),
(103,	103,	'2018-05-18 15:25:16',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"198\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"103\";}'),
(104,	104,	'2018-05-18 15:29:08',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"199\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"104\";}'),
(105,	105,	'2018-05-18 15:29:36',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"199\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:3:\"105\";}'),
(106,	106,	'2018-05-18 15:29:49',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"199\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:3:\"106\";}'),
(107,	107,	'2018-05-18 15:31:35',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"200\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"107\";}'),
(108,	108,	'2018-05-18 15:34:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"201\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"108\";}'),
(109,	109,	'2018-05-18 15:36:00',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"109\";}'),
(110,	110,	'2018-05-18 15:36:25',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:3:\"110\";}'),
(111,	111,	'2018-05-18 15:37:13',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"30\";s:4:\"wrID\";s:3:\"111\";}'),
(112,	112,	'2018-05-18 15:38:57',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"31\";s:4:\"wrID\";s:3:\"112\";}'),
(113,	113,	'2018-05-18 15:40:07',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"203\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"113\";}'),
(114,	114,	'2018-05-18 15:40:17',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"203\";s:4:\"wrID\";s:3:\"114\";}'),
(115,	115,	'2018-05-18 15:40:36',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"204\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"115\";}'),
(116,	116,	'2018-05-18 15:46:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"204\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:3:\"116\";}'),
(117,	117,	'2018-05-18 15:46:39',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"204\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:3:\"117\";}'),
(118,	118,	'2018-05-18 15:49:28',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"204\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:3:\"118\";}'),
(119,	119,	'2018-05-18 15:53:55',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"32\";s:4:\"wrID\";s:3:\"119\";}'),
(120,	120,	'2018-05-18 15:54:19',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"33\";s:4:\"wrID\";s:3:\"120\";}'),
(121,	121,	'2018-05-18 15:55:14',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"34\";s:4:\"wrID\";s:3:\"121\";}'),
(122,	122,	'2018-05-18 15:58:22',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"35\";s:4:\"wrID\";s:3:\"122\";}'),
(123,	123,	'2018-05-18 16:00:26',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"212\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"123\";}'),
(124,	124,	'2018-05-18 16:00:44',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"212\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:3:\"124\";}'),
(125,	125,	'2018-05-18 16:02:02',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"212\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:3:\"125\";}'),
(126,	126,	'2018-05-18 16:20:46',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"192\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:3:\"126\";}'),
(127,	127,	'2018-05-18 16:21:09',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"192\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:3:\"127\";}'),
(128,	128,	'2018-05-18 17:42:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"36\";s:4:\"wrID\";s:3:\"128\";}'),
(129,	129,	'2018-05-18 17:44:36',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:3:\"129\";}'),
(130,	130,	'2018-05-18 17:46:33',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:3:\"130\";}'),
(131,	131,	'2018-05-18 19:08:05',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"213\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:3:\"131\";}'),
(132,	132,	'2018-05-18 19:11:05',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"213\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:3:\"132\";}'),
(133,	133,	'2018-05-18 19:11:27',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"37\";s:4:\"wrID\";s:3:\"133\";}'),
(134,	134,	'2018-05-18 19:11:59',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"213\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:3:\"134\";}'),
(135,	135,	'2018-05-18 19:12:23',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"213\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:3:\"135\";}'),
(136,	1,	'2018-05-21 13:03:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"38\";s:4:\"wrID\";s:1:\"1\";}'),
(137,	2,	'2018-05-21 13:05:27',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"39\";s:4:\"wrID\";s:1:\"2\";}'),
(138,	3,	'2018-05-21 13:07:54',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"191\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:1:\"3\";}'),
(139,	4,	'2018-05-21 13:08:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"40\";s:4:\"wrID\";s:1:\"4\";}'),
(140,	5,	'2018-05-21 13:28:11',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"5\";}'),
(141,	6,	'2018-05-21 13:28:29',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:1:\"6\";}'),
(142,	7,	'2018-05-21 13:28:57',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"201\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"7\";}'),
(143,	8,	'2018-05-21 13:29:13',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"201\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"8\";}'),
(144,	9,	'2018-05-21 13:29:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"9\";}'),
(145,	10,	'2018-05-21 13:34:39',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"10\";}'),
(146,	11,	'2018-05-21 13:45:31',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"11\";}'),
(147,	12,	'2018-05-21 13:49:06',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"202\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"12\";}'),
(148,	13,	'2018-05-21 13:49:18',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"198\";s:4:\"wrID\";s:2:\"13\";}'),
(149,	14,	'2018-05-21 13:49:22',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"199\";s:4:\"wrID\";s:2:\"14\";}'),
(150,	15,	'2018-05-21 13:49:26',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"200\";s:4:\"wrID\";s:2:\"15\";}'),
(151,	16,	'2018-05-21 13:49:30',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"201\";s:4:\"wrID\";s:2:\"16\";}'),
(152,	17,	'2018-05-21 13:49:48',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"202\";s:4:\"wrID\";s:2:\"17\";}'),
(153,	18,	'2018-05-21 13:49:57',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"215\";s:4:\"wrID\";s:2:\"18\";}'),
(154,	19,	'2018-05-21 13:50:02',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"216\";s:4:\"wrID\";s:2:\"19\";}'),
(155,	20,	'2018-05-21 13:54:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"218\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"20\";}'),
(156,	21,	'2018-05-21 13:55:48',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"218\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"21\";}'),
(157,	22,	'2018-05-21 13:58:06',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"219\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"22\";}'),
(158,	23,	'2018-05-21 13:59:50',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"220\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"23\";}'),
(159,	24,	'2018-05-21 14:02:02',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"221\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"24\";}'),
(160,	25,	'2018-05-21 14:03:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"222\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"25\";}'),
(161,	26,	'2018-05-21 14:04:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"222\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"26\";}'),
(162,	27,	'2018-05-21 14:09:49',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"223\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"27\";}'),
(163,	28,	'2018-05-21 14:10:57',	'O:48:\"Concrete\\Core\\Workflow\\Request\\DeletePageRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"223\";s:4:\"wrID\";s:2:\"28\";}'),
(164,	29,	'2018-05-21 14:11:55',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"29\";}'),
(165,	30,	'2018-05-21 14:13:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"218\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"30\";}'),
(166,	31,	'2018-05-21 14:14:30',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"218\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"31\";}'),
(167,	32,	'2018-05-21 14:15:57',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:3:\"159\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"32\";}'),
(168,	33,	'2018-05-21 14:23:37',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"41\";s:4:\"wrID\";s:2:\"33\";}'),
(169,	34,	'2018-05-21 14:25:12',	'O:49:\"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"14\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"42\";s:4:\"wrID\";s:2:\"34\";}');

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

-- 2018-05-21 14:32:49
