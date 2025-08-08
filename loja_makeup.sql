-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/08/2025 às 02:58
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_makeup`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'Batom'),
(2, 'Base'),
(3, 'Delineador'),
(4, 'Pó'),
(5, 'Blush');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `estoque`, `imagem`) VALUES
(1, 'Batom Matte Rosa', 'Batom de longa duração com acabamento matte.', 29.90, 50, 'batom_rosa.jpg'),
(2, 'Base Líquida', 'Base líquida de alta cobertura para todos os tons de pele.', 59.90, 40, 'base_liquida.jpg'),
(3, 'Delineador Preto', 'Delineador líquido para olhos marcantes.', 25.50, 60, 'deliniador_preto.jpg'),
(4, 'Pó Compacto', 'Pó compacto com acabamento natural.', 35.00, 45, 'po_compacto.jpg'),
(5, 'Blush Coral', 'Blush com efeito natural e duradouro.', 27.90, 35, 'blush_coral.jpg'),
(6, 'Máscara para Cílios', 'Máscara para cílios com volume intenso.', 39.90, 55, 'mascara_cilios.jpg'),
(7, 'Iluminador', 'Iluminador líquido para um brilho radiante.', 32.50, 30, 'iluminador.jpg'),
(8, 'Primer Facial', 'Primer para preparar a pele antes da maquiagem.', 42.00, 25, 'primer_facial.jpg'),
(9, 'Batom Gloss', 'Batom gloss com brilho intenso.', 22.00, 70, 'batom_gloss.jpg'),
(10, 'Paleta de Sombras', 'Paleta com 12 cores neutras e vibrantes.', 85.00, 20, 'paleta_sombras.jpg'),
(11, 'Corretivo Líquido', 'Corretivo líquido de alta cobertura.', 33.50, 40, 'corretivo_liquido.jpg'),
(12, 'Lápis de Sobrancelha', 'Lápis para sobrancelhas de longa duração.', 19.90, 50, 'lapis_sobrancelha.jpg'),
(13, 'Fixador de Maquiagem', 'Spray fixador para maquiagem duradoura.', 38.00, 30, 'fixador_maquiagem.jpg'),
(14, 'Batom Vermelho', 'Batom vermelho clássico e vibrante.', 30.00, 55, 'batom_vermelho.jpg'),
(15, 'Delineador Marrom', 'Delineador marrom suave para o dia a dia.', 25.00, 45, 'delineador_marrom.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
