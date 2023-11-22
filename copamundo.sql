-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/11/2023 às 03:15
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
-- Banco de dados: `copamundo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `arbitro`
--

CREATE TABLE `arbitro` (
  `ID` int(11) NOT NULL,
  `ARBITRO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `arbitro`
--

INSERT INTO `arbitro` (`ID`, `ARBITRO`) VALUES
(1, 'Pierluigi Collina'),
(2, 'Oscar Ruiz'),
(3, 'Byron Moreno'),
(4, 'Kim Milton Nielsen'),
(5, 'Felipe Ramos Rizo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atleta`
--

CREATE TABLE `atleta` (
  `ID` int(11) NOT NULL,
  `NOME_ATLETA` varchar(50) NOT NULL,
  `DATA_NASCIMENTO` date DEFAULT NULL,
  `ID_POSICAO` int(11) DEFAULT NULL,
  `ID_PAIS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atleta`
--

INSERT INTO `atleta` (`ID`, `NOME_ATLETA`, `DATA_NASCIMENTO`, `ID_POSICAO`, `ID_PAIS`) VALUES
(1, 'Roberto Ayala', '1973-04-14', 4, 1),
(2, 'Walter Samuel', '1978-03-23', 4, 1),
(3, 'Diego Placente', '1977-04-24', 3, 1),
(4, 'Mauricio Pochettino', '1972-03-02', 4, 1),
(5, 'Juan Sorín', '1976-05-05', 3, 1),
(6, 'Claudio Husaín', '1973-12-16', 2, 1),
(7, 'Ariel Ortega', '1974-03-30', 2, 1),
(8, 'Juan Román Riquelme', '1978-06-24', 2, 1),
(9, 'Diego Simeone', '1970-04-28', 2, 1),
(10, 'Kily González', '1974-08-04', 2, 1),
(11, 'Juan Sebastián Verón', '1975-03-09', 2, 1),
(12, 'Marcelo Gallardo', '1976-01-18', 2, 1),
(13, 'Javier Zanetti', '1973-08-10', 3, 1),
(14, 'Claudio López', '1974-07-17', 1, 1),
(15, 'Dida', '1973-10-07', 5, 4),
(16, 'Marcos', '1973-08-04', 5, 4),
(17, 'Roque Júnior', '1976-08-31', 4, 4),
(18, 'Lúcio', '1978-05-08', 4, 4),
(19, 'Edmílson', '1976-07-10', 4, 4),
(20, 'Roberto Carlos', '1973-04-10', 3, 4),
(21, 'Cafu', '1970-06-07', 3, 4),
(22, 'Júnior', '1973-06-22', 2, 4),
(23, 'Gilberto Silva', '1976-10-07', 2, 4),
(24, 'Kléberson', '1979-06-19', 2, 4),
(25, 'Juninho Paulista', '1973-02-22', 2, 4),
(26, 'Rivaldo', '1972-04-19', 2, 4),
(27, 'Ronaldo', '1976-09-22', 1, 4),
(28, 'Ronaldinho Gaúcho', '1980-03-21', 1, 4),
(29, 'Fabien Barthez', '1971-06-28', 5, 2),
(30, 'Ulrich Ramé', '1972-09-19', 5, 2),
(31, 'Mikael Silvestre', '1977-08-09', 4, 2),
(32, 'Marcel Desailly', '1968-09-07', 4, 2),
(33, 'Frank Leboeuf', '1968-01-22', 4, 2),
(34, 'Bixente Lizarazu', '1969-12-09', 3, 2),
(35, 'Lilian Thuram', '1972-01-01', 4, 2),
(36, 'Marcel Desailly', '1968-09-07', 4, 2),
(37, 'Emmanuel Petit', '1970-09-22', 2, 2),
(38, 'Didier Deschamps', '1968-10-15', 2, 2),
(39, 'Zinedine Zidane', '1972-06-23', 2, 2),
(40, 'Patrick Vieira', '1976-06-23', 2, 2),
(41, 'Youri Djorkaeff', '1968-03-09', 2, 2),
(42, 'Thierry Henry', '1977-08-17', 1, 2),
(43, 'Geert De Vlieger', '1971-10-16', 5, 3),
(44, 'Frédéric Herpoel', '1974-03-04', 5, 3),
(45, 'Eric Deflandre', '1973-08-02', 3, 3),
(46, 'Jacky Peeters', '1974-06-15', 3, 3),
(47, 'Peter Van Der Heyden', '1972-11-16', 3, 3),
(48, 'Daniel Van Buyten', '1978-02-07', 4, 3),
(49, 'Eric Van Meir', '1968-02-28', 4, 3),
(50, 'Bart Goor', '1979-04-09', 2, 3),
(51, 'Sven Vermant', '1973-04-17', 2, 3),
(52, 'Bart Valgaeren', '1979-05-05', 4, 3),
(53, 'Gert Verheyen', '1970-09-20', 1, 3),
(54, 'Emile Mpenza', '1978-07-04', 1, 3),
(55, 'Mbo Mpenza', '1976-02-04', 1, 3),
(56, 'Marc Wilmots', '1969-02-22', 2, 3),
(57, 'Yoshikatsu Kawaguchi', '1975-08-15', 5, 5),
(58, 'Seigo Narazaki', '1976-04-15', 5, 5),
(59, 'Koji Nakata', '1979-07-09', 4, 5),
(60, 'Junichi Inamoto', '1979-09-18', 2, 5),
(61, 'Hidetoshi Nakata', '1977-01-22', 2, 5),
(62, 'Toshihiro Hattori', '1977-02-04', 4, 5),
(63, 'Shinji Ono', '1979-09-27', 2, 5),
(64, 'Hiroaki Morishima', '1973-08-23', 4, 5),
(65, 'Alessandro Santos', '1973-03-20', 3, 5),
(66, 'Naoki Matsuda', '1977-03-14', 4, 5),
(67, 'Takayuki Suzuki', '1976-07-05', 1, 5),
(68, 'Atsushi Yanagisawa', '1977-06-04', 1, 5),
(69, 'Junichi Inamoto', '1979-09-18', 2, 5),
(70, 'Hidetoshi Nakata', '1977-01-22', 2, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estadio`
--

CREATE TABLE `estadio` (
  `ID` int(11) NOT NULL,
  `NOME_ESTADIO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estadio`
--

INSERT INTO `estadio` (`ID`, `NOME_ESTADIO`) VALUES
(1, 'Yokohama'),
(2, 'Shizuoka'),
(3, 'Sapporo'),
(4, 'Niigata'),
(5, 'Shizuoka');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogo`
--

CREATE TABLE `jogo` (
  `ID` int(11) NOT NULL,
  `DATA_JOGO` date DEFAULT NULL,
  `ID_ESTADIO` int(11) DEFAULT NULL,
  `ID_PAIS1` int(11) DEFAULT NULL,
  `ID_PAIS2` int(11) DEFAULT NULL,
  `ID_ARBITRO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogo`
--

INSERT INTO `jogo` (`ID`, `DATA_JOGO`, `ID_ESTADIO`, `ID_PAIS1`, `ID_PAIS2`, `ID_ARBITRO`) VALUES
(1, '2002-05-30', 1, 1, 2, 1),
(2, '2002-06-02', 2, 1, 3, 2),
(3, '2002-06-06', 3, 1, 4, 3),
(4, '2002-06-10', 4, 1, 5, 4),
(5, '2002-06-14', 5, 2, 3, 5),
(6, '2002-06-18', 1, 2, 4, 1),
(7, '2002-06-22', 2, 2, 5, 2),
(8, '2002-06-26', 3, 3, 4, 3),
(9, '2002-06-30', 4, 3, 5, 4),
(10, '2002-06-30', 5, 4, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pais`
--

CREATE TABLE `pais` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `ID_TECNICO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pais`
--

INSERT INTO `pais` (`ID`, `NOME`, `ID_TECNICO`) VALUES
(1, 'Argentina', 1),
(2, 'Franca', 2),
(3, 'Belgica', 3),
(4, 'Brasil', 4),
(5, 'Japao', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `posicao`
--

CREATE TABLE `posicao` (
  `ID` int(11) NOT NULL,
  `POSICAO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `posicao`
--

INSERT INTO `posicao` (`ID`, `POSICAO`) VALUES
(1, 'Atacante'),
(2, 'Meio-campista'),
(3, 'Lateral'),
(4, 'Zagueiro'),
(5, 'Goleiro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `resultados`
--

CREATE TABLE `resultados` (
  `ID` int(11) NOT NULL,
  `GOLS` int(11) DEFAULT NULL,
  `ID_ATLETA` int(11) DEFAULT NULL,
  `ID_JOGO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `resultados`
--

INSERT INTO `resultados` (`ID`, `GOLS`, `ID_ATLETA`, `ID_JOGO`) VALUES
(1, 2, 1, 1),
(2, 1, 27, 1),
(3, 1, 16, 2),
(4, 1, 50, 2),
(5, 0, NULL, 3),
(6, 1, 27, 3),
(7, 1, 28, 3),
(8, 1, 26, 3),
(9, 1, 26, 4),
(10, 1, 5, 4),
(11, 2, 43, 5),
(12, 2, 44, 5),
(13, 1, 42, 6),
(14, 1, 27, 6),
(15, 1, 28, 6),
(16, 1, 26, 6),
(17, 2, 29, 7),
(18, 1, 57, 7),
(19, 1, 50, 8),
(20, 2, 27, 8),
(21, 0, NULL, 9),
(22, 1, 68, 9),
(23, 1, 27, 10),
(24, 1, 28, 10),
(25, 1, 26, 10),
(26, 1, 70, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tecnico`
--

CREATE TABLE `tecnico` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tecnico`
--

INSERT INTO `tecnico` (`ID`, `NOME`) VALUES
(1, 'Marcelo Bielsa'),
(2, 'Roger Lemerre'),
(3, 'Robert Waseige'),
(4, 'Luiz Felipe Scolari'),
(5, 'Philippe Troussier');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `arbitro`
--
ALTER TABLE `arbitro`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_ATLETA1` (`ID_POSICAO`),
  ADD KEY `FK_ATLETA2` (`ID_PAIS`);

--
-- Índices de tabela `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_JOGO1` (`ID_ESTADIO`),
  ADD KEY `FK_JOGO2` (`ID_PAIS1`),
  ADD KEY `FK_JOGO3` (`ID_PAIS2`),
  ADD KEY `FK_JOGO4` (`ID_ARBITRO`);

--
-- Índices de tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_PAIS` (`ID_TECNICO`);

--
-- Índices de tabela `posicao`
--
ALTER TABLE `posicao`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_ATLETA` (`ID_ATLETA`),
  ADD KEY `FK_JOGO` (`ID_JOGO`);

--
-- Índices de tabela `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arbitro`
--
ALTER TABLE `arbitro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `atleta`
--
ALTER TABLE `atleta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de tabela `estadio`
--
ALTER TABLE `estadio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `posicao`
--
ALTER TABLE `posicao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `resultados`
--
ALTER TABLE `resultados`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `tecnico`
--
ALTER TABLE `tecnico`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `FK_ATLETA1` FOREIGN KEY (`ID_POSICAO`) REFERENCES `posicao` (`ID`),
  ADD CONSTRAINT `FK_ATLETA2` FOREIGN KEY (`ID_PAIS`) REFERENCES `pais` (`ID`);

--
-- Restrições para tabelas `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `FK_JOGO1` FOREIGN KEY (`ID_ESTADIO`) REFERENCES `estadio` (`ID`),
  ADD CONSTRAINT `FK_JOGO2` FOREIGN KEY (`ID_PAIS1`) REFERENCES `pais` (`ID`),
  ADD CONSTRAINT `FK_JOGO3` FOREIGN KEY (`ID_PAIS2`) REFERENCES `pais` (`ID`),
  ADD CONSTRAINT `FK_JOGO4` FOREIGN KEY (`ID_ARBITRO`) REFERENCES `arbitro` (`ID`);

--
-- Restrições para tabelas `pais`
--
ALTER TABLE `pais`
  ADD CONSTRAINT `FK_PAIS` FOREIGN KEY (`ID_TECNICO`) REFERENCES `tecnico` (`ID`);

--
-- Restrições para tabelas `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `FK_ATLETA` FOREIGN KEY (`ID_ATLETA`) REFERENCES `atleta` (`ID`),
  ADD CONSTRAINT `FK_JOGO` FOREIGN KEY (`ID_JOGO`) REFERENCES `jogo` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
