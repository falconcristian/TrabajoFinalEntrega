-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 31-10-2022 a las 21:05:55
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mundovr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mensaje` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `apellido`, `email`, `mensaje`) VALUES
(1, 'cristian', 'falcon', 'falcon.cristian', 'test'),
(2, 'cristian', 'fernando', 'clopez@provincianet.com.ar', '4'),
(3, 'asdfa', 'asdfa', 'astiehr@provincianet.com.ar', 'adsfdasf'),
(4, 'gustavo', 'fernando', 'yferrari@provincianet.com.ar', 'adsfdasf'),
(5, 'asdfadsf', 'asdfadsf', 'astiehr@provincianet.com.ar', 'hsdhgfdhgfd'),
(6, 'sdfgsfdg', 'sdfgsdf', 'f@a.com', 'sdfghfgh'),
(7, 'dfgfds', 'fernando', 'astiehr@provincianet.com.ar', 'sdfgfdsg'),
(8, 'dfsgsdf', 'sdfghfdsg', 'falcon.cristian@gmail.com', 'adsfdasf'),
(9, 'cristian', 'fernando', 'astiehr@provincianet.com.ar', 'test'),
(10, 'sdfgsfdg', 'fernando', 'falcon.cristian@gmail.com', 'etet'),
(11, 'adsf', 'asdf', 'astiehr@provincianet.com.ar', 'asdfadsf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(6, 'WhatsApp: qué hacer si recibo un código de verificación que nunca solicité', 'Por seguridad del usuario, siempre es recomendable tener activada la verificación en dos pasos o incluso un PIN en la app ', 'Hay que ponerse en el hipotético caso de que un día el lector está tranquilamente usando WhatsApp y de repente aparece un mensaje en mitad de la pantalla sobre un Código de registro de WhatsApp solicitado, pero el usuario no ha pedido nada. ¿Qué significa?\r\n\r\nWhatsApp cuenta con mecanismos de protección para evitar que alguien robe una cuenta y esta notificación es uno de ellos. Desde Infobae se explicará cuando aparece esta notificación, qué hacer cuando en caso uno la reciba y cómo proteger una cuenta si se reciben varias notificaciones similares. '),
(7, 'Telegram', 'Actualización 3.2', 'Además del mensaje, si alguien le escribe a uno o llama, y dice sobre el inconveniente que tiene que necesita este código, esa persona está tratando de registrar la cuenta de WhatsApp por alguna razón. Cabe recordar que incluso si se cae en esta trampa y se le da el código y registran la cuenta, no podrán acceder a los mensajes anteriores.\r\n\r\nSe podrá recuperar la cuenta con una nueva verificación, pero es posible que pasen unas horas antes de que WhatsApp permita recuperar dicha cuenta. Si nadie pide el código y solo le ha pasado una vez a uno, es posible que haya sido simplemente un error.     ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuarios` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuarios`, `password`) VALUES
(1, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'laura', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'ezmat', 'ccbaebbfb6fd9dc35e99b27321667686');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
