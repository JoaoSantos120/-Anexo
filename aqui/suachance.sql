-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 23-Nov-2021 às 18:46
-- Versão do servidor: 5.6.41-84.1
-- versão do PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `profro26_suachance`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cidade`
--

CREATE TABLE `tb_cidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_cidade`
--

INSERT INTO `tb_cidade` (`id`, `nome`, `id_estado`) VALUES
(1, 'ITANHAÉM', 1),
(2, 'MONGAGUÁ', 1),
(3, 'PERUÍBE', 1),
(4, 'ITARIRI', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contato`
--

CREATE TABLE `tb_contato` (
  `id` int(11) NOT NULL,
  `telefone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cidade` int(11) DEFAULT NULL,
  `id_curriculo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_curriculo`
--

CREATE TABLE `tb_curriculo` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_escolaridade`
--

CREATE TABLE `tb_escolaridade` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_curriculo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_estado`
--

CREATE TABLE `tb_estado` (
  `id` int(11) NOT NULL,
  `sigla` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_estado`
--

INSERT INTO `tb_estado` (`id`, `sigla`) VALUES
(1, 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_experiencia`
--

CREATE TABLE `tb_experiencia` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_termino` date DEFAULT NULL,
  `id_curriculo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_habilidade`
--

CREATE TABLE `tb_habilidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nivel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_curriculo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpf` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_usuario`
----
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_cidade`
--
ALTER TABLE `tb_cidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Índices para tabela `tb_contato`
--
ALTER TABLE `tb_contato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cidade` (`id_cidade`),
  ADD KEY `id_curriculo` (`id_curriculo`);

--
-- Índices para tabela `tb_curriculo`
--
ALTER TABLE `tb_curriculo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `tb_escolaridade`
--
ALTER TABLE `tb_escolaridade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_curriculo` (`id_curriculo`);

--
-- Índices para tabela `tb_estado`
--
ALTER TABLE `tb_estado`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_experiencia`
--
ALTER TABLE `tb_experiencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_curriculo` (`id_curriculo`);

--
-- Índices para tabela `tb_habilidade`
--
ALTER TABLE `tb_habilidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_curriculo` (`id_curriculo`);

--
-- Índices para tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cidade`
--
ALTER TABLE `tb_cidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_contato`
--
ALTER TABLE `tb_contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_curriculo`
--
ALTER TABLE `tb_curriculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_escolaridade`
--
ALTER TABLE `tb_escolaridade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_estado`
--
ALTER TABLE `tb_estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_experiencia`
--
ALTER TABLE `tb_experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_habilidade`
--
ALTER TABLE `tb_habilidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_cidade`
--
ALTER TABLE `tb_cidade`
  ADD CONSTRAINT `tb_cidade_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `tb_estado` (`id`);

--
-- Limitadores para a tabela `tb_contato`
--
ALTER TABLE `tb_contato`
  ADD CONSTRAINT `tb_contato_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `tb_cidade` (`id`),
  ADD CONSTRAINT `tb_contato_ibfk_2` FOREIGN KEY (`id_curriculo`) REFERENCES `tb_curriculo` (`id`);

--
-- Limitadores para a tabela `tb_curriculo`
--
ALTER TABLE `tb_curriculo`
  ADD CONSTRAINT `tb_curriculo_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`);

--
-- Limitadores para a tabela `tb_escolaridade`
--
ALTER TABLE `tb_escolaridade`
  ADD CONSTRAINT `tb_escolaridade_ibfk_1` FOREIGN KEY (`id_curriculo`) REFERENCES `tb_curriculo` (`id`);

--
-- Limitadores para a tabela `tb_experiencia`
--
ALTER TABLE `tb_experiencia`
  ADD CONSTRAINT `tb_experiencia_ibfk_1` FOREIGN KEY (`id_curriculo`) REFERENCES `tb_curriculo` (`id`);

--
-- Limitadores para a tabela `tb_habilidade`
--
ALTER TABLE `tb_habilidade`
  ADD CONSTRAINT `tb_habilidade_ibfk_1` FOREIGN KEY (`id_curriculo`) REFERENCES `tb_curriculo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
