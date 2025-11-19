-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/11/2025 às 20:45
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
-- Banco de dados: `db_logistica`
--
CREATE DATABASE IF NOT EXISTS `db_logistica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_logistica`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_auditoria`
--

DROP TABLE IF EXISTS `tb_auditoria`;
CREATE TABLE `tb_auditoria` (
  `id_auditoria` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `status_antigo` varchar(100) NOT NULL,
  `status_novo` varchar(100) NOT NULL,
  `local_antigo` varchar(100) NOT NULL,
  `local_novo` varchar(100) NOT NULL,
  `data_hora` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_envios`
--

DROP TABLE IF EXISTS `tb_envios`;
CREATE TABLE `tb_envios` (
  `id_envio` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `condicao` enum('pendente','em trânsito','entregue') DEFAULT 'pendente',
  `localizacao` varchar(255) DEFAULT NULL,
  `remetente` varchar(255) DEFAULT NULL,
  `destinatario` varchar(255) DEFAULT NULL,
  `end_remetente` varchar(255) DEFAULT NULL,
  `end_destinatario` varchar(255) DEFAULT NULL,
  `data_postagem` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_envios`
--

INSERT INTO `tb_envios` (`id_envio`, `codigo`, `descricao`, `condicao`, `localizacao`, `remetente`, `destinatario`, `end_remetente`, `end_destinatario`, `data_postagem`) VALUES
(1, '2055193131', 'asdf', 'pendente', 'Centro de distribuição', 'asdff', 'asdf', 'asdf', 'asdf', '0000-00-00'),
(2, '1258234237', 'asdf', 'pendente', 'Centro de distribuição', 'asdf', 'asdf', 'asdf', 'asdf', '2000-12-12'),
(3, '6885971155', 'asdf', 'pendente', 'Centro de distribuição', 'asdf', 'sadf', 'asdf', 'asdf', '0000-00-00'),
(4, '3779485678', 'asdf', 'pendente', 'Centro de distribuição', 'asdf', 'asdf', 'asdf', 'asdf', '0000-00-00'),
(5, '3001873663', 'asdf', 'pendente', 'Centro de distribuição', 'sdaf', 'asfddsaf', 'sda', 'adsf', '0000-00-00'),
(6, '1759700449', 'sdaf', 'pendente', 'Centro de distribuição', 'sdaf', 'asdf', 'asdff', 'sadf', '2000-12-21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `id_user` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo` enum('usuario','operador','admin') NOT NULL DEFAULT 'usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `login`, `senha`, `tipo`) VALUES
(1, 'admin', '$2b$12$N2PCjPKp9rOfBpSr5vOWl.LtS/IjfLam6K5znYvqjnuC3ygkGqFFy', 'admin'),
(38, 'bratz', '$2b$12$aFGznthABz9eDHF6IHh/0e/CImsTXhhzYkSunR9M1eFITzLBZ/PLC', 'operador');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_auditoria`
--
ALTER TABLE `tb_auditoria`
  ADD PRIMARY KEY (`id_auditoria`);

--
-- Índices de tabela `tb_envios`
--
ALTER TABLE `tb_envios`
  ADD PRIMARY KEY (`id_envio`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Índices de tabela `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_auditoria`
--
ALTER TABLE `tb_auditoria`
  MODIFY `id_auditoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_envios`
--
ALTER TABLE `tb_envios`
  MODIFY `id_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
