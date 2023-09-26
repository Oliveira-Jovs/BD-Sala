-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Set-2023 às 14:01
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jae`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atletas`
--

CREATE TABLE `atletas` (
  `Nome` varchar(55) NOT NULL,
  `Idade` int(2) NOT NULL,
  `posicao` varchar(50) NOT NULL,
  `IdPais` int(11) DEFAULT NULL,
  `IdAtletas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atletas`
--

INSERT INTO `atletas` (`Nome`, `Idade`, `posicao`, `IdPais`, `IdAtletas`) VALUES
('Paulo', 32, 'Atacante', 1, 1),
('Sergio', 27, 'Atacante', 1, 2),
('Sergio', 32, 'Zagueiro', 1, 3),
('Gabigol', 25, 'Goleiro', 1, 4),
('Jefferson', 25, 'Atacante', 2, 5),
('Rebson', 25, 'Atacante', 2, 6),
('Almeida', 25, 'Goleiro', 2, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `IdJogos` int(11) NOT NULL,
  `Data` date DEFAULT NULL,
  `Estadio` varchar(50) DEFAULT NULL,
  `Equipes` varchar(50) DEFAULT NULL,
  `Juiz` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`IdJogos`, `Data`, `Estadio`, `Equipes`, `Juiz`) VALUES
(1, '2022-02-05', 'Bernabeul', 'Brasil x Franca', 'Juiz1'),
(2, '2022-02-10', 'Santiago', 'Franca x Uruguai', 'Juiz2'),
(3, '2022-02-10', 'FonteNova', 'Franca x Uruguai', 'Juiz3'),
(4, '2022-02-10', 'Ilha do Retiro', 'Alemanha x Brasil', 'Juiz4'),
(5, '2022-02-10', 'Santiago', 'Brasil x Cuba', 'Juiz5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `IdPais` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `NomeTecnico` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`IdPais`, `Nome`, `NomeTecnico`) VALUES
(1, 'Brasil', 'Tecnico1'),
(2, 'Alemanha', 'Tecnico2'),
(3, 'Franca', 'Tecnico3'),
(4, 'Uruguai', 'Tecnico4'),
(5, 'Cuba', 'Tecnico5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `resultados`
--

CREATE TABLE `resultados` (
  `IdResul` int(11) NOT NULL,
  `GolsFeitos` int(11) NOT NULL,
  `GolsRecebidos` int(11) NOT NULL,
  `IdAtletasFk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `resultados`
--

INSERT INTO `resultados` (`IdResul`, `GolsFeitos`, `GolsRecebidos`, `IdAtletasFk`) VALUES
(1, 5, 3, NULL),
(2, 2, 7, NULL),
(3, 0, 0, NULL),
(4, 3, 1, NULL),
(5, 4, 1, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atletas`
--
ALTER TABLE `atletas`
  ADD PRIMARY KEY (`IdAtletas`),
  ADD KEY `fk_atletas_pais` (`IdPais`);

--
-- Índices para tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`IdJogos`);

--
-- Índices para tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`IdPais`);

--
-- Índices para tabela `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`IdResul`),
  ADD KEY `FK_resultados_Atletas` (`IdAtletasFk`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atletas`
--
ALTER TABLE `atletas`
  MODIFY `IdAtletas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atletas`
--
ALTER TABLE `atletas`
  ADD CONSTRAINT `fk_atletas_pais` FOREIGN KEY (`IdPais`) REFERENCES `pais` (`IdPais`);

--
-- Limitadores para a tabela `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `FK_resultados_Atletas` FOREIGN KEY (`IdAtletasFk`) REFERENCES `atletas` (`IdAtletas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
