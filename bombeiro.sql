-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/11/2023 às 16:19
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
  `id_anamnese` int(11) NOT NULL,
  `O_que_aconteceu` text DEFAULT NULL,
  `Aconteceu_outras_vezes` tinyint(1) DEFAULT NULL,
  `A_quanto_tempo_isso_aconteceu` text DEFAULT NULL,
  `Possui_algum_problema_de_saude` tinyint(1) DEFAULT NULL,
  `Quais_broblemas` text DEFAULT NULL,
  `Faz_uso_de_medicacao` tinyint(1) DEFAULT NULL,
  `Quais_medicacoes` text DEFAULT NULL,
  `Horario_da_ultima_medicacao` time(5) DEFAULT NULL,
  `Alergico_a_algo` tinyint(1) DEFAULT NULL,
  `Especifique` text DEFAULT NULL,
  `Ingeriu_alimento_ou_liquido_mais_seish` tinyint(1) DEFAULT NULL,
  `Que_horas` time(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese_gestacional`
--

CREATE TABLE `anamnese_gestacional` (
  `id_anamnese_gestacional` int(11) NOT NULL,
  `Periodo_de_gestacao` text DEFAULT NULL,
  `Fez_prenatal` tinyint(1) DEFAULT NULL,
  `Nome_do_medico` text DEFAULT NULL,
  `possibilidade_de_complicacoes` tinyint(1) DEFAULT NULL,
  `primeiro_filho` tinyint(1) DEFAULT NULL,
  `Quantos` text DEFAULT NULL,
  `Que_horas_iniciaram_as_contracoes` time(5) DEFAULT NULL,
  `Duracao` text DEFAULT NULL,
  `Intervalo` text DEFAULT NULL,
  `Sente_pressao_quadril_ou_vontade_evacuar` tinyint(1) DEFAULT NULL,
  `ruptura_da_bolsa` tinyint(1) DEFAULT NULL,
  `Foi_feito_inspecao_visual` tinyint(1) DEFAULT NULL,
  `Parto_realizado` tinyint(1) DEFAULT NULL,
  `Hora_do_nascimento` time(5) DEFAULT NULL,
  `Sexo_do_bebe` tinyint(1) DEFAULT NULL,
  `Nome_do_bebe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_paciente_maior`
--

CREATE TABLE `avaliacao_paciente_maior` (
  `id_avaliacao_paciente_maior` int(11) NOT NULL,
  `abertura_ocular` varchar(26) DEFAULT NULL,
  `resposta_verbal` varchar(26) DEFAULT NULL,
  `resposta_motora` varchar(26) DEFAULT NULL,
  `total` int(4) DEFAULT NULL
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
('mateus@gmail.com', 'Mateus', '123', '991910111', 's'),
('mateus_cj_silva@estudante.sesisenai.org.br', 'Mateus', '123', '991910111', 's');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cinematica`
--

CREATE TABLE `cinematica` (
  `id_cinematica` int(2) NOT NULL,
  `Disturbio_de_comportamento` tinyint(1) DEFAULT NULL,
  `Encontrado_de_capacete` tinyint(1) DEFAULT NULL,
  `Encontrado_de_cinto` tinyint(1) DEFAULT NULL,
  `Para_brisas_avariado` tinyint(1) DEFAULT NULL,
  `Caminhando_na_cena` tinyint(1) DEFAULT NULL,
  `Painel_avariado` tinyint(1) DEFAULT NULL,
  `Volante_torcido` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `decisao_transporte`
--

CREATE TABLE `decisao_transporte` (
  `id_decisao_transporte` int(11) NOT NULL,
  `estado` varchar(26) DEFAULT NULL,
  `M` text DEFAULT NULL,
  `S1` text DEFAULT NULL,
  `S2` text DEFAULT NULL,
  `Demante` text DEFAULT NULL,
  `equipe` varchar(16) DEFAULT NULL
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
  `id_forma_conducao` int(11) NOT NULL,
  `forma_conducao` varchar(26) DEFAULT NULL,
  `vitima_era` varchar(26) DEFAULT NULL
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
  `id_materiais_utilizados` int(11) NOT NULL,
  `Material` text DEFAULT NULL,
  `quantidade` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `objetos_recolhidos`
--

CREATE TABLE `objetos_recolhidos` (
  `id_objetos_recolhidos` int(11) NOT NULL,
  `objetos_recolhidos_u` text NOT NULL,
  `objetos_recolhidos_d` text DEFAULT NULL,
  `objetos_recolhidos_t` text DEFAULT NULL,
  `objetos_recolhidos_q` text DEFAULT NULL
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
  `id_problemas_suspeitos` int(11) NOT NULL,
  `Psiquiatrico` tinyint(1) DEFAULT NULL,
  `e_respiratorio` tinyint(1) DEFAULT NULL,
  `tipo_respiratorio` varchar(26) DEFAULT NULL,
  `e_diabetes` tinyint(1) DEFAULT NULL,
  `tipo_diabetes` varchar(26) DEFAULT NULL,
  `e_obstetrico` tinyint(1) DEFAULT NULL,
  `tipo_obstetrico` varchar(26) DEFAULT NULL,
  `e_transporte` tinyint(1) DEFAULT NULL,
  `tipo_transporte` varchar(26) DEFAULT NULL,
  `outros` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimentos_efetuados`
--

CREATE TABLE `procedimentos_efetuados` (
  `id_procedimentos_efetuados` int(11) NOT NULL,
  `aspiracao` tinyint(1) DEFAULT NULL,
  `avaliacao_inicial` tinyint(1) DEFAULT NULL,
  `avaliacao_continuada` tinyint(1) DEFAULT NULL,
  `chave_de_rautek` tinyint(1) DEFAULT NULL,
  `canula_de_guedel` tinyint(1) DEFAULT NULL,
  `desobstrucao_de_va` tinyint(1) DEFAULT NULL,
  `desobstrucao_do_dea` tinyint(1) DEFAULT NULL,
  `emprego_do_dea` tinyint(1) DEFAULT NULL,
  `gerenciamento_dos_riscos` tinyint(1) DEFAULT NULL,
  `limpeza_de_ferimentos` tinyint(1) DEFAULT NULL,
  `curativos` tinyint(1) DEFAULT NULL,
  `compressivo` tinyint(1) DEFAULT NULL,
  `encravamento` tinyint(1) DEFAULT NULL,
  `ocular` tinyint(1) DEFAULT NULL,
  `queimadura` tinyint(1) DEFAULT NULL,
  `simples` tinyint(1) DEFAULT NULL,
  `3_pontas` tinyint(1) DEFAULT NULL,
  `imobilizacoes` tinyint(1) DEFAULT NULL,
  `membro_do_inf_dir` tinyint(1) DEFAULT NULL,
  `membro_do_inf_esq` tinyint(1) DEFAULT NULL,
  `membro_do_sup_dir` tinyint(1) DEFAULT NULL,
  `membro_do_sup_esq` tinyint(1) DEFAULT NULL,
  `quadril` tinyint(1) DEFAULT NULL,
  `cervical` tinyint(1) DEFAULT NULL,
  `maca_sobre_rodas` tinyint(1) DEFAULT NULL,
  `maca_rigida` tinyint(1) DEFAULT NULL,
  `retirado_do_capacete` tinyint(1) DEFAULT NULL,
  `rcp` tinyint(1) DEFAULT NULL,
  `rolamento_90` tinyint(1) DEFAULT NULL,
  `rolamento_180` tinyint(1) DEFAULT NULL,
  `tomada_decisao` tinyint(1) DEFAULT NULL,
  `tratamento_de_choque` tinyint(1) DEFAULT NULL,
  `uso_de_canula` tinyint(1) DEFAULT NULL,
  `uso_colar` tinyint(1) DEFAULT NULL,
  `tam_colar` varchar(26) DEFAULT NULL,
  `uso_ked` tinyint(1) DEFAULT NULL,
  `uso_TTF` tinyint(1) DEFAULT NULL,
  `ventilacao_suporte` tinyint(1) DEFAULT NULL,
  `usou_oxigenoterapia` tinyint(1) DEFAULT NULL,
  `LPM_oxi` int(26) DEFAULT NULL,
  `usou_reanimador` tinyint(1) DEFAULT NULL,
  `LPM_rea` int(11) DEFAULT NULL,
  `meios_auxiliares` tinyint(1) DEFAULT NULL,
  `celesc` tinyint(1) DEFAULT NULL,
  `uso_policia` tinyint(1) DEFAULT NULL,
  `tipo_policia` varchar(2) DEFAULT NULL,
  `def_civil` tinyint(1) DEFAULT NULL,
  `ipg_pc` tinyint(1) DEFAULT NULL,
  `samu` tinyint(1) DEFAULT NULL,
  `cit` tinyint(1) DEFAULT NULL,
  `Outros` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_e_sintomas`
--

CREATE TABLE `sinais_e_sintomas` (
  `id_sinais_e_sintomas` int(11) NOT NULL,
  `abdomen_sensivel_ou_rigido` tinyint(1) NOT NULL,
  `afundamento_de_cranio` tinyint(1) NOT NULL,
  `agitacao` tinyint(1) NOT NULL,
  `aminesia` tinyint(1) NOT NULL,
  `apineia` tinyint(1) NOT NULL,
  `bradicardia` tinyint(1) NOT NULL,
  `bradipneia` tinyint(1) NOT NULL,
  `bronco_aspirando` tinyint(1) NOT NULL,
  `cefaleia` tinyint(1) NOT NULL,
  `cinose` tinyint(1) NOT NULL,
  `tipo_cinose` varchar(26) NOT NULL,
  `convulsao` tinyint(1) NOT NULL,
  `decorticacao` tinyint(1) NOT NULL,
  `deformidade` tinyint(1) NOT NULL,
  `descerebracao` tinyint(1) NOT NULL,
  `desmaio` tinyint(1) NOT NULL,
  `desvio_de_traqueia` tinyint(1) NOT NULL,
  `dispneia` tinyint(1) NOT NULL,
  `dor_local` tinyint(1) NOT NULL,
  `edema` tinyint(1) NOT NULL,
  `tipo_edema` varchar(26) NOT NULL,
  `enfisema_subcutaneo` tinyint(1) NOT NULL,
  `estase_de_jugular` tinyint(1) NOT NULL,
  `face_palida` tinyint(1) NOT NULL,
  `hemorragia` tinyint(1) NOT NULL,
  `tipo_hemorragia` varchar(26) NOT NULL,
  `hipertensao` tinyint(1) NOT NULL,
  `hipotensao` tinyint(1) NOT NULL,
  `nauses_e_vomitos` tinyint(1) NOT NULL,
  `nasoragia` tinyint(1) NOT NULL,
  `obito` tinyint(1) NOT NULL,
  `otorreia` tinyint(1) NOT NULL,
  `o_v_a_c_e` tinyint(1) NOT NULL,
  `parada` tinyint(1) NOT NULL,
  `tipo_parada` varchar(26) NOT NULL,
  `priaprismo` tinyint(1) NOT NULL,
  `prurido_na_pele` tinyint(1) NOT NULL,
  `pupilas` tinyint(1) NOT NULL,
  `tipo_pupilas` varchar(26) NOT NULL,
  `sede` tinyint(1) NOT NULL,
  `sinal_de_battle` tinyint(1) NOT NULL,
  `sinal_de_guaxinim` tinyint(1) NOT NULL,
  `sudorese` tinyint(1) NOT NULL,
  `taquipneia` tinyint(1) NOT NULL,
  `taquicardia` tinyint(1) NOT NULL,
  `tontura` tinyint(1) NOT NULL,
  `outros` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_vitais`
--

CREATE TABLE `sinais_vitais` (
  `id_sinais_vitais` int(11) NOT NULL,
  `pressao_arterial` varchar(10) DEFAULT NULL,
  `pulso` varchar(10) DEFAULT NULL,
  `respiracao` varchar(10) DEFAULT NULL,
  `saturacao` varchar(10) DEFAULT NULL,
  `temperatura` varchar(10) DEFAULT NULL,
  `anormal` tinyint(1) DEFAULT NULL,
  `perfuracao` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `anamnese`
--
ALTER TABLE `anamnese`
  ADD PRIMARY KEY (`id_anamnese`);

--
-- Índices de tabela `anamnese_gestacional`
--
ALTER TABLE `anamnese_gestacional`
  ADD PRIMARY KEY (`id_anamnese_gestacional`);

--
-- Índices de tabela `avaliacao_paciente_maior`
--
ALTER TABLE `avaliacao_paciente_maior`
  ADD PRIMARY KEY (`id_avaliacao_paciente_maior`);

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
-- Índices de tabela `cinematica`
--
ALTER TABLE `cinematica`
  ADD PRIMARY KEY (`id_cinematica`);

--
-- Índices de tabela `decisao_transporte`
--
ALTER TABLE `decisao_transporte`
  ADD PRIMARY KEY (`id_decisao_transporte`);

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
-- AUTO_INCREMENT de tabela `cinematica`
--
ALTER TABLE `cinematica`
  MODIFY `id_cinematica` int(2) NOT NULL AUTO_INCREMENT;

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
