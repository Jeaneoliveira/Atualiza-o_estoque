-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 29/07/2024 às 03:10
-- Versão do servidor: 8.0.39
-- Versão do PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estoque`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

DROP TABLE IF EXISTS `estoque`;
CREATE TABLE IF NOT EXISTS `estoque` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `produto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tamanho` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deposito` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_disponibilidade` date NOT NULL,
  `quantidade` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estoque_un` (`produto`,`cor`,`tamanho`,`deposito`,`data_disponibilidade`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estoque`
--

INSERT INTO `estoque` (`id`, `produto`, `cor`, `tamanho`, `deposito`, `data_disponibilidade`, `quantidade`) VALUES
(1, '10.01.0419', '00', 'P', 'DEP1', '2023-05-01', 15),
(2, '11.01.0568', '08', 'P', 'DEP1', '2023-05-01', 2),
(3, '11.01.0568', '08', 'M', 'DEP1', '2023-05-01', 4),
(4, '11.01.0568', '08', 'G', '1', '2023-05-01', 6),
(5, '11.01.0568', '08', 'P', 'DEP1', '2023-06-01', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque_db`
--

DROP TABLE IF EXISTS `estoque_db`;
CREATE TABLE IF NOT EXISTS `estoque_db` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `produto` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cor` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tamanho` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `deposito` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_disponibilidade` date NOT NULL,
  `quantidade` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estoque_un` (`produto`,`cor`,`tamanho`,`deposito`,`data_disponibilidade`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estoque_db`
--

INSERT INTO `estoque_db` (`id`, `produto`, `cor`, `tamanho`, `deposito`, `data_disponibilidade`, `quantidade`) VALUES
(1, '10.01.0419', '00', 'P', 'DEP1', '2023-05-01', 15),
(2, '11.01.0568', '08', 'P', 'DEP1', '2023-05-01', 2),
(3, '11.01.0568', '08', 'M', 'DEP1', '2023-05-01', 4),
(4, '11.01.0568', '08', 'G', '1', '2023-05-01', 6),
(5, '11.01.0568', '08', 'P', 'DEP1', '2023-06-01', 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
