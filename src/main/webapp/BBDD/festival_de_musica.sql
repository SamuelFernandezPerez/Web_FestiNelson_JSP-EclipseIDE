-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2023 a las 02:41:34
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `festival_de_musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `dni` varchar(9) DEFAULT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `provincia` varchar(30) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `dni`, `nombre`, `apellidos`, `direccion`, `cp`, `provincia`, `fecha_nacimiento`) VALUES
(1, '92076529P', 'AMELI', 'CALERO PLA', 'JARDINES HORNO, 12, BASAURI', '48662', 'BIZKAIA', '1976-02-22'),
(2, '45383026R', 'NAYARA', 'ALARCON LINARES', 'RÚA MADRID, 45, CIZUR', '31804', 'NAVARRA', '1974-01-05'),
(3, '70324842L', 'ANTONIO JESUS', 'BARRAGAN FRAILE', 'CUESTA IGLESIA, 55, BELINCHÓN', '16707', 'CUENCA', '1985-09-26'),
(4, '46416901A', 'JOSE MIGUEL', 'CASANOVA GAMEZ', 'SECTOR NUEVA, 37, SANDIÁS', '32890', 'HUESCA', '1990-03-08'),
(5, '54806742L', 'FLORENCIO', 'DUARTE PONS', 'RONDA REAL, 76, MADROÑO, EL', '41203', 'SEVILLA', '1968-01-18'),
(6, '03267211S', 'PAOLA', 'DUQUE DEL POZO', 'AVENIDA PEDRALBES, 41, ENCINAS', '14147', 'BARCELONA', '1999-03-15'),
(7, '57169034G', 'ADORACION', 'RAMON BOSCH', 'RÚA HORNO, 70, MUTRIKU', '20803', 'GUIPUZCOA', '1958-05-06'),
(8, '26448556M', 'IGNACIO', 'ROIG PIZARRO', 'AVENIDA PEDRALBES, 56, ATALAYA', '06911', 'BARCELONA', '1950-03-30'),
(9, '21630981X', 'JULIO', 'ARAGON ROMAN', 'URBANIZACIÓN MAYOR, 46, FORNAL', '07524', 'MALLORCA', '1953-06-13'),
(10, '96266222K', 'MARCOS', 'ALONSO ROVIRA', 'ESTRADA MADRID, 63, PORTILLO D', '45141', 'TOLEDO', '1998-07-06'),
(11, '00758600Z', 'ANTONIO MIGUEL', 'MARCOS AMADOR', 'CUESTA IGLESIA, 95, VILLAFRANC', '44194', 'TERUEL', '1985-09-27'),
(12, '15622012K', 'MATILDE', 'PALACIOS HIDALGO', 'JARDINS MAYOR, 75, NÁQUERA', '46344', 'VALENCIA', '1999-03-07'),
(13, '10501966M', 'RACHID', 'LORENZO DURAN', 'URBANIZACIÓN MAYOR, 52, LAMASÓ', '39071', 'CANTABRIA', '1958-11-13'),
(14, '63363274E', 'ANGELES', 'TEJERO RAMIREZ', 'ESTRADA NUEVA, 1, TRIGUEROS', '21104', 'HUELVA', '1966-08-09'),
(15, '94634294N', 'BORJA', 'EXPOSITO GRANADOS', 'PARQUE PEDRALBES, 30, AMBITE', '28355', 'MADRID', '1972-11-01'),
(16, '45306754C', 'LEONARDO', 'FAJARDO MATEOS', 'ESTRADA IGLESIA, 62, ARIZA', '50921', 'ZARAGOZA', '1987-03-05'),
(17, '91755997G', 'ADELA', 'LLAMAS RAMON', 'PLAÇA PEDRALBES, 25, SANT PERE', '08391', 'BARCELONA', '1988-06-16'),
(18, '50155424Z', 'NAYARA', 'GONZALEZ MENDOZA', 'POBLADO MAYOR, 42, ALCONCHEL D', '16801', 'CUENCA', '1995-12-16'),
(19, '95841689E', 'ASUNCION', 'CUENCA MALDONADO', 'TRAVESSERA MADRID, 68, FONFRÍA', '49700', 'ZAMORA', '1972-08-18'),
(20, '74275047C', 'JORDI', 'BARRERA FIGUEROA', 'KALEA DE ESPAÑA, 0, BENAHADUX', '04966', 'ALMERÍA', '2001-10-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id_entrada` int(11) NOT NULL,
  `id_tipoEntrada` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id_entrada`, `id_tipoEntrada`, `id_cliente`) VALUES
(1, 1, 19),
(2, 2, 1),
(3, 4, 10),
(4, 8, 14),
(5, 10, 15),
(6, 5, 9),
(7, 1, 8),
(8, 3, 20),
(9, 10, 16),
(10, 9, 13),
(11, 7, 17),
(12, 4, 7),
(13, 9, 18),
(14, 3, 3),
(15, 6, 11),
(16, 6, 4),
(17, 2, 12),
(18, 6, 5),
(19, 8, 6),
(20, 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `precio` double(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `precio`) VALUES
(1, 'Camiseta festiv', 15.00),
(2, 'Camiseta festiv', 15.00),
(3, 'Mechero festiva', 3.00),
(4, 'Gorra festival', 7.50),
(5, 'Pulsera festiva', 2.00),
(6, 'Mini de cerveza', 10.00),
(7, 'Mini de calimoc', 10.00),
(8, 'Refresco normal', 3.50),
(9, 'Red bull', 4.00),
(10, 'Chupito Jaggerm', 2.50),
(11, 'Botella de agua', 2.50),
(12, 'Botella de agua', 4.00),
(13, 'Cubata', 9.00),
(14, 'Mini de cubata', 15.00),
(15, 'Caña de cerveza', 3.00),
(16, 'Tercio de cerve', 6.00),
(17, 'Bocadillo frio', 4.00),
(18, 'Bocadillo calie', 6.00),
(19, 'Bolsa de patata', 2.25),
(20, 'Paquete de taba', 6.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

CREATE TABLE `tarjetas` (
  `id_tarjeta` int(11) NOT NULL,
  `saldo` double(6,2) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tarjetas`
--

INSERT INTO `tarjetas` (`id_tarjeta`, `saldo`, `id_cliente`) VALUES
(1, 84.40, 2),
(2, 25.00, 10),
(3, 70.67, 18),
(4, 230.89, 9),
(5, 1200.45, 11),
(6, 678.00, 17),
(7, 456.50, 4),
(8, 120.45, 8),
(9, 650.50, 16),
(10, 325.00, 7),
(11, 279.56, 1),
(12, 900.99, 3),
(13, 489.05, 15),
(14, 78.32, 6),
(15, 10.50, 12),
(16, 99.99, 19),
(17, 210.00, 3),
(18, 150.50, 2),
(19, 111.11, 13),
(20, 69.39, 4),
(21, 10.90, 20),
(22, 158.50, 14),
(23, 511.11, 1),
(24, 68.36, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_de_entrada`
--

CREATE TABLE `tipos_de_entrada` (
  `id_tipoEntrada` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_de_entrada`
--

INSERT INTO `tipos_de_entrada` (`id_tipoEntrada`, `descripcion`, `precio`, `cantidad`) VALUES
(1, 'Entrada para un dia sin zona de acampada', 10.5, 9),
(2, 'Entrada para un dia + zona de acampada', 15, 10),
(3, 'Entrada para un dia + zona de acampada + meet & greet con los artistas', 20, 10),
(4, 'Abono completo 3 dias sin zona de acampada', 25, 9),
(5, 'Abono completo 3 dias + zona de acampada', 30, 10),
(6, 'Abono completo 3 dias + zona de acampada ', 35, 10),
(7, 'Abono VIP 3 dias sin zona de acampada + meet & greet con los artist', 40, 10),
(8, 'Abono VIP 3 dias + zona de acampada', 50, 10),
(9, 'Abono VIP 3 dias + zona de acampada + Baños exclusivos', 55, 10),
(10, 'Abono VIP 3 dias + zona de acampada + Baños exclusivos + meet & greet con los artistas', 60, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_tarjeta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `unidades` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_tarjeta`, `id_producto`, `unidades`) VALUES
(1, 1, 6, 2),
(2, 22, 15, 4),
(3, 24, 16, 1),
(4, 2, 5, 5),
(5, 15, 8, 3),
(6, 18, 3, 6),
(7, 6, 7, 12),
(8, 21, 2, 3),
(9, 3, 3, 4),
(10, 5, 17, 2),
(11, 14, 4, 1),
(12, 17, 4, 5),
(13, 20, 13, 7),
(14, 4, 1, 12),
(15, 9, 14, 2),
(16, 13, 18, 1),
(17, 23, 19, 4),
(18, 7, 2, 3),
(19, 8, 20, 6),
(20, 10, 9, 8),
(21, 12, 12, 1),
(22, 19, 10, 8),
(23, 16, 11, 2),
(24, 11, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventasentradas`
--

CREATE TABLE `ventasentradas` (
  `id_ventaEntrada` int(11) NOT NULL,
  `id_tarjeta` int(11) NOT NULL,
  `id_entrada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventasentradas`
--

INSERT INTO `ventasentradas` (`id_ventaEntrada`, `id_tarjeta`, `id_entrada`) VALUES
(1, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventasproductos`
--

CREATE TABLE `ventasproductos` (
  `id_ventaProducto` int(11) NOT NULL,
  `id_tarjeta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id_entrada`),
  ADD KEY `Entradas_fk` (`id_tipoEntrada`),
  ADD KEY `Entradas_fk2` (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  ADD PRIMARY KEY (`id_tarjeta`),
  ADD KEY `Tarjetas_fk` (`id_cliente`);

--
-- Indices de la tabla `tipos_de_entrada`
--
ALTER TABLE `tipos_de_entrada`
  ADD PRIMARY KEY (`id_tipoEntrada`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `ventas_fk1` (`id_tarjeta`),
  ADD KEY `ventas_fk2` (`id_producto`);

--
-- Indices de la tabla `ventasentradas`
--
ALTER TABLE `ventasentradas`
  ADD PRIMARY KEY (`id_ventaEntrada`);

--
-- Indices de la tabla `ventasproductos`
--
ALTER TABLE `ventasproductos`
  ADD PRIMARY KEY (`id_ventaProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id_entrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  MODIFY `id_tarjeta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tipos_de_entrada`
--
ALTER TABLE `tipos_de_entrada`
  MODIFY `id_tipoEntrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `ventasentradas`
--
ALTER TABLE `ventasentradas`
  MODIFY `id_ventaEntrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventasproductos`
--
ALTER TABLE `ventasproductos`
  MODIFY `id_ventaProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `Entradas_fk` FOREIGN KEY (`id_tipoEntrada`) REFERENCES `tipos_de_entrada` (`id_tipoEntrada`),
  ADD CONSTRAINT `Entradas_fk2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Filtros para la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  ADD CONSTRAINT `Tarjetas_fk` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_fk1` FOREIGN KEY (`id_tarjeta`) REFERENCES `tarjetas` (`id_tarjeta`),
  ADD CONSTRAINT `ventas_fk2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
