-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/09/2023 às 00:58
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdcpmundo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atletas`
--

CREATE TABLE `atletas` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Idade` int(2) NOT NULL,
  `posicao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atletas`
--

INSERT INTO `atletas` (`Id`, `Nome`, `Idade`, `posicao`) VALUES
(1, 'Sergio', 27, 'Atacante'),
(2, 'Mateus', 27, 'Atacante'),
(3, 'Jefferson', 27, 'Zagueiro'),
(4, 'Joao', 27, 'Lateral'),
(5, 'Gabigol', 27, 'Goleiro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogos`
--

CREATE TABLE `jogos` (
  `Id` int(11) NOT NULL,
  `Data` date DEFAULT NULL,
  `Estadio` varchar(50) DEFAULT NULL,
  `Equipes` varchar(50) DEFAULT NULL,
  `Juiz` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`Id`, `Data`, `Estadio`, `Equipes`, `Juiz`) VALUES
(1, '2022-02-05', 'Bernabeul', 'Brasil x Franca', 'Juiz1'),
(2, '2022-02-10', 'Santiago', 'Franca x Uruguai', 'Juiz2'),
(3, '2022-02-10', 'FonteNova', 'Franca x Uruguai', 'Juiz3'),
(4, '2022-02-10', 'Ilha do Retiro', 'Alemanha x Brasil', 'Juiz4'),
(5, '2022-02-10', 'Santiago', 'Brasil x Cuba', 'Juiz5');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pais`
--

CREATE TABLE `pais` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `NomeTecnico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pais`
--

INSERT INTO `pais` (`Id`, `Nome`, `NomeTecnico`) VALUES
(1, 'Brasil', 'Tecnico1'),
(2, 'Alemanha', 'Tecnico2'),
(3, 'Franca', 'Tecnico3'),
(4, 'Uruguai', 'Tecnico4'),
(5, 'Cuba', 'Tecnico5');

-- --------------------------------------------------------

--
-- Estrutura para tabela `resultados`
--

CREATE TABLE `resultados` (
  `Id` int(11) NOT NULL,
  `GolsFeitos` int(11) NOT NULL,
  `GolsRecebidos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `resultados`
--

INSERT INTO `resultados` (`Id`, `GolsFeitos`, `GolsRecebidos`) VALUES
(1, 5, 3),
(2, 2, 7),
(3, 0, 0),
(4, 3, 1),
(5, 4, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atletas`
--
ALTER TABLE `atletas`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atletas`
--
ALTER TABLE `atletas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `resultados`
--
ALTER TABLE `resultados`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
