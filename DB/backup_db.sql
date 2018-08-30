-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-08-2018 a las 15:51:39
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `template_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AreaLayoutColumns`
--

CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AreaLayoutColumns`
--

INSERT INTO `AreaLayoutColumns` (`arLayoutColumnID`, `arLayoutID`, `arLayoutColumnIndex`, `arID`, `arLayoutColumnDisplayID`) VALUES
(1, 1, 0, 78, 1),
(2, 1, 1, 79, 2),
(3, 2, 0, 219, 3),
(4, 2, 1, 220, 4),
(5, 3, 0, 221, 5),
(6, 4, 0, 287, 6),
(7, 4, 1, 288, 7),
(8, 5, 0, 289, 8),
(9, 5, 1, 290, 9),
(10, 6, 0, 291, 10),
(11, 6, 1, 292, 11),
(12, 7, 0, 334, 12),
(13, 7, 1, 335, 13),
(14, 8, 0, 287, 6),
(15, 8, 1, 288, 7),
(16, 9, 0, 291, 10),
(17, 9, 1, 292, 11),
(18, 10, 0, 536, 14),
(19, 10, 1, 537, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AreaLayoutCustomColumns`
--

CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AreaLayoutCustomColumns`
--

INSERT INTO `AreaLayoutCustomColumns` (`arLayoutColumnID`, `arLayoutColumnWidth`) VALUES
(1, '0'),
(2, '0'),
(3, '0'),
(4, '0'),
(5, '0'),
(6, '750'),
(7, '243'),
(8, '703'),
(9, '290'),
(10, '753'),
(11, '271'),
(12, '0'),
(13, '0'),
(14, '698'),
(15, '295'),
(16, '255'),
(17, '769'),
(18, '694'),
(19, '299');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AreaLayoutPresets`
--

CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AreaLayouts`
--

CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `arLayoutSpacing` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AreaLayouts`
--

INSERT INTO `AreaLayouts` (`arLayoutID`, `arLayoutSpacing`, `arLayoutIsCustom`, `arLayoutIsPreset`, `arLayoutMaxColumns`, `arLayoutUsesThemeGridFramework`) VALUES
(1, 10, 0, 0, 0, 0),
(2, 10, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0),
(4, 10, 1, 0, 0, 0),
(5, 10, 1, 0, 0, 0),
(6, 10, 1, 0, 0, 0),
(7, 10, 0, 0, 0, 0),
(8, 10, 1, 0, 0, 0),
(9, 10, 1, 0, 0, 0),
(10, 10, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AreaLayoutsUsingPresets`
--

CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AreaLayoutThemeGridColumns`
--

CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnSpan` int(10) UNSIGNED DEFAULT '0',
  `arLayoutColumnOffset` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AreaPermissionAssignments`
--

CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AreaPermissionBlockTypeAccessList`
--

CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AreaPermissionBlockTypeAccessListCustom`
--

CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Areas`
--

CREATE TABLE `Areas` (
  `arID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Areas`
--

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
(1, 127, 'Main', 0, 0, 0, 0),
(2, 128, 'Primary', 0, 0, 0, 0),
(3, 128, 'Secondary 1', 0, 0, 0, 0),
(4, 128, 'Secondary 2', 0, 0, 0, 0),
(5, 128, 'Secondary 3', 0, 0, 0, 0),
(6, 128, 'Secondary 4', 0, 0, 0, 0),
(7, 128, 'Secondary 5', 0, 0, 0, 0),
(8, 145, 'Main', 0, 0, 0, 0),
(9, 146, 'Main', 0, 0, 0, 0),
(10, 1, 'Header Site Title', 0, 0, 1, 0),
(11, 147, 'Main', 0, 0, 0, 0),
(12, 1, 'Header Navigation', 0, 0, 1, 0),
(13, 1, 'Main', 0, 0, 0, 0),
(14, 1, 'Page Footer', 0, 0, 0, 0),
(15, 148, 'Main', 0, 0, 0, 0),
(16, 1, 'Footer Legal', 0, 0, 1, 0),
(17, 149, 'Main', 0, 0, 0, 0),
(18, 1, 'Footer Navigation', 0, 0, 1, 0),
(19, 150, 'Main', 0, 0, 0, 0),
(20, 1, 'Footer Contact', 0, 0, 1, 0),
(21, 151, 'Main', 0, 0, 0, 0),
(22, 1, 'info_superior', 0, 0, 1, 0),
(23, 152, 'Main', 0, 0, 0, 0),
(24, 1, 'search', 0, 0, 1, 0),
(25, 153, 'Main', 0, 0, 0, 0),
(26, 1, 'Espacio 2', 0, 0, 1, 0),
(27, 154, 'Main', 0, 0, 0, 0),
(28, 1, 'Espacio 3', 0, 0, 1, 0),
(29, 1, 'Slider', 0, 0, 0, 0),
(30, 1, 'Contenido A', 0, 0, 0, 0),
(31, 1, 'Contenido B', 0, 0, 0, 0),
(45, 157, 'info_superior', 0, 0, 1, 0),
(46, 157, 'search', 0, 0, 1, 0),
(47, 157, 'Header Site Title', 0, 0, 1, 0),
(48, 157, 'Espacio 2', 0, 0, 1, 0),
(49, 157, 'Espacio 3', 0, 0, 1, 0),
(50, 157, 'Header Navigation', 0, 0, 1, 0),
(51, 157, 'Titulo', 0, 0, 0, 0),
(52, 157, 'Contenido', 0, 0, 0, 0),
(53, 157, 'Footer Contact', 0, 0, 1, 0),
(54, 157, 'Footer Navigation', 0, 0, 1, 0),
(55, 157, 'Footer Legal', 0, 0, 1, 0),
(67, 160, 'info_superior', 0, 0, 1, 0),
(68, 160, 'search', 0, 0, 1, 0),
(69, 160, 'Header Site Title', 0, 0, 1, 0),
(70, 160, 'Espacio 2', 0, 0, 1, 0),
(71, 160, 'Espacio 3', 0, 0, 1, 0),
(72, 160, 'Header Navigation', 0, 0, 1, 0),
(73, 160, 'Titulo', 0, 0, 0, 0),
(74, 160, 'Contenido', 0, 0, 0, 0),
(75, 160, 'Footer Contact', 0, 0, 1, 0),
(76, 160, 'Footer Navigation', 0, 0, 1, 0),
(77, 160, 'Footer Legal', 0, 0, 1, 0),
(78, 160, 'Contenido : 1', 0, 0, 0, 74),
(79, 160, 'Contenido : 2', 0, 0, 0, 74),
(124, 165, 'info_superior', 0, 0, 1, 0),
(125, 165, 'search', 0, 0, 1, 0),
(126, 165, 'Header Site Title', 0, 0, 1, 0),
(127, 165, 'Espacio 2', 0, 0, 1, 0),
(128, 165, 'Espacio 3', 0, 0, 1, 0),
(129, 165, 'Header Navigation', 0, 0, 1, 0),
(130, 165, 'Titulo', 0, 0, 0, 0),
(131, 165, 'Contenido', 0, 0, 0, 0),
(132, 165, 'Footer Contact', 0, 0, 1, 0),
(133, 165, 'Footer Navigation', 0, 0, 1, 0),
(134, 165, 'Footer Legal', 0, 0, 1, 0),
(135, 166, 'info_superior', 0, 0, 1, 0),
(136, 166, 'search', 0, 0, 1, 0),
(137, 166, 'Header Site Title', 0, 0, 1, 0),
(138, 166, 'Espacio 2', 0, 0, 1, 0),
(139, 166, 'Espacio 3', 0, 0, 1, 0),
(140, 166, 'Header Navigation', 0, 0, 1, 0),
(141, 166, 'Titulo', 0, 0, 0, 0),
(142, 166, 'Contenido', 0, 0, 0, 0),
(143, 166, 'Footer Contact', 0, 0, 1, 0),
(144, 166, 'Footer Navigation', 0, 0, 1, 0),
(145, 166, 'Footer Legal', 0, 0, 1, 0),
(146, 166, 'Contenido Lateral', 0, 0, 0, 0),
(147, 167, 'info_superior', 0, 0, 1, 0),
(148, 167, 'search', 0, 0, 1, 0),
(149, 167, 'Header Site Title', 0, 0, 1, 0),
(150, 167, 'Espacio 2', 0, 0, 1, 0),
(151, 167, 'Espacio 3', 0, 0, 1, 0),
(152, 167, 'Header Navigation', 0, 0, 1, 0),
(153, 167, 'Titulo', 0, 0, 0, 0),
(154, 167, 'Contenido Lateral', 0, 0, 0, 0),
(155, 167, 'Contenido', 0, 0, 0, 0),
(156, 167, 'Footer Contact', 0, 0, 1, 0),
(157, 167, 'Footer Navigation', 0, 0, 1, 0),
(158, 167, 'Footer Legal', 0, 0, 1, 0),
(159, 168, 'info_superior', 0, 0, 1, 0),
(160, 168, 'search', 0, 0, 1, 0),
(161, 168, 'Header Site Title', 0, 0, 1, 0),
(162, 168, 'Espacio 2', 0, 0, 1, 0),
(163, 168, 'Espacio 3', 0, 0, 1, 0),
(164, 168, 'Header Navigation', 0, 0, 1, 0),
(165, 168, 'Titulo', 0, 0, 0, 0),
(166, 168, 'Contenido', 0, 0, 0, 0),
(167, 168, 'Contenido Lateral', 0, 0, 0, 0),
(168, 168, 'Footer Contact', 0, 0, 1, 0),
(169, 168, 'Footer Navigation', 0, 0, 1, 0),
(170, 168, 'Footer Legal', 0, 0, 1, 0),
(171, 169, 'info_superior', 0, 0, 1, 0),
(172, 169, 'search', 0, 0, 1, 0),
(173, 169, 'Header Site Title', 0, 0, 1, 0),
(174, 169, 'Espacio 2', 0, 0, 1, 0),
(175, 169, 'Espacio 3', 0, 0, 1, 0),
(176, 169, 'Header Navigation', 0, 0, 1, 0),
(177, 169, 'Titulo', 0, 0, 0, 0),
(178, 169, 'Contenido', 0, 0, 0, 0),
(179, 169, 'Footer Contact', 0, 0, 1, 0),
(180, 169, 'Footer Navigation', 0, 0, 1, 0),
(181, 169, 'Footer Legal', 0, 0, 1, 0),
(182, 169, 'Contenido Lateral', 0, 0, 0, 0),
(195, 171, 'info_superior', 0, 0, 1, 0),
(196, 171, 'search', 0, 0, 1, 0),
(197, 171, 'Header Site Title', 0, 0, 1, 0),
(198, 171, 'Espacio 2', 0, 0, 1, 0),
(199, 171, 'Espacio 3', 0, 0, 1, 0),
(200, 171, 'Header Navigation', 0, 0, 1, 0),
(201, 171, 'Titulo', 0, 0, 0, 0),
(202, 171, 'Contenido', 0, 0, 0, 0),
(203, 171, 'Footer Contact', 0, 0, 1, 0),
(204, 171, 'Footer Navigation', 0, 0, 1, 0),
(205, 171, 'Footer Legal', 0, 0, 1, 0),
(206, 171, 'Contenido Lateral', 0, 0, 0, 0),
(207, 172, 'info_superior', 0, 0, 1, 0),
(208, 172, 'search', 0, 0, 1, 0),
(209, 172, 'Header Site Title', 0, 0, 1, 0),
(210, 172, 'Espacio 2', 0, 0, 1, 0),
(211, 172, 'Espacio 3', 0, 0, 1, 0),
(212, 172, 'Header Navigation', 0, 0, 1, 0),
(213, 172, 'Titulo', 0, 0, 0, 0),
(214, 172, 'Contenido', 0, 0, 0, 0),
(215, 172, 'Footer Contact', 0, 0, 1, 0),
(216, 172, 'Footer Navigation', 0, 0, 1, 0),
(217, 172, 'Footer Legal', 0, 0, 1, 0),
(218, 172, 'Contenido Lateral', 0, 0, 0, 0),
(219, 166, 'Contenido : 3', 0, 0, 0, 142),
(220, 166, 'Contenido : 4', 0, 0, 0, 142),
(221, 166, 'Contenido : 5', 0, 0, 0, 142),
(249, 142, 'Main', 0, 0, 0, 0),
(287, 1, 'Contenido A : 6', 0, 0, 0, 30),
(288, 1, 'Contenido A : 7', 0, 0, 0, 30),
(289, 160, 'Titulo : 8', 0, 0, 0, 73),
(290, 160, 'Titulo : 9', 0, 0, 0, 73),
(291, 1, 'Slider : 10', 0, 0, 0, 29),
(292, 1, 'Slider : 11', 0, 0, 0, 29),
(323, 191, 'info_superior', 0, 0, 1, 0),
(324, 191, 'search', 0, 0, 1, 0),
(325, 191, 'Header Site Title', 0, 0, 1, 0),
(326, 191, 'Espacio 2', 0, 0, 1, 0),
(327, 191, 'Espacio 3', 0, 0, 1, 0),
(328, 191, 'Header Navigation', 0, 0, 1, 0),
(329, 191, 'Titulo', 0, 0, 0, 0),
(330, 191, 'Contenido', 0, 0, 0, 0),
(331, 191, 'Footer Contact', 0, 0, 1, 0),
(332, 191, 'Footer Navigation', 0, 0, 1, 0),
(333, 191, 'Footer Legal', 0, 0, 1, 0),
(334, 191, 'Contenido : 12', 0, 0, 0, 330),
(335, 191, 'Contenido : 13', 0, 0, 0, 330),
(347, 193, 'info_superior', 0, 0, 1, 0),
(348, 193, 'search', 0, 0, 1, 0),
(349, 193, 'Header Site Title', 0, 0, 1, 0),
(350, 193, 'Espacio 2', 0, 0, 1, 0),
(351, 193, 'Espacio 3', 0, 0, 1, 0),
(352, 193, 'Header Navigation', 0, 0, 1, 0),
(353, 193, 'Titulo', 0, 0, 0, 0),
(354, 193, 'Contenido', 0, 0, 0, 0),
(355, 193, 'Footer Contact', 0, 0, 1, 0),
(356, 193, 'Footer Navigation', 0, 0, 1, 0),
(357, 193, 'Footer Legal', 0, 0, 1, 0),
(358, 194, 'info_superior', 0, 0, 1, 0),
(359, 194, 'search', 0, 0, 1, 0),
(360, 194, 'Header Site Title', 0, 0, 1, 0),
(361, 194, 'Espacio 2', 0, 0, 1, 0),
(362, 194, 'Espacio 3', 0, 0, 1, 0),
(363, 194, 'Header Navigation', 0, 0, 1, 0),
(364, 194, 'Titulo', 0, 0, 0, 0),
(365, 194, 'Contenido', 0, 0, 0, 0),
(366, 194, 'Footer Contact', 0, 0, 1, 0),
(367, 194, 'Footer Navigation', 0, 0, 1, 0),
(368, 194, 'Footer Legal', 0, 0, 1, 0),
(380, 196, 'info_superior', 0, 0, 1, 0),
(381, 196, 'search', 0, 0, 1, 0),
(382, 196, 'Header Site Title', 0, 0, 1, 0),
(383, 196, 'Espacio 2', 0, 0, 1, 0),
(384, 196, 'Espacio 3', 0, 0, 1, 0),
(385, 196, 'Header Navigation', 0, 0, 1, 0),
(386, 196, 'Titulo', 0, 0, 0, 0),
(387, 196, 'Contenido', 0, 0, 0, 0),
(388, 196, 'Footer Contact', 0, 0, 1, 0),
(389, 196, 'Footer Navigation', 0, 0, 1, 0),
(390, 196, 'Footer Legal', 0, 0, 1, 0),
(492, 204, 'info_superior', 0, 0, 1, 0),
(493, 204, 'search', 0, 0, 1, 0),
(494, 204, 'Header Site Title', 0, 0, 1, 0),
(495, 204, 'Espacio 2', 0, 0, 1, 0),
(496, 204, 'Espacio 3', 0, 0, 1, 0),
(497, 204, 'Header Navigation', 0, 0, 1, 0),
(498, 204, 'Titulo', 0, 0, 0, 0),
(499, 204, 'Contenido', 0, 0, 0, 0),
(500, 204, 'Footer Contact', 0, 0, 1, 0),
(501, 204, 'Footer Navigation', 0, 0, 1, 0),
(502, 204, 'Footer Legal', 0, 0, 1, 0),
(503, 204, 'Contenido Lateral', 0, 0, 0, 0),
(504, 212, 'info_superior', 0, 0, 1, 0),
(505, 212, 'search', 0, 0, 1, 0),
(506, 212, 'Header Site Title', 0, 0, 1, 0),
(507, 212, 'Espacio 2', 0, 0, 1, 0),
(508, 212, 'Espacio 3', 0, 0, 1, 0),
(509, 212, 'Header Navigation', 0, 0, 1, 0),
(510, 212, 'Titulo', 0, 0, 0, 0),
(511, 212, 'Contenido', 0, 0, 0, 0),
(512, 212, 'Footer Contact', 0, 0, 1, 0),
(513, 212, 'Footer Navigation', 0, 0, 1, 0),
(514, 212, 'Footer Legal', 0, 0, 1, 0),
(515, 213, 'info_superior', 0, 0, 1, 0),
(516, 213, 'search', 0, 0, 1, 0),
(517, 213, 'Header Site Title', 0, 0, 1, 0),
(518, 213, 'Espacio 2', 0, 0, 1, 0),
(519, 213, 'Espacio 3', 0, 0, 1, 0),
(520, 213, 'Header Navigation', 0, 0, 1, 0),
(521, 213, 'Titulo', 0, 0, 0, 0),
(522, 213, 'Contenido', 0, 0, 0, 0),
(523, 213, 'Footer Contact', 0, 0, 1, 0),
(524, 213, 'Footer Navigation', 0, 0, 1, 0),
(525, 213, 'Footer Legal', 0, 0, 1, 0),
(526, 214, 'info_superior', 0, 0, 1, 0),
(527, 214, 'search', 0, 0, 1, 0),
(528, 214, 'Header Site Title', 0, 0, 1, 0),
(529, 214, 'Header Navigation', 0, 0, 1, 0),
(530, 214, 'Titulo', 0, 0, 0, 0),
(531, 214, 'Contenido', 0, 0, 0, 0),
(532, 214, 'Contenido Lateral', 0, 0, 0, 0),
(533, 214, 'Footer Contact', 0, 0, 1, 0),
(534, 214, 'Footer Navigation', 0, 0, 1, 0),
(535, 214, 'Footer Legal', 0, 0, 1, 0),
(536, 214, 'Titulo : 14', 0, 0, 0, 530),
(537, 214, 'Titulo : 15', 0, 0, 0, 530),
(659, 225, 'info_superior', 0, 0, 1, 0),
(660, 225, 'search', 0, 0, 1, 0),
(661, 225, 'Header Site Title', 0, 0, 1, 0),
(662, 225, 'Header Navigation', 0, 0, 1, 0),
(663, 225, 'Titulo', 0, 0, 0, 0),
(664, 225, 'Contenido', 0, 0, 0, 0),
(665, 225, 'Contenido Lateral', 0, 0, 0, 0),
(666, 225, 'Footer Contact', 0, 0, 1, 0),
(667, 225, 'Footer Navigation', 0, 0, 1, 0),
(668, 225, 'Footer Legal', 0, 0, 1, 0),
(669, 226, 'Contenido', 0, 0, 0, 0),
(670, 226, 'info_superior', 0, 0, 1, 0),
(671, 226, 'search', 0, 0, 1, 0),
(672, 226, 'Header Site Title', 0, 0, 1, 0),
(673, 226, 'Header Navigation', 0, 0, 1, 0),
(674, 226, 'Titulo', 0, 0, 0, 0),
(675, 226, 'Titulo : 8', 0, 0, 0, 674),
(676, 226, 'Titulo : 9', 0, 0, 0, 674),
(677, 226, 'Contenido : 1', 0, 0, 0, 669),
(678, 226, 'Contenido : 2', 0, 0, 0, 669),
(679, 226, 'Footer Contact', 0, 0, 1, 0),
(680, 226, 'Footer Navigation', 0, 0, 1, 0),
(681, 226, 'Footer Legal', 0, 0, 1, 0),
(682, 227, 'Contenido', 0, 0, 0, 0),
(683, 227, 'info_superior', 0, 0, 1, 0),
(684, 227, 'search', 0, 0, 1, 0),
(685, 227, 'Header Site Title', 0, 0, 1, 0),
(686, 227, 'Header Navigation', 0, 0, 1, 0),
(687, 227, 'Titulo', 0, 0, 0, 0),
(688, 227, 'Titulo : 8', 0, 0, 0, 687),
(689, 227, 'Titulo : 9', 0, 0, 0, 687),
(690, 227, 'Contenido : 1', 0, 0, 0, 682),
(691, 227, 'Contenido : 2', 0, 0, 0, 682),
(692, 227, 'Footer Contact', 0, 0, 1, 0),
(693, 227, 'Footer Navigation', 0, 0, 1, 0),
(694, 227, 'Footer Legal', 0, 0, 1, 0),
(695, 228, 'Contenido', 0, 0, 0, 0),
(696, 228, 'info_superior', 0, 0, 1, 0),
(697, 228, 'search', 0, 0, 1, 0),
(698, 228, 'Header Site Title', 0, 0, 1, 0),
(699, 228, 'Header Navigation', 0, 0, 1, 0),
(700, 228, 'Titulo', 0, 0, 0, 0),
(701, 228, 'Titulo : 8', 0, 0, 0, 700),
(702, 228, 'Titulo : 9', 0, 0, 0, 700),
(703, 228, 'Contenido : 1', 0, 0, 0, 695),
(704, 228, 'Contenido : 2', 0, 0, 0, 695),
(705, 228, 'Footer Contact', 0, 0, 1, 0),
(706, 228, 'Footer Navigation', 0, 0, 1, 0),
(707, 228, 'Footer Legal', 0, 0, 1, 0),
(708, 229, 'Contenido', 0, 0, 0, 0),
(709, 229, 'info_superior', 0, 0, 1, 0),
(710, 229, 'search', 0, 0, 1, 0),
(711, 229, 'Header Site Title', 0, 0, 1, 0),
(712, 229, 'Header Navigation', 0, 0, 1, 0),
(713, 229, 'Titulo', 0, 0, 0, 0),
(714, 229, 'Titulo : 8', 0, 0, 0, 713),
(715, 229, 'Titulo : 9', 0, 0, 0, 713),
(716, 229, 'Contenido : 1', 0, 0, 0, 708),
(717, 229, 'Contenido : 2', 0, 0, 0, 708),
(718, 229, 'Footer Contact', 0, 0, 1, 0),
(719, 229, 'Footer Navigation', 0, 0, 1, 0),
(720, 229, 'Footer Legal', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atAddress`
--

CREATE TABLE `atAddress` (
  `avID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atAddressCustomCountries`
--

CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atAddressSettings`
--

CREATE TABLE `atAddressSettings` (
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atBoolean`
--

CREATE TABLE `atBoolean` (
  `avID` int(10) UNSIGNED NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atBoolean`
--

INSERT INTO `atBoolean` (`avID`, `value`) VALUES
(9, 1),
(16, 1),
(18, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(42, 1),
(43, 1),
(47, 1),
(51, 1),
(99, 1),
(107, 1),
(108, 1),
(109, 1),
(123, 0),
(124, 0),
(125, 1),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(162, 0),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(177, 0),
(178, 0),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(228, 0),
(229, 0),
(244, 0),
(279, 0),
(282, 1),
(285, 1),
(322, 1),
(323, 1),
(355, 0),
(357, 0),
(374, 0),
(375, 0),
(376, 1),
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 0),
(383, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atBooleanSettings`
--

CREATE TABLE `atBooleanSettings` (
  `akID` int(10) UNSIGNED NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atBooleanSettings`
--

INSERT INTO `atBooleanSettings` (`akID`, `akCheckedByDefault`) VALUES
(5, 0),
(6, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atDateTime`
--

CREATE TABLE `atDateTime` (
  `avID` int(10) UNSIGNED NOT NULL,
  `value` datetime DEFAULT '1000-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atDateTimeSettings`
--

CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) UNSIGNED NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atDefault`
--

CREATE TABLE `atDefault` (
  `avID` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atDefault`
--

INSERT INTO `atDefault` (`avID`, `value`) VALUES
(1, 'fa fa-th-large'),
(2, 'pages, add page, delete page, copy, move, alias'),
(3, 'pages, add page, delete page, copy, move, alias'),
(4, 'pages, add page, delete page, copy, move, alias, bulk'),
(5, 'find page, search page, search, find, pages, sitemap'),
(6, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(7, 'file, file attributes, title, attribute, description, rename'),
(8, 'files, category, categories'),
(10, 'new file set'),
(11, 'users, groups, people, find, delete user, remove user, change password, password'),
(12, 'find, search, people, delete user, remove user, change password, password'),
(13, 'user, group, people, permissions, expire, badges'),
(14, 'user attributes, user data, gather data, registration data'),
(15, 'new user, create'),
(17, 'new user group, new group, group, create'),
(19, 'group set'),
(20, 'community, points, karma'),
(21, 'action, community actions'),
(22, 'forms, log, error, email, mysql, exception, survey'),
(23, 'forms, questions, response, data'),
(24, 'questions, quiz, response'),
(25, 'forms, log, error, email, mysql, exception, survey, history'),
(26, 'new theme, theme, active theme, change theme, template, css'),
(27, 'page types'),
(36, 'page attributes, custom'),
(37, 'single, page, custom, application'),
(38, 'atom, rss, feed, syndication'),
(39, 'icon-bullhorn'),
(40, 'add workflow, remove workflow'),
(41, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(44, 'edit stacks, view stacks, all stacks'),
(45, 'block, refresh, custom'),
(46, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),
(48, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(49, 'update, upgrade'),
(50, 'concrete5.org, my account, marketplace'),
(52, 'buy theme, new theme, marketplace, template'),
(53, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(54, 'dashboard, configuration'),
(55, 'website name, title'),
(56, 'accessibility, easy mode'),
(57, 'sharing, facebook, twitter'),
(58, 'logo, favicon, iphone, icon, bookmark'),
(59, 'tinymce, content block, fonts, editor, content, overlay'),
(60, 'translate, translation, internationalization, multilingual'),
(61, 'timezone, profile, locale'),
(62, 'multilingual, localization, internationalization, i18n'),
(63, 'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view'),
(64, 'bulk, seo, change keywords, engine, optimization, search'),
(65, 'traffic, statistics, google analytics, quant, pageviews, hits'),
(66, 'pretty, slug'),
(67, 'configure search, site search, search option'),
(68, 'file options, file manager, upload, modify'),
(69, 'security, files, media, extension, manager, upload'),
(70, 'images, picture, responsive, retina'),
(71, 'uploading, upload, images, image, resizing, manager'),
(72, 'security, alternate storage, hide files'),
(73, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(74, 'cache option, turn off cache, no cache, page cache, caching'),
(75, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(76, 'queries, database, mysql'),
(77, 'editors, hide site, offline, private, public, access'),
(78, 'security, actions, administrator, admin, package, marketplace, search'),
(79, 'security, lock ip, lock out, block ip, address, restrict, access'),
(80, 'security, registration'),
(81, 'antispam, block spam, security'),
(82, 'lock site, under construction, hide, hidden'),
(83, 'profile, login, redirect, specific, dashboard, administrators'),
(84, 'member profile, member page, community, forums, social, avatar'),
(85, 'signup, new user, community, public registration, public, registration'),
(86, 'auth, authentication, types, oauth, facebook, login, registration'),
(87, 'smtp, mail settings'),
(88, 'email server, mail settings, mail configuration, external, internal'),
(89, 'test smtp, test mail'),
(90, 'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(91, 'conversations'),
(92, 'conversations'),
(93, 'conversations ratings, ratings, community, community points'),
(94, 'conversations bad words, banned words, banned, bad words, bad, words, list'),
(95, 'attribute configuration'),
(96, 'attributes, sets'),
(97, 'attributes, types'),
(98, 'topics, tags, taxonomy'),
(100, 'overrides, system info, debug, support, help'),
(101, 'errors, exceptions, develop, support, help'),
(102, 'email, logging, logs, smtp, pop, errors, mysql, log'),
(103, 'network, proxy server'),
(104, 'database, entities, doctrine, orm'),
(105, 'export, backup, database, sql, mysql, encryption, restore'),
(106, 'upgrade, new version, update'),
(110, 'fa fa-edit'),
(111, 'fa fa-trash-o'),
(112, 'fa fa-th'),
(113, 'fa fa-briefcase'),
(120, ''),
(121, ''),
(122, ''),
(324, 'Noticias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atFile`
--

CREATE TABLE `atFile` (
  `avID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atFile`
--

INSERT INTO `atFile` (`avID`, `fID`) VALUES
(144, 0),
(309, 0),
(312, 0),
(315, 0),
(147, 5),
(153, 5),
(156, 5),
(173, 5),
(198, 5),
(201, 5),
(159, 6),
(176, 6),
(195, 6),
(204, 14),
(209, 14),
(212, 14),
(318, 14),
(321, 14),
(342, 14),
(215, 15),
(327, 15),
(220, 16),
(296, 16),
(299, 16),
(330, 16),
(225, 17),
(281, 17),
(284, 17),
(290, 17),
(293, 17),
(302, 17),
(306, 17),
(333, 17),
(373, 29),
(370, 32),
(336, 33),
(367, 37),
(339, 38),
(361, 38),
(364, 38);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atNumber`
--

CREATE TABLE `atNumber` (
  `avID` int(10) UNSIGNED NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atNumber`
--

INSERT INTO `atNumber` (`avID`, `value`) VALUES
(114, '371.0000'),
(115, '144.0000'),
(116, '371.0000'),
(117, '144.0000'),
(118, '371.0000'),
(119, '144.0000'),
(140, '2072.0000'),
(141, '1242.0000'),
(148, '1000.0000'),
(149, '672.0000'),
(160, '1000.0000'),
(161, '350.0000'),
(169, '1000.0000'),
(170, '350.0000'),
(179, '64.0000'),
(180, '64.0000'),
(185, '300.0000'),
(186, '150.0000'),
(187, '300.0000'),
(188, '150.0000'),
(189, '300.0000'),
(190, '150.0000'),
(191, '300.0000'),
(192, '150.0000'),
(205, '2048.0000'),
(206, '1535.0000'),
(216, '1920.0000'),
(217, '1200.0000'),
(221, '1366.0000'),
(222, '768.0000'),
(226, '1920.0000'),
(227, '1080.0000'),
(230, '128.0000'),
(231, '128.0000'),
(232, '128.0000'),
(233, '128.0000'),
(234, '300.0000'),
(235, '64.0000'),
(236, '800.0000'),
(237, '538.0000'),
(238, '800.0000'),
(239, '538.0000'),
(240, '1000.0000'),
(241, '500.0000'),
(242, '1000.0000'),
(243, '500.0000'),
(245, '2664.0000'),
(246, '2664.0000'),
(247, '2880.0000'),
(248, '2880.0000'),
(249, '2664.0000'),
(250, '2664.0000'),
(251, '2664.0000'),
(252, '2664.0000'),
(253, '2664.0000'),
(254, '2664.0000'),
(255, '2664.0000'),
(256, '2664.0000'),
(257, '2664.0000'),
(258, '2664.0000'),
(259, '2664.0000'),
(260, '2664.0000'),
(261, '2880.0000'),
(262, '2880.0000'),
(263, '1366.0000'),
(264, '768.0000'),
(265, '2664.0000'),
(266, '2664.0000'),
(267, '2664.0000'),
(268, '2664.0000'),
(269, '2664.0000'),
(270, '2664.0000'),
(271, '2664.0000'),
(272, '2664.0000'),
(273, '2664.0000'),
(274, '2664.0000'),
(275, '2664.0000'),
(276, '2664.0000'),
(277, '1000.0000'),
(278, '260.0000'),
(286, '1000.0000'),
(287, '143.0000'),
(343, '1000.0000'),
(344, '170.0000'),
(345, '371.0000'),
(346, '144.0000'),
(347, '300.0000'),
(348, '150.0000'),
(349, '300.0000'),
(350, '150.0000'),
(351, '300.0000'),
(352, '150.0000'),
(353, '324.0000'),
(354, '364.0000'),
(384, '1000.0000'),
(385, '170.0000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atSelectedTopics`
--

CREATE TABLE `atSelectedTopics` (
  `avID` int(10) UNSIGNED NOT NULL,
  `TopicNodeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atSelectedTopics`
--

INSERT INTO `atSelectedTopics` (`avID`, `TopicNodeID`) VALUES
(145, 7),
(151, 7),
(154, 7),
(171, 7),
(196, 7),
(199, 7),
(218, 7),
(294, 7),
(297, 7),
(316, 7),
(320, 7),
(328, 7),
(331, 7),
(340, 7),
(368, 7),
(371, 7),
(157, 8),
(174, 8),
(193, 8),
(202, 8),
(207, 8),
(210, 8),
(213, 8),
(223, 8),
(280, 8),
(283, 8),
(288, 8),
(291, 8),
(300, 8),
(304, 8),
(325, 8),
(334, 8),
(359, 8),
(362, 8),
(368, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atSelectOptions`
--

CREATE TABLE `atSelectOptions` (
  `ID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atSelectOptions`
--

INSERT INTO `atSelectOptions` (`ID`, `akID`, `value`, `displayOrder`, `isEndUserAdded`) VALUES
(1, 8, 'Noticias', 0, 1),
(2, 8, 'Prueba', 1, 1),
(3, 8, 'Ciencias', 2, 1),
(4, 8, 'Salud', 3, 1),
(5, 8, 'Nacionales', 4, 1),
(6, 8, 'TICs', 5, 1),
(7, 8, 'mejoras', 6, 1),
(8, 8, 'tecnología', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atSelectOptionsSelected`
--

CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) UNSIGNED NOT NULL,
  `atSelectOptionID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atSelectOptionsSelected`
--

INSERT INTO `atSelectOptionsSelected` (`avID`, `atSelectOptionID`) VALUES
(126, 1),
(152, 1),
(155, 2),
(172, 3),
(175, 4),
(194, 4),
(197, 5),
(203, 5),
(208, 5),
(211, 5),
(214, 5),
(326, 5),
(335, 5),
(200, 6),
(219, 6),
(295, 6),
(298, 6),
(317, 6),
(319, 6),
(332, 6),
(341, 6),
(363, 7),
(369, 8),
(372, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atSelectSettings`
--

CREATE TABLE `atSelectSettings` (
  `akID` int(10) UNSIGNED NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atSelectSettings`
--

INSERT INTO `atSelectSettings` (`akID`, `akSelectAllowMultipleValues`, `akSelectOptionDisplayOrder`, `akSelectAllowOtherValues`) VALUES
(8, 1, 'display_asc', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atSocialLinks`
--

CREATE TABLE `atSocialLinks` (
  `avsID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atTextareaSettings`
--

CREATE TABLE `atTextareaSettings` (
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atTextareaSettings`
--

INSERT INTO `atTextareaSettings` (`akID`, `akTextareaDisplayMode`, `akTextareaDisplayModeCustomOptions`) VALUES
(2, '', ''),
(3, '', ''),
(4, '', ''),
(7, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atTopicSettings`
--

CREATE TABLE `atTopicSettings` (
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `atTopicSettings`
--

INSERT INTO `atTopicSettings` (`akID`, `akTopicParentNodeID`, `akTopicTreeID`) VALUES
(18, 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AttributeKeyCategories`
--

CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AttributeKeyCategories`
--

INSERT INTO `AttributeKeyCategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AttributeKeys`
--

CREATE TABLE `AttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) UNSIGNED DEFAULT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AttributeKeys`
--

INSERT INTO `AttributeKeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1, 'meta_title', 'Meta Title', 1, 1, 1, 0, 0, 1, 1, 1, 0),
(2, 'meta_description', 'Meta Description', 1, 1, 1, 0, 0, 1, 2, 1, 0),
(3, 'meta_keywords', 'Meta Keywords', 1, 1, 1, 0, 0, 1, 2, 1, 0),
(4, 'icon_dashboard', 'Dashboard Icon', 0, 0, 1, 1, 0, 1, 2, 1, 0),
(5, 'exclude_nav', 'Exclude From Nav', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(6, 'exclude_page_list', 'Exclude From Page List', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(7, 'header_extra_content', 'Header Extra Content', 1, 1, 1, 0, 0, 1, 2, 1, 0),
(8, 'tags', 'Tags', 1, 1, 1, 0, 0, 1, 8, 1, 0),
(9, 'is_featured', 'Is Featured', 1, 0, 1, 0, 0, 1, 3, 1, 0),
(10, 'exclude_search_index', 'Exclude From Search Index', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(11, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(12, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 0, 0, 0, 0, 1, 3, 2, 0),
(13, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 0, 0, 0, 0, 1, 3, 2, 0),
(14, 'width', 'Width', 1, 1, 1, 0, 0, 1, 6, 3, 0),
(15, 'height', 'Height', 1, 1, 1, 0, 0, 1, 6, 3, 0),
(16, 'account_profile_links', 'Personal Links', 0, 0, 0, 0, 0, 1, 11, 2, 0),
(17, 'duration', 'Duration', 1, 1, 1, 0, 0, 1, 6, 3, 0),
(18, 'categorias', 'Categorías', 1, 1, 0, 0, 0, 1, 10, 1, 0),
(19, 'thumbnail', 'Imagen Miniatura', 1, 0, 0, 0, 0, 1, 5, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AttributeSetKeys`
--

CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `asID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AttributeSetKeys`
--

INSERT INTO `AttributeSetKeys` (`akID`, `asID`, `displayOrder`) VALUES
(1, 1, 1),
(2, 1, 2),
(7, 1, 3),
(11, 1, 4),
(9, 2, 1),
(5, 2, 2),
(6, 2, 3),
(10, 2, 4),
(8, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AttributeSets`
--

CREATE TABLE `AttributeSets` (
  `asID` int(10) UNSIGNED NOT NULL,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AttributeSets`
--

INSERT INTO `AttributeSets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1, 'SEO', 'seo', 1, 0, 0, 0),
(2, 'Navigation and Indexing', 'navigation', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AttributeTypeCategories`
--

CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akCategoryID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AttributeTypeCategories`
--

INSERT INTO `AttributeTypeCategories` (`atID`, `akCategoryID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(10, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(6, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(6, 3),
(7, 3),
(8, 3),
(10, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AttributeTypes`
--

CREATE TABLE `AttributeTypes` (
  `atID` int(10) UNSIGNED NOT NULL,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AttributeTypes`
--

INSERT INTO `AttributeTypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', 0),
(2, 'textarea', 'Text Area', 0),
(3, 'boolean', 'Checkbox', 0),
(4, 'date_time', 'Date/Time', 0),
(5, 'image_file', 'Image/File', 0),
(6, 'number', 'Number', 0),
(7, 'rating', 'Rating', 0),
(8, 'select', 'Select', 0),
(9, 'address', 'Address', 0),
(10, 'topics', 'Topics', 0),
(11, 'social_links', 'Social Links', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AttributeValues`
--

CREATE TABLE `AttributeValues` (
  `avID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `atID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AttributeValues`
--

INSERT INTO `AttributeValues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1, 4, '2018-05-16 12:10:34', 1, 2),
(2, 3, '2018-05-16 12:10:34', 1, 2),
(3, 3, '2018-05-16 12:10:35', 1, 2),
(4, 3, '2018-05-16 12:10:35', 1, 2),
(5, 3, '2018-05-16 12:10:35', 1, 2),
(6, 3, '2018-05-16 12:10:35', 1, 2),
(7, 3, '2018-05-16 12:10:35', 1, 2),
(8, 3, '2018-05-16 12:10:35', 1, 2),
(9, 5, '2018-05-16 12:10:35', 1, 3),
(10, 3, '2018-05-16 12:10:35', 1, 2),
(11, 3, '2018-05-16 12:10:36', 1, 2),
(12, 3, '2018-05-16 12:10:36', 1, 2),
(13, 3, '2018-05-16 12:10:36', 1, 2),
(14, 3, '2018-05-16 12:10:36', 1, 2),
(15, 3, '2018-05-16 12:10:36', 1, 2),
(16, 5, '2018-05-16 12:10:36', 1, 3),
(17, 3, '2018-05-16 12:10:37', 1, 2),
(18, 5, '2018-05-16 12:10:37', 1, 3),
(19, 3, '2018-05-16 12:10:37', 1, 2),
(20, 3, '2018-05-16 12:10:37', 1, 2),
(21, 3, '2018-05-16 12:10:37', 1, 2),
(22, 3, '2018-05-16 12:10:37', 1, 2),
(23, 3, '2018-05-16 12:10:37', 1, 2),
(24, 3, '2018-05-16 12:10:38', 1, 2),
(25, 3, '2018-05-16 12:10:38', 1, 2),
(26, 3, '2018-05-16 12:10:38', 1, 2),
(27, 3, '2018-05-16 12:10:38', 1, 2),
(28, 5, '2018-05-16 12:10:38', 1, 3),
(29, 5, '2018-05-16 12:10:38', 1, 3),
(30, 5, '2018-05-16 12:10:39', 1, 3),
(31, 5, '2018-05-16 12:10:39', 1, 3),
(32, 5, '2018-05-16 12:10:39', 1, 3),
(33, 5, '2018-05-16 12:10:39', 1, 3),
(34, 5, '2018-05-16 12:10:39', 1, 3),
(35, 5, '2018-05-16 12:10:39', 1, 3),
(36, 3, '2018-05-16 12:10:39', 1, 2),
(37, 3, '2018-05-16 12:10:40', 1, 2),
(38, 3, '2018-05-16 12:10:40', 1, 2),
(39, 4, '2018-05-16 12:10:40', 1, 2),
(40, 3, '2018-05-16 12:10:40', 1, 2),
(41, 3, '2018-05-16 12:10:40', 1, 2),
(42, 5, '2018-05-16 12:10:41', 1, 3),
(43, 10, '2018-05-16 12:10:41', 1, 3),
(44, 3, '2018-05-16 12:10:41', 1, 2),
(45, 3, '2018-05-16 12:10:41', 1, 2),
(46, 3, '2018-05-16 12:10:41', 1, 2),
(47, 5, '2018-05-16 12:10:41', 1, 3),
(48, 3, '2018-05-16 12:10:41', 1, 2),
(49, 3, '2018-05-16 12:10:42', 1, 2),
(50, 3, '2018-05-16 12:10:42', 1, 2),
(51, 5, '2018-05-16 12:10:42', 1, 3),
(52, 3, '2018-05-16 12:10:42', 1, 2),
(53, 3, '2018-05-16 12:10:42', 1, 2),
(54, 3, '2018-05-16 12:10:42', 1, 2),
(55, 3, '2018-05-16 12:10:43', 1, 2),
(56, 3, '2018-05-16 12:10:43', 1, 2),
(57, 3, '2018-05-16 12:10:43', 1, 2),
(58, 3, '2018-05-16 12:10:43', 1, 2),
(59, 3, '2018-05-16 12:10:43', 1, 2),
(60, 3, '2018-05-16 12:10:43', 1, 2),
(61, 3, '2018-05-16 12:10:43', 1, 2),
(62, 3, '2018-05-16 12:10:44', 1, 2),
(63, 3, '2018-05-16 12:10:44', 1, 2),
(64, 3, '2018-05-16 12:10:44', 1, 2),
(65, 3, '2018-05-16 12:10:44', 1, 2),
(66, 3, '2018-05-16 12:10:44', 1, 2),
(67, 3, '2018-05-16 12:10:44', 1, 2),
(68, 3, '2018-05-16 12:10:44', 1, 2),
(69, 3, '2018-05-16 12:10:44', 1, 2),
(70, 3, '2018-05-16 12:10:45', 1, 2),
(71, 3, '2018-05-16 12:10:45', 1, 2),
(72, 3, '2018-05-16 12:10:45', 1, 2),
(73, 3, '2018-05-16 12:10:45', 1, 2),
(74, 3, '2018-05-16 12:10:45', 1, 2),
(75, 3, '2018-05-16 12:10:45', 1, 2),
(76, 3, '2018-05-16 12:10:45', 1, 2),
(77, 3, '2018-05-16 12:10:45', 1, 2),
(78, 3, '2018-05-16 12:10:46', 1, 2),
(79, 3, '2018-05-16 12:10:46', 1, 2),
(80, 3, '2018-05-16 12:10:46', 1, 2),
(81, 3, '2018-05-16 12:10:46', 1, 2),
(82, 3, '2018-05-16 12:10:46', 1, 2),
(83, 3, '2018-05-16 12:10:46', 1, 2),
(84, 3, '2018-05-16 12:10:46', 1, 2),
(85, 3, '2018-05-16 12:10:47', 1, 2),
(86, 3, '2018-05-16 12:10:47', 1, 2),
(87, 3, '2018-05-16 12:10:47', 1, 2),
(88, 3, '2018-05-16 12:10:47', 1, 2),
(89, 3, '2018-05-16 12:10:47', 1, 2),
(90, 3, '2018-05-16 12:10:47', 1, 2),
(91, 3, '2018-05-16 12:10:48', 1, 2),
(92, 3, '2018-05-16 12:10:48', 1, 2),
(93, 3, '2018-05-16 12:10:48', 1, 2),
(94, 3, '2018-05-16 12:10:48', 1, 2),
(95, 3, '2018-05-16 12:10:48', 1, 2),
(96, 3, '2018-05-16 12:10:48', 1, 2),
(97, 3, '2018-05-16 12:10:48', 1, 2),
(98, 3, '2018-05-16 12:10:48', 1, 2),
(99, 10, '2018-05-16 12:10:49', 1, 3),
(100, 3, '2018-05-16 12:10:49', 1, 2),
(101, 3, '2018-05-16 12:10:49', 1, 2),
(102, 3, '2018-05-16 12:10:49', 1, 2),
(103, 3, '2018-05-16 12:10:49', 1, 2),
(104, 3, '2018-05-16 12:10:49', 1, 2),
(105, 3, '2018-05-16 12:10:49', 1, 2),
(106, 3, '2018-05-16 12:10:49', 1, 2),
(107, 5, '2018-05-16 12:10:50', 1, 3),
(108, 5, '2018-05-16 12:10:51', 1, 3),
(109, 10, '2018-05-16 12:10:51', 1, 3),
(110, 4, '2018-05-16 12:10:58', 1, 2),
(111, 4, '2018-05-16 12:10:58', 1, 2),
(112, 4, '2018-05-16 12:10:58', 1, 2),
(113, 4, '2018-05-16 12:10:59', 1, 2),
(114, 14, '2018-05-16 14:01:46', 1, 6),
(115, 15, '2018-05-16 14:01:47', 1, 6),
(116, 14, '2018-05-16 14:02:10', 1, 6),
(117, 15, '2018-05-16 14:02:10', 1, 6),
(118, 14, '2018-05-16 14:03:13', 1, 6),
(119, 15, '2018-05-16 14:03:13', 1, 6),
(120, 1, '2018-05-16 14:25:55', 1, 1),
(121, 2, '2018-05-16 14:25:55', 1, 2),
(122, 7, '2018-05-16 14:25:55', 1, 2),
(123, 11, '2018-05-16 14:25:55', 1, 3),
(124, 5, '2018-05-16 14:43:49', 1, 3),
(125, 5, '2018-05-16 15:21:13', 1, 3),
(126, 8, '2018-05-16 15:21:32', 1, 8),
(127, 5, '2018-05-16 15:46:23', 1, 3),
(128, 5, '2018-05-16 15:47:16', 1, 3),
(129, 5, '2018-05-16 15:48:19', 1, 3),
(130, 5, '2018-05-17 09:30:11', 1, 3),
(131, 5, '2018-05-17 09:30:32', 1, 3),
(132, 5, '2018-05-17 10:14:16', 1, 3),
(133, 5, '2018-05-17 10:17:30', 1, 3),
(134, 5, '2018-05-17 10:35:52', 1, 3),
(135, 5, '2018-05-17 10:41:49', 1, 3),
(136, 5, '2018-05-17 10:42:29', 1, 3),
(137, 5, '2018-05-17 10:43:39', 1, 3),
(138, 5, '2018-05-17 10:44:57', 1, 3),
(139, 5, '2018-05-17 10:46:12', 1, 3),
(140, 14, '2018-05-17 11:00:25', 1, 6),
(141, 15, '2018-05-17 11:00:25', 1, 6),
(142, 18, '2018-05-17 11:14:23', 1, 10),
(143, 8, '2018-05-17 11:14:23', 1, 8),
(144, 19, '2018-05-17 11:14:23', 1, 5),
(145, 18, '2018-05-17 11:15:33', 1, 10),
(146, 8, '2018-05-17 11:15:33', 1, 8),
(147, 19, '2018-05-17 11:15:33', 1, 5),
(148, 14, '2018-05-17 11:16:32', 1, 6),
(149, 15, '2018-05-17 11:16:32', 1, 6),
(150, 8, '2018-05-17 11:23:02', 1, 8),
(151, 18, '2018-05-17 11:24:36', 1, 10),
(152, 8, '2018-05-17 11:24:36', 1, 8),
(153, 19, '2018-05-17 11:24:37', 1, 5),
(154, 18, '2018-05-17 11:27:33', 1, 10),
(155, 8, '2018-05-17 11:27:33', 1, 8),
(156, 19, '2018-05-17 11:27:34', 1, 5),
(157, 18, '2018-05-17 11:32:23', 1, 10),
(158, 8, '2018-05-17 11:32:24', 1, 8),
(159, 19, '2018-05-17 11:32:24', 1, 5),
(160, 14, '2018-05-17 11:33:34', 1, 6),
(161, 15, '2018-05-17 11:33:35', 1, 6),
(162, 5, '2018-05-17 11:35:06', 1, 3),
(163, 5, '2018-05-17 11:42:18', 1, 3),
(164, 5, '2018-05-17 11:42:19', 1, 3),
(165, 5, '2018-05-17 11:42:20', 1, 3),
(166, 5, '2018-05-17 11:42:21', 1, 3),
(167, 5, '2018-05-17 11:42:22', 1, 3),
(168, 5, '2018-05-17 11:42:23', 1, 3),
(169, 14, '2018-05-17 12:03:45', 1, 6),
(170, 15, '2018-05-17 12:03:45', 1, 6),
(171, 18, '2018-05-18 08:09:26', 1, 10),
(172, 8, '2018-05-18 08:09:26', 1, 8),
(173, 19, '2018-05-18 08:09:26', 1, 5),
(174, 18, '2018-05-18 08:11:23', 1, 10),
(175, 8, '2018-05-18 08:11:23', 1, 8),
(176, 19, '2018-05-18 08:11:23', 1, 5),
(177, 5, '2018-05-18 09:56:03', 1, 3),
(178, 5, '2018-05-18 10:18:38', 1, 3),
(179, 14, '2018-05-18 10:25:09', 1, 6),
(180, 15, '2018-05-18 10:25:09', 1, 6),
(181, 5, '2018-05-18 10:46:15', 1, 3),
(182, 5, '2018-05-18 10:46:55', 1, 3),
(183, 5, '2018-05-18 10:47:15', 1, 3),
(184, 5, '2018-05-18 10:47:37', 1, 3),
(185, 14, '2018-05-18 10:55:45', 1, 6),
(186, 15, '2018-05-18 10:55:45', 1, 6),
(187, 14, '2018-05-18 10:56:06', 1, 6),
(188, 15, '2018-05-18 10:56:06', 1, 6),
(189, 14, '2018-05-18 10:56:28', 1, 6),
(190, 15, '2018-05-18 10:56:28', 1, 6),
(191, 14, '2018-05-18 10:56:50', 1, 6),
(192, 15, '2018-05-18 10:56:50', 1, 6),
(193, 18, '2018-05-18 11:15:25', 1, 10),
(194, 8, '2018-05-18 11:15:25', 1, 8),
(195, 19, '2018-05-18 11:15:25', 1, 5),
(196, 18, '2018-05-18 11:17:40', 1, 10),
(197, 8, '2018-05-18 11:17:40', 1, 8),
(198, 19, '2018-05-18 11:17:40', 1, 5),
(199, 18, '2018-05-18 11:23:50', 1, 10),
(200, 8, '2018-05-18 11:23:50', 1, 8),
(201, 19, '2018-05-18 11:23:50', 1, 5),
(202, 18, '2018-05-18 11:25:28', 1, 10),
(203, 8, '2018-05-18 11:25:28', 1, 8),
(204, 19, '2018-05-18 11:25:28', 1, 5),
(205, 14, '2018-05-18 11:28:07', 1, 6),
(206, 15, '2018-05-18 11:28:07', 1, 6),
(207, 18, '2018-05-18 11:29:30', 1, 10),
(208, 8, '2018-05-18 11:29:30', 1, 8),
(209, 19, '2018-05-18 11:29:30', 1, 5),
(210, 18, '2018-05-18 11:29:47', 1, 10),
(211, 8, '2018-05-18 11:29:47', 1, 8),
(212, 19, '2018-05-18 11:29:47', 1, 5),
(213, 18, '2018-05-18 11:29:55', 1, 10),
(214, 8, '2018-05-18 11:29:55', 1, 8),
(215, 19, '2018-05-18 11:29:55', 1, 5),
(216, 14, '2018-05-18 11:30:40', 1, 6),
(217, 15, '2018-05-18 11:30:40', 1, 6),
(218, 18, '2018-05-18 11:32:40', 1, 10),
(219, 8, '2018-05-18 11:32:40', 1, 8),
(220, 19, '2018-05-18 11:32:40', 1, 5),
(221, 14, '2018-05-18 11:33:52', 1, 6),
(222, 15, '2018-05-18 11:33:52', 1, 6),
(223, 18, '2018-05-18 11:34:45', 1, 10),
(224, 8, '2018-05-18 11:34:45', 1, 8),
(225, 19, '2018-05-18 11:34:45', 1, 5),
(226, 14, '2018-05-18 11:35:27', 1, 6),
(227, 15, '2018-05-18 11:35:27', 1, 6),
(228, 5, '2018-05-18 11:39:56', 1, 3),
(229, 5, '2018-05-18 11:40:22', 1, 3),
(230, 14, '2018-05-18 11:44:49', 1, 6),
(231, 15, '2018-05-18 11:44:50', 1, 6),
(232, 14, '2018-05-18 11:46:18', 1, 6),
(233, 15, '2018-05-18 11:46:19', 1, 6),
(234, 14, '2018-05-18 11:49:11', 1, 6),
(235, 15, '2018-05-18 11:49:11', 1, 6),
(236, 14, '2018-05-18 11:54:58', 1, 6),
(237, 15, '2018-05-18 11:54:58', 1, 6),
(238, 14, '2018-05-18 11:55:08', 1, 6),
(239, 15, '2018-05-18 11:55:08', 1, 6),
(240, 14, '2018-05-18 11:57:05', 1, 6),
(241, 15, '2018-05-18 11:57:05', 1, 6),
(242, 14, '2018-05-18 11:57:42', 1, 6),
(243, 15, '2018-05-18 11:57:42', 1, 6),
(244, 5, '2018-05-18 12:00:15', 1, 3),
(245, 14, '2018-05-18 12:11:13', 1, 6),
(246, 15, '2018-05-18 12:11:13', 1, 6),
(247, 14, '2018-05-18 12:11:16', 1, 6),
(248, 15, '2018-05-18 12:11:16', 1, 6),
(249, 14, '2018-05-18 12:11:18', 1, 6),
(250, 15, '2018-05-18 12:11:18', 1, 6),
(251, 14, '2018-05-18 12:11:20', 1, 6),
(252, 15, '2018-05-18 12:11:21', 1, 6),
(253, 14, '2018-05-18 12:11:23', 1, 6),
(254, 15, '2018-05-18 12:11:23', 1, 6),
(255, 14, '2018-05-18 12:11:25', 1, 6),
(256, 15, '2018-05-18 12:11:25', 1, 6),
(257, 14, '2018-05-18 12:11:28', 1, 6),
(258, 15, '2018-05-18 12:11:28', 1, 6),
(259, 14, '2018-05-18 12:11:30', 1, 6),
(260, 15, '2018-05-18 12:11:31', 1, 6),
(261, 14, '2018-05-18 12:11:33', 1, 6),
(262, 15, '2018-05-18 12:11:33', 1, 6),
(263, 14, '2018-05-18 12:11:36', 1, 6),
(264, 15, '2018-05-18 12:11:36', 1, 6),
(265, 14, '2018-05-18 12:11:37', 1, 6),
(266, 15, '2018-05-18 12:11:37', 1, 6),
(267, 14, '2018-05-18 12:11:39', 1, 6),
(268, 15, '2018-05-18 12:11:39', 1, 6),
(269, 14, '2018-05-18 12:11:42', 1, 6),
(270, 15, '2018-05-18 12:11:43', 1, 6),
(271, 14, '2018-05-18 12:11:45', 1, 6),
(272, 15, '2018-05-18 12:11:46', 1, 6),
(273, 14, '2018-05-18 12:11:48', 1, 6),
(274, 15, '2018-05-18 12:11:48', 1, 6),
(275, 14, '2018-05-18 12:11:50', 1, 6),
(276, 15, '2018-05-18 12:11:50', 1, 6),
(277, 14, '2018-05-18 13:41:25', 1, 6),
(278, 15, '2018-05-18 13:41:25', 1, 6),
(279, 5, '2018-05-18 13:44:31', 1, 3),
(280, 18, '2018-05-18 13:44:31', 1, 10),
(281, 19, '2018-05-18 13:44:31', 1, 5),
(282, 5, '2018-05-18 13:46:30', 1, 3),
(283, 18, '2018-05-18 13:46:30', 1, 10),
(284, 19, '2018-05-18 13:46:30', 1, 5),
(285, 5, '2018-05-18 15:07:47', 1, 3),
(286, 14, '2018-05-21 09:05:07', 1, 6),
(287, 15, '2018-05-21 09:05:07', 1, 6),
(288, 18, '2018-05-21 09:28:09', 1, 10),
(289, 8, '2018-05-21 09:28:09', 1, 8),
(290, 19, '2018-05-21 09:28:09', 1, 5),
(291, 18, '2018-05-21 09:28:28', 1, 10),
(292, 8, '2018-05-21 09:28:28', 1, 8),
(293, 19, '2018-05-21 09:28:28', 1, 5),
(294, 18, '2018-05-21 09:28:57', 1, 10),
(295, 8, '2018-05-21 09:28:57', 1, 8),
(296, 19, '2018-05-21 09:28:57', 1, 5),
(297, 18, '2018-05-21 09:29:12', 1, 10),
(298, 8, '2018-05-21 09:29:12', 1, 8),
(299, 19, '2018-05-21 09:29:12', 1, 5),
(300, 18, '2018-05-21 09:29:30', 1, 10),
(301, 8, '2018-05-21 09:29:30', 1, 8),
(302, 19, '2018-05-21 09:29:30', 1, 5),
(303, 8, '2018-05-21 09:35:44', 1, 8),
(304, 18, '2018-05-21 09:45:41', 1, 10),
(305, 8, '2018-05-21 09:45:41', 1, 8),
(306, 19, '2018-05-21 09:45:41', 1, 5),
(307, 18, '2018-05-21 09:46:25', 1, 10),
(308, 8, '2018-05-21 09:46:25', 1, 8),
(309, 19, '2018-05-21 09:46:25', 1, 5),
(310, 18, '2018-05-21 09:47:08', 1, 10),
(311, 8, '2018-05-21 09:47:08', 1, 8),
(312, 19, '2018-05-21 09:47:08', 1, 5),
(313, 18, '2018-05-21 09:48:47', 1, 10),
(314, 8, '2018-05-21 09:48:47', 1, 8),
(315, 19, '2018-05-21 09:48:47', 1, 5),
(316, 18, '2018-05-21 09:52:24', 1, 10),
(317, 8, '2018-05-21 09:52:24', 1, 8),
(318, 19, '2018-05-21 09:52:24', 1, 5),
(319, 8, '2018-05-21 09:55:46', 1, 8),
(320, 18, '2018-05-21 09:55:46', 1, 10),
(321, 19, '2018-05-21 09:55:46', 1, 5),
(322, 5, '2018-05-21 09:55:46', 1, 3),
(323, 5, '2018-05-21 09:56:03', 1, 3),
(324, 3, '2018-05-21 09:56:14', 1, 2),
(325, 18, '2018-05-21 09:56:25', 1, 10),
(326, 8, '2018-05-21 09:56:25', 1, 8),
(327, 19, '2018-05-21 09:56:25', 1, 5),
(328, 18, '2018-05-21 09:58:41', 1, 10),
(329, 8, '2018-05-21 09:58:41', 1, 8),
(330, 19, '2018-05-21 09:58:41', 1, 5),
(331, 18, '2018-05-21 10:00:07', 1, 10),
(332, 8, '2018-05-21 10:00:07', 1, 8),
(333, 19, '2018-05-21 10:00:07', 1, 5),
(334, 18, '2018-05-21 10:02:18', 1, 10),
(335, 8, '2018-05-21 10:02:18', 1, 8),
(336, 19, '2018-05-21 10:02:18', 1, 5),
(337, 18, '2018-05-21 10:09:24', 1, 10),
(338, 8, '2018-05-21 10:09:24', 1, 8),
(339, 19, '2018-05-21 10:09:24', 1, 5),
(340, 18, '2018-05-21 10:13:02', 1, 10),
(341, 8, '2018-05-21 10:13:02', 1, 8),
(342, 19, '2018-05-21 10:13:02', 1, 5),
(343, 14, '2018-08-27 18:57:44', 1, 6),
(344, 15, '2018-08-27 18:57:44', 1, 6),
(345, 14, '2018-08-27 18:58:46', 1, 6),
(346, 15, '2018-08-27 18:58:46', 1, 6),
(347, 14, '2018-08-28 11:24:37', 1, 6),
(348, 15, '2018-08-28 11:24:37', 1, 6),
(349, 14, '2018-08-28 11:24:52', 1, 6),
(350, 15, '2018-08-28 11:24:52', 1, 6),
(351, 14, '2018-08-28 11:25:02', 1, 6),
(352, 15, '2018-08-28 11:25:03', 1, 6),
(353, 14, '2018-08-28 11:31:50', 1, 6),
(354, 15, '2018-08-28 11:31:50', 1, 6),
(355, 5, '2018-08-28 11:35:39', 1, 3),
(356, 8, '2018-08-28 11:39:07', 1, 8),
(357, 5, '2018-08-28 11:41:39', 1, 3),
(358, 8, '2018-08-28 11:43:26', 1, 8),
(359, 18, '2018-08-28 11:48:45', 1, 10),
(360, 8, '2018-08-28 11:48:45', 1, 8),
(361, 19, '2018-08-28 11:48:45', 1, 5),
(362, 18, '2018-08-28 11:52:19', 1, 10),
(363, 8, '2018-08-28 11:52:19', 1, 8),
(364, 19, '2018-08-28 11:52:19', 1, 5),
(365, 18, '2018-08-28 11:52:56', 1, 10),
(366, 8, '2018-08-28 11:52:56', 1, 8),
(367, 19, '2018-08-28 11:52:56', 1, 5),
(368, 18, '2018-08-28 11:54:42', 1, 10),
(369, 8, '2018-08-28 11:54:42', 1, 8),
(370, 19, '2018-08-28 11:54:42', 1, 5),
(371, 18, '2018-08-28 11:56:07', 1, 10),
(372, 8, '2018-08-28 11:56:07', 1, 8),
(373, 19, '2018-08-28 11:56:07', 1, 5),
(374, 5, '2018-08-28 12:38:59', 1, 3),
(375, 5, '2018-08-28 12:41:04', 1, 3),
(376, 5, '2018-08-28 12:42:22', 1, 3),
(377, 5, '2018-08-28 12:42:22', 1, 3),
(378, 5, '2018-08-28 12:42:22', 1, 3),
(379, 5, '2018-08-28 12:42:23', 1, 3),
(380, 5, '2018-08-28 12:42:23', 1, 3),
(381, 5, '2018-08-28 12:42:23', 1, 3),
(382, 5, '2018-08-28 12:42:49', 1, 3),
(383, 5, '2018-08-28 12:44:15', 1, 3),
(384, 14, '2018-08-30 14:44:59', 1, 6),
(385, 15, '2018-08-30 14:44:59', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AuthenticationTypes`
--

CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) UNSIGNED NOT NULL,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AuthenticationTypes`
--

INSERT INTO `AuthenticationTypes` (`authTypeID`, `authTypeHandle`, `authTypeName`, `authTypeIsEnabled`, `authTypeDisplayOrder`, `pkgID`) VALUES
(1, 'concrete', 'Standard', 1, 0, 0),
(2, 'community', 'concrete5.org', 0, 0, 0),
(3, 'facebook', 'Facebook', 0, 0, 0),
(4, 'twitter', 'Twitter', 0, 0, 0),
(5, 'google', 'Google', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authTypeConcreteCookieMap`
--

CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) UNSIGNED NOT NULL,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BannedWords`
--

CREATE TABLE `BannedWords` (
  `bwID` int(10) UNSIGNED NOT NULL,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `BannedWords`
--

INSERT INTO `BannedWords` (`bwID`, `bannedWord`) VALUES
(1, 'fuck'),
(2, 'shit'),
(3, 'bitch'),
(4, 'ass');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BasicWorkflowPermissionAssignments`
--

CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BasicWorkflowProgressData`
--

CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uIDStarted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BlockFeatureAssignments`
--

CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `BlockFeatureAssignments`
--

INSERT INTO `BlockFeatureAssignments` (`cID`, `cvID`, `bID`, `faID`) VALUES
(146, 2, 10, 1),
(153, 2, 11, 2),
(153, 3, 11, 2),
(153, 4, 11, 2),
(153, 5, 11, 2),
(154, 2, 12, 3),
(172, 2, 53, 4),
(150, 2, 422, 5),
(150, 4, 423, 6),
(150, 5, 423, 6),
(150, 6, 423, 6),
(150, 7, 423, 6),
(146, 4, 435, 7),
(146, 5, 588, 8),
(146, 6, 714, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BlockPermissionAssignments`
--

CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BlockRelations`
--

CREATE TABLE `BlockRelations` (
  `brID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `originalBID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `BlockRelations`
--

INSERT INTO `BlockRelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(1, 15, 14, 'DUPLICATE'),
(2, 17, 16, 'DUPLICATE'),
(3, 43, 42, 'DUPLICATE'),
(4, 45, 44, 'DUPLICATE'),
(7, 154, 150, 'DUPLICATE'),
(8, 155, 153, 'DUPLICATE'),
(9, 160, 159, 'DUPLICATE'),
(10, 162, 160, 'DUPLICATE'),
(11, 234, 232, 'DUPLICATE'),
(12, 236, 234, 'DUPLICATE'),
(13, 237, 233, 'DUPLICATE'),
(14, 238, 237, 'DUPLICATE'),
(15, 248, 151, 'DUPLICATE'),
(16, 249, 161, 'DUPLICATE'),
(17, 255, 253, 'DUPLICATE'),
(18, 256, 253, 'DUPLICATE'),
(19, 258, 253, 'DUPLICATE'),
(20, 260, 253, 'DUPLICATE'),
(21, 262, 261, 'DUPLICATE'),
(22, 263, 154, 'DUPLICATE'),
(23, 264, 260, 'DUPLICATE'),
(24, 265, 258, 'DUPLICATE'),
(25, 266, 255, 'DUPLICATE'),
(26, 267, 256, 'DUPLICATE'),
(29, 414, 56, 'DUPLICATE'),
(30, 415, 414, 'DUPLICATE'),
(31, 419, 417, 'DUPLICATE'),
(32, 421, 15, 'DUPLICATE'),
(33, 425, 424, 'DUPLICATE'),
(34, 426, 425, 'DUPLICATE'),
(35, 428, 427, 'DUPLICATE'),
(37, 431, 262, 'DUPLICATE'),
(38, 433, 13, 'DUPLICATE'),
(39, 434, 432, 'DUPLICATE'),
(40, 437, 238, 'DUPLICATE'),
(45, 464, 95, 'DUPLICATE'),
(50, 584, 433, 'DUPLICATE'),
(51, 586, 437, 'DUPLICATE'),
(52, 587, 421, 'DUPLICATE'),
(53, 588, 435, 'DUPLICATE'),
(54, 589, 238, 'DUPLICATE'),
(55, 590, 584, 'DUPLICATE'),
(56, 591, 431, 'DUPLICATE'),
(57, 593, 415, 'DUPLICATE'),
(58, 706, 601, 'DUPLICATE'),
(59, 707, 434, 'DUPLICATE'),
(60, 712, 17, 'DUPLICATE'),
(61, 713, 587, 'DUPLICATE'),
(62, 714, 588, 'DUPLICATE'),
(63, 715, 267, 'DUPLICATE'),
(64, 716, 266, 'DUPLICATE'),
(65, 717, 265, 'DUPLICATE'),
(66, 718, 264, 'DUPLICATE'),
(67, 719, 713, 'DUPLICATE'),
(68, 720, 589, 'DUPLICATE'),
(69, 721, 426, 'DUPLICATE'),
(70, 722, 585, 'DUPLICATE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Blocks`
--

CREATE TABLE `Blocks` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Blocks`
--

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2018-05-16 12:10:50', '2018-05-16 12:10:50', NULL, '0', 12, 1, NULL),
(2, '', '2018-05-16 12:10:50', '2018-05-16 12:10:50', NULL, '0', 9, 1, NULL),
(3, '', '2018-05-16 12:10:50', '2018-05-16 12:10:50', NULL, '0', 10, 1, NULL),
(4, '', '2018-05-16 12:10:50', '2018-05-16 12:10:50', NULL, '0', 8, 1, NULL),
(5, '', '2018-05-16 12:10:50', '2018-05-16 12:10:50', NULL, '0', 8, 1, NULL),
(6, '', '2018-05-16 12:10:51', '2018-05-16 12:10:51', NULL, '0', 7, 1, NULL),
(7, '', '2018-05-16 12:10:51', '2018-05-16 12:10:51', NULL, '0', 6, 1, NULL),
(8, '', '2018-05-16 12:10:51', '2018-05-16 12:10:51', NULL, '0', 8, 1, NULL),
(9, '', '2018-05-16 12:11:01', '2018-05-16 12:11:01', NULL, '0', 2, 1, NULL),
(10, '', '2018-05-16 14:01:57', '2018-05-16 14:01:57', NULL, '0', 27, 1, NULL),
(11, '', '2018-05-16 14:02:13', '2018-05-16 14:02:13', NULL, '0', 27, 1, NULL),
(12, '', '2018-05-16 14:03:17', '2018-05-16 14:03:17', NULL, '0', 27, 1, NULL),
(13, '', '2018-05-16 14:03:42', '2018-05-16 14:06:10', 'Estilo A', '0', 32, 1, NULL),
(14, '', '2018-05-16 14:10:50', '2018-05-16 14:10:50', NULL, '0', 12, 1, NULL),
(15, '', '2018-05-16 14:11:00', '2018-05-16 14:11:01', NULL, '1', 12, 1, NULL),
(16, '', '2018-05-16 14:15:57', '2018-05-16 14:15:57', NULL, '0', 39, 1, NULL),
(17, '', '2018-05-16 14:16:53', '2018-05-16 14:16:53', NULL, '1', 39, 1, NULL),
(18, '', '2018-05-16 14:18:14', '2018-05-16 14:18:32', 'SENATICs.php', '0', 11, 1, NULL),
(23, '', '2018-05-16 14:42:49', '2018-05-16 14:43:06', 'Camino de Miga.php', '0', 11, 1, NULL),
(25, '', '2018-05-16 15:12:30', '2018-05-16 15:12:30', NULL, '0', 3, 1, NULL),
(26, '', '2018-05-16 15:13:36', '2018-05-16 15:13:36', NULL, '0', 2, 1, NULL),
(27, '', '2018-05-16 15:18:31', '2018-05-16 15:18:31', NULL, '0', 1, 1, NULL),
(30, '', '2018-05-16 15:19:31', '2018-05-16 15:19:52', NULL, '0', 12, 1, NULL),
(31, '', '2018-05-16 15:20:08', '2018-05-16 15:20:08', NULL, '0', 12, 1, NULL),
(32, '', '2018-05-17 10:13:15', '2018-05-17 10:13:15', NULL, '0', 18, 1, NULL),
(33, '', '2018-05-17 10:15:06', '2018-05-17 10:15:06', NULL, '0', 18, 1, NULL),
(35, '', '2018-05-17 10:37:31', '2018-05-17 10:37:31', NULL, '0', 18, 1, NULL),
(36, '', '2018-05-17 10:37:38', '2018-05-17 10:37:38', NULL, '0', 3, 1, NULL),
(37, '', '2018-05-17 10:38:45', '2018-05-17 10:39:50', 'Menu lateral.php', '0', 11, 1, NULL),
(38, '', '2018-05-17 10:40:08', '2018-05-17 10:40:08', NULL, '0', 18, 1, NULL),
(39, '', '2018-05-17 10:40:16', '2018-05-17 10:40:16', NULL, '0', 3, 1, NULL),
(40, '', '2018-05-17 10:40:42', '2018-05-17 10:40:54', 'Menu lateral.php', '0', 11, 1, NULL),
(41, '', '2018-05-17 10:41:33', '2018-05-17 10:41:41', 'Menu lateral.php', '0', 11, 1, NULL),
(42, '', '2018-05-17 10:44:15', '2018-05-17 10:44:26', 'Menu lateral.php', '0', 11, 1, NULL),
(43, '', '2018-05-17 10:44:49', '2018-05-17 10:44:49', 'Menu lateral.php', '1', 11, 1, NULL),
(44, '', '2018-05-17 10:47:20', '2018-05-17 10:47:20', NULL, '0', 43, 1, NULL),
(45, '', '2018-05-17 10:47:46', '2018-05-17 10:47:46', NULL, '1', 43, 1, NULL),
(46, '', '2018-05-17 10:48:26', '2018-05-17 10:48:26', NULL, '0', 12, 1, NULL),
(47, '', '2018-05-17 10:49:40', '2018-05-17 10:49:40', NULL, '0', 1, 1, NULL),
(48, '', '2018-05-17 10:49:54', '2018-05-17 10:49:54', NULL, '0', 1, 1, NULL),
(49, '', '2018-05-17 10:50:17', '2018-05-17 10:53:12', 'Estilo A', '0', 19, 1, NULL),
(50, '', '2018-05-17 10:51:03', '2018-05-17 10:53:05', 'Estilo A', '0', 19, 1, NULL),
(51, '', '2018-05-17 10:52:41', '2018-05-17 10:52:59', 'Estilo A', '0', 19, 1, NULL),
(52, '', '2018-05-17 10:55:07', '2018-05-17 10:55:15', 'Estilo A', '0', 19, 1, NULL),
(53, '', '2018-05-17 11:00:30', '2018-05-17 11:00:38', 'materialboxed.php', '0', 27, 1, NULL),
(56, '', '2018-05-17 11:15:11', '2018-05-17 11:15:11', 'SENATICs Estilo C [img big] (Lista Horizontal)', '1', 30, 1, NULL),
(92, '', '2018-05-17 11:18:51', '2018-05-17 11:18:51', NULL, '0', 18, 1, NULL),
(95, '', '2018-05-17 11:22:14', '2018-05-17 11:22:14', NULL, '0', 12, 1, NULL),
(96, '', '2018-05-17 11:22:33', '2018-05-17 11:22:33', NULL, '0', 12, 1, NULL),
(98, '', '2018-05-17 11:23:47', '2018-05-17 11:23:47', NULL, '0', 13, 1, NULL),
(101, '', '2018-05-17 11:25:59', '2018-05-17 11:30:14', 'Estilo-A.php', '0', 20, 1, NULL),
(102, '', '2018-05-17 11:26:55', '2018-05-17 11:27:09', '', '0', 36, 1, NULL),
(118, '', '2018-05-17 11:30:54', '2018-05-17 11:30:54', NULL, '0', 3, 1, NULL),
(119, '', '2018-05-17 11:32:05', '2018-05-17 11:32:05', NULL, '0', 12, 1, NULL),
(150, '', '2018-05-17 11:57:52', '2018-05-17 11:57:52', NULL, '0', 45, 1, NULL),
(151, '', '2018-05-17 11:58:45', '2018-05-17 11:58:45', NULL, '0', 1, 1, NULL),
(152, '', '2018-05-17 11:59:35', '2018-05-17 11:59:35', NULL, '0', 40, 1, NULL),
(153, '', '2018-05-17 11:59:54', '2018-05-17 12:00:07', NULL, '0', 40, 1, NULL),
(154, '', '2018-05-17 12:01:02', '2018-05-17 12:01:03', NULL, '1', 45, 1, NULL),
(155, '', '2018-05-17 12:03:51', '2018-05-17 12:03:51', NULL, '1', 40, 1, NULL),
(156, '', '2018-05-17 14:56:24', '2018-08-28 11:45:45', NULL, '0', 1, 1, NULL),
(157, '', '2018-05-17 14:57:06', '2018-08-28 11:46:15', '', '0', 16, 1, NULL),
(158, '', '2018-05-17 14:58:17', '2018-05-18 11:21:47', '', '0', 23, 1, NULL),
(159, '', '2018-05-17 15:03:39', '2018-05-17 15:03:39', NULL, '0', 42, 1, NULL),
(160, '', '2018-05-17 15:04:41', '2018-05-17 15:05:02', 'Slider-Principal', '1', 42, 1, NULL),
(161, '', '2018-05-17 15:05:44', '2018-05-17 15:05:44', NULL, '0', 1, 1, NULL),
(162, '', '2018-05-17 15:06:14', '2018-05-17 15:06:14', 'Slider-Principal', '1', 42, 1, NULL),
(231, '', '2018-05-18 10:01:17', '2018-05-18 10:01:17', NULL, '0', 1, 1, NULL),
(232, '', '2018-05-18 10:03:02', '2018-05-18 10:03:02', NULL, '0', 17, 1, NULL),
(233, '', '2018-05-18 10:06:37', '2018-05-18 10:07:05', '', '0', 12, 1, NULL),
(234, '', '2018-05-18 10:08:08', '2018-05-18 10:08:09', NULL, '1', 17, 1, NULL),
(235, '', '2018-05-18 10:09:09', '2018-05-18 10:09:09', NULL, '0', 12, 1, NULL),
(236, '', '2018-05-18 10:09:34', '2018-05-18 10:10:32', '', '1', 17, 1, NULL),
(237, '', '2018-05-18 10:11:02', '2018-05-18 10:11:03', '', '1', 12, 1, NULL),
(238, '', '2018-05-18 10:11:55', '2018-05-18 10:12:12', '', '1', 12, 1, NULL),
(239, '', '2018-05-18 10:24:17', '2018-05-18 10:24:17', NULL, '0', 25, 1, NULL),
(240, '', '2018-05-18 10:25:25', '2018-05-18 10:25:25', NULL, '0', 12, 1, NULL),
(241, '', '2018-05-18 10:27:01', '2018-05-18 10:27:01', NULL, '0', 41, 1, NULL),
(242, '', '2018-05-18 10:28:01', '2018-05-18 10:28:01', NULL, '0', 41, 1, NULL),
(243, '', '2018-05-18 10:28:14', '2018-05-18 10:28:14', NULL, '0', 41, 1, NULL),
(244, '', '2018-05-18 10:28:21', '2018-05-18 10:28:21', NULL, '0', 41, 1, NULL),
(245, '', '2018-05-18 10:28:44', '2018-05-18 10:28:44', NULL, '0', 41, 1, NULL),
(246, '', '2018-05-18 10:29:45', '2018-05-18 10:29:45', NULL, '0', 41, 1, NULL),
(247, '', '2018-05-18 10:29:53', '2018-05-18 10:29:53', NULL, '0', 41, 1, NULL),
(248, '', '2018-05-18 10:30:52', '2018-05-18 10:30:52', NULL, '1', 1, 1, NULL),
(249, '', '2018-05-18 10:31:02', '2018-05-18 10:32:04', NULL, '1', 1, 1, NULL),
(250, '', '2018-05-18 10:33:40', '2018-05-18 10:33:40', NULL, '0', 41, 1, NULL),
(251, '', '2018-05-18 10:41:18', '2018-05-18 10:41:18', NULL, '0', 41, 1, NULL),
(252, '', '2018-05-18 10:41:45', '2018-05-18 10:41:45', NULL, '0', 41, 1, NULL),
(253, '', '2018-05-18 10:44:25', '2018-05-18 10:44:25', NULL, '0', 41, 1, NULL),
(255, '', '2018-05-18 10:50:10', '2018-05-18 10:50:10', NULL, '1', 41, 1, NULL),
(256, '', '2018-05-18 10:50:28', '2018-05-18 10:50:29', NULL, '1', 41, 1, NULL),
(258, '', '2018-05-18 10:50:51', '2018-05-18 10:50:51', NULL, '1', 41, 1, NULL),
(260, '', '2018-05-18 10:51:14', '2018-05-18 10:51:14', NULL, '1', 41, 1, NULL),
(261, '', '2018-05-18 10:57:17', '2018-05-18 10:57:17', NULL, '0', 42, 1, NULL),
(262, '', '2018-05-18 10:58:09', '2018-05-18 10:58:48', '', '1', 42, 1, NULL),
(263, '', '2018-05-18 10:59:33', '2018-05-18 10:59:33', '', '1', 45, 1, NULL),
(264, '', '2018-05-18 10:59:45', '2018-05-18 11:02:44', '', '1', 41, 1, NULL),
(265, '', '2018-05-18 10:59:58', '2018-05-18 11:02:16', '', '1', 41, 1, NULL),
(266, '', '2018-05-18 11:00:09', '2018-05-18 11:01:16', '', '1', 41, 1, NULL),
(267, '', '2018-05-18 11:00:24', '2018-05-18 11:01:47', '', '1', 41, 1, NULL),
(414, '', '2018-05-18 11:37:11', '2018-05-18 11:37:11', 'SENATICs Estilo C [img big] (Lista Horizontal)', '1', 30, 1, NULL),
(415, '', '2018-05-18 11:37:36', '2018-05-18 11:37:36', 'SENATICs Estilo C [img big] (Lista Horizontal)', '1', 30, 1, NULL),
(416, '', '2018-05-18 11:38:53', '2018-05-18 11:38:53', NULL, '0', 41, 1, NULL),
(417, '', '2018-05-18 11:44:54', '2018-05-18 11:44:54', NULL, '0', 22, 1, NULL),
(419, '', '2018-05-18 11:46:21', '2018-05-18 11:46:22', NULL, '1', 22, 1, NULL),
(420, '', '2018-05-18 11:47:48', '2018-05-18 11:47:48', NULL, '0', 25, 1, NULL),
(421, '', '2018-05-18 11:48:19', '2018-05-18 11:48:19', NULL, '1', 12, 1, NULL),
(422, '', '2018-05-18 11:48:40', '2018-05-18 11:48:40', NULL, '0', 27, 1, NULL),
(423, '', '2018-05-18 11:49:19', '2018-05-18 11:49:19', NULL, '0', 27, 1, NULL),
(424, '', '2018-05-18 11:53:53', '2018-05-18 11:54:10', 'Slider-Principal', '0', 42, 1, NULL),
(425, '', '2018-05-18 11:55:12', '2018-05-18 11:55:13', 'Slider-Principal', '1', 42, 1, NULL),
(426, '', '2018-05-18 11:58:13', '2018-05-18 11:58:14', 'Slider-Principal', '1', 42, 1, NULL),
(427, '', '2018-05-18 12:00:41', '2018-05-18 12:00:41', NULL, '0', 52, 1, NULL),
(428, '', '2018-05-18 12:01:54', '2018-05-18 12:01:59', NULL, '1', 52, 1, NULL),
(431, '', '2018-05-18 13:42:04', '2018-05-18 13:42:34', '', '1', 42, 1, NULL),
(432, '', '2018-05-18 15:08:24', '2018-05-18 15:11:55', '', '0', 32, 1, NULL),
(433, '', '2018-05-18 15:11:25', '2018-05-21 10:23:07', 'Estilo A', '1', 32, 1, NULL),
(434, '', '2018-05-18 15:12:20', '2018-05-18 15:12:20', 'Estilo A', '1', 32, 1, NULL),
(435, '', '2018-05-21 09:05:21', '2018-05-21 09:05:21', NULL, '0', 27, 1, NULL),
(436, '', '2018-05-21 09:08:06', '2018-05-21 09:08:06', NULL, '0', 3, 1, NULL),
(437, '', '2018-05-21 09:08:23', '2018-05-21 09:08:24', '', '1', 12, 1, NULL),
(444, '', '2018-05-21 09:32:45', '2018-05-21 09:32:45', NULL, '0', 18, 1, NULL),
(445, '', '2018-05-21 09:33:01', '2018-05-21 09:33:01', NULL, '0', 1, 1, NULL),
(446, '', '2018-05-21 09:33:22', '2018-05-21 09:33:22', NULL, '0', 3, 1, NULL),
(447, '', '2018-05-21 09:33:30', '2018-05-21 09:33:30', NULL, '0', 3, 1, NULL),
(448, '', '2018-05-21 09:33:35', '2018-05-21 09:33:35', NULL, '0', 3, 1, NULL),
(449, '', '2018-05-21 09:33:59', '2018-05-21 09:33:59', NULL, '0', 2, 1, NULL),
(450, '', '2018-05-21 09:34:55', '2018-05-21 09:34:55', NULL, '0', 3, 1, NULL),
(452, '', '2018-05-21 09:35:21', '2018-05-21 10:15:04', 'Estilo-A.php', '1', 20, 1, NULL),
(453, '', '2018-05-21 09:35:27', '2018-05-21 09:35:27', NULL, '0', 3, 1, NULL),
(455, '', '2018-05-21 09:35:44', '2018-05-21 09:35:44', NULL, '1', 36, 1, NULL),
(456, '', '2018-05-21 09:35:52', '2018-05-21 09:35:52', NULL, '0', 3, 1, NULL),
(462, '', '2018-05-21 09:44:00', '2018-05-21 09:44:34', 'SENATICs Estilo A [1 col] (Lista Vertical-Slide)', '0', 30, 1, NULL),
(464, '', '2018-05-21 09:44:58', '2018-05-21 09:44:58', NULL, '1', 12, 1, NULL),
(584, '', '2018-05-21 10:23:32', '2018-08-27 19:06:08', 'Estilo A', '1', 32, 1, NULL),
(585, '', '2018-05-21 10:24:22', '2018-05-21 10:24:22', NULL, '0', 25, 1, NULL),
(586, '', '2018-05-21 10:24:39', '2018-05-21 10:24:39', '', '1', 12, 1, NULL),
(587, '', '2018-05-21 10:24:54', '2018-05-21 10:24:55', NULL, '1', 12, 1, NULL),
(588, '', '2018-08-27 18:57:46', '2018-08-27 18:57:46', NULL, '1', 27, 1, NULL),
(589, '', '2018-08-27 18:59:00', '2018-08-27 18:59:00', '', '1', 12, 1, NULL),
(590, '', '2018-08-27 19:06:46', '2018-08-27 19:07:10', 'Estilo A', '1', 32, 1, NULL),
(591, '', '2018-08-28 11:25:09', '2018-08-28 11:25:09', '', '1', 42, 1, NULL),
(592, '', '2018-08-28 11:34:02', '2018-08-28 11:34:02', NULL, '0', 18, 1, NULL),
(593, '', '2018-08-28 11:34:18', '2018-08-28 11:34:26', 'SENATICs Estilo C [img small] (Lista Horizontal)', '1', 30, 1, NULL),
(600, '', '2018-08-28 11:41:56', '2018-08-28 11:41:56', NULL, '0', 30, 1, NULL),
(601, '', '2018-08-28 11:42:08', '2018-08-28 11:42:08', NULL, '0', 30, 1, NULL),
(602, '', '2018-08-28 11:42:33', '2018-08-28 11:42:53', 'Estilo-A.php', '0', 20, 1, NULL),
(603, '', '2018-08-28 11:43:26', '2018-08-28 11:43:26', NULL, '0', 36, 1, NULL),
(604, '', '2018-08-28 11:43:58', '2018-08-28 11:44:13', 'Estilo A', '0', 32, 1, NULL),
(605, '', '2018-08-28 11:44:20', '2018-08-28 11:44:20', NULL, '0', 26, 1, NULL),
(606, '', '2018-08-28 11:44:24', '2018-08-28 11:44:24', NULL, '0', 26, 1, NULL),
(607, '', '2018-08-28 11:46:26', '2018-08-28 11:46:26', NULL, '0', 26, 1, NULL),
(647, '', '2018-08-28 11:52:02', '2018-08-28 11:52:02', NULL, '0', 12, 1, NULL),
(653, '', '2018-08-28 11:52:40', '2018-08-28 11:52:40', NULL, '0', 12, 1, NULL),
(672, '', '2018-08-28 11:54:26', '2018-08-28 11:54:26', NULL, '0', 12, 1, NULL),
(687, '', '2018-08-28 11:55:57', '2018-08-28 11:55:57', NULL, '0', 12, 1, NULL),
(705, '', '2018-08-28 11:57:37', '2018-08-28 11:57:37', NULL, '0', 12, 1, NULL),
(706, '', '2018-08-28 11:58:54', '2018-08-28 11:59:28', 'SENATICs Estilo C [img big] (Lista Horizontal)', '1', 30, 1, NULL),
(707, '', '2018-08-28 12:07:07', '2018-08-28 12:07:20', 'Estilo A', '1', 32, 1, NULL),
(712, '', '2018-08-28 12:47:13', '2018-08-28 12:47:14', NULL, '1', 39, 1, NULL),
(713, '', '2018-08-29 19:00:16', '2018-08-29 19:00:16', NULL, '1', 12, 1, NULL),
(714, '', '2018-08-30 14:45:02', '2018-08-30 14:45:02', NULL, '1', 27, 1, NULL),
(715, '', '2018-08-30 15:22:06', '2018-08-30 15:22:16', '', '1', 41, 1, NULL),
(716, '', '2018-08-30 15:22:25', '2018-08-30 15:22:25', '', '1', 41, 1, NULL),
(717, '', '2018-08-30 15:22:33', '2018-08-30 15:22:34', '', '1', 41, 1, NULL),
(718, '', '2018-08-30 15:22:44', '2018-08-30 15:22:44', '', '1', 41, 1, NULL),
(719, '', '2018-08-30 15:24:20', '2018-08-30 15:24:20', NULL, '1', 12, 1, NULL),
(720, '', '2018-08-30 15:24:51', '2018-08-30 15:24:51', '', '1', 12, 1, NULL),
(721, '', '2018-08-30 15:30:00', '2018-08-30 15:30:00', 'Slider-Principal', '1', 42, 1, NULL),
(722, '', '2018-08-30 15:31:00', '2018-08-30 15:31:00', NULL, '1', 25, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BlockTypePermissionBlockTypeAccessList`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BlockTypePermissionBlockTypeAccessListCustom`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BlockTypes`
--

CREATE TABLE `BlockTypes` (
  `btID` int(10) UNSIGNED NOT NULL,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) UNSIGNED NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) UNSIGNED NOT NULL DEFAULT '400',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `BlockTypes`
--

INSERT INTO `BlockTypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btSupportsInlineAdd`, `btSupportsInlineEdit`, `btIgnorePageThemeGridFrameworkContainer`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1, 'core_area_layout', 'Area Layout', 'Proxy block for area layouts.', 0, 0, 1, 1, 1, 0, 0, 400, 400, 0),
(2, 'core_page_type_composer_control_output', 'Composer Control', 'Proxy block for blocks that need to be output through composer.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(3, 'core_scrapbook_display', 'Scrapbook Display', 'Proxy block for blocks pasted through the scrapbook.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(4, 'core_stack_display', 'Stack Display', 'Proxy block for stacks added through the UI.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(5, 'core_conversation', 'Conversation', 'Displays conversations on a page.', 1, 0, 0, 0, 0, 0, 1, 400, 400, 0),
(6, 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 300, 100, 0),
(7, 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 300, 100, 0),
(8, 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(9, 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(10, 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(11, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 0, 0, 0, 0, 0, 0, 2, 800, 350, 0),
(12, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 0, 0, 0, 1, 1, 0, 3, 600, 465, 0),
(13, 'date_navigation', 'Date Navigation', 'Displays a list of months to filter a page list by.', 0, 0, 0, 0, 0, 0, 4, 400, 450, 0),
(14, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 0, 0, 0, 0, 0, 0, 5, 370, 175, 0),
(15, 'file', 'File', 'Link to files stored in the asset library.', 0, 0, 0, 0, 0, 0, 6, 300, 320, 0),
(16, 'page_attribute_display', 'Page Attribute Display', 'Displays the value of a page attribute for the current page.', 0, 0, 0, 0, 0, 0, 7, 500, 365, 0),
(17, 'form', 'Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 0, 0, 8, 420, 430, 0),
(18, 'page_title', 'Page Title', 'Displays a Page\'s Title', 0, 0, 0, 0, 0, 0, 9, 400, 400, 0),
(19, 'feature', 'Feature', 'Displays an icon, a title, and a short paragraph description.', 0, 0, 0, 0, 0, 0, 10, 400, 520, 0),
(20, 'topic_list', 'Topic List', 'Displays a list of your site\'s topics, allowing you to click on them to filter a page list.', 0, 0, 0, 0, 0, 0, 11, 400, 400, 0),
(21, 'social_links', 'Social Links', 'Allows users to add social icons to their website', 0, 0, 0, 0, 0, 0, 12, 400, 400, 0),
(22, 'testimonial', 'Testimonial', 'Displays a quote or paragraph next to biographical information and a person\'s picture.', 0, 0, 0, 0, 0, 0, 13, 450, 560, 0),
(23, 'share_this_page', 'Share This Page', 'Allows users to share this page with social networks.', 0, 0, 0, 0, 0, 0, 14, 400, 400, 0),
(24, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 0, 0, 0, 0, 0, 0, 15, 400, 460, 0),
(25, 'html', 'HTML', 'For adding HTML by hand.', 0, 0, 0, 0, 0, 1, 16, 600, 500, 0),
(26, 'horizontal_rule', 'Horizontal Rule', 'Adds a thin hairline horizontal divider to the page.', 0, 0, 0, 0, 0, 1, 17, 400, 400, 0),
(27, 'image', 'Image', 'Adds images and onstates from the library to pages.', 0, 0, 0, 0, 0, 0, 18, 400, 550, 0),
(28, 'faq', 'FAQ', 'Frequently Asked Questions Block', 0, 0, 0, 0, 0, 0, 19, 600, 465, 0),
(29, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 0, 0, 0, 0, 0, 0, 20, 430, 400, 0),
(30, 'page_list', 'Page List', 'List pages based on type, area.', 0, 0, 0, 0, 0, 0, 21, 800, 350, 0),
(31, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 0, 0, 0, 0, 0, 0, 22, 400, 550, 0),
(32, 'search', 'Search', 'Add a search box to your site.', 0, 0, 0, 0, 0, 0, 23, 400, 420, 0),
(33, 'image_slider', 'Image Slider', 'Display your images and captions in an attractive slideshow format.', 0, 0, 0, 0, 0, 1, 24, 600, 550, 0),
(34, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 0, 0, 0, 0, 0, 0, 25, 420, 400, 0),
(35, 'switch_language', 'Switch Language', 'Adds a front-end language switcher to your website.', 0, 0, 0, 0, 0, 0, 26, 500, 150, 0),
(36, 'tags', 'Tags', 'List pages based on type, area.', 0, 0, 0, 0, 0, 0, 27, 450, 439, 0),
(37, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.', 0, 0, 0, 0, 0, 0, 28, 320, 270, 0),
(38, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 0, 0, 0, 0, 0, 0, 29, 400, 490, 0),
(39, 'svg_social_media_icons', 'SVG Social Media Icons', 'Add SVG social media icons with PNG fallback on your pages.', 0, 0, 0, 0, 0, 0, 30, 450, 580, 1),
(40, 'agregarslider', 'Slider de Fotos', 'Despliega tus imagenes o noticias en un Slider de Fotos!!', 0, 0, 0, 0, 0, 1, 31, 700, 500, 0),
(41, 'boton', 'Boton', 'Agrega un Boton al sitio web', 0, 0, 0, 0, 0, 0, 32, 950, 400, 0),
(42, 'carrusel', 'Carrusel Banners', 'Muestra un Carrusel de fotos', 0, 0, 0, 0, 0, 1, 33, 700, 650, 0),
(43, 'convenios', 'Convenios & Documentos', 'Permite listar los Convenios y Documentos', 0, 0, 0, 0, 0, 0, 34, 600, 500, 0),
(44, 'iframe', 'Iframe Popup', 'Agrega un Popup con Iframe', 0, 0, 0, 0, 0, 0, 35, 400, 550, 0),
(45, 'leytransparencia', 'Ley 5189/14', 'Administrador de la Ley Transparencia 5189/14', 0, 0, 0, 0, 0, 0, 36, 600, 500, 0),
(46, 'listaritems', 'Galería de Fotos', 'Despliega una lista de Imagenes Dinamicas!!', 0, 0, 0, 0, 0, 1, 37, 1024, 600, 0),
(47, 'listartramites', 'Lista de Tramites', 'Despliega una lista de Trámites que la Institución Ofrece!!', 0, 0, 0, 0, 0, 1, 38, 1024, 750, 0),
(48, 'mapas', 'Mapas Senatics', 'Introduzca una dirección y un mapa de Google de la ubicación Que se colocará en su página.', 0, 0, 0, 0, 0, 0, 39, 1050, 500, 0),
(49, 'publicaciones', 'Publicaciones', 'Permite realizar publicaciones, anexar al mismo enlaces a archivos/sitios', 0, 0, 0, 0, 0, 1, 40, 700, 650, 0),
(50, 'transparenciaactiva', 'Transparencia Activa', 'Administrador de Transparencia Activa permite insertar por cada bloque un conjunto de archivos del mismo tema, y asociarle un Autor del mismo como asi tambien indicar a que mes corresponde', 0, 0, 0, 0, 0, 0, 41, 1024, 600, 0),
(52, 'event_calendar', 'Event Calendar', '', 0, 0, 0, 0, 0, 0, 42, 400, 200, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BlockTypeSetBlockTypes`
--

CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `BlockTypeSetBlockTypes`
--

INSERT INTO `BlockTypeSetBlockTypes` (`btID`, `btsID`, `displayOrder`) VALUES
(12, 1, 0),
(25, 1, 1),
(27, 1, 2),
(15, 1, 3),
(26, 1, 4),
(19, 1, 5),
(11, 2, 0),
(18, 2, 1),
(28, 2, 2),
(30, 2, 3),
(29, 2, 4),
(13, 2, 5),
(36, 2, 6),
(20, 2, 7),
(31, 2, 8),
(35, 2, 9),
(17, 3, 0),
(32, 3, 1),
(14, 3, 2),
(34, 4, 0),
(5, 4, 1),
(21, 4, 2),
(22, 4, 3),
(23, 4, 4),
(39, 4, 5),
(16, 5, 0),
(33, 5, 1),
(37, 5, 2),
(38, 5, 3),
(24, 5, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BlockTypeSets`
--

CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) UNSIGNED NOT NULL,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `BlockTypeSets`
--

INSERT INTO `BlockTypeSets` (`btsID`, `btsName`, `btsHandle`, `pkgID`, `btsDisplayOrder`) VALUES
(1, 'Basic', 'basic', 0, 0),
(2, 'Navigation', 'navigation', 0, 0),
(3, 'Forms', 'form', 0, 0),
(4, 'Social Networking', 'social', 0, 0),
(5, 'Multimedia', 'multimedia', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btBoton`
--

CREATE TABLE `btBoton` (
  `bID` int(10) UNSIGNED NOT NULL,
  `texto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alineacion_icono` tinyint(1) DEFAULT '1',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `target` smallint(5) UNSIGNED DEFAULT '0',
  `tamanho_fuente` smallint(5) UNSIGNED DEFAULT '12',
  `color_fuente` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#FFF',
  `alineacion_fuente` tinyint(1) DEFAULT '1',
  `color_fondo` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#428bca',
  `padding` smallint(5) UNSIGNED DEFAULT '10',
  `ancho` varchar(5) COLLATE utf8_unicode_ci DEFAULT 'auto',
  `ancho_formato` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'px',
  `alineacion_boton` tinyint(1) DEFAULT '1',
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `color_fuente_hover` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#FFF',
  `color_fondo_hover` varchar(12) COLLATE utf8_unicode_ci DEFAULT '#5A9FdF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btBoton`
--

INSERT INTO `btBoton` (`bID`, `texto`, `icon`, `alineacion_icono`, `externalLink`, `internalLinkCID`, `target`, `tamanho_fuente`, `color_fuente`, `alineacion_fuente`, `color_fondo`, `padding`, `ancho`, `ancho_formato`, `alineacion_boton`, `fID`, `color_fuente_hover`, `color_fondo_hover`) VALUES
(253, 'Trámites', 'bookmark', 0, '', 0, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(255, 'TrámitesMECIP', 'building', 0, '', 193, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(256, 'Trámites', 'bookmark', 0, '', 194, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(258, 'Compras Públicas', 'shopping-cart', 0, '', 195, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(260, 'Servicios', 'briefcase', 0, '', 196, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(264, 'Servicios', 'briefcase', 0, '', 196, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(265, 'Compras Públicas', 'shopping-cart', 0, '', 195, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(266, 'TrámitesMECIP', 'building', 0, '', 193, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(267, 'Trámites', 'bookmark', 0, '', 194, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(416, 'Ver más noticias', 'plus-square-o', 0, NULL, 159, 0, 20, '#c73b3b', 0, '', 5, '100', '%', 0, NULL, '#ffffff', '#878787'),
(715, 'Trámites', 'bookmark', 0, '', 194, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(716, 'TrámitesMECIP', 'building', 0, '', 193, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(717, 'Compras Públicas', 'shopping-cart', 0, '', 195, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0'),
(718, 'Servicios', 'briefcase', 0, '', 196, 0, 14, '#ba3a3a', 1, '#ffffff', 8, '100', '%', 0, NULL, '#222222', '#f0f0f0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btCarrusel`
--

CREATE TABLE `btCarrusel` (
  `bID` int(10) UNSIGNED NOT NULL,
  `navigationType` int(10) UNSIGNED DEFAULT '0',
  `slidesToScroll` int(10) UNSIGNED DEFAULT NULL,
  `slidesToShow` int(10) UNSIGNED DEFAULT NULL,
  `timeout` int(10) UNSIGNED DEFAULT NULL,
  `speed` int(10) UNSIGNED DEFAULT NULL,
  `noAnimate` int(10) UNSIGNED DEFAULT NULL,
  `infinite` int(10) UNSIGNED DEFAULT NULL,
  `modo_center` int(10) UNSIGNED DEFAULT NULL,
  `auto_height` int(10) UNSIGNED DEFAULT NULL,
  `maxWidth` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btCarrusel`
--

INSERT INTO `btCarrusel` (`bID`, `navigationType`, `slidesToScroll`, `slidesToShow`, `timeout`, `speed`, `noAnimate`, `infinite`, `modo_center`, `auto_height`, `maxWidth`) VALUES
(159, 0, 1, 1, 5000, 500, 1, 1, 0, 1, 0),
(160, 0, 1, 1, 5000, 500, 1, 1, 0, 1, 0),
(162, 0, 1, 1, 5000, 500, 1, 1, 0, 1, 0),
(261, 0, 3, 3, 4000, 500, 0, 0, 0, 0, 0),
(262, 1, 1, 4, 7000, 200, 1, 1, 0, 1, 0),
(424, 0, 1, 1, 5000, 500, 1, 1, 0, 1, 0),
(425, 0, 1, 1, 5000, 500, 1, 1, 0, 1, 0),
(426, 1, 1, 1, 5000, 500, 1, 1, 0, 1, 0),
(431, 1, 1, 4, 7000, 200, 1, 1, 0, 1, 0),
(591, 1, 1, 4, 7000, 200, 1, 1, 0, 1, 0),
(721, 0, 1, 1, 5000, 500, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btCarruselEntries`
--

CREATE TABLE `btCarruselEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `fID` int(10) UNSIGNED DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `target` int(10) UNSIGNED DEFAULT '0',
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btCarruselEntries`
--

INSERT INTO `btCarruselEntries` (`id`, `bID`, `cID`, `fID`, `linkURL`, `internalLinkCID`, `title`, `description`, `target`, `sortOrder`) VALUES
(1, 159, 0, 8, '', 0, '', '', 0, 0),
(2, 159, 0, 6, '', 0, '', '', 0, 1),
(5, 160, 0, 8, '', 0, 'Título del Slide 1', '<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.</p><p><br></p>', 0, 0),
(6, 160, 0, 6, '', 0, 'Título del Slide 2', '<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p><br></p>', 0, 1),
(9, 162, 0, 8, '', 0, 'Título del Slide 1', '<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>', 0, 0),
(10, 162, 0, 6, '', 0, 'Título del Slide 2', '<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500</p>', 0, 1),
(11, 261, 0, 10, '', 177, '', '', 0, 0),
(12, 261, 0, 11, 'http://www.informacionpublica.gov.py', 0, '', '', 1, 1),
(13, 261, 0, 12, 'http://www.denuncias.gov.py/ssps/', 0, '', '', 1, 2),
(14, 261, 0, 13, 'https://www.paraguay.gov.py', 0, '', '', 0, 3),
(19, 262, 0, 10, '', 177, '', '', 0, 0),
(20, 262, 0, 11, 'http://www.informacionpublica.gov.py', 0, '', '', 1, 1),
(21, 262, 0, 12, 'http://www.denuncias.gov.py/ssps/', 0, '', '', 1, 2),
(22, 262, 0, 13, 'https://www.paraguay.gov.py', 0, '', '', 0, 3),
(23, 424, 0, 8, '', 198, 'Titulo slide 1', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>', 0, 0),
(24, 424, 0, 6, '', 0, 'Título del Slide 2', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>', 0, 1),
(27, 425, 0, 21, '', 198, 'Titulo slide 1', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>', 0, 0),
(28, 425, 0, 22, '', 0, 'Título del Slide 2', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>', 0, 1),
(31, 426, 0, 21, '', 198, 'Titulo slide 1', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>', 0, 0),
(32, 426, 0, 22, '', 0, 'Título del Slide 2', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>', 0, 1),
(33, 431, 0, 10, '', 177, '', '', 0, 0),
(34, 431, 0, 11, 'http://www.informacionpublica.gov.py', 0, '', '', 1, 1),
(35, 431, 0, 12, 'http://www.denuncias.gov.py/ssps/', 0, '', '', 1, 2),
(36, 431, 0, 13, 'https://www.paraguay.gov.py', 0, '', '', 0, 3),
(41, 591, 0, 42, '', 177, '', '', 0, 0),
(42, 591, 0, 43, 'http://www.informacionpublica.gov.py', 0, '', '', 1, 1),
(43, 591, 0, 44, 'http://www.denuncias.gov.py/ssps/', 0, '', '', 1, 2),
(44, 591, 0, 13, 'https://www.paraguay.gov.py', 0, '', '', 0, 3),
(47, 721, 0, 21, '', 226, 'Titulo slide 1', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>', 0, 0),
(48, 721, 0, 22, '', 0, 'Título del Slide 2', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto</p>', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btContentFile`
--

CREATE TABLE `btContentFile` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btContentIframe`
--

CREATE TABLE `btContentIframe` (
  `bID` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `maxHeight` int(10) UNSIGNED DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btContentImage`
--

CREATE TABLE `btContentImage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `fOnstateID` int(10) UNSIGNED DEFAULT '0',
  `maxWidth` int(10) UNSIGNED DEFAULT '0',
  `maxHeight` int(10) UNSIGNED DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btContentImage`
--

INSERT INTO `btContentImage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `altText`, `title`) VALUES
(10, 1, 0, 0, 0, '', 1, '', ''),
(11, 2, 0, 0, 0, '', 0, '', ''),
(12, 3, 0, 0, 0, '', 0, '', ''),
(53, 4, 0, 0, 0, '', 0, '', ''),
(422, 1, 0, 0, 0, '', 0, '', ''),
(423, 20, 0, 0, 0, '', 0, '', ''),
(435, 40, 0, 0, 0, '', 1, '', ''),
(588, 40, 0, 0, 0, '', 1, '', ''),
(714, 40, 0, 0, 0, '', 1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btContentLocal`
--

CREATE TABLE `btContentLocal` (
  `bID` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btContentLocal`
--

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(1, '<div style="padding: 40px; text-align: center">\n<iframe width="853" height="480" src="//www.youtube.com/embed/VB-R71zk06U" frameborder="0" allowfullscreen></iframe>\n                                    </div>'),
(14, '<p>Secretaría Nacional de Tecnologías de la Información y Comunicación - 2018 ©</p>'),
(15, '<p>Secretaría Nacional de Tecnologías de la Información y Comunicación - 2018</p>'),
(30, '<h5>Categorías:</h5>'),
(31, '<h5>Etiquetas:</h5>'),
(46, '<p style="text-align: justify;">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>'),
(95, '<h5>Categorías / Filtrar</h5>'),
(96, '<h5>Etiquetas</h5>'),
(119, '<h5 style="text-align: center;"><a href="{CCM:CID_159}">Ver más</a></h5>'),
(233, '<p style="text-align: center;"><img src="https://www.senatics.gov.py/download_file/view_inline/14" id="image-marker" height="97" width="459" style="width: 459px; height: 97px;">\r\n</p><h6><strong><i class="fa fa-map-marker"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class="fa fa-phone"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class="fa fa-clock-o"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class="fa fa-envelope"></i> E-mail:</strong> <a href="mailto:mailto:comunicacion@senatics.gov.py">comunicacion@senatics.gov.py</a></h6><h4 style="text-align: center;" rel="text-align: center;">Asuncion - Paraguay</h4>'),
(235, '<h5>Formulario de Contacto </h5>'),
(237, '<p style="text-align: center;"><img src="https://www.senatics.gov.py/download_file/view_inline/14" id="image-marker" height="97" width="459" style="width: 459px; height: 97px;">\r\n</p><h6><strong><i class="fa fa-map-marker"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class="fa fa-phone"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class="fa fa-clock-o"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class="fa fa-envelope"></i> E-mail:</strong> <a href="mailto:mailto:comunicacion@senatics.gov.py">comunicacion@senatics.gov.py</a></h6><h4 style="text-align: center;" rel="text-align: center;">Asuncion - Paraguay</h4>'),
(238, '<p style="text-align: center;"><img src="/application/files/6315/2649/3706/senatics_1.png" id="image-marker" height="97" width="459" style="width: 459px; height: auto;">\r\n</p><h6><strong><i class="fa fa-map-marker"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class="fa fa-phone"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class="fa fa-clock-o"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class="fa fa-envelope"></i> E-mail:</strong> <a href="mailto:mailto:comunicacion@senatics.gov.py">comunicacion@senatics.gov.py</a></h6><h4 style="text-align: center;" rel="text-align: center;">Asuncion - Paraguay</h4>'),
(239, '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class="fb-page" data-href="https://www.facebook.com/SENATICsPy" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="true" data-show-posts="true"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/SENATICsPy"><a href="https://www.facebook.com/SENATICsPy">SENATICs Paraguay</a></blockquote></div></div>'),
(240, '<p data-redactor-inserted-image="true"><img src="/application/files/4415/2665/3509/newspaper.png" id="image-marker" alt="" style="width:30px;height:auto;float: left; margin: 0px 10px 10px 0px;">\r\n</p><h3>Noticias</h3>'),
(420, '<style>\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n</style>\r\n<h5 class="white-text">Enlaces de Interés</h5>\r\n<div class="col l6 s12">\r\n  <ul>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.presidencia.gov.py/">Presidencia de la República del Paraguay</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.sfp.gov.py/">Secretaría de la Función Pública (SFP)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.sas.gov.py/">Secretaría de Acción Social (SAS)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.fondec.gov.py/">Fondo Nacional de la Cultura y las Artes (FONDEC)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.senatur.gov.py/">Secretaría Nacional de Turismo (SENATUR)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.ministeriodejusticia.gov.py/">Ministerio de Justicia (MJ)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.mtess.gov.py/">Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)</a></li>\r\n      \r\n  </ul>\r\n</div>\r\n<div class="col l6 s12">\r\n  <ul>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.cultura.gov.py/">Secretaría Nacional de Cultura (SNC)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.sicom.gov.py/">Secretaría de Información y Comunicación (SICOM)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.indi.gov.py/">Instituto Paraguayo del Indigena (INDI)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.mec.gov.py/cms/">Ministerio de Educación y Cultura (MEC)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.hacienda.gov.py/">Ministerio de Hacienda (MH)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.snd.gov.py/">Secretaría Nacional de Deportes (SND)</a></li>\r\n    <li><a class="white-text white-enlaces" target="_blank" href="http://www.mspbs.gov.py/">Ministerio de Salud Pública y Bienestar Social (MSPyBS)</a></li>\r\n  </ul>\r\n</div>'),
(421, '<p>Portal construido conjuntamente con la <a href="https://www.senatics.gov.py/" target="_blank">SENATICs</a>\r\n</p><p>Secretaría Nacional de Tecnologías de la Información y Comunicación - 2018\r\n</p>'),
(437, '<h6><strong><i class="fa fa-map-marker"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class="fa fa-phone"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class="fa fa-clock-o"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class="fa fa-envelope"></i> E-mail:</strong> <a href="mailto:mailto:comunicacion@senatics.gov.py">comunicacion@senatics.gov.py</a></h6>'),
(464, '<h5>Últimas Noticias</h5>'),
(585, '<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName("collection");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace("px",""));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+"px";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace("px",""));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+"px";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace("px",""));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+"px";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName("collection");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace("px",""));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+"px";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace("px",""));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+"px"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace("px",""));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+"px";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName("collection");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n	function lectura() {\r\n          var modo_lectura_datos = document.getElementById("fondo_sitio").style.background;\r\n          \r\n          if (modo_lectura_datos == "black" || modo_lectura_datos == "black none repeat scroll 0% 0%"){\r\n    		  document.getElementById("fondo_sitio").removeAttribute("style");\r\n    		  document.getElementById("cabecera").style.display=\'block\';\r\n    	  }else{\r\n    	      document.getElementById("fondo_sitio").style.background=\'black\';\r\n    	      document.getElementById("cabecera").style.display=\'none\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class="fixed-action-btn horizontal click-to-toggle invisible_smartphone" style="bottom: 45px; right: 24px;">\r\n    <a class="btn-floating btn-large red">\r\n      <i class="large mdi-navigation-menu"></i>\r\n    </a>\r\n    <style>\r\n        .accesibilidad li{\r\n            list-style-type: none !important;\r\n        }\r\n        \r\n    </style>\r\n    <ul class="accesibilidad">\r\n      <li class="hidden-xs"><a href="javascript:lectura();" class="btn-floating red"><i class="material-icons">settings_brightness</i></a></li>\r\n      <li><a href="javascript:increaseFontSize();" class="btn-floating green"><i class="material-icons">zoom_in</i></a></li>\r\n      <li><a href="javascript:decreaseFontSize();" class="btn-floating blue"><i class="material-icons">zoom_out</i></a></li>\r\n      <li><a href="javascript:normalFontSize();" class="btn-floating orange"><i class="material-icons">spellcheck</i></a></li>\r\n    </ul>\r\n  </div>'),
(586, '<h6><span style="font-size: 12px;"><strong><i class="fa fa-map-marker"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</span></h6><h6><span style="font-size: 12px;"><strong><i class="fa fa-phone"></i>Telefono:</strong> (+595 21) 217 - 9000</span></h6><h6><span style="font-size: 12px;"><strong><i class="fa fa-clock-o"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</span></h6><h6><span style="font-size: 12px;"><strong><i class="fa fa-envelope"></i> E-mail:</strong> </span><a href="mailto:mailto:comunicacion@senatics.gov.py"><span style="font-size: 12px;">comunicacion@senatics.gov.py</span></a></h6>'),
(587, '<p>Portal construido conjuntamente con la <a href="https://www.senatics.gov.py/" target="_blank">SENATICs</a>\r\n</p><p>Secretaría Nacional de Tecnologías de la Información y Comunicación</p>'),
(589, '<p data-redactor-inserted-image="true"><concrete-picture fID="41" id="image-marker" width="314" height="122" style="width: 314px; height: 122px;" /></p><h6><strong><i class="fa fa-map-marker"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class="fa fa-phone"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class="fa fa-clock-o"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class="fa fa-envelope"></i> E-mail:</strong> <a href="mailto:mailto:comunicacion@senatics.gov.py">comunicacion@senatics.gov.py</a></h6><h4 style="text-align: center;" rel="text-align: center;">Asuncion - Paraguay</h4>'),
(647, '<p data-redactor-inserted-image="true"><concrete-picture fID="38" id="image-marker" width="514" height="513" alt="" style="width: 514px; height: 513px; float: right; margin: 0px 0px 10px 10px;" /></p><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><blockquote>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</blockquote><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>'),
(653, '<p data-redactor-inserted-image="true"><concrete-picture fID="38" id="image-marker" width="514" height="513" alt="" style="width: 514px; height: 513px; float: right; margin: 0px 0px 10px 10px;" /></p><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><blockquote>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</blockquote><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>'),
(672, '<p data-redactor-inserted-image="true"><concrete-picture fID="37" id="image-marker" width="422" height="421" alt="" style="width: 422px; height: 421px; float: left; margin: 0px 10px 10px 0px;" /></p><blockquote>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</blockquote><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><pre>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</pre><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>'),
(687, '<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p data-redactor-inserted-image="true"><concrete-picture fID="32" id="image-marker" width="681" height="384" style="width: 681px; height: 384px; display: block; margin: auto;" alt="" /></p><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>'),
(705, '<p data-redactor-inserted-image="true"><concrete-picture fID="29" id="image-marker" width="439" height="440" alt="" style="width: 439px; height: 440px; float: left; margin: 0px 10px 10px 0px;" /></p><blockquote>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</blockquote><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>'),
(713, '<p>Secretaría Nacional de Tecnologías de la Información y Comunicación<br></p>'),
(719, '<p>Secretaría Nacional de Tecnologías de la Información y Comunicación<br></p><p>Asunción - Paraguay</p>'),
(720, '<p data-redactor-inserted-image="true"><concrete-picture fID="41" id="image-marker" width="314" height="122" style="width: 314px; height: 122px;" /></p><h6><strong><i class="fa fa-map-marker"></i> Dirección:</strong> Complejo Santos E2 - Gral. Santos 1170 c/ Concordia</h6><h6><strong><i class="fa fa-phone"></i>Telefono:</strong> (+595 21) 217 - 9000</h6><h6><strong><i class="fa fa-clock-o"></i> Horarios de Atención:</strong> de 07:00hs a 15:00hs</h6><h6><strong><i class="fa fa-envelope"></i> E-mail:</strong> <a href="mailto:mailto:comunicacion@senatics.gov.py">comunicacion@senatics.gov.py</a></h6><h4 style="text-align: center;" rel="text-align: center;">Asunción - Paraguay</h4>'),
(722, '<script>\r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName("collection");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace("px",""));\r\n          } else {\r\n\r\n             var s = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             s += 1;\r\n          }\r\n          p[i].style.fontSize = s+"px";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace("px",""));\r\n          } else {\r\n\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             b += 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+"px";\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace("px",""));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c += 1;\r\n          }\r\n          collection[i].style.fontSize = c+"px";\r\n       }\r\n    }\r\n    function decreaseFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName("collection");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          if(p[i].style.fontSize) {\r\n             var s = parseInt(p[i].style.fontSize.replace("px",""));\r\n          } else {\r\n             var s = 14;\r\n          }\r\n          if(s!=min) {\r\n             s -= 1;\r\n          }\r\n          p[i].style.fontSize = s+"px";\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          if(blockquote[i].style.fontSize) {\r\n             var b = parseInt(blockquote[i].style.fontSize.replace("px",""));\r\n          } else {\r\n             var b = 14;\r\n          }\r\n          if(s!=max) {\r\n             b -= 1;\r\n          }\r\n          blockquote[i].style.fontSize = b+"px"\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          if(collection[i].style.fontSize) {\r\n             var c = parseInt(collection[i].style.fontSize.replace("px",""));\r\n          } else {\r\n\r\n             var c = 14;\r\n          }\r\n          if(s!=max) {\r\n\r\n             c -= 1;\r\n          }\r\n          collection[i].style.fontSize = c+"px";\r\n       }\r\n    }\r\n    function normalFontSize() {\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName("collection");\r\n       \r\n       for(i=0;i<p.length;i++) {\r\n          p[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<blockquote.length;i++) {\r\n          blockquote[i].removeAttribute(\'style\');\r\n       }\r\n       for(i=0;i<collection.length;i++) {\r\n          collection[i].removeAttribute(\'style\');\r\n       }\r\n    }\r\n	function lectura() {\r\n          var modo_lectura_datos = document.getElementById("fondo_sitio").style.background;\r\n          \r\n          if (modo_lectura_datos == "black" || modo_lectura_datos == "black none repeat scroll 0% 0%"){\r\n    		  document.getElementById("fondo_sitio").removeAttribute("style");\r\n    		  document.getElementById("cabecera").style.display=\'block\';\r\n    	  }else{\r\n    	      document.getElementById("fondo_sitio").style.background=\'black\';\r\n    	      document.getElementById("cabecera").style.display=\'none\';\r\n    	  }\r\n	}\r\n</script>\r\n\r\n\r\n<div class="fixed-action-btn horizontal click-to-toggle invisible_smartphone" style="bottom: 45px; right: 24px;">\r\n    <a class="btn-floating btn-large red">\r\n      <i class="large mdi-navigation-menu"></i>\r\n    </a>\r\n    <style>\r\n        .accesibilidad li{\r\n            list-style-type: none !important;\r\n        }\r\n        \r\n    </style>\r\n    <ul class="accesibilidad">\r\n      <li><a href="javascript:increaseFontSize();" class="btn-floating green"><i class="material-icons">zoom_in</i></a></li>\r\n      <li><a href="javascript:decreaseFontSize();" class="btn-floating blue"><i class="material-icons">zoom_out</i></a></li>\r\n      <li><a href="javascript:normalFontSize();" class="btn-floating orange"><i class="material-icons">spellcheck</i></a></li>\r\n    </ul>\r\n  </div>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btConvenios`
--

CREATE TABLE `btConvenios` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btConvenios`
--

INSERT INTO `btConvenios` (`bID`, `fecha_actualizacion`) VALUES
(44, '2018-05-17 14:47:20'),
(45, '2018-05-17 14:47:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btConveniosEntries`
--

CREATE TABLE `btConveniosEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `numero` text COLLATE utf8_unicode_ci,
  `anho` text COLLATE utf8_unicode_ci,
  `titulo` text COLLATE utf8_unicode_ci,
  `descripcion` text COLLATE utf8_unicode_ci,
  `institucion` text COLLATE utf8_unicode_ci,
  `fecha` date DEFAULT NULL,
  `enlace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fecha_actualizacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btConveniosEntries`
--

INSERT INTO `btConveniosEntries` (`id`, `bID`, `numero`, `anho`, `titulo`, `descripcion`, `institucion`, `fecha`, `enlace`, `orden`, `fecha_actualizacion`) VALUES
(1, 44, '1', '2018', 'Prueba de Documento de Resolución 05/2018', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', NULL, NULL, '#', 0, '2018-05-17 14:47:20'),
(3, 45, '1', '2018', 'Prueba de Documento de Resolución 05/2018', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos espécimen.', NULL, NULL, '#', 0, '2018-05-17 14:47:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btCoreAreaLayout`
--

CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btCoreAreaLayout`
--

INSERT INTO `btCoreAreaLayout` (`bID`, `arLayoutID`) VALUES
(27, 1),
(47, 2),
(48, 3),
(151, 4),
(156, 5),
(161, 6),
(231, 7),
(248, 8),
(249, 9),
(445, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btCoreConversation`
--

CREATE TABLE `btCoreConversation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) UNSIGNED NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btCorePageTypeComposerControlOutput`
--

CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) UNSIGNED NOT NULL,
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btCorePageTypeComposerControlOutput`
--

INSERT INTO `btCorePageTypeComposerControlOutput` (`bID`, `ptComposerOutputControlID`) VALUES
(9, 1),
(26, 5),
(449, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btCoreScrapbookDisplay`
--

CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bOriginalID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btCoreScrapbookDisplay`
--

INSERT INTO `btCoreScrapbookDisplay` (`bID`, `bOriginalID`) VALUES
(25, 23),
(36, 23),
(39, 23),
(446, 23),
(118, 56),
(450, 95),
(453, 96),
(456, 98),
(448, 157),
(447, 158),
(436, 238);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btCoreStackDisplay`
--

CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `stID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btDashboardNewsflowLatest`
--

CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) UNSIGNED NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btDashboardNewsflowLatest`
--

INSERT INTO `btDashboardNewsflowLatest` (`bID`, `slot`) VALUES
(4, 'A'),
(5, 'B'),
(8, 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btDateNavigation`
--

CREATE TABLE `btDateNavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cTargetID` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btDateNavigation`
--

INSERT INTO `btDateNavigation` (`bID`, `title`, `filterByParent`, `redirectToResults`, `cParentID`, `cTargetID`, `ptID`) VALUES
(98, 'Archivos / Biblioteca', 0, 0, 0, 0, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btEventCalendar`
--

CREATE TABLE `btEventCalendar` (
  `bID` int(10) UNSIGNED NOT NULL,
  `calendarID` int(10) UNSIGNED DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `contentHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btEventCalendar`
--

INSERT INTO `btEventCalendar` (`bID`, `calendarID`, `lang`, `typeID`, `contentHeight`) VALUES
(427, 0, 'en-gb', '0', ''),
(428, 1, 'es', '0', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btExternalForm`
--

CREATE TABLE `btExternalForm` (
  `bID` int(10) UNSIGNED NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btFaq`
--

CREATE TABLE `btFaq` (
  `bID` int(10) UNSIGNED NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btFaqEntries`
--

CREATE TABLE `btFaqEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btFeature`
--

CREATE TABLE `btFeature` (
  `bID` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btFeature`
--

INSERT INTO `btFeature` (`bID`, `icon`, `title`, `paragraph`, `externalLink`, `internalLinkCID`) VALUES
(49, 'star', 'Misión', '<p style="text-align: justify;">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p style="text-align: justify;"><br></p>', '', 0),
(50, 'trophy', 'Visión', '<p style="text-align: justify;">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p style="text-align: justify;"><br></p>', '', 0),
(51, 'university', 'Ejes Estratégicos', '<p style="text-align: justify;">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p style="text-align: justify;"><br></p>', '', 0),
(52, 'legal', '', '<p style="text-align: justify;">Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p><p style="text-align: justify;"><br></p>', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btForm`
--

CREATE TABLE `btForm` (
  `bID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btForm`
--

INSERT INTO `btForm` (`bID`, `questionSetId`, `surveyName`, `submitText`, `thankyouMsg`, `notifyMeOnSubmission`, `recipientEmail`, `displayCaptcha`, `redirectCID`, `addFilesToSet`) VALUES
(232, 1526652094, 'Contacto', 'Enviar', 'Gracias por su mensaje!', 0, '', 1, 0, 0),
(234, 1526652094, 'Contacto', 'Enviar', 'Gracias por su mensaje!', 0, '', 1, 0, 0),
(236, 1526652094, 'Contacto', 'Enviar', 'Gracias por su mensaje!', 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btFormAnswers`
--

CREATE TABLE `btFormAnswers` (
  `aID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED DEFAULT '0',
  `msqID` int(10) UNSIGNED DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btFormAnswerSet`
--

CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btFormQuestions`
--

CREATE TABLE `btFormQuestions` (
  `qID` int(10) UNSIGNED NOT NULL,
  `msqID` int(10) UNSIGNED DEFAULT '0',
  `bID` int(10) UNSIGNED DEFAULT '0',
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) UNSIGNED DEFAULT '1000',
  `width` int(10) UNSIGNED DEFAULT '50',
  `height` int(10) UNSIGNED DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btFormQuestions`
--

INSERT INTO `btFormQuestions` (`qID`, `msqID`, `bID`, `questionSetId`, `question`, `inputType`, `options`, `position`, `width`, `height`, `defaultDate`, `required`) VALUES
(1, 1, 232, 1526652094, 'Nombres', 'field', '', 1000, 50, 3, '', 1),
(2, 2, 232, 1526652094, 'Apellidos', 'field', '', 1000, 50, 3, '', 1),
(3, 3, 232, 1526652094, 'Correo Electrónico', 'email', 'a:1:{s:22:"send_notification_from";i:0;}', 1000, 50, 3, '', 1),
(4, 4, 232, 1526652094, 'Mensaje', 'text', '', 1000, 250, 4, '', 1),
(5, 4, 234, 1526652094, 'Mensaje', 'text', '', 1000, 150, 4, '', 1),
(6, 1, 234, 1526652094, 'Nombres', 'field', '', 1000, 50, 3, '', 1),
(7, 2, 234, 1526652094, 'Apellidos', 'field', '', 1000, 50, 3, '', 1),
(8, 3, 234, 1526652094, 'Correo Electrónico', 'email', 'a:1:{s:22:"send_notification_from";i:0;}', 1000, 50, 3, '', 1),
(13, 3, 236, 1526652094, 'Correo Electrónico', 'email', 'a:1:{s:22:"send_notification_from";i:0;}', 1000, 50, 3, '', 1),
(14, 4, 236, 1526652094, 'Mensaje', 'text', '', 1000, 150, 3, '', 1),
(15, 1, 236, 1526652094, 'Nombre y Apellido', 'field', '', 1000, 50, 3, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btGoogleMap`
--

CREATE TABLE `btGoogleMap` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btImageSlider`
--

CREATE TABLE `btImageSlider` (
  `bID` int(10) UNSIGNED NOT NULL,
  `navigationType` int(10) UNSIGNED DEFAULT '0',
  `timeout` int(10) UNSIGNED DEFAULT NULL,
  `speed` int(10) UNSIGNED DEFAULT NULL,
  `noAnimate` int(10) UNSIGNED DEFAULT NULL,
  `pause` int(10) UNSIGNED DEFAULT NULL,
  `maxWidth` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btImageSliderEntries`
--

CREATE TABLE `btImageSliderEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `fID` int(10) UNSIGNED DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btLeyTransparencia`
--

CREATE TABLE `btLeyTransparencia` (
  `bID` int(10) UNSIGNED NOT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btLeyTransparencia`
--

INSERT INTO `btLeyTransparencia` (`bID`, `internalLinkCID`) VALUES
(150, 177),
(154, 177),
(263, 177);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btLeyTransparenciaEntries`
--

CREATE TABLE `btLeyTransparenciaEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btLeyTransparenciaEntries`
--

INSERT INTO `btLeyTransparenciaEntries` (`id`, `bID`, `nombre`, `orden`, `fID`) VALUES
(25, 263, 'Nomina de Funcionarios', 0, 7),
(26, 263, 'Ejecuci&oacute;n Presupuestaria', 1, 7),
(27, 263, 'Inventario', 2, 7),
(28, 263, 'Reglamento Interno', 3, 7),
(29, 263, 'Anexo del Personal', 4, 7),
(30, 263, 'Presupuesto de Ingresos', 5, 7),
(31, 263, 'Manual de Funciones', 6, 7),
(32, 263, 'Informe de Vi&aacute;ticos', 7, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btListaItems`
--

CREATE TABLE `btListaItems` (
  `bID` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantItemsPag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btListaItemsEntries`
--

CREATE TABLE `btListaItemsEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `orden` int(11) NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btListarTramites`
--

CREATE TABLE `btListarTramites` (
  `bID` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantItemsPag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btListarTramitesEntries`
--

CREATE TABLE `btListarTramitesEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
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
  `fID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btMapas`
--

CREATE TABLE `btMapas` (
  `bID` int(10) UNSIGNED NOT NULL,
  `titulo_mapa` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zoom` int(11) DEFAULT '14',
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btMapasEntries`
--

CREATE TABLE `btMapasEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `titulo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `icono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btNavigation`
--

CREATE TABLE `btNavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  `displaySystemPages` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btNavigation`
--

INSERT INTO `btNavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`, `displaySystemPages`) VALUES
(18, 'display_asc', 'top', 0, 0, 'all', 'all', 0, 0, 0),
(23, 'display_asc', 'top', 0, 0, 'relevant_breadcrumb', 'all', 0, 0, 0),
(37, 'display_asc', 'current', 0, 0, 'none', 'none', 0, 0, 0),
(40, 'display_asc', 'current', 0, 0, 'none', 'enough', 0, 0, 0),
(41, 'display_asc', 'current', 0, 0, 'none', 'enough', 0, 0, 0),
(42, 'display_asc', 'current', 0, 0, 'all', 'enough', 0, 0, 0),
(43, 'display_asc', 'below', 0, 0, 'all', 'enough', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btNextPrevious`
--

CREATE TABLE `btNextPrevious` (
  `bID` int(10) UNSIGNED NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btOpenData`
--

CREATE TABLE `btOpenData` (
  `bID` int(10) UNSIGNED NOT NULL,
  `opendataID` int(10) UNSIGNED DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typeID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `contentHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btPageAttributeDisplay`
--

CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) UNSIGNED DEFAULT NULL,
  `thumbnailWidth` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btPageAttributeDisplay`
--

INSERT INTO `btPageAttributeDisplay` (`bID`, `attributeHandle`, `attributeTitleText`, `displayTag`, `dateFormat`, `thumbnailHeight`, `thumbnailWidth`) VALUES
(157, 'rpv_pageDatePublic', 'Publicado: ', 'blockquote', 'd/m/Y h:i:a', 250, 250);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btPageList`
--

CREATE TABLE `btPageList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `num` smallint(5) UNSIGNED NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) UNSIGNED DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btPageList`
--

INSERT INTO `btPageList` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `useButtonForLink`, `buttonLinkText`, `pageListTitle`, `filterByRelated`, `filterByCustomTopic`, `filterDateOption`, `filterDateDays`, `filterDateStart`, `filterDateEnd`, `relatedTopicAttributeKeyHandle`, `customTopicAttributeKeyHandle`, `customTopicTreeNodeID`, `includeName`, `includeDescription`, `includeDate`, `includeAllDescendents`, `paginate`, `displayAliases`, `ignorePermissions`, `enableExternalFiltering`, `ptID`, `pfID`, `truncateSummaries`, `displayFeaturedOnly`, `noResultsMessage`, `displayThumbnail`, `truncateChars`) VALUES
(56, 10, 'chrono_desc', 0, 0, 1, 'Ver más', '', 0, 0, 'all', 0, NULL, NULL, '', '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 7, 1, 1, 0, 'No se encontraron noticias relacionadas.', 1, 300),
(414, 3, 'chrono_desc', 0, 0, 1, 'Ver más', '', 0, 0, 'all', 0, NULL, NULL, '', '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 7, 1, 1, 0, 'No se encontraron noticias relacionadas.', 1, 300),
(415, 3, 'chrono_desc', 0, 0, 1, 'Ver más', '', 0, 0, 'all', 0, NULL, NULL, '', '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 7, 1, 1, 0, 'No se encontraron noticias relacionadas.', 1, 300),
(462, 5, 'chrono_desc', 0, 0, 0, '', '', 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 1, 1, 0, 0, 0, 0, 0, 7, 0, 1, 0, 'No hay noticias', 1, 150),
(593, 3, 'chrono_desc', 0, 0, 1, 'Ver más', '', 0, 0, 'all', 0, NULL, NULL, '', '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 7, 0, 1, 0, 'No se encontraron noticias relacionadas.', 1, 300),
(600, 0, 'display_asc', 0, 0, 0, '', '', 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0),
(601, 0, 'display_asc', 0, 0, 0, '', '', 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0),
(706, 10, 'chrono_desc', 0, 0, 1, 'Leer más', '', 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 1, 1, 0, 1, 0, 0, 1, 7, 0, 1, 0, 'No hay noticias relacionadas', 1, 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btPageTitle`
--

CREATE TABLE `btPageTitle` (
  `bID` int(10) UNSIGNED NOT NULL,
  `useCustomTitle` int(10) UNSIGNED DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btPageTitle`
--

INSERT INTO `btPageTitle` (`bID`, `useCustomTitle`, `titleText`, `formatting`) VALUES
(32, 0, '[Título de la Página]', 'h4'),
(33, 0, 'Noticias', 'h4'),
(35, 0, '[Título de la Página]', 'h4'),
(38, 0, '[Título de la Página]', 'h4'),
(92, 0, '[Título de la Página]', 'h4'),
(444, 0, '[Título de la Página]', 'h4'),
(592, 1, 'Últimas noticias', 'h4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btPublicaciones`
--

CREATE TABLE `btPublicaciones` (
  `bID` int(10) UNSIGNED NOT NULL,
  `item_por_pagina` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btPublicacionesEntries`
--

CREATE TABLE `btPublicacionesEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `fID` int(10) UNSIGNED DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `btnTexto` longtext COLLATE utf8_unicode_ci,
  `target` int(10) UNSIGNED DEFAULT '0',
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btRssDisplay`
--

CREATE TABLE `btRssDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) UNSIGNED DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btSearch`
--

CREATE TABLE `btSearch` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btSearch`
--

INSERT INTO `btSearch` (`bID`, `title`, `buttonText`, `baseSearchPath`, `postTo_cID`, `resultsURL`) VALUES
(13, '', 'Buscar', '', '', ''),
(432, '', '', '', '', ''),
(433, '', 'Buscar', '', '213', ''),
(434, '', '', '', '', ''),
(584, '', 'Buscar', '', '213', ''),
(590, '', 'Buscar', '', '213', ''),
(604, '', '', '/noticias', '213', ''),
(707, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btShareThisPage`
--

CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btShareThisPage`
--

INSERT INTO `btShareThisPage` (`btShareThisPageID`, `bID`, `service`, `displayOrder`) VALUES
(1, 158, 'facebook', 0),
(2, 158, 'twitter', 1),
(3, 158, 'linkedin', 2),
(4, 158, 'reddit', 3),
(5, 158, 'pinterest', 4),
(6, 158, 'google_plus', 5),
(7, 158, 'print', 6),
(8, 158, 'email', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btSlider`
--

CREATE TABLE `btSlider` (
  `bID` int(10) UNSIGNED NOT NULL,
  `navigationType` int(10) UNSIGNED DEFAULT '0',
  `navegationShow` int(10) UNSIGNED DEFAULT '0',
  `timeSlide` int(10) UNSIGNED DEFAULT '7',
  `autoHeight` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btSlider`
--

INSERT INTO `btSlider` (`bID`, `navigationType`, `navegationShow`, `timeSlide`, `autoHeight`) VALUES
(153, 0, 0, 7, 0),
(155, 0, 0, 7, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btSliderEntries`
--

CREATE TABLE `btSliderEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `fID` int(10) UNSIGNED DEFAULT '0',
  `linkURL` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btSliderEntries`
--

INSERT INTO `btSliderEntries` (`id`, `bID`, `cID`, `fID`, `linkURL`, `title`, `description`, `sortOrder`) VALUES
(2, 153, 0, 6, '', '', '', 0),
(4, 155, 0, 6, '', '', '', 0),
(5, 155, 0, 8, '', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btSocialLinks`
--

CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT '0',
  `slID` int(10) UNSIGNED DEFAULT '0',
  `displayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btSurvey`
--

CREATE TABLE `btSurvey` (
  `bID` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btSurveyOptions`
--

CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) UNSIGNED NOT NULL,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btSurveyResults`
--

CREATE TABLE `btSurveyResults` (
  `resultID` int(10) UNSIGNED NOT NULL,
  `optionID` int(10) UNSIGNED DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btSvgSocialMediaIcons`
--

CREATE TABLE `btSvgSocialMediaIcons` (
  `bID` int(10) UNSIGNED NOT NULL,
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
  `sortOrder` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btSvgSocialMediaIcons`
--

INSERT INTO `btSvgSocialMediaIcons` (`bID`, `openLinkBlank`, `behanceAddress`, `deviantartAddress`, `dribbbleAddress`, `emailAddress`, `facebookAddress`, `flickrAddress`, `githubAddress`, `googleplusAddress`, `instagramAddress`, `itunesAddress`, `linkedinAddress`, `pinterestAddress`, `skypeAddress`, `soundcloudAddress`, `spotifyAddress`, `tumblrAddress`, `twitterAddress`, `vimeoAddress`, `youtubeAddress`, `iconShape`, `iconColor`, `iconHover`, `iconSize`, `iconMargin`, `position`, `icon`, `sortOrder`) VALUES
(16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'round', 'logo', 'hoverOn', 30, 5, 'right', 'a:19:{s:7:"behance";a:1:{s:7:"address";s:0:"";}s:10:"deviantart";a:1:{s:7:"address";s:0:"";}s:8:"dribbble";a:1:{s:7:"address";s:0:"";}s:8:"facebook";a:2:{s:7:"checked";s:8:"facebook";s:7:"address";s:1:"#";}s:9:"instagram";a:2:{s:7:"checked";s:9:"instagram";s:7:"address";s:1:"#";}s:7:"twitter";a:2:{s:7:"checked";s:7:"twitter";s:7:"address";s:1:"#";}s:10:"googleplus";a:2:{s:7:"checked";s:10:"googleplus";s:7:"address";s:1:"#";}s:7:"youtube";a:2:{s:7:"checked";s:7:"youtube";s:7:"address";s:1:"#";}s:5:"email";a:2:{s:7:"checked";s:5:"email";s:7:"address";s:1:"#";}s:6:"flickr";a:1:{s:7:"address";s:0:"";}s:6:"github";a:1:{s:7:"address";s:0:"";}s:6:"itunes";a:1:{s:7:"address";s:0:"";}s:8:"linkedin";a:1:{s:7:"address";s:0:"";}s:9:"pinterest";a:1:{s:7:"address";s:0:"";}s:5:"skype";a:1:{s:7:"address";s:0:"";}s:10:"soundcloud";a:1:{s:7:"address";s:0:"";}s:7:"spotify";a:1:{s:7:"address";s:0:"";}s:6:"tumblr";a:1:{s:7:"address";s:0:"";}s:5:"vimeo";a:1:{s:7:"address";s:0:"";}}', 'Behance,deviantART,Dribbble,Facebook,Instagram,Twitter,GooglePlus,Youtube,Email,Flickr,Github,iTunes,Linkedin,Pinterest,Skype,SoundCloud,Spotify,Tumblr,Vimeo'),
(17, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'round', 'logo', 'hoverOn', 25, 5, 'right', 'a:19:{s:7:"behance";a:1:{s:7:"address";s:0:"";}s:10:"deviantart";a:1:{s:7:"address";s:0:"";}s:8:"dribbble";a:1:{s:7:"address";s:0:"";}s:8:"facebook";a:2:{s:7:"checked";s:8:"facebook";s:7:"address";s:1:"#";}s:9:"instagram";a:2:{s:7:"checked";s:9:"instagram";s:7:"address";s:1:"#";}s:7:"twitter";a:2:{s:7:"checked";s:7:"twitter";s:7:"address";s:1:"#";}s:10:"googleplus";a:2:{s:7:"checked";s:10:"googleplus";s:7:"address";s:1:"#";}s:7:"youtube";a:2:{s:7:"checked";s:7:"youtube";s:7:"address";s:1:"#";}s:5:"email";a:2:{s:7:"checked";s:5:"email";s:7:"address";s:1:"#";}s:6:"flickr";a:1:{s:7:"address";s:0:"";}s:6:"github";a:1:{s:7:"address";s:0:"";}s:6:"itunes";a:1:{s:7:"address";s:0:"";}s:8:"linkedin";a:1:{s:7:"address";s:0:"";}s:9:"pinterest";a:1:{s:7:"address";s:0:"";}s:5:"skype";a:1:{s:7:"address";s:0:"";}s:10:"soundcloud";a:1:{s:7:"address";s:0:"";}s:7:"spotify";a:1:{s:7:"address";s:0:"";}s:6:"tumblr";a:1:{s:7:"address";s:0:"";}s:5:"vimeo";a:1:{s:7:"address";s:0:"";}}', 'Behance,deviantART,Dribbble,Facebook,Instagram,Twitter,GooglePlus,Youtube,Email,Flickr,Github,iTunes,Linkedin,Pinterest,Skype,SoundCloud,Spotify,Tumblr,Vimeo'),
(712, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'square', 'logo', 'hoverOn', 30, 5, 'right', 'a:19:{s:7:"behance";a:1:{s:7:"address";s:0:"";}s:10:"deviantart";a:1:{s:7:"address";s:0:"";}s:8:"dribbble";a:1:{s:7:"address";s:0:"";}s:8:"facebook";a:2:{s:7:"checked";s:8:"facebook";s:7:"address";s:1:"#";}s:9:"instagram";a:2:{s:7:"checked";s:9:"instagram";s:7:"address";s:1:"#";}s:7:"twitter";a:2:{s:7:"checked";s:7:"twitter";s:7:"address";s:1:"#";}s:10:"googleplus";a:2:{s:7:"checked";s:10:"googleplus";s:7:"address";s:1:"#";}s:7:"youtube";a:2:{s:7:"checked";s:7:"youtube";s:7:"address";s:1:"#";}s:5:"email";a:2:{s:7:"checked";s:5:"email";s:7:"address";s:1:"#";}s:6:"flickr";a:1:{s:7:"address";s:0:"";}s:6:"github";a:1:{s:7:"address";s:0:"";}s:6:"itunes";a:1:{s:7:"address";s:0:"";}s:8:"linkedin";a:1:{s:7:"address";s:0:"";}s:9:"pinterest";a:1:{s:7:"address";s:0:"";}s:5:"skype";a:1:{s:7:"address";s:0:"";}s:10:"soundcloud";a:1:{s:7:"address";s:0:"";}s:7:"spotify";a:1:{s:7:"address";s:0:"";}s:6:"tumblr";a:1:{s:7:"address";s:0:"";}s:5:"vimeo";a:1:{s:7:"address";s:0:"";}}', 'Behance,deviantART,Dribbble,Facebook,Instagram,Twitter,GooglePlus,Youtube,Email,Flickr,Github,iTunes,Linkedin,Pinterest,Skype,SoundCloud,Spotify,Tumblr,Vimeo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btSwitchLanguage`
--

CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btTags`
--

CREATE TABLE `btTags` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btTags`
--

INSERT INTO `btTags` (`bID`, `title`, `targetCID`, `displayMode`, `cloudCount`) VALUES
(102, '', 159, 'page', 0),
(455, '', 159, 'page', 11),
(603, 'Etiquetas', 225, 'cloud', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btTestimonial`
--

CREATE TABLE `btTestimonial` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btTestimonial`
--

INSERT INTO `btTestimonial` (`bID`, `fID`, `name`, `position`, `company`, `companyURL`, `paragraph`) VALUES
(417, 18, 'Nombre de la Persona', 'Cargo / Ocupación', 'Nombre de la Institución', '', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.'),
(419, 19, 'Nombre de la Persona', 'Cargo / Ocupación', 'Nombre de la Institución', '', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btTopicList`
--

CREATE TABLE `btTopicList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btTopicList`
--

INSERT INTO `btTopicList` (`bID`, `mode`, `topicAttributeKeyHandle`, `topicTreeID`, `cParentID`, `title`) VALUES
(101, 'P', 'categorias', 2, 159, ''),
(452, 'P', 'categorias', 2, 159, ''),
(602, 'S', 'categorias', 2, 225, 'Temas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btTransparenciaActiva`
--

CREATE TABLE `btTransparenciaActiva` (
  `bID` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `resumen` text COLLATE utf8_unicode_ci,
  `autor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btTransparenciaActivaEntries`
--

CREATE TABLE `btTransparenciaActivaEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `texto_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `btTransparenciaActivaEntries`
--

INSERT INTO `btTransparenciaActivaEntries` (`id`, `bID`, `orden`, `fID`, `texto_link`) VALUES
(1, 148, 0, 4, 'Descargar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btVideo`
--

CREATE TABLE `btVideo` (
  `bID` int(10) UNSIGNED NOT NULL,
  `webmfID` int(10) UNSIGNED DEFAULT '0',
  `oggfID` int(10) UNSIGNED DEFAULT '0',
  `posterfID` int(10) UNSIGNED DEFAULT '0',
  `mp4fID` int(10) UNSIGNED DEFAULT '0',
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `btYouTube`
--

CREATE TABLE `btYouTube` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controls` int(10) UNSIGNED DEFAULT NULL,
  `iv_load_policy` int(10) UNSIGNED DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT '0',
  `modestbranding` tinyint(1) NOT NULL DEFAULT '0',
  `rel` tinyint(1) NOT NULL DEFAULT '0',
  `showinfo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionAttributeValues`
--

CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `avID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CollectionAttributeValues`
--

INSERT INTO `CollectionAttributeValues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(2, 1, 4, 1),
(3, 1, 3, 2),
(4, 1, 3, 3),
(5, 1, 3, 4),
(6, 1, 3, 5),
(8, 1, 3, 6),
(9, 1, 3, 7),
(10, 1, 3, 8),
(11, 1, 5, 9),
(11, 1, 3, 10),
(12, 1, 3, 11),
(13, 1, 3, 12),
(14, 1, 3, 13),
(15, 1, 3, 14),
(16, 1, 3, 15),
(16, 1, 5, 16),
(17, 1, 3, 17),
(17, 1, 5, 18),
(19, 1, 3, 19),
(20, 1, 3, 20),
(22, 1, 3, 21),
(23, 1, 3, 22),
(24, 1, 3, 23),
(25, 1, 3, 24),
(26, 1, 3, 25),
(28, 1, 3, 26),
(29, 1, 3, 27),
(29, 1, 5, 28),
(31, 1, 5, 29),
(32, 1, 5, 30),
(33, 1, 5, 31),
(34, 1, 5, 32),
(35, 1, 5, 33),
(36, 1, 5, 34),
(38, 1, 5, 35),
(39, 1, 3, 36),
(40, 1, 3, 37),
(41, 1, 3, 38),
(43, 1, 4, 39),
(44, 1, 3, 40),
(48, 1, 3, 41),
(50, 1, 5, 42),
(50, 1, 10, 43),
(50, 1, 3, 44),
(51, 1, 3, 45),
(52, 1, 3, 46),
(53, 1, 5, 47),
(54, 1, 3, 48),
(55, 1, 3, 49),
(56, 1, 3, 50),
(56, 1, 5, 51),
(57, 1, 3, 52),
(58, 1, 3, 53),
(59, 1, 3, 54),
(61, 1, 3, 55),
(62, 1, 3, 56),
(63, 1, 3, 57),
(64, 1, 3, 58),
(65, 1, 3, 59),
(66, 1, 3, 60),
(67, 1, 3, 61),
(68, 1, 3, 62),
(74, 1, 3, 63),
(75, 1, 3, 64),
(76, 1, 3, 65),
(77, 1, 3, 66),
(78, 1, 3, 67),
(80, 1, 3, 68),
(81, 1, 3, 69),
(82, 1, 3, 70),
(83, 1, 3, 71),
(84, 1, 3, 72),
(86, 1, 3, 73),
(87, 1, 3, 74),
(88, 1, 3, 75),
(89, 1, 3, 76),
(91, 1, 3, 77),
(92, 1, 3, 78),
(95, 1, 3, 79),
(96, 1, 3, 80),
(97, 1, 3, 81),
(98, 1, 3, 82),
(100, 1, 3, 83),
(101, 1, 3, 84),
(102, 1, 3, 85),
(103, 1, 3, 86),
(104, 1, 3, 87),
(105, 1, 3, 88),
(106, 1, 3, 89),
(107, 1, 3, 90),
(108, 1, 3, 91),
(109, 1, 3, 92),
(110, 1, 3, 93),
(111, 1, 3, 94),
(113, 1, 3, 95),
(114, 1, 3, 96),
(115, 1, 3, 97),
(116, 1, 3, 98),
(118, 1, 10, 99),
(119, 1, 3, 100),
(120, 1, 3, 101),
(121, 1, 3, 102),
(122, 1, 3, 103),
(123, 1, 3, 104),
(124, 1, 3, 105),
(126, 1, 3, 106),
(127, 1, 5, 107),
(128, 1, 5, 108),
(128, 1, 10, 109),
(129, 1, 4, 110),
(130, 1, 4, 111),
(131, 1, 4, 112),
(134, 1, 4, 113),
(1, 10, 1, 120),
(1, 11, 1, 120),
(1, 12, 1, 120),
(1, 13, 1, 120),
(1, 14, 1, 120),
(1, 15, 1, 120),
(1, 16, 1, 120),
(1, 17, 1, 120),
(1, 18, 1, 120),
(1, 19, 1, 120),
(1, 20, 1, 120),
(1, 21, 1, 120),
(1, 22, 1, 120),
(1, 23, 1, 120),
(1, 24, 1, 120),
(1, 25, 1, 120),
(1, 26, 1, 120),
(1, 27, 1, 120),
(1, 28, 1, 120),
(1, 29, 1, 120),
(1, 30, 1, 120),
(1, 31, 1, 120),
(1, 32, 1, 120),
(1, 33, 1, 120),
(1, 34, 1, 120),
(1, 35, 1, 120),
(1, 36, 1, 120),
(1, 37, 1, 120),
(1, 38, 1, 120),
(1, 39, 1, 120),
(1, 40, 1, 120),
(1, 41, 1, 120),
(1, 42, 1, 120),
(1, 43, 1, 120),
(1, 44, 1, 120),
(1, 45, 1, 120),
(1, 46, 1, 120),
(1, 47, 1, 120),
(1, 48, 1, 120),
(1, 49, 1, 120),
(1, 50, 1, 120),
(1, 51, 1, 120),
(1, 52, 1, 120),
(1, 53, 1, 120),
(1, 54, 1, 120),
(1, 55, 1, 120),
(1, 10, 2, 121),
(1, 11, 2, 121),
(1, 12, 2, 121),
(1, 13, 2, 121),
(1, 14, 2, 121),
(1, 15, 2, 121),
(1, 16, 2, 121),
(1, 17, 2, 121),
(1, 18, 2, 121),
(1, 19, 2, 121),
(1, 20, 2, 121),
(1, 21, 2, 121),
(1, 22, 2, 121),
(1, 23, 2, 121),
(1, 24, 2, 121),
(1, 25, 2, 121),
(1, 26, 2, 121),
(1, 27, 2, 121),
(1, 28, 2, 121),
(1, 29, 2, 121),
(1, 30, 2, 121),
(1, 31, 2, 121),
(1, 32, 2, 121),
(1, 33, 2, 121),
(1, 34, 2, 121),
(1, 35, 2, 121),
(1, 36, 2, 121),
(1, 37, 2, 121),
(1, 38, 2, 121),
(1, 39, 2, 121),
(1, 40, 2, 121),
(1, 41, 2, 121),
(1, 42, 2, 121),
(1, 43, 2, 121),
(1, 44, 2, 121),
(1, 45, 2, 121),
(1, 46, 2, 121),
(1, 47, 2, 121),
(1, 48, 2, 121),
(1, 49, 2, 121),
(1, 50, 2, 121),
(1, 51, 2, 121),
(1, 52, 2, 121),
(1, 53, 2, 121),
(1, 54, 2, 121),
(1, 55, 2, 121),
(1, 10, 7, 122),
(1, 11, 7, 122),
(1, 12, 7, 122),
(1, 13, 7, 122),
(1, 14, 7, 122),
(1, 15, 7, 122),
(1, 16, 7, 122),
(1, 17, 7, 122),
(1, 18, 7, 122),
(1, 19, 7, 122),
(1, 20, 7, 122),
(1, 21, 7, 122),
(1, 22, 7, 122),
(1, 23, 7, 122),
(1, 24, 7, 122),
(1, 25, 7, 122),
(1, 26, 7, 122),
(1, 27, 7, 122),
(1, 28, 7, 122),
(1, 29, 7, 122),
(1, 30, 7, 122),
(1, 31, 7, 122),
(1, 32, 7, 122),
(1, 33, 7, 122),
(1, 34, 7, 122),
(1, 35, 7, 122),
(1, 36, 7, 122),
(1, 37, 7, 122),
(1, 38, 7, 122),
(1, 39, 7, 122),
(1, 40, 7, 122),
(1, 41, 7, 122),
(1, 42, 7, 122),
(1, 43, 7, 122),
(1, 44, 7, 122),
(1, 45, 7, 122),
(1, 46, 7, 122),
(1, 47, 7, 122),
(1, 48, 7, 122),
(1, 49, 7, 122),
(1, 50, 7, 122),
(1, 51, 7, 122),
(1, 52, 7, 122),
(1, 53, 7, 122),
(1, 54, 7, 122),
(1, 55, 7, 122),
(1, 10, 11, 123),
(1, 11, 11, 123),
(1, 12, 11, 123),
(1, 13, 11, 123),
(1, 14, 11, 123),
(1, 15, 11, 123),
(1, 16, 11, 123),
(1, 17, 11, 123),
(1, 18, 11, 123),
(1, 19, 11, 123),
(1, 20, 11, 123),
(1, 21, 11, 123),
(1, 22, 11, 123),
(1, 23, 11, 123),
(1, 24, 11, 123),
(1, 25, 11, 123),
(1, 26, 11, 123),
(1, 27, 11, 123),
(1, 28, 11, 123),
(1, 29, 11, 123),
(1, 30, 11, 123),
(1, 31, 11, 123),
(1, 32, 11, 123),
(1, 33, 11, 123),
(1, 34, 11, 123),
(1, 35, 11, 123),
(1, 36, 11, 123),
(1, 37, 11, 123),
(1, 38, 11, 123),
(1, 39, 11, 123),
(1, 40, 11, 123),
(1, 41, 11, 123),
(1, 42, 11, 123),
(1, 43, 11, 123),
(1, 44, 11, 123),
(1, 45, 11, 123),
(1, 46, 11, 123),
(1, 47, 11, 123),
(1, 48, 11, 123),
(1, 49, 11, 123),
(1, 50, 11, 123),
(1, 51, 11, 123),
(1, 52, 11, 123),
(1, 53, 11, 123),
(1, 54, 11, 123),
(1, 55, 11, 123),
(160, 1, 5, 125),
(226, 1, 5, 125),
(226, 2, 5, 125),
(227, 1, 5, 125),
(228, 1, 5, 125),
(229, 1, 5, 125),
(160, 1, 8, 126),
(165, 1, 5, 132),
(165, 2, 5, 132),
(165, 3, 5, 132),
(166, 1, 5, 133),
(166, 2, 5, 134),
(166, 3, 5, 134),
(166, 4, 5, 134),
(166, 5, 5, 134),
(169, 1, 5, 135),
(169, 2, 5, 135),
(169, 3, 5, 135),
(169, 4, 5, 135),
(171, 1, 5, 138),
(171, 2, 5, 138),
(171, 3, 5, 138),
(172, 1, 5, 139),
(172, 2, 5, 139),
(191, 1, 5, 177),
(191, 2, 5, 177),
(191, 3, 5, 177),
(191, 4, 5, 177),
(191, 5, 5, 177),
(191, 6, 5, 177),
(191, 7, 5, 177),
(191, 8, 5, 177),
(191, 9, 5, 177),
(191, 10, 5, 177),
(191, 11, 5, 177),
(193, 1, 5, 181),
(194, 1, 5, 182),
(196, 1, 5, 184),
(204, 1, 5, 229),
(204, 2, 5, 229),
(204, 3, 5, 229),
(204, 4, 5, 229),
(212, 1, 5, 244),
(212, 2, 5, 244),
(212, 3, 5, 244),
(213, 1, 5, 285),
(213, 2, 5, 285),
(213, 3, 5, 285),
(213, 4, 5, 285),
(213, 5, 5, 285),
(214, 1, 8, 303),
(214, 1, 5, 323),
(214, 1, 3, 324),
(225, 1, 5, 357),
(225, 2, 5, 357),
(225, 3, 5, 357),
(225, 4, 5, 357),
(225, 3, 8, 358),
(225, 4, 8, 358),
(226, 1, 18, 359),
(226, 1, 19, 361),
(226, 2, 18, 362),
(226, 2, 8, 363),
(226, 2, 19, 364),
(227, 1, 18, 365),
(227, 1, 19, 367),
(228, 1, 18, 368),
(228, 1, 8, 369),
(228, 1, 19, 370),
(229, 1, 18, 371),
(229, 1, 8, 372),
(229, 1, 19, 373);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Collections`
--

CREATE TABLE `Collections` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Collections`
--

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2018-05-16 12:09:07', '2018-08-30 15:31:03', 'home'),
(2, '2018-05-16 12:09:37', '2018-05-16 12:09:37', 'dashboard'),
(3, '2018-05-16 12:09:37', '2018-05-16 12:09:38', 'sitemap'),
(4, '2018-05-16 12:09:38', '2018-05-16 12:09:38', 'full'),
(5, '2018-05-16 12:09:38', '2018-05-16 12:09:38', 'explore'),
(6, '2018-05-16 12:09:38', '2018-05-16 12:09:39', 'search'),
(7, '2018-05-16 12:09:39', '2018-05-16 12:09:39', 'files'),
(8, '2018-05-16 12:09:39', '2018-05-16 12:09:39', 'search'),
(9, '2018-05-16 12:09:39', '2018-05-16 12:09:40', 'attributes'),
(10, '2018-05-16 12:09:40', '2018-05-16 12:09:40', 'sets'),
(11, '2018-05-16 12:09:40', '2018-05-16 12:09:40', 'add_set'),
(12, '2018-05-16 12:09:41', '2018-05-16 12:09:41', 'users'),
(13, '2018-05-16 12:09:41', '2018-05-16 12:09:42', 'search'),
(14, '2018-05-16 12:09:42', '2018-05-16 12:09:42', 'groups'),
(15, '2018-05-16 12:09:42', '2018-05-16 12:09:42', 'attributes'),
(16, '2018-05-16 12:09:43', '2018-05-16 12:09:43', 'add'),
(17, '2018-05-16 12:09:43', '2018-05-16 12:09:43', 'add_group'),
(18, '2018-05-16 12:09:44', '2018-05-16 12:09:44', 'bulkupdate'),
(19, '2018-05-16 12:09:44', '2018-05-16 12:09:44', 'group_sets'),
(20, '2018-05-16 12:09:44', '2018-05-16 12:09:45', 'points'),
(21, '2018-05-16 12:09:45', '2018-05-16 12:09:45', 'assign'),
(22, '2018-05-16 12:09:45', '2018-05-16 12:09:45', 'actions'),
(23, '2018-05-16 12:09:45', '2018-05-16 12:09:46', 'reports'),
(24, '2018-05-16 12:09:46', '2018-05-16 12:09:46', 'forms'),
(25, '2018-05-16 12:09:46', '2018-05-16 12:09:46', 'surveys'),
(26, '2018-05-16 12:09:46', '2018-05-16 12:09:47', 'logs'),
(27, '2018-05-16 12:09:47', '2018-05-16 12:09:47', 'pages'),
(28, '2018-05-16 12:09:47', '2018-05-16 12:09:48', 'themes'),
(29, '2018-05-16 12:09:48', '2018-05-16 12:09:48', 'inspect'),
(30, '2018-05-16 12:09:48', '2018-05-16 12:09:48', 'types'),
(31, '2018-05-16 12:09:48', '2018-05-16 12:09:49', 'organize'),
(32, '2018-05-16 12:09:49', '2018-05-16 12:09:49', 'add'),
(33, '2018-05-16 12:09:49', '2018-05-16 12:09:49', 'form'),
(34, '2018-05-16 12:09:49', '2018-05-16 12:09:50', 'output'),
(35, '2018-05-16 12:09:50', '2018-05-16 12:09:50', 'attributes'),
(36, '2018-05-16 12:09:50', '2018-05-16 12:09:51', 'permissions'),
(37, '2018-05-16 12:09:51', '2018-05-16 12:09:51', 'templates'),
(38, '2018-05-16 12:09:51', '2018-05-16 12:09:52', 'add'),
(39, '2018-05-16 12:09:52', '2018-05-16 12:09:52', 'attributes'),
(40, '2018-05-16 12:09:52', '2018-05-16 12:09:53', 'single'),
(41, '2018-05-16 12:09:53', '2018-05-16 12:09:53', 'feeds'),
(42, '2018-05-16 12:09:53', '2018-05-16 12:09:54', 'conversations'),
(43, '2018-05-16 12:09:54', '2018-05-16 12:09:54', 'messages'),
(44, '2018-05-16 12:09:54', '2018-05-16 12:09:55', 'workflow'),
(45, '2018-05-16 12:09:55', '2018-05-16 12:09:55', 'me'),
(46, '2018-05-16 12:09:55', '2018-05-16 12:09:55', 'workflows'),
(47, '2018-05-16 12:09:56', '2018-05-16 12:09:56', 'blocks'),
(48, '2018-05-16 12:09:56', '2018-05-16 12:09:56', 'stacks'),
(49, '2018-05-16 12:09:56', '2018-05-16 12:09:57', 'permissions'),
(50, '2018-05-16 12:09:57', '2018-05-16 12:09:57', 'list'),
(51, '2018-05-16 12:09:57', '2018-05-16 12:09:57', 'types'),
(52, '2018-05-16 12:09:57', '2018-05-16 12:09:58', 'extend'),
(53, '2018-05-16 12:09:58', '2018-05-16 12:09:58', 'news'),
(54, '2018-05-16 12:09:58', '2018-05-16 12:09:59', 'install'),
(55, '2018-05-16 12:09:59', '2018-05-16 12:09:59', 'update'),
(56, '2018-05-16 12:09:59', '2018-05-16 12:09:59', 'connect'),
(57, '2018-05-16 12:10:00', '2018-05-16 12:10:00', 'themes'),
(58, '2018-05-16 12:10:00', '2018-05-16 12:10:01', 'addons'),
(59, '2018-05-16 12:10:01', '2018-05-16 12:10:01', 'system'),
(60, '2018-05-16 12:10:02', '2018-05-16 12:10:02', 'basics'),
(61, '2018-05-16 12:10:02', '2018-05-16 12:10:02', 'name'),
(62, '2018-05-16 12:10:02', '2018-05-16 12:10:03', 'accessibility'),
(63, '2018-05-16 12:10:03', '2018-05-16 12:10:03', 'social'),
(64, '2018-05-16 12:10:03', '2018-05-16 12:10:03', 'icons'),
(65, '2018-05-16 12:10:03', '2018-05-16 12:10:04', 'editor'),
(66, '2018-05-16 12:10:04', '2018-05-16 12:10:05', 'multilingual'),
(67, '2018-05-16 12:10:05', '2018-05-16 12:10:05', 'timezone'),
(68, '2018-05-16 12:10:05', '2018-05-16 12:10:06', 'multilingual'),
(69, '2018-05-16 12:10:06', '2018-05-16 12:10:06', 'setup'),
(70, '2018-05-16 12:10:06', '2018-05-16 12:10:07', 'copy'),
(71, '2018-05-16 12:10:07', '2018-05-16 12:10:07', 'page_report'),
(72, '2018-05-16 12:10:07', '2018-05-16 12:10:08', 'translate_interface'),
(73, '2018-05-16 12:10:08', '2018-05-16 12:10:08', 'seo'),
(74, '2018-05-16 12:10:08', '2018-05-16 12:10:08', 'urls'),
(75, '2018-05-16 12:10:08', '2018-05-16 12:10:09', 'bulk'),
(76, '2018-05-16 12:10:09', '2018-05-16 12:10:09', 'codes'),
(77, '2018-05-16 12:10:09', '2018-05-16 12:10:10', 'excluded'),
(78, '2018-05-16 12:10:10', '2018-05-16 12:10:10', 'searchindex'),
(79, '2018-05-16 12:10:10', '2018-05-16 12:10:10', 'files'),
(80, '2018-05-16 12:10:11', '2018-05-16 12:10:11', 'permissions'),
(81, '2018-05-16 12:10:11', '2018-05-16 12:10:11', 'filetypes'),
(82, '2018-05-16 12:10:11', '2018-05-16 12:10:11', 'thumbnails'),
(83, '2018-05-16 12:10:12', '2018-05-16 12:10:12', 'image_uploading'),
(84, '2018-05-16 12:10:12', '2018-05-16 12:10:12', 'storage'),
(85, '2018-05-16 12:10:13', '2018-05-16 12:10:13', 'optimization'),
(86, '2018-05-16 12:10:13', '2018-05-16 12:10:13', 'cache'),
(87, '2018-05-16 12:10:13', '2018-05-16 12:10:14', 'clearcache'),
(88, '2018-05-16 12:10:14', '2018-05-16 12:10:14', 'jobs'),
(89, '2018-05-16 12:10:14', '2018-05-16 12:10:14', 'query_log'),
(90, '2018-05-16 12:10:15', '2018-05-16 12:10:15', 'permissions'),
(91, '2018-05-16 12:10:15', '2018-05-16 12:10:15', 'site'),
(92, '2018-05-16 12:10:15', '2018-05-16 12:10:16', 'tasks'),
(93, '2018-05-16 12:10:16', '2018-05-16 12:10:16', 'users'),
(94, '2018-05-16 12:10:16', '2018-05-16 12:10:16', 'advanced'),
(95, '2018-05-16 12:10:17', '2018-05-16 12:10:17', 'blacklist'),
(96, '2018-05-16 12:10:17', '2018-05-16 12:10:17', 'captcha'),
(97, '2018-05-16 12:10:18', '2018-05-16 12:10:18', 'antispam'),
(98, '2018-05-16 12:10:18', '2018-05-16 12:10:18', 'maintenance'),
(99, '2018-05-16 12:10:19', '2018-05-16 12:10:19', 'registration'),
(100, '2018-05-16 12:10:19', '2018-05-16 12:10:19', 'postlogin'),
(101, '2018-05-16 12:10:19', '2018-05-16 12:10:20', 'profiles'),
(102, '2018-05-16 12:10:20', '2018-05-16 12:10:20', 'open'),
(103, '2018-05-16 12:10:20', '2018-05-16 12:10:20', 'authentication'),
(104, '2018-05-16 12:10:20', '2018-05-16 12:10:21', 'mail'),
(105, '2018-05-16 12:10:21', '2018-05-16 12:10:21', 'method'),
(106, '2018-05-16 12:10:21', '2018-05-16 12:10:22', 'test'),
(107, '2018-05-16 12:10:22', '2018-05-16 12:10:22', 'importers'),
(108, '2018-05-16 12:10:22', '2018-05-16 12:10:23', 'conversations'),
(109, '2018-05-16 12:10:23', '2018-05-16 12:10:23', 'settings'),
(110, '2018-05-16 12:10:23', '2018-05-16 12:10:24', 'points'),
(111, '2018-05-16 12:10:24', '2018-05-16 12:10:24', 'bannedwords'),
(112, '2018-05-16 12:10:24', '2018-05-16 12:10:25', 'permissions'),
(113, '2018-05-16 12:10:25', '2018-05-16 12:10:25', 'attributes'),
(114, '2018-05-16 12:10:25', '2018-05-16 12:10:26', 'sets'),
(115, '2018-05-16 12:10:26', '2018-05-16 12:10:26', 'types'),
(116, '2018-05-16 12:10:26', '2018-05-16 12:10:26', 'topics'),
(117, '2018-05-16 12:10:26', '2018-05-16 12:10:27', 'add'),
(118, '2018-05-16 12:10:27', '2018-05-16 12:10:27', 'environment'),
(119, '2018-05-16 12:10:27', '2018-05-16 12:10:28', 'info'),
(120, '2018-05-16 12:10:28', '2018-05-16 12:10:28', 'debug'),
(121, '2018-05-16 12:10:28', '2018-05-16 12:10:28', 'logging'),
(122, '2018-05-16 12:10:28', '2018-05-16 12:10:29', 'proxy'),
(123, '2018-05-16 12:10:29', '2018-05-16 12:10:29', 'entities'),
(124, '2018-05-16 12:10:29', '2018-05-16 12:10:30', 'backup'),
(125, '2018-05-16 12:10:30', '2018-05-16 12:10:30', 'backup'),
(126, '2018-05-16 12:10:31', '2018-05-16 12:10:31', 'update'),
(127, '2018-05-16 12:10:33', '2018-05-16 12:10:34', 'welcome'),
(128, '2018-05-16 12:10:34', '2018-05-16 12:10:34', 'home'),
(129, '2018-05-16 12:10:51', '2018-05-16 12:10:52', '!drafts'),
(130, '2018-05-16 12:10:52', '2018-05-16 12:10:52', '!trash'),
(131, '2018-05-16 12:10:52', '2018-05-16 12:10:53', '!stacks'),
(132, '2018-05-16 12:10:53', '2018-05-16 12:10:53', 'login'),
(133, '2018-05-16 12:10:53', '2018-05-16 12:10:54', 'register'),
(134, '2018-05-16 12:10:54', '2018-05-16 12:10:54', 'account'),
(135, '2018-05-16 12:10:54', '2018-05-16 12:10:54', 'edit_profile'),
(136, '2018-05-16 12:10:54', '2018-05-16 12:10:55', 'avatar'),
(137, '2018-05-16 12:10:55', '2018-05-16 12:10:55', 'messages'),
(138, '2018-05-16 12:10:55', '2018-05-16 12:10:55', 'inbox'),
(139, '2018-05-16 12:10:56', '2018-05-16 12:10:56', 'members'),
(140, '2018-05-16 12:10:56', '2018-05-16 12:10:56', 'profile'),
(141, '2018-05-16 12:10:56', '2018-05-16 12:10:56', 'directory'),
(142, '2018-05-16 12:10:57', '2018-05-16 12:10:57', 'page_not_found'),
(143, '2018-05-16 12:10:57', '2018-05-16 12:10:57', 'page_forbidden'),
(144, '2018-05-16 12:10:58', '2018-05-16 12:10:58', 'download_file'),
(145, '2018-05-16 12:11:01', '2018-05-16 12:11:01', NULL),
(146, '2018-05-16 13:36:29', '2018-08-30 14:45:07', 'header-site-title'),
(147, '2018-05-16 13:36:29', '2018-05-17 15:05:53', 'header-navigation'),
(148, '2018-05-16 13:36:30', '2018-08-30 15:31:03', 'footer-legal'),
(149, '2018-05-16 13:36:30', '2018-05-18 11:49:29', 'footer-navigation'),
(150, '2018-05-16 13:36:30', '2018-05-21 10:25:13', 'footer-contact'),
(151, '2018-05-16 13:55:32', '2018-08-28 12:47:19', 'info-superior'),
(152, '2018-05-16 13:55:32', '2018-08-27 19:07:13', 'search'),
(153, '2018-05-16 13:55:33', '2018-05-21 09:03:32', 'espacio-2'),
(154, '2018-05-16 13:55:33', '2018-05-21 09:03:32', 'espacio-3'),
(157, '2018-05-16 14:30:58', '2018-05-16 14:30:58', NULL),
(160, '2018-05-16 15:11:48', '2018-05-16 15:11:48', NULL),
(165, '2018-05-17 10:14:16', '2018-05-17 10:44:52', ''),
(166, '2018-05-17 10:17:29', '2018-05-17 10:53:15', ''),
(167, '2018-05-17 10:36:28', '2018-05-17 10:36:28', NULL),
(168, '2018-05-17 10:39:58', '2018-05-17 10:39:58', NULL),
(169, '2018-05-17 10:41:49', '2018-05-17 10:55:33', ''),
(171, '2018-05-17 10:44:57', '2018-05-17 10:47:52', ''),
(172, '2018-05-17 10:46:12', '2018-05-17 11:00:41', ''),
(191, '2018-05-18 09:56:03', '2018-08-30 15:24:54', ''),
(193, '2018-05-18 10:46:14', '2018-05-18 10:46:32', ''),
(194, '2018-05-18 10:46:54', '2018-05-18 10:47:11', ''),
(196, '2018-05-18 10:47:37', '2018-05-18 10:47:48', ''),
(204, '2018-05-18 11:40:22', '2018-05-18 11:49:28', ''),
(205, '2018-05-18 11:59:54', '2018-05-18 11:59:54', 'event_calendar'),
(206, '2018-05-18 11:59:55', '2018-05-18 11:59:55', 'list_calendar'),
(207, '2018-05-18 11:59:55', '2018-05-18 11:59:55', 'list_event'),
(208, '2018-05-18 11:59:56', '2018-05-18 11:59:56', 'calendar'),
(209, '2018-05-18 11:59:56', '2018-05-18 11:59:56', 'event'),
(210, '2018-05-18 11:59:57', '2018-05-18 11:59:57', 'types'),
(211, '2018-05-18 11:59:57', '2018-05-18 11:59:57', 'settings'),
(212, '2018-05-18 12:00:15', '2018-05-18 12:02:02', ''),
(213, '2018-05-18 15:07:46', '2018-08-28 12:07:22', ''),
(214, '2018-05-21 09:32:29', '2018-05-21 09:32:29', NULL),
(225, '2018-08-28 11:41:39', '2018-08-28 11:59:33', ''),
(226, '2018-08-28 11:48:45', '2018-08-28 11:52:41', ''),
(227, '2018-08-28 11:52:56', '2018-08-28 11:54:26', ''),
(228, '2018-08-28 11:54:41', '2018-08-28 11:55:57', ''),
(229, '2018-08-28 11:56:06', '2018-08-28 11:57:37', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionSearchIndexAttributes`
--

CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
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
  `ak_thumbnail` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CollectionSearchIndexAttributes`
--

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_categorias`, `ak_thumbnail`) VALUES
(1, '', '', NULL, NULL, 0, 0, '', NULL, 0, 0, 0, NULL, 0),
(2, NULL, NULL, NULL, 'fa fa-th-large', 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(3, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(4, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(5, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(6, NULL, NULL, 'find page, search page, search, find, pages, sitemap', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(8, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(9, NULL, NULL, 'file, file attributes, title, attribute, description, rename', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(10, NULL, NULL, 'files, category, categories', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(11, NULL, NULL, 'new file set', NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(12, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(13, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(14, NULL, NULL, 'user, group, people, permissions, expire, badges', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(15, NULL, NULL, 'user attributes, user data, gather data, registration data', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(16, NULL, NULL, 'new user, create', NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(17, NULL, NULL, 'new user group, new group, group, create', NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(19, NULL, NULL, 'group set', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(20, NULL, NULL, 'community, points, karma', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(22, NULL, NULL, 'action, community actions', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(23, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(24, NULL, NULL, 'forms, questions, response, data', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(25, NULL, NULL, 'questions, quiz, response', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(28, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(29, NULL, NULL, 'page types', NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(31, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(32, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(33, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(34, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(35, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(36, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(38, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(39, NULL, NULL, 'page attributes, custom', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(40, NULL, NULL, 'single, page, custom, application', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(41, NULL, NULL, 'atom, rss, feed, syndication', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(43, NULL, NULL, NULL, 'icon-bullhorn', 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(44, NULL, NULL, 'add workflow, remove workflow', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(48, NULL, NULL, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(50, NULL, NULL, 'edit stacks, view stacks, all stacks', NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, 0),
(51, NULL, NULL, 'block, refresh, custom', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(52, NULL, NULL, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(53, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(54, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(55, NULL, NULL, 'update, upgrade', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(56, NULL, NULL, 'concrete5.org, my account, marketplace', NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(57, NULL, NULL, 'buy theme, new theme, marketplace, template', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(58, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(59, NULL, NULL, 'dashboard, configuration', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(61, NULL, NULL, 'website name, title', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(62, NULL, NULL, 'accessibility, easy mode', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(63, NULL, NULL, 'sharing, facebook, twitter', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(64, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(65, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(66, NULL, NULL, 'translate, translation, internationalization, multilingual', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(67, NULL, NULL, 'timezone, profile, locale', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(68, NULL, NULL, 'multilingual, localization, internationalization, i18n', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(74, NULL, NULL, 'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(75, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(76, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(77, NULL, NULL, 'pretty, slug', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(78, NULL, NULL, 'configure search, site search, search option', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(80, NULL, NULL, 'file options, file manager, upload, modify', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(81, NULL, NULL, 'security, files, media, extension, manager, upload', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(82, NULL, NULL, 'images, picture, responsive, retina', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(83, NULL, NULL, 'uploading, upload, images, image, resizing, manager', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(84, NULL, NULL, 'security, alternate storage, hide files', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(86, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(87, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(88, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(89, NULL, NULL, 'queries, database, mysql', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(91, NULL, NULL, 'editors, hide site, offline, private, public, access', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(92, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(95, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(96, NULL, NULL, 'security, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(97, NULL, NULL, 'antispam, block spam, security', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(98, NULL, NULL, 'lock site, under construction, hide, hidden', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(100, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(101, NULL, NULL, 'member profile, member page, community, forums, social, avatar', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(102, NULL, NULL, 'signup, new user, community, public registration, public, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(103, NULL, NULL, 'auth, authentication, types, oauth, facebook, login, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(104, NULL, NULL, 'smtp, mail settings', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(105, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(106, NULL, NULL, 'test smtp, test mail', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(107, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(108, NULL, NULL, 'conversations', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(109, NULL, NULL, 'conversations', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(110, NULL, NULL, 'conversations ratings, ratings, community, community points', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(111, NULL, NULL, 'conversations bad words, banned words, banned, bad words, bad, words, list', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(113, NULL, NULL, 'attribute configuration', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(114, NULL, NULL, 'attributes, sets', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(115, NULL, NULL, 'attributes, types', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(116, NULL, NULL, 'topics, tags, taxonomy', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(118, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0, NULL, 0),
(119, NULL, NULL, 'overrides, system info, debug, support, help', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(120, NULL, NULL, 'errors, exceptions, develop, support, help', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(121, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(122, NULL, NULL, 'network, proxy server', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(123, NULL, NULL, 'database, entities, doctrine, orm', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(124, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(126, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(127, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(128, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, 0),
(129, NULL, NULL, NULL, 'fa fa-edit', 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(130, NULL, NULL, NULL, 'fa fa-trash-o', 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(131, NULL, NULL, NULL, 'fa fa-th', 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(134, NULL, NULL, NULL, 'fa fa-briefcase', 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(146, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(147, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(148, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(149, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(150, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(151, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(152, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(153, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(154, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(165, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(166, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(169, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(171, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(172, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(191, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(193, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(194, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(196, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(204, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(212, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(213, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, 0),
(225, NULL, NULL, NULL, NULL, 0, 0, NULL, '', 0, 0, 0, NULL, 0),
(226, NULL, NULL, NULL, NULL, 1, 0, NULL, '\nmejoras\n', 0, 0, 0, '||/Salud||', 38),
(227, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, '||', 37),
(228, NULL, NULL, NULL, NULL, 1, 0, NULL, '\ntecnología\n', 0, 0, 0, '||/Informática||/Salud||', 32),
(229, NULL, NULL, NULL, NULL, 1, 0, NULL, '\ntecnología\n', 0, 0, 0, '||/Informática||', 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionVersionAreaStyles`
--

CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionVersionBlocks`
--

CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CollectionVersionBlocks`
--

INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`, `cbOverrideBlockTypeContainerSettings`, `cbEnableBlockContainer`) VALUES
(1, 11, 118, 'Contenido A', 0, 1, 0, 0, 0, 0, 0),
(1, 12, 118, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 12, 119, 'Contenido A', 1, 1, 0, 0, 0, 0, 0),
(1, 13, 118, 'Contenido A', 1, 0, 0, 0, 0, 0, 0),
(1, 13, 119, 'Contenido A', 2, 0, 0, 0, 0, 0, 0),
(1, 13, 150, 'Contenido A', 0, 1, 0, 0, 0, 0, 0),
(1, 14, 118, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 14, 119, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 14, 150, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 14, 151, 'Contenido A', 0, 1, 0, 0, 0, 0, 0),
(1, 14, 153, 'Slider', 0, 1, 0, 0, 0, 0, 0),
(1, 15, 118, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 15, 119, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 15, 151, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 15, 153, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 15, 154, 'Contenido A : 7', 0, 1, 0, 0, 0, 0, 0),
(1, 16, 118, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 16, 119, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 16, 151, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 16, 154, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 16, 155, 'Slider', 0, 1, 0, 0, 0, 0, 0),
(1, 17, 118, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 17, 119, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 17, 151, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 17, 154, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 18, 118, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 18, 119, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 18, 151, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 18, 154, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 19, 118, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 19, 119, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 19, 151, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 19, 154, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 20, 118, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 20, 119, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 20, 151, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 20, 154, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 20, 160, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 20, 161, 'Slider', 0, 1, 0, 0, 0, 0, 0),
(1, 21, 118, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 21, 119, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 21, 151, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 21, 154, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 21, 161, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 21, 162, 'Slider : 10', 0, 1, 0, 0, 0, 0, 0),
(1, 22, 118, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 22, 151, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 22, 154, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 22, 161, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 22, 162, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 22, 239, 'Contenido A : 7', 1, 1, 0, 0, 0, 0, 0),
(1, 22, 240, 'Contenido A : 6', 0, 1, 0, 0, 0, 0, 0),
(1, 23, 118, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 23, 154, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 23, 162, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 23, 239, 'Contenido A : 7', 1, 0, 0, 0, 0, 0, 0),
(1, 23, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 23, 248, 'Contenido A', 0, 1, 0, 0, 0, 0, 0),
(1, 23, 249, 'Slider', 0, 1, 0, 0, 0, 0, 0),
(1, 24, 118, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 24, 154, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 24, 239, 'Contenido A : 7', 1, 0, 0, 0, 0, 0, 0),
(1, 24, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 24, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 24, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 24, 253, 'Slider : 10', 0, 1, 0, 0, 0, 0, 0),
(1, 25, 118, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 25, 154, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 25, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 25, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 25, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 25, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 25, 255, 'Slider : 10', 1, 1, 0, 0, 0, 0, 0),
(1, 25, 256, 'Slider : 10', 0, 1, 0, 0, 0, 0, 0),
(1, 25, 258, 'Slider : 10', 2, 1, 0, 0, 0, 0, 0),
(1, 25, 260, 'Slider : 10', 3, 1, 0, 0, 0, 0, 0),
(1, 26, 118, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 26, 154, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 26, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 26, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 26, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 26, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 26, 255, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 26, 256, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 26, 258, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 26, 260, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 26, 261, 'Slider', 1, 1, 0, 0, 0, 0, 0),
(1, 27, 118, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 27, 154, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 27, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 27, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 27, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 27, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 27, 255, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 27, 256, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 27, 258, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 27, 260, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 27, 262, 'Slider', 1, 1, 0, 0, 0, 0, 0),
(1, 28, 118, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 28, 154, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 28, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 28, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 28, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 28, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 28, 255, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 28, 256, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 28, 258, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 28, 260, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 28, 262, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 29, 118, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 29, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 29, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 29, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 29, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 29, 262, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 29, 263, 'Slider : 10', 4, 1, 0, 0, 0, 0, 0),
(1, 29, 264, 'Slider : 10', 3, 1, 0, 0, 0, 0, 0),
(1, 29, 265, 'Slider : 10', 2, 1, 0, 0, 0, 0, 0),
(1, 29, 266, 'Slider : 10', 1, 1, 0, 0, 0, 0, 0),
(1, 29, 267, 'Slider : 10', 0, 1, 0, 0, 0, 0, 0),
(1, 30, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 30, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 30, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 30, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 30, 262, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 30, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 30, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 30, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 30, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 30, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 30, 414, 'Contenido A : 6', 1, 1, 0, 0, 0, 0, 0),
(1, 31, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 31, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 31, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 31, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 31, 262, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 31, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 31, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 31, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 31, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 31, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 31, 415, 'Contenido A : 6', 1, 1, 0, 0, 0, 0, 0),
(1, 31, 416, 'Contenido A : 6', 2, 1, 0, 0, 0, 0, 0),
(1, 32, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 32, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 32, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 32, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 32, 262, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 32, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 32, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 32, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 32, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 32, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 32, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 32, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 32, 424, 'Slider : 11', 0, 1, 0, 0, 0, 0, 0),
(1, 33, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 33, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 33, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 33, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 33, 262, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 33, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 33, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 33, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 33, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 33, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 33, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 33, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 33, 424, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 34, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 34, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 34, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 34, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 34, 262, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 34, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 34, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 34, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 34, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 34, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 34, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 34, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 34, 425, 'Slider : 11', 0, 1, 0, 0, 0, 0, 0),
(1, 35, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 35, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 35, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 35, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 35, 262, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 35, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 35, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 35, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 35, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 35, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 35, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 35, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 35, 426, 'Slider : 11', 0, 1, 0, 0, 0, 0, 0),
(1, 36, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 36, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 36, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 36, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 36, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 36, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 36, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 36, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 36, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 36, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 36, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 36, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 36, 431, 'Slider', 1, 1, 0, 0, 0, 0, 0),
(1, 37, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 37, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 37, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 37, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 37, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 37, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 37, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 37, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 37, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 37, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 37, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 37, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 37, 431, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 38, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 38, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 38, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 38, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 38, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 38, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 38, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 38, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 38, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 38, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 38, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 38, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 38, 431, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 39, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 39, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 39, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 39, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 39, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 39, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 39, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 39, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 39, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 39, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 39, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 39, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 39, 431, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 40, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 40, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 40, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 40, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 40, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 40, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 40, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 40, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 40, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 40, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 40, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 40, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 40, 431, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 41, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 41, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 41, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 41, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 41, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 41, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 41, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 41, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 41, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 41, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 41, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 41, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 41, 431, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 42, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 42, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 42, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 42, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 42, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 42, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 42, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 42, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 42, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 42, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 42, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 42, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 42, 431, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 43, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 43, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 43, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 43, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 43, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 43, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 43, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 43, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 43, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 43, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 43, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 43, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 43, 431, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 44, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 44, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 44, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 44, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 44, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 44, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 44, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 44, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 44, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 44, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 44, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 44, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 44, 431, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 45, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 45, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 45, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 45, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 45, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 45, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 45, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 45, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 45, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 45, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 45, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 45, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 45, 431, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 46, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 46, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 46, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 46, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 46, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 46, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 46, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 46, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 46, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 46, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 46, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 46, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 46, 431, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 47, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 47, 240, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 47, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 47, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 47, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 47, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 47, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 47, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 47, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 47, 415, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 47, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 47, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 47, 591, 'Slider', 1, 1, 0, 0, 0, 0, 0),
(1, 48, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 48, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 48, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 48, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 48, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 48, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 48, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 48, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 48, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 48, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 48, 591, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 48, 592, 'Contenido A : 6', 0, 1, 0, 0, 0, 0, 0),
(1, 48, 593, 'Contenido A : 6', 1, 1, 0, 0, 0, 0, 0),
(1, 49, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 49, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 49, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 49, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 49, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 49, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 49, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 49, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 49, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 49, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 49, 591, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 49, 592, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 49, 593, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 50, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 50, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 50, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 50, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 50, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 50, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 50, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 50, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 50, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 50, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 50, 591, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 50, 592, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 50, 593, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 51, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 51, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 51, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 51, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 51, 264, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 51, 265, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 51, 266, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 51, 267, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 51, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 51, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 51, 591, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 51, 592, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 51, 593, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 52, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 52, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 52, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 52, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 52, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 52, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 52, 591, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 52, 592, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 52, 593, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 52, 715, 'Slider : 10', 0, 1, 0, 0, 0, 0, 0),
(1, 52, 716, 'Slider : 10', 1, 1, 0, 0, 0, 0, 0),
(1, 52, 717, 'Slider : 10', 2, 1, 0, 0, 0, 0, 0),
(1, 52, 718, 'Slider : 10', 3, 1, 0, 0, 0, 0, 0),
(1, 53, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 53, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 53, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 53, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 53, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 53, 426, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(1, 53, 591, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 53, 592, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 53, 593, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 53, 715, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 53, 716, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 53, 717, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 53, 718, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 54, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 54, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 54, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 54, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 54, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 54, 591, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 54, 592, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 54, 593, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 54, 715, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 54, 716, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 54, 717, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 54, 718, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 54, 721, 'Slider : 11', 0, 1, 0, 0, 0, 0, 0),
(1, 55, 239, 'Contenido A : 7', 0, 0, 0, 0, 0, 0, 0),
(1, 55, 248, 'Contenido A', 0, 0, 0, 0, 0, 0, 0),
(1, 55, 249, 'Slider', 0, 0, 0, 0, 0, 0, 0),
(1, 55, 263, 'Slider : 10', 4, 0, 0, 0, 0, 0, 0),
(1, 55, 416, 'Contenido A : 6', 2, 0, 0, 0, 0, 0, 0),
(1, 55, 591, 'Slider', 1, 0, 0, 0, 0, 0, 0),
(1, 55, 592, 'Contenido A : 6', 0, 0, 0, 0, 0, 0, 0),
(1, 55, 593, 'Contenido A : 6', 1, 0, 0, 0, 0, 0, 0),
(1, 55, 715, 'Slider : 10', 0, 0, 0, 0, 0, 0, 0),
(1, 55, 716, 'Slider : 10', 1, 0, 0, 0, 0, 0, 0),
(1, 55, 717, 'Slider : 10', 2, 0, 0, 0, 0, 0, 0),
(1, 55, 718, 'Slider : 10', 3, 0, 0, 0, 0, 0, 0),
(1, 55, 721, 'Slider : 11', 0, 0, 0, 0, 0, 0, 0),
(127, 1, 1, 'Main', 0, 1, 0, 0, 0, 0, 0),
(128, 1, 2, 'Primary', 0, 1, 0, 0, 0, 0, 0),
(128, 1, 3, 'Primary', 1, 1, 0, 0, 0, 0, 0),
(128, 1, 4, 'Secondary 1', 0, 1, 0, 0, 0, 0, 0),
(128, 1, 5, 'Secondary 2', 0, 1, 0, 0, 0, 0, 0),
(128, 1, 6, 'Secondary 3', 0, 1, 0, 0, 0, 0, 0),
(128, 1, 7, 'Secondary 4', 0, 1, 0, 0, 0, 0, 0),
(128, 1, 8, 'Secondary 5', 0, 1, 0, 0, 0, 0, 0),
(145, 1, 9, 'Main', 0, 1, 0, 0, 0, 0, 0),
(146, 2, 10, 'Main', 0, 1, 0, 0, 0, 0, 0),
(146, 4, 435, 'Main', 0, 1, 0, 0, 0, 0, 0),
(146, 5, 588, 'Main', 0, 1, 0, 0, 0, 0, 0),
(146, 6, 714, 'Main', 0, 1, 0, 0, 0, 0, 0),
(147, 2, 18, 'Main', 0, 1, 0, 0, 0, 0, 0),
(147, 3, 18, 'Main', 0, 0, 0, 0, 0, 0, 0),
(147, 4, 18, 'Main', 0, 0, 0, 0, 0, 0, 0),
(147, 4, 33, 'Main', 1, 1, 0, 0, 0, 0, 0),
(147, 5, 18, 'Main', 0, 0, 0, 0, 0, 0, 0),
(147, 5, 33, 'Main', 1, 0, 0, 0, 0, 0, 0),
(147, 6, 18, 'Main', 0, 0, 0, 0, 0, 0, 0),
(147, 6, 33, 'Main', 1, 0, 0, 0, 0, 0, 0),
(147, 7, 18, 'Main', 0, 0, 0, 0, 0, 0, 0),
(147, 8, 18, 'Main', 0, 0, 0, 0, 0, 0, 0),
(147, 8, 159, 'Main', 1, 1, 0, 0, 0, 0, 0),
(147, 9, 18, 'Main', 0, 0, 0, 0, 0, 0, 0),
(147, 9, 160, 'Main', 1, 1, 0, 0, 0, 0, 0),
(147, 10, 18, 'Main', 0, 0, 0, 0, 0, 0, 0),
(147, 10, 160, 'Main', 1, 0, 0, 0, 0, 0, 0),
(147, 11, 18, 'Main', 0, 0, 0, 0, 0, 0, 0),
(148, 2, 14, 'Main', 0, 1, 0, 0, 0, 0, 0),
(148, 3, 15, 'Main', 0, 1, 0, 0, 0, 0, 0),
(148, 4, 421, 'Main', 0, 1, 0, 0, 0, 0, 0),
(148, 5, 421, 'Main', 0, 0, 0, 0, 0, 0, 0),
(148, 5, 585, 'Main', 1, 1, 0, 0, 0, 0, 0),
(148, 6, 585, 'Main', 1, 0, 0, 0, 0, 0, 0),
(148, 6, 587, 'Main', 0, 1, 0, 0, 0, 0, 0),
(148, 7, 585, 'Main', 1, 0, 0, 0, 0, 0, 0),
(148, 7, 713, 'Main', 0, 1, 0, 0, 0, 0, 0),
(148, 8, 585, 'Main', 1, 0, 0, 0, 0, 0, 0),
(148, 8, 719, 'Main', 0, 1, 0, 0, 0, 0, 0),
(148, 9, 719, 'Main', 0, 0, 0, 0, 0, 0, 0),
(148, 9, 722, 'Main', 1, 1, 0, 0, 0, 0, 0),
(149, 2, 420, 'Main', 0, 1, 0, 0, 0, 0, 0),
(150, 2, 422, 'Main', 0, 1, 0, 0, 0, 0, 0),
(150, 4, 423, 'Main', 0, 1, 0, 0, 0, 0, 0),
(150, 5, 423, 'Main', 0, 0, 0, 0, 0, 0, 0),
(150, 5, 436, 'Main', 1, 1, 0, 0, 0, 0, 0),
(150, 6, 423, 'Main', 0, 0, 0, 0, 0, 0, 0),
(150, 6, 437, 'Main', 1, 1, 0, 0, 0, 0, 0),
(150, 7, 423, 'Main', 0, 0, 0, 0, 0, 0, 0),
(150, 7, 586, 'Main', 1, 1, 0, 0, 0, 0, 0),
(151, 2, 16, 'Main', 0, 0, 0, 0, 0, 0, 0),
(151, 3, 16, 'Main', 0, 0, 0, 0, 0, 0, 0),
(151, 4, 17, 'Main', 0, 1, 0, 0, 0, 0, 0),
(151, 5, 712, 'Main', 0, 1, 0, 0, 0, 0, 0),
(152, 2, 13, 'Main', 0, 1, 0, 0, 0, 0, 0),
(152, 3, 13, 'Main', 0, 0, 0, 0, 0, 0, 0),
(152, 4, 433, 'Main', 0, 1, 0, 0, 0, 0, 0),
(152, 5, 433, 'Main', 0, 0, 0, 0, 0, 0, 0),
(152, 6, 584, 'Main', 0, 1, 0, 0, 0, 0, 0),
(152, 7, 584, 'Main', 0, 0, 0, 0, 0, 0, 0),
(152, 8, 590, 'Main', 0, 1, 0, 0, 0, 0, 0),
(152, 9, 590, 'Main', 0, 0, 0, 0, 0, 0, 0),
(153, 2, 11, 'Main', 0, 1, 0, 0, 0, 0, 0),
(153, 3, 11, 'Main', 1, 0, 0, 0, 0, 0, 0),
(153, 3, 16, 'Main', 0, 1, 0, 0, 0, 0, 0),
(153, 4, 11, 'Main', 1, 0, 0, 0, 0, 0, 0),
(153, 4, 16, 'Main', 0, 0, 0, 0, 0, 0, 0),
(153, 5, 11, 'Main', 1, 0, 0, 0, 0, 0, 0),
(154, 2, 12, 'Main', 0, 1, 0, 0, 0, 0, 0),
(157, 1, 23, 'Titulo', 1, 1, 0, 0, 0, 0, 0),
(157, 1, 32, 'Titulo', 0, 1, 0, 0, 0, 0, 0),
(160, 1, 25, 'Titulo : 8', 1, 1, 0, 0, 0, 0, 0),
(160, 1, 26, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(160, 1, 27, 'Contenido', 2, 1, 0, 0, 0, 0, 0),
(160, 1, 30, 'Contenido : 1', 0, 1, 0, 0, 0, 0, 0),
(160, 1, 31, 'Contenido : 2', 0, 1, 0, 0, 0, 0, 0),
(160, 1, 92, 'Titulo : 8', 0, 1, 0, 0, 0, 0, 0),
(160, 1, 101, 'Contenido : 1', 1, 1, 0, 0, 0, 0, 0),
(160, 1, 102, 'Contenido : 2', 1, 1, 0, 0, 0, 0, 0),
(160, 1, 156, 'Titulo', 2, 1, 0, 0, 0, 0, 0),
(160, 1, 157, 'Titulo : 9', 0, 1, 0, 0, 0, 0, 0),
(160, 1, 158, 'Titulo : 9', 1, 1, 0, 0, 0, 0, 0),
(160, 1, 607, 'Contenido', 1, 1, 0, 0, 0, 0, 0),
(165, 1, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(165, 1, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(165, 2, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(165, 2, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(165, 2, 42, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(165, 3, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(165, 3, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(165, 3, 43, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(166, 1, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(166, 1, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(166, 2, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(166, 2, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(166, 3, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(166, 3, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(166, 4, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(166, 4, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(166, 4, 41, 'Contenido Lateral', 0, 1, 0, 0, 0, 0, 0),
(166, 5, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(166, 5, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(166, 5, 41, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(166, 5, 47, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(166, 5, 48, 'Contenido', 1, 1, 0, 0, 0, 0, 0),
(166, 5, 49, 'Contenido : 3', 0, 1, 0, 0, 0, 0, 0),
(166, 5, 50, 'Contenido : 4', 0, 1, 0, 0, 0, 0, 0),
(166, 5, 51, 'Contenido : 5', 0, 1, 0, 0, 0, 0, 0),
(167, 1, 35, 'Titulo', 0, 1, 0, 0, 0, 0, 0),
(167, 1, 36, 'Titulo', 1, 1, 0, 0, 0, 0, 0),
(167, 1, 37, 'Contenido Lateral', 0, 1, 0, 0, 0, 0, 0),
(168, 1, 38, 'Titulo', 0, 1, 0, 0, 0, 0, 0),
(168, 1, 39, 'Titulo', 1, 1, 0, 0, 0, 0, 0),
(168, 1, 40, 'Contenido Lateral', 0, 1, 0, 0, 0, 0, 0),
(169, 1, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(169, 1, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(169, 1, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(169, 2, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(169, 2, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(169, 2, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(169, 2, 46, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(169, 3, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(169, 3, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(169, 3, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(169, 3, 46, 'Contenido', 1, 0, 0, 0, 0, 0, 0),
(169, 3, 52, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(169, 4, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(169, 4, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(169, 4, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(169, 4, 52, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(171, 1, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(171, 1, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(171, 1, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(171, 2, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(171, 2, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(171, 2, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(171, 2, 44, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(171, 3, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(171, 3, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(171, 3, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(171, 3, 45, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(172, 1, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(172, 1, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(172, 1, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(172, 2, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(172, 2, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(172, 2, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(172, 2, 53, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(191, 1, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 1, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 2, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 2, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 2, 231, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(191, 2, 232, 'Contenido : 12', 0, 1, 0, 0, 0, 0, 0),
(191, 3, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 3, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 3, 231, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(191, 3, 232, 'Contenido : 12', 0, 0, 0, 0, 0, 0, 0),
(191, 3, 233, 'Contenido : 13', 0, 1, 0, 0, 0, 0, 0),
(191, 4, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 4, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 4, 231, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(191, 4, 233, 'Contenido : 13', 0, 0, 0, 0, 0, 0, 0),
(191, 4, 234, 'Contenido : 12', 0, 1, 0, 0, 0, 0, 0),
(191, 5, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 5, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 5, 231, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(191, 5, 233, 'Contenido : 13', 0, 0, 0, 0, 0, 0, 0),
(191, 5, 234, 'Contenido : 12', 1, 0, 0, 0, 0, 0, 0),
(191, 5, 235, 'Contenido : 12', 0, 1, 0, 0, 0, 0, 0),
(191, 6, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 6, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 6, 231, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(191, 6, 233, 'Contenido : 13', 0, 0, 0, 0, 0, 0, 0),
(191, 6, 235, 'Contenido : 12', 0, 0, 0, 0, 0, 0, 0),
(191, 6, 236, 'Contenido : 12', 1, 1, 0, 0, 0, 0, 0),
(191, 7, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 7, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 7, 231, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(191, 7, 233, 'Contenido : 13', 0, 0, 0, 0, 0, 0, 0),
(191, 7, 235, 'Contenido : 12', 0, 0, 0, 0, 0, 0, 0),
(191, 7, 236, 'Contenido : 12', 1, 0, 0, 0, 0, 0, 0),
(191, 8, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 8, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 8, 231, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(191, 8, 235, 'Contenido : 12', 0, 0, 0, 0, 0, 0, 0),
(191, 8, 236, 'Contenido : 12', 1, 0, 0, 0, 0, 0, 0),
(191, 8, 237, 'Contenido : 13', 0, 1, 0, 0, 0, 0, 0),
(191, 9, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 9, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 9, 231, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(191, 9, 235, 'Contenido : 12', 0, 0, 0, 0, 0, 0, 0),
(191, 9, 236, 'Contenido : 12', 1, 0, 0, 0, 0, 0, 0),
(191, 9, 238, 'Contenido : 13', 0, 1, 0, 0, 0, 0, 0),
(191, 10, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 10, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 10, 231, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(191, 10, 235, 'Contenido : 12', 0, 0, 0, 0, 0, 0, 0),
(191, 10, 236, 'Contenido : 12', 1, 0, 0, 0, 0, 0, 0),
(191, 10, 589, 'Contenido : 13', 0, 1, 0, 0, 0, 0, 0),
(191, 11, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(191, 11, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(191, 11, 231, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(191, 11, 235, 'Contenido : 12', 0, 0, 0, 0, 0, 0, 0),
(191, 11, 236, 'Contenido : 12', 1, 0, 0, 0, 0, 0, 0),
(191, 11, 720, 'Contenido : 13', 0, 1, 0, 0, 0, 0, 0),
(193, 1, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(193, 1, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(194, 1, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(194, 1, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(196, 1, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(196, 1, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(204, 1, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(204, 1, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(204, 1, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(204, 2, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(204, 2, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(204, 2, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(204, 2, 417, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(204, 2, 419, 'Contenido', 1, 1, 0, 0, 0, 0, 0),
(204, 3, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(204, 3, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(204, 3, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(204, 3, 417, 'Contenido', 1, 0, 0, 0, 0, 0, 0),
(204, 3, 419, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(204, 4, 35, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(204, 4, 36, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(204, 4, 37, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(204, 4, 417, 'Contenido', 1, 0, 0, 0, 0, 0, 0),
(204, 4, 419, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(212, 1, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(212, 1, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(212, 2, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(212, 2, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(212, 2, 427, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(212, 3, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(212, 3, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(212, 3, 428, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(213, 1, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(213, 1, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(213, 2, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(213, 2, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(213, 2, 432, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(213, 3, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(213, 3, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(213, 3, 432, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(213, 4, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(213, 4, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(213, 4, 434, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(213, 5, 23, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(213, 5, 32, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(213, 5, 707, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(214, 1, 444, 'Titulo : 14', 0, 1, 0, 0, 0, 0, 0),
(214, 1, 445, 'Titulo', 1, 1, 0, 0, 0, 0, 0),
(214, 1, 446, 'Titulo : 14', 1, 1, 0, 0, 0, 0, 0),
(214, 1, 447, 'Titulo : 15', 1, 1, 0, 0, 0, 0, 0),
(214, 1, 448, 'Titulo : 15', 0, 1, 0, 0, 0, 0, 0),
(214, 1, 449, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(214, 1, 450, 'Contenido Lateral', 2, 1, 0, 0, 0, 0, 0),
(214, 1, 452, 'Contenido Lateral', 3, 1, 0, 0, 0, 0, 0),
(214, 1, 453, 'Contenido Lateral', 4, 1, 0, 0, 0, 0, 0),
(214, 1, 455, 'Contenido Lateral', 5, 1, 0, 0, 0, 0, 0),
(214, 1, 456, 'Contenido Lateral', 6, 1, 0, 0, 0, 0, 0),
(214, 1, 462, 'Contenido Lateral', 1, 1, 0, 0, 0, 0, 0),
(214, 1, 464, 'Contenido Lateral', 0, 1, 0, 0, 0, 0, 0),
(225, 1, 38, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(225, 1, 39, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(225, 1, 40, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(225, 2, 38, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(225, 2, 39, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(225, 2, 600, 'Contenido', 1, 1, 0, 0, 0, 0, 0),
(225, 2, 601, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(225, 2, 602, 'Contenido Lateral', 0, 1, 0, 0, 0, 0, 0),
(225, 3, 38, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(225, 3, 39, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(225, 3, 600, 'Contenido', 1, 0, 0, 0, 0, 0, 0),
(225, 3, 601, 'Contenido', 0, 0, 0, 0, 0, 0, 0),
(225, 3, 602, 'Contenido Lateral', 2, 0, 0, 0, 0, 0, 0),
(225, 3, 603, 'Contenido Lateral', 4, 1, 0, 0, 0, 0, 0),
(225, 3, 604, 'Contenido Lateral', 0, 1, 0, 0, 0, 0, 0),
(225, 3, 605, 'Contenido Lateral', 1, 1, 0, 0, 0, 0, 0),
(225, 3, 606, 'Contenido Lateral', 3, 1, 0, 0, 0, 0, 0),
(225, 4, 38, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(225, 4, 39, 'Titulo', 1, 0, 0, 0, 0, 0, 0),
(225, 4, 602, 'Contenido Lateral', 2, 0, 0, 0, 0, 0, 0),
(225, 4, 603, 'Contenido Lateral', 4, 0, 0, 0, 0, 0, 0),
(225, 4, 604, 'Contenido Lateral', 0, 0, 0, 0, 0, 0, 0),
(225, 4, 605, 'Contenido Lateral', 1, 0, 0, 0, 0, 0, 0),
(225, 4, 606, 'Contenido Lateral', 3, 0, 0, 0, 0, 0, 0),
(225, 4, 706, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(226, 1, 25, 'Titulo : 8', 1, 0, 0, 0, 0, 0, 0),
(226, 1, 27, 'Contenido', 2, 0, 0, 0, 0, 0, 0),
(226, 1, 30, 'Contenido : 1', 0, 0, 0, 0, 0, 0, 0),
(226, 1, 31, 'Contenido : 2', 0, 0, 0, 0, 0, 0, 0),
(226, 1, 92, 'Titulo : 8', 0, 0, 0, 0, 0, 0, 0),
(226, 1, 101, 'Contenido : 1', 1, 0, 0, 0, 0, 0, 0),
(226, 1, 102, 'Contenido : 2', 1, 0, 0, 0, 0, 0, 0),
(226, 1, 156, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(226, 1, 157, 'Titulo : 9', 0, 0, 0, 0, 0, 0, 0),
(226, 1, 158, 'Titulo : 9', 1, 0, 0, 0, 0, 0, 0),
(226, 1, 607, 'Contenido', 1, 0, 0, 0, 0, 0, 0),
(226, 1, 647, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(226, 2, 25, 'Titulo : 8', 1, 0, 0, 0, 0, 0, 0),
(226, 2, 27, 'Contenido', 2, 0, 0, 0, 0, 0, 0),
(226, 2, 30, 'Contenido : 1', 0, 0, 0, 0, 0, 0, 0),
(226, 2, 31, 'Contenido : 2', 0, 0, 0, 0, 0, 0, 0),
(226, 2, 92, 'Titulo : 8', 0, 0, 0, 0, 0, 0, 0),
(226, 2, 101, 'Contenido : 1', 1, 0, 0, 0, 0, 0, 0),
(226, 2, 102, 'Contenido : 2', 1, 0, 0, 0, 0, 0, 0),
(226, 2, 156, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(226, 2, 157, 'Titulo : 9', 0, 0, 0, 0, 0, 0, 0),
(226, 2, 158, 'Titulo : 9', 1, 0, 0, 0, 0, 0, 0),
(226, 2, 607, 'Contenido', 1, 0, 0, 0, 0, 0, 0),
(226, 2, 653, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(227, 1, 25, 'Titulo : 8', 1, 0, 0, 0, 0, 0, 0),
(227, 1, 27, 'Contenido', 2, 0, 0, 0, 0, 0, 0),
(227, 1, 30, 'Contenido : 1', 0, 0, 0, 0, 0, 0, 0),
(227, 1, 31, 'Contenido : 2', 0, 0, 0, 0, 0, 0, 0),
(227, 1, 92, 'Titulo : 8', 0, 0, 0, 0, 0, 0, 0),
(227, 1, 101, 'Contenido : 1', 1, 0, 0, 0, 0, 0, 0),
(227, 1, 102, 'Contenido : 2', 1, 0, 0, 0, 0, 0, 0),
(227, 1, 156, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(227, 1, 157, 'Titulo : 9', 0, 0, 0, 0, 0, 0, 0),
(227, 1, 158, 'Titulo : 9', 1, 0, 0, 0, 0, 0, 0),
(227, 1, 607, 'Contenido', 1, 0, 0, 0, 0, 0, 0),
(227, 1, 672, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(228, 1, 25, 'Titulo : 8', 1, 0, 0, 0, 0, 0, 0),
(228, 1, 27, 'Contenido', 2, 0, 0, 0, 0, 0, 0),
(228, 1, 30, 'Contenido : 1', 0, 0, 0, 0, 0, 0, 0),
(228, 1, 31, 'Contenido : 2', 0, 0, 0, 0, 0, 0, 0),
(228, 1, 92, 'Titulo : 8', 0, 0, 0, 0, 0, 0, 0),
(228, 1, 101, 'Contenido : 1', 1, 0, 0, 0, 0, 0, 0),
(228, 1, 102, 'Contenido : 2', 1, 0, 0, 0, 0, 0, 0),
(228, 1, 156, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(228, 1, 157, 'Titulo : 9', 0, 0, 0, 0, 0, 0, 0),
(228, 1, 158, 'Titulo : 9', 1, 0, 0, 0, 0, 0, 0),
(228, 1, 607, 'Contenido', 1, 0, 0, 0, 0, 0, 0),
(228, 1, 687, 'Contenido', 0, 1, 0, 0, 0, 0, 0),
(229, 1, 25, 'Titulo : 8', 1, 0, 0, 0, 0, 0, 0),
(229, 1, 27, 'Contenido', 2, 0, 0, 0, 0, 0, 0),
(229, 1, 30, 'Contenido : 1', 0, 0, 0, 0, 0, 0, 0),
(229, 1, 31, 'Contenido : 2', 0, 0, 0, 0, 0, 0, 0),
(229, 1, 92, 'Titulo : 8', 0, 0, 0, 0, 0, 0, 0),
(229, 1, 101, 'Contenido : 1', 1, 0, 0, 0, 0, 0, 0),
(229, 1, 102, 'Contenido : 2', 1, 0, 0, 0, 0, 0, 0),
(229, 1, 156, 'Titulo', 0, 0, 0, 0, 0, 0, 0),
(229, 1, 157, 'Titulo : 9', 0, 0, 0, 0, 0, 0, 0),
(229, 1, 158, 'Titulo : 9', 1, 0, 0, 0, 0, 0, 0),
(229, 1, 607, 'Contenido', 1, 0, 0, 0, 0, 0, 0),
(229, 1, 705, 'Contenido', 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionVersionBlocksCacheSettings`
--

CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionVersionBlocksOutputCache`
--

CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionVersionBlockStyles`
--

CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CollectionVersionBlockStyles`
--

INSERT INTO `CollectionVersionBlockStyles` (`cID`, `cvID`, `bID`, `arHandle`, `issID`) VALUES
(191, 3, 233, 'Contenido : 13', 5),
(191, 4, 233, 'Contenido : 13', 5),
(191, 5, 233, 'Contenido : 13', 5),
(191, 6, 233, 'Contenido : 13', 5),
(191, 7, 233, 'Contenido : 13', 5),
(191, 7, 236, 'Contenido : 12', 6),
(191, 8, 236, 'Contenido : 12', 6),
(191, 9, 236, 'Contenido : 12', 6),
(191, 10, 236, 'Contenido : 12', 6),
(191, 11, 236, 'Contenido : 12', 6),
(191, 8, 237, 'Contenido : 13', 7),
(191, 9, 238, 'Contenido : 13', 7),
(191, 10, 589, 'Contenido : 13', 7),
(191, 11, 720, 'Contenido : 13', 7),
(1, 28, 262, 'Slider', 8),
(1, 29, 262, 'Slider', 8),
(1, 30, 262, 'Slider', 8),
(1, 31, 262, 'Slider', 8),
(1, 32, 262, 'Slider', 8),
(1, 33, 262, 'Slider', 8),
(1, 34, 262, 'Slider', 8),
(1, 35, 262, 'Slider', 8),
(1, 29, 263, 'Slider : 10', 9),
(1, 30, 263, 'Slider : 10', 9),
(1, 31, 263, 'Slider : 10', 9),
(1, 32, 263, 'Slider : 10', 9),
(1, 33, 263, 'Slider : 10', 9),
(1, 34, 263, 'Slider : 10', 9),
(1, 35, 263, 'Slider : 10', 9),
(1, 36, 263, 'Slider : 10', 9),
(1, 37, 263, 'Slider : 10', 9),
(1, 38, 263, 'Slider : 10', 9),
(1, 39, 263, 'Slider : 10', 9),
(1, 40, 263, 'Slider : 10', 9),
(1, 41, 263, 'Slider : 10', 9),
(1, 42, 263, 'Slider : 10', 9),
(1, 43, 263, 'Slider : 10', 9),
(1, 44, 263, 'Slider : 10', 9),
(1, 45, 263, 'Slider : 10', 9),
(1, 46, 263, 'Slider : 10', 9),
(1, 47, 263, 'Slider : 10', 9),
(1, 48, 263, 'Slider : 10', 9),
(1, 49, 263, 'Slider : 10', 9),
(1, 50, 263, 'Slider : 10', 9),
(1, 51, 263, 'Slider : 10', 9),
(1, 52, 263, 'Slider : 10', 9),
(1, 53, 263, 'Slider : 10', 9),
(1, 54, 263, 'Slider : 10', 9),
(1, 55, 263, 'Slider : 10', 9),
(1, 29, 266, 'Slider : 10', 14),
(1, 30, 266, 'Slider : 10', 14),
(1, 31, 266, 'Slider : 10', 14),
(1, 32, 266, 'Slider : 10', 14),
(1, 33, 266, 'Slider : 10', 14),
(1, 34, 266, 'Slider : 10', 14),
(1, 35, 266, 'Slider : 10', 14),
(1, 36, 266, 'Slider : 10', 14),
(1, 37, 266, 'Slider : 10', 14),
(1, 38, 266, 'Slider : 10', 14),
(1, 39, 266, 'Slider : 10', 14),
(1, 40, 266, 'Slider : 10', 14),
(1, 41, 266, 'Slider : 10', 14),
(1, 42, 266, 'Slider : 10', 14),
(1, 43, 266, 'Slider : 10', 14),
(1, 44, 266, 'Slider : 10', 14),
(1, 45, 266, 'Slider : 10', 14),
(1, 46, 266, 'Slider : 10', 14),
(1, 47, 266, 'Slider : 10', 14),
(1, 48, 266, 'Slider : 10', 14),
(1, 49, 266, 'Slider : 10', 14),
(1, 50, 266, 'Slider : 10', 14),
(1, 51, 266, 'Slider : 10', 14),
(1, 29, 267, 'Slider : 10', 15),
(1, 30, 267, 'Slider : 10', 15),
(1, 31, 267, 'Slider : 10', 15),
(1, 32, 267, 'Slider : 10', 15),
(1, 33, 267, 'Slider : 10', 15),
(1, 34, 267, 'Slider : 10', 15),
(1, 35, 267, 'Slider : 10', 15),
(1, 36, 267, 'Slider : 10', 15),
(1, 37, 267, 'Slider : 10', 15),
(1, 38, 267, 'Slider : 10', 15),
(1, 39, 267, 'Slider : 10', 15),
(1, 40, 267, 'Slider : 10', 15),
(1, 41, 267, 'Slider : 10', 15),
(1, 42, 267, 'Slider : 10', 15),
(1, 43, 267, 'Slider : 10', 15),
(1, 44, 267, 'Slider : 10', 15),
(1, 45, 267, 'Slider : 10', 15),
(1, 46, 267, 'Slider : 10', 15),
(1, 47, 267, 'Slider : 10', 15),
(1, 48, 267, 'Slider : 10', 15),
(1, 49, 267, 'Slider : 10', 15),
(1, 50, 267, 'Slider : 10', 15),
(1, 51, 267, 'Slider : 10', 15),
(1, 29, 265, 'Slider : 10', 16),
(1, 30, 265, 'Slider : 10', 16),
(1, 31, 265, 'Slider : 10', 16),
(1, 32, 265, 'Slider : 10', 16),
(1, 33, 265, 'Slider : 10', 16),
(1, 34, 265, 'Slider : 10', 16),
(1, 35, 265, 'Slider : 10', 16),
(1, 36, 265, 'Slider : 10', 16),
(1, 37, 265, 'Slider : 10', 16),
(1, 38, 265, 'Slider : 10', 16),
(1, 39, 265, 'Slider : 10', 16),
(1, 40, 265, 'Slider : 10', 16),
(1, 41, 265, 'Slider : 10', 16),
(1, 42, 265, 'Slider : 10', 16),
(1, 43, 265, 'Slider : 10', 16),
(1, 44, 265, 'Slider : 10', 16),
(1, 45, 265, 'Slider : 10', 16),
(1, 46, 265, 'Slider : 10', 16),
(1, 47, 265, 'Slider : 10', 16),
(1, 48, 265, 'Slider : 10', 16),
(1, 49, 265, 'Slider : 10', 16),
(1, 50, 265, 'Slider : 10', 16),
(1, 51, 265, 'Slider : 10', 16),
(1, 29, 264, 'Slider : 10', 17),
(1, 30, 264, 'Slider : 10', 17),
(1, 31, 264, 'Slider : 10', 17),
(1, 32, 264, 'Slider : 10', 17),
(1, 33, 264, 'Slider : 10', 17),
(1, 34, 264, 'Slider : 10', 17),
(1, 35, 264, 'Slider : 10', 17),
(1, 36, 264, 'Slider : 10', 17),
(1, 37, 264, 'Slider : 10', 17),
(1, 38, 264, 'Slider : 10', 17),
(1, 39, 264, 'Slider : 10', 17),
(1, 40, 264, 'Slider : 10', 17),
(1, 41, 264, 'Slider : 10', 17),
(1, 42, 264, 'Slider : 10', 17),
(1, 43, 264, 'Slider : 10', 17),
(1, 44, 264, 'Slider : 10', 17),
(1, 45, 264, 'Slider : 10', 17),
(1, 46, 264, 'Slider : 10', 17),
(1, 47, 264, 'Slider : 10', 17),
(1, 48, 264, 'Slider : 10', 17),
(1, 49, 264, 'Slider : 10', 17),
(1, 50, 264, 'Slider : 10', 17),
(1, 51, 264, 'Slider : 10', 17),
(160, 1, 158, 'Titulo : 9', 26),
(226, 1, 158, 'Titulo : 9', 26),
(226, 2, 158, 'Titulo : 9', 26),
(227, 1, 158, 'Titulo : 9', 26),
(228, 1, 158, 'Titulo : 9', 26),
(229, 1, 158, 'Titulo : 9', 26),
(1, 36, 431, 'Slider', 28),
(1, 37, 431, 'Slider', 28),
(1, 38, 431, 'Slider', 28),
(1, 39, 431, 'Slider', 28),
(1, 40, 431, 'Slider', 28),
(1, 41, 431, 'Slider', 28),
(1, 42, 431, 'Slider', 28),
(1, 43, 431, 'Slider', 28),
(1, 44, 431, 'Slider', 28),
(1, 45, 431, 'Slider', 28),
(1, 46, 431, 'Slider', 28),
(1, 47, 591, 'Slider', 28),
(1, 48, 591, 'Slider', 28),
(1, 49, 591, 'Slider', 28),
(1, 50, 591, 'Slider', 28),
(1, 51, 591, 'Slider', 28),
(1, 52, 591, 'Slider', 28),
(1, 53, 591, 'Slider', 28),
(1, 54, 591, 'Slider', 28),
(1, 55, 591, 'Slider', 28),
(213, 3, 432, 'Contenido', 29),
(213, 4, 434, 'Contenido', 30),
(213, 5, 707, 'Contenido', 30),
(152, 5, 433, 'Main', 32),
(152, 6, 584, 'Main', 33),
(152, 7, 584, 'Main', 34),
(152, 8, 590, 'Main', 35),
(152, 9, 590, 'Main', 36),
(160, 1, 157, 'Titulo : 9', 38),
(226, 1, 157, 'Titulo : 9', 38),
(226, 2, 157, 'Titulo : 9', 38),
(227, 1, 157, 'Titulo : 9', 38),
(228, 1, 157, 'Titulo : 9', 38),
(229, 1, 157, 'Titulo : 9', 38),
(1, 52, 715, 'Slider : 10', 40),
(1, 53, 715, 'Slider : 10', 40),
(1, 54, 715, 'Slider : 10', 40),
(1, 55, 715, 'Slider : 10', 40),
(1, 52, 716, 'Slider : 10', 41),
(1, 53, 716, 'Slider : 10', 41),
(1, 54, 716, 'Slider : 10', 41),
(1, 55, 716, 'Slider : 10', 41),
(1, 52, 717, 'Slider : 10', 42),
(1, 53, 717, 'Slider : 10', 42),
(1, 54, 717, 'Slider : 10', 42),
(1, 55, 717, 'Slider : 10', 42),
(1, 52, 718, 'Slider : 10', 43),
(1, 53, 718, 'Slider : 10', 43),
(1, 54, 718, 'Slider : 10', 43),
(1, 55, 718, 'Slider : 10', 43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionVersionFeatureAssignments`
--

CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CollectionVersionFeatureAssignments`
--

INSERT INTO `CollectionVersionFeatureAssignments` (`cID`, `cvID`, `faID`) VALUES
(146, 2, 1),
(153, 2, 2),
(153, 3, 2),
(153, 4, 2),
(153, 5, 2),
(154, 2, 3),
(172, 2, 4),
(150, 2, 5),
(150, 4, 6),
(150, 5, 6),
(150, 6, 6),
(150, 7, 6),
(146, 4, 7),
(146, 5, 8),
(146, 6, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionVersionRelatedEdits`
--

CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionVersions`
--

CREATE TABLE `CollectionVersions` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) UNSIGNED DEFAULT NULL,
  `cvApproverUID` int(10) UNSIGNED DEFAULT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `CollectionVersions`
--

INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`) VALUES
(1, 1, 'Home', 'home', '', '2018-05-16 12:09:07', '2018-05-16 12:09:07', 'Initial Version', 0, 0, 1, NULL, 2, 5, NULL),
(1, 2, 'Home', 'home', '', '2018-05-16 12:09:07', '2018-05-16 13:43:07', 'Nueva Versión 2', 0, 0, 1, 1, 2, 6, NULL),
(1, 3, 'Home', 'home', '', '2018-05-16 12:09:07', '2018-05-16 13:45:14', 'Nueva Versión 3', 0, 0, 1, 1, 2, 6, NULL),
(1, 4, 'Home', 'home', '', '2018-05-16 12:09:07', '2018-05-16 14:01:57', 'Version 4', 0, 0, 1, 1, 2, 6, NULL),
(1, 5, 'Home', 'home', '', '2018-05-16 12:09:07', '2018-05-16 14:06:10', 'Version 5', 0, 0, 1, 1, 2, 6, NULL),
(1, 6, 'Home', 'home', '', '2018-05-16 12:09:07', '2018-05-16 14:10:50', 'Version 6', 0, 0, 1, 1, 2, 6, NULL),
(1, 7, 'Home', 'home', '', '2018-05-16 12:09:07', '2018-05-16 14:16:07', 'Version 7', 0, 0, 1, 1, 2, 6, NULL),
(1, 8, 'Home', 'home', '', '2018-05-16 12:09:07', '2018-05-16 14:16:53', 'Version 8', 0, 0, 1, 1, 2, 6, NULL),
(1, 9, 'Home', 'home', '', '2018-05-16 12:09:07', '2018-05-16 14:18:14', 'Version 9', 0, 0, 1, 1, 2, 6, NULL),
(1, 10, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-16 14:25:54', 'Nueva Versión 10', 0, 0, 1, 1, 2, 6, NULL),
(1, 11, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 11:30:53', 'Nueva Versión 11', 0, 0, 1, 1, 2, 6, NULL),
(1, 12, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 11:32:05', 'Version 12', 0, 0, 1, 1, 2, 6, NULL),
(1, 13, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 11:57:52', 'Version 13', 0, 0, 1, 1, 2, 6, NULL),
(1, 14, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 11:58:44', 'Version 14', 0, 0, 1, 1, 2, 6, NULL),
(1, 15, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 12:01:02', 'Version 15', 0, 0, 1, 1, 2, 6, NULL),
(1, 16, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 12:03:50', 'Version 16', 0, 0, 1, 1, 2, 6, NULL),
(1, 17, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 15:03:39', 'Version 17', 0, 0, 1, 1, 2, 6, NULL),
(1, 18, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 15:04:41', 'Version 18', 0, 0, 1, 1, 2, 6, NULL),
(1, 19, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 15:05:02', 'Version 19', 0, 0, 1, 1, 2, 6, NULL),
(1, 20, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 15:05:44', 'Version 20', 0, 0, 1, 1, 2, 6, NULL),
(1, 21, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-17 15:06:13', 'Version 21', 0, 0, 1, 1, 2, 6, NULL),
(1, 22, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 10:24:17', 'Version 22', 0, 0, 1, 1, 2, 6, NULL),
(1, 23, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 10:30:52', 'Version 23', 0, 0, 1, 1, 2, 6, NULL),
(1, 24, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 10:32:13', 'Version 24', 0, 0, 1, 1, 2, 6, NULL),
(1, 25, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 10:49:33', 'Version 25', 0, 0, 1, 1, 2, 6, NULL),
(1, 26, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 10:57:16', 'Version 26', 0, 0, 1, 1, 2, 6, NULL),
(1, 27, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 10:58:08', 'Version 27', 0, 0, 1, 1, 2, 6, NULL),
(1, 28, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 10:58:48', 'Version 28', 0, 0, 1, 1, 2, 6, NULL),
(1, 29, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 10:59:32', 'Version 29', 0, 0, 1, 1, 2, 6, NULL),
(1, 30, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 11:37:10', 'Version 30', 0, 0, 1, 1, 2, 6, NULL),
(1, 31, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 11:37:36', 'Version 31', 0, 0, 1, 1, 2, 6, NULL),
(1, 32, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 11:53:52', 'Version 32', 0, 0, 1, 1, 2, 6, NULL),
(1, 33, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 11:54:10', 'Version 33', 0, 0, 1, 1, 2, 6, NULL),
(1, 34, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 11:55:12', 'Version 34', 0, 0, 1, 1, 2, 6, NULL),
(1, 35, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 11:58:12', 'Version 35', 0, 0, 1, 1, 2, 6, NULL),
(1, 36, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 13:42:04', 'Version 36', 0, 0, 1, 1, 2, 6, NULL),
(1, 37, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-18 15:11:24', 'Version 37', 0, 0, 1, 1, 2, 6, NULL),
(1, 38, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-21 09:03:19', 'Version 38', 0, 0, 1, 1, 2, 6, NULL),
(1, 39, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-21 09:05:22', 'Version 39', 0, 0, 1, 1, 2, 6, NULL),
(1, 40, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-21 09:08:06', 'Version 40', 0, 0, 1, 1, 2, 6, NULL),
(1, 41, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-21 10:23:06', 'Version 41', 0, 0, 1, 1, 2, 6, NULL),
(1, 42, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-05-21 10:24:22', 'Version 42', 0, 0, 1, 1, 2, 6, NULL),
(1, 43, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-27 18:57:46', 'Version 43', 0, 0, 1, 1, 2, 6, NULL),
(1, 44, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-27 19:06:08', 'Version 44', 0, 0, 1, 1, 2, 6, NULL),
(1, 45, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-27 19:06:46', 'Version 45', 0, 0, 1, 1, 2, 6, NULL),
(1, 46, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-27 19:07:10', 'Version 46', 0, 0, 1, 1, 2, 6, NULL),
(1, 47, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-28 11:25:08', 'Version 47', 0, 0, 1, 1, 2, 6, NULL),
(1, 48, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-28 11:33:44', 'Version 48', 0, 0, 1, 1, 2, 6, NULL),
(1, 49, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-28 12:47:13', 'Version 49', 0, 0, 1, 1, 2, 6, NULL),
(1, 50, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-29 19:00:16', 'Version 50', 0, 0, 1, 1, 2, 6, NULL),
(1, 51, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-30 14:45:02', 'Version 51', 0, 0, 1, 1, 2, 6, NULL),
(1, 52, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-30 15:22:06', 'Version 52', 0, 0, 1, 1, 2, 6, NULL),
(1, 53, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-30 15:24:20', 'Version 53', 0, 0, 1, 1, 2, 6, NULL),
(1, 54, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-30 15:30:00', 'Version 54', 0, 0, 1, 1, 2, 6, NULL),
(1, 55, 'Portada', 'portada', '', '2018-05-16 12:09:07', '2018-08-30 15:31:00', 'Version 55', 1, 0, 1, 1, 2, 6, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2018-05-16 12:09:37', '2018-05-16 12:09:37', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(3, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2018-05-16 12:09:37', '2018-05-16 12:09:37', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(4, 1, 'Full Sitemap', 'full', '', '2018-05-16 12:09:38', '2018-05-16 12:09:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(5, 1, 'Flat View', 'explore', '', '2018-05-16 12:09:38', '2018-05-16 12:09:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(6, 1, 'Page Search', 'search', '', '2018-05-16 12:09:38', '2018-05-16 12:09:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(7, 1, 'Files', 'files', 'All documents and images.', '2018-05-16 12:09:39', '2018-05-16 12:09:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(8, 1, 'File Manager', 'search', '', '2018-05-16 12:09:39', '2018-05-16 12:09:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(9, 1, 'Attributes', 'attributes', '', '2018-05-16 12:09:39', '2018-05-16 12:09:39', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(10, 1, 'File Sets', 'sets', '', '2018-05-16 12:09:40', '2018-05-16 12:09:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(11, 1, 'Add File Set', 'add_set', '', '2018-05-16 12:09:40', '2018-05-16 12:09:40', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(12, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2018-05-16 12:09:41', '2018-05-16 12:09:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(13, 1, 'Search Users', 'search', '', '2018-05-16 12:09:41', '2018-05-16 12:09:41', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(14, 1, 'User Groups', 'groups', '', '2018-05-16 12:09:42', '2018-05-16 12:09:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(15, 1, 'Attributes', 'attributes', '', '2018-05-16 12:09:42', '2018-05-16 12:09:42', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(16, 1, 'Add User', 'add', '', '2018-05-16 12:09:43', '2018-05-16 12:09:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(17, 1, 'Add Group', 'add_group', '', '2018-05-16 12:09:43', '2018-05-16 12:09:43', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(18, 1, 'Move Multiple Groups', 'bulkupdate', '', '2018-05-16 12:09:44', '2018-05-16 12:09:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(19, 1, 'Group Sets', 'group_sets', '', '2018-05-16 12:09:44', '2018-05-16 12:09:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(20, 1, 'Community Points', 'points', NULL, '2018-05-16 12:09:44', '2018-05-16 12:09:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(21, 1, 'Assign Points', 'assign', NULL, '2018-05-16 12:09:45', '2018-05-16 12:09:45', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(22, 1, 'Actions', 'actions', NULL, '2018-05-16 12:09:45', '2018-05-16 12:09:45', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(23, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2018-05-16 12:09:45', '2018-05-16 12:09:45', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(24, 1, 'Form Results', 'forms', 'Get submission data.', '2018-05-16 12:09:46', '2018-05-16 12:09:46', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(25, 1, 'Surveys', 'surveys', '', '2018-05-16 12:09:46', '2018-05-16 12:09:46', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(26, 1, 'Logs', 'logs', '', '2018-05-16 12:09:46', '2018-05-16 12:09:46', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2018-05-16 12:09:47', '2018-05-16 12:09:47', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(28, 1, 'Themes', 'themes', 'Reskin your site.', '2018-05-16 12:09:47', '2018-05-16 12:09:47', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(29, 1, 'Inspect', 'inspect', '', '2018-05-16 12:09:48', '2018-05-16 12:09:48', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(30, 1, 'Page Types', 'types', '', '2018-05-16 12:09:48', '2018-05-16 12:09:48', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(31, 1, 'Organize Page Type Order', 'organize', '', '2018-05-16 12:09:48', '2018-05-16 12:09:48', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(32, 1, 'Add Page Type', 'add', '', '2018-05-16 12:09:49', '2018-05-16 12:09:49', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(33, 1, 'Compose Form', 'form', '', '2018-05-16 12:09:49', '2018-05-16 12:09:49', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(34, 1, 'Defaults and Output', 'output', '', '2018-05-16 12:09:49', '2018-05-16 12:09:49', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(35, 1, 'Page Type Attributes', 'attributes', '', '2018-05-16 12:09:50', '2018-05-16 12:09:50', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(36, 1, 'Page Type Permissions', 'permissions', '', '2018-05-16 12:09:50', '2018-05-16 12:09:50', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(37, 1, 'Page Templates', 'templates', 'Form factors for pages in your site.', '2018-05-16 12:09:51', '2018-05-16 12:09:51', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(38, 1, 'Add Page Template', 'add', 'Add page templates to your site.', '2018-05-16 12:09:51', '2018-05-16 12:09:51', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(39, 1, 'Attributes', 'attributes', '', '2018-05-16 12:09:52', '2018-05-16 12:09:52', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(40, 1, 'Single Pages', 'single', '', '2018-05-16 12:09:52', '2018-05-16 12:09:52', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(41, 1, 'RSS Feeds', 'feeds', '', '2018-05-16 12:09:53', '2018-05-16 12:09:53', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(42, 1, 'Conversations', 'conversations', '', '2018-05-16 12:09:53', '2018-05-16 12:09:53', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(43, 1, 'Messages', 'messages', '', '2018-05-16 12:09:54', '2018-05-16 12:09:54', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(44, 1, 'Workflow', 'workflow', '', '2018-05-16 12:09:54', '2018-05-16 12:09:54', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(45, 1, 'Waiting for Me', 'me', '', '2018-05-16 12:09:55', '2018-05-16 12:09:55', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(46, 1, 'Workflow List', 'workflows', '', '2018-05-16 12:09:55', '2018-05-16 12:09:55', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(47, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2018-05-16 12:09:56', '2018-05-16 12:09:56', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(48, 1, 'Stacks', 'stacks', 'Share content across your site.', '2018-05-16 12:09:56', '2018-05-16 12:09:56', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(49, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2018-05-16 12:09:56', '2018-05-16 12:09:56', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(50, 1, 'Stack List', 'list', '', '2018-05-16 12:09:57', '2018-05-16 12:09:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(51, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2018-05-16 12:09:57', '2018-05-16 12:09:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(52, 1, 'Extend concrete5', 'extend', '', '2018-05-16 12:09:57', '2018-05-16 12:09:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(53, 1, 'Dashboard', 'news', '', '2018-05-16 12:09:58', '2018-05-16 12:09:58', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(54, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2018-05-16 12:09:58', '2018-05-16 12:09:58', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(55, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2018-05-16 12:09:59', '2018-05-16 12:09:59', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(56, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2018-05-16 12:09:59', '2018-05-16 12:09:59', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(57, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2018-05-16 12:10:00', '2018-05-16 12:10:00', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(58, 1, 'Get More Add-Ons', 'addons', 'Download add-ons from concrete5.org.', '2018-05-16 12:10:00', '2018-05-16 12:10:00', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(59, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2018-05-16 12:10:01', '2018-05-16 12:10:01', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(60, 1, 'Basics', 'basics', 'Basic information about your website.', '2018-05-16 12:10:02', '2018-05-16 12:10:02', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(61, 1, 'Site Name', 'name', '', '2018-05-16 12:10:02', '2018-05-16 12:10:02', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(62, 1, 'Accessibility', 'accessibility', '', '2018-05-16 12:10:02', '2018-05-16 12:10:02', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(63, 1, 'Social Links', 'social', '', '2018-05-16 12:10:03', '2018-05-16 12:10:03', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(64, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2018-05-16 12:10:03', '2018-05-16 12:10:03', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(65, 1, 'Rich Text Editor', 'editor', '', '2018-05-16 12:10:03', '2018-05-16 12:10:03', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(66, 1, 'Languages', 'multilingual', '', '2018-05-16 12:10:04', '2018-05-16 12:10:04', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(67, 1, 'Time Zone', 'timezone', '', '2018-05-16 12:10:05', '2018-05-16 12:10:05', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(68, 1, 'Multilingual', 'multilingual', 'Run your site in multiple languages.', '2018-05-16 12:10:05', '2018-05-16 12:10:05', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(69, 1, 'Multilingual Setup', 'setup', '', '2018-05-16 12:10:06', '2018-05-16 12:10:06', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(70, 1, 'Copy Languages', 'copy', '', '2018-05-16 12:10:06', '2018-05-16 12:10:06', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(71, 1, 'Page Report', 'page_report', '', '2018-05-16 12:10:07', '2018-05-16 12:10:07', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(72, 1, 'Translate Site Interface', 'translate_interface', '', '2018-05-16 12:10:07', '2018-05-16 12:10:07', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(73, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs and tracking codes.', '2018-05-16 12:10:08', '2018-05-16 12:10:08', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(74, 1, 'URLs and Redirection', 'urls', '', '2018-05-16 12:10:08', '2018-05-16 12:10:08', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(75, 1, 'Bulk SEO Updater', 'bulk', '', '2018-05-16 12:10:08', '2018-05-16 12:10:08', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(76, 1, 'Tracking Codes', 'codes', '', '2018-05-16 12:10:09', '2018-05-16 12:10:09', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(77, 1, 'Excluded URL Word List', 'excluded', '', '2018-05-16 12:10:09', '2018-05-16 12:10:09', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(78, 1, 'Search Index', 'searchindex', '', '2018-05-16 12:10:10', '2018-05-16 12:10:10', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(79, 1, 'Files', 'files', '', '2018-05-16 12:10:10', '2018-05-16 12:10:10', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(80, 1, 'File Manager Permissions', 'permissions', '', '2018-05-16 12:10:11', '2018-05-16 12:10:11', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(81, 1, 'Allowed File Types', 'filetypes', '', '2018-05-16 12:10:11', '2018-05-16 12:10:11', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(82, 1, 'Thumbnails', 'thumbnails', '', '2018-05-16 12:10:11', '2018-05-16 12:10:11', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(83, 1, 'Image Uploading', 'image_uploading', '', '2018-05-16 12:10:12', '2018-05-16 12:10:12', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(84, 1, 'File Storage Locations', 'storage', '', '2018-05-16 12:10:12', '2018-05-16 12:10:12', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(85, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2018-05-16 12:10:13', '2018-05-16 12:10:13', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(86, 1, 'Cache & Speed Settings', 'cache', '', '2018-05-16 12:10:13', '2018-05-16 12:10:13', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(87, 1, 'Clear Cache', 'clearcache', '', '2018-05-16 12:10:13', '2018-05-16 12:10:13', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(88, 1, 'Automated Jobs', 'jobs', '', '2018-05-16 12:10:14', '2018-05-16 12:10:14', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(89, 1, 'Database Query Log', 'query_log', '', '2018-05-16 12:10:14', '2018-05-16 12:10:14', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(90, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2018-05-16 12:10:15', '2018-05-16 12:10:15', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(91, 1, 'Site Access', 'site', '', '2018-05-16 12:10:15', '2018-05-16 12:10:15', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(92, 1, 'Task Permissions', 'tasks', '', '2018-05-16 12:10:15', '2018-05-16 12:10:15', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(93, 1, 'User Permissions', 'users', '', '2018-05-16 12:10:16', '2018-05-16 12:10:16', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(94, 1, 'Advanced Permissions', 'advanced', '', '2018-05-16 12:10:16', '2018-05-16 12:10:16', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(95, 1, 'IP Blacklist', 'blacklist', '', '2018-05-16 12:10:17', '2018-05-16 12:10:17', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(96, 1, 'Captcha Setup', 'captcha', '', '2018-05-16 12:10:17', '2018-05-16 12:10:17', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(97, 1, 'Spam Control', 'antispam', '', '2018-05-16 12:10:18', '2018-05-16 12:10:18', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(98, 1, 'Maintenance Mode', 'maintenance', '', '2018-05-16 12:10:18', '2018-05-16 12:10:18', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(99, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2018-05-16 12:10:19', '2018-05-16 12:10:19', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(100, 1, 'Login Destination', 'postlogin', '', '2018-05-16 12:10:19', '2018-05-16 12:10:19', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(101, 1, 'Public Profiles', 'profiles', '', '2018-05-16 12:10:19', '2018-05-16 12:10:19', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(102, 1, 'Public Registration', 'open', '', '2018-05-16 12:10:20', '2018-05-16 12:10:20', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(103, 1, 'Authentication Types', 'authentication', '', '2018-05-16 12:10:20', '2018-05-16 12:10:20', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(104, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2018-05-16 12:10:20', '2018-05-16 12:10:20', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(105, 1, 'SMTP Method', 'method', '', '2018-05-16 12:10:21', '2018-05-16 12:10:21', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(106, 1, 'Test Mail Settings', 'test', '', '2018-05-16 12:10:21', '2018-05-16 12:10:21', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(107, 1, 'Email Importers', 'importers', '', '2018-05-16 12:10:22', '2018-05-16 12:10:22', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(108, 1, 'Conversations', 'conversations', 'Manage your conversations settings', '2018-05-16 12:10:22', '2018-05-16 12:10:22', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(109, 1, 'Settings', 'settings', '', '2018-05-16 12:10:23', '2018-05-16 12:10:23', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(110, 1, 'Community Points', 'points', '', '2018-05-16 12:10:23', '2018-05-16 12:10:23', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(111, 1, 'Banned Words', 'bannedwords', '', '2018-05-16 12:10:24', '2018-05-16 12:10:24', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(112, 1, 'Conversation Permissions', 'permissions', '', '2018-05-16 12:10:24', '2018-05-16 12:10:24', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(113, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2018-05-16 12:10:25', '2018-05-16 12:10:25', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(114, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2018-05-16 12:10:25', '2018-05-16 12:10:25', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(115, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2018-05-16 12:10:26', '2018-05-16 12:10:26', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(116, 1, 'Topics', 'topics', '', '2018-05-16 12:10:26', '2018-05-16 12:10:26', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(117, 1, 'Add Topic Tree', 'add', '', '2018-05-16 12:10:26', '2018-05-16 12:10:26', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(118, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2018-05-16 12:10:27', '2018-05-16 12:10:27', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(119, 1, 'Environment Information', 'info', '', '2018-05-16 12:10:27', '2018-05-16 12:10:27', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(120, 1, 'Debug Settings', 'debug', '', '2018-05-16 12:10:28', '2018-05-16 12:10:28', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(121, 1, 'Logging Settings', 'logging', '', '2018-05-16 12:10:28', '2018-05-16 12:10:28', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(122, 1, 'Proxy Server', 'proxy', '', '2018-05-16 12:10:28', '2018-05-16 12:10:28', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(123, 1, 'Database Entities', 'entities', '', '2018-05-16 12:10:29', '2018-05-16 12:10:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(124, 1, 'Backup & Restore', 'backup', 'Backup or restore your website.', '2018-05-16 12:10:29', '2018-05-16 12:10:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(125, 1, 'Backup Database', 'backup', '', '2018-05-16 12:10:30', '2018-05-16 12:10:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(126, 1, 'Update concrete5', 'update', '', '2018-05-16 12:10:31', '2018-05-16 12:10:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(127, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2018-05-16 12:10:33', '2018-05-16 12:10:33', 'Initial Version', 1, 0, 1, NULL, 2, 4, NULL),
(128, 1, 'Customize Dashboard Home', 'home', '', '2018-05-16 12:10:34', '2018-05-16 12:10:34', 'Initial Version', 1, 0, 1, NULL, 2, 2, NULL),
(129, 1, 'Drafts', '!drafts', '', '2018-05-16 12:10:51', '2018-05-16 12:10:51', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(130, 1, 'Trash', '!trash', '', '2018-05-16 12:10:52', '2018-05-16 12:10:52', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(131, 1, 'Stacks', '!stacks', '', '2018-05-16 12:10:52', '2018-05-16 12:10:52', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(132, 1, 'Login', 'login', '', '2018-05-16 12:10:53', '2018-05-16 12:10:53', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(133, 1, 'Register', 'register', '', '2018-05-16 12:10:53', '2018-05-16 12:10:53', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(134, 1, 'My Account', 'account', '', '2018-05-16 12:10:54', '2018-05-16 12:10:54', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(135, 1, 'Edit Profile', 'edit_profile', 'Edit your user profile and change password.', '2018-05-16 12:10:54', '2018-05-16 12:10:54', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(136, 1, 'Profile Picture', 'avatar', 'Specify a new image attached to posts or edits.', '2018-05-16 12:10:54', '2018-05-16 12:10:54', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(137, 1, 'Messages', 'messages', 'Inbox for site-specific messages.', '2018-05-16 12:10:55', '2018-05-16 12:10:55', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(138, 1, 'Inbox', 'inbox', '', '2018-05-16 12:10:55', '2018-05-16 12:10:55', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(139, 1, 'Members', 'members', '', '2018-05-16 12:10:56', '2018-05-16 12:10:56', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(140, 1, 'View Profile', 'profile', '', '2018-05-16 12:10:56', '2018-05-16 12:10:56', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(141, 1, 'Directory', 'directory', '', '2018-05-16 12:10:56', '2018-05-16 12:10:56', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(142, 1, 'Page Not Found', 'page_not_found', '', '2018-05-16 12:10:57', '2018-05-16 12:10:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(143, 1, 'Page Forbidden', 'page_forbidden', '', '2018-05-16 12:10:57', '2018-05-16 12:10:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(144, 1, 'Download File', 'download_file', '', '2018-05-16 12:10:58', '2018-05-16 12:10:58', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(145, 1, '', NULL, NULL, '2018-05-16 12:11:01', '2018-05-16 12:11:01', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL),
(146, 1, 'Header Site Title', 'header-site-title', NULL, '2018-05-16 13:36:29', '2018-05-16 13:36:29', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(146, 2, 'Header Site Title', 'header-site-title', NULL, '2018-05-16 13:36:29', '2018-05-16 14:01:57', 'Nueva Versión 2', 0, 0, 1, 1, 2, 0, NULL),
(146, 3, 'Header Site Title', 'header-site-title', NULL, '2018-05-16 13:36:29', '2018-05-21 09:03:22', 'Nueva Versión 3', 0, 0, 1, 1, 2, 0, NULL),
(146, 4, 'Header Site Title', 'header-site-title', NULL, '2018-05-16 13:36:29', '2018-05-21 09:05:21', 'Nueva Versión 4', 0, 0, 1, 1, 2, 0, NULL),
(146, 5, 'Header Site Title', 'header-site-title', NULL, '2018-05-16 13:36:29', '2018-08-27 18:57:46', 'Nueva Versión 5', 0, 0, 1, 1, 2, 0, NULL),
(146, 6, 'Header Site Title', 'header-site-title', NULL, '2018-05-16 13:36:29', '2018-08-30 14:45:02', 'Nueva Versión 6', 1, 0, 1, 1, 2, 0, NULL),
(147, 1, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-16 13:36:29', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(147, 2, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-16 14:18:14', 'Nueva Versión 2', 0, 0, 1, 1, 2, 0, NULL),
(147, 3, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-16 14:18:32', 'Nueva Versión 3', 0, 0, 1, 1, 2, 0, NULL),
(147, 4, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-17 10:15:06', 'Nueva Versión 4', 0, 0, 1, 1, 2, 0, NULL),
(147, 5, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-17 10:15:12', 'Nueva Versión 5', 0, 0, 1, 1, 2, 0, NULL),
(147, 6, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-17 10:15:25', 'Nueva Versión 6', 0, 0, 1, 1, 2, 0, NULL),
(147, 7, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-17 10:15:33', 'Nueva Versión 7', 0, 0, 1, 1, 2, 0, NULL),
(147, 8, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-17 15:03:39', 'Nueva Versión 8', 0, 0, 1, 1, 2, 0, NULL),
(147, 9, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-17 15:04:41', 'Nueva Versión 9', 0, 0, 1, 1, 2, 0, NULL),
(147, 10, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-17 15:05:01', 'Nueva Versión 10', 0, 0, 1, 1, 2, 0, NULL),
(147, 11, 'Header Navigation', 'header-navigation', NULL, '2018-05-16 13:36:29', '2018-05-17 15:05:50', 'Nueva Versión 11', 1, 0, 1, 1, 2, 0, NULL),
(148, 1, 'Footer Legal', 'footer-legal', NULL, '2018-05-16 13:36:30', '2018-05-16 13:36:30', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(148, 2, 'Footer Legal', 'footer-legal', NULL, '2018-05-16 13:36:30', '2018-05-16 14:10:50', 'Nueva Versión 2', 0, 0, 1, 1, 2, 0, NULL),
(148, 3, 'Footer Legal', 'footer-legal', NULL, '2018-05-16 13:36:30', '2018-05-16 14:11:00', 'Nueva Versión 3', 0, 0, 1, 1, 2, 0, NULL),
(148, 4, 'Footer Legal', 'footer-legal', NULL, '2018-05-16 13:36:30', '2018-05-18 11:48:19', 'Nueva Versión 4', 0, 0, 1, 1, 2, 0, NULL),
(148, 5, 'Footer Legal', 'footer-legal', NULL, '2018-05-16 13:36:30', '2018-05-21 10:24:21', 'Nueva Versión 5', 0, 0, 1, 1, 2, 0, NULL),
(148, 6, 'Footer Legal', 'footer-legal', NULL, '2018-05-16 13:36:30', '2018-05-21 10:24:54', 'Nueva Versión 6', 0, 0, 1, 1, 2, 0, NULL),
(148, 7, 'Footer Legal', 'footer-legal', NULL, '2018-05-16 13:36:30', '2018-08-29 19:00:16', 'Nueva Versión 7', 0, 0, 1, 1, 2, 0, NULL),
(148, 8, 'Footer Legal', 'footer-legal', NULL, '2018-05-16 13:36:30', '2018-08-30 15:24:20', 'Nueva Versión 8', 0, 0, 1, 1, 2, 0, NULL),
(148, 9, 'Footer Legal', 'footer-legal', NULL, '2018-05-16 13:36:30', '2018-08-30 15:31:00', 'Nueva Versión 9', 1, 0, 1, 1, 2, 0, NULL),
(149, 1, 'Footer Navigation', 'footer-navigation', NULL, '2018-05-16 13:36:30', '2018-05-16 13:36:30', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(149, 2, 'Footer Navigation', 'footer-navigation', NULL, '2018-05-16 13:36:30', '2018-05-18 11:47:48', 'Nueva Versión 2', 1, 0, 1, 1, 2, 0, NULL),
(150, 1, 'Footer Contact', 'footer-contact', NULL, '2018-05-16 13:36:30', '2018-05-16 13:36:30', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(150, 2, 'Footer Contact', 'footer-contact', NULL, '2018-05-16 13:36:30', '2018-05-18 11:48:40', 'Nueva Versión 2', 0, 0, 1, 1, 2, 0, NULL),
(150, 3, 'Footer Contact', 'footer-contact', NULL, '2018-05-16 13:36:30', '2018-05-18 11:48:44', 'Nueva Versión 3', 0, 0, 1, 1, 2, 0, NULL),
(150, 4, 'Footer Contact', 'footer-contact', NULL, '2018-05-16 13:36:30', '2018-05-18 11:49:18', 'Nueva Versión 4', 0, 0, 1, 1, 2, 0, NULL),
(150, 5, 'Footer Contact', 'footer-contact', NULL, '2018-05-16 13:36:30', '2018-05-21 09:08:05', 'Nueva Versión 5', 0, 0, 1, 1, 2, 0, NULL),
(150, 6, 'Footer Contact', 'footer-contact', NULL, '2018-05-16 13:36:30', '2018-05-21 09:08:23', 'Nueva Versión 6', 0, 0, 1, 1, 2, 0, NULL),
(150, 7, 'Footer Contact', 'footer-contact', NULL, '2018-05-16 13:36:30', '2018-05-21 10:24:39', 'Nueva Versión 7', 1, 0, 1, 1, 2, 0, NULL),
(151, 1, 'info_superior', 'info-superior', NULL, '2018-05-16 13:55:32', '2018-05-16 13:55:32', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(151, 2, 'info_superior', 'info-superior', NULL, '2018-05-16 13:55:32', '2018-05-16 14:16:12', 'Nueva Versión 2', 0, 0, 1, 1, 2, 0, NULL),
(151, 3, 'info_superior', 'info-superior', NULL, '2018-05-16 13:55:32', '2018-05-16 14:16:12', 'Nueva Versión 3', 0, 0, 1, 1, 2, 0, NULL),
(151, 4, 'info_superior', 'info-superior', NULL, '2018-05-16 13:55:32', '2018-05-16 14:16:53', 'Nueva Versión 4', 0, 0, 1, 1, 2, 0, NULL),
(151, 5, 'info_superior', 'info-superior', NULL, '2018-05-16 13:55:32', '2018-08-28 12:47:13', 'Nueva Versión 5', 1, 0, 1, 1, 2, 0, NULL),
(152, 1, 'search', 'search', NULL, '2018-05-16 13:55:32', '2018-05-16 13:55:32', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(152, 2, 'search', 'search', NULL, '2018-05-16 13:55:32', '2018-05-16 14:03:42', 'Nueva Versión 2', 0, 0, 1, 1, 2, 0, NULL),
(152, 3, 'search', 'search', NULL, '2018-05-16 13:55:32', '2018-05-16 14:06:10', 'Nueva Versión 3', 0, 0, 1, 1, 2, 0, NULL),
(152, 4, 'search', 'search', NULL, '2018-05-16 13:55:32', '2018-05-18 15:11:24', 'Nueva Versión 4', 0, 0, 1, 1, 2, 0, NULL),
(152, 5, 'search', 'search', NULL, '2018-05-16 13:55:32', '2018-05-21 10:23:06', 'Nueva Versión 5', 0, 0, 1, 1, 2, 0, NULL),
(152, 6, 'search', 'search', NULL, '2018-05-16 13:55:32', '2018-05-21 10:23:32', 'Nueva Versión 6', 0, 0, 1, 1, 2, 0, NULL),
(152, 7, 'search', 'search', NULL, '2018-05-16 13:55:32', '2018-08-27 19:06:08', 'Nueva Versión 7', 0, 0, 1, 1, 2, 0, NULL),
(152, 8, 'search', 'search', NULL, '2018-05-16 13:55:32', '2018-08-27 19:06:46', 'Nueva Versión 8', 0, 0, 1, 1, 2, 0, NULL),
(152, 9, 'search', 'search', NULL, '2018-05-16 13:55:32', '2018-08-27 19:07:10', 'Nueva Versión 9', 1, 0, 1, 1, 2, 0, NULL),
(153, 1, 'Espacio 2', 'espacio-2', NULL, '2018-05-16 13:55:33', '2018-05-16 13:55:33', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(153, 2, 'Espacio 2', 'espacio-2', NULL, '2018-05-16 13:55:33', '2018-05-16 14:02:13', 'Nueva Versión 2', 0, 0, 1, 1, 2, 0, NULL),
(153, 3, 'Espacio 2', 'espacio-2', NULL, '2018-05-16 13:55:33', '2018-05-16 14:15:57', 'Nueva Versión 3', 0, 0, 1, 1, 2, 0, NULL),
(153, 4, 'Espacio 2', 'espacio-2', NULL, '2018-05-16 13:55:33', '2018-05-16 14:16:08', 'Nueva Versión 4', 0, 0, 1, 1, 2, 0, NULL),
(153, 5, 'Espacio 2', 'espacio-2', NULL, '2018-05-16 13:55:33', '2018-05-16 14:16:12', 'Nueva Versión 5', 0, 0, 1, 1, 2, 0, NULL),
(153, 6, 'Espacio 2', 'espacio-2', NULL, '2018-05-16 13:55:33', '2018-05-21 09:03:19', 'Nueva Versión 6', 1, 0, 1, 1, 2, 0, NULL),
(154, 1, 'Espacio 3', 'espacio-3', NULL, '2018-05-16 13:55:33', '2018-05-16 13:55:33', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(154, 2, 'Espacio 3', 'espacio-3', NULL, '2018-05-16 13:55:33', '2018-05-16 14:03:17', 'Nueva Versión 2', 0, 0, 1, 1, 2, 0, NULL),
(154, 3, 'Espacio 3', 'espacio-3', NULL, '2018-05-16 13:55:33', '2018-05-21 09:03:20', 'Nueva Versión 3', 1, 0, 1, 1, 2, 0, NULL),
(157, 1, '', NULL, NULL, '2018-05-16 14:30:58', '2018-05-16 14:30:58', 'Initial Version', 1, 0, NULL, NULL, 0, 7, NULL),
(160, 1, '', NULL, NULL, '2018-05-16 15:11:48', '2018-05-16 15:11:48', 'Initial Version', 1, 0, NULL, NULL, 0, 7, NULL),
(165, 1, 'Institución', 'institucion', '', '2018-05-17 10:14:16', '2018-05-17 10:14:16', 'Initial Version', 0, 0, 1, 1, 2, 7, NULL),
(165, 2, 'Institución', 'institucion', '', '2018-05-17 10:14:16', '2018-05-17 10:44:15', 'Version 2', 0, 0, 1, 1, 2, 7, NULL),
(165, 3, 'Institución', 'institucion', '', '2018-05-17 10:14:16', '2018-05-17 10:44:49', 'Version 3', 1, 0, 1, 1, 2, 7, NULL),
(166, 1, 'Misión y Visión', 'mision-y-vision', '', '2018-05-17 10:17:29', '2018-05-17 10:17:29', 'Initial Version', 0, 0, 1, 1, 2, 7, NULL),
(166, 2, 'Misión y Visión', 'mision-y-vision', '', '2018-05-17 10:17:29', '2018-05-17 10:35:51', 'Nueva Versión 2', 0, 0, 1, 1, 2, 8, NULL),
(166, 3, 'Misión y Visión', 'mision-y-vision', '', '2018-05-17 10:17:29', '2018-05-17 10:41:13', 'Nueva Versión 3', 0, 0, 1, 1, 2, 8, NULL),
(166, 4, 'Misión y Visión', 'mision-y-vision', '', '2018-05-17 10:17:29', '2018-05-17 10:41:33', 'Version 4', 0, 0, 1, 1, 2, 8, NULL),
(166, 5, 'Misión y Visión', 'mision-y-vision', '', '2018-05-17 10:17:29', '2018-05-17 10:49:39', 'Version 5', 1, 0, 1, 1, 2, 8, NULL),
(167, 1, '', NULL, NULL, '2018-05-17 10:36:28', '2018-05-17 10:36:28', 'Initial Version', 1, 0, NULL, NULL, 0, 8, NULL),
(168, 1, '', NULL, NULL, '2018-05-17 10:39:58', '2018-05-17 10:39:58', 'Initial Version', 1, 0, NULL, NULL, 0, 9, NULL),
(169, 1, 'Marco Legal', 'marco-legal', '', '2018-05-17 10:41:49', '2018-05-17 10:41:49', 'Initial Version', 0, 0, 1, 1, 2, 8, NULL),
(169, 2, 'Marco Legal', 'marco-legal', '', '2018-05-17 10:41:49', '2018-05-17 10:48:26', 'Version 2', 0, 0, 1, 1, 2, 8, NULL),
(169, 3, 'Marco Legal', 'marco-legal', '', '2018-05-17 10:41:49', '2018-05-17 10:55:07', 'Version 3', 0, 0, 1, 1, 2, 8, NULL),
(169, 4, 'Marco Legal', 'marco-legal', '', '2018-05-17 10:41:49', '2018-05-17 10:55:31', 'Version 4', 1, 0, 1, 1, 2, 8, NULL),
(171, 1, 'Resoluciones', 'resoluciones', '', '2018-05-17 10:44:57', '2018-05-17 10:44:57', 'Initial Version', 0, 0, 1, 1, 2, 8, NULL),
(171, 2, 'Resoluciones', 'resoluciones', '', '2018-05-17 10:44:57', '2018-05-17 10:47:20', 'Version 2', 0, 0, 1, 1, 2, 8, NULL),
(171, 3, 'Resoluciones', 'resoluciones', '', '2018-05-17 10:44:57', '2018-05-17 10:47:46', 'Version 3', 1, 0, 1, 1, 2, 8, NULL),
(172, 1, 'Organigrama', 'organigrama', '', '2018-05-17 10:46:12', '2018-05-17 10:46:12', 'Initial Version', 0, 0, 1, 1, 2, 8, NULL),
(172, 2, 'Organigrama', 'organigrama', '', '2018-05-17 10:46:12', '2018-05-17 11:00:30', 'Version 2', 1, 0, 1, 1, 2, 8, NULL),
(191, 1, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-05-18 09:56:03', 'Initial Version', 0, 0, 1, 1, 2, 7, NULL),
(191, 2, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-05-18 10:01:17', 'Version 2', 0, 0, 1, 1, 2, 7, NULL),
(191, 3, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-05-18 10:06:37', 'Version 3', 0, 0, 1, 1, 2, 7, NULL),
(191, 4, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-05-18 10:08:08', 'Version 4', 0, 0, 1, 1, 2, 7, NULL),
(191, 5, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-05-18 10:09:09', 'Version 5', 0, 0, 1, 1, 2, 7, NULL),
(191, 6, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-05-18 10:09:33', 'Version 6', 0, 0, 1, 1, 2, 7, NULL),
(191, 7, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-05-18 10:10:32', 'Version 7', 0, 0, 1, 1, 2, 7, NULL),
(191, 8, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-05-18 10:11:02', 'Version 8', 0, 0, 1, 1, 2, 7, NULL),
(191, 9, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-05-18 10:11:55', 'Version 9', 0, 0, 1, 1, 2, 7, NULL),
(191, 10, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-08-27 18:59:00', 'Version 10', 0, 0, 1, 1, 2, 7, NULL),
(191, 11, 'Contacto', 'contacto', '', '2018-05-18 09:56:03', '2018-08-30 15:24:51', 'Version 11', 1, 0, 1, 1, 2, 7, NULL),
(193, 1, 'MECIP', 'mecip', '', '2018-05-18 10:46:14', '2018-05-18 10:46:14', 'Initial Version', 1, 0, 1, 1, 2, 7, NULL),
(194, 1, 'Trámites', 'tramites', '', '2018-05-18 10:46:54', '2018-05-18 10:46:54', 'Initial Version', 1, 0, 1, 1, 2, 7, NULL),
(196, 1, 'Servicios', 'servicios', '', '2018-05-18 10:47:37', '2018-05-18 10:47:37', 'Initial Version', 1, 0, 1, 1, 2, 7, NULL),
(204, 1, 'Autoridades', 'autoridades', '', '2018-05-18 11:40:22', '2018-05-18 11:40:22', 'Initial Version', 0, 0, 1, 1, 2, 8, NULL),
(204, 2, 'Autoridades', 'autoridades', '', '2018-05-18 11:40:22', '2018-05-18 11:44:53', 'Version 2', 0, 0, 1, 1, 2, 8, NULL),
(204, 3, 'Autoridades', 'autoridades', '', '2018-05-18 11:40:22', '2018-05-18 11:46:37', 'Version 3', 0, 0, 1, 1, 2, 8, NULL),
(204, 4, 'Autoridades', 'autoridades', '', '2018-05-18 11:40:22', '2018-05-18 11:47:49', 'Version 4', 1, 0, 1, 1, 2, 8, NULL),
(205, 1, 'Event Calendar', 'event_calendar', NULL, '2018-05-18 11:59:54', '2018-05-18 11:59:54', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(206, 1, 'Calendars list', 'list_calendar', '', '2018-05-18 11:59:55', '2018-05-18 11:59:55', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(207, 1, 'Events list', 'list_event', '', '2018-05-18 11:59:55', '2018-05-18 11:59:55', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(208, 1, 'Add / edit calendar', 'calendar', '', '2018-05-18 11:59:56', '2018-05-18 11:59:56', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(209, 1, 'Add / edit event', 'event', '', '2018-05-18 11:59:56', '2018-05-18 11:59:56', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(210, 1, 'Type of events', 'types', '', '2018-05-18 11:59:57', '2018-05-18 11:59:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(211, 1, 'Settings', 'settings', '', '2018-05-18 11:59:57', '2018-05-18 11:59:57', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(212, 1, 'Agenda', 'agenda', '', '2018-05-18 12:00:15', '2018-05-18 12:00:15', 'Initial Version', 0, 0, 1, 1, 2, 7, NULL),
(212, 2, 'Agenda', 'agenda', '', '2018-05-18 12:00:15', '2018-05-18 12:00:40', 'Version 2', 0, 0, 1, 1, 2, 7, NULL),
(212, 3, 'Agenda', 'agenda', '', '2018-05-18 12:00:15', '2018-05-18 12:01:54', 'Version 3', 1, 0, 1, 1, 2, 7, NULL),
(213, 1, 'Buscador', 'buscador', '', '2018-05-18 15:07:46', '2018-05-18 15:07:46', 'Initial Version', 0, 0, 1, 1, 2, 7, NULL),
(213, 2, 'Buscador', 'buscador', '', '2018-05-18 15:07:46', '2018-05-18 15:08:24', 'Version 2', 0, 0, 1, 1, 2, 7, NULL),
(213, 3, 'Buscador', 'buscador', '', '2018-05-18 15:07:46', '2018-05-18 15:11:55', 'Version 3', 0, 0, 1, 1, 2, 7, NULL),
(213, 4, 'Buscador', 'buscador', '', '2018-05-18 15:07:46', '2018-05-18 15:12:20', 'Version 4', 0, 0, 1, 1, 2, 7, NULL),
(213, 5, 'Buscador', 'buscador', '', '2018-05-18 15:07:46', '2018-08-28 12:07:07', 'Version 5', 1, 0, 1, 1, 2, 7, NULL),
(214, 1, '', NULL, NULL, '2018-05-21 09:32:29', '2018-05-21 09:32:29', 'Initial Version', 1, 0, NULL, NULL, 0, 9, NULL),
(225, 1, 'Noticias', 'noticias', '', '2018-08-28 11:41:39', '2018-08-28 11:41:39', 'Initial Version', 0, 0, 1, 1, 2, 9, NULL),
(225, 2, 'Noticias', 'noticias', '', '2018-08-28 11:41:39', '2018-08-28 11:41:56', 'Version 2', 0, 0, 1, 1, 2, 9, NULL),
(225, 3, 'Noticias', 'noticias', '', '2018-08-28 11:41:39', '2018-08-28 11:42:53', 'Version 3', 0, 0, 1, 1, 2, 9, NULL),
(225, 4, 'Noticias', 'noticias', '', '2018-08-28 11:41:39', '2018-08-28 11:58:53', 'Version 4', 1, 0, 1, 1, 2, 9, NULL),
(226, 1, 'Titulo de la Noticia 1', 'titulo-de-la-noticia-1', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '2018-08-28 11:48:00', '2018-08-28 11:48:45', 'Initial Version', 0, 0, 1, 1, 2, 7, NULL),
(226, 2, 'Titulo de la Noticia 1', 'titulo-de-la-noticia-1', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '2018-08-28 11:48:00', '2018-08-28 11:52:19', 'Nueva Versión 2', 1, 0, 1, 1, 2, 7, NULL),
(227, 1, 'Titulo de la Noticia 2', 'titulo-de-la-noticia-2', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', '2018-08-28 11:52:00', '2018-08-28 11:52:56', 'Initial Version', 1, 0, 1, 1, 2, 7, NULL),
(228, 1, 'Titulo de la Noticia 3', 'titulo-de-la-noticia-3', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original.', '2018-08-28 11:54:00', '2018-08-28 11:54:41', 'Initial Version', 1, 0, 1, 1, 2, 7, NULL),
(229, 1, 'Titulo de la Noticia 4', 'titulo-de-la-noticia-4', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', '2018-08-28 11:56:00', '2018-08-28 11:56:06', 'Initial Version', 1, 0, 1, 1, 2, 7, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CollectionVersionThemeCustomStyles`
--

CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scvlID` int(10) UNSIGNED DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Config`
--

CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Config`
--

INSERT INTO `Config` (`configNamespace`, `configGroup`, `configItem`, `configValue`) VALUES
('', 'concrete', 'marketplace.token', 'HvuJXhD3SbRRHGBlKLpVLOsqAvT8Tkem36WhXPiU0Px6EBJb3hAEOKwObvVJHnVS'),
('', 'concrete', 'marketplace.url_token', '8gbhsyr5bbfj5a7z9nkuuuqo'),
('', 'concrete', 'security.token.encryption', '0839ccd115fd07e7d212cff401b868047988542efc45d3c055f8d1fd408ce67b'),
('', 'concrete', 'security.token.jobs', '96fb99ef0aa6449ad604b3c16bb027433548656d4c527497df04aa14b6b2ba18'),
('', 'concrete', 'security.token.validation', '0444321991b282daadf3be728c08f79ba5f20f687bb2154bf68020ff57c2c4d8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConfigStore`
--

CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ConfigStore`
--

INSERT INTO `ConfigStore` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('MAIN_HELP_LAST_VIEWED', '2018-05-16 17:36:31', '1526492191', 1, 0),
('NEWSFLOW_LAST_VIEWED', '2018-05-16 16:11:03', '1535567074', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationDiscussions`
--

CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) UNSIGNED NOT NULL,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationEditors`
--

CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) UNSIGNED NOT NULL,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ConversationEditors`
--

INSERT INTO `ConversationEditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
(1, 'plain_text', 'Plain Text', 1, 0),
(2, 'markdown', 'Markdown', 0, 0),
(3, 'redactor', 'Redactor', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationFeatureDetailAssignments`
--

CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationFlaggedMessages`
--

CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationFlaggedMessageTypes`
--

CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ConversationFlaggedMessageTypes`
--

INSERT INTO `ConversationFlaggedMessageTypes` (`cnvMessageFlagTypeID`, `cnvMessageFlagTypeHandle`) VALUES
(1, 'spam');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationMessageAttachments`
--

CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationMessageRatings`
--

CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(10) UNSIGNED DEFAULT NULL,
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationMessages`
--

CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationPermissionAddMessageAccessList`
--

CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationPermissionAssignments`
--

CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ConversationPermissionAssignments`
--

INSERT INTO `ConversationPermissionAssignments` (`cnvID`, `pkID`, `paID`) VALUES
(0, 66, 86),
(0, 67, 87),
(0, 70, 88),
(0, 69, 89),
(0, 71, 90),
(0, 68, 91),
(0, 72, 92),
(0, 73, 93);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationRatingTypes`
--

CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ConversationRatingTypes`
--

INSERT INTO `ConversationRatingTypes` (`cnvRatingTypeID`, `cnvRatingTypeHandle`, `cnvRatingTypeName`, `cnvRatingTypeCommunityPoints`, `pkgID`) VALUES
(1, 'up_vote', 'Up Vote', 1, 0),
(2, 'down_vote', 'Down Vote', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Conversations`
--

CREATE TABLE `Conversations` (
  `cnvID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) UNSIGNED DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) UNSIGNED DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ConversationSubscriptions`
--

CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ConversationSubscriptions`
--

INSERT INTO `ConversationSubscriptions` (`cnvID`, `uID`, `type`) VALUES
(0, 1, 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DownloadStatistics`
--

CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL,
  `rcID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsEventCalendar`
--

CREATE TABLE `dsEventCalendar` (
  `calendarID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dsEventCalendar`
--

INSERT INTO `dsEventCalendar` (`calendarID`, `title`) VALUES
(1, 'Calendario Principal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsEventCalendarEvents`
--

CREATE TABLE `dsEventCalendarEvents` (
  `eventID` int(10) UNSIGNED NOT NULL,
  `calendarID` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `allDayEvent` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsEventCalendarSettings`
--

CREATE TABLE `dsEventCalendarSettings` (
  `settingID` int(10) UNSIGNED NOT NULL,
  `opt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dsEventCalendarSettings`
--

INSERT INTO `dsEventCalendarSettings` (`settingID`, `opt`, `value`) VALUES
(1, 'lang', 'es'),
(2, 'lang_datepicker', 'es'),
(3, 'formatEvent', 'DD MMMM YYYY'),
(4, 'startFrom', '1'),
(5, 'eventsInDay', '5'),
(6, 'default_color', '#808080'),
(7, 'timeFormat', 'HH:mm'),
(8, 'scrollTime', '1'),
(9, 'scrollMonth', '1'),
(10, 'scrollInput', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsEventCalendarTypes`
--

CREATE TABLE `dsEventCalendarTypes` (
  `typeID` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsOpenData`
--

CREATE TABLE `dsOpenData` (
  `opendataID` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `email_organization` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dsOpenData`
--

INSERT INTO `dsOpenData` (`opendataID`, `title`, `organization`, `url`, `email_organization`, `date_created`) VALUES
(2, 'Transparencia', 'SENATICs', 'https://www.senatics.gov.py', 'soporteportales@senatics.gov.py', '2018-08-28 12:40:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsOpenDataDataset`
--

CREATE TABLE `dsOpenDataDataset` (
  `datasetsID` int(10) UNSIGNED NOT NULL,
  `opendataID` int(10) UNSIGNED DEFAULT NULL,
  `dictionaryID` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `url_download_page` text COLLATE utf8_unicode_ci,
  `author` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_author` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseID` int(10) UNSIGNED DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsOpenDataDictionary`
--

CREATE TABLE `dsOpenDataDictionary` (
  `dictionaryID` int(10) UNSIGNED NOT NULL,
  `datasetsID` int(10) UNSIGNED DEFAULT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_label` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `example` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datatype` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardinality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restrictions` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `equivalent_property` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsOpenDataFile`
--

CREATE TABLE `dsOpenDataFile` (
  `fileID` int(10) UNSIGNED NOT NULL,
  `resourceID` int(10) UNSIGNED DEFAULT NULL,
  `formatID` int(10) UNSIGNED DEFAULT NULL,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `target` smallint(5) UNSIGNED DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `fID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dsOpenDataFile`
--

INSERT INTO `dsOpenDataFile` (`fileID`, `resourceID`, `formatID`, `externalLink`, `internalLinkCID`, `target`, `level`, `fID`) VALUES
(1, 1, 10, '', 172, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsOpenDataFormat`
--

CREATE TABLE `dsOpenDataFormat` (
  `formatID` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dsOpenDataFormat`
--

INSERT INTO `dsOpenDataFormat` (`formatID`, `description`) VALUES
(1, 'CSV'),
(2, 'TSV'),
(3, 'JSON'),
(4, 'PDF'),
(5, 'XLS'),
(6, 'XLSX'),
(7, 'XML'),
(8, 'TSV'),
(9, 'DOC'),
(10, 'HTML'),
(11, 'KML'),
(12, 'JPG'),
(13, 'PNG'),
(14, 'SVG'),
(15, 'GIF'),
(16, 'RDF'),
(17, 'RTF'),
(18, 'TXT'),
(19, 'Shapefile'),
(20, 'GeoJSON');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsOpenDataLicense`
--

CREATE TABLE `dsOpenDataLicense` (
  `licenseID` int(10) UNSIGNED NOT NULL,
  `license_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dsOpenDataLicense`
--

INSERT INTO `dsOpenDataLicense` (`licenseID`, `license_name`, `code_license`) VALUES
(1, 'Atribución CC BY', 'https://creativecommons.org/licenses/by/4.0/legalcode'),
(2, 'Atribución-CompartirIgual CC BY-SA', 'https://creativecommons.org/licenses/by-sa/4.0/legalcode'),
(3, 'Atribución-SinDerivadas CC BY-ND ', 'https://creativecommons.org/licenses/by-nd/4.0/legalcode'),
(4, 'Atribución-NoComercial CC BY-NC ', 'https://creativecommons.org/licenses/by-nc/4.0/legalcode'),
(5, 'Atribución-NoComercial-CompartirIgual CC BY-NC-SA ', 'https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode'),
(6, 'Atribución-NoComercial-SinDerivadas CC BY-NC-ND ', 'https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsOpenDataResource`
--

CREATE TABLE `dsOpenDataResource` (
  `resourceID` int(10) UNSIGNED NOT NULL,
  `datasetsID` int(10) UNSIGNED DEFAULT NULL,
  `resource_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dsOpenDataResource`
--

INSERT INTO `dsOpenDataResource` (`resourceID`, `datasetsID`, `resource_title`, `description`) VALUES
(1, 1, 'Organigrama', 'Organigrama Oficial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dsOpenDataSettings`
--

CREATE TABLE `dsOpenDataSettings` (
  `settingID` int(10) UNSIGNED NOT NULL,
  `opt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FeatureAssignments`
--

CREATE TABLE `FeatureAssignments` (
  `faID` int(10) UNSIGNED NOT NULL,
  `feID` int(10) UNSIGNED DEFAULT NULL,
  `fcID` int(10) UNSIGNED DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FeatureAssignments`
--

INSERT INTO `FeatureAssignments` (`faID`, `feID`, `fcID`, `fdObject`) VALUES
(1, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:48:"/application/files/6315/2649/3706/senatics_1.png";s:8:"\0*\0width";d:371;s:9:"\0*\0height";d:144;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(2, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:55:"/application/files/2215/2649/3730/gobierno-nacional.png";s:8:"\0*\0width";d:371;s:9:"\0*\0height";d:144;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(3, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:57:"/application/files/6315/2649/3792/marca-pais-paraguay.png";s:8:"\0*\0width";d:371;s:9:"\0*\0height";d:144;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(4, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:49:"/application/files/2915/2656/9225/Organigrama.jpg";s:8:"\0*\0width";d:2072;s:9:"\0*\0height";d:1242;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(5, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:48:"/application/files/6315/2649/3706/senatics_1.png";s:8:"\0*\0width";d:371;s:9:"\0*\0height";d:144;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(6, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:70:"/application/files/5815/2665/8550/Logo-de-la-SENATICS-en-alfacolor.png";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:64;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(7, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:47:"/application/files/1815/2690/7906/Cabeceras.png";s:8:"\0*\0width";d:1000;s:9:"\0*\0height";d:143;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(8, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:77:"/template-concrete5/application/files/7715/3539/6264/Transicion-animada_1.gif";s:8:"\0*\0width";d:1000;s:9:"\0*\0height";d:170;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(9, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:77:"/template-concrete5/application/files/7615/3564/0299/Transicion-animada_2.gif";s:8:"\0*\0width";d:1000;s:9:"\0*\0height";d:170;s:7:"\0*\0item";N;s:5:"error";s:0:"";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FeatureCategories`
--

CREATE TABLE `FeatureCategories` (
  `fcID` int(10) UNSIGNED NOT NULL,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FeatureCategories`
--

INSERT INTO `FeatureCategories` (`fcID`, `fcHandle`, `pkgID`) VALUES
(1, 'collection_version', 0),
(2, 'gathering_item', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Features`
--

CREATE TABLE `Features` (
  `feID` int(10) UNSIGNED NOT NULL,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Features`
--

INSERT INTO `Features` (`feID`, `feHandle`, `feScore`, `feHasCustomClass`, `pkgID`) VALUES
(1, 'title', 1, 0, 0),
(2, 'link', 1, 0, 0),
(3, 'author', 1, 0, 0),
(4, 'date_time', 1, 0, 0),
(5, 'image', 500, 1, 0),
(6, 'conversation', 10, 1, 0),
(7, 'description', 1, 0, 0),
(8, 'featured', 1000, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileAttributeValues`
--

CREATE TABLE `FileAttributeValues` (
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `avID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FileAttributeValues`
--

INSERT INTO `FileAttributeValues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1, 1, 14, 114),
(1, 1, 15, 115),
(2, 1, 14, 116),
(2, 1, 15, 117),
(3, 1, 14, 118),
(3, 1, 15, 119),
(4, 1, 14, 140),
(4, 1, 15, 141),
(5, 1, 14, 148),
(5, 1, 15, 149),
(6, 1, 14, 160),
(6, 1, 15, 161),
(8, 1, 14, 169),
(8, 1, 15, 170),
(9, 1, 14, 179),
(9, 1, 15, 180),
(10, 1, 14, 185),
(10, 1, 15, 186),
(11, 1, 14, 187),
(11, 1, 15, 188),
(12, 1, 14, 189),
(12, 1, 15, 190),
(13, 1, 14, 191),
(13, 1, 15, 192),
(14, 1, 14, 205),
(14, 1, 15, 206),
(15, 1, 14, 216),
(15, 1, 15, 217),
(16, 1, 14, 221),
(16, 1, 15, 222),
(17, 1, 14, 226),
(17, 1, 15, 227),
(18, 1, 14, 230),
(18, 1, 15, 231),
(19, 1, 14, 232),
(19, 1, 15, 233),
(20, 1, 14, 234),
(20, 1, 15, 235),
(21, 1, 14, 236),
(21, 1, 15, 237),
(22, 1, 14, 238),
(22, 1, 15, 239),
(22, 2, 14, 240),
(22, 2, 15, 241),
(21, 2, 14, 242),
(21, 2, 15, 243),
(23, 1, 14, 245),
(23, 1, 15, 246),
(24, 1, 14, 247),
(24, 1, 15, 248),
(25, 1, 14, 249),
(25, 1, 15, 250),
(26, 1, 14, 251),
(26, 1, 15, 252),
(27, 1, 14, 253),
(27, 1, 15, 254),
(28, 1, 14, 255),
(28, 1, 15, 256),
(29, 1, 14, 257),
(29, 1, 15, 258),
(30, 1, 14, 259),
(30, 1, 15, 260),
(31, 1, 14, 261),
(31, 1, 15, 262),
(32, 1, 14, 263),
(32, 1, 15, 264),
(33, 1, 14, 265),
(33, 1, 15, 266),
(34, 1, 14, 267),
(34, 1, 15, 268),
(35, 1, 14, 269),
(35, 1, 15, 270),
(36, 1, 14, 271),
(36, 1, 15, 272),
(37, 1, 14, 273),
(37, 1, 15, 274),
(38, 1, 14, 275),
(38, 1, 15, 276),
(39, 1, 14, 277),
(39, 1, 15, 278),
(40, 1, 14, 286),
(40, 1, 15, 287),
(40, 2, 14, 343),
(40, 2, 15, 344),
(41, 1, 14, 345),
(41, 1, 15, 346),
(42, 1, 14, 347),
(42, 1, 15, 348),
(43, 1, 14, 349),
(43, 1, 15, 350),
(44, 1, 14, 351),
(44, 1, 15, 352),
(45, 1, 14, 353),
(45, 1, 15, 354),
(40, 3, 14, 384),
(40, 3, 15, 385);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileImageThumbnailPaths`
--

CREATE TABLE `FileImageThumbnailPaths` (
  `fileID` int(10) UNSIGNED NOT NULL,
  `fileVersionID` int(10) UNSIGNED NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageLocationID` int(10) UNSIGNED NOT NULL,
  `path` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileImageThumbnailTypes`
--

CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeID` int(10) UNSIGNED NOT NULL,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FileImageThumbnailTypes`
--

INSERT INTO `FileImageThumbnailTypes` (`ftTypeID`, `ftTypeHandle`, `ftTypeName`, `ftTypeWidth`, `ftTypeHeight`, `ftTypeIsRequired`) VALUES
(1, 'file_manager_listing', 'File Manager Thumbnails', 60, 60, 1),
(2, 'file_manager_detail', 'File Manager Detail Thumbnails', 400, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FilePermissionAssignments`
--

CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FilePermissionFileTypes`
--

CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Files`
--

CREATE TABLE `Files` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fslID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ocID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Files`
--

INSERT INTO `Files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(1, '2018-05-16 14:01:46', 1, 1, 0, 0, NULL),
(2, '2018-05-16 14:02:10', 1, 1, 0, 0, NULL),
(3, '2018-05-16 14:03:12', 1, 1, 0, 0, NULL),
(4, '2018-05-17 11:00:25', 1, 1, 0, 0, NULL),
(5, '2018-05-17 11:16:32', 1, 1, 0, 0, NULL),
(6, '2018-05-17 11:33:34', 1, 1, 0, 0, NULL),
(7, '2018-05-17 11:56:21', 1, 1, 0, 0, NULL),
(8, '2018-05-17 12:03:45', 1, 1, 0, 0, NULL),
(9, '2018-05-18 10:25:09', 1, 1, 0, 0, NULL),
(10, '2018-05-18 10:55:45', 1, 1, 0, 0, NULL),
(11, '2018-05-18 10:56:06', 1, 1, 0, 0, NULL),
(12, '2018-05-18 10:56:28', 1, 1, 0, 0, NULL),
(13, '2018-05-18 10:56:49', 1, 1, 0, 0, NULL),
(14, '2018-05-18 11:28:07', 1, 1, 0, 0, NULL),
(15, '2018-05-18 11:30:40', 1, 1, 0, 0, NULL),
(16, '2018-05-18 11:33:52', 1, 1, 0, 0, NULL),
(17, '2018-05-18 11:35:27', 1, 1, 0, 0, NULL),
(18, '2018-05-18 11:44:49', 1, 1, 0, 0, NULL),
(19, '2018-05-18 11:46:18', 1, 1, 0, 0, NULL),
(20, '2018-05-18 11:49:10', 1, 1, 0, 0, NULL),
(21, '2018-05-18 11:54:58', 1, 1, 0, 0, NULL),
(22, '2018-05-18 11:55:08', 1, 1, 0, 0, NULL),
(23, '2018-05-18 12:11:13', 1, 1, 0, 0, NULL),
(24, '2018-05-18 12:11:15', 1, 1, 0, 0, NULL),
(25, '2018-05-18 12:11:18', 1, 1, 0, 0, NULL),
(26, '2018-05-18 12:11:20', 1, 1, 0, 0, NULL),
(27, '2018-05-18 12:11:22', 1, 1, 0, 0, NULL),
(28, '2018-05-18 12:11:25', 1, 1, 0, 0, NULL),
(29, '2018-05-18 12:11:28', 1, 1, 0, 0, NULL),
(30, '2018-05-18 12:11:30', 1, 1, 0, 0, NULL),
(31, '2018-05-18 12:11:33', 1, 1, 0, 0, NULL),
(32, '2018-05-18 12:11:36', 1, 1, 0, 0, NULL),
(33, '2018-05-18 12:11:37', 1, 1, 0, 0, NULL),
(34, '2018-05-18 12:11:39', 1, 1, 0, 0, NULL),
(35, '2018-05-18 12:11:42', 1, 1, 0, 0, NULL),
(36, '2018-05-18 12:11:45', 1, 1, 0, 0, NULL),
(37, '2018-05-18 12:11:47', 1, 1, 0, 0, NULL),
(38, '2018-05-18 12:11:50', 1, 1, 0, 0, NULL),
(39, '2018-05-18 13:41:25', 1, 1, 0, 0, NULL),
(40, '2018-05-21 09:05:06', 1, 1, 0, 0, NULL),
(41, '2018-08-27 18:58:46', 1, 1, 0, 0, NULL),
(42, '2018-08-28 11:24:37', 1, 1, 0, 0, NULL),
(43, '2018-08-28 11:24:52', 1, 1, 0, 0, NULL),
(44, '2018-08-28 11:25:02', 1, 1, 0, 0, NULL),
(45, '2018-08-28 11:31:49', 1, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileSearchIndexAttributes`
--

CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FileSearchIndexAttributes`
--

INSERT INTO `FileSearchIndexAttributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1, '371.0000', '144.0000', '0.0000'),
(2, '371.0000', '144.0000', '0.0000'),
(3, '371.0000', '144.0000', '0.0000'),
(4, '2072.0000', '1242.0000', '0.0000'),
(5, '1000.0000', '672.0000', '0.0000'),
(6, '1000.0000', '350.0000', '0.0000'),
(7, '0.0000', '0.0000', '0.0000'),
(8, '1000.0000', '350.0000', '0.0000'),
(9, '64.0000', '64.0000', '0.0000'),
(10, '300.0000', '150.0000', '0.0000'),
(11, '300.0000', '150.0000', '0.0000'),
(12, '300.0000', '150.0000', '0.0000'),
(13, '300.0000', '150.0000', '0.0000'),
(14, '2048.0000', '1535.0000', '0.0000'),
(15, '1920.0000', '1200.0000', '0.0000'),
(16, '1366.0000', '768.0000', '0.0000'),
(17, '1920.0000', '1080.0000', '0.0000'),
(18, '128.0000', '128.0000', '0.0000'),
(19, '128.0000', '128.0000', '0.0000'),
(20, '300.0000', '64.0000', '0.0000'),
(21, '1000.0000', '500.0000', '0.0000'),
(22, '1000.0000', '500.0000', '0.0000'),
(23, '2664.0000', '2664.0000', '0.0000'),
(24, '2880.0000', '2880.0000', '0.0000'),
(25, '2664.0000', '2664.0000', '0.0000'),
(26, '2664.0000', '2664.0000', '0.0000'),
(27, '2664.0000', '2664.0000', '0.0000'),
(28, '2664.0000', '2664.0000', '0.0000'),
(29, '2664.0000', '2664.0000', '0.0000'),
(30, '2664.0000', '2664.0000', '0.0000'),
(31, '2880.0000', '2880.0000', '0.0000'),
(32, '1366.0000', '768.0000', '0.0000'),
(33, '2664.0000', '2664.0000', '0.0000'),
(34, '2664.0000', '2664.0000', '0.0000'),
(35, '2664.0000', '2664.0000', '0.0000'),
(36, '2664.0000', '2664.0000', '0.0000'),
(37, '2664.0000', '2664.0000', '0.0000'),
(38, '2664.0000', '2664.0000', '0.0000'),
(39, '1000.0000', '260.0000', '0.0000'),
(40, '1000.0000', '170.0000', '0.0000'),
(41, '371.0000', '144.0000', '0.0000'),
(42, '300.0000', '150.0000', '0.0000'),
(43, '300.0000', '150.0000', '0.0000'),
(44, '300.0000', '150.0000', '0.0000'),
(45, '324.0000', '364.0000', '0.0000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileSetFiles`
--

CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FileSetFiles`
--

INSERT INTO `FileSetFiles` (`fsfID`, `fID`, `fsID`, `timestamp`, `fsDisplayOrder`) VALUES
(1, 5, 1, '2018-05-17 15:17:01', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileSetPermissionAssignments`
--

CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FileSetPermissionAssignments`
--

INSERT INTO `FileSetPermissionAssignments` (`fsID`, `pkID`, `paID`) VALUES
(0, 39, 33),
(0, 40, 34),
(0, 41, 35),
(0, 42, 36),
(0, 43, 37),
(0, 44, 38),
(0, 46, 39),
(0, 45, 40),
(0, 47, 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileSetPermissionFileTypeAccessList`
--

CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileSetPermissionFileTypeAccessListCustom`
--

CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileSets`
--

CREATE TABLE `FileSets` (
  `fsID` int(10) UNSIGNED NOT NULL,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FileSets`
--

INSERT INTO `FileSets` (`fsID`, `fsName`, `uID`, `fsType`, `fsOverrideGlobalPermissions`) VALUES
(1, 'Noticias', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileSetSavedSearches`
--

CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileStorageLocations`
--

CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) UNSIGNED NOT NULL,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FileStorageLocations`
--

INSERT INTO `FileStorageLocations` (`fslID`, `fslName`, `fslConfiguration`, `fslIsDefault`) VALUES
(1, 'Default', 'O:69:"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration":1:{s:10:"\0*\0default";b:1;}', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileStorageLocationTypes`
--

CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeID` int(10) UNSIGNED NOT NULL,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FileStorageLocationTypes`
--

INSERT INTO `FileStorageLocationTypes` (`fslTypeID`, `fslTypeHandle`, `fslTypeName`, `pkgID`) VALUES
(1, 'default', 'Default', 0),
(2, 'local', 'Local', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileVersionLog`
--

CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FileVersionLog`
--

INSERT INTO `FileVersionLog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
(1, 1, 1, 5, 14),
(2, 1, 1, 5, 15),
(3, 2, 1, 5, 14),
(4, 2, 1, 5, 15),
(5, 3, 1, 5, 14),
(6, 3, 1, 5, 15),
(7, 4, 1, 5, 14),
(8, 4, 1, 5, 15),
(9, 5, 1, 5, 14),
(10, 5, 1, 5, 15),
(11, 6, 1, 5, 14),
(12, 6, 1, 5, 15),
(13, 8, 1, 5, 14),
(14, 8, 1, 5, 15),
(15, 9, 1, 5, 14),
(16, 9, 1, 5, 15),
(17, 10, 1, 5, 14),
(18, 10, 1, 5, 15),
(19, 11, 1, 5, 14),
(20, 11, 1, 5, 15),
(21, 12, 1, 5, 14),
(22, 12, 1, 5, 15),
(23, 13, 1, 5, 14),
(24, 13, 1, 5, 15),
(25, 14, 1, 5, 14),
(26, 14, 1, 5, 15),
(27, 15, 1, 5, 14),
(28, 15, 1, 5, 15),
(29, 16, 1, 5, 14),
(30, 16, 1, 5, 15),
(31, 17, 1, 5, 14),
(32, 17, 1, 5, 15),
(33, 18, 1, 5, 14),
(34, 18, 1, 5, 15),
(35, 19, 1, 5, 14),
(36, 19, 1, 5, 15),
(37, 20, 1, 5, 14),
(38, 20, 1, 5, 15),
(39, 21, 1, 5, 14),
(40, 21, 1, 5, 15),
(41, 22, 1, 5, 14),
(42, 22, 1, 5, 15),
(43, 22, 2, 1, 0),
(44, 22, 2, 5, 14),
(45, 22, 2, 5, 15),
(46, 21, 2, 1, 0),
(47, 21, 2, 5, 14),
(48, 21, 2, 5, 15),
(49, 23, 1, 5, 14),
(50, 23, 1, 5, 15),
(51, 24, 1, 5, 14),
(52, 24, 1, 5, 15),
(53, 25, 1, 5, 14),
(54, 25, 1, 5, 15),
(55, 26, 1, 5, 14),
(56, 26, 1, 5, 15),
(57, 27, 1, 5, 14),
(58, 27, 1, 5, 15),
(59, 28, 1, 5, 14),
(60, 28, 1, 5, 15),
(61, 29, 1, 5, 14),
(62, 29, 1, 5, 15),
(63, 30, 1, 5, 14),
(64, 30, 1, 5, 15),
(65, 31, 1, 5, 14),
(66, 31, 1, 5, 15),
(67, 32, 1, 5, 14),
(68, 32, 1, 5, 15),
(69, 33, 1, 5, 14),
(70, 33, 1, 5, 15),
(71, 34, 1, 5, 14),
(72, 34, 1, 5, 15),
(73, 35, 1, 5, 14),
(74, 35, 1, 5, 15),
(75, 36, 1, 5, 14),
(76, 36, 1, 5, 15),
(77, 37, 1, 5, 14),
(78, 37, 1, 5, 15),
(79, 38, 1, 5, 14),
(80, 38, 1, 5, 15),
(81, 39, 1, 5, 14),
(82, 39, 1, 5, 15),
(83, 40, 1, 5, 14),
(84, 40, 1, 5, 15),
(85, 40, 2, 1, 0),
(86, 40, 2, 5, 14),
(87, 40, 2, 5, 15),
(88, 41, 1, 5, 14),
(89, 41, 1, 5, 15),
(90, 42, 1, 5, 14),
(91, 42, 1, 5, 15),
(92, 43, 1, 5, 14),
(93, 43, 1, 5, 15),
(94, 44, 1, 5, 14),
(95, 44, 1, 5, 15),
(96, 45, 1, 5, 14),
(97, 45, 1, 5, 15),
(98, 40, 3, 1, 0),
(99, 40, 3, 5, 14),
(100, 40, 3, 5, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FileVersions`
--

CREATE TABLE `FileVersions` (
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fvSize` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FileVersions`
--

INSERT INTO `FileVersions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasListingThumbnail`, `fvHasDetailThumbnail`, `fvExtension`, `fvType`) VALUES
(1, 1, 'senatics_1.png', '631526493706', 0, 15857, 'senatics (1).png', '', '', 1, '2018-05-16 14:01:46', 1, 1, '2018-05-16 14:01:46', 1, 0, 'png', 1),
(2, 1, 'gobierno-nacional.png', '221526493730', 0, 15735, 'gobierno-nacional.png', '', '', 1, '2018-05-16 14:02:10', 1, 1, '2018-05-16 14:02:10', 1, 0, 'png', 1),
(3, 1, 'marca-pais-paraguay.png', '631526493792', 0, 19011, 'marca-pais-paraguay.png', '', '', 1, '2018-05-16 14:03:13', 1, 1, '2018-05-16 14:03:13', 1, 0, 'png', 1),
(4, 1, 'Organigrama.jpg', '291526569225', 0, 386183, 'Organigrama.jpg', '', '', 1, '2018-05-17 11:00:25', 1, 1, '2018-05-17 11:00:25', 1, 1, 'jpg', 1),
(5, 1, '3.jpg', '551526570192', 0, 450200, '3.jpg', '', '', 1, '2018-05-17 11:16:32', 1, 1, '2018-05-17 11:16:32', 1, 1, 'jpg', 1),
(6, 1, 'Slide2.png', '151526571214', 0, 437621, 'Slide2.png', '', '', 1, '2018-05-17 11:33:34', 1, 1, '2018-05-17 11:33:34', 1, 1, 'png', 1),
(7, 1, 'pdfDePrueba.pdf', '801526572581', 0, 22625, 'pdfDePrueba.pdf', '', '', 1, '2018-05-17 11:56:21', 1, 1, '2018-05-17 11:56:21', 0, 0, 'pdf', 5),
(8, 1, 'Slide1.png', '861526573025', 0, 516284, 'Slide1.png', '', '', 1, '2018-05-17 12:03:45', 1, 1, '2018-05-17 12:03:45', 1, 1, 'png', 1),
(9, 1, 'newspaper.png', '441526653509', 0, 1479, 'newspaper.png', '', '', 1, '2018-05-18 10:25:09', 1, 1, '2018-05-18 10:25:09', 1, 0, 'png', 1),
(10, 1, 'acceso_informacion_publica_btn-GRAL.png', '581526655345', 0, 25458, 'acceso_informacion_publica_btn-GRAL.png', '', '', 1, '2018-05-18 10:55:45', 1, 1, '2018-05-18 10:55:45', 1, 0, 'png', 1),
(11, 1, 'informacion_publica_btn-GRAL.png', '311526655366', 0, 30758, 'informacion_publica_btn-GRAL.png', '', '', 1, '2018-05-18 10:56:06', 1, 1, '2018-05-18 10:56:06', 1, 0, 'png', 1),
(12, 1, 'denuncias_btn.png', '671526655388', 0, 23136, 'denuncias_btn.png', '', '', 1, '2018-05-18 10:56:28', 1, 1, '2018-05-18 10:56:28', 1, 0, 'png', 1),
(13, 1, 'portal_parauay_btn2.png', '321526655409', 0, 45969, 'portal_parauay_btn2.png', '', '', 1, '2018-05-18 10:56:50', 1, 1, '2018-05-18 10:56:50', 1, 0, 'png', 1),
(14, 1, '14_-_2.jpg', '221526657287', 0, 1587862, '14 - 2.jpg', '', '', 1, '2018-05-18 11:28:07', 1, 1, '2018-05-18 11:28:07', 1, 1, 'jpg', 1),
(15, 1, '14_-_23.png', '451526657440', 0, 137830, '14 - 2(3).png', '', '', 1, '2018-05-18 11:30:40', 1, 1, '2018-05-18 11:30:40', 1, 1, 'png', 1),
(16, 1, '14_-_71.png', '111526657632', 0, 123568, '14 - 7(1).png', '', '', 1, '2018-05-18 11:33:52', 1, 1, '2018-05-18 11:33:52', 1, 1, 'png', 1),
(17, 1, '14_-_85.png', '631526657727', 0, 92752, '14 - 85.png', '', '', 1, '2018-05-18 11:35:27', 1, 1, '2018-05-18 11:35:27', 1, 1, 'png', 1),
(18, 1, 'boss.png', '211526658289', 0, 4280, 'boss.png', '', '', 1, '2018-05-18 11:44:49', 1, 1, '2018-05-18 11:44:49', 1, 0, 'png', 1),
(19, 1, 'woman.png', '211526658378', 0, 4626, 'woman.png', '', '', 1, '2018-05-18 11:46:18', 1, 1, '2018-05-18 11:46:18', 1, 0, 'png', 1),
(20, 1, 'Logo-de-la-SENATICS-en-alfacolor.png', '581526658550', 0, 11340, 'Logo-de-la-SENATICS-en-alfacolor.png', '', '', 1, '2018-05-18 11:49:11', 1, 1, '2018-05-18 11:49:11', 1, 0, 'png', 1),
(21, 1, '1809cf7ba79ffb82aab8a2a2a834c1c5.png', '141526658898', 0, 595419, '1809cf7ba79ffb82aab8a2a2a834c1c5.png', '', '', 0, '2018-05-18 11:54:58', 1, 1, '2018-05-18 11:54:58', 1, 1, 'png', 1),
(21, 2, '1809cf7ba79ffb82aab8a2a2a834c1c5.png', '831526659062', 0, 569233, '1809cf7ba79ffb82aab8a2a2a834c1c5.png', '', '', 1, '2018-05-18 11:57:42', 1, 1, '2018-05-18 11:54:58', 1, 1, 'png', 1),
(22, 1, 'f9607bc798b79d66672dfc3f4d5f7f94.png', '121526658908', 0, 507300, 'f9607bc798b79d66672dfc3f4d5f7f94.png', '', '', 0, '2018-05-18 11:55:08', 1, 1, '2018-05-18 11:55:08', 1, 1, 'png', 1),
(22, 2, 'f9607bc798b79d66672dfc3f4d5f7f94.png', '681526659025', 0, 522590, 'f9607bc798b79d66672dfc3f4d5f7f94.png', '', '', 1, '2018-05-18 11:57:05', 1, 1, '2018-05-18 11:55:08', 1, 1, 'png', 1),
(23, 1, '14_-_61.png', '831526659873', 0, 86964, '14 - 6(1).png', '', '', 1, '2018-05-18 12:11:13', 1, 1, '2018-05-18 12:11:13', 1, 1, 'png', 1),
(24, 1, '14_-_7.png', '641526659875', 0, 480197, '14 - 7.png', '', '', 1, '2018-05-18 12:11:15', 1, 1, '2018-05-18 12:11:15', 1, 1, 'png', 1),
(25, 1, '14_-_72.png', '561526659878', 0, 402957, '14 - 7(2).png', '', '', 1, '2018-05-18 12:11:18', 1, 1, '2018-05-18 12:11:18', 1, 1, 'png', 1),
(26, 1, '14_-_62.png', '731526659880', 0, 381759, '14 - 6(2).png', '', '', 1, '2018-05-18 12:11:20', 1, 1, '2018-05-18 12:11:20', 1, 1, 'png', 1),
(27, 1, '14_-_73.png', '451526659882', 0, 691487, '14 - 7(3).png', '', '', 1, '2018-05-18 12:11:23', 1, 1, '2018-05-18 12:11:23', 1, 1, 'png', 1),
(28, 1, '14_-_82.png', '531526659885', 0, 216446, '14 - 8(2).png', '', '', 1, '2018-05-18 12:11:25', 1, 1, '2018-05-18 12:11:25', 1, 1, 'png', 1),
(29, 1, '14_-_9.png', '971526659888', 0, 443770, '14 - 9.png', '', '', 1, '2018-05-18 12:11:28', 1, 1, '2018-05-18 12:11:28', 1, 1, 'png', 1),
(30, 1, '14_-_81.png', '961526659890', 0, 213354, '14 - 8(1).png', '', '', 1, '2018-05-18 12:11:30', 1, 1, '2018-05-18 12:11:30', 1, 1, 'png', 1),
(31, 1, '14_-_8.png', '171526659893', 0, 463382, '14 - 8.png', '', '', 1, '2018-05-18 12:11:33', 1, 1, '2018-05-18 12:11:33', 1, 1, 'png', 1),
(32, 1, '14_-_71.png', '191526659896', 0, 123568, '14 - 7(1).png', '', '', 1, '2018-05-18 12:11:36', 1, 1, '2018-05-18 12:11:36', 1, 1, 'png', 1),
(33, 1, '14_-_101.png', '701526659897', 0, 189084, '14 - 10(1).png', '', '', 1, '2018-05-18 12:11:37', 1, 1, '2018-05-18 12:11:37', 1, 1, 'png', 1),
(34, 1, '14_-_91.png', '411526659899', 0, 232476, '14 - 9(1).png', '', '', 1, '2018-05-18 12:11:39', 1, 1, '2018-05-18 12:11:39', 1, 1, 'png', 1),
(35, 1, '14_-_11.png', '561526659902', 0, 416258, '14 - 11.png', '', '', 1, '2018-05-18 12:11:42', 1, 1, '2018-05-18 12:11:42', 1, 1, 'png', 1),
(36, 1, '14_-_10.png', '621526659905', 0, 446116, '14 - 10.png', '', '', 1, '2018-05-18 12:11:45', 1, 1, '2018-05-18 12:11:45', 1, 1, 'png', 1),
(37, 1, '14_-_92.png', '811526659907', 0, 263334, '14 - 9(2).png', '', '', 1, '2018-05-18 12:11:47', 1, 1, '2018-05-18 12:11:47', 1, 1, 'png', 1),
(38, 1, '14_-_102.png', '811526659910', 0, 329240, '14 - 10(2).png', '', '', 1, '2018-05-18 12:11:50', 1, 1, '2018-05-18 12:11:50', 1, 1, 'png', 1),
(39, 1, 'ENCABEZADO_1-sin_logos.jpg', '641526665285', 0, 45263, 'ENCABEZADO_1-sin_logos.jpg', '', '', 1, '2018-05-18 13:41:25', 1, 1, '2018-05-18 13:41:25', 1, 1, 'jpg', 1),
(40, 1, 'Cabeceras.png', '181526907906', 0, 42439, 'Cabeceras.png', '', '', 0, '2018-05-21 09:05:06', 1, 1, '2018-05-21 09:05:06', 1, 1, 'png', 1),
(40, 2, 'Transicion-animada_1.gif', '771535396264', 0, 478566, 'Cabeceras.png', '', '', 0, '2018-08-27 18:57:44', 1, 1, '2018-05-21 09:05:06', 1, 1, 'gif', 1),
(40, 3, 'Transicion-animada_2.gif', '761535640299', 0, 460903, 'Cabeceras.png', '', '', 1, '2018-08-30 14:44:59', 1, 1, '2018-05-21 09:05:06', 1, 1, 'gif', 1),
(41, 1, 'logo-gobierno-nacional-n.png', '111535396326', 0, 9493, 'logo-gobierno-nacional-n.png', '', '', 1, '2018-08-27 18:58:46', 1, 1, '2018-08-27 18:58:46', 1, 0, 'png', 1),
(42, 1, 'accede-a-informacion-publica.png', '361535455477', 0, 15883, 'accede-a-informacion-publica.png', '', '', 1, '2018-08-28 11:24:37', 1, 1, '2018-08-28 11:24:37', 1, 0, 'png', 1),
(43, 1, 'solicita-informacion-publica.png', '961535455492', 0, 19788, 'solicita-informacion-publica.png', '', '', 1, '2018-08-28 11:24:52', 1, 1, '2018-08-28 11:24:52', 1, 0, 'png', 1),
(44, 1, 'denuncias-anticorrupcion.png', '331535455502', 0, 14376, 'denuncias-anticorrupcion.png', '', '', 1, '2018-08-28 11:25:02', 1, 1, '2018-08-28 11:25:02', 1, 0, 'png', 1),
(45, 1, 'icono.png', '591535455909', 0, 2239, 'icono.png', '', '', 1, '2018-08-28 11:31:49', 1, 1, '2018-08-28 11:31:49', 1, 0, 'png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gaPage`
--

CREATE TABLE `gaPage` (
  `gaiID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GatheringConfiguredDataSources`
--

CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) UNSIGNED NOT NULL,
  `gaID` int(10) UNSIGNED DEFAULT NULL,
  `gasID` int(10) UNSIGNED DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GatheringDataSources`
--

CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) UNSIGNED NOT NULL,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `GatheringDataSources`
--

INSERT INTO `GatheringDataSources` (`gasID`, `gasName`, `gasHandle`, `pkgID`, `gasDisplayOrder`) VALUES
(1, 'Site Page', 'page', 0, 0),
(2, 'RSS Feed', 'rss_feed', 0, 1),
(3, 'Flickr Feed', 'flickr_feed', 0, 2),
(4, 'Twitter', 'twitter', 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GatheringItemFeatureAssignments`
--

CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) UNSIGNED NOT NULL,
  `gaiID` int(10) UNSIGNED DEFAULT NULL,
  `faID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GatheringItems`
--

CREATE TABLE `GatheringItems` (
  `gaiID` int(10) UNSIGNED NOT NULL,
  `gaID` int(10) UNSIGNED DEFAULT NULL,
  `gasID` int(10) UNSIGNED DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) UNSIGNED DEFAULT '1',
  `gaiSlotHeight` int(10) UNSIGNED DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GatheringItemSelectedTemplates`
--

CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gatID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gatTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GatheringItemTemplateFeatures`
--

CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) UNSIGNED NOT NULL,
  `gatID` int(10) UNSIGNED DEFAULT NULL,
  `feID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `GatheringItemTemplateFeatures`
--

INSERT INTO `GatheringItemTemplateFeatures` (`gfeID`, `gatID`, `feID`) VALUES
(4, 1, 1),
(10, 2, 1),
(13, 3, 1),
(16, 4, 1),
(19, 5, 1),
(23, 7, 1),
(29, 11, 1),
(33, 12, 1),
(37, 13, 1),
(42, 14, 1),
(47, 15, 1),
(53, 17, 1),
(56, 18, 1),
(63, 21, 1),
(64, 22, 1),
(3, 1, 2),
(9, 2, 2),
(12, 3, 2),
(15, 4, 2),
(18, 5, 2),
(21, 6, 2),
(25, 8, 2),
(27, 9, 2),
(41, 13, 3),
(46, 14, 3),
(51, 16, 3),
(55, 17, 3),
(62, 20, 3),
(66, 22, 3),
(2, 1, 4),
(8, 2, 4),
(14, 4, 4),
(17, 5, 4),
(31, 11, 4),
(35, 12, 4),
(39, 13, 4),
(44, 14, 4),
(61, 20, 4),
(5, 1, 5),
(22, 6, 5),
(24, 8, 5),
(26, 9, 5),
(28, 10, 5),
(32, 11, 5),
(36, 12, 5),
(40, 13, 5),
(45, 14, 5),
(49, 15, 5),
(50, 16, 5),
(59, 19, 5),
(65, 22, 5),
(20, 5, 6),
(1, 1, 7),
(7, 2, 7),
(11, 3, 7),
(30, 11, 7),
(34, 12, 7),
(38, 13, 7),
(43, 14, 7),
(48, 15, 7),
(52, 16, 7),
(54, 17, 7),
(57, 18, 7),
(58, 19, 7),
(60, 20, 7),
(6, 1, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GatheringItemTemplates`
--

CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) UNSIGNED NOT NULL,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) UNSIGNED DEFAULT '0',
  `gatFixedSlotHeight` int(10) UNSIGNED DEFAULT '0',
  `gatForceDefault` int(10) UNSIGNED DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `gatTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `GatheringItemTemplates`
--

INSERT INTO `GatheringItemTemplates` (`gatID`, `gatHandle`, `gatName`, `gatHasCustomClass`, `gatFixedSlotWidth`, `gatFixedSlotHeight`, `gatForceDefault`, `pkgID`, `gatTypeID`) VALUES
(1, 'featured', 'Featured Item', 0, 6, 2, 1, 0, 1),
(2, 'title_date_description', 'Title Date & Description', 0, 0, 0, 0, 0, 1),
(3, 'title_description', 'Title & Description', 0, 0, 0, 0, 0, 1),
(4, 'title_date', 'Title & Date', 0, 0, 0, 0, 0, 1),
(5, 'title_date_comments', 'Title, Date & Comments', 1, 0, 0, 0, 0, 1),
(6, 'thumbnail', 'Thumbnail', 0, 0, 0, 0, 0, 1),
(7, 'basic', 'Basic', 0, 0, 0, 0, 0, 2),
(8, 'image_sharing_link', 'Image Sharing Link', 0, 0, 0, 0, 0, 2),
(9, 'image_conversation', 'Image Conversation', 0, 0, 0, 0, 0, 2),
(10, 'image', 'Large Image', 0, 0, 0, 0, 0, 2),
(11, 'masthead_image_left', 'Masthead Image Left', 0, 0, 0, 0, 0, 1),
(12, 'masthead_image_right', 'Masthead Image Right', 0, 0, 0, 0, 0, 1),
(13, 'masthead_image_byline_right', 'Masthead Image Byline Right', 0, 0, 0, 0, 0, 1),
(14, 'masthead_image_byline_left', 'Masthead Image Byline Left', 0, 0, 0, 0, 0, 1),
(15, 'image_masthead_description_center', 'Image Masthead Description Center', 0, 0, 0, 0, 0, 1),
(16, 'image_byline_description_center', 'Image Byline Description Center', 0, 0, 0, 0, 0, 1),
(17, 'masthead_byline_description', 'Masthead Byline Description', 0, 0, 0, 0, 0, 1),
(18, 'masthead_description', 'Masthead Description', 0, 0, 0, 0, 0, 1),
(19, 'thumbnail_description_center', 'Thumbnail & Description Center', 0, 0, 0, 0, 0, 1),
(20, 'tweet', 'Tweet', 0, 0, 0, 0, 0, 1),
(21, 'vimeo', 'Vimeo', 0, 0, 0, 0, 0, 1),
(22, 'image_overlay_headline', 'Image Overlay Headline', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GatheringItemTemplateTypes`
--

CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) UNSIGNED NOT NULL,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `GatheringItemTemplateTypes`
--

INSERT INTO `GatheringItemTemplateTypes` (`gatTypeID`, `gatTypeHandle`, `pkgID`) VALUES
(1, 'tile', 0),
(2, 'detail', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GatheringPermissionAssignments`
--

CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Gatherings`
--

CREATE TABLE `Gatherings` (
  `gaID` int(10) UNSIGNED NOT NULL,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Groups`
--

CREATE TABLE `Groups` (
  `gID` int(10) UNSIGNED NOT NULL,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Groups`
--

INSERT INTO `Groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`, `gIsBadge`, `gBadgeFID`, `gBadgeDescription`, `gBadgeCommunityPointValue`, `gIsAutomated`, `gCheckAutomationOnRegister`, `gCheckAutomationOnLogin`, `gCheckAutomationOnJobRun`, `gPath`, `pkgID`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Guest', 0),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Registered Users', 0),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Administrators', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GroupSetGroups`
--

CREATE TABLE `GroupSetGroups` (
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GroupSets`
--

CREATE TABLE `GroupSets` (
  `gsID` int(10) UNSIGNED NOT NULL,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Jobs`
--

CREATE TABLE `Jobs` (
  `jID` int(10) UNSIGNED NOT NULL,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Jobs`
--

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.', '2018-05-16 12:09:36', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2018-05-16 12:09:36', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Check Automated Groups', 'Automatically add users to groups and assign badges.', '2018-05-16 12:09:36', NULL, 0, NULL, 0, 'ENABLED', 'check_automated_groups', 0, 0, 'days', 0),
(4, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2018-05-16 12:09:37', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(5, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2018-05-16 12:09:37', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(6, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2018-05-16 12:09:37', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0),
(7, 'Update Gatherings', 'Loads new items into gatherings.', '2018-05-16 12:09:37', NULL, 0, NULL, 0, 'ENABLED', 'update_gatherings', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `JobSetJobs`
--

CREATE TABLE `JobSetJobs` (
  `jsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jRunOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `JobSetJobs`
--

INSERT INTO `JobSetJobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `JobSets`
--

CREATE TABLE `JobSets` (
  `jsID` int(10) UNSIGNED NOT NULL,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `JobSets`
--

INSERT INTO `JobSets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `JobsLog`
--

CREATE TABLE `JobsLog` (
  `jlID` int(10) UNSIGNED NOT NULL,
  `jID` int(10) UNSIGNED NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Logs`
--

CREATE TABLE `Logs` (
  `logID` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Logs`
--

INSERT INTO `Logs` (`logID`, `channel`, `time`, `message`, `uID`, `level`) VALUES
(1, 'exceptions', 1526492589, 'Exception Occurred: /home/aortiz/github/template-concrete5/concrete/vendor/oyejorge/less.php/lib/Less/Tree/Variable.php:48 variable @bgcolor-site-color is undefined (0)\n', 1, 600),
(2, 'exceptions', 1526492716, 'Exception Occurred: /home/aortiz/github/template-concrete5/concrete/vendor/oyejorge/less.php/lib/Less/Tree/Variable.php:48 variable @bgcolor-site-color is undefined (0)\n', 1, 600),
(3, 'application', 1526496225, 'Página "Noticias" en ruta "/noticias" movido a la papelera', 1, 100),
(4, 'application', 1526500026, 'Página "" en ruta "/!drafts/155" movido a la papelera', 1, 100),
(5, 'application', 1526500031, 'Página "" en ruta "/!drafts/156" movido a la papelera', 1, 100),
(6, 'application', 1526566438, 'Página "Resoluciones" en ruta "/institucion/resoluciones" movido a la papelera', 1, 100),
(7, 'application', 1526566442, 'Página "Marco Legal" en ruta "/institucion/marco-legal" movido a la papelera', 1, 100),
(8, 'application', 1526566446, 'Página "Misión, Visión y Ejes Estrategicos" en ruta "/institucion/mision-vision-y-ejes-estrategicos" movido a la papelera', 1, 100),
(9, 'application', 1526566452, 'Página "Institución" en ruta "/institucion" movido a la papelera', 1, 100),
(10, 'application', 1526568224, 'Página "Resoluciones" en ruta "/institucion/resoluciones" movido a la papelera', 1, 100),
(11, 'application', 1526570072, 'Página "" en ruta "/!drafts/173" eliminado', 1, 100),
(12, 'application', 1526570843, 'Página "Noticia de Prueba 1" en ruta "/noticias/noticia-de-prueba-1" movido a la papelera', 1, 100),
(13, 'application', 1526645352, 'Página "Noticia de Prueba 2" en ruta "/noticias/noticia-de-prueba-2" movido a la papelera', 1, 100),
(14, 'application', 1526645358, 'Página "Noticia de Prueba 1" en ruta "/noticias/noticia-de-prueba-1" movido a la papelera', 1, 100),
(15, 'application', 1526656512, 'Página "Noticia de prueba 1" en ruta "/noticias/noticia-de-prueba-1" movido a la papelera', 1, 100),
(16, 'application', 1526656526, 'Página "Noticia de prueba 2" en ruta "/noticias/noticia-de-prueba-2" movido a la papelera', 1, 100),
(17, 'application', 1526656943, 'Página "Noticia de prueba 1" en ruta "/noticias/noticia-de-prueba-1" movido a la papelera', 1, 100),
(18, 'application', 1526658017, 'Página "Autoridades" en ruta "/institucion/autoridades" movido a la papelera', 1, 100),
(19, 'application', 1526908769, 'Session Invalidated. Session user agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36" did not match provided agent "Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Mobile Safari/537.36"', 1, 100),
(20, 'application', 1526910543, 'Página "Noticia 1" en ruta "/!drafts/217" eliminado', 1, 100),
(21, 'application', 1526910558, 'Página "Noticia de prueba 1" en ruta "/noticias/noticia-de-prueba-1" movido a la papelera', 1, 100),
(22, 'application', 1526910562, 'Página "Noticia de prueba 2" en ruta "/noticias/noticia-de-prueba-2" movido a la papelera', 1, 100),
(23, 'application', 1526910566, 'Página "Noticia de prueba 3" en ruta "/noticias/noticia-de-prueba-3" movido a la papelera', 1, 100),
(24, 'application', 1526910570, 'Página "Noticia de prueba 4" en ruta "/noticias/noticia-de-prueba-4" movido a la papelera', 1, 100),
(25, 'application', 1526910588, 'Página "Noticia de prueba 5" en ruta "/noticias/noticia-de-prueba-5" movido a la papelera', 1, 100),
(26, 'application', 1526910598, 'Página "" en ruta "/!drafts/215" movido a la papelera', 1, 100),
(27, 'application', 1526910602, 'Página "" en ruta "/!drafts/216" movido a la papelera', 1, 100),
(28, 'application', 1526910607, 'Página "Noticia de prueba 1" en ruta "/!trash/noticia-de-prueba-1-4" eliminado', 1, 100),
(29, 'application', 1526910608, 'Página "Autoridades" en ruta "/!trash/autoridades" eliminado', 1, 100),
(30, 'application', 1526910608, 'Página "Noticia de prueba 1" en ruta "/!trash/noticia-de-prueba-1-3" eliminado', 1, 100),
(31, 'application', 1526910609, 'Página "Noticia de prueba 2" en ruta "/!trash/noticia-de-prueba-2-1" eliminado', 1, 100),
(32, 'application', 1526910611, 'Página "Noticia de prueba 2" en ruta "/!trash/noticia-de-prueba-2-2" eliminado', 1, 100),
(33, 'application', 1526910614, 'Página "Noticia de prueba 3" en ruta "/!trash/noticia-de-prueba-3" eliminado', 1, 100),
(34, 'application', 1526910615, 'Página "" en ruta "/!trash/216" eliminado', 1, 100),
(35, 'application', 1526910616, 'Página "" en ruta "/!trash/215" eliminado', 1, 100),
(36, 'application', 1526910616, 'Página "Noticia de prueba 5" en ruta "/!trash/noticia-de-prueba-5" eliminado', 1, 100),
(37, 'application', 1526910622, 'Página "Noticia de prueba 4" en ruta "/!trash/noticia-de-prueba-4" eliminado', 1, 100),
(38, 'application', 1526910624, 'Página "Noticia de prueba 1" en ruta "/!trash/noticia-de-prueba-1-2" eliminado', 1, 100),
(39, 'application', 1526910625, 'Página "Noticia de Prueba 1" en ruta "/!trash/noticia-de-prueba-1-1" eliminado', 1, 100),
(40, 'application', 1526910627, 'Página "Marco Legal" en ruta "/!trash/marco-legal" eliminado', 1, 100),
(41, 'application', 1526910627, 'Página "Resoluciones" en ruta "/!trash/resoluciones" eliminado', 1, 100),
(42, 'application', 1526910627, 'Página "" en ruta "/!trash/156" eliminado', 1, 100),
(43, 'application', 1526910628, 'Página "" en ruta "/!trash/155" eliminado', 1, 100),
(44, 'application', 1526910628, 'Página "Misión, Visión y Ejes Estrategicos" en ruta "/!trash/mision-vision-y-ejes-estrategicos" eliminado', 1, 100),
(45, 'application', 1526910629, 'Página "Institución" en ruta "/!trash/institucion" eliminado', 1, 100),
(46, 'application', 1526910629, 'Página "Noticia de Prueba 2" en ruta "/!trash/noticia-de-prueba-2" eliminado', 1, 100),
(47, 'application', 1526910631, 'Página "Noticia de Prueba 1" en ruta "/!trash/noticia-de-prueba-1" eliminado', 1, 100),
(48, 'application', 1526910633, 'Página "Resoluciones" en ruta "/!trash/resoluciones-1" eliminado', 1, 100),
(49, 'application', 1526910634, 'Página "Noticias" en ruta "/!trash/noticias" eliminado', 1, 100),
(50, 'application', 1526911857, 'Página "noticia 6" en ruta "/noticias/noticia-6" movido a la papelera', 1, 100),
(51, 'exceptions', 1535396571, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT date_format(cv.cvDatePublic, "%Y") as navYear, date_format(cv.cvDatePublic, "%m") as navMonth FROM Pages p LEFT JOIN PagePaths pp ON (p.cID = pp.cID and pp.ppIsCanonical = true) LEFT JOIN PageSearchIndex psi ON p.cID = psi.cID LEFT JOIN PageTypes pt ON p.ptID = pt.ptID INNER JOIN Collections c ON p.cID = c.cID INNER JOIN CollectionVersions cv ON p.cID = cv.cID LEFT JOIN CollectionSearchIndexAttributes csi ON c.cID = csi.cID WHERE (pt.ptID = ?) AND (p.cPointerID < 1) AND (p.cIsTemplate = 0) AND (cvIsApproved = 1) AND (p.cIsActive = ?) AND (p.cIsSystemPage = ?) GROUP BY navYear, navMonth ORDER BY cvDatePublic desc\' with params ["7", true, false]:\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column \'template_db.cv.cvDatePublic\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(52, 'exceptions', 1535396578, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT date_format(cv.cvDatePublic, "%Y") as navYear, date_format(cv.cvDatePublic, "%m") as navMonth FROM Pages p LEFT JOIN PagePaths pp ON (p.cID = pp.cID and pp.ppIsCanonical = true) LEFT JOIN PageSearchIndex psi ON p.cID = psi.cID LEFT JOIN PageTypes pt ON p.ptID = pt.ptID INNER JOIN Collections c ON p.cID = c.cID INNER JOIN CollectionVersions cv ON p.cID = cv.cID LEFT JOIN CollectionSearchIndexAttributes csi ON c.cID = csi.cID WHERE (pt.ptID = ?) AND (p.cPointerID < 1) AND (p.cIsTemplate = 0) AND (cvIsApproved = 1) AND (p.cIsActive = ?) AND (p.cIsSystemPage = ?) GROUP BY navYear, navMonth ORDER BY cvDatePublic desc\' with params ["7", true, false]:\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column \'template_db.cv.cvDatePublic\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(53, 'exceptions', 1535396581, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT date_format(cv.cvDatePublic, "%Y") as navYear, date_format(cv.cvDatePublic, "%m") as navMonth FROM Pages p LEFT JOIN PagePaths pp ON (p.cID = pp.cID and pp.ppIsCanonical = true) LEFT JOIN PageSearchIndex psi ON p.cID = psi.cID LEFT JOIN PageTypes pt ON p.ptID = pt.ptID INNER JOIN Collections c ON p.cID = c.cID INNER JOIN CollectionVersions cv ON p.cID = cv.cID LEFT JOIN CollectionSearchIndexAttributes csi ON c.cID = csi.cID WHERE (pt.ptID = ?) AND (p.cPointerID < 1) AND (p.cIsTemplate = 0) AND (cvIsApproved = 1) AND (p.cIsActive = ?) AND (p.cIsSystemPage = ?) GROUP BY navYear, navMonth ORDER BY cvDatePublic desc\' with params ["7", true, false]:\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column \'template_db.cv.cvDatePublic\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(54, 'exceptions', 1535396593, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT date_format(cv.cvDatePublic, "%Y") as navYear, date_format(cv.cvDatePublic, "%m") as navMonth FROM Pages p LEFT JOIN PagePaths pp ON (p.cID = pp.cID and pp.ppIsCanonical = true) LEFT JOIN PageSearchIndex psi ON p.cID = psi.cID LEFT JOIN PageTypes pt ON p.ptID = pt.ptID INNER JOIN Collections c ON p.cID = c.cID INNER JOIN CollectionVersions cv ON p.cID = cv.cID LEFT JOIN CollectionSearchIndexAttributes csi ON c.cID = csi.cID WHERE (pt.ptID = ?) AND (p.cPointerID < 1) AND (p.cIsTemplate = 0) AND (cvIsApproved = 1) AND (p.cIsActive = ?) AND (p.cIsSystemPage = ?) GROUP BY navYear, navMonth ORDER BY cvDatePublic desc\' with params ["7", true, false]:\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column \'template_db.cv.cvDatePublic\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(55, 'application', 1535396631, 'Página "Galería" en ruta "/galeria" movido a la papelera', 1, 100),
(56, 'application', 1535455996, 'Página "Galería" en ruta "/!trash/galeria" eliminado', 1, 100),
(57, 'application', 1535455996, 'Página "noticia 6" en ruta "/!trash/noticia-6" eliminado', 1, 100),
(58, 'exceptions', 1535456098, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT date_format(cv.cvDatePublic, "%Y") as navYear, date_format(cv.cvDatePublic, "%m") as navMonth FROM Pages p LEFT JOIN PagePaths pp ON (p.cID = pp.cID and pp.ppIsCanonical = true) LEFT JOIN PageSearchIndex psi ON p.cID = psi.cID LEFT JOIN PageTypes pt ON p.ptID = pt.ptID INNER JOIN Collections c ON p.cID = c.cID INNER JOIN CollectionVersions cv ON p.cID = cv.cID LEFT JOIN CollectionSearchIndexAttributes csi ON c.cID = csi.cID WHERE (pt.ptID = ?) AND (p.cPointerID < 1) AND (p.cIsTemplate = 0) AND (cvIsApproved = 1) AND (p.cIsActive = ?) AND (p.cIsSystemPage = ?) GROUP BY navYear, navMonth ORDER BY cvDatePublic desc\' with params ["7", true, false]:\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column \'template_db.cv.cvDatePublic\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(59, 'application', 1535456183, 'Página "Noticias" en ruta "/noticias" movido a la papelera', 1, 100),
(60, 'exceptions', 1535456224, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT date_format(cv.cvDatePublic, "%Y") as navYear, date_format(cv.cvDatePublic, "%m") as navMonth FROM Pages p LEFT JOIN PagePaths pp ON (p.cID = pp.cID and pp.ppIsCanonical = true) LEFT JOIN PageSearchIndex psi ON p.cID = psi.cID LEFT JOIN PageTypes pt ON p.ptID = pt.ptID INNER JOIN Collections c ON p.cID = c.cID INNER JOIN CollectionVersions cv ON p.cID = cv.cID LEFT JOIN CollectionSearchIndexAttributes csi ON c.cID = csi.cID WHERE (pt.ptID = ?) AND (p.cPointerID < 1) AND (p.cIsTemplate = 0) AND (cvIsApproved = 1) AND (p.cIsActive = ?) AND (p.cIsSystemPage = ?) GROUP BY navYear, navMonth ORDER BY cvDatePublic desc\' with params ["7", true, false]:\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column \'template_db.cv.cvDatePublic\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(61, 'application', 1535456245, 'Página "Noticia de prueba 1" en ruta "/noticias-1/noticia-de-prueba-1" movido a la papelera', 1, 100),
(62, 'application', 1535456250, 'Página "Noticia de prueba 2" en ruta "/noticias-1/noticia-de-prueba-2" movido a la papelera', 1, 100),
(63, 'application', 1535456254, 'Página "Noticia de prueba 3" en ruta "/noticias-1/noticia-de-prueba-3" movido a la papelera', 1, 100),
(64, 'application', 1535456258, 'Página "Noticia de prueba 4" en ruta "/noticias-1/noticia-de-prueba-4" movido a la papelera', 1, 100),
(65, 'application', 1535456261, 'Página "Noticia de prueba 5" en ruta "/noticias-1/noticia-de-prueba-5" movido a la papelera', 1, 100),
(66, 'exceptions', 1535456443, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT date_format(cv.cvDatePublic, "%Y") as navYear, date_format(cv.cvDatePublic, "%m") as navMonth FROM Pages p LEFT JOIN PagePaths pp ON (p.cID = pp.cID and pp.ppIsCanonical = true) LEFT JOIN PageSearchIndex psi ON p.cID = psi.cID LEFT JOIN PageTypes pt ON p.ptID = pt.ptID INNER JOIN Collections c ON p.cID = c.cID INNER JOIN CollectionVersions cv ON p.cID = cv.cID LEFT JOIN CollectionSearchIndexAttributes csi ON c.cID = csi.cID WHERE (pt.ptID = ?) AND (p.cPointerID < 1) AND (p.cIsTemplate = 0) AND (cvIsApproved = 1) AND (p.cIsActive = ?) AND (p.cIsSystemPage = ?) GROUP BY navYear, navMonth ORDER BY cvDatePublic desc\' with params ["7", true, false]:\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column \'template_db.cv.cvDatePublic\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(67, 'application', 1535456480, 'Página "Noticias" en ruta "/noticias" movido a la papelera', 1, 100),
(68, 'exceptions', 1535456799, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT date_format(cv.cvDatePublic, "%Y") as navYear, date_format(cv.cvDatePublic, "%m") as navMonth FROM Pages p LEFT JOIN PagePaths pp ON (p.cID = pp.cID and pp.ppIsCanonical = true) LEFT JOIN PageSearchIndex psi ON p.cID = psi.cID LEFT JOIN PageTypes pt ON p.ptID = pt.ptID INNER JOIN Collections c ON p.cID = c.cID INNER JOIN CollectionVersions cv ON p.cID = cv.cID LEFT JOIN CollectionSearchIndexAttributes csi ON c.cID = csi.cID WHERE (pt.ptID = ?) AND (p.cPointerID < 1) AND (p.cIsTemplate = 0) AND (cvIsApproved = 1) AND (p.cIsActive = ?) AND (p.cIsSystemPage = ?) GROUP BY navYear, navMonth ORDER BY cvDatePublic desc\' with params ["7", true, false]:\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column \'template_db.cv.cvDatePublic\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(69, 'exceptions', 1535456846, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT date_format(cv.cvDatePublic, "%Y") as navYear, date_format(cv.cvDatePublic, "%m") as navMonth FROM Pages p LEFT JOIN PagePaths pp ON (p.cID = pp.cID and pp.ppIsCanonical = true) LEFT JOIN PageSearchIndex psi ON p.cID = psi.cID LEFT JOIN PageTypes pt ON p.ptID = pt.ptID INNER JOIN Collections c ON p.cID = c.cID INNER JOIN CollectionVersions cv ON p.cID = cv.cID LEFT JOIN CollectionSearchIndexAttributes csi ON c.cID = csi.cID WHERE (pt.ptID = ?) AND (p.cPointerID < 1) AND (p.cIsTemplate = 0) AND (cvIsApproved = 1) AND (p.cIsActive = ?) AND (p.cIsSystemPage = ?) GROUP BY navYear, navMonth ORDER BY cvDatePublic desc\' with params ["7", true, false]:\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column \'template_db.cv.cvDatePublic\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(70, 'exceptions', 1535459175, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT OD.opendataID, OD.title as title_opendata, OD.organization, OD.url as url_opendata, OD.email_organization,  ODD.datasetsID, ODD.title as title_datasets, ODD.description as description_datasets, ODD.url_download_page, ODD.author, ODD.email_author, ODD.tags, ODD.version,   ODR.resourceID, ODR.resource_title, ODR.description as description_resource,  ODL.licenseID, ODL.code_license, ODL.license_name, count(ODR.resourceID) as total_resource  FROM dsOpenData as OD   LEFT JOIN dsOpenDataDataset AS ODD ON OD.opendataID = ODD.opendataID  LEFT JOIN dsOpenDataResource AS ODR ON ODD.datasetsID = ODR.datasetsID  LEFT JOIN dsOpenDataLicense as ODL ON ODD.licenseID = ODL.licenseID   WHERE ODD.opendataID =1 group by ODD.datasetsID ORDER BY ODD.title\':\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #14 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'template_db.ODR.resourceID\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(71, 'exceptions', 1535459893, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT OD.opendataID, OD.title as title_opendata, OD.organization, OD.url as url_opendata, OD.email_organization,  ODD.datasetsID, ODD.title as title_datasets, ODD.description as description_datasets, ODD.url_download_page, ODD.author, ODD.email_author, ODD.tags, ODD.version,   ODR.resourceID, ODR.resource_title, ODR.description as description_resource,  ODL.licenseID, ODL.code_license, ODL.license_name, count(ODR.resourceID) as total_resource  FROM dsOpenData as OD   LEFT JOIN dsOpenDataDataset AS ODD ON OD.opendataID = ODD.opendataID  LEFT JOIN dsOpenDataResource AS ODR ON ODD.datasetsID = ODR.datasetsID  LEFT JOIN dsOpenDataLicense as ODL ON ODD.licenseID = ODL.licenseID   WHERE ODD.opendataID =1 group by ODD.datasetsID ORDER BY ODD.title\':\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #14 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'template_db.ODR.resourceID\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(72, 'application', 1535459909, 'Página "Transparencia" en ruta "/transparencia" movido a la papelera', 1, 100),
(73, 'exceptions', 1535459916, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT OD.opendataID, OD.title as title_opendata, OD.organization, OD.url as url_opendata, OD.email_organization,  ODD.datasetsID, ODD.title as title_datasets, ODD.description as description_datasets, ODD.url_download_page, ODD.author, ODD.email_author, ODD.tags, ODD.version,   ODR.resourceID, ODR.resource_title, ODR.description as description_resource,  ODL.licenseID, ODL.code_license, ODL.license_name, count(ODR.resourceID) as total_resource  FROM dsOpenData as OD   LEFT JOIN dsOpenDataDataset AS ODD ON OD.opendataID = ODD.opendataID  LEFT JOIN dsOpenDataResource AS ODR ON ODD.datasetsID = ODR.datasetsID  LEFT JOIN dsOpenDataLicense as ODL ON ODD.licenseID = ODL.licenseID   WHERE ODD.opendataID =1 group by ODD.datasetsID ORDER BY ODD.title\':\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #14 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'template_db.ODR.resourceID\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(74, 'exceptions', 1535459966, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT OD.opendataID, OD.title as title_opendata, OD.organization, OD.url as url_opendata, OD.email_organization,  ODD.datasetsID, ODD.title as title_datasets, ODD.description as description_datasets, ODD.url_download_page, ODD.author, ODD.email_author, ODD.tags, ODD.version,   ODR.resourceID, ODR.resource_title, ODR.description as description_resource,  ODL.licenseID, ODL.code_license, ODL.license_name, count(ODR.resourceID) as total_resource  FROM dsOpenData as OD   LEFT JOIN dsOpenDataDataset AS ODD ON OD.opendataID = ODD.opendataID  LEFT JOIN dsOpenDataResource AS ODR ON ODD.datasetsID = ODR.datasetsID  LEFT JOIN dsOpenDataLicense as ODL ON ODD.licenseID = ODL.licenseID   WHERE ODD.opendataID =1 group by ODD.datasetsID ORDER BY ODD.title\':\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #14 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'template_db.ODR.resourceID\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(75, 'application', 1535459982, 'Página "Transparencia" en ruta "/transparencia" movido a la papelera', 1, 100),
(76, 'application', 1535460035, 'Página "Noticias" en ruta "/!trash/noticias-1" eliminado', 1, 100),
(77, 'application', 1535460035, 'Página "Transparencia" en ruta "/!trash/transparencia" eliminado', 1, 100),
(78, 'application', 1535460035, 'Página "Transparencia" en ruta "/!trash/transparencia-1" eliminado', 1, 100),
(79, 'application', 1535460036, 'Página "Noticia de prueba 5" en ruta "/!trash/noticia-de-prueba-5" eliminado', 1, 100),
(80, 'application', 1535460036, 'Página "Noticia de prueba 4" en ruta "/!trash/noticia-de-prueba-4" eliminado', 1, 100),
(81, 'application', 1535460036, 'Página "Noticia de prueba 1" en ruta "/!trash/noticia-de-prueba-1" eliminado', 1, 100),
(82, 'application', 1535460037, 'Página "Noticia de prueba 2" en ruta "/!trash/noticia-de-prueba-2" eliminado', 1, 100),
(83, 'application', 1535460037, 'Página "Noticia de prueba 3" en ruta "/!trash/noticia-de-prueba-3" eliminado', 1, 100),
(84, 'application', 1535460037, 'Página "Noticias" en ruta "/!trash/noticias" eliminado', 1, 100),
(85, 'exceptions', 1535460085, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT OD.opendataID, OD.title as title_opendata, OD.organization, OD.url as url_opendata, OD.email_organization,  ODD.datasetsID, ODD.title as title_datasets, ODD.description as description_datasets, ODD.url_download_page, ODD.author, ODD.email_author, ODD.tags, ODD.version,   ODR.resourceID, ODR.resource_title, ODR.description as description_resource,  ODL.licenseID, ODL.code_license, ODL.license_name, count(ODR.resourceID) as total_resource  FROM dsOpenData as OD   LEFT JOIN dsOpenDataDataset AS ODD ON OD.opendataID = ODD.opendataID  LEFT JOIN dsOpenDataResource AS ODR ON ODD.datasetsID = ODR.datasetsID  LEFT JOIN dsOpenDataLicense as ODL ON ODD.licenseID = ODL.licenseID   WHERE ODD.opendataID =2 group by ODD.datasetsID ORDER BY ODD.title\':\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #14 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'template_db.ODR.resourceID\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(86, 'application', 1535460132, 'Página "Open Data" en ruta "/dashboard/open_data" eliminado', 1, 100),
(87, 'application', 1535460133, 'Página "Listar Catálogos" en ruta "/dashboard/open_data/list_catalog" eliminado', 1, 100),
(88, 'application', 1535460133, 'Página "Agregar/Editar Catálogo" en ruta "/dashboard/open_data/catalog" eliminado', 1, 100),
(89, 'application', 1535460133, 'Página "Listar Conjuntos de Datos" en ruta "/dashboard/open_data/list_datasets" eliminado', 1, 100),
(90, 'application', 1535460133, 'Página "Agregar/Editar Conjunto de Datos" en ruta "/dashboard/open_data/datasets" eliminado', 1, 100),
(91, 'application', 1535460133, 'Página "Tipo de Archivos" en ruta "/dashboard/open_data/types" eliminado', 1, 100),
(92, 'application', 1535460133, 'Página "Agregar/Editar Recursos" en ruta "/dashboard/open_data/resource" eliminado', 1, 100),
(93, 'application', 1535460133, 'Página "Agregar/Editar Archivos" en ruta "/dashboard/open_data/files" eliminado', 1, 100),
(94, 'application', 1535460133, 'Página "Listar Recursos" en ruta "/dashboard/open_data/list_resource" eliminado', 1, 100),
(95, 'application', 1535460133, 'Página "Agregar Diccionario" en ruta "/dashboard/open_data/dictionary" eliminado', 1, 100),
(96, 'application', 1535460133, 'Página "Listar Diccionario" en ruta "/dashboard/open_data/list_dictionary" eliminado', 1, 100),
(97, 'application', 1535460133, 'Página "Listar Catálogos" en ruta "/dashboard/open_data/list_catalog" eliminado', 1, 100),
(98, 'application', 1535460133, 'Página "Agregar/Editar Catálogo" en ruta "/dashboard/open_data/catalog" eliminado', 1, 100),
(99, 'application', 1535460133, 'Página "Listar Conjuntos de Datos" en ruta "/dashboard/open_data/list_datasets" eliminado', 1, 100),
(100, 'application', 1535460133, 'Página "Agregar/Editar Conjunto de Datos" en ruta "/dashboard/open_data/datasets" eliminado', 1, 100),
(101, 'application', 1535460133, 'Página "Tipo de Archivos" en ruta "/dashboard/open_data/types" eliminado', 1, 100),
(102, 'application', 1535460133, 'Página "Agregar/Editar Recursos" en ruta "/dashboard/open_data/resource" eliminado', 1, 100),
(103, 'application', 1535460133, 'Página "Agregar/Editar Archivos" en ruta "/dashboard/open_data/files" eliminado', 1, 100),
(104, 'application', 1535460133, 'Página "Listar Recursos" en ruta "/dashboard/open_data/list_resource" eliminado', 1, 100),
(105, 'application', 1535460133, 'Página "Agregar Diccionario" en ruta "/dashboard/open_data/dictionary" eliminado', 1, 100),
(106, 'application', 1535460133, 'Página "Listar Diccionario" en ruta "/dashboard/open_data/list_dictionary" eliminado', 1, 100),
(107, 'application', 1535460157, 'Página "Transparencia" en ruta "/transparencia" movido a la papelera', 1, 100),
(108, 'exceptions', 1535460195, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\packages\\dsOpenData\\blocks\\open_data\\view.php:70 Invalid argument supplied for foreach() (2)\n', 1, 600),
(109, 'application', 1535460210, 'Página "Transparencia" en ruta "/transparencia" movido a la papelera', 1, 100),
(110, 'exceptions', 1535460277, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:115 An exception occurred while executing \'SELECT OD.opendataID, OD.title as title_opendata, OD.organization, OD.url as url_opendata, OD.email_organization,  ODD.datasetsID, ODD.title as title_datasets, ODD.description as description_datasets, ODD.url_download_page, ODD.author, ODD.email_author, ODD.tags, ODD.version,   ODR.resourceID, ODR.resource_title, ODR.description as description_resource,  ODL.licenseID, ODL.code_license, ODL.license_name, count(ODR.resourceID) as total_resource  FROM dsOpenData as OD   LEFT JOIN dsOpenDataDataset AS ODD ON OD.opendataID = ODD.opendataID  LEFT JOIN dsOpenDataResource AS ODR ON ODD.datasetsID = ODR.datasetsID  LEFT JOIN dsOpenDataLicense as ODL ON ODD.licenseID = ODL.licenseID   WHERE ODD.opendataID =2 group by ODD.datasetsID ORDER BY ODD.title\':\n\nSQLSTATE[42000]: Syntax error or access violation: 1055 Expression #14 of SELECT list is not in GROUP BY clause and contains nonaggregated column \'template_db.ODR.resourceID\' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by (0)\n', 1, 600),
(111, 'application', 1535460297, 'Página "Open Data" en ruta "/dashboard/open_data" eliminado', 1, 100),
(112, 'application', 1535460297, 'Página "Listar Catálogos" en ruta "/dashboard/open_data/list_catalog" eliminado', 1, 100),
(113, 'application', 1535460298, 'Página "Agregar/Editar Catálogo" en ruta "/dashboard/open_data/catalog" eliminado', 1, 100),
(114, 'application', 1535460298, 'Página "Listar Conjuntos de Datos" en ruta "/dashboard/open_data/list_datasets" eliminado', 1, 100),
(115, 'application', 1535460298, 'Página "Agregar/Editar Conjunto de Datos" en ruta "/dashboard/open_data/datasets" eliminado', 1, 100),
(116, 'application', 1535460298, 'Página "Tipo de Archivos" en ruta "/dashboard/open_data/types" eliminado', 1, 100),
(117, 'application', 1535460298, 'Página "Agregar/Editar Recursos" en ruta "/dashboard/open_data/resource" eliminado', 1, 100),
(118, 'application', 1535460298, 'Página "Agregar/Editar Archivos" en ruta "/dashboard/open_data/files" eliminado', 1, 100),
(119, 'application', 1535460298, 'Página "Listar Recursos" en ruta "/dashboard/open_data/list_resource" eliminado', 1, 100),
(120, 'application', 1535460298, 'Página "Agregar Diccionario" en ruta "/dashboard/open_data/dictionary" eliminado', 1, 100),
(121, 'application', 1535460298, 'Página "Listar Diccionario" en ruta "/dashboard/open_data/list_dictionary" eliminado', 1, 100),
(122, 'application', 1535460298, 'Página "Listar Catálogos" en ruta "/dashboard/open_data/list_catalog" eliminado', 1, 100),
(123, 'application', 1535460298, 'Página "Agregar/Editar Catálogo" en ruta "/dashboard/open_data/catalog" eliminado', 1, 100),
(124, 'application', 1535460298, 'Página "Listar Conjuntos de Datos" en ruta "/dashboard/open_data/list_datasets" eliminado', 1, 100),
(125, 'application', 1535460298, 'Página "Agregar/Editar Conjunto de Datos" en ruta "/dashboard/open_data/datasets" eliminado', 1, 100),
(126, 'application', 1535460298, 'Página "Tipo de Archivos" en ruta "/dashboard/open_data/types" eliminado', 1, 100),
(127, 'application', 1535460298, 'Página "Agregar/Editar Recursos" en ruta "/dashboard/open_data/resource" eliminado', 1, 100),
(128, 'application', 1535460298, 'Página "Agregar/Editar Archivos" en ruta "/dashboard/open_data/files" eliminado', 1, 100),
(129, 'application', 1535460298, 'Página "Listar Recursos" en ruta "/dashboard/open_data/list_resource" eliminado', 1, 100),
(130, 'application', 1535460298, 'Página "Agregar Diccionario" en ruta "/dashboard/open_data/dictionary" eliminado', 1, 100),
(131, 'application', 1535460298, 'Página "Listar Diccionario" en ruta "/dashboard/open_data/list_dictionary" eliminado', 1, 100),
(132, 'application', 1535460309, 'Página "Transparencia" en ruta "/transparencia" movido a la papelera', 1, 100),
(133, 'application', 1535460329, 'Página "Transparencia" en ruta "/!trash/transparencia-2" eliminado', 1, 100),
(134, 'application', 1535460329, 'Página "Transparencia" en ruta "/!trash/transparencia-1" eliminado', 1, 100),
(135, 'application', 1535460330, 'Página "Transparencia" en ruta "/!trash/transparencia" eliminado', 1, 100),
(136, 'application', 1535460342, 'Página "Compras Públicas" en ruta "/compras-publicas" movido a la papelera', 1, 100),
(137, 'application', 1535460358, 'Página "Compras Públicas" en ruta "/!trash/compras-publicas" eliminado', 1, 100),
(138, 'exceptions', 1535567058, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\application\\blocks\\boton\\controller.php:161 Declaration of Application\\Block\\Boton\\Controller::registerViewAssets() should be compatible with Concrete\\Core\\Block\\BlockController::registerViewAssets($outputContent = \'\') (2)\n', 1, 600),
(139, 'exceptions', 1535567065, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\application\\blocks\\boton\\controller.php:161 Declaration of Application\\Block\\Boton\\Controller::registerViewAssets() should be compatible with Concrete\\Core\\Block\\BlockController::registerViewAssets($outputContent = \'\') (2)\n', 1, 600),
(140, 'exceptions', 1535567069, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\application\\blocks\\boton\\controller.php:161 Declaration of Application\\Block\\Boton\\Controller::registerViewAssets() should be compatible with Concrete\\Core\\Block\\BlockController::registerViewAssets($outputContent = \'\') (2)\n', 1, 600),
(141, 'exceptions', 1535567089, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\application\\blocks\\boton\\controller.php:161 Declaration of Application\\Block\\Boton\\Controller::registerViewAssets() should be compatible with Concrete\\Core\\Block\\BlockController::registerViewAssets($outputContent = \'\') (2)\n', 1, 600),
(142, 'exceptions', 1535567195, 'Exception Occurred: C:\\wamp64\\www\\template-concrete5\\application\\blocks\\boton\\controller.php:161 Declaration of Application\\Block\\Boton\\Controller::registerViewAssets() should be compatible with Concrete\\Core\\Block\\BlockController::registerViewAssets($outputContent = \'\') (2)\n', 1, 600);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MailImporters`
--

CREATE TABLE `MailImporters` (
  `miID` int(10) UNSIGNED NOT NULL,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `MailImporters`
--

INSERT INTO `MailImporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MailValidationHashes`
--

CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) UNSIGNED NOT NULL,
  `miID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MultilingualPageRelations`
--

CREATE TABLE `MultilingualPageRelations` (
  `mpRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MultilingualSections`
--

CREATE TABLE `MultilingualSections` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msNumPlurals` int(11) NOT NULL DEFAULT '2',
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(n != 1)',
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MultilingualTranslations`
--

CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) UNSIGNED NOT NULL,
  `mtSectionID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `OauthUserMap`
--

CREATE TABLE `OauthUserMap` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Packages`
--

CREATE TABLE `Packages` (
  `pkgID` int(10) UNSIGNED NOT NULL,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Packages`
--

INSERT INTO `Packages` (`pkgID`, `pkgName`, `pkgHandle`, `pkgDescription`, `pkgDateInstalled`, `pkgIsInstalled`, `pkgVersion`, `pkgAvailableVersion`) VALUES
(1, 'SVG Social Media Icons', 'svg_social_media_icons', 'Add SVG social media icons with PNG fallback on your pages.', '2018-05-16 14:13:59', 1, '0.9.9', '0.9.9'),
(3, 'Event Calendar', 'dsEventCalendar', 'Event Calendar - you can add, edit and remove one day events on your page', '2018-05-18 11:59:53', 1, '3.3.5', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageFeeds`
--

CREATE TABLE `PageFeeds` (
  `pfID` int(10) UNSIGNED NOT NULL,
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) UNSIGNED DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0',
  `iconFID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageFeeds`
--

INSERT INTO `PageFeeds` (`pfID`, `cParentID`, `pfTitle`, `pfHandle`, `pfDescription`, `pfIncludeAllDescendents`, `pfContentToDisplay`, `pfAreaHandleToDisplay`, `customTopicAttributeKeyHandle`, `customTopicTreeNodeID`, `pfDisplayAliases`, `ptID`, `pfDisplayFeaturedOnly`, `iconFID`) VALUES
(1, 0, 'RSS Noticias', 'noticias', 'RSS de Noticias del Sitio Web', 1, 'S', NULL, NULL, 0, 0, 7, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PagePaths`
--

CREATE TABLE `PagePaths` (
  `ppID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PagePaths`
--

INSERT INTO `PagePaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`, `ppGeneratedFromURLSlugs`) VALUES
(1, 2, '/dashboard', '1', 1),
(2, 3, '/dashboard/sitemap', '1', 1),
(3, 4, '/dashboard/sitemap/full', '1', 1),
(4, 5, '/dashboard/sitemap/explore', '1', 1),
(5, 6, '/dashboard/sitemap/search', '1', 1),
(6, 7, '/dashboard/files', '1', 1),
(7, 8, '/dashboard/files/search', '1', 1),
(8, 9, '/dashboard/files/attributes', '1', 1),
(9, 10, '/dashboard/files/sets', '1', 1),
(10, 11, '/dashboard/files/add_set', '1', 1),
(11, 12, '/dashboard/users', '1', 1),
(12, 13, '/dashboard/users/search', '1', 1),
(13, 14, '/dashboard/users/groups', '1', 1),
(14, 15, '/dashboard/users/attributes', '1', 1),
(15, 16, '/dashboard/users/add', '1', 1),
(16, 17, '/dashboard/users/add_group', '1', 1),
(17, 18, '/dashboard/users/groups/bulkupdate', '1', 1),
(18, 19, '/dashboard/users/group_sets', '1', 1),
(19, 20, '/dashboard/users/points', '1', 1),
(20, 21, '/dashboard/users/points/assign', '1', 1),
(21, 22, '/dashboard/users/points/actions', '1', 1),
(22, 23, '/dashboard/reports', '1', 1),
(23, 24, '/dashboard/reports/forms', '1', 1),
(24, 25, '/dashboard/reports/surveys', '1', 1),
(25, 26, '/dashboard/reports/logs', '1', 1),
(26, 27, '/dashboard/pages', '1', 1),
(27, 28, '/dashboard/pages/themes', '1', 1),
(28, 29, '/dashboard/pages/themes/inspect', '1', 1),
(29, 30, '/dashboard/pages/types', '1', 1),
(30, 31, '/dashboard/pages/types/organize', '1', 1),
(31, 32, '/dashboard/pages/types/add', '1', 1),
(32, 33, '/dashboard/pages/types/form', '1', 1),
(33, 34, '/dashboard/pages/types/output', '1', 1),
(34, 35, '/dashboard/pages/types/attributes', '1', 1),
(35, 36, '/dashboard/pages/types/permissions', '1', 1),
(36, 37, '/dashboard/pages/templates', '1', 1),
(37, 38, '/dashboard/pages/templates/add', '1', 1),
(38, 39, '/dashboard/pages/attributes', '1', 1),
(39, 40, '/dashboard/pages/single', '1', 1),
(40, 41, '/dashboard/pages/feeds', '1', 1),
(41, 42, '/dashboard/conversations', '1', 1),
(42, 43, '/dashboard/conversations/messages', '1', 1),
(43, 44, '/dashboard/workflow', '1', 1),
(44, 45, '/dashboard/workflow/me', '1', 1),
(45, 46, '/dashboard/workflow/workflows', '1', 1),
(46, 47, '/dashboard/blocks', '1', 1),
(47, 48, '/dashboard/blocks/stacks', '1', 1),
(48, 49, '/dashboard/blocks/permissions', '1', 1),
(49, 50, '/dashboard/blocks/stacks/list', '1', 1),
(50, 51, '/dashboard/blocks/types', '1', 1),
(51, 52, '/dashboard/extend', '1', 1),
(52, 53, '/dashboard/news', '1', 1),
(53, 54, '/dashboard/extend/install', '1', 1),
(54, 55, '/dashboard/extend/update', '1', 1),
(55, 56, '/dashboard/extend/connect', '1', 1),
(56, 57, '/dashboard/extend/themes', '1', 1),
(57, 58, '/dashboard/extend/addons', '1', 1),
(58, 59, '/dashboard/system', '1', 1),
(59, 60, '/dashboard/system/basics', '1', 1),
(60, 61, '/dashboard/system/basics/name', '1', 1),
(61, 62, '/dashboard/system/basics/accessibility', '1', 1),
(62, 63, '/dashboard/system/basics/social', '1', 1),
(63, 64, '/dashboard/system/basics/icons', '1', 1),
(64, 65, '/dashboard/system/basics/editor', '1', 1),
(65, 66, '/dashboard/system/basics/multilingual', '1', 1),
(66, 67, '/dashboard/system/basics/timezone', '1', 1),
(67, 68, '/dashboard/system/multilingual', '1', 1),
(68, 69, '/dashboard/system/multilingual/setup', '1', 1),
(69, 70, '/dashboard/system/multilingual/copy', '1', 1),
(70, 71, '/dashboard/system/multilingual/page_report', '1', 1),
(71, 72, '/dashboard/system/multilingual/translate_interface', '1', 1),
(72, 73, '/dashboard/system/seo', '1', 1),
(73, 74, '/dashboard/system/seo/urls', '1', 1),
(74, 75, '/dashboard/system/seo/bulk', '1', 1),
(75, 76, '/dashboard/system/seo/codes', '1', 1),
(76, 77, '/dashboard/system/seo/excluded', '1', 1),
(77, 78, '/dashboard/system/seo/searchindex', '1', 1),
(78, 79, '/dashboard/system/files', '1', 1),
(79, 80, '/dashboard/system/files/permissions', '1', 1),
(80, 81, '/dashboard/system/files/filetypes', '1', 1),
(81, 82, '/dashboard/system/files/thumbnails', '1', 1),
(82, 83, '/dashboard/system/files/image_uploading', '1', 1),
(83, 84, '/dashboard/system/files/storage', '1', 1),
(84, 85, '/dashboard/system/optimization', '1', 1),
(85, 86, '/dashboard/system/optimization/cache', '1', 1),
(86, 87, '/dashboard/system/optimization/clearcache', '1', 1),
(87, 88, '/dashboard/system/optimization/jobs', '1', 1),
(88, 89, '/dashboard/system/optimization/query_log', '1', 1),
(89, 90, '/dashboard/system/permissions', '1', 1),
(90, 91, '/dashboard/system/permissions/site', '1', 1),
(91, 92, '/dashboard/system/permissions/tasks', '1', 1),
(92, 93, '/dashboard/system/permissions/users', '1', 1),
(93, 94, '/dashboard/system/permissions/advanced', '1', 1),
(94, 95, '/dashboard/system/permissions/blacklist', '1', 1),
(95, 96, '/dashboard/system/permissions/captcha', '1', 1),
(96, 97, '/dashboard/system/permissions/antispam', '1', 1),
(97, 98, '/dashboard/system/permissions/maintenance', '1', 1),
(98, 99, '/dashboard/system/registration', '1', 1),
(99, 100, '/dashboard/system/registration/postlogin', '1', 1),
(100, 101, '/dashboard/system/registration/profiles', '1', 1),
(101, 102, '/dashboard/system/registration/open', '1', 1),
(102, 103, '/dashboard/system/registration/authentication', '1', 1),
(103, 104, '/dashboard/system/mail', '1', 1),
(104, 105, '/dashboard/system/mail/method', '1', 1),
(105, 106, '/dashboard/system/mail/method/test', '1', 1),
(106, 107, '/dashboard/system/mail/importers', '1', 1),
(107, 108, '/dashboard/system/conversations', '1', 1),
(108, 109, '/dashboard/system/conversations/settings', '1', 1),
(109, 110, '/dashboard/system/conversations/points', '1', 1),
(110, 111, '/dashboard/system/conversations/bannedwords', '1', 1),
(111, 112, '/dashboard/system/conversations/permissions', '1', 1),
(112, 113, '/dashboard/system/attributes', '1', 1),
(113, 114, '/dashboard/system/attributes/sets', '1', 1),
(114, 115, '/dashboard/system/attributes/types', '1', 1),
(115, 116, '/dashboard/system/attributes/topics', '1', 1),
(116, 117, '/dashboard/system/attributes/topics/add', '1', 1),
(117, 118, '/dashboard/system/environment', '1', 1),
(118, 119, '/dashboard/system/environment/info', '1', 1),
(119, 120, '/dashboard/system/environment/debug', '1', 1),
(120, 121, '/dashboard/system/environment/logging', '1', 1),
(121, 122, '/dashboard/system/environment/proxy', '1', 1),
(122, 123, '/dashboard/system/environment/entities', '1', 1),
(123, 124, '/dashboard/system/backup', '1', 1),
(124, 125, '/dashboard/system/backup/backup', '1', 1),
(125, 126, '/dashboard/system/backup/update', '1', 1),
(126, 127, '/dashboard/welcome', '1', 1),
(127, 128, '/dashboard/home', '1', 1),
(128, 129, '/!drafts', '1', 1),
(129, 130, '/!trash', '1', 1),
(130, 131, '/!stacks', '1', 1),
(131, 132, '/login', '1', 1),
(132, 133, '/register', '1', 1),
(133, 134, '/account', '1', 1),
(134, 135, '/account/edit_profile', '1', 1),
(135, 136, '/account/avatar', '1', 1),
(136, 137, '/account/messages', '1', 1),
(137, 138, '/account/messages/inbox', '1', 1),
(138, 139, '/members', '1', 1),
(139, 140, '/members/profile', '1', 1),
(140, 141, '/members/directory', '1', 1),
(141, 142, '/page_not_found', '1', 1),
(142, 143, '/page_forbidden', '1', 1),
(143, 144, '/download_file', '1', 1),
(144, 146, '/!stacks/header-site-title', '1', 1),
(145, 147, '/!stacks/header-navigation', '1', 1),
(146, 148, '/!stacks/footer-legal', '1', 1),
(147, 149, '/!stacks/footer-navigation', '1', 1),
(148, 150, '/!stacks/footer-contact', '1', 1),
(149, 151, '/!stacks/info-superior', '1', 1),
(150, 152, '/!stacks/search', '1', 1),
(151, 153, '/!stacks/espacio-2', '1', 1),
(152, 154, '/!stacks/espacio-3', '1', 1),
(161, 165, '/institucion', '1', 1),
(162, 166, '/institucion/mision-y-vision', '1', 1),
(163, 169, '/institucion/marco-legal', '1', 1),
(165, 171, '/institucion/resoluciones', '1', 1),
(166, 172, '/institucion/organigrama', '1', 1),
(185, 191, '/contacto', '1', 1),
(187, 193, '/mecip', '1', 1),
(188, 194, '/tramites', '1', 1),
(190, 196, '/servicios', '1', 1),
(198, 204, '/institucion/autoridades', '1', 1),
(199, 205, '/dashboard/event_calendar', '1', 1),
(200, 206, '/dashboard/event_calendar/list_calendar', '1', 1),
(201, 207, '/dashboard/event_calendar/list_event', '1', 1),
(202, 208, '/dashboard/event_calendar/calendar', '1', 1),
(203, 209, '/dashboard/event_calendar/event', '1', 1),
(204, 210, '/dashboard/event_calendar/types', '1', 1),
(205, 211, '/dashboard/event_calendar/settings', '1', 1),
(206, 212, '/agenda', '1', 1),
(207, 213, '/buscador', '1', 1),
(218, 225, '/noticias', '1', 1),
(219, 226, '/noticias/titulo-de-la-noticia-1', '1', 1),
(220, 227, '/noticias/titulo-de-la-noticia-2', '1', 1),
(221, 228, '/noticias/titulo-de-la-noticia-3', '1', 1),
(222, 229, '/noticias/titulo-de-la-noticia-4', '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PagePermissionAssignments`
--

CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PagePermissionAssignments`
--

INSERT INTO `PagePermissionAssignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 42),
(2, 1, 62),
(129, 1, 63),
(132, 1, 60),
(133, 1, 61),
(1, 2, 43),
(129, 2, 64),
(1, 3, 44),
(129, 3, 65),
(1, 4, 45),
(129, 4, 66),
(1, 5, 46),
(129, 5, 67),
(1, 6, 47),
(129, 6, 68),
(1, 7, 48),
(129, 7, 69),
(1, 8, 50),
(129, 8, 71),
(1, 9, 51),
(129, 9, 72),
(1, 10, 52),
(129, 10, 73),
(1, 11, 53),
(129, 11, 74),
(1, 12, 54),
(129, 12, 75),
(1, 13, 55),
(129, 13, 76),
(1, 14, 56),
(129, 14, 77),
(1, 15, 57),
(129, 15, 78),
(1, 16, 58),
(129, 16, 79),
(1, 17, 59),
(129, 17, 80),
(1, 18, 49),
(129, 18, 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PagePermissionPageTypeAccessList`
--

CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PagePermissionPageTypeAccessListCustom`
--

CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PagePermissionPropertyAccessList`
--

CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PagePermissionPropertyAttributeAccessListCustom`
--

CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PagePermissionThemeAccessList`
--

CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PagePermissionThemeAccessListCustom`
--

CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pages`
--

CREATE TABLE `Pages` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) UNSIGNED DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Pages`
--

INSERT INTO `Pages` (`cID`, `ptID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cDraftTargetParentPageID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 19, 0, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 14, 0, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 0, 2, 0, 0, -1, '0', 0, 1),
(4, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 3, 0, 0, -1, '0', 0, 1),
(5, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 3, 0, 0, -1, '0', 0, 1),
(6, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 3, 0, 0, -1, '0', 0, 1),
(7, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 1, 2, 0, 0, -1, '0', 0, 1),
(8, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 7, 0, 0, -1, '0', 0, 1),
(9, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 7, 0, 0, -1, '0', 0, 1),
(10, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 7, 0, 0, -1, '0', 0, 1),
(11, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 7, 0, 0, -1, '0', 0, 1),
(12, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 7, 2, 2, 0, 0, -1, '0', 0, 1),
(13, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 12, 0, 0, -1, '0', 0, 1),
(14, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 1, 1, 12, 0, 0, -1, '0', 0, 1),
(15, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 12, 0, 0, -1, '0', 0, 1),
(16, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 12, 0, 0, -1, '0', 0, 1),
(17, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 12, 0, 0, -1, '0', 0, 1),
(18, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups/bulkupdate.php', 0, NULL, 0, 1, 0, 0, 14, 0, 0, -1, '0', 0, 1),
(19, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 12, 0, 0, -1, '0', 0, 1),
(20, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/view.php', 0, NULL, 0, 1, 2, 6, 12, 0, 0, -1, '0', 0, 1),
(21, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/assign.php', 0, NULL, 0, 1, 0, 0, 20, 0, 0, -1, '0', 0, 1),
(22, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/actions.php', 0, NULL, 0, 1, 0, 1, 20, 0, 0, -1, '0', 0, 1),
(23, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 3, 3, 2, 0, 0, -1, '0', 0, 1),
(24, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 0, 0, 23, 0, 0, -1, '0', 0, 1),
(25, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 1, 23, 0, 0, -1, '0', 0, 1),
(26, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 2, 23, 0, 0, -1, '0', 0, 1),
(27, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 6, 4, 2, 0, 0, -1, '0', 0, 1),
(28, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 1, 0, 27, 0, 0, -1, '0', 0, 1),
(29, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 0, 28, 0, 0, -1, '0', 0, 1),
(30, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 6, 1, 27, 0, 0, -1, '0', 0, 1),
(31, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/organize.php', 0, NULL, 0, 1, 0, 0, 30, 0, 0, -1, '0', 0, 1),
(32, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 1, 30, 0, 0, -1, '0', 0, 1),
(33, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/form.php', 0, NULL, 0, 1, 0, 2, 30, 0, 0, -1, '0', 0, 1),
(34, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/output.php', 0, NULL, 0, 1, 0, 3, 30, 0, 0, -1, '0', 0, 1),
(35, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/attributes.php', 0, NULL, 0, 1, 0, 4, 30, 0, 0, -1, '0', 0, 1),
(36, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/permissions.php', 0, NULL, 0, 1, 0, 5, 30, 0, 0, -1, '0', 0, 1),
(37, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/view.php', 0, NULL, 0, 1, 1, 2, 27, 0, 0, -1, '0', 0, 1),
(38, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/add.php', 0, NULL, 0, 1, 0, 0, 37, 0, 0, -1, '0', 0, 1),
(39, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 3, 27, 0, 0, -1, '0', 0, 1),
(40, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 4, 27, 0, 0, -1, '0', 0, 1),
(41, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/feeds.php', 0, NULL, 0, 1, 0, 5, 27, 0, 0, -1, '0', 0, 1),
(42, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/view.php', 0, NULL, 0, 1, 1, 5, 2, 0, 0, -1, '0', 0, 1),
(43, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/messages.php', 0, NULL, 0, 1, 0, 0, 42, 0, 0, -1, '0', 0, 1),
(44, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/view.php', 0, NULL, 0, 1, 2, 6, 2, 0, 0, -1, '0', 0, 1),
(45, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/me.php', 0, NULL, 0, 1, 0, 0, 44, 0, 0, -1, '0', 0, 1),
(46, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/workflows.php', 0, NULL, 0, 1, 0, 1, 44, 0, 0, -1, '0', 0, 1),
(47, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 7, 2, 0, 0, -1, '0', 0, 1),
(48, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 47, 0, 0, -1, '0', 0, 1),
(49, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 47, 0, 0, -1, '0', 0, 1),
(50, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 48, 0, 0, -1, '0', 0, 1),
(51, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 47, 0, 0, -1, '0', 0, 1),
(52, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 8, 2, 0, 0, -1, '0', 0, 1),
(53, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/news.php', 0, NULL, 0, 1, 0, 9, 2, 0, 0, -1, '0', 0, 1),
(54, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 52, 0, 0, -1, '0', 0, 1),
(55, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 52, 0, 0, -1, '0', 0, 1),
(56, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 52, 0, 0, -1, '0', 0, 1),
(57, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 52, 0, 0, -1, '0', 0, 1),
(58, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/addons.php', 0, NULL, 0, 1, 0, 4, 52, 0, 0, -1, '0', 0, 1),
(59, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 12, 10, 2, 0, 0, -1, '0', 0, 1),
(60, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 7, 0, 59, 0, 0, -1, '0', 0, 1),
(61, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/name.php', 0, NULL, 0, 1, 0, 0, 60, 0, 0, -1, '0', 0, 1),
(62, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/accessibility.php', 0, NULL, 0, 1, 0, 1, 60, 0, 0, -1, '0', 0, 1),
(63, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/social.php', 0, NULL, 0, 1, 0, 2, 60, 0, 0, -1, '0', 0, 1),
(64, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 3, 60, 0, 0, -1, '0', 0, 1),
(65, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 4, 60, 0, 0, -1, '0', 0, 1),
(66, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 5, 60, 0, 0, -1, '0', 0, 1),
(67, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 6, 60, 0, 0, -1, '0', 0, 1),
(68, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/view.php', 0, NULL, 0, 1, 4, 1, 59, 0, 0, -1, '0', 0, 1),
(69, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/setup.php', 0, NULL, 0, 1, 0, 0, 68, 0, 0, -1, '0', 0, 1),
(70, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/copy.php', 0, NULL, 0, 1, 0, 1, 68, 0, 0, -1, '0', 0, 1),
(71, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/page_report.php', 0, NULL, 0, 1, 0, 2, 68, 0, 0, -1, '0', 0, 1),
(72, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/translate_interface.php', 0, NULL, 0, 1, 0, 3, 68, 0, 0, -1, '0', 0, 1),
(73, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 5, 2, 59, 0, 0, -1, '0', 0, 1),
(74, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 73, 0, 0, -1, '0', 0, 1),
(75, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk.php', 0, NULL, 0, 1, 0, 1, 73, 0, 0, -1, '0', 0, 1),
(76, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/codes.php', 0, NULL, 0, 1, 0, 2, 73, 0, 0, -1, '0', 0, 1),
(77, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 73, 0, 0, -1, '0', 0, 1),
(78, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/searchindex.php', 0, NULL, 0, 1, 0, 4, 73, 0, 0, -1, '0', 0, 1),
(79, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/view.php', 0, NULL, 0, 1, 5, 3, 59, 0, 0, -1, '0', 0, 1),
(80, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/permissions.php', 0, NULL, 0, 1, 0, 0, 79, 0, 0, -1, '0', 0, 1),
(81, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/filetypes.php', 0, NULL, 0, 1, 0, 1, 79, 0, 0, -1, '0', 0, 1),
(82, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/thumbnails.php', 0, NULL, 0, 1, 0, 2, 79, 0, 0, -1, '0', 0, 1),
(83, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/image_uploading.php', 0, NULL, 0, 1, 0, 3, 79, 0, 0, -1, '0', 0, 1),
(84, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/storage.php', 0, NULL, 0, 1, 0, 4, 79, 0, 0, -1, '0', 0, 1),
(85, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 4, 4, 59, 0, 0, -1, '0', 0, 1),
(86, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 85, 0, 0, -1, '0', 0, 1),
(87, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clearcache.php', 0, NULL, 0, 1, 0, 1, 85, 0, 0, -1, '0', 0, 1),
(88, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 85, 0, 0, -1, '0', 0, 1),
(89, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/query_log.php', 0, NULL, 0, 1, 0, 3, 85, 0, 0, -1, '0', 0, 1),
(90, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 8, 5, 59, 0, 0, -1, '0', 0, 1),
(91, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 90, 0, 0, -1, '0', 0, 1),
(92, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 1, 90, 0, 0, -1, '0', 0, 1),
(93, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 2, 90, 0, 0, -1, '0', 0, 1),
(94, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 3, 90, 0, 0, -1, '0', 0, 1),
(95, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/blacklist.php', 0, NULL, 0, 1, 0, 4, 90, 0, 0, -1, '0', 0, 1),
(96, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 5, 90, 0, 0, -1, '0', 0, 1),
(97, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 6, 90, 0, 0, -1, '0', 0, 1),
(98, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance.php', 0, NULL, 0, 1, 0, 7, 90, 0, 0, -1, '0', 0, 1),
(99, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 4, 6, 59, 0, 0, -1, '0', 0, 1),
(100, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 99, 0, 0, -1, '0', 0, 1),
(101, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 99, 0, 0, -1, '0', 0, 1),
(102, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/open.php', 0, NULL, 0, 1, 0, 2, 99, 0, 0, -1, '0', 0, 1),
(103, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/authentication.php', 0, NULL, 0, 1, 0, 3, 99, 0, 0, -1, '0', 0, 1),
(104, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 7, 59, 0, 0, -1, '0', 0, 1),
(105, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 104, 0, 0, -1, '0', 0, 1),
(106, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method/test.php', 0, NULL, 0, 1, 0, 0, 105, 0, 0, -1, '0', 0, 1),
(107, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 104, 0, 0, -1, '0', 0, 1),
(108, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/view.php', 0, NULL, 0, 1, 4, 8, 59, 0, 0, -1, '0', 0, 1),
(109, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/settings.php', 0, NULL, 0, 1, 0, 0, 108, 0, 0, -1, '0', 0, 1),
(110, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/points.php', 0, NULL, 0, 1, 0, 1, 108, 0, 0, -1, '0', 0, 1),
(111, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/bannedwords.php', 0, NULL, 0, 1, 0, 2, 108, 0, 0, -1, '0', 0, 1),
(112, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/permissions.php', 0, NULL, 0, 1, 0, 3, 108, 0, 0, -1, '0', 0, 1),
(113, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 3, 9, 59, 0, 0, -1, '0', 0, 1),
(114, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 113, 0, 0, -1, '0', 0, 1),
(115, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 113, 0, 0, -1, '0', 0, 1),
(116, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/view.php', 0, NULL, 0, 1, 1, 2, 113, 0, 0, -1, '0', 0, 1),
(117, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/add.php', 0, NULL, 0, 1, 0, 0, 116, 0, 0, -1, '0', 0, 1),
(118, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 5, 10, 59, 0, 0, -1, '0', 0, 1),
(119, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 118, 0, 0, -1, '0', 0, 1),
(120, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 118, 0, 0, -1, '0', 0, 1),
(121, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 118, 0, 0, -1, '0', 0, 1),
(122, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 3, 118, 0, 0, -1, '0', 0, 1),
(123, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/entities.php', 0, NULL, 0, 1, 0, 4, 118, 0, 0, -1, '0', 0, 1),
(124, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/view.php', 0, NULL, 0, 1, 2, 11, 59, 0, 0, -1, '0', 0, 1),
(125, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/backup.php', 0, NULL, 0, 1, 0, 0, 124, 0, 0, -1, '0', 0, 1),
(126, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/update.php', 0, NULL, 0, 1, 0, 1, 124, 0, 0, -1, '0', 0, 1),
(127, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, 0, -1, '0', 0, 1),
(128, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, 0, -1, '0', 0, 1),
(129, 0, 0, 1, 0, NULL, NULL, NULL, 1, 129, 'OVERRIDE', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(130, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(131, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 9, 0, 0, 0, 0, -1, '0', 0, 1),
(132, 0, 0, 1, 0, NULL, NULL, NULL, 1, 132, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(133, 0, 0, 1, 0, NULL, NULL, NULL, 1, 133, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(134, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, 0, -1, '0', 0, 1),
(135, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/edit_profile.php', 0, NULL, 0, 1, 0, 0, 134, 0, 0, -1, '0', 0, 1),
(136, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/avatar.php', 0, NULL, 0, 1, 0, 1, 134, 0, 0, -1, '0', 0, 1),
(137, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages/view.php', 0, NULL, 0, 1, 1, 2, 134, 0, 0, -1, '0', 0, 1),
(138, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages/inbox.php', 0, NULL, 0, 1, 0, 0, 137, 0, 0, -1, '0', 0, 1),
(139, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/view.php', 0, NULL, 0, 1, 2, 0, 1, 0, 0, -1, '0', 0, 1),
(140, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/profile.php', 0, NULL, 0, 1, 0, 0, 139, 0, 0, -1, '0', 0, 1),
(141, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/directory.php', 0, NULL, 0, 1, 0, 1, 139, 0, 0, -1, '0', 0, 1),
(142, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, 0, -1, '0', 0, 1),
(143, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, 0, -1, '0', 0, 1),
(144, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 2, 1, 0, 0, -1, '0', 0, 1),
(145, 6, 1, NULL, 0, NULL, NULL, NULL, 1, 145, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(146, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 131, 0, 0, -1, '0', 0, 1),
(147, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 131, 0, 0, -1, '0', 0, 1),
(148, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 131, 0, 0, -1, '0', 0, 1),
(149, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 131, 0, 0, -1, '0', 0, 1),
(150, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 131, 0, 0, -1, '0', 0, 1),
(151, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 131, 0, 0, -1, '0', 0, 1),
(152, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 131, 0, 0, -1, '0', 0, 1),
(153, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 131, 0, 0, -1, '0', 0, 1),
(154, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 8, 131, 0, 0, -1, '0', 0, 1),
(157, 6, 1, NULL, 0, NULL, NULL, NULL, 1, 157, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(160, 7, 1, NULL, 0, NULL, NULL, NULL, 1, 160, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(165, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 5, 0, 1, 0, 1, -1, '0', 0, 0),
(166, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 165, 0, 1, -1, '0', 0, 0),
(167, 6, 1, NULL, 0, NULL, NULL, NULL, 1, 167, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(168, 6, 1, NULL, 0, NULL, NULL, NULL, 1, 168, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(169, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 165, 0, 165, -1, '0', 0, 0),
(171, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 165, 0, 165, -1, '0', 0, 0),
(172, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 165, 0, 165, -1, '0', 0, 0),
(191, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 1, 0, 1, -1, '0', 0, 0),
(193, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 1, 0, 1, -1, '0', 0, 0),
(194, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 1, 0, 1, -1, '0', 0, 0),
(196, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 8, 1, 0, 1, -1, '0', 0, 0),
(204, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 165, 0, 165, -1, '0', 0, 0),
(205, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/event_calendar/view.php', 0, NULL, 0, 1, 6, 13, 2, 3, 0, -1, '0', 0, 1),
(206, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/event_calendar/list_calendar.php', 0, NULL, 0, 1, 0, 0, 205, 3, 0, -1, '0', 0, 1),
(207, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/event_calendar/list_event.php', 0, NULL, 0, 1, 0, 1, 205, 3, 0, -1, '0', 0, 1),
(208, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/event_calendar/calendar.php', 0, NULL, 0, 1, 0, 2, 205, 3, 0, -1, '0', 0, 1),
(209, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/event_calendar/event.php', 0, NULL, 0, 1, 0, 3, 205, 3, 0, -1, '0', 0, 1),
(210, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/event_calendar/types.php', 0, NULL, 0, 1, 0, 4, 205, 3, 0, -1, '0', 0, 1),
(211, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/event_calendar/settings.php', 0, NULL, 0, 1, 0, 5, 205, 3, 0, -1, '0', 0, 1),
(212, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 1, 0, 1, -1, '0', 0, 0),
(213, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 9, 1, 0, 1, -1, '0', 0, 0),
(214, 7, 1, NULL, 0, NULL, NULL, NULL, 1, 214, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(225, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 4, 1, 1, 0, 1, -1, '0', 0, 0),
(226, 7, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 225, 0, 225, -1, '0', 0, 0),
(227, 7, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 225, 0, 225, -1, '0', 0, 0),
(228, 7, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 225, 0, 225, -1, '0', 0, 0),
(229, 7, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 225, 0, 225, -1, '0', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageSearchIndex`
--

CREATE TABLE `PageSearchIndex` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageSearchIndex`
--

INSERT INTO `PageSearchIndex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(2, '', 'Dashboard', '', '/dashboard', '2018-05-16 12:09:37', '2018-05-16 12:10:34', NULL, 0),
(3, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2018-05-16 12:09:37', '2018-05-16 12:10:35', NULL, 0),
(4, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2018-05-16 12:09:38', '2018-05-16 12:10:35', NULL, 0),
(5, '', 'Flat View', '', '/dashboard/sitemap/explore', '2018-05-16 12:09:38', '2018-05-16 12:10:35', NULL, 0),
(6, '', 'Page Search', '', '/dashboard/sitemap/search', '2018-05-16 12:09:38', '2018-05-16 12:10:35', NULL, 0),
(8, '', 'File Manager', '', '/dashboard/files/search', '2018-05-16 12:09:39', '2018-05-16 12:10:35', NULL, 0),
(9, '', 'Attributes', '', '/dashboard/files/attributes', '2018-05-16 12:09:39', '2018-05-16 12:10:35', NULL, 0),
(10, '', 'File Sets', '', '/dashboard/files/sets', '2018-05-16 12:09:40', '2018-05-16 12:10:35', NULL, 0),
(11, '', 'Add File Set', '', '/dashboard/files/add_set', '2018-05-16 12:09:40', '2018-05-16 12:10:36', NULL, 0),
(12, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2018-05-16 12:09:41', '2018-05-16 12:10:36', NULL, 0),
(13, '', 'Search Users', '', '/dashboard/users/search', '2018-05-16 12:09:41', '2018-05-16 12:10:36', NULL, 0),
(14, '', 'User Groups', '', '/dashboard/users/groups', '2018-05-16 12:09:42', '2018-05-16 12:10:36', NULL, 0),
(15, '', 'Attributes', '', '/dashboard/users/attributes', '2018-05-16 12:09:42', '2018-05-16 12:10:36', NULL, 0),
(16, '', 'Add User', '', '/dashboard/users/add', '2018-05-16 12:09:43', '2018-05-16 12:10:37', NULL, 0),
(17, '', 'Add Group', '', '/dashboard/users/add_group', '2018-05-16 12:09:43', '2018-05-16 12:10:37', NULL, 0),
(19, '', 'Group Sets', '', '/dashboard/users/group_sets', '2018-05-16 12:09:44', '2018-05-16 12:10:37', NULL, 0),
(20, '', 'Community Points', NULL, '/dashboard/users/points', '2018-05-16 12:09:44', '2018-05-16 12:10:37', NULL, 0),
(22, '', 'Actions', NULL, '/dashboard/users/points/actions', '2018-05-16 12:09:45', '2018-05-16 12:10:37', NULL, 0),
(23, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2018-05-16 12:09:45', '2018-05-16 12:10:37', NULL, 0),
(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2018-05-16 12:09:46', '2018-05-16 12:10:38', NULL, 0),
(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2018-05-16 12:09:46', '2018-05-16 12:10:38', NULL, 0),
(26, '', 'Logs', '', '/dashboard/reports/logs', '2018-05-16 12:09:46', '2018-05-16 12:10:38', NULL, 0),
(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2018-05-16 12:09:47', '2018-05-16 12:10:38', NULL, 0),
(29, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2018-05-16 12:09:48', '2018-05-16 12:10:38', NULL, 0),
(31, '', 'Organize Page Type Order', '', '/dashboard/pages/types/organize', '2018-05-16 12:09:48', '2018-05-16 12:10:39', NULL, 0),
(32, '', 'Add Page Type', '', '/dashboard/pages/types/add', '2018-05-16 12:09:49', '2018-05-16 12:10:39', NULL, 0),
(33, '', 'Compose Form', '', '/dashboard/pages/types/form', '2018-05-16 12:09:49', '2018-05-16 12:10:39', NULL, 0),
(34, '', 'Defaults and Output', '', '/dashboard/pages/types/output', '2018-05-16 12:09:49', '2018-05-16 12:10:39', NULL, 0),
(35, '', 'Page Type Attributes', '', '/dashboard/pages/types/attributes', '2018-05-16 12:09:50', '2018-05-16 12:10:39', NULL, 0),
(36, '', 'Page Type Permissions', '', '/dashboard/pages/types/permissions', '2018-05-16 12:09:50', '2018-05-16 12:10:39', NULL, 0),
(38, '', 'Add Page Template', 'Add page templates to your site.', '/dashboard/pages/templates/add', '2018-05-16 12:09:51', '2018-05-16 12:10:39', NULL, 0),
(39, '', 'Attributes', '', '/dashboard/pages/attributes', '2018-05-16 12:09:52', '2018-05-16 12:10:40', NULL, 0),
(40, '', 'Single Pages', '', '/dashboard/pages/single', '2018-05-16 12:09:52', '2018-05-16 12:10:40', NULL, 0),
(41, '', 'RSS Feeds', '', '/dashboard/pages/feeds', '2018-05-16 12:09:53', '2018-05-16 12:10:40', NULL, 0),
(43, '', 'Messages', '', '/dashboard/conversations/messages', '2018-05-16 12:09:54', '2018-05-16 12:10:40', NULL, 0),
(44, '', 'Workflow', '', '/dashboard/workflow', '2018-05-16 12:09:54', '2018-05-16 12:10:40', NULL, 0),
(48, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2018-05-16 12:09:56', '2018-05-16 12:10:41', NULL, 0),
(50, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2018-05-16 12:09:57', '2018-05-16 12:10:41', NULL, 0),
(51, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2018-05-16 12:09:57', '2018-05-16 12:10:41', NULL, 0),
(52, '', 'Extend concrete5', '', '/dashboard/extend', '2018-05-16 12:09:57', '2018-05-16 12:10:41', NULL, 0),
(53, '', 'Dashboard', '', '/dashboard/news', '2018-05-16 12:09:58', '2018-05-16 12:10:41', NULL, 0),
(54, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2018-05-16 12:09:58', '2018-05-16 12:10:42', NULL, 0),
(55, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2018-05-16 12:09:59', '2018-05-16 12:10:42', NULL, 0),
(56, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2018-05-16 12:09:59', '2018-05-16 12:10:42', NULL, 0),
(57, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2018-05-16 12:10:00', '2018-05-16 12:10:42', NULL, 0),
(58, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/addons', '2018-05-16 12:10:00', '2018-05-16 12:10:42', NULL, 0),
(59, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2018-05-16 12:10:01', '2018-05-16 12:10:43', NULL, 0),
(61, '', 'Site Name', '', '/dashboard/system/basics/name', '2018-05-16 12:10:02', '2018-05-16 12:10:43', NULL, 0),
(62, '', 'Accessibility', '', '/dashboard/system/basics/accessibility', '2018-05-16 12:10:02', '2018-05-16 12:10:43', NULL, 0),
(63, '', 'Social Links', '', '/dashboard/system/basics/social', '2018-05-16 12:10:03', '2018-05-16 12:10:43', NULL, 0),
(64, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2018-05-16 12:10:03', '2018-05-16 12:10:43', NULL, 0),
(65, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2018-05-16 12:10:03', '2018-05-16 12:10:43', NULL, 0),
(66, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2018-05-16 12:10:04', '2018-05-16 12:10:43', NULL, 0),
(67, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2018-05-16 12:10:05', '2018-05-16 12:10:44', NULL, 0),
(68, '', 'Multilingual', 'Run your site in multiple languages.', '/dashboard/system/multilingual', '2018-05-16 12:10:05', '2018-05-16 12:10:44', NULL, 0),
(74, '', 'URLs and Redirection', '', '/dashboard/system/seo/urls', '2018-05-16 12:10:08', '2018-05-16 12:10:44', NULL, 0),
(75, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk', '2018-05-16 12:10:08', '2018-05-16 12:10:44', NULL, 0),
(76, '', 'Tracking Codes', '', '/dashboard/system/seo/codes', '2018-05-16 12:10:09', '2018-05-16 12:10:44', NULL, 0),
(77, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2018-05-16 12:10:09', '2018-05-16 12:10:44', NULL, 0),
(78, '', 'Search Index', '', '/dashboard/system/seo/searchindex', '2018-05-16 12:10:10', '2018-05-16 12:10:44', NULL, 0),
(80, '', 'File Manager Permissions', '', '/dashboard/system/files/permissions', '2018-05-16 12:10:11', '2018-05-16 12:10:44', NULL, 0),
(81, '', 'Allowed File Types', '', '/dashboard/system/files/filetypes', '2018-05-16 12:10:11', '2018-05-16 12:10:45', NULL, 0),
(82, '', 'Thumbnails', '', '/dashboard/system/files/thumbnails', '2018-05-16 12:10:11', '2018-05-16 12:10:45', NULL, 0),
(83, '', 'Image Uploading', '', '/dashboard/system/files/image_uploading', '2018-05-16 12:10:12', '2018-05-16 12:10:45', NULL, 0),
(84, '', 'File Storage Locations', '', '/dashboard/system/files/storage', '2018-05-16 12:10:12', '2018-05-16 12:10:45', NULL, 0),
(86, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2018-05-16 12:10:13', '2018-05-16 12:10:45', NULL, 0),
(87, '', 'Clear Cache', '', '/dashboard/system/optimization/clearcache', '2018-05-16 12:10:13', '2018-05-16 12:10:45', NULL, 0),
(88, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2018-05-16 12:10:14', '2018-05-16 12:10:45', NULL, 0),
(89, '', 'Database Query Log', '', '/dashboard/system/optimization/query_log', '2018-05-16 12:10:14', '2018-05-16 12:10:45', NULL, 0),
(91, '', 'Site Access', '', '/dashboard/system/permissions/site', '2018-05-16 12:10:15', '2018-05-16 12:10:46', NULL, 0),
(92, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2018-05-16 12:10:15', '2018-05-16 12:10:46', NULL, 0),
(95, '', 'IP Blacklist', '', '/dashboard/system/permissions/blacklist', '2018-05-16 12:10:17', '2018-05-16 12:10:46', NULL, 0),
(96, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2018-05-16 12:10:17', '2018-05-16 12:10:46', NULL, 0),
(97, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2018-05-16 12:10:18', '2018-05-16 12:10:46', NULL, 0),
(98, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance', '2018-05-16 12:10:18', '2018-05-16 12:10:46', NULL, 0),
(100, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2018-05-16 12:10:19', '2018-05-16 12:10:46', NULL, 0),
(101, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2018-05-16 12:10:19', '2018-05-16 12:10:47', NULL, 0),
(102, '', 'Public Registration', '', '/dashboard/system/registration/open', '2018-05-16 12:10:20', '2018-05-16 12:10:47', NULL, 0),
(103, '', 'Authentication Types', '', '/dashboard/system/registration/authentication', '2018-05-16 12:10:20', '2018-05-16 12:10:47', NULL, 0),
(104, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2018-05-16 12:10:20', '2018-05-16 12:10:47', NULL, 0),
(105, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2018-05-16 12:10:21', '2018-05-16 12:10:47', NULL, 0),
(106, '', 'Test Mail Settings', '', '/dashboard/system/mail/method/test', '2018-05-16 12:10:21', '2018-05-16 12:10:47', NULL, 0),
(107, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2018-05-16 12:10:22', '2018-05-16 12:10:48', NULL, 0),
(108, '', 'Conversations', 'Manage your conversations settings', '/dashboard/system/conversations', '2018-05-16 12:10:22', '2018-05-16 12:10:48', NULL, 0),
(109, '', 'Settings', '', '/dashboard/system/conversations/settings', '2018-05-16 12:10:23', '2018-05-16 12:10:48', NULL, 0),
(110, '', 'Community Points', '', '/dashboard/system/conversations/points', '2018-05-16 12:10:23', '2018-05-16 12:10:48', NULL, 0),
(111, '', 'Banned Words', '', '/dashboard/system/conversations/bannedwords', '2018-05-16 12:10:24', '2018-05-16 12:10:48', NULL, 0),
(113, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2018-05-16 12:10:25', '2018-05-16 12:10:48', NULL, 0),
(114, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2018-05-16 12:10:25', '2018-05-16 12:10:48', NULL, 0),
(115, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2018-05-16 12:10:26', '2018-05-16 12:10:48', NULL, 0),
(116, '', 'Topics', '', '/dashboard/system/attributes/topics', '2018-05-16 12:10:26', '2018-05-16 12:10:49', NULL, 0),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(119, '', 'Environment Information', '', '/dashboard/system/environment/info', '2018-05-16 12:10:27', '2018-05-16 12:10:49', NULL, 0),
(120, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2018-05-16 12:10:28', '2018-05-16 12:10:49', NULL, 0),
(121, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2018-05-16 12:10:28', '2018-05-16 12:10:49', NULL, 0),
(122, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2018-05-16 12:10:28', '2018-05-16 12:10:49', NULL, 0),
(123, '', 'Database Entities', '', '/dashboard/system/environment/entities', '2018-05-16 12:10:29', '2018-05-16 12:10:49', NULL, 0),
(124, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup', '2018-05-16 12:10:29', '2018-05-16 12:10:49', NULL, 0),
(126, '', 'Update concrete5', '', '/dashboard/system/backup/update', '2018-05-16 12:10:31', '2018-05-16 12:10:50', NULL, 0),
(127, '\n\n                                      ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2018-05-16 12:10:33', '2018-05-16 12:10:50', NULL, 0),
(128, '', 'Customize Dashboard Home', '', '/dashboard/home', '2018-05-16 12:10:34', '2018-05-16 12:10:51', NULL, 0),
(129, '', 'Drafts', '', '/!drafts', '2018-05-16 12:10:51', '2018-05-16 12:10:58', NULL, 0),
(130, '', 'Trash', '', '/!trash', '2018-05-16 12:10:52', '2018-05-16 12:10:58', NULL, 0),
(131, '', 'Stacks', '', '/!stacks', '2018-05-16 12:10:52', '2018-05-16 12:10:58', NULL, 0),
(134, '', 'My Account', '', '/account', '2018-05-16 12:10:54', '2018-05-16 12:10:59', NULL, 0),
(1, ' \r\n(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.4";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));\r\nSENATICs Paraguay   Últimas noticias Titulo slide 1  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto  Título del Slide 2  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto   ', 'Portada', '', NULL, '2018-05-16 12:09:07', '2018-08-30 15:31:06', NULL, 0),
(146, '', 'Header Site Title', NULL, '/!stacks/header-site-title', '2018-05-16 13:36:29', '2018-08-30 14:45:07', NULL, 0),
(152, '', 'search', NULL, '/!stacks/search', '2018-05-16 13:55:32', '2018-08-27 19:07:13', NULL, 0),
(153, '', 'Espacio 2', NULL, '/!stacks/espacio-2', '2018-05-16 13:55:33', '2018-05-21 09:03:32', NULL, 0),
(154, '', 'Espacio 3', NULL, '/!stacks/espacio-3', '2018-05-16 13:55:33', '2018-05-21 09:03:32', NULL, 0),
(148, ' Secretaría Nacional de Tecnologías de la Información y Comunicación   Asunción - Paraguay  \r\n    var min=12;\r\n    var max=30;\r\n    function increaseFontSize() {\r\n\r\n       var p = document.getElementsByTagName(\'p\');\r\n       var blockquote = document.getElementsByTagName(\'blockquote\');\r\n       var collection = document.getElementsByClassName("collection");\r\n       \r\n       for(i=0;i ', 'Footer Legal', NULL, '/!stacks/footer-legal', '2018-05-16 13:36:30', '2018-08-30 15:31:03', NULL, 0),
(151, '', 'info_superior', NULL, '/!stacks/info-superior', '2018-05-16 13:55:32', '2018-08-28 12:47:19', NULL, 0),
(147, '', 'Header Navigation', NULL, '/!stacks/header-navigation', '2018-05-16 13:36:29', '2018-05-17 15:05:54', NULL, 0),
(165, '', 'Institución', '', '/institucion', '2018-05-17 10:14:16', '2018-05-17 10:44:54', NULL, 0),
(166, 'Misión Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.    Visión Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.    Ejes Estratégicos Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.    ', 'Misión y Visión', '', '/institucion/mision-y-vision', '2018-05-17 10:17:29', '2018-05-17 10:53:17', NULL, 0),
(169, ' Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.    ', 'Marco Legal', '', '/institucion/marco-legal', '2018-05-17 10:41:49', '2018-05-17 10:55:34', NULL, 0),
(171, '', 'Resoluciones', '', '/institucion/resoluciones', '2018-05-17 10:44:57', '2018-05-17 10:47:53', NULL, 0),
(172, '', 'Organigrama', '', '/institucion/organigrama', '2018-05-17 10:46:12', '2018-05-17 11:00:42', NULL, 0),
(191, 'Formulario de Contacto    Dirección: Complejo Santos E2 - Gral. Santos 1170 c/ ConcordiaTelefono: (+595 21) 217 - 9000 Horarios de Atención: de 07:00hs a 15:00hs E-mail: comunicacion@senatics.gov.pyAsunción - Paraguay ', 'Contacto', '', '/contacto', '2018-05-18 09:56:03', '2018-08-30 15:24:57', NULL, 0),
(226, 'Categorías: Etiquetas:   Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  ', 'Titulo de la Noticia 1', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', '/noticias/titulo-de-la-noticia-1', '2018-08-28 11:48:00', '2018-08-28 11:52:43', NULL, 0),
(193, '', 'MECIP', '', '/mecip', '2018-05-18 10:46:14', '2018-05-18 10:46:33', NULL, 0),
(194, '', 'Trámites', '', '/tramites', '2018-05-18 10:46:54', '2018-05-18 10:47:12', NULL, 0),
(196, '', 'Servicios', '', '/servicios', '2018-05-18 10:47:37', '2018-05-18 10:47:49', NULL, 0),
(225, '', 'Noticias', '', '/noticias', '2018-08-28 11:41:39', '2018-08-28 11:59:36', NULL, 0),
(204, 'Nombre de la Persona\nCargo / Ocupación\nNombre de la Institución\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. Nombre de la Persona\nCargo / Ocupación\nNombre de la Institución\nLorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. ', 'Autoridades', '', '/institucion/autoridades', '2018-05-18 11:40:22', '2018-05-18 11:49:31', NULL, 0),
(149, '\r\n\r\n.white-enlaces{\r\n        font-size:12px !important;\r\n    }\r\n\r\nEnlaces de Interés\r\n\r\n  \r\n    Presidencia de la República del Paraguay\r\n    Secretaría de la Función Pública (SFP)\r\n    Secretaría de Acción Social (SAS)\r\n    Fondo Nacional de la Cultura y las Artes (FONDEC)\r\n    Secretaría Nacional de Turismo (SENATUR)\r\n    Ministerio de Justicia (MJ)\r\n    Ministerio de Trabajo, Empleo y Seguridad Social (MTESS)\r\n      \r\n  \r\n \r\n\r\n  \r\n    Secretaría Nacional de Cultura (SNC)\r\n    Secretaría de Información y Comunicación (SICOM)\r\n    Instituto Paraguayo del Indigena (INDI)\r\n    Ministerio de Educación y Cultura (MEC)\r\n    Ministerio de Hacienda (MH)\r\n    Secretaría Nacional de Deportes (SND)\r\n    Ministerio de Salud Pública y Bienestar Social (MSPyBS)\r\n  \r\n  ', 'Footer Navigation', NULL, '/!stacks/footer-navigation', '2018-05-16 13:36:30', '2018-05-18 11:49:29', NULL, 0),
(150, ' Dirección: Complejo Santos E2 - Gral. Santos 1170 c/ ConcordiaTelefono: (+595 21) 217 - 9000 Horarios de Atención: de 07:00hs a 15:00hs E-mail: comunicacion@senatics.gov.py ', 'Footer Contact', NULL, '/!stacks/footer-contact', '2018-05-16 13:36:30', '2018-05-21 10:25:13', NULL, 0),
(212, '', 'Agenda', '', '/agenda', '2018-05-18 12:00:15', '2018-05-18 12:02:03', NULL, 0),
(213, '', 'Buscador', '', '/buscador', '2018-05-18 15:07:46', '2018-08-28 12:07:25', NULL, 0),
(227, 'Categorías: Etiquetas:  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  ', 'Titulo de la Noticia 2', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', '/noticias/titulo-de-la-noticia-2', '2018-08-28 11:52:00', '2018-08-28 11:54:29', NULL, 0),
(228, 'Categorías: Etiquetas:  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.   Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  ', 'Titulo de la Noticia 3', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original.', '/noticias/titulo-de-la-noticia-3', '2018-08-28 11:54:00', '2018-08-28 11:56:00', NULL, 0),
(229, 'Categorías: Etiquetas:  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.  ', 'Titulo de la Noticia 4', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.', '/noticias/titulo-de-la-noticia-4', '2018-08-28 11:56:00', '2018-08-28 11:57:40', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTemplates`
--

CREATE TABLE `PageTemplates` (
  `pTemplateID` int(10) UNSIGNED NOT NULL,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTemplates`
--

INSERT INTO `PageTemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
(1, 'core_stack', '', 'Stack', 1, 0),
(2, 'dashboard_primary_five', '', 'Dashboard Primary + Five', 1, 0),
(3, 'dashboard_header_four_col', '', 'Dashboard Header + Four Column', 1, 0),
(4, 'dashboard_full', '', 'Dashboard Full', 1, 0),
(6, 'index', 'full.png', 'Index', 0, 0),
(7, 'pagina', 'full.png', 'Pagina', 0, 0),
(8, 'left_sidebar', 'left_sidebar.png', 'Left Sidebar', 0, 0),
(9, 'right_sidebar', 'right_sidebar.png', 'Right Sidebar', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageThemeCustomStyles`
--

CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scvlID` int(10) UNSIGNED DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageThemeCustomStyles`
--

INSERT INTO `PageThemeCustomStyles` (`pThemeID`, `scvlID`, `preset`, `sccRecordID`) VALUES
(2, 1, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageThemes`
--

CREATE TABLE `PageThemes` (
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageThemes`
--

INSERT INTO `PageThemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
(2, 'TemplateV2-campanha', 'SENATICs-UI - V2(campanhas)', 'Template SENATICs', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTypeComposerControlTypes`
--

CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTypeComposerControlTypes`
--

INSERT INTO `PageTypeComposerControlTypes` (`ptComposerControlTypeID`, `ptComposerControlTypeHandle`, `ptComposerControlTypeName`, `pkgID`) VALUES
(1, 'core_page_property', 'Built-In Property', 0),
(2, 'collection_attribute', 'Custom Attribute', 0),
(3, 'block', 'Block', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTypeComposerFormLayoutSetControls`
--

CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL,
  `ptComposerFormLayoutSetID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerControlTypeID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTypeComposerFormLayoutSetControls`
--

INSERT INTO `PageTypeComposerFormLayoutSetControls` (`ptComposerFormLayoutSetControlID`, `ptComposerFormLayoutSetID`, `ptComposerControlTypeID`, `ptComposerControlObject`, `ptComposerFormLayoutSetControlDisplayOrder`, `ptComposerFormLayoutSetControlCustomLabel`, `ptComposerFormLayoutSetControlCustomTemplate`, `ptComposerFormLayoutSetControlDescription`, `ptComposerFormLayoutSetControlRequired`) VALUES
(1, 1, 1, 'O:78:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty":11:{s:37:"\0*\0ptComposerControlRequiredByDefault";b:1;s:17:"\0*\0propertyHandle";s:4:"name";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:4:"name";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";s:34:"/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 0, 'Page Name', NULL, NULL, 1),
(2, 1, 1, 'O:85:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty":11:{s:17:"\0*\0propertyHandle";s:11:"description";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:11:"description";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";s:38:"/concrete/attributes/textarea/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 2, NULL, NULL, NULL, 0),
(3, 1, 1, 'O:81:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty":11:{s:17:"\0*\0propertyHandle";s:8:"url_slug";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:8:"url_slug";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";s:34:"/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 1, 'URL (Automática)', '', '', 0),
(5, 1, 1, 'O:87:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty":11:{s:17:"\0*\0propertyHandle";s:14:"publish_target";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:14:"publish_target";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";s:40:"/concrete/attributes/image_file/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 3, NULL, NULL, NULL, 0),
(8, 1, 2, 'O:67:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl":12:{s:7:"\0*\0akID";s:1:"5";s:5:"\0*\0ak";b:0;s:30:"\0*\0ptComposerControlTypeHandle";s:20:"collection_attribute";s:30:"\0*\0ptComposerControlIdentifier";s:1:"5";s:24:"\0*\0ptComposerControlName";s:15:"Excluir del Nav";s:27:"\0*\0ptComposerControlIconSRC";s:37:"/concrete/attributes/boolean/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 4, 'Excluir del Menú Principal', '', '', 0),
(9, 3, 1, 'O:78:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty":11:{s:37:"\0*\0ptComposerControlRequiredByDefault";b:1;s:17:"\0*\0propertyHandle";s:4:"name";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:4:"name";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";s:34:"/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 0, 'Titulo de la Noticia', '', '', 1),
(10, 3, 1, 'O:81:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty":11:{s:17:"\0*\0propertyHandle";s:8:"url_slug";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:8:"url_slug";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";s:34:"/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 1, 'URL (Automatica)', '', '', 0),
(12, 3, 1, 'O:85:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty":11:{s:17:"\0*\0propertyHandle";s:11:"description";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:11:"description";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";s:38:"/concrete/attributes/textarea/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 2, 'Descripción corta', '', '', 0),
(13, 3, 1, 'O:82:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DateTimeCorePageProperty":11:{s:17:"\0*\0propertyHandle";s:9:"date_time";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:9:"date_time";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";s:39:"/concrete/attributes/date_time/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 3, 'Fecha/Hora de publicación', '', '', 0),
(14, 3, 2, 'O:67:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl":12:{s:7:"\0*\0akID";s:1:"8";s:5:"\0*\0ak";b:0;s:30:"\0*\0ptComposerControlTypeHandle";s:20:"collection_attribute";s:30:"\0*\0ptComposerControlIdentifier";s:1:"8";s:24:"\0*\0ptComposerControlName";s:9:"Etiquetas";s:27:"\0*\0ptComposerControlIconSRC";s:36:"/concrete/attributes/select/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 5, NULL, NULL, NULL, 0),
(15, 3, 3, 'O:53:"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl":14:{s:7:"\0*\0btID";i:12;s:30:"\0*\0ptComposerControlTypeHandle";s:5:"block";s:5:"\0*\0bt";b:0;s:4:"\0*\0b";b:0;s:13:"\0*\0controller";N;s:30:"\0*\0ptComposerControlIdentifier";i:12;s:24:"\0*\0ptComposerControlName";s:9:"Contenido";s:27:"\0*\0ptComposerControlIconSRC";s:33:"/concrete/blocks/content/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 7, NULL, NULL, NULL, 0),
(16, 3, 2, 'O:67:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl":12:{s:7:"\0*\0akID";s:2:"18";s:5:"\0*\0ak";b:0;s:30:"\0*\0ptComposerControlTypeHandle";s:20:"collection_attribute";s:30:"\0*\0ptComposerControlIdentifier";s:2:"18";s:24:"\0*\0ptComposerControlName";s:11:"Categorías";s:27:"\0*\0ptComposerControlIconSRC";s:36:"/concrete/attributes/topics/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 4, NULL, NULL, NULL, 0),
(17, 1, 1, 'O:86:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty":11:{s:17:"\0*\0propertyHandle";s:13:"page_template";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:13:"page_template";s:24:"\0*\0ptComposerControlName";N;s:27:"\0*\0ptComposerControlIconSRC";s:36:"/concrete/attributes/select/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 5, NULL, NULL, NULL, 0),
(18, 3, 2, 'O:67:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CollectionAttributeControl":12:{s:7:"\0*\0akID";s:2:"19";s:5:"\0*\0ak";b:0;s:30:"\0*\0ptComposerControlTypeHandle";s:20:"collection_attribute";s:30:"\0*\0ptComposerControlIdentifier";s:2:"19";s:24:"\0*\0ptComposerControlName";s:16:"Imagen Miniatura";s:27:"\0*\0ptComposerControlIconSRC";s:40:"/concrete/attributes/image_file/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:31:"\0*\0ptComposerControlCustomLabel";N;s:31:"\0*\0ptComposerControlDescription";N;s:5:"error";s:0:"";}', 6, 'Imagen Miniatura', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTypeComposerFormLayoutSets`
--

CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTypeComposerFormLayoutSets`
--

INSERT INTO `PageTypeComposerFormLayoutSets` (`ptComposerFormLayoutSetID`, `ptID`, `ptComposerFormLayoutSetName`, `ptComposerFormLayoutSetDescription`, `ptComposerFormLayoutSetDisplayOrder`) VALUES
(1, 6, 'Configuración Básica de la Página', '', 0),
(3, 7, 'Configuración Básica de la Noticia', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTypeComposerOutputBlocks`
--

CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTypeComposerOutputBlocks`
--

INSERT INTO `PageTypeComposerOutputBlocks` (`ptComposerOutputBlockID`, `cID`, `arHandle`, `cbDisplayOrder`, `ptComposerFormLayoutSetControlID`, `bID`) VALUES
(1, 155, 'Main', 0, 6, 19),
(2, 156, 'Main', 0, 6, 20),
(3, 173, 'Contenido', 2, 15, 55),
(40, 174, 'Contenido', 2, 15, 100),
(54, 175, 'Contenido', 2, 15, 116),
(82, 176, 'Contenido', 2, 15, 147),
(103, 189, 'Contenido', 2, 15, 183),
(151, 190, 'Contenido', 2, 15, 269),
(166, 197, 'Contenido', 2, 15, 284),
(184, 198, 'Contenido', 2, 15, 302),
(234, 199, 'Contenido', 2, 15, 352),
(255, 200, 'Contenido', 2, 15, 373),
(300, 201, 'Contenido', 2, 15, 442),
(303, 202, 'Contenido', 2, 15, 466),
(304, 215, 'Contenido', 2, 15, 467),
(305, 216, 'Contenido', 2, 15, 468),
(308, 217, 'Contenido', 0, 15, 471),
(356, 219, 'Contenido', 0, 15, 519),
(370, 220, 'Contenido', 0, 15, 533),
(394, 221, 'Contenido', 0, 15, 557),
(409, 222, 'Contenido', 0, 15, 572),
(410, 222, 'Contenido', 0, 15, 573),
(415, 223, 'Contenido', 0, 15, 578),
(417, 218, 'Contenido', 0, 15, 581),
(463, 226, 'Contenido', 3, 15, 653),
(482, 227, 'Contenido', 3, 15, 672),
(497, 228, 'Contenido', 3, 15, 687),
(515, 229, 'Contenido', 3, 15, 705);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTypeComposerOutputControls`
--

CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL,
  `pTemplateID` int(10) UNSIGNED DEFAULT '0',
  `ptID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTypeComposerOutputControls`
--

INSERT INTO `PageTypeComposerOutputControls` (`ptComposerOutputControlID`, `pTemplateID`, `ptID`, `ptComposerFormLayoutSetControlID`) VALUES
(5, 7, 7, 15),
(6, 9, 7, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTypePageTemplateDefaultPages`
--

CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTypePageTemplateDefaultPages`
--

INSERT INTO `PageTypePageTemplateDefaultPages` (`pTemplateID`, `ptID`, `cID`) VALUES
(7, 6, 157),
(7, 7, 160),
(8, 6, 167),
(9, 6, 168),
(9, 7, 214);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTypePageTemplates`
--

CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTypePageTemplates`
--

INSERT INTO `PageTypePageTemplates` (`ptID`, `pTemplateID`) VALUES
(6, 7),
(7, 7),
(6, 8),
(6, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTypePermissionAssignments`
--

CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTypePermissionAssignments`
--

INSERT INTO `PageTypePermissionAssignments` (`ptID`, `pkID`, `paID`) VALUES
(1, 59, 9),
(2, 59, 9),
(3, 59, 9),
(4, 59, 9),
(5, 59, 9),
(6, 59, 9),
(7, 59, 9),
(1, 60, 9),
(2, 60, 9),
(3, 60, 9),
(4, 60, 9),
(5, 60, 9),
(6, 60, 9),
(7, 60, 9),
(1, 61, 9),
(2, 61, 9),
(3, 61, 9),
(4, 61, 9),
(5, 61, 9),
(6, 61, 9),
(7, 61, 9),
(1, 62, 9),
(2, 62, 9),
(3, 62, 9),
(4, 62, 9),
(5, 62, 9),
(6, 62, 9),
(7, 62, 9),
(1, 63, 26),
(2, 63, 27),
(3, 63, 28),
(4, 63, 29),
(5, 63, 30),
(6, 63, 31),
(7, 63, 94);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTypePublishTargetTypes`
--

CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTypePublishTargetTypes`
--

INSERT INTO `PageTypePublishTargetTypes` (`ptPublishTargetTypeID`, `ptPublishTargetTypeHandle`, `ptPublishTargetTypeName`, `pkgID`) VALUES
(1, 'parent_page', 'Always publish below a certain page', 0),
(2, 'page_type', 'Choose from pages of a certain type', 0),
(3, 'all', 'Choose from all pages when publishing', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageTypes`
--

CREATE TABLE `PageTypes` (
  `ptID` int(10) UNSIGNED NOT NULL,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) UNSIGNED DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) UNSIGNED DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PageTypes`
--

INSERT INTO `PageTypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`) VALUES
(1, 'Stack', 'core_stack', 3, 0, 'A', 1, 0, 0, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}'),
(2, 'Stack Category', 'core_stack_category', 3, 0, 'A', 1, 0, 1, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}'),
(3, 'Dashboard Primary + Five', 'dashboard_primary_five', 3, 0, 'A', 1, 0, 2, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}'),
(4, 'Dashboard Header + Four Column', 'dashboard_header_four_col', 3, 0, 'A', 1, 0, 3, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}'),
(5, 'Dashboard Full', 'dashboard_full', 3, 0, 'A', 1, 0, 4, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}'),
(6, 'Página en blanco', 'page', 3, 7, 'C', 0, 1, 0, 1, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";s:0:"";s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";s:1:"0";}'),
(7, 'Publicador de Noticias', 'noticias', 1, 7, 'C', 0, 1, 1, 1, 0, 'O:75:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration":5:{s:12:"\0*\0cParentID";s:3:"225";s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"1";s:25:"ptPublishTargetTypeHandle";s:11:"parent_page";s:9:"pkgHandle";b:0;}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PageWorkflowProgress`
--

CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionAccess`
--

CREATE TABLE `PermissionAccess` (
  `paID` int(10) UNSIGNED NOT NULL,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PermissionAccess`
--

INSERT INTO `PermissionAccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionAccessEntities`
--

CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) UNSIGNED NOT NULL,
  `petID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PermissionAccessEntities`
--

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1, 1),
(5, 1),
(6, 1),
(2, 5),
(3, 6),
(4, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionAccessEntityGroups`
--

CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) UNSIGNED NOT NULL,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PermissionAccessEntityGroups`
--

INSERT INTO `PermissionAccessEntityGroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 5, 1),
(3, 6, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionAccessEntityGroupSets`
--

CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionAccessEntityTypeCategories`
--

CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PermissionAccessEntityTypeCategories`
--

INSERT INTO `PermissionAccessEntityTypeCategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(6, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(6, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(1, 14),
(2, 14),
(3, 14),
(4, 14),
(5, 14),
(1, 15),
(2, 15),
(3, 15),
(4, 15),
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(1, 17),
(2, 17),
(3, 17),
(4, 17),
(1, 18),
(2, 18),
(3, 18),
(4, 18),
(1, 19),
(2, 19),
(3, 19),
(4, 19),
(7, 19),
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(7, 20),
(1, 21),
(2, 21),
(4, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionAccessEntityTypes`
--

CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) UNSIGNED NOT NULL,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PermissionAccessEntityTypes`
--

INSERT INTO `PermissionAccessEntityTypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0),
(7, 'conversation_message_author', 'Message Author', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionAccessEntityUsers`
--

CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionAccessList`
--

CREATE TABLE `PermissionAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pdID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PermissionAccessList`
--

INSERT INTO `PermissionAccessList` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 1, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 1, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 2, 0, 10),
(27, 2, 0, 10),
(28, 2, 0, 10),
(29, 2, 0, 10),
(30, 2, 0, 10),
(31, 2, 0, 10),
(32, 5, 0, 10),
(33, 1, 0, 10),
(33, 5, 0, 10),
(34, 1, 0, 10),
(35, 1, 0, 10),
(36, 1, 0, 10),
(37, 1, 0, 10),
(38, 1, 0, 10),
(39, 1, 0, 10),
(40, 1, 0, 10),
(41, 1, 0, 10),
(42, 5, 0, 10),
(43, 1, 0, 10),
(44, 1, 0, 10),
(45, 1, 0, 10),
(46, 1, 0, 10),
(47, 1, 0, 10),
(48, 1, 0, 10),
(49, 1, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 1, 0, 10),
(53, 1, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 1, 0, 10),
(58, 1, 0, 10),
(59, 1, 0, 10),
(60, 5, 0, 10),
(61, 5, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 1, 0, 10),
(66, 1, 0, 10),
(67, 1, 0, 10),
(68, 1, 0, 10),
(69, 1, 0, 10),
(70, 1, 0, 10),
(71, 1, 0, 10),
(72, 1, 0, 10),
(73, 1, 0, 10),
(74, 1, 0, 10),
(75, 1, 0, 10),
(76, 1, 0, 10),
(77, 1, 0, 10),
(78, 1, 0, 10),
(79, 1, 0, 10),
(80, 1, 0, 10),
(81, 1, 0, 10),
(82, 1, 0, 10),
(83, 1, 0, 10),
(84, 1, 0, 10),
(85, 1, 0, 10),
(86, 5, 0, 10),
(87, 5, 0, 10),
(88, 1, 0, 10),
(88, 4, 0, 10),
(89, 1, 0, 10),
(89, 4, 0, 10),
(90, 1, 0, 10),
(90, 6, 0, 10),
(91, 1, 0, 10),
(92, 1, 0, 10),
(93, 1, 0, 10),
(94, 2, 0, 10),
(95, 5, 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionAccessWorkflows`
--

CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionAssignments`
--

CREATE TABLE `PermissionAssignments` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PermissionAssignments`
--

INSERT INTO `PermissionAssignments` (`paID`, `pkID`) VALUES
(1, 19),
(2, 20),
(3, 74),
(4, 75),
(5, 76),
(6, 78),
(7, 79),
(8, 80),
(9, 86),
(10, 87),
(11, 89),
(12, 90),
(13, 91),
(14, 92),
(15, 93),
(16, 94),
(17, 95),
(18, 96),
(19, 97),
(20, 98),
(21, 99),
(22, 100),
(23, 101),
(24, 102),
(25, 103);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionDurationObjects`
--

CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) UNSIGNED NOT NULL,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionKeyCategories`
--

CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) UNSIGNED NOT NULL,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PermissionKeyCategories`
--

INSERT INTO `PermissionKeyCategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'user', NULL),
(5, 'file_set', NULL),
(6, 'file', NULL),
(7, 'area', NULL),
(8, 'block_type', NULL),
(9, 'block', NULL),
(10, 'admin', NULL),
(11, 'sitemap', NULL),
(12, 'marketplace_newsflow', NULL),
(13, 'basic_workflow', NULL),
(14, 'page_type', NULL),
(15, 'gathering', NULL),
(16, 'group_tree_node', NULL),
(17, 'topic_category_tree_node', NULL),
(18, 'topic_tree_node', NULL),
(19, 'conversation', NULL),
(20, 'conversation_message', NULL),
(21, 'multilingual_section', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PermissionKeys`
--

CREATE TABLE `PermissionKeys` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PermissionKeys`
--

INSERT INTO `PermissionKeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_template', 'Change Page Template', 0, 0, 'Ability to change just the page template for this page.', 1, 0),
(10, 'edit_page_page_type', 'Edit Page Type', 0, 0, 'Change the type of an existing page.', 1, 0),
(11, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(12, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site\'s Trash.', 1, 0),
(13, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(14, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(15, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(16, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(17, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(18, 'edit_page_multilingual_settings', 'Edit Multilingual Settings', 0, 0, 'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.', 1, 0),
(19, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(20, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(21, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 7, 0),
(22, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 7, 0),
(23, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 7, 0),
(24, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 7, 0),
(25, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 7, 0),
(26, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area\'s custom CSS.', 7, 0),
(27, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 7, 0),
(28, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 7, 0),
(29, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 7, 0),
(30, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 9, 0),
(31, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 9, 0),
(32, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 9, 0),
(33, 'edit_block_cache_settings', 'Edit Cache Settings', 0, 0, 'Controls whether users can change the block cache settings for this block instance.', 9, 0),
(34, 'edit_block_name', 'Edit Name', 0, 0, 'Controls whether users can change the block\'s name (rarely used.)', 9, 0),
(35, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 9, 0),
(36, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 9, 0),
(37, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 9, 0),
(38, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 9, 0),
(39, 'view_file_set_file', 'View Files', 0, 0, 'Can view and download files in the site.', 5, 0),
(40, 'search_file_set', 'Search Files in File Manager', 0, 0, 'Can access the file manager', 5, 0),
(41, 'edit_file_set_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 5, 0),
(42, 'edit_file_set_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in set.', 5, 0),
(43, 'copy_file_set_files', 'Copy File', 0, 0, 'Can copy files in file set.', 5, 0),
(44, 'edit_file_set_permissions', 'Edit File Access', 0, 0, 'Can edit access to file sets.', 5, 0),
(45, 'delete_file_set', 'Delete File Set', 0, 0, 'Can delete file set.', 5, 0),
(46, 'delete_file_set_files', 'Delete File', 0, 0, 'Can delete files in set.', 5, 0),
(47, 'add_file', 'Add File', 0, 1, 'Can add files to set.', 5, 0),
(48, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 6, 0),
(49, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 6, 0),
(50, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 6, 0),
(51, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 6, 0),
(52, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 6, 0),
(53, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 6, 0),
(54, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 6, 0),
(55, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 13, 0),
(56, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 13, 0),
(57, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 13, 0),
(58, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 13, 0),
(59, 'add_page_type', 'Add Pages of This Type', 0, 0, '', 14, 0),
(60, 'edit_page_type', 'Edit Page Type', 0, 0, '', 14, 0),
(61, 'delete_page_type', 'Delete Page Type', 0, 0, '', 14, 0),
(62, 'edit_page_type_permissions', 'Edit Page Type Permissions', 0, 0, '', 14, 0),
(63, 'edit_page_type_drafts', 'Edit Page Type Drafts', 0, 0, '', 14, 0),
(64, 'view_topic_tree_node', 'View Topic Tree Node', 0, 0, '', 18, 0),
(65, 'view_topic_category_tree_node', 'View Topic Category Tree Node', 0, 0, '', 17, 0),
(66, 'add_conversation_message', 'Add Message to Conversation', 0, 1, '', 19, 0),
(67, 'add_conversation_message_attachments', 'Add Message Attachments', 0, 0, '', 19, 0),
(68, 'edit_conversation_permissions', 'Edit Conversation Permissions', 0, 0, '', 19, 0),
(69, 'delete_conversation_message', 'Delete Message', 0, 0, '', 19, 0),
(70, 'edit_conversation_message', 'Edit Message', 0, 0, '', 19, 0),
(71, 'rate_conversation_message', 'Rate Message', 0, 0, '', 19, 0),
(72, 'flag_conversation_message', 'Flag Message', 0, 0, '', 19, 0),
(73, 'approve_conversation_message', 'Approve Message', 0, 0, '', 19, 0),
(74, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 4, 0),
(75, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 4, 0),
(76, 'activate_user', 'Activate/Deactivate User', 0, 0, NULL, 4, 0),
(77, 'sudo', 'Sign in as User', 0, 0, NULL, 4, 0),
(78, 'upgrade', 'Upgrade concrete5', 0, 0, NULL, 10, 0),
(79, 'access_group_search', 'Access Group Search', 0, 0, NULL, 4, 0),
(80, 'delete_user', 'Delete User', 0, 0, NULL, 4, 0),
(81, 'search_users_in_group', 'Search User Group', 0, 0, NULL, 16, 0),
(82, 'edit_group', 'Edit Group', 0, 0, NULL, 16, 0),
(83, 'assign_group', 'Assign Group', 0, 0, NULL, 16, 0),
(84, 'add_sub_group', 'Add Child Group', 0, 0, NULL, 16, 0),
(85, 'edit_group_permissions', 'Edit Group Permissions', 0, 0, NULL, 16, 0),
(86, 'access_page_type_permissions', 'Access Page Type Permissions', 0, 0, NULL, 10, 0),
(87, 'backup', 'Perform Backups', 0, 0, NULL, 10, 0),
(88, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 10, 0),
(89, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 11, 0),
(90, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 10, 0),
(91, 'customize_themes', 'Customize Themes', 0, 0, NULL, 10, 0),
(92, 'manage_layout_presets', 'Manage Layout Presets', 0, 0, NULL, 10, 0),
(93, 'empty_trash', 'Empty Trash', 0, 0, NULL, 10, 0),
(94, 'add_topic_tree', 'Add Topic Tree', 0, 0, NULL, 10, 0),
(95, 'remove_topic_tree', 'Remove Topic Tree', 0, 0, NULL, 10, 0),
(96, 'view_in_maintenance_mode', 'View Site in Maintenance Mode', 0, 0, 'Ability to see and use the website when concrete5 is in maintenance mode.', 10, 0),
(97, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 12, 0),
(98, 'install_packages', 'Install Packages', 0, 0, NULL, 12, 0),
(99, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 12, 0),
(100, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 4, 0),
(101, 'access_user_search', 'Access User Search', 0, 0, 'Controls whether a user can view the search user interface.', 4, 0),
(102, 'edit_gatherings', 'Edit Gatherings', 0, 0, 'Can edit the footprint and items in all gatherings.', 10, 0),
(103, 'edit_gathering_items', 'Edit Gathering Items', 0, 0, '', 15, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PileContents`
--

CREATE TABLE `PileContents` (
  `pcID` int(10) UNSIGNED NOT NULL,
  `pID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `PileContents`
--

INSERT INTO `PileContents` (`pcID`, `pID`, `itemID`, `itemType`, `quantity`, `timestamp`, `displayOrder`) VALUES
(1, 1, 23, 'BLOCK', 1, '2018-05-16 19:12:05', 1),
(2, 1, 49, 'BLOCK', 1, '2018-05-17 14:52:03', 2),
(3, 1, 56, 'BLOCK', 1, '2018-05-17 15:30:36', 3),
(4, 1, 158, 'BLOCK', 1, '2018-05-17 18:59:00', 4),
(5, 1, 157, 'BLOCK', 1, '2018-05-17 18:59:02', 5),
(6, 1, 253, 'BLOCK', 1, '2018-05-18 14:44:56', 6),
(7, 1, 417, 'BLOCK', 1, '2018-05-18 15:45:14', 7),
(8, 1, 238, 'BLOCK', 1, '2018-05-21 13:07:51', 8),
(9, 1, 95, 'BLOCK', 1, '2018-05-21 13:34:28', 9),
(10, 1, 94, 'BLOCK', 1, '2018-05-21 13:34:30', 10),
(11, 1, 96, 'BLOCK', 1, '2018-05-21 13:34:33', 11),
(12, 1, 97, 'BLOCK', 1, '2018-05-21 13:34:34', 12),
(13, 1, 98, 'BLOCK', 1, '2018-05-21 13:34:36', 13),
(14, 1, 457, 'BLOCK', 1, '2018-05-21 13:41:45', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Piles`
--

CREATE TABLE `Piles` (
  `pID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Piles`
--

INSERT INTO `Piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1, 1, 1, '2018-05-16 18:01:20', NULL, 'READY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `QueueMessages`
--

CREATE TABLE `QueueMessages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `QueuePageDuplicationRelations`
--

CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `originalCID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Queues`
--

CREATE TABLE `Queues` (
  `queue_id` int(10) UNSIGNED NOT NULL,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) UNSIGNED NOT NULL DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Sessions`
--

CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SignupRequests`
--

CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `SignupRequests`
--

INSERT INTO `SignupRequests` (`id`, `ipFrom`, `date_access`) VALUES
(1, 0x3766303030303031, '2018-05-21 13:00:09'),
(2, 0x3766303030303031, '2018-05-21 13:00:13'),
(3, 0x3766303030303031, '2018-05-21 13:00:33'),
(4, 0x3766303030303031, '2018-05-21 13:23:39'),
(5, 0x3030303030303030303030303030303030303030303030303030303030303031, '2018-08-27 22:50:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SocialLinks`
--

CREATE TABLE `SocialLinks` (
  `slID` int(10) UNSIGNED NOT NULL,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Stacks`
--

CREATE TABLE `Stacks` (
  `stID` int(10) UNSIGNED NOT NULL,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Stacks`
--

INSERT INTO `Stacks` (`stID`, `stName`, `stType`, `cID`, `stMultilingualSection`) VALUES
(1, 'Header Site Title', 20, 146, 0),
(2, 'Header Navigation', 20, 147, 0),
(3, 'Footer Legal', 20, 148, 0),
(4, 'Footer Navigation', 20, 149, 0),
(5, 'Footer Contact', 20, 150, 0),
(6, 'info_superior', 20, 151, 0),
(7, 'search', 20, 152, 0),
(8, 'Espacio 2', 20, 153, 0),
(9, 'Espacio 3', 20, 154, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `StyleCustomizerCustomCssRecords`
--

CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `sccRecordID` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `StyleCustomizerInlineStylePresets`
--

CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) UNSIGNED NOT NULL,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `StyleCustomizerInlineStyleSets`
--

CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(10) UNSIGNED NOT NULL,
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
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `StyleCustomizerInlineStyleSets`
--

INSERT INTO `StyleCustomizerInlineStyleSets` (`issID`, `backgroundColor`, `backgroundImageFileID`, `backgroundRepeat`, `backgroundSize`, `backgroundPosition`, `borderWidth`, `borderColor`, `borderStyle`, `borderRadius`, `baseFontSize`, `alignment`, `textColor`, `linkColor`, `paddingTop`, `paddingBottom`, `paddingLeft`, `paddingRight`, `marginTop`, `marginBottom`, `marginLeft`, `marginRight`, `rotate`, `boxShadowHorizontal`, `boxShadowVertical`, `boxShadowBlur`, `boxShadowSpread`, `boxShadowColor`, `customClass`, `hideOnExtraSmallDevice`, `hideOnSmallDevice`, `hideOnMediumDevice`, `hideOnLargeDevice`) VALUES
(1, NULL, 0, 'no-repeat', 'auto', '0% 0%', '1px', 'rgb(225, 225, 225)', 'solid', '4px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(2, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(3, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, '14px', 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(4, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, '20px', 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(5, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base_contenido paddind_10', 0, 0, 0, 0),
(6, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10px', '10px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(7, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10px', '10px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base_contenido paddind_10', 0, 0, 0, 0),
(8, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30px', '30px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(9, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(10, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(11, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(12, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(13, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(14, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', '6px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(15, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', '6px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(16, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', '6px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(17, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', '6px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(18, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(19, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, 'left', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(20, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, '14px', 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(21, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, 'left', NULL, NULL, NULL, NULL, NULL, NULL, '-15px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(22, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, 'left', NULL, NULL, NULL, NULL, NULL, NULL, '-15px', NULL, '-15px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(23, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, 'left', NULL, NULL, NULL, NULL, NULL, NULL, '-15px', '-15px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(24, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, '18px', 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(25, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, '17px', 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(26, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, '17px', 'right', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(27, NULL, 39, 'no-repeat', 'cover', 'left top', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20px', '20px', NULL, NULL, NULL, NULL, '30px', '30px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(28, NULL, 39, 'no-repeat', 'cover', 'left top', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20px', '20px', '30px', '30px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(29, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10px', '10px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(30, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10px', '10px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(31, NULL, 0, 'no-repeat', 'auto', '0% 0%', '1px', 'rgb(225, 225, 225)', 'solid', '4px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(32, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'animated slideInUp', 0, 0, 0, 0),
(33, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'animated slideInDown', 0, 0, 0, 0),
(34, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'animated slideInDown web_page', 0, 0, 0, 0),
(35, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-20px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'animated slideInDown web_page', 0, 0, 0, 0),
(36, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-10px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'animated slideInDown web_page', 0, 0, 0, 0),
(37, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, 'right', NULL, NULL, NULL, NULL, NULL, NULL, '-15px', '-15px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(38, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, 'right', NULL, NULL, NULL, NULL, NULL, '10px', '-15px', '-15px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(39, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', '5px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(40, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', '4px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(41, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', '4px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(42, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', '4px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(43, NULL, 0, 'no-repeat', 'auto', '0% 0%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15px', '15px', '4px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `StyleCustomizerValueLists`
--

CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `StyleCustomizerValueLists`
--

INSERT INTO `StyleCustomizerValueLists` (`scvlID`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `StyleCustomizerValues`
--

CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) UNSIGNED NOT NULL,
  `scvlID` int(10) UNSIGNED DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `StyleCustomizerValues`
--

INSERT INTO `StyleCustomizerValues` (`scvID`, `scvlID`, `value`) VALUES
(1, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:0;s:4:"\0*\0g";i:28;s:4:"\0*\0b";i:84;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:15:"headerBg-action";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(2, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:0;s:4:"\0*\0g";i:28;s:4:"\0*\0b";i:84;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:15:"footerBg-action";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(3, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:255;s:4:"\0*\0g";i:255;s:4:"\0*\0b";i:255;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:10:"footerText";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(4, 1, 'O:51:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\TypeValue":12:{s:13:"\0*\0fontFamily";s:17:"Arial, sans-serif";s:11:"\0*\0fontSize";O:51:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\SizeValue":5:{s:7:"\0*\0size";s:2:"14";s:7:"\0*\0unit";s:2:"px";s:11:"\0*\0variable";b:0;s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}s:8:"\0*\0color";O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:51;s:4:"\0*\0g";i:51;s:4:"\0*\0b";i:51;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";b:0;s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}s:13:"\0*\0lineHeight";i:-1;s:16:"\0*\0letterSpacing";i:-1;s:12:"\0*\0fontStyle";s:4:"none";s:13:"\0*\0fontWeight";s:3:"300";s:17:"\0*\0textDecoration";i:-1;s:16:"\0*\0textTransform";i:-1;s:11:"\0*\0variable";s:4:"body";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(5, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ImageValue":5:{s:11:"\0*\0imageUrl";s:63:"/template-concrete5/application/themes/TemplateV2-campanha/css/";s:6:"\0*\0fID";N;s:11:"\0*\0variable";s:7:"bg-site";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(6, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:255;s:4:"\0*\0g";i:255;s:4:"\0*\0b";i:255;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:12:"bgcolor-site";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(7, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:0;s:4:"\0*\0g";i:28;s:4:"\0*\0b";i:84;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:14:"MenuABg-action";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(8, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:255;s:4:"\0*\0g";i:255;s:4:"\0*\0b";i:255;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:10:"MenuATexto";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(9, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:255;s:4:"\0*\0g";i:255;s:4:"\0*\0b";i:255;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:12:"estiloslider";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(10, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:68;s:4:"\0*\0g";i:68;s:4:"\0*\0b";i:68;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:8:"bg-title";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(11, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:0;s:4:"\0*\0g";i:28;s:4:"\0*\0b";i:84;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:10:"linksTitle";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(12, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:0;s:4:"\0*\0g";i:28;s:4:"\0*\0b";i:84;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:7:"enlaces";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(13, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:0;s:4:"\0*\0g";i:0;s:4:"\0*\0b";i:0;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:8:"estiloh1";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(14, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:17;s:4:"\0*\0g";i:17;s:4:"\0*\0b";i:17;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:8:"estiloh2";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(15, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:34;s:4:"\0*\0g";i:34;s:4:"\0*\0b";i:34;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:8:"estiloh3";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(16, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:51;s:4:"\0*\0g";i:51;s:4:"\0*\0b";i:51;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:8:"estiloh4";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(17, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:68;s:4:"\0*\0g";i:68;s:4:"\0*\0b";i:68;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:8:"estiloh5";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(18, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:85;s:4:"\0*\0g";i:85;s:4:"\0*\0b";i:85;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:8:"estiloh6";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}'),
(19, 1, 'O:52:"Concrete\\Core\\StyleCustomizer\\Style\\Value\\ColorValue":7:{s:4:"\0*\0r";i:68;s:4:"\0*\0g";i:68;s:4:"\0*\0b";i:68;s:4:"\0*\0a";b:0;s:11:"\0*\0variable";s:14:"estiloparrafos";s:8:"\0*\0scvID";N;s:9:"\0*\0scvlID";N;}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SystemAntispamLibraries`
--

CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SystemCaptchaLibraries`
--

CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `SystemCaptchaLibraries`
--

INSERT INTO `SystemCaptchaLibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SystemContentEditorSnippets`
--

CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `SystemContentEditorSnippets`
--

INSERT INTO `SystemContentEditorSnippets` (`scsHandle`, `scsName`, `scsIsActive`, `pkgID`) VALUES
('page_name', 'Page Name', 1, 0),
('user_name', 'User Name', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SystemDatabaseMigrations`
--

CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `SystemDatabaseMigrations`
--

INSERT INTO `SystemDatabaseMigrations` (`version`) VALUES
('20160615000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SystemDatabaseQueryLog`
--

CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) UNSIGNED NOT NULL,
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TopicTrees`
--

CREATE TABLE `TopicTrees` (
  `treeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TopicTrees`
--

INSERT INTO `TopicTrees` (`treeID`, `topicTreeName`) VALUES
(2, 'Categorías');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TreeCategoryNodes`
--

CREATE TABLE `TreeCategoryNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TreeCategoryNodes`
--

INSERT INTO `TreeCategoryNodes` (`treeNodeID`, `treeNodeCategoryName`) VALUES
(5, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TreeGroupNodes`
--

CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TreeGroupNodes`
--

INSERT INTO `TreeGroupNodes` (`treeNodeID`, `gID`) VALUES
(2, 1),
(3, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TreeNodePermissionAssignments`
--

CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TreeNodePermissionAssignments`
--

INSERT INTO `TreeNodePermissionAssignments` (`treeNodeID`, `pkID`, `paID`) VALUES
(5, 65, 95),
(1, 81, 81),
(1, 82, 82),
(1, 83, 83),
(1, 84, 84),
(1, 85, 85);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TreeNodes`
--

CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeID` int(10) UNSIGNED DEFAULT '0',
  `treeID` int(10) UNSIGNED DEFAULT '0',
  `treeNodeParentID` int(10) UNSIGNED DEFAULT '0',
  `treeNodeDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TreeNodes`
--

INSERT INTO `TreeNodes` (`treeNodeID`, `treeNodeTypeID`, `treeID`, `treeNodeParentID`, `treeNodeDisplayOrder`, `treeNodeOverridePermissions`, `inheritPermissionsFromTreeNodeID`) VALUES
(1, 1, 1, 0, 0, 1, 1),
(2, 1, 1, 1, 0, 0, 1),
(3, 1, 1, 1, 1, 0, 1),
(4, 1, 1, 1, 2, 0, 1),
(5, 2, 2, 0, 0, 1, 5),
(7, 3, 2, 5, 0, 0, 5),
(8, 3, 2, 5, 1, 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TreeNodeTypes`
--

CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TreeNodeTypes`
--

INSERT INTO `TreeNodeTypes` (`treeNodeTypeID`, `treeNodeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'topic_category', 0),
(3, 'topic', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Trees`
--

CREATE TABLE `Trees` (
  `treeID` int(10) UNSIGNED NOT NULL,
  `treeTypeID` int(10) UNSIGNED DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Trees`
--

INSERT INTO `Trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
(1, 1, '2018-05-16 12:08:56', 1),
(2, 2, '2018-05-16 15:05:04', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TreeTopicNodes`
--

CREATE TABLE `TreeTopicNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TreeTopicNodes`
--

INSERT INTO `TreeTopicNodes` (`treeNodeID`, `treeNodeTopicName`) VALUES
(7, 'Informática'),
(8, 'Salud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TreeTypes`
--

CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) UNSIGNED NOT NULL,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `TreeTypes`
--

INSERT INTO `TreeTypes` (`treeTypeID`, `treeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'topic', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserAttributeKeys`
--

CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) UNSIGNED DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `UserAttributeKeys`
--

INSERT INTO `UserAttributeKeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(12, 0, 0, 1, 0, 1, 0, 1, 1),
(13, 0, 0, 1, 0, 1, 0, 2, 1),
(16, 0, 0, 0, 0, 0, 0, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserAttributeValues`
--

CREATE TABLE `UserAttributeValues` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `avID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserBannedIPs`
--

CREATE TABLE `UserBannedIPs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserGroups`
--

CREATE TABLE `UserGroups` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `UserGroups`
--

INSERT INTO `UserGroups` (`uID`, `gID`, `ugEntered`) VALUES
(1, 3, '2018-05-18 13:49:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserPermissionEditPropertyAccessList`
--

CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserPermissionEditPropertyAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserPermissionViewAttributeAccessList`
--

CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserPermissionViewAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserPointActions`
--

CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `UserPointActions`
--

INSERT INTO `UserPointActions` (`upaID`, `upaHandle`, `upaName`, `upaDefaultPoints`, `pkgID`, `upaHasCustomClass`, `upaIsActive`, `gBadgeID`) VALUES
(1, 'won_badge', 'Won a Badge', 5, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserPointHistory`
--

CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserPrivateMessages`
--

CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserPrivateMessagesTo`
--

CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Users`
--

CREATE TABLE `Users` (
  `uID` int(10) UNSIGNED NOT NULL,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) UNSIGNED DEFAULT '0',
  `uNumLogins` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `Users`
--

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uTimezone`, `uDefaultLanguage`) VALUES
(1, 'admin', 'gobiernoelectronico@senatics.gov.py', '$2a$12$omSqpYlje/lWaJXhtXqjG.7FpcDO5VrNNE/Ui/K4Ha4Pa1Zk3dtuq', '1', -1, 1, '2018-05-16 12:08:56', '2018-05-18 13:49:00', 0, 1535644170, 1535454258, 0x3030303030303030303030303030303030303030303030303030303030303031, 1535396086, 7, 1, NULL, 'es_PY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserSearchIndexAttributes`
--

CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserValidationHashes`
--

CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `WorkflowProgress`
--

CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `wpCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `WorkflowProgressCategories`
--

CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) UNSIGNED NOT NULL,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `WorkflowProgressCategories`
--

INSERT INTO `WorkflowProgressCategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `WorkflowProgressHistory`
--

CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) UNSIGNED NOT NULL,
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `WorkflowProgressHistory`
--

INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2018-05-16 17:43:07', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"1";}'),
(2, 2, '2018-05-16 17:45:15', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"2";}'),
(3, 3, '2018-05-16 18:04:02', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"4";s:4:"wrID";s:1:"3";}'),
(4, 4, '2018-05-16 18:06:14', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"5";s:4:"wrID";s:1:"4";}'),
(5, 5, '2018-05-16 18:16:00', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"6";s:4:"wrID";s:1:"5";}'),
(6, 6, '2018-05-16 18:16:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"7";s:4:"wrID";s:1:"6";}'),
(7, 7, '2018-05-16 18:16:56', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"8";s:4:"wrID";s:1:"7";}'),
(8, 8, '2018-05-16 18:18:36', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"9";s:4:"wrID";s:1:"8";}'),
(9, 9, '2018-05-16 18:25:58', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"10";s:4:"wrID";s:1:"9";}'),
(10, 10, '2018-05-16 18:31:42', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"158";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"10";}'),
(11, 11, '2018-05-16 18:43:45', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"158";s:4:"wrID";s:2:"11";}'),
(12, 12, '2018-05-16 18:44:02', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"12";}'),
(13, 13, '2018-05-16 19:12:10', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"13";}'),
(14, 14, '2018-05-16 19:46:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"161";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"14";}'),
(15, 15, '2018-05-16 19:47:06', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"155";s:4:"wrID";s:2:"15";}'),
(16, 16, '2018-05-16 19:47:10', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"156";s:4:"wrID";s:2:"16";}'),
(17, 17, '2018-05-16 19:47:54', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"162";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"17";}'),
(18, 18, '2018-05-16 19:48:37', 'O:46:"Concrete\\Core\\Workflow\\Request\\MovePageRequest":9:{s:12:"\0*\0targetCID";s:3:"161";s:14:"\0*\0wrStatusNum";i:50;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"16";s:3:"cID";s:3:"162";s:15:"saveOldPagePath";N;s:4:"wrID";s:2:"18";}'),
(19, 19, '2018-05-16 19:48:41', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"162";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"19";}'),
(20, 20, '2018-05-17 13:30:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"163";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"20";}'),
(21, 21, '2018-05-17 13:30:45', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"164";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"21";}'),
(22, 22, '2018-05-17 14:13:58', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"164";s:4:"wrID";s:2:"22";}'),
(23, 23, '2018-05-17 14:14:02', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"163";s:4:"wrID";s:2:"23";}'),
(24, 24, '2018-05-17 14:14:06', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"162";s:4:"wrID";s:2:"24";}'),
(25, 25, '2018-05-17 14:14:12', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"161";s:4:"wrID";s:2:"25";}'),
(26, 26, '2018-05-17 14:14:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"165";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"26";}'),
(27, 27, '2018-05-17 14:15:49', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"27";}'),
(28, 28, '2018-05-17 14:17:45', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"166";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"28";}'),
(29, 29, '2018-05-17 14:18:01', 'O:46:"Concrete\\Core\\Workflow\\Request\\MovePageRequest":9:{s:12:"\0*\0targetCID";s:3:"165";s:14:"\0*\0wrStatusNum";i:50;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"16";s:3:"cID";s:3:"166";s:15:"saveOldPagePath";N;s:4:"wrID";s:2:"29";}'),
(30, 30, '2018-05-17 14:35:59', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"166";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"30";}'),
(31, 31, '2018-05-17 14:41:16', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"166";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"31";}'),
(32, 32, '2018-05-17 14:41:43', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"166";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"32";}'),
(33, 33, '2018-05-17 14:42:04', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"169";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"33";}'),
(34, 34, '2018-05-17 14:43:11', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"170";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"34";}'),
(35, 35, '2018-05-17 14:43:21', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"170";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"35";}'),
(36, 36, '2018-05-17 14:43:44', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"170";s:4:"wrID";s:2:"36";}'),
(37, 37, '2018-05-17 14:44:29', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"165";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"37";}'),
(38, 38, '2018-05-17 14:44:52', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"165";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"38";}'),
(39, 39, '2018-05-17 14:45:14', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"171";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"39";}'),
(40, 40, '2018-05-17 14:46:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"172";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"40";}'),
(41, 41, '2018-05-17 14:47:24', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"171";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"41";}'),
(42, 42, '2018-05-17 14:47:52', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"171";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"42";}'),
(43, 43, '2018-05-17 14:48:38', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"169";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"43";}'),
(44, 44, '2018-05-17 14:53:15', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"166";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"44";}'),
(45, 45, '2018-05-17 14:55:23', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"169";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"45";}'),
(46, 46, '2018-05-17 14:55:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"169";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"46";}'),
(47, 47, '2018-05-17 15:00:41', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"172";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"47";}'),
(48, 48, '2018-05-17 15:09:44', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"48";}'),
(49, 49, '2018-05-17 15:15:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"49";}'),
(50, 50, '2018-05-17 15:18:23', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"174";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"50";}'),
(51, 51, '2018-05-17 15:19:14', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"174";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"51";}'),
(52, 52, '2018-05-17 15:23:53', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"52";}'),
(53, 53, '2018-05-17 15:24:38', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"174";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"53";}'),
(54, 54, '2018-05-17 15:27:23', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"174";s:4:"wrID";s:2:"54";}'),
(55, 55, '2018-05-17 15:28:42', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"175";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"55";}'),
(56, 56, '2018-05-17 15:29:47', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"175";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"56";}'),
(57, 57, '2018-05-17 15:30:39', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"57";}'),
(58, 58, '2018-05-17 15:31:00', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"11";s:4:"wrID";s:2:"58";}'),
(59, 59, '2018-05-17 15:32:11', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"12";s:4:"wrID";s:2:"59";}'),
(60, 60, '2018-05-17 15:34:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"176";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"60";}'),
(61, 61, '2018-05-17 15:35:35', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"177";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"61";}'),
(62, 62, '2018-05-17 15:42:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"177";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"62";}'),
(63, 63, '2018-05-17 15:52:06', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"177";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"63";}'),
(64, 64, '2018-05-17 15:57:56', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"13";s:4:"wrID";s:2:"64";}'),
(65, 65, '2018-05-17 16:00:10', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"14";s:4:"wrID";s:2:"65";}'),
(66, 66, '2018-05-17 16:01:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"15";s:4:"wrID";s:2:"66";}'),
(67, 67, '2018-05-17 16:04:09', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"16";s:4:"wrID";s:2:"67";}'),
(68, 68, '2018-05-17 19:03:44', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"17";s:4:"wrID";s:2:"68";}'),
(69, 69, '2018-05-17 19:04:44', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"18";s:4:"wrID";s:2:"69";}'),
(70, 70, '2018-05-17 19:05:04', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"19";s:4:"wrID";s:2:"70";}'),
(71, 71, '2018-05-17 19:05:53', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"20";s:4:"wrID";s:2:"71";}'),
(72, 72, '2018-05-17 19:06:16', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"21";s:4:"wrID";s:2:"72";}'),
(73, 73, '2018-05-18 12:09:12', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"176";s:4:"wrID";s:2:"73";}'),
(74, 74, '2018-05-18 12:09:18', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"175";s:4:"wrID";s:2:"74";}'),
(75, 75, '2018-05-18 12:11:08', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"189";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"75";}'),
(76, 76, '2018-05-18 12:15:14', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"190";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"76";}'),
(77, 77, '2018-05-18 14:00:54', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"77";}'),
(78, 78, '2018-05-18 14:03:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"78";}'),
(79, 79, '2018-05-18 14:07:51', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"79";}'),
(80, 80, '2018-05-18 14:08:16', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"80";}'),
(81, 81, '2018-05-18 14:09:12', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"81";}'),
(82, 82, '2018-05-18 14:10:03', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"82";}'),
(83, 83, '2018-05-18 14:10:39', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:1:"7";s:4:"wrID";s:2:"83";}'),
(84, 84, '2018-05-18 14:11:07', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:1:"8";s:4:"wrID";s:2:"84";}'),
(85, 85, '2018-05-18 14:12:16', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:1:"9";s:4:"wrID";s:2:"85";}'),
(86, 86, '2018-05-18 14:18:51', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"192";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"86";}'),
(87, 87, '2018-05-18 14:30:00', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"22";s:4:"wrID";s:2:"87";}'),
(88, 88, '2018-05-18 14:32:07', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"23";s:4:"wrID";s:2:"88";}'),
(89, 89, '2018-05-18 14:45:04', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"24";s:4:"wrID";s:2:"89";}'),
(90, 90, '2018-05-18 14:46:32', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"193";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"90";}'),
(91, 91, '2018-05-18 14:47:11', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"194";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"91";}'),
(92, 92, '2018-05-18 14:47:29', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"195";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"92";}'),
(93, 93, '2018-05-18 14:47:48', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"196";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"93";}'),
(94, 94, '2018-05-18 14:51:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"25";s:4:"wrID";s:2:"94";}'),
(95, 95, '2018-05-18 14:57:30', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"26";s:4:"wrID";s:2:"95";}'),
(96, 96, '2018-05-18 14:58:13', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"27";s:4:"wrID";s:2:"96";}'),
(97, 97, '2018-05-18 14:58:51', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"28";s:4:"wrID";s:2:"97";}'),
(98, 98, '2018-05-18 15:02:53', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"29";s:4:"wrID";s:2:"98";}'),
(99, 99, '2018-05-18 15:15:12', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"189";s:4:"wrID";s:2:"99";}'),
(100, 100, '2018-05-18 15:15:26', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"190";s:4:"wrID";s:3:"100";}'),
(101, 101, '2018-05-18 15:18:52', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"197";s:4:"cvID";s:1:"1";s:4:"wrID";s:3:"101";}'),
(102, 102, '2018-05-18 15:22:23', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"197";s:4:"wrID";s:3:"102";}'),
(103, 103, '2018-05-18 15:25:16', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"198";s:4:"cvID";s:1:"1";s:4:"wrID";s:3:"103";}'),
(104, 104, '2018-05-18 15:29:08', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"199";s:4:"cvID";s:1:"1";s:4:"wrID";s:3:"104";}'),
(105, 105, '2018-05-18 15:29:36', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"199";s:4:"cvID";s:1:"2";s:4:"wrID";s:3:"105";}'),
(106, 106, '2018-05-18 15:29:49', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"199";s:4:"cvID";s:1:"3";s:4:"wrID";s:3:"106";}'),
(107, 107, '2018-05-18 15:31:35', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"200";s:4:"cvID";s:1:"1";s:4:"wrID";s:3:"107";}'),
(108, 108, '2018-05-18 15:34:30', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"201";s:4:"cvID";s:1:"1";s:4:"wrID";s:3:"108";}'),
(109, 109, '2018-05-18 15:36:00', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"202";s:4:"cvID";s:1:"1";s:4:"wrID";s:3:"109";}'),
(110, 110, '2018-05-18 15:36:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"202";s:4:"cvID";s:1:"2";s:4:"wrID";s:3:"110";}'),
(111, 111, '2018-05-18 15:37:13', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"30";s:4:"wrID";s:3:"111";}'),
(112, 112, '2018-05-18 15:38:57', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"31";s:4:"wrID";s:3:"112";}'),
(113, 113, '2018-05-18 15:40:07', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"203";s:4:"cvID";s:1:"1";s:4:"wrID";s:3:"113";}'),
(114, 114, '2018-05-18 15:40:17', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"203";s:4:"wrID";s:3:"114";}'),
(115, 115, '2018-05-18 15:40:36', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"204";s:4:"cvID";s:1:"1";s:4:"wrID";s:3:"115";}'),
(116, 116, '2018-05-18 15:46:26', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"204";s:4:"cvID";s:1:"2";s:4:"wrID";s:3:"116";}'),
(117, 117, '2018-05-18 15:46:39', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"204";s:4:"cvID";s:1:"3";s:4:"wrID";s:3:"117";}'),
(118, 118, '2018-05-18 15:49:28', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"204";s:4:"cvID";s:1:"4";s:4:"wrID";s:3:"118";}'),
(119, 119, '2018-05-18 15:53:55', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"32";s:4:"wrID";s:3:"119";}'),
(120, 120, '2018-05-18 15:54:19', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"33";s:4:"wrID";s:3:"120";}'),
(121, 121, '2018-05-18 15:55:14', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"34";s:4:"wrID";s:3:"121";}'),
(122, 122, '2018-05-18 15:58:22', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"35";s:4:"wrID";s:3:"122";}'),
(123, 123, '2018-05-18 16:00:26', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"212";s:4:"cvID";s:1:"1";s:4:"wrID";s:3:"123";}'),
(124, 124, '2018-05-18 16:00:44', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"212";s:4:"cvID";s:1:"2";s:4:"wrID";s:3:"124";}'),
(125, 125, '2018-05-18 16:02:02', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"212";s:4:"cvID";s:1:"3";s:4:"wrID";s:3:"125";}'),
(126, 126, '2018-05-18 16:20:46', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"192";s:4:"cvID";s:1:"2";s:4:"wrID";s:3:"126";}'),
(127, 127, '2018-05-18 16:21:09', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"192";s:4:"cvID";s:1:"3";s:4:"wrID";s:3:"127";}'),
(128, 128, '2018-05-18 17:42:37', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"36";s:4:"wrID";s:3:"128";}'),
(129, 129, '2018-05-18 17:44:36', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"202";s:4:"cvID";s:1:"3";s:4:"wrID";s:3:"129";}'),
(130, 130, '2018-05-18 17:46:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"202";s:4:"cvID";s:1:"4";s:4:"wrID";s:3:"130";}'),
(131, 131, '2018-05-18 19:08:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"213";s:4:"cvID";s:1:"1";s:4:"wrID";s:3:"131";}'),
(132, 132, '2018-05-18 19:11:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"213";s:4:"cvID";s:1:"2";s:4:"wrID";s:3:"132";}'),
(133, 133, '2018-05-18 19:11:27', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"37";s:4:"wrID";s:3:"133";}'),
(134, 134, '2018-05-18 19:11:59', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"213";s:4:"cvID";s:1:"3";s:4:"wrID";s:3:"134";}'),
(135, 135, '2018-05-18 19:12:23', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"213";s:4:"cvID";s:1:"4";s:4:"wrID";s:3:"135";}'),
(136, 1, '2018-05-21 13:03:31', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"38";s:4:"wrID";s:1:"1";}'),
(137, 2, '2018-05-21 13:05:27', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"39";s:4:"wrID";s:1:"2";}'),
(138, 3, '2018-05-21 13:07:54', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:1:"9";s:4:"wrID";s:1:"3";}'),
(139, 4, '2018-05-21 13:08:30', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"40";s:4:"wrID";s:1:"4";}'),
(140, 5, '2018-05-21 13:28:11', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"202";s:4:"cvID";s:1:"5";s:4:"wrID";s:1:"5";}'),
(141, 6, '2018-05-21 13:28:29', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"202";s:4:"cvID";s:1:"6";s:4:"wrID";s:1:"6";}'),
(142, 7, '2018-05-21 13:28:57', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"201";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"7";}'),
(143, 8, '2018-05-21 13:29:13', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"201";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"8";}'),
(144, 9, '2018-05-21 13:29:31', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"202";s:4:"cvID";s:1:"7";s:4:"wrID";s:1:"9";}'),
(145, 10, '2018-05-21 13:34:39', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"10";}'),
(146, 11, '2018-05-21 13:45:31', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"202";s:4:"cvID";s:1:"8";s:4:"wrID";s:2:"11";}'),
(147, 12, '2018-05-21 13:49:06', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"202";s:4:"cvID";s:1:"9";s:4:"wrID";s:2:"12";}'),
(148, 13, '2018-05-21 13:49:18', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"198";s:4:"wrID";s:2:"13";}'),
(149, 14, '2018-05-21 13:49:22', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"199";s:4:"wrID";s:2:"14";}'),
(150, 15, '2018-05-21 13:49:26', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"200";s:4:"wrID";s:2:"15";}'),
(151, 16, '2018-05-21 13:49:30', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"201";s:4:"wrID";s:2:"16";}'),
(152, 17, '2018-05-21 13:49:48', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"202";s:4:"wrID";s:2:"17";}'),
(153, 18, '2018-05-21 13:49:57', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"215";s:4:"wrID";s:2:"18";}'),
(154, 19, '2018-05-21 13:50:02', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"216";s:4:"wrID";s:2:"19";}'),
(155, 20, '2018-05-21 13:54:37', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"218";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"20";}'),
(156, 21, '2018-05-21 13:55:48', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"218";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"21";}'),
(157, 22, '2018-05-21 13:58:06', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"219";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"22";}'),
(158, 23, '2018-05-21 13:59:50', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"220";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"23";}'),
(159, 24, '2018-05-21 14:02:02', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"221";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"24";}'),
(160, 25, '2018-05-21 14:03:30', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"222";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"25";}'),
(161, 26, '2018-05-21 14:04:37', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"222";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"26";}'),
(162, 27, '2018-05-21 14:09:49', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"223";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"27";}'),
(163, 28, '2018-05-21 14:10:57', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"223";s:4:"wrID";s:2:"28";}'),
(164, 29, '2018-05-21 14:11:55', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"29";}'),
(165, 30, '2018-05-21 14:13:37', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"218";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"30";}'),
(166, 31, '2018-05-21 14:14:30', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"218";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"31";}'),
(167, 32, '2018-05-21 14:15:57', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"7";s:4:"wrID";s:2:"32";}'),
(168, 33, '2018-05-21 14:23:37', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"41";s:4:"wrID";s:2:"33";}'),
(169, 34, '2018-05-21 14:25:12', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"42";s:4:"wrID";s:2:"34";}'),
(170, 1, '2018-08-27 18:58:08', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"43";s:4:"wrID";s:1:"1";}'),
(171, 2, '2018-08-27 18:59:04', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:2:"10";s:4:"wrID";s:1:"2";}'),
(172, 3, '2018-08-27 19:03:51', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"192";s:4:"wrID";s:1:"3";}'),
(173, 4, '2018-08-27 19:06:12', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"44";s:4:"wrID";s:1:"4";}'),
(174, 5, '2018-08-27 19:06:50', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"45";s:4:"wrID";s:1:"5";}'),
(175, 6, '2018-08-27 19:07:13', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"46";s:4:"wrID";s:1:"6";}'),
(176, 1, '2018-08-28 11:25:12', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"47";s:4:"wrID";s:1:"1";}'),
(177, 2, '2018-08-28 11:34:41', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"48";s:4:"wrID";s:1:"2";}'),
(178, 3, '2018-08-28 11:35:39', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"224";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"3";}'),
(179, 4, '2018-08-28 11:35:58', 'O:46:"Concrete\\Core\\Workflow\\Request\\MovePageRequest":9:{s:12:"\0*\0targetCID";s:3:"224";s:14:"\0*\0wrStatusNum";i:50;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"16";s:3:"cID";s:3:"218";s:15:"saveOldPagePath";N;s:4:"wrID";s:1:"4";}'),
(180, 5, '2018-08-28 11:36:04', 'O:46:"Concrete\\Core\\Workflow\\Request\\MovePageRequest":9:{s:12:"\0*\0targetCID";s:3:"224";s:14:"\0*\0wrStatusNum";i:50;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"16";s:3:"cID";s:3:"219";s:15:"saveOldPagePath";N;s:4:"wrID";s:1:"5";}'),
(181, 6, '2018-08-28 11:36:09', 'O:46:"Concrete\\Core\\Workflow\\Request\\MovePageRequest":9:{s:12:"\0*\0targetCID";s:3:"224";s:14:"\0*\0wrStatusNum";i:50;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"16";s:3:"cID";s:3:"220";s:15:"saveOldPagePath";N;s:4:"wrID";s:1:"6";}'),
(182, 7, '2018-08-28 11:36:14', 'O:46:"Concrete\\Core\\Workflow\\Request\\MovePageRequest":9:{s:12:"\0*\0targetCID";s:3:"224";s:14:"\0*\0wrStatusNum";i:50;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"16";s:3:"cID";s:3:"221";s:15:"saveOldPagePath";N;s:4:"wrID";s:1:"7";}');
INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(183, 8, '2018-08-28 11:36:18', 'O:46:"Concrete\\Core\\Workflow\\Request\\MovePageRequest":9:{s:12:"\0*\0targetCID";s:3:"224";s:14:"\0*\0wrStatusNum";i:50;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"16";s:3:"cID";s:3:"222";s:15:"saveOldPagePath";N;s:4:"wrID";s:1:"8";}'),
(184, 9, '2018-08-28 11:36:23', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"159";s:4:"wrID";s:1:"9";}'),
(185, 10, '2018-08-28 11:37:25', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"218";s:4:"wrID";s:2:"10";}'),
(186, 11, '2018-08-28 11:37:29', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"219";s:4:"wrID";s:2:"11";}'),
(187, 12, '2018-08-28 11:37:34', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"220";s:4:"wrID";s:2:"12";}'),
(188, 13, '2018-08-28 11:37:38', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"221";s:4:"wrID";s:2:"13";}'),
(189, 14, '2018-08-28 11:37:41', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"222";s:4:"wrID";s:2:"14";}'),
(190, 15, '2018-08-28 11:40:41', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"224";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"15";}'),
(191, 16, '2018-08-28 11:41:20', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"224";s:4:"wrID";s:2:"16";}'),
(192, 17, '2018-08-28 11:41:39', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"225";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"17";}'),
(193, 18, '2018-08-28 11:42:38', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"225";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"18";}'),
(194, 19, '2018-08-28 11:44:28', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"225";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"19";}'),
(195, 20, '2018-08-28 11:52:03', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"226";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"20";}'),
(196, 21, '2018-08-28 11:52:41', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"226";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"21";}'),
(197, 22, '2018-08-28 11:54:26', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"227";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"22";}'),
(198, 23, '2018-08-28 11:55:57', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"228";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"23";}'),
(199, 24, '2018-08-28 11:57:37', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"229";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"24";}'),
(200, 25, '2018-08-28 11:59:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"225";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"25";}'),
(201, 26, '2018-08-28 12:07:22', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"213";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"26";}'),
(202, 27, '2018-08-28 12:38:29', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"177";s:4:"wrID";s:2:"27";}'),
(203, 28, '2018-08-28 12:39:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"230";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"28";}'),
(204, 29, '2018-08-28 12:39:42', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"230";s:4:"wrID";s:2:"29";}'),
(205, 30, '2018-08-28 12:41:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"231";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"30";}'),
(206, 31, '2018-08-28 12:42:37', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"231";s:4:"wrID";s:2:"31";}'),
(207, 32, '2018-08-28 12:42:49', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"243";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"32";}'),
(208, 33, '2018-08-28 12:43:14', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"243";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"33";}'),
(209, 34, '2018-08-28 12:43:30', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"243";s:4:"wrID";s:2:"34";}'),
(210, 35, '2018-08-28 12:44:15', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"244";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"35";}'),
(211, 36, '2018-08-28 12:44:36', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"244";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"36";}'),
(212, 37, '2018-08-28 12:45:09', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"244";s:4:"wrID";s:2:"37";}'),
(213, 38, '2018-08-28 12:45:42', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"195";s:4:"wrID";s:2:"38";}'),
(214, 39, '2018-08-28 12:47:19', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"49";s:4:"wrID";s:2:"39";}'),
(215, 40, '2018-08-29 19:00:24', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"50";s:4:"wrID";s:2:"40";}'),
(216, 1, '2018-08-30 14:45:07', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"51";s:4:"wrID";s:1:"1";}'),
(217, 2, '2018-08-30 15:22:48', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"52";s:4:"wrID";s:1:"2";}'),
(218, 3, '2018-08-30 15:24:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"53";s:4:"wrID";s:1:"3";}'),
(219, 4, '2018-08-30 15:24:54', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"191";s:4:"cvID";s:2:"11";s:4:"wrID";s:1:"4";}'),
(220, 5, '2018-08-30 15:30:03', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"54";s:4:"wrID";s:1:"5";}'),
(221, 6, '2018-08-30 15:31:03', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"55";s:4:"wrID";s:1:"6";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `WorkflowRequestObjects`
--

CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) UNSIGNED NOT NULL,
  `wrObject` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Workflows`
--

CREATE TABLE `Workflows` (
  `wfID` int(10) UNSIGNED NOT NULL,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `WorkflowTypes`
--

CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) UNSIGNED NOT NULL,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `WorkflowTypes`
--

INSERT INTO `WorkflowTypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`),
  ADD KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  ADD KEY `arID` (`arID`),
  ADD KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`);

--
-- Indices de la tabla `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indices de la tabla `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
  ADD PRIMARY KEY (`arLayoutPresetID`),
  ADD KEY `arLayoutID` (`arLayoutID`),
  ADD KEY `arLayoutPresetName` (`arLayoutPresetName`);

--
-- Indices de la tabla `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Indices de la tabla `AreaLayoutsUsingPresets`
--
ALTER TABLE `AreaLayoutsUsingPresets`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Indices de la tabla `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indices de la tabla `AreaPermissionAssignments`
--
ALTER TABLE `AreaPermissionAssignments`
  ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indices de la tabla `AreaPermissionBlockTypeAccessList`
--
ALTER TABLE `AreaPermissionBlockTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indices de la tabla `AreaPermissionBlockTypeAccessListCustom`
--
ALTER TABLE `AreaPermissionBlockTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indices de la tabla `Areas`
--
ALTER TABLE `Areas`
  ADD PRIMARY KEY (`arID`),
  ADD KEY `arIsGlobal` (`arIsGlobal`),
  ADD KEY `cID` (`cID`),
  ADD KEY `arHandle` (`arHandle`),
  ADD KEY `arParentID` (`arParentID`);

--
-- Indices de la tabla `atAddress`
--
ALTER TABLE `atAddress`
  ADD PRIMARY KEY (`avID`);

--
-- Indices de la tabla `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
  ADD PRIMARY KEY (`atAddressCustomCountryID`),
  ADD KEY `akID` (`akID`);

--
-- Indices de la tabla `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indices de la tabla `atBoolean`
--
ALTER TABLE `atBoolean`
  ADD PRIMARY KEY (`avID`);

--
-- Indices de la tabla `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indices de la tabla `atDateTime`
--
ALTER TABLE `atDateTime`
  ADD PRIMARY KEY (`avID`);

--
-- Indices de la tabla `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indices de la tabla `atDefault`
--
ALTER TABLE `atDefault`
  ADD PRIMARY KEY (`avID`);

--
-- Indices de la tabla `atFile`
--
ALTER TABLE `atFile`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `fID` (`fID`);

--
-- Indices de la tabla `atNumber`
--
ALTER TABLE `atNumber`
  ADD PRIMARY KEY (`avID`);

--
-- Indices de la tabla `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  ADD PRIMARY KEY (`avID`,`TopicNodeID`),
  ADD KEY `TopicNodeID` (`TopicNodeID`);

--
-- Indices de la tabla `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `akID` (`akID`,`displayOrder`),
  ADD KEY `value` (`value`);

--
-- Indices de la tabla `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
  ADD PRIMARY KEY (`avID`,`atSelectOptionID`),
  ADD KEY `atSelectOptionID` (`atSelectOptionID`);

--
-- Indices de la tabla `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indices de la tabla `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
  ADD PRIMARY KEY (`avsID`),
  ADD KEY `avID` (`avID`,`avsID`);

--
-- Indices de la tabla `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indices de la tabla `atTopicSettings`
--
ALTER TABLE `atTopicSettings`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `akTopicTreeID` (`akTopicTreeID`);

--
-- Indices de la tabla `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  ADD PRIMARY KEY (`akCategoryID`),
  ADD KEY `akCategoryHandle` (`akCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`,`akCategoryID`);

--
-- Indices de la tabla `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  ADD PRIMARY KEY (`akID`),
  ADD UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`),
  ADD KEY `akCategoryID` (`akCategoryID`),
  ADD KEY `atID` (`atID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
  ADD PRIMARY KEY (`akID`,`asID`),
  ADD KEY `asID` (`asID`,`displayOrder`);

--
-- Indices de la tabla `AttributeSets`
--
ALTER TABLE `AttributeSets`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `asHandle` (`asHandle`),
  ADD KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`),
  ADD KEY `pkgID` (`pkgID`,`asID`);

--
-- Indices de la tabla `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
  ADD PRIMARY KEY (`atID`,`akCategoryID`),
  ADD KEY `akCategoryID` (`akCategoryID`);

--
-- Indices de la tabla `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  ADD PRIMARY KEY (`atID`),
  ADD UNIQUE KEY `atHandle` (`atHandle`),
  ADD KEY `pkgID` (`pkgID`,`atID`);

--
-- Indices de la tabla `AttributeValues`
--
ALTER TABLE `AttributeValues`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `akID` (`akID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `atID` (`atID`);

--
-- Indices de la tabla `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
  ADD PRIMARY KEY (`authTypeID`),
  ADD UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `BannedWords`
--
ALTER TABLE `BannedWords`
  ADD PRIMARY KEY (`bwID`);

--
-- Indices de la tabla `BasicWorkflowPermissionAssignments`
--
ALTER TABLE `BasicWorkflowPermissionAssignments`
  ADD PRIMARY KEY (`wfID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indices de la tabla `BasicWorkflowProgressData`
--
ALTER TABLE `BasicWorkflowProgressData`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `uIDStarted` (`uIDStarted`),
  ADD KEY `uIDCompleted` (`uIDCompleted`);

--
-- Indices de la tabla `BlockFeatureAssignments`
--
ALTER TABLE `BlockFeatureAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  ADD KEY `faID` (`faID`,`cID`,`cvID`),
  ADD KEY `bID` (`bID`);

--
-- Indices de la tabla `BlockPermissionAssignments`
--
ALTER TABLE `BlockPermissionAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  ADD KEY `bID` (`bID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indices de la tabla `BlockRelations`
--
ALTER TABLE `BlockRelations`
  ADD PRIMARY KEY (`brID`),
  ADD KEY `bID` (`bID`),
  ADD KEY `originalBID` (`originalBID`);

--
-- Indices de la tabla `Blocks`
--
ALTER TABLE `Blocks`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `btID` (`btID`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `BlockTypePermissionBlockTypeAccessList`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indices de la tabla `BlockTypePermissionBlockTypeAccessListCustom`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indices de la tabla `BlockTypes`
--
ALTER TABLE `BlockTypes`
  ADD PRIMARY KEY (`btID`),
  ADD UNIQUE KEY `btHandle` (`btHandle`),
  ADD KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `BlockTypeSetBlockTypes`
--
ALTER TABLE `BlockTypeSetBlockTypes`
  ADD PRIMARY KEY (`btID`,`btsID`),
  ADD KEY `btsID` (`btsID`,`displayOrder`);

--
-- Indices de la tabla `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
  ADD PRIMARY KEY (`btsID`),
  ADD UNIQUE KEY `btsHandle` (`btsHandle`),
  ADD KEY `btsDisplayOrder` (`btsDisplayOrder`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `btBoton`
--
ALTER TABLE `btBoton`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indices de la tabla `btCarrusel`
--
ALTER TABLE `btCarrusel`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btCarruselEntries`
--
ALTER TABLE `btCarruselEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `btContentFile`
--
ALTER TABLE `btContentFile`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indices de la tabla `btContentIframe`
--
ALTER TABLE `btContentIframe`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btContentImage`
--
ALTER TABLE `btContentImage`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indices de la tabla `btContentLocal`
--
ALTER TABLE `btContentLocal`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btConvenios`
--
ALTER TABLE `btConvenios`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btConveniosEntries`
--
ALTER TABLE `btConveniosEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `btCoreAreaLayout`
--
ALTER TABLE `btCoreAreaLayout`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `arLayoutID` (`arLayoutID`);

--
-- Indices de la tabla `btCoreConversation`
--
ALTER TABLE `btCoreConversation`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indices de la tabla `btCorePageTypeComposerControlOutput`
--
ALTER TABLE `btCorePageTypeComposerControlOutput`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`);

--
-- Indices de la tabla `btCoreScrapbookDisplay`
--
ALTER TABLE `btCoreScrapbookDisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Indices de la tabla `btCoreStackDisplay`
--
ALTER TABLE `btCoreStackDisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `stID` (`stID`);

--
-- Indices de la tabla `btDashboardNewsflowLatest`
--
ALTER TABLE `btDashboardNewsflowLatest`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btDateNavigation`
--
ALTER TABLE `btDateNavigation`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btEventCalendar`
--
ALTER TABLE `btEventCalendar`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btExternalForm`
--
ALTER TABLE `btExternalForm`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btFaq`
--
ALTER TABLE `btFaq`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bID` (`bID`,`sortOrder`);

--
-- Indices de la tabla `btFeature`
--
ALTER TABLE `btFeature`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btForm`
--
ALTER TABLE `btForm`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Indices de la tabla `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
  ADD PRIMARY KEY (`aID`),
  ADD KEY `asID` (`asID`),
  ADD KEY `msqID` (`msqID`);

--
-- Indices de la tabla `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
  ADD PRIMARY KEY (`qID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `msqID` (`msqID`),
  ADD KEY `bID` (`bID`,`questionSetId`);

--
-- Indices de la tabla `btGoogleMap`
--
ALTER TABLE `btGoogleMap`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btImageSlider`
--
ALTER TABLE `btImageSlider`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `btLeyTransparencia`
--
ALTER TABLE `btLeyTransparencia`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btLeyTransparenciaEntries`
--
ALTER TABLE `btLeyTransparenciaEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `btListaItems`
--
ALTER TABLE `btListaItems`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btListaItemsEntries`
--
ALTER TABLE `btListaItemsEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `btListarTramites`
--
ALTER TABLE `btListarTramites`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btListarTramitesEntries`
--
ALTER TABLE `btListarTramitesEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `btMapas`
--
ALTER TABLE `btMapas`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btMapasEntries`
--
ALTER TABLE `btMapasEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `btNavigation`
--
ALTER TABLE `btNavigation`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btNextPrevious`
--
ALTER TABLE `btNextPrevious`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btOpenData`
--
ALTER TABLE `btOpenData`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btPageAttributeDisplay`
--
ALTER TABLE `btPageAttributeDisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btPageList`
--
ALTER TABLE `btPageList`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indices de la tabla `btPageTitle`
--
ALTER TABLE `btPageTitle`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btPublicaciones`
--
ALTER TABLE `btPublicaciones`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btPublicacionesEntries`
--
ALTER TABLE `btPublicacionesEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `btRssDisplay`
--
ALTER TABLE `btRssDisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btSearch`
--
ALTER TABLE `btSearch`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
  ADD PRIMARY KEY (`btShareThisPageID`);

--
-- Indices de la tabla `btSlider`
--
ALTER TABLE `btSlider`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btSliderEntries`
--
ALTER TABLE `btSliderEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
  ADD PRIMARY KEY (`btSocialLinkID`),
  ADD KEY `bID` (`bID`,`displayOrder`),
  ADD KEY `slID` (`slID`);

--
-- Indices de la tabla `btSurvey`
--
ALTER TABLE `btSurvey`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
  ADD PRIMARY KEY (`optionID`),
  ADD KEY `bID` (`bID`,`displayOrder`);

--
-- Indices de la tabla `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
  ADD PRIMARY KEY (`resultID`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `cID` (`cID`,`optionID`,`bID`),
  ADD KEY `bID` (`bID`,`cID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `btSvgSocialMediaIcons`
--
ALTER TABLE `btSvgSocialMediaIcons`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btSwitchLanguage`
--
ALTER TABLE `btSwitchLanguage`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btTags`
--
ALTER TABLE `btTags`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btTestimonial`
--
ALTER TABLE `btTestimonial`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btTopicList`
--
ALTER TABLE `btTopicList`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btTransparenciaActiva`
--
ALTER TABLE `btTransparenciaActiva`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btTransparenciaActivaEntries`
--
ALTER TABLE `btTransparenciaActivaEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `btVideo`
--
ALTER TABLE `btVideo`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `btYouTube`
--
ALTER TABLE `btYouTube`
  ADD PRIMARY KEY (`bID`);

--
-- Indices de la tabla `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
  ADD PRIMARY KEY (`cID`,`cvID`,`akID`),
  ADD KEY `akID` (`akID`),
  ADD KEY `avID` (`avID`);

--
-- Indices de la tabla `Collections`
--
ALTER TABLE `Collections`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cIDDateModified` (`cID`,`cDateModified`),
  ADD KEY `cDateModified` (`cDateModified`),
  ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Indices de la tabla `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
  ADD PRIMARY KEY (`cID`);

--
-- Indices de la tabla `CollectionVersionAreaStyles`
--
ALTER TABLE `CollectionVersionAreaStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  ADD KEY `issID` (`issID`);

--
-- Indices de la tabla `CollectionVersionBlocks`
--
ALTER TABLE `CollectionVersionBlocks`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`);

--
-- Indices de la tabla `CollectionVersionBlocksCacheSettings`
--
ALTER TABLE `CollectionVersionBlocksCacheSettings`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indices de la tabla `CollectionVersionBlocksOutputCache`
--
ALTER TABLE `CollectionVersionBlocksOutputCache`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indices de la tabla `CollectionVersionBlockStyles`
--
ALTER TABLE `CollectionVersionBlockStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`issID`),
  ADD KEY `issID` (`issID`);

--
-- Indices de la tabla `CollectionVersionFeatureAssignments`
--
ALTER TABLE `CollectionVersionFeatureAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Indices de la tabla `CollectionVersionRelatedEdits`
--
ALTER TABLE `CollectionVersionRelatedEdits`
  ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Indices de la tabla `CollectionVersions`
--
ALTER TABLE `CollectionVersions`
  ADD PRIMARY KEY (`cID`,`cvID`),
  ADD KEY `cvIsApproved` (`cvIsApproved`),
  ADD KEY `cvAuthorUID` (`cvAuthorUID`),
  ADD KEY `cvApproverUID` (`cvApproverUID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indices de la tabla `CollectionVersionThemeCustomStyles`
--
ALTER TABLE `CollectionVersionThemeCustomStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indices de la tabla `Config`
--
ALTER TABLE `Config`
  ADD PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  ADD KEY `configGroup` (`configGroup`);

--
-- Indices de la tabla `ConfigStore`
--
ALTER TABLE `ConfigStore`
  ADD PRIMARY KEY (`cfKey`,`uID`),
  ADD KEY `uID` (`uID`,`cfKey`),
  ADD KEY `pkgID` (`pkgID`,`cfKey`);

--
-- Indices de la tabla `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
  ADD PRIMARY KEY (`cnvDiscussionID`),
  ADD KEY `cID` (`cID`);

--
-- Indices de la tabla `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
  ADD PRIMARY KEY (`cnvEditorID`),
  ADD KEY `pkgID` (`pkgID`,`cnvEditorHandle`);

--
-- Indices de la tabla `ConversationFeatureDetailAssignments`
--
ALTER TABLE `ConversationFeatureDetailAssignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indices de la tabla `ConversationFlaggedMessages`
--
ALTER TABLE `ConversationFlaggedMessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`);

--
-- Indices de la tabla `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
  ADD PRIMARY KEY (`cnvMessageFlagTypeID`),
  ADD UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`);

--
-- Indices de la tabla `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
  ADD PRIMARY KEY (`cnvMessageAttachmentID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`),
  ADD KEY `fID` (`fID`);

--
-- Indices de la tabla `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
  ADD PRIMARY KEY (`cnvMessageRatingID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  ADD KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `cnvMessageParentID` (`cnvMessageParentID`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `ConversationPermissionAddMessageAccessList`
--
ALTER TABLE `ConversationPermissionAddMessageAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indices de la tabla `ConversationPermissionAssignments`
--
ALTER TABLE `ConversationPermissionAssignments`
  ADD PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indices de la tabla `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
  ADD PRIMARY KEY (`cnvRatingTypeID`),
  ADD UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  ADD KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`);

--
-- Indices de la tabla `Conversations`
--
ALTER TABLE `Conversations`
  ADD PRIMARY KEY (`cnvID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `cnvParentMessageID` (`cnvParentMessageID`);

--
-- Indices de la tabla `ConversationSubscriptions`
--
ALTER TABLE `ConversationSubscriptions`
  ADD PRIMARY KEY (`cnvID`,`uID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
  ADD PRIMARY KEY (`dsID`),
  ADD KEY `fID` (`fID`,`timestamp`),
  ADD KEY `fvID` (`fID`,`fvID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `rcID` (`rcID`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `dsEventCalendar`
--
ALTER TABLE `dsEventCalendar`
  ADD PRIMARY KEY (`calendarID`);

--
-- Indices de la tabla `dsEventCalendarEvents`
--
ALTER TABLE `dsEventCalendarEvents`
  ADD PRIMARY KEY (`eventID`);

--
-- Indices de la tabla `dsEventCalendarSettings`
--
ALTER TABLE `dsEventCalendarSettings`
  ADD PRIMARY KEY (`settingID`);

--
-- Indices de la tabla `dsEventCalendarTypes`
--
ALTER TABLE `dsEventCalendarTypes`
  ADD PRIMARY KEY (`typeID`);

--
-- Indices de la tabla `dsOpenData`
--
ALTER TABLE `dsOpenData`
  ADD PRIMARY KEY (`opendataID`);

--
-- Indices de la tabla `dsOpenDataDataset`
--
ALTER TABLE `dsOpenDataDataset`
  ADD PRIMARY KEY (`datasetsID`);

--
-- Indices de la tabla `dsOpenDataDictionary`
--
ALTER TABLE `dsOpenDataDictionary`
  ADD PRIMARY KEY (`dictionaryID`);

--
-- Indices de la tabla `dsOpenDataFile`
--
ALTER TABLE `dsOpenDataFile`
  ADD PRIMARY KEY (`fileID`),
  ADD KEY `fID` (`fID`);

--
-- Indices de la tabla `dsOpenDataFormat`
--
ALTER TABLE `dsOpenDataFormat`
  ADD PRIMARY KEY (`formatID`);

--
-- Indices de la tabla `dsOpenDataLicense`
--
ALTER TABLE `dsOpenDataLicense`
  ADD PRIMARY KEY (`licenseID`);

--
-- Indices de la tabla `dsOpenDataResource`
--
ALTER TABLE `dsOpenDataResource`
  ADD PRIMARY KEY (`resourceID`);

--
-- Indices de la tabla `dsOpenDataSettings`
--
ALTER TABLE `dsOpenDataSettings`
  ADD PRIMARY KEY (`settingID`);

--
-- Indices de la tabla `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `feID` (`feID`),
  ADD KEY `fcID` (`fcID`);

--
-- Indices de la tabla `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
  ADD PRIMARY KEY (`fcID`),
  ADD UNIQUE KEY `fcHandle` (`fcHandle`),
  ADD KEY `pkgID` (`pkgID`,`fcID`);

--
-- Indices de la tabla `Features`
--
ALTER TABLE `Features`
  ADD PRIMARY KEY (`feID`),
  ADD UNIQUE KEY `feHandle` (`feHandle`),
  ADD KEY `pkgID` (`pkgID`,`feID`);

--
-- Indices de la tabla `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
  ADD PRIMARY KEY (`fID`,`fvID`,`akID`),
  ADD KEY `akID` (`akID`),
  ADD KEY `avID` (`avID`);

--
-- Indices de la tabla `FileImageThumbnailPaths`
--
ALTER TABLE `FileImageThumbnailPaths`
  ADD UNIQUE KEY `thumbnailPathID` (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`);

--
-- Indices de la tabla `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
  ADD PRIMARY KEY (`ftTypeID`);

--
-- Indices de la tabla `FilePermissionAssignments`
--
ALTER TABLE `FilePermissionAssignments`
  ADD PRIMARY KEY (`fID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indices de la tabla `FilePermissionFileTypes`
--
ALTER TABLE `FilePermissionFileTypes`
  ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  ADD KEY `gID` (`gID`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `Files`
--
ALTER TABLE `Files`
  ADD PRIMARY KEY (`fID`,`uID`,`fslID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `fslID` (`fslID`),
  ADD KEY `ocID` (`ocID`),
  ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Indices de la tabla `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
  ADD PRIMARY KEY (`fID`);

--
-- Indices de la tabla `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
  ADD PRIMARY KEY (`fsfID`),
  ADD KEY `fID` (`fID`),
  ADD KEY `fsID` (`fsID`);

--
-- Indices de la tabla `FileSetPermissionAssignments`
--
ALTER TABLE `FileSetPermissionAssignments`
  ADD PRIMARY KEY (`fsID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indices de la tabla `FileSetPermissionFileTypeAccessList`
--
ALTER TABLE `FileSetPermissionFileTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indices de la tabla `FileSetPermissionFileTypeAccessListCustom`
--
ALTER TABLE `FileSetPermissionFileTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`extension`),
  ADD KEY `peID` (`peID`);

--
-- Indices de la tabla `FileSets`
--
ALTER TABLE `FileSets`
  ADD PRIMARY KEY (`fsID`),
  ADD KEY `uID` (`uID`,`fsType`,`fsName`),
  ADD KEY `fsName` (`fsName`),
  ADD KEY `fsType` (`fsType`);

--
-- Indices de la tabla `FileSetSavedSearches`
--
ALTER TABLE `FileSetSavedSearches`
  ADD PRIMARY KEY (`fsID`);

--
-- Indices de la tabla `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
  ADD PRIMARY KEY (`fslID`);

--
-- Indices de la tabla `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
  ADD PRIMARY KEY (`fslTypeID`),
  ADD UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
  ADD PRIMARY KEY (`fvlID`),
  ADD KEY `fvID` (`fID`,`fvID`,`fvlID`);

--
-- Indices de la tabla `FileVersions`
--
ALTER TABLE `FileVersions`
  ADD PRIMARY KEY (`fID`,`fvID`),
  ADD KEY `fvExtension` (`fvExtension`),
  ADD KEY `fvType` (`fvType`),
  ADD KEY `fvFilename` (`fvFilename`);

--
-- Indices de la tabla `gaPage`
--
ALTER TABLE `gaPage`
  ADD PRIMARY KEY (`gaiID`),
  ADD KEY `cID` (`cID`);

--
-- Indices de la tabla `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
  ADD PRIMARY KEY (`gcsID`),
  ADD KEY `gaID` (`gaID`),
  ADD KEY `gasID` (`gasID`);

--
-- Indices de la tabla `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
  ADD PRIMARY KEY (`gasID`),
  ADD UNIQUE KEY `gasHandle` (`gasHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
  ADD PRIMARY KEY (`gafaID`),
  ADD KEY `gaiID` (`gaiID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Indices de la tabla `GatheringItems`
--
ALTER TABLE `GatheringItems`
  ADD PRIMARY KEY (`gaiID`),
  ADD UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  ADD KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  ADD KEY `gasID` (`gasID`);

--
-- Indices de la tabla `GatheringItemSelectedTemplates`
--
ALTER TABLE `GatheringItemSelectedTemplates`
  ADD PRIMARY KEY (`gaiID`,`gatID`),
  ADD UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `gatID` (`gatID`);

--
-- Indices de la tabla `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
  ADD PRIMARY KEY (`gfeID`),
  ADD KEY `gatID` (`gatID`),
  ADD KEY `feID` (`feID`,`gatID`);

--
-- Indices de la tabla `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
  ADD PRIMARY KEY (`gatID`),
  ADD UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
  ADD PRIMARY KEY (`gatTypeID`),
  ADD UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `GatheringPermissionAssignments`
--
ALTER TABLE `GatheringPermissionAssignments`
  ADD PRIMARY KEY (`gaID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indices de la tabla `Gatherings`
--
ALTER TABLE `Gatherings`
  ADD PRIMARY KEY (`gaID`),
  ADD KEY `gaDateLastUpdated` (`gaDateLastUpdated`);

--
-- Indices de la tabla `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`gID`),
  ADD KEY `gName` (`gName`),
  ADD KEY `gBadgeFID` (`gBadgeFID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gPath` (`gPath`(255));

--
-- Indices de la tabla `GroupSetGroups`
--
ALTER TABLE `GroupSetGroups`
  ADD PRIMARY KEY (`gID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indices de la tabla `GroupSets`
--
ALTER TABLE `GroupSets`
  ADD PRIMARY KEY (`gsID`),
  ADD KEY `gsName` (`gsName`),
  ADD KEY `pkgID` (`pkgID`,`gsID`);

--
-- Indices de la tabla `Jobs`
--
ALTER TABLE `Jobs`
  ADD PRIMARY KEY (`jID`),
  ADD UNIQUE KEY `jHandle` (`jHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  ADD KEY `jDateLastRun` (`jDateLastRun`,`jID`);

--
-- Indices de la tabla `JobSetJobs`
--
ALTER TABLE `JobSetJobs`
  ADD PRIMARY KEY (`jsID`,`jID`),
  ADD KEY `jID` (`jID`);

--
-- Indices de la tabla `JobSets`
--
ALTER TABLE `JobSets`
  ADD PRIMARY KEY (`jsID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `jsName` (`jsName`);

--
-- Indices de la tabla `JobsLog`
--
ALTER TABLE `JobsLog`
  ADD PRIMARY KEY (`jlID`),
  ADD KEY `jID` (`jID`);

--
-- Indices de la tabla `Logs`
--
ALTER TABLE `Logs`
  ADD PRIMARY KEY (`logID`),
  ADD KEY `channel` (`channel`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `MailImporters`
--
ALTER TABLE `MailImporters`
  ADD PRIMARY KEY (`miID`),
  ADD UNIQUE KEY `miHandle` (`miHandle`),
  ADD KEY `pkgID` (`pkgID`,`miID`);

--
-- Indices de la tabla `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
  ADD PRIMARY KEY (`mvhID`),
  ADD UNIQUE KEY `mHash` (`mHash`),
  ADD KEY `miID` (`miID`);

--
-- Indices de la tabla `MultilingualPageRelations`
--
ALTER TABLE `MultilingualPageRelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`);

--
-- Indices de la tabla `MultilingualSections`
--
ALTER TABLE `MultilingualSections`
  ADD PRIMARY KEY (`cID`);

--
-- Indices de la tabla `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
  ADD PRIMARY KEY (`mtID`);

--
-- Indices de la tabla `OauthUserMap`
--
ALTER TABLE `OauthUserMap`
  ADD PRIMARY KEY (`user_id`,`namespace`),
  ADD UNIQUE KEY `oauth_binding` (`binding`,`namespace`);

--
-- Indices de la tabla `Packages`
--
ALTER TABLE `Packages`
  ADD PRIMARY KEY (`pkgID`),
  ADD UNIQUE KEY `pkgHandle` (`pkgHandle`);

--
-- Indices de la tabla `PageFeeds`
--
ALTER TABLE `PageFeeds`
  ADD PRIMARY KEY (`pfID`),
  ADD UNIQUE KEY `pfHandle` (`pfHandle`);

--
-- Indices de la tabla `PagePaths`
--
ALTER TABLE `PagePaths`
  ADD PRIMARY KEY (`ppID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `ppIsCanonical` (`ppIsCanonical`),
  ADD KEY `cPath` (`cPath`(255));

--
-- Indices de la tabla `PagePermissionAssignments`
--
ALTER TABLE `PagePermissionAssignments`
  ADD PRIMARY KEY (`cID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indices de la tabla `PagePermissionPageTypeAccessList`
--
ALTER TABLE `PagePermissionPageTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indices de la tabla `PagePermissionPageTypeAccessListCustom`
--
ALTER TABLE `PagePermissionPageTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`ptID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indices de la tabla `PagePermissionPropertyAccessList`
--
ALTER TABLE `PagePermissionPropertyAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `PagePermissionPropertyAttributeAccessListCustom`
--
ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indices de la tabla `PagePermissionThemeAccessList`
--
ALTER TABLE `PagePermissionThemeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indices de la tabla `PagePermissionThemeAccessListCustom`
--
ALTER TABLE `PagePermissionThemeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `pThemeID` (`pThemeID`);

--
-- Indices de la tabla `Pages`
--
ALTER TABLE `Pages`
  ADD PRIMARY KEY (`cID`,`ptID`),
  ADD KEY `cParentID` (`cParentID`),
  ADD KEY `cIsActive` (`cID`,`cIsActive`),
  ADD KEY `cCheckedOutUID` (`cCheckedOutUID`),
  ADD KEY `uID` (`uID`,`cPointerID`),
  ADD KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  ADD KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  ADD KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`);

--
-- Indices de la tabla `PageSearchIndex`
--
ALTER TABLE `PageSearchIndex`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cDateLastIndexed` (`cDateLastIndexed`),
  ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  ADD KEY `cRequiresReindex` (`cRequiresReindex`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `cName` (`cName`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `cDescription` (`cDescription`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `content` (`content`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Indices de la tabla `PageTemplates`
--
ALTER TABLE `PageTemplates`
  ADD PRIMARY KEY (`pTemplateID`),
  ADD UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `PageThemeCustomStyles`
--
ALTER TABLE `PageThemeCustomStyles`
  ADD PRIMARY KEY (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indices de la tabla `PageThemes`
--
ALTER TABLE `PageThemes`
  ADD PRIMARY KEY (`pThemeID`),
  ADD UNIQUE KEY `ptHandle` (`pThemeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
  ADD PRIMARY KEY (`ptComposerControlTypeID`),
  ADD UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`);

--
-- Indices de la tabla `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indices de la tabla `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
  ADD PRIMARY KEY (`ptComposerOutputBlockID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indices de la tabla `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
  ADD PRIMARY KEY (`ptComposerOutputControlID`),
  ADD KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indices de la tabla `PageTypePageTemplateDefaultPages`
--
ALTER TABLE `PageTypePageTemplateDefaultPages`
  ADD PRIMARY KEY (`pTemplateID`,`ptID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `cID` (`cID`);

--
-- Indices de la tabla `PageTypePageTemplates`
--
ALTER TABLE `PageTypePageTemplates`
  ADD PRIMARY KEY (`ptID`,`pTemplateID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indices de la tabla `PageTypePermissionAssignments`
--
ALTER TABLE `PageTypePermissionAssignments`
  ADD PRIMARY KEY (`ptID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indices de la tabla `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
  ADD PRIMARY KEY (`ptPublishTargetTypeID`),
  ADD KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `PageTypes`
--
ALTER TABLE `PageTypes`
  ADD PRIMARY KEY (`ptID`),
  ADD UNIQUE KEY `ptHandle` (`ptHandle`),
  ADD KEY `pkgID` (`pkgID`,`ptID`);

--
-- Indices de la tabla `PageWorkflowProgress`
--
ALTER TABLE `PageWorkflowProgress`
  ADD PRIMARY KEY (`cID`,`wpID`),
  ADD KEY `wpID` (`wpID`);

--
-- Indices de la tabla `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
  ADD PRIMARY KEY (`paID`);

--
-- Indices de la tabla `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
  ADD PRIMARY KEY (`peID`),
  ADD KEY `petID` (`petID`);

--
-- Indices de la tabla `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
  ADD PRIMARY KEY (`pegID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `gID` (`gID`);

--
-- Indices de la tabla `PermissionAccessEntityGroupSets`
--
ALTER TABLE `PermissionAccessEntityGroupSets`
  ADD PRIMARY KEY (`peID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indices de la tabla `PermissionAccessEntityTypeCategories`
--
ALTER TABLE `PermissionAccessEntityTypeCategories`
  ADD PRIMARY KEY (`petID`,`pkCategoryID`),
  ADD KEY `pkCategoryID` (`pkCategoryID`);

--
-- Indices de la tabla `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
  ADD PRIMARY KEY (`petID`),
  ADD UNIQUE KEY `petHandle` (`petHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `PermissionAccessEntityUsers`
--
ALTER TABLE `PermissionAccessEntityUsers`
  ADD PRIMARY KEY (`peID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indices de la tabla `PermissionAccessList`
--
ALTER TABLE `PermissionAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `accessType` (`accessType`),
  ADD KEY `peID` (`peID`),
  ADD KEY `peID_accessType` (`peID`,`accessType`),
  ADD KEY `pdID` (`pdID`),
  ADD KEY `permissionAccessDuration` (`paID`,`pdID`);

--
-- Indices de la tabla `PermissionAccessWorkflows`
--
ALTER TABLE `PermissionAccessWorkflows`
  ADD PRIMARY KEY (`paID`,`wfID`),
  ADD KEY `wfID` (`wfID`);

--
-- Indices de la tabla `PermissionAssignments`
--
ALTER TABLE `PermissionAssignments`
  ADD PRIMARY KEY (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indices de la tabla `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
  ADD PRIMARY KEY (`pdID`);

--
-- Indices de la tabla `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
  ADD PRIMARY KEY (`pkCategoryID`),
  ADD UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
  ADD PRIMARY KEY (`pkID`),
  ADD UNIQUE KEY `akHandle` (`pkHandle`),
  ADD KEY `pkCategoryID` (`pkCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `PileContents`
--
ALTER TABLE `PileContents`
  ADD PRIMARY KEY (`pcID`),
  ADD KEY `pID` (`pID`,`displayOrder`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `itemType` (`itemType`,`itemID`,`pID`);

--
-- Indices de la tabla `Piles`
--
ALTER TABLE `Piles`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `uID` (`uID`,`name`);

--
-- Indices de la tabla `QueueMessages`
--
ALTER TABLE `QueueMessages`
  ADD PRIMARY KEY (`message_id`),
  ADD UNIQUE KEY `message_handle` (`handle`),
  ADD KEY `message_queueid` (`queue_id`);

--
-- Indices de la tabla `QueuePageDuplicationRelations`
--
ALTER TABLE `QueuePageDuplicationRelations`
  ADD PRIMARY KEY (`cID`,`originalCID`),
  ADD KEY `originalCID` (`originalCID`,`queue_name`);

--
-- Indices de la tabla `Queues`
--
ALTER TABLE `Queues`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `queue_name` (`queue_name`);

--
-- Indices de la tabla `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`sessionID`);

--
-- Indices de la tabla `SignupRequests`
--
ALTER TABLE `SignupRequests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipFrom` (`ipFrom`(32));

--
-- Indices de la tabla `SocialLinks`
--
ALTER TABLE `SocialLinks`
  ADD PRIMARY KEY (`slID`),
  ADD UNIQUE KEY `ssHandle` (`ssHandle`);

--
-- Indices de la tabla `Stacks`
--
ALTER TABLE `Stacks`
  ADD PRIMARY KEY (`stID`),
  ADD KEY `stType` (`stType`),
  ADD KEY `stName` (`stName`),
  ADD KEY `cID` (`cID`);

--
-- Indices de la tabla `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
  ADD PRIMARY KEY (`sccRecordID`);

--
-- Indices de la tabla `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
  ADD PRIMARY KEY (`pssPresetID`),
  ADD KEY `issID` (`issID`);

--
-- Indices de la tabla `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
  ADD PRIMARY KEY (`issID`);

--
-- Indices de la tabla `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
  ADD PRIMARY KEY (`scvlID`);

--
-- Indices de la tabla `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
  ADD PRIMARY KEY (`scvID`),
  ADD KEY `scvlID` (`scvlID`);

--
-- Indices de la tabla `SystemAntispamLibraries`
--
ALTER TABLE `SystemAntispamLibraries`
  ADD PRIMARY KEY (`saslHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `SystemCaptchaLibraries`
--
ALTER TABLE `SystemCaptchaLibraries`
  ADD PRIMARY KEY (`sclHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `SystemContentEditorSnippets`
--
ALTER TABLE `SystemContentEditorSnippets`
  ADD PRIMARY KEY (`scsHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `SystemDatabaseMigrations`
--
ALTER TABLE `SystemDatabaseMigrations`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `SystemDatabaseQueryLog`
--
ALTER TABLE `SystemDatabaseQueryLog`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `TopicTrees`
--
ALTER TABLE `TopicTrees`
  ADD PRIMARY KEY (`treeID`);

--
-- Indices de la tabla `TreeCategoryNodes`
--
ALTER TABLE `TreeCategoryNodes`
  ADD PRIMARY KEY (`treeNodeID`);

--
-- Indices de la tabla `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `gID` (`gID`);

--
-- Indices de la tabla `TreeNodePermissionAssignments`
--
ALTER TABLE `TreeNodePermissionAssignments`
  ADD PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indices de la tabla `TreeNodes`
--
ALTER TABLE `TreeNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `treeNodeParentID` (`treeNodeParentID`),
  ADD KEY `treeNodeTypeID` (`treeNodeTypeID`),
  ADD KEY `treeID` (`treeID`),
  ADD KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`);

--
-- Indices de la tabla `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
  ADD PRIMARY KEY (`treeNodeTypeID`),
  ADD UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `Trees`
--
ALTER TABLE `Trees`
  ADD PRIMARY KEY (`treeID`),
  ADD KEY `treeTypeID` (`treeTypeID`);

--
-- Indices de la tabla `TreeTopicNodes`
--
ALTER TABLE `TreeTopicNodes`
  ADD PRIMARY KEY (`treeNodeID`);

--
-- Indices de la tabla `TreeTypes`
--
ALTER TABLE `TreeTypes`
  ADD PRIMARY KEY (`treeTypeID`),
  ADD UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indices de la tabla `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
  ADD PRIMARY KEY (`uID`,`akID`),
  ADD KEY `akID` (`akID`),
  ADD KEY `avID` (`avID`);

--
-- Indices de la tabla `UserBannedIPs`
--
ALTER TABLE `UserBannedIPs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32));

--
-- Indices de la tabla `UserGroups`
--
ALTER TABLE `UserGroups`
  ADD PRIMARY KEY (`uID`,`gID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `gID` (`gID`);

--
-- Indices de la tabla `UserPermissionEditPropertyAccessList`
--
ALTER TABLE `UserPermissionEditPropertyAccessList`
  ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indices de la tabla `UserPermissionEditPropertyAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indices de la tabla `UserPermissionViewAttributeAccessList`
--
ALTER TABLE `UserPermissionViewAttributeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indices de la tabla `UserPermissionViewAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionViewAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indices de la tabla `UserPointActions`
--
ALTER TABLE `UserPointActions`
  ADD PRIMARY KEY (`upaID`),
  ADD UNIQUE KEY `upaHandle` (`upaHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gBBadgeID` (`gBadgeID`);

--
-- Indices de la tabla `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
  ADD PRIMARY KEY (`upID`),
  ADD KEY `upuID` (`upuID`),
  ADD KEY `upaID` (`upaID`);

--
-- Indices de la tabla `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
  ADD PRIMARY KEY (`msgID`),
  ADD KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`);

--
-- Indices de la tabla `UserPrivateMessagesTo`
--
ALTER TABLE `UserPrivateMessagesTo`
  ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `uAuthorID` (`uAuthorID`),
  ADD KEY `msgFolderID` (`msgMailboxID`),
  ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Indices de la tabla `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`uID`),
  ADD UNIQUE KEY `uName` (`uName`),
  ADD KEY `uEmail` (`uEmail`);

--
-- Indices de la tabla `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
  ADD PRIMARY KEY (`uID`);

--
-- Indices de la tabla `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
  ADD PRIMARY KEY (`uvhID`),
  ADD KEY `uID` (`uID`,`type`),
  ADD KEY `uHash` (`uHash`,`type`),
  ADD KEY `uDateGenerated` (`uDateGenerated`,`type`);

--
-- Indices de la tabla `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `wpCategoryID` (`wpCategoryID`),
  ADD KEY `wfID` (`wfID`),
  ADD KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`);

--
-- Indices de la tabla `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
  ADD PRIMARY KEY (`wpCategoryID`),
  ADD UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indices de la tabla `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
  ADD PRIMARY KEY (`wphID`),
  ADD KEY `wpID` (`wpID`,`timestamp`);

--
-- Indices de la tabla `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
  ADD PRIMARY KEY (`wrID`);

--
-- Indices de la tabla `Workflows`
--
ALTER TABLE `Workflows`
  ADD PRIMARY KEY (`wfID`),
  ADD UNIQUE KEY `wfName` (`wfName`),
  ADD KEY `wftID` (`wftID`,`wfID`);

--
-- Indices de la tabla `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
  ADD PRIMARY KEY (`wftID`),
  ADD UNIQUE KEY `wftHandle` (`wftHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
  MODIFY `arLayoutPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
  MODIFY `arLayoutID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Areas`
--
ALTER TABLE `Areas`
  MODIFY `arID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;
--
-- AUTO_INCREMENT de la tabla `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
  MODIFY `atAddressCustomCountryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
  MODIFY `avsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  MODIFY `akCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  MODIFY `akID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `AttributeSets`
--
ALTER TABLE `AttributeSets`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  MODIFY `atID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `AttributeValues`
--
ALTER TABLE `AttributeValues`
  MODIFY `avID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;
--
-- AUTO_INCREMENT de la tabla `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
  MODIFY `authTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `BannedWords`
--
ALTER TABLE `BannedWords`
  MODIFY `bwID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `BlockRelations`
--
ALTER TABLE `BlockRelations`
  MODIFY `brID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT de la tabla `Blocks`
--
ALTER TABLE `Blocks`
  MODIFY `bID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=723;
--
-- AUTO_INCREMENT de la tabla `BlockTypes`
--
ALTER TABLE `BlockTypes`
  MODIFY `btID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT de la tabla `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
  MODIFY `btsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `btCarruselEntries`
--
ALTER TABLE `btCarruselEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `btConveniosEntries`
--
ALTER TABLE `btConveniosEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
  MODIFY `aID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
  MODIFY `qID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btLeyTransparenciaEntries`
--
ALTER TABLE `btLeyTransparenciaEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `btListaItemsEntries`
--
ALTER TABLE `btListaItemsEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btListarTramitesEntries`
--
ALTER TABLE `btListarTramitesEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btMapasEntries`
--
ALTER TABLE `btMapasEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btPublicacionesEntries`
--
ALTER TABLE `btPublicacionesEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
  MODIFY `btShareThisPageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `btSliderEntries`
--
ALTER TABLE `btSliderEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
  MODIFY `btSocialLinkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
  MODIFY `optionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
  MODIFY `resultID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `btTransparenciaActivaEntries`
--
ALTER TABLE `btTransparenciaActivaEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `Collections`
--
ALTER TABLE `Collections`
  MODIFY `cID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT de la tabla `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
  MODIFY `cnvDiscussionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
  MODIFY `cnvEditorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
  MODIFY `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
  MODIFY `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
  MODIFY `cnvMessageRatingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
  MODIFY `cnvMessageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
  MODIFY `cnvRatingTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `Conversations`
--
ALTER TABLE `Conversations`
  MODIFY `cnvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
  MODIFY `dsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dsEventCalendar`
--
ALTER TABLE `dsEventCalendar`
  MODIFY `calendarID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `dsEventCalendarEvents`
--
ALTER TABLE `dsEventCalendarEvents`
  MODIFY `eventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dsEventCalendarSettings`
--
ALTER TABLE `dsEventCalendarSettings`
  MODIFY `settingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `dsEventCalendarTypes`
--
ALTER TABLE `dsEventCalendarTypes`
  MODIFY `typeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dsOpenData`
--
ALTER TABLE `dsOpenData`
  MODIFY `opendataID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `dsOpenDataDataset`
--
ALTER TABLE `dsOpenDataDataset`
  MODIFY `datasetsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dsOpenDataDictionary`
--
ALTER TABLE `dsOpenDataDictionary`
  MODIFY `dictionaryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dsOpenDataFile`
--
ALTER TABLE `dsOpenDataFile`
  MODIFY `fileID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `dsOpenDataFormat`
--
ALTER TABLE `dsOpenDataFormat`
  MODIFY `formatID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `dsOpenDataLicense`
--
ALTER TABLE `dsOpenDataLicense`
  MODIFY `licenseID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `dsOpenDataResource`
--
ALTER TABLE `dsOpenDataResource`
  MODIFY `resourceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `dsOpenDataSettings`
--
ALTER TABLE `dsOpenDataSettings`
  MODIFY `settingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
  MODIFY `faID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
  MODIFY `fcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `Features`
--
ALTER TABLE `Features`
  MODIFY `feID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
  MODIFY `ftTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `Files`
--
ALTER TABLE `Files`
  MODIFY `fID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
  MODIFY `fsfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `FileSets`
--
ALTER TABLE `FileSets`
  MODIFY `fsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
  MODIFY `fslID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
  MODIFY `fslTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
  MODIFY `fvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
  MODIFY `gcsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
  MODIFY `gasID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
  MODIFY `gafaID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `GatheringItems`
--
ALTER TABLE `GatheringItems`
  MODIFY `gaiID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
  MODIFY `gfeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT de la tabla `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
  MODIFY `gatID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
  MODIFY `gatTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `Gatherings`
--
ALTER TABLE `Gatherings`
  MODIFY `gaID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Groups`
--
ALTER TABLE `Groups`
  MODIFY `gID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `GroupSets`
--
ALTER TABLE `GroupSets`
  MODIFY `gsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Jobs`
--
ALTER TABLE `Jobs`
  MODIFY `jID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `JobSets`
--
ALTER TABLE `JobSets`
  MODIFY `jsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `JobsLog`
--
ALTER TABLE `JobsLog`
  MODIFY `jlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Logs`
--
ALTER TABLE `Logs`
  MODIFY `logID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT de la tabla `MailImporters`
--
ALTER TABLE `MailImporters`
  MODIFY `miID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
  MODIFY `mvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
  MODIFY `mtID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Packages`
--
ALTER TABLE `Packages`
  MODIFY `pkgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `PageFeeds`
--
ALTER TABLE `PageFeeds`
  MODIFY `pfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `PagePaths`
--
ALTER TABLE `PagePaths`
  MODIFY `ppID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT de la tabla `PageTemplates`
--
ALTER TABLE `PageTemplates`
  MODIFY `pTemplateID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `PageThemes`
--
ALTER TABLE `PageThemes`
  MODIFY `pThemeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
  MODIFY `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
  MODIFY `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
  MODIFY `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
  MODIFY `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;
--
-- AUTO_INCREMENT de la tabla `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
  MODIFY `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
  MODIFY `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `PageTypes`
--
ALTER TABLE `PageTypes`
  MODIFY `ptID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
  MODIFY `paID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT de la tabla `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
  MODIFY `peID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
  MODIFY `pegID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
  MODIFY `petID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
  MODIFY `pdID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
  MODIFY `pkCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
  MODIFY `pkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT de la tabla `PileContents`
--
ALTER TABLE `PileContents`
  MODIFY `pcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `Piles`
--
ALTER TABLE `Piles`
  MODIFY `pID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `QueueMessages`
--
ALTER TABLE `QueueMessages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Queues`
--
ALTER TABLE `Queues`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `SignupRequests`
--
ALTER TABLE `SignupRequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `SocialLinks`
--
ALTER TABLE `SocialLinks`
  MODIFY `slID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Stacks`
--
ALTER TABLE `Stacks`
  MODIFY `stID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
  MODIFY `sccRecordID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
  MODIFY `pssPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
  MODIFY `issID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT de la tabla `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
  MODIFY `scvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
  MODIFY `scvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `SystemDatabaseQueryLog`
--
ALTER TABLE `SystemDatabaseQueryLog`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `TreeCategoryNodes`
--
ALTER TABLE `TreeCategoryNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `TreeNodes`
--
ALTER TABLE `TreeNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
  MODIFY `treeNodeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `Trees`
--
ALTER TABLE `Trees`
  MODIFY `treeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `TreeTopicNodes`
--
ALTER TABLE `TreeTopicNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `TreeTypes`
--
ALTER TABLE `TreeTypes`
  MODIFY `treeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `UserBannedIPs`
--
ALTER TABLE `UserBannedIPs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `UserPointActions`
--
ALTER TABLE `UserPointActions`
  MODIFY `upaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
  MODIFY `upID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
  MODIFY `msgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Users`
--
ALTER TABLE `Users`
  MODIFY `uID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
  MODIFY `uvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
  MODIFY `wpID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
  MODIFY `wpCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
  MODIFY `wphID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT de la tabla `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
  MODIFY `wrID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `Workflows`
--
ALTER TABLE `Workflows`
  MODIFY `wfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
  MODIFY `wftID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `QueueMessages`
--
ALTER TABLE `QueueMessages`
  ADD CONSTRAINT `QueueMessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
