-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2026 at 06:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Table structure for table `autores`
--

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autores`
--

INSERT INTO `autores` (`id_autor`, `nombre`, `nacionalidad`) VALUES
(1, 'Gabriel García Márquez', 'Colombia'),
(2, 'Mario Vargas Llosa', 'Perú'),
(3, 'Julio Verne', 'Francia'),
(4, 'Miguel de Cervantes', 'España'),
(5, 'J.K. Rowling', 'Reino Unido'),
(6, 'Stephen King', 'Estados Unidos'),
(7, 'Isabel Allende', 'Chile'),
(8, 'Pablo Neruda', 'Chile'),
(9, 'Jorge Luis Borges', 'Argentina'),
(10, 'Ernest Hemingway', 'Estados Unidos'),
(11, 'William Shakespeare', 'Reino Unido'),
(12, 'Jane Austen', 'Reino Unido'),
(13, 'Mark Twain', 'Estados Unidos'),
(14, 'Oscar Wilde', 'Irlanda'),
(15, 'Victor Hugo', 'Francia'),
(16, 'Dan Brown', 'Estados Unidos'),
(17, 'Paulo Coelho', 'Brasil'),
(18, 'George Orwell', 'Reino Unido'),
(19, 'Agatha Christie', 'Reino Unido'),
(20, 'Arthur Conan Doyle', 'Reino Unido'),
(21, 'Antoine de Saint-Exupéry', 'Francia'),
(22, 'Franz Kafka', 'República Checa'),
(23, 'Edgar Allan Poe', 'Estados Unidos'),
(24, 'Leo Tolstoy', 'Rusia'),
(25, 'Fiódor Dostoyevski', 'Rusia');

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `cargo`) VALUES
(1, 'Carlos Gómez', 'Bibliotecario'),
(2, 'Laura Sánchez', 'Asistente'),
(3, 'Pedro Mejía', 'Administrador'),
(4, 'Ana Rivera', 'Bibliotecaria'),
(5, 'José Morales', 'Asistente'),
(6, 'Marta Flores', 'Administrador'),
(7, 'Luis Peña', 'Bibliotecario'),
(8, 'Diana Castro', 'Asistente'),
(9, 'Jorge Rivas', 'Bibliotecario'),
(10, 'Elena López', 'Administrador'),
(11, 'Raúl Torres', 'Asistente'),
(12, 'Patricia Vega', 'Bibliotecaria'),
(13, 'Mario Ruiz', 'Administrador'),
(14, 'Sandra Díaz', 'Bibliotecaria'),
(15, 'Ricardo Herrera', 'Asistente'),
(16, 'Carmen Silva', 'Bibliotecaria'),
(17, 'Fernando Molina', 'Administrador'),
(18, 'Paula Romero', 'Asistente'),
(19, 'Miguel Navarro', 'Bibliotecario'),
(20, 'Lucía Campos', 'Asistente'),
(21, 'Andrés Mendoza', 'Bibliotecario'),
(22, 'Valeria Cruz', 'Administrador'),
(23, 'Diego Reyes', 'Asistente'),
(24, 'Gabriela Ortiz', 'Bibliotecaria'),
(25, 'Roberto Castillo', 'Administrador');

-- --------------------------------------------------------

--
-- Table structure for table `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `anio_publicacion` int(11) DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `libros`
--

INSERT INTO `libros` (`id_libro`, `titulo`, `anio_publicacion`, `id_autor`) VALUES
(1, 'Cien años de soledad', 1967, 1),
(2, 'La ciudad y los perros', 1963, 2),
(3, 'Viaje al centro de la Tierra', 1864, 3),
(4, 'Don Quijote de la Mancha', 1605, 4),
(5, 'Harry Potter y la piedra filosofal', 1997, 5),
(6, 'It', 1986, 6),
(7, 'La casa de los espíritus', 1982, 7),
(8, 'Veinte poemas de amor', 1924, 8),
(9, 'Ficciones', 1944, 9),
(10, 'El viejo y el mar', 1952, 10),
(11, 'Hamlet', 1603, 11),
(12, 'Orgullo y prejuicio', 1813, 12),
(13, 'Las aventuras de Tom Sawyer', 1876, 13),
(14, 'El retrato de Dorian Gray', 1890, 14),
(15, 'Los miserables', 1862, 15),
(16, 'El código Da Vinci', 2003, 16),
(17, 'El alquimista', 1988, 17),
(18, '1984', 1949, 18),
(19, 'Asesinato en el Orient Express', 1934, 19),
(20, 'Estudio en escarlata', 1887, 20),
(21, 'El principito', 1943, 21),
(22, 'La metamorfosis', 1915, 22),
(23, 'El cuervo', 1845, 23),
(24, 'Guerra y paz', 1869, 24),
(25, 'Crimen y castigo', 1866, 25);

-- --------------------------------------------------------

--
-- Table structure for table `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_libro` int(11) DEFAULT NULL,
  `fecha_prestamo` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prestamos`
--

INSERT INTO `prestamos` (`id_prestamo`, `id_usuario`, `id_libro`, `fecha_prestamo`, `fecha_devolucion`) VALUES
(1, 1, 5, '2026-01-01', '2026-01-15'),
(2, 2, 3, '2026-01-02', '2026-01-16'),
(3, 3, 8, '2026-01-03', '2026-01-17'),
(4, 4, 10, '2026-01-04', '2026-01-18'),
(5, 5, 1, '2026-01-05', '2026-01-19'),
(6, 6, 15, '2026-01-06', '2026-01-20'),
(7, 7, 12, '2026-01-07', '2026-01-21'),
(8, 8, 20, '2026-01-08', '2026-01-22'),
(9, 9, 7, '2026-01-09', '2026-01-23'),
(10, 10, 25, '2026-01-10', '2026-01-24'),
(11, 11, 18, '2026-01-11', '2026-01-25'),
(12, 12, 2, '2026-01-12', '2026-01-26'),
(13, 13, 4, '2026-01-13', '2026-01-27'),
(14, 14, 6, '2026-01-14', '2026-01-28'),
(15, 15, 9, '2026-01-15', '2026-01-29'),
(16, 16, 11, '2026-01-16', '2026-01-30'),
(17, 17, 13, '2026-01-17', '2026-01-31'),
(18, 18, 14, '2026-01-18', '2026-02-01'),
(19, 19, 16, '2026-01-19', '2026-02-02'),
(20, 20, 17, '2026-01-20', '2026-02-03'),
(21, 21, 19, '2026-01-21', '2026-02-04'),
(22, 22, 21, '2026-01-22', '2026-02-05'),
(23, 23, 22, '2026-01-23', '2026-02-06'),
(24, 24, 23, '2026-01-24', '2026-02-07'),
(25, 25, 24, '2026-01-25', '2026-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `telefono`) VALUES
(1, 'Juan Pérez', '70000001'),
(2, 'María López', '70000002'),
(3, 'Carlos Ramírez', '70000003'),
(4, 'Ana Torres', '70000004'),
(5, 'José Martínez', '70000005'),
(6, 'Sofía García', '70000006'),
(7, 'Luis Hernández', '70000007'),
(8, 'Carmen Díaz', '70000008'),
(9, 'Miguel Flores', '70000009'),
(10, 'Lucía Cruz', '70000010'),
(11, 'Pedro Castillo', '70000011'),
(12, 'Elena Vega', '70000012'),
(13, 'Fernando Ruiz', '70000013'),
(14, 'Patricia Molina', '70000014'),
(15, 'Andrés Reyes', '70000015'),
(16, 'Valeria Silva', '70000016'),
(17, 'Diego Morales', '70000017'),
(18, 'Camila Romero', '70000018'),
(19, 'Ricardo Ortiz', '70000019'),
(20, 'Daniela Castro', '70000020'),
(21, 'Javier Navarro', '70000021'),
(22, 'Gabriela Herrera', '70000022'),
(23, 'Roberto Mendoza', '70000023'),
(24, 'Natalia Rivas', '70000024'),
(25, 'Alejandro Campos', '70000025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indexes for table `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`),
  ADD KEY `id_autor` (`id_autor`);

--
-- Indexes for table `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_libro` (`id_libro`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`);

--
-- Constraints for table `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
