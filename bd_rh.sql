-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/11/2023 às 23:47
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
-- Banco de dados: `bd_rh`
--
CREATE DATABASE IF NOT EXISTS `bd_rh` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_rh`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE `administrador` (
  `Cod_Func` int(11) NOT NULL,
  `Des_CRA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `administrador`
--

INSERT INTO `administrador` (`Cod_Func`, `Des_CRA`) VALUES
(1, '56483000'),
(6, '24797657'),
(7, '84745666'),
(12, '20355567'),
(16, '32765906');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo` (
  `Cod_Cargo` tinyint(4) NOT NULL,
  `Nom_Cargo` varchar(50) NOT NULL,
  `Val_Salario_Base` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cargo`
--

INSERT INTO `cargo` (`Cod_Cargo`, `Nom_Cargo`, `Val_Salario_Base`) VALUES
(1, 'Engenheiro', 1890.00),
(2, 'Administrador', 2780.00),
(3, 'Secretaria', 498.00),
(4, 'Analista de Sistemas', 2720.00),
(5, 'Programador', 830.00),
(6, 'Vendedor', 810.00),
(7, 'Pão de Chinelo', 150.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamento`
--

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE `departamento` (
  `Cod_Departamento` int(11) NOT NULL,
  `Nom_Departamento` varchar(30) NOT NULL,
  `Cod_Func_Gerente` int(11) DEFAULT NULL,
  `Dta_Inicio_Gerente` date DEFAULT NULL,
  `Val_Gratificacao_Gerente` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamento`
--

INSERT INTO `departamento` (`Cod_Departamento`, `Nom_Departamento`, `Cod_Func_Gerente`, `Dta_Inicio_Gerente`, `Val_Gratificacao_Gerente`) VALUES
(1, 'Engenharia e Produção', 6, '2001-01-24', 290.00),
(2, 'Tecnologia e Informação', 1, '2009-09-23', 370.00),
(3, 'Administração BD_Pessoal', 7, '2001-07-17', 400.00),
(4, 'Recursos Humanos', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `dependente`
--

DROP TABLE IF EXISTS `dependente`;
CREATE TABLE `dependente` (
  `Cod_Dependente` int(11) NOT NULL,
  `Cod_Func` int(11) NOT NULL,
  `Nom_Dependente` varchar(50) NOT NULL,
  `Dta_Nascimento` date DEFAULT NULL,
  `Des_Sexo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dependente`
--

INSERT INTO `dependente` (`Cod_Dependente`, `Cod_Func`, `Nom_Dependente`, `Dta_Nascimento`, `Des_Sexo`) VALUES
(1, 2, 'Beatriz Lima', '1975-11-04', 'F'),
(2, 2, 'Lucas Lima', '1999-10-04', 'M'),
(3, 4, 'Samuel Vieira', '1945-11-18', 'M'),
(4, 4, 'Renata Vieira', '1948-12-16', 'F'),
(5, 4, 'Luciana Almeida', '2005-11-20', 'F'),
(6, 7, 'Mariza', '1976-11-08', 'F'),
(7, 9, 'Jose Figueira', '2001-02-09', 'M'),
(8, 10, 'Beatriz Alvarenga', '2009-10-14', 'F'),
(9, 13, 'Elias Samurai', '2001-11-07', 'M');

-- --------------------------------------------------------

--
-- Estrutura para tabela `engenheiro`
--

DROP TABLE IF EXISTS `engenheiro`;
CREATE TABLE `engenheiro` (
  `Cod_Func` int(11) NOT NULL,
  `Des_CREA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `engenheiro`
--

INSERT INTO `engenheiro` (`Cod_Func`, `Des_CREA`) VALUES
(2, '84845790'),
(6, '97474766'),
(7, '09646478'),
(8, '90988221'),
(10, '94747656'),
(11, '97474699'),
(15, '97474651');

-- --------------------------------------------------------

--
-- Estrutura para tabela `formacao_escolar`
--

DROP TABLE IF EXISTS `formacao_escolar`;
CREATE TABLE `formacao_escolar` (
  `Cod_Formacao` tinyint(4) NOT NULL,
  `Nom_Formacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `formacao_escolar`
--

INSERT INTO `formacao_escolar` (`Cod_Formacao`, `Nom_Formacao`) VALUES
(1, 'Ensino Primário'),
(2, 'Ensino Secundario'),
(3, 'Ensino Medio'),
(4, 'Ensino Superior'),
(5, 'Especialização'),
(6, 'Mestre'),
(7, 'Doutor');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE `funcionario` (
  `Cod_Func` int(11) NOT NULL,
  `Nom_Func` varchar(50) NOT NULL,
  `Des_Endereco` varchar(100) DEFAULT NULL,
  `Des_Num_Telefone` varchar(20) DEFAULT NULL,
  `Dta_Nascimento` date DEFAULT NULL,
  `Dta_Demissao` date DEFAULT NULL,
  `Dta_Admissao` date DEFAULT NULL,
  `Val_Salario` decimal(18,2) DEFAULT NULL,
  `Num_Total_Dependentes` tinyint(4) DEFAULT NULL,
  `Cod_Cargo` tinyint(4) DEFAULT NULL,
  `Dta_Inicio_Cargo` date DEFAULT NULL,
  `Cod_Formacao` tinyint(4) DEFAULT NULL,
  `Cod_Func_Supervisor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`Cod_Func`, `Nom_Func`, `Des_Endereco`, `Des_Num_Telefone`, `Dta_Nascimento`, `Dta_Demissao`, `Dta_Admissao`, `Val_Salario`, `Num_Total_Dependentes`, `Cod_Cargo`, `Dta_Inicio_Cargo`, `Cod_Formacao`, `Cod_Func_Supervisor`) VALUES
(1, 'Iremar Nunes de Lima', 'Rua Quebec 145 João Pinheiro BH', '31-33750956', '1969-01-05', NULL, '1998-02-01', 17670.00, 0, 4, '2009-02-01', 6, NULL),
(2, 'Renata Almeida Silva', 'Rua Quebec 145 João Pinheiro BH', '31-34094567', '1955-01-25', NULL, '1999-07-13', 2480.00, 2, 1, '1999-01-17', 4, 1),
(3, 'João Rodrigues da Paixão', 'Av. Antônio Cargolos 2389 BH', '31-54343278', '1967-06-27', NULL, '2001-03-18', 1100.00, 0, 5, '1998-12-18', 3, 1),
(4, 'Ana Maria Petronilho', 'Av. Afonso Pena 383 BH', '31-34983432', '1970-03-19', NULL, '2009-07-13', 1100.00, 3, 3, '2001-09-16', 4, 3),
(5, 'Geraldo Almeida dos Santos', 'Rua Barão do Bareri 945 BH', '31-91190997', '1965-08-26', '2001-07-23', '1999-08-16', 1890.00, 0, 4, '1999-11-20', 2, NULL),
(6, 'Maurício Sales Santos', 'Rua Apaendi 564 Nova Lima', '31-98654332', '1960-12-22', NULL, '2001-12-23', 2280.00, 0, 1, '2011-11-25', 3, NULL),
(7, 'Maria Antonia Oliveira', 'Rua Emiliano Franklin 639 Contagem', '31-9867663', '1972-02-14', NULL, '2009-03-19', 2880.00, 1, 1, '2009-09-23', 7, 6),
(8, 'Beatriz Rodrigues Oliveira', 'Rua Itaquera 387/213 BH', '31-34442487', '1967-11-28', NULL, '2001-06-30', 2280.00, 0, 1, '2001-12-21', 3, 6),
(9, 'Antônio Teixeira Pannel', 'Rua Ipanema 07 BH', '31-34136966', '1959-04-24', NULL, '1998-01-21', 3270.00, 1, 2, '1999-05-16', 3, 7),
(10, 'Lucas Silva de Lima', 'Rua Jequia 298 BH', '31-31500090', '1975-10-26', NULL, '2001-06-29', 2680.00, 1, 1, '2001-06-23', 6, 3),
(11, 'Manuel Costa Porto', 'Av. Olegário Maciel 456 BH', '31-34919030', '1977-12-25', '2001-08-27', '2009-08-19', 2480.00, 0, 1, '2009-03-18', 4, NULL),
(12, 'Adriana Vaz de Mello', 'Rua Senador Amaral 187/432 BH', '31-34817575', '1971-11-29', NULL, '1999-09-24', 1100.00, 0, 3, '2001-11-17', 5, 4),
(13, 'Giovani Braz Ferraz', 'Rua Arthur da Tavola 567/62 BH', '31-30938998', '1956-08-14', NULL, '1993-11-30', 2590.89, 1, 4, '2009-01-23', 7, NULL),
(14, 'Luiz Freitas Figueiredo', 'Rua Marte 98 BH', '31-30947576', '1976-06-21', NULL, '1999-03-29', 1100.00, 0, 6, '1999-09-22', 1, 13),
(15, 'Josef Brindick leão', 'Rua Osama Bin Lader 876 SP', '31-35993234', '1973-03-23', NULL, '2001-04-28', 2680.00, 0, 1, '2001-05-13', 6, 6),
(16, 'Bill Gates', 'Rua do Broklin 876/443 EUA', '55-12345688', '1960-07-16', '2001-05-18', '2001-04-28', 1100.00, 0, 6, '2001-04-18', 2, 1),
(17, 'João Nada Faz', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lotacao`
--

DROP TABLE IF EXISTS `lotacao`;
CREATE TABLE `lotacao` (
  `Cod_Lotacao` int(11) NOT NULL,
  `Cod_Func` int(11) NOT NULL,
  `Cod_Departamento` int(11) NOT NULL,
  `Dta_Inicio_Lotacao` date NOT NULL,
  `Dta_Fim_Lotacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lotacao`
--

INSERT INTO `lotacao` (`Cod_Lotacao`, `Cod_Func`, `Cod_Departamento`, `Dta_Inicio_Lotacao`, `Dta_Fim_Lotacao`) VALUES
(1, 1, 2, '2009-04-21', NULL),
(2, 2, 1, '2001-06-16', NULL),
(3, 3, 2, '2001-08-16', NULL),
(4, 4, 3, '2009-09-15', NULL),
(5, 5, 2, '1999-12-21', NULL),
(6, 6, 1, '2009-09-24', NULL),
(7, 7, 1, '2009-12-16', NULL),
(8, 8, 1, '1999-07-19', NULL),
(9, 9, 4, '1987-01-17', '2009-01-27'),
(10, 9, 3, '2009-02-27', NULL),
(11, 10, 1, '2001-04-09', NULL),
(12, 11, 1, '2009-11-27', NULL),
(13, 12, 1, '1991-12-17', '1999-10-19'),
(14, 12, 3, '1999-10-19', NULL),
(15, 13, 2, '2009-09-15', NULL),
(16, 13, 3, '1999-06-15', '2009-09-14'),
(17, 14, 1, '2009-06-18', NULL),
(18, 15, 2, '1999-02-12', '2009-06-15'),
(19, 15, 1, '2009-06-04', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `parametros`
--

DROP TABLE IF EXISTS `parametros`;
CREATE TABLE `parametros` (
  `Cod_Parametro` int(11) NOT NULL,
  `Nom_Empresa` char(50) NOT NULL,
  `Des_CNPJ` char(20) NOT NULL,
  `Val_Salario_Minimo` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `parametros`
--

INSERT INTO `parametros` (`Cod_Parametro`, `Nom_Empresa`, `Des_CNPJ`, `Val_Salario_Minimo`) VALUES
(1, 'Newton Paiva', '11.222.333/0001-81', 1100.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `Cod_Pedido` int(11) NOT NULL,
  `Val_Total_Pedido` decimal(18,2) NOT NULL,
  `Dta_Pedido` datetime DEFAULT NULL,
  `Cod_Func` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`Cod_Pedido`, `Val_Total_Pedido`, `Dta_Pedido`, `Cod_Func`) VALUES
(1, 403.70, '2020-01-13 00:00:00', 4),
(2, 799.90, '2020-02-23 00:00:00', 6),
(3, 181.90, '2020-11-16 00:00:00', 8),
(4, 2643.16, '2019-11-16 00:00:00', 10),
(5, 3241.21, '2019-10-16 00:00:00', 12),
(6, 534.04, '2020-02-16 00:00:00', 2),
(7, 1050.00, '2020-05-15 00:00:00', 4),
(8, 1577.92, '2019-02-15 00:00:00', 8),
(9, 494.70, '2020-01-22 00:00:00', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido_itens`
--

DROP TABLE IF EXISTS `pedido_itens`;
CREATE TABLE `pedido_itens` (
  `Cod_Pedido_Itens` int(11) NOT NULL,
  `Cod_Produto` int(11) NOT NULL,
  `Cod_Pedido` int(11) NOT NULL,
  `Num_Quantidade` int(11) NOT NULL,
  `Val_Preco_Pago` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedido_itens`
--

INSERT INTO `pedido_itens` (`Cod_Pedido_Itens`, `Cod_Produto`, `Cod_Pedido`, `Num_Quantidade`, `Val_Preco_Pago`) VALUES
(1, 5, 1, 3, 120.90),
(2, 2, 1, 1, 41.00),
(3, 8, 2, 1, 799.90),
(4, 7, 3, 1, 127.90),
(5, 10, 3, 2, 27.00),
(6, 1, 4, 2, 240.00),
(7, 7, 4, 4, 534.04),
(8, 10, 4, 1, 27.00),
(9, 7, 5, 3, 400.53),
(10, 9, 5, 1, 1899.00),
(11, 2, 5, 1, 42.00),
(12, 6, 5, 1, 98.62),
(13, 7, 6, 2, 267.02),
(14, 2, 7, 5, 210.00),
(15, 6, 8, 4, 394.48),
(16, 1, 9, 1, 240.00),
(17, 10, 9, 3, 84.90);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE `produto` (
  `Cod_Produto` int(11) NOT NULL,
  `Nom_Produto` varchar(50) NOT NULL,
  `Num_Quantidade_Estoque` int(11) NOT NULL,
  `Val_Preco_Venda` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`Cod_Produto`, `Nom_Produto`, `Num_Quantidade_Estoque`, `Val_Preco_Venda`) VALUES
(1, 'Produto 1', 20, 240.00),
(2, 'Produto 2', 38, 42.00),
(3, 'Produto 3', 5, 3242.70),
(4, 'Produto 4', 12, 842.34),
(5, 'Produto 5', 36, 46.10),
(6, 'Produto 6', 23, 98.62),
(7, 'Produto 7', 13, 133.51),
(8, 'Produto 8', 7, 799.90),
(9, 'Produto 9', 19, 1899.00),
(10, 'Produto 10', 39, 28.30),
(11, 'Produto 11', 3, 570.90);

-- --------------------------------------------------------

--
-- Estrutura para tabela `projeto`
--

DROP TABLE IF EXISTS `projeto`;
CREATE TABLE `projeto` (
  `Cod_Projeto` int(11) NOT NULL,
  `Nom_Projeto` varchar(50) NOT NULL,
  `Dta_Inicio` date NOT NULL,
  `Dta_Fim` date DEFAULT NULL,
  `Cod_Func_Coordenador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `projeto`
--

INSERT INTO `projeto` (`Cod_Projeto`, `Nom_Projeto`, `Dta_Inicio`, `Dta_Fim`, `Cod_Func_Coordenador`) VALUES
(1, 'Construção de Tucuruã-', '2009-01-13', NULL, 6),
(2, 'Construção do Prédio Tamanduá', '2001-09-15', NULL, 7),
(3, 'Desenvolvimento do Sistema SPD ', '2009-03-23', '2004-11-20', NULL),
(4, 'Implantação da Qualidade Total', '1999-01-14', NULL, 12),
(5, 'Desenvolvimento Sistema Gestão', '2009-09-27', NULL, 1),
(6, 'DNA e SMPB Corrupção', '2005-04-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalha_em`
--

DROP TABLE IF EXISTS `trabalha_em`;
CREATE TABLE `trabalha_em` (
  `Cod_Trabalha_Em` int(11) NOT NULL,
  `Cod_Func` int(11) NOT NULL,
  `Cod_Projeto` int(11) NOT NULL,
  `Num_Total_Horas` decimal(7,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `trabalha_em`
--

INSERT INTO `trabalha_em` (`Cod_Trabalha_Em`, `Cod_Func`, `Cod_Projeto`, `Num_Total_Horas`) VALUES
(1, 2, 2, 17.0),
(2, 6, 2, 11.0),
(3, 7, 1, 9.0),
(4, 7, 2, 15.0),
(5, 8, 2, 12.0),
(6, 10, 2, 13.0),
(7, 10, 1, 77.0),
(8, 11, 1, 90.0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
CREATE TABLE `vendedor` (
  `Cod_Func` int(11) NOT NULL,
  `Num_Percentual_Comissao` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendedor`
--

INSERT INTO `vendedor` (`Cod_Func`, `Num_Percentual_Comissao`) VALUES
(2, 2.2),
(4, 1.8),
(6, 4.3),
(8, 6.1),
(10, 3.7),
(12, 5.9),
(14, 3.0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Cod_Func`);

--
-- Índices de tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`Cod_Cargo`);

--
-- Índices de tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`Cod_Departamento`),
  ADD KEY `FK_Departamento_Gerente` (`Cod_Func_Gerente`);

--
-- Índices de tabela `dependente`
--
ALTER TABLE `dependente`
  ADD PRIMARY KEY (`Cod_Dependente`),
  ADD KEY `FK_Funcionario_Dependente` (`Cod_Func`);

--
-- Índices de tabela `engenheiro`
--
ALTER TABLE `engenheiro`
  ADD PRIMARY KEY (`Cod_Func`);

--
-- Índices de tabela `formacao_escolar`
--
ALTER TABLE `formacao_escolar`
  ADD PRIMARY KEY (`Cod_Formacao`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`Cod_Func`),
  ADD KEY `FK_Funcionario_Cargo` (`Cod_Cargo`),
  ADD KEY `FK_Funcionario_Formacao_Escolar` (`Cod_Formacao`),
  ADD KEY `FK_Funcionario_Supervisiona` (`Cod_Func_Supervisor`);

--
-- Índices de tabela `lotacao`
--
ALTER TABLE `lotacao`
  ADD PRIMARY KEY (`Cod_Lotacao`),
  ADD KEY `FK_Departamento_Lotacao` (`Cod_Departamento`),
  ADD KEY `FK_Funcionario_Lotacao` (`Cod_Func`);

--
-- Índices de tabela `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`Cod_Parametro`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Cod_Pedido`),
  ADD KEY `FK_Pedido_Vendedor` (`Cod_Func`);

--
-- Índices de tabela `pedido_itens`
--
ALTER TABLE `pedido_itens`
  ADD PRIMARY KEY (`Cod_Pedido_Itens`),
  ADD KEY `FK_Pedido_Pedido_Itens` (`Cod_Pedido`),
  ADD KEY `FK_Produto_Pedido_Itens` (`Cod_Produto`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`Cod_Produto`);

--
-- Índices de tabela `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`Cod_Projeto`),
  ADD KEY `FK_Projeto_Coordenador` (`Cod_Func_Coordenador`);

--
-- Índices de tabela `trabalha_em`
--
ALTER TABLE `trabalha_em`
  ADD PRIMARY KEY (`Cod_Trabalha_Em`),
  ADD KEY `FK_Engenheiro_Trabalha_Em` (`Cod_Func`),
  ADD KEY `FK_Projeto_Trabalha_Em` (`Cod_Projeto`);

--
-- Índices de tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`Cod_Func`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dependente`
--
ALTER TABLE `dependente`
  MODIFY `Cod_Dependente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `lotacao`
--
ALTER TABLE `lotacao`
  MODIFY `Cod_Lotacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `pedido_itens`
--
ALTER TABLE `pedido_itens`
  MODIFY `Cod_Pedido_Itens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `trabalha_em`
--
ALTER TABLE `trabalha_em`
  MODIFY `Cod_Trabalha_Em` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `FK_Funcionario_Administrador` FOREIGN KEY (`Cod_Func`) REFERENCES `funcionario` (`Cod_Func`);

--
-- Restrições para tabelas `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `FK_Departamento_Gerente` FOREIGN KEY (`Cod_Func_Gerente`) REFERENCES `administrador` (`Cod_Func`);

--
-- Restrições para tabelas `dependente`
--
ALTER TABLE `dependente`
  ADD CONSTRAINT `FK_Funcionario_Dependente` FOREIGN KEY (`Cod_Func`) REFERENCES `funcionario` (`Cod_Func`) ON DELETE CASCADE;

--
-- Restrições para tabelas `engenheiro`
--
ALTER TABLE `engenheiro`
  ADD CONSTRAINT `FK_Funcionario_Engenheiro` FOREIGN KEY (`Cod_Func`) REFERENCES `funcionario` (`Cod_Func`);

--
-- Restrições para tabelas `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `FK_Funcionario_Cargo` FOREIGN KEY (`Cod_Cargo`) REFERENCES `cargo` (`Cod_Cargo`),
  ADD CONSTRAINT `FK_Funcionario_Formacao_Escolar` FOREIGN KEY (`Cod_Formacao`) REFERENCES `formacao_escolar` (`Cod_Formacao`),
  ADD CONSTRAINT `FK_Funcionario_Supervisiona` FOREIGN KEY (`Cod_Func_Supervisor`) REFERENCES `funcionario` (`Cod_Func`);

--
-- Restrições para tabelas `lotacao`
--
ALTER TABLE `lotacao`
  ADD CONSTRAINT `FK_Departamento_Lotacao` FOREIGN KEY (`Cod_Departamento`) REFERENCES `departamento` (`Cod_Departamento`),
  ADD CONSTRAINT `FK_Funcionario_Lotacao` FOREIGN KEY (`Cod_Func`) REFERENCES `funcionario` (`Cod_Func`);

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_Pedido_Vendedor` FOREIGN KEY (`Cod_Func`) REFERENCES `vendedor` (`Cod_Func`);

--
-- Restrições para tabelas `pedido_itens`
--
ALTER TABLE `pedido_itens`
  ADD CONSTRAINT `FK_Pedido_Pedido_Itens` FOREIGN KEY (`Cod_Pedido`) REFERENCES `pedido` (`Cod_Pedido`),
  ADD CONSTRAINT `FK_Produto_Pedido_Itens` FOREIGN KEY (`Cod_Produto`) REFERENCES `produto` (`Cod_Produto`);

--
-- Restrições para tabelas `projeto`
--
ALTER TABLE `projeto`
  ADD CONSTRAINT `FK_Projeto_Coordenador` FOREIGN KEY (`Cod_Func_Coordenador`) REFERENCES `administrador` (`Cod_Func`);

--
-- Restrições para tabelas `trabalha_em`
--
ALTER TABLE `trabalha_em`
  ADD CONSTRAINT `FK_Engenheiro_Trabalha_Em` FOREIGN KEY (`Cod_Func`) REFERENCES `engenheiro` (`Cod_Func`),
  ADD CONSTRAINT `FK_Projeto_Trabalha_Em` FOREIGN KEY (`Cod_Projeto`) REFERENCES `projeto` (`Cod_Projeto`);

--
-- Restrições para tabelas `vendedor`
--
ALTER TABLE `vendedor`
  ADD CONSTRAINT `FK_Funcionario_Vendedor` FOREIGN KEY (`Cod_Func`) REFERENCES `funcionario` (`Cod_Func`);
COMMIT;

--SELECT cod_func, nom_func, val_salario, Nom_Cargo
--FROM funcionario, cargo 
--WHERE funcionario.Cod_Cargo = cargo.Cod_Cargo;

--SELECT cod_func, nom_func, dta_nascimento
--FROM funcionario
--WHERE val_salario >= 200 and val_salario <= 3000
--ORDER BY dta_nascimento DESC;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
