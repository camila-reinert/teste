-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2023 às 14:37
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
-- Banco de dados: `bombeiro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese`
--

CREATE TABLE `anamnese` (
  `id_anamnese` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese_gestacional`
--

CREATE TABLE `anamnese_gestacional` (
  `id_anamnese_gestacional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_paciente_maior`
--

CREATE TABLE `avaliacao_paciente_maior` (
  `id_avaliacao_paciente_maior` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_paciente_menor`
--

CREATE TABLE `avaliacao_paciente_menor` (
  `id_avaliacao_paciente_menor` int(11) NOT NULL,
  `abertura_ocular` varchar(17) NOT NULL,
  `resposta_verbal` varchar(28) NOT NULL,
  `resposta_motora` varchar(39) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `email` varchar(45) NOT NULL,
  `nome` text NOT NULL,
  `senha` varchar(45) NOT NULL,
  `telefone` varchar(12) NOT NULL,
  `admin_usu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`email`, `nome`, `senha`, `telefone`, `admin_usu`) VALUES
('Mateus@estudante.sesisenai.org.br', 'mateus', '123', '991910111', 'n'),
('mateus_cj_silva@estudante.sesisenai.org.br', 'Mateus', '123', '991910111', 's');

-- --------------------------------------------------------

--
-- Estrutura para tabela `decisao_transporte`
--

CREATE TABLE `decisao_transporte` (
  `id_decisao_transporte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `emergencias`
--

CREATE TABLE `emergencias` (
  `id_emergencias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `forma_conducao`
--

CREATE TABLE `forma_conducao` (
  `id_forma_conducao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `localizacao_traumas_maior`
--

CREATE TABLE `localizacao_traumas_maior` (
  `id_localizacao_traumas_maior` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `localizacao_traumas_menor`
--

CREATE TABLE `localizacao_traumas_menor` (
  `id_localizacao_traumas_menor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais_utilizados`
--

CREATE TABLE `materiais_utilizados` (
  `id_materiais_utilizados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `objetos_recolhidos`
--

CREATE TABLE `objetos_recolhidos` (
  `id_objetos_recolhidos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `nome_hospital_paciente` varchar(45) DEFAULT NULL,
  `data_paciente` date DEFAULT NULL,
  `sexo_paciente` varchar(1) DEFAULT NULL,
  `nome_paciente` varchar(45) DEFAULT NULL,
  `idade_paciente` varchar(45) DEFAULT NULL,
  `rg_cpf_paciente` varchar(45) DEFAULT NULL,
  `fone_paciente` varchar(45) DEFAULT NULL,
  `acompanhante_paciente` varchar(45) DEFAULT NULL,
  `idade_acompanhante_paciente` int(11) DEFAULT NULL,
  `local_ocorrencia_paciente` varchar(45) DEFAULT NULL,
  `n_usb_paciente` varchar(45) DEFAULT NULL,
  `cod_ur_paciente` varchar(45) DEFAULT NULL,
  `n_ocorr_paciente` varchar(45) DEFAULT NULL,
  `cod_ps_paciente` varchar(1) DEFAULT NULL,
  `desp_paciente` varchar(45) DEFAULT NULL,
  `h_ch_paciente` varchar(45) DEFAULT NULL,
  `km_final_paciente` varchar(45) DEFAULT NULL,
  `cod_sia_sus_paciente` int(45) DEFAULT NULL,
  `socorrista` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `nome_hospital_paciente`, `data_paciente`, `sexo_paciente`, `nome_paciente`, `idade_paciente`, `rg_cpf_paciente`, `fone_paciente`, `acompanhante_paciente`, `idade_acompanhante_paciente`, `local_ocorrencia_paciente`, `n_usb_paciente`, `cod_ur_paciente`, `n_ocorr_paciente`, `cod_ps_paciente`, `desp_paciente`, `h_ch_paciente`, `km_final_paciente`, `cod_sia_sus_paciente`, `socorrista`) VALUES
(32, 'ç', '2023-10-27', 'm', 'ç', '17', '1', '13454', 'ehsfdbh', 20, 'shsfgh', '1', '1', '123', '1', '1', '1', '1', 1, 'Mateus@estudante.sesisenai.org.br');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `abertura_ocular` text DEFAULT NULL,
  `resposta_verbal` text DEFAULT NULL,
  `resposta_motora` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `problemas_suspeitos`
--

CREATE TABLE `problemas_suspeitos` (
  `id_problemas_suspeitos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimentos_efetuados`
--

CREATE TABLE `procedimentos_efetuados` (
  `id_procedimentos_efetuados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_e_sintomas`
--

CREATE TABLE `sinais_e_sintomas` (
  `id_sinais_e_sintomas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_vitais`
--

CREATE TABLE `sinais_vitais` (
  `id_sinais_vitais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `avaliacao_paciente_menor`
--
ALTER TABLE `avaliacao_paciente_menor`
  ADD PRIMARY KEY (`id_avaliacao_paciente_menor`);

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `localizacao_traumas_maior`
--
ALTER TABLE `localizacao_traumas_maior`
  ADD PRIMARY KEY (`id_localizacao_traumas_maior`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`),
  ADD KEY `socorrista` (`socorrista`);

--
-- Índices de tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `avaliacao_paciente_menor`
--
ALTER TABLE `avaliacao_paciente_menor`
  ADD CONSTRAINT `avaliacao_paciente_menor_ibfk_1` FOREIGN KEY (`id_avaliacao_paciente_menor`) REFERENCES `paciente` (`id_paciente`);

--
-- Restrições para tabelas `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`socorrista`) REFERENCES `cadastro` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
