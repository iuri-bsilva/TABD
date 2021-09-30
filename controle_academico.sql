-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Set-2021 às 04:27
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controle_academico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `matricula` char(8) NOT NULL,
  `dataNascimento` date NOT NULL,
  `sexo` enum('m','f') NOT NULL,
  `nome` varchar(50) NOT NULL,
  `rua` varchar(50) NOT NULL,
  `uf` char(2) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `numero` smallint(6) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `codCurso` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`matricula`, `dataNascimento`, `sexo`, `nome`, `rua`, `uf`, `cidade`, `numero`, `bairro`, `codCurso`) VALUES
('20120001', '1982-05-30', 'm', 'Claudio Santana Cruz', 'Jardim', 'BA', 'Itambe', 245, 'Centro', 1),
('20120002', '1984-06-30', 'm', 'Matheus Carvalho Souza', 'Recreio', 'BA', 'Itambe', 111, 'Centro', 1),
('20120003', '1984-06-30', 'm', 'Gustavo Pinto Brito', 'Botafogo', 'BA', 'Itambe', 123, 'Centro', 1),
('20120004', '1989-12-12', 'f', 'Barbara de Souza Aguiar', 'Fluminense', 'BA', 'Vitoria da Conquista', 315, 'Primavera', 1),
('20120005', '1991-06-12', 'f', 'Joana Castro Barbosa', 'Centro', 'BA', 'Vitoria da Conquista', 122, 'Primavera', 1),
('20120006', '1990-06-30', 'm', 'Vitor Pinto Cardoso', 'Centro', 'BA', 'Vitoria da Conquista', 25, 'Primavera', 1),
('20120007', '1993-06-30', 'f', 'Marcelo Santana Souza', 'Centro', 'BA', 'Itambe', 25, 'Fluminense', 1),
('20120008', '1982-04-30', 'f', 'Valeria Cruz de Jesus', 'Jardim', 'BA', 'Pocoes', 212, 'Centro', 2),
('20120009', '1980-05-30', 'f', 'Creuza Carvalho Rocha', 'Recreio', 'BA', 'Pocoes', 226, 'Centro', 2),
('20120010', '1987-04-30', 'm', 'Josue Pinto Cardoso', 'Botafogo', 'BA', 'Vitoria da Conquista', 142, 'Centro', 2),
('20120011', '1989-12-11', 'f', 'Catia de Souza Aguiar', 'Fluminense', 'BA', 'Vitoria da Conquista', 315, 'Primavera', 2),
('20120012', '1991-06-24', 'm', 'Nelson Castro da Silva', 'Centro', 'BA', 'Vitoria da Conquista', 122, 'Primavera', 2),
('20120013', '1990-04-09', 'm', 'Alan Santana Morais', 'Alto Maron', 'BA', 'Vitoria da Conquista', 255, 'Bela Vista', 2),
('20120014', '1982-02-28', 'm', 'Jorge Filho de Arruda', 'Jardim', 'BA', 'Pocoes', 245, 'Centro', 3),
('20120015', '1984-12-30', 'm', 'Janio Souza Brito', 'Recreio', 'BA', 'Pocoes', 111, 'Centro', 3),
('20120016', '1984-11-30', 'm', 'Juliano Pinto da Cruz', 'Botafogo', 'BA', 'Pocoes', 123, 'Centro', 3),
('20120017', '1989-01-12', 'f', 'Beatriz de Souza Cardoso', 'Fluminense', 'BA', 'Vitoria da Conquista', 315, 'Primavera', 3),
('20120018', '1991-02-12', 'f', 'Luana Castro Pinto', 'Centro', 'BA', 'Vitoria da Conquista', 122, 'Primavera', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunotelefone`
--

CREATE TABLE `alunotelefone` (
  `matricula` char(8) NOT NULL,
  `nroTelefone` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunotelefone`
--

INSERT INTO `alunotelefone` (`matricula`, `nroTelefone`) VALUES
('20120001', '7732612167'),
('20120001', '7732612279'),
('20120002', '7732612279'),
('20120002', '7732621100'),
('20120003', '7732612279'),
('20120003', '7732621595'),
('20120003', '7732630001'),
('20120004', '7732639899'),
('20120005', '7732611887'),
('20120006', '7732611887'),
('20120006', '7732612186'),
('20120007', '7732631201');

-- --------------------------------------------------------

--
-- Estrutura da tabela `concluido`
--

CREATE TABLE `concluido` (
  `codDisciplina` smallint(6) NOT NULL,
  `matricula` char(8) NOT NULL,
  `nota` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `concluido`
--

INSERT INTO `concluido` (`codDisciplina`, `matricula`, `nota`) VALUES
(1, '20120001', '7.7'),
(1, '20120002', '7.8'),
(1, '20120003', '6.7'),
(1, '20120004', '8.4'),
(1, '20120005', '6.7'),
(1, '20120006', '7.8'),
(1, '20120007', '6.7'),
(2, '20120001', '7.4'),
(2, '20120002', '3.5'),
(2, '20120003', '3.8'),
(2, '20120004', '2.5'),
(2, '20120005', '7.8'),
(2, '20120006', '3.5'),
(2, '20120007', '3.0'),
(3, '20120001', '2.2'),
(3, '20120002', '9.7'),
(3, '20120003', '4.7'),
(3, '20120004', '8.5'),
(3, '20120005', '4.2'),
(3, '20120006', '6.9'),
(3, '20120007', '4.7'),
(4, '20120001', '5.1'),
(4, '20120002', '9.3'),
(4, '20120003', '4.0'),
(4, '20120004', '5.0'),
(4, '20120005', '6.2'),
(4, '20120006', '7.3'),
(4, '20120007', '8.9'),
(7, '20120008', '6.6'),
(7, '20120009', '8.6'),
(7, '20120010', '9.7'),
(7, '20120011', '8.1'),
(7, '20120012', '9.2'),
(7, '20120013', '7.3'),
(8, '20120008', '6.6'),
(8, '20120009', '5.7'),
(8, '20120010', '7.0'),
(8, '20120011', '5.0'),
(8, '20120012', '6.0'),
(8, '20120013', '5.7'),
(9, '20120008', '6.9'),
(9, '20120009', '5.1'),
(9, '20120010', '6.8'),
(9, '20120011', '7.4'),
(9, '20120012', '7.0'),
(9, '20120013', '8.0'),
(10, '20120008', '7.1'),
(10, '20120009', '6.2'),
(10, '20120010', '8.9'),
(10, '20120011', '7.0'),
(10, '20120012', '6.0'),
(10, '20120013', '10.0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `codCurso` smallint(6) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `codDepart` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`codCurso`, `nome`, `codDepart`) VALUES
(1, 'Sistemas de Informacao', 4),
(2, 'Agronomia', 1),
(3, 'Engenharia Ambiental', 6),
(4, 'Engenharia da Computacao', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `codDepart` smallint(6) NOT NULL,
  `nome` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`codDepart`, `nome`) VALUES
(1, 'Ciencias Agrarias'),
(2, 'Ciencias Biologicas'),
(3, 'Ciencias da Saude'),
(4, 'Ciencias Exatas e da Terra'),
(5, 'Ciencias Humanas'),
(6, 'Engenharias');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `codDisciplina` smallint(6) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `semestre` enum('I','II','III','IV','V','VI','VII','VIII','IX','X') NOT NULL DEFAULT 'I',
  `cargaHoraria` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`codDisciplina`, `nome`, `semestre`, `cargaHoraria`) VALUES
(1, 'Introducao a Programacao', 'I', 80),
(2, 'Estrutura de Dados', 'III', 80),
(3, 'Banco de Dados I', 'IV', 60),
(4, 'Redes de Computadores I', 'IV', 60),
(5, 'Banco de Dados II', 'V', 60),
(6, 'Promogracao Web', 'V', 80),
(7, 'Portugues', 'I', 80),
(8, 'Quimica', 'I', 60),
(9, 'Zootecnica', 'II', 80),
(10, 'Introducao a Agropecuaria', 'II', 80),
(11, 'Nutricao Animal e Forrageiras', 'VI', 80),
(12, 'Criacao de Pequenos Animais', 'VII', 80),
(13, 'Introducao a Poluicao Ambiental', 'II', 60),
(14, 'Fundamentos de Biologia Ambiental', 'III', 80),
(15, 'Geotecnia Ambiental', 'III', 80),
(16, 'Empresas de Engenharia Economica Ambiental', 'IV', 60),
(17, 'Complexos Industriais e de Agribusiness', 'VI', 40),
(18, 'Modelagem Matematica em Sistemas Ambientais', 'VIII', 80);

-- --------------------------------------------------------

--
-- Estrutura da tabela `matriculado`
--

CREATE TABLE `matriculado` (
  `matricula` char(8) NOT NULL,
  `codDisciplina` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `matriculado`
--

INSERT INTO `matriculado` (`matricula`, `codDisciplina`) VALUES
('20120001', 1),
('20120001', 2),
('20120001', 3),
('20120001', 4),
('20120001', 5),
('20120001', 6),
('20120002', 1),
('20120002', 2),
('20120002', 3),
('20120002', 4),
('20120002', 5),
('20120002', 6),
('20120003', 1),
('20120003', 2),
('20120003', 3),
('20120003', 4),
('20120003', 5),
('20120003', 6),
('20120004', 1),
('20120004', 2),
('20120004', 3),
('20120004', 4),
('20120004', 5),
('20120004', 6),
('20120005', 1),
('20120005', 2),
('20120005', 3),
('20120005', 4),
('20120005', 5),
('20120005', 6),
('20120006', 1),
('20120006', 2),
('20120006', 3),
('20120006', 4),
('20120006', 5),
('20120006', 6),
('20120007', 1),
('20120007', 2),
('20120007', 3),
('20120007', 4),
('20120007', 5),
('20120007', 6),
('20120008', 7),
('20120008', 8),
('20120008', 9),
('20120008', 10),
('20120008', 11),
('20120008', 12),
('20120009', 7),
('20120009', 8),
('20120009', 9),
('20120009', 10),
('20120009', 11),
('20120009', 12),
('20120010', 7),
('20120010', 8),
('20120010', 9),
('20120010', 10),
('20120010', 11),
('20120010', 12),
('20120011', 7),
('20120011', 8),
('20120011', 9),
('20120011', 10),
('20120011', 11),
('20120011', 12),
('20120012', 7),
('20120012', 8),
('20120012', 9),
('20120012', 10),
('20120012', 11),
('20120012', 12),
('20120013', 7),
('20120013', 8),
('20120013', 9),
('20120013', 10),
('20120013', 11),
('20120013', 12),
('20120014', 13),
('20120014', 14),
('20120014', 15),
('20120014', 16),
('20120014', 17),
('20120014', 18),
('20120015', 13),
('20120015', 14),
('20120015', 15),
('20120015', 16),
('20120015', 17),
('20120015', 18),
('20120016', 13),
('20120016', 14),
('20120016', 15),
('20120016', 16),
('20120016', 17),
('20120016', 18),
('20120017', 13),
('20120017', 14),
('20120017', 15),
('20120017', 16),
('20120017', 17),
('20120017', 18),
('20120018', 13),
('20120018', 14),
('20120018', 15),
('20120018', 16),
('20120018', 17),
('20120018', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ministra`
--

CREATE TABLE `ministra` (
  `matricula` char(8) NOT NULL,
  `codDisciplina` smallint(6) NOT NULL,
  `ano` year(4) NOT NULL,
  `semestre` enum('I','II') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ministra`
--

INSERT INTO `ministra` (`matricula`, `codDisciplina`, `ano`, `semestre`) VALUES
('20120001', 3, 2012, 'II'),
('20120002', 4, 2012, 'I'),
('20120003', 2, 2011, 'II'),
('20120003', 6, 2012, 'II'),
('20120004', 1, 2011, 'I'),
('20120004', 5, 2012, 'II');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prerequisito`
--

CREATE TABLE `prerequisito` (
  `codDisciplina` smallint(6) NOT NULL,
  `codPrerequisito` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `prerequisito`
--

INSERT INTO `prerequisito` (`codDisciplina`, `codPrerequisito`) VALUES
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(5, 3),
(6, 2),
(6, 3),
(6, 4),
(9, 7),
(9, 8),
(10, 7),
(10, 8),
(11, 9),
(12, 10),
(15, 13),
(16, 13),
(17, 14),
(17, 16),
(18, 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `matricula` char(8) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `titulacao` enum('Gradua??o','Especializa??o','Mestrado','Doutorado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`matricula`, `nome`, `titulacao`) VALUES
('20120001', 'Lidiana Franca martins', 'Mestrado'),
('20120002', 'Fernando Bulhoes', 'Mestrado'),
('20120003', 'Claudio Rodolfo Oliveira', 'Mestrado'),
('20120004', 'Pablo Freire Matos', 'Mestrado'),
('20120005', 'Rosana Moura de Oliveira', 'Doutorado');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`matricula`),
  ADD UNIQUE KEY `u_nome_aluno` (`nome`),
  ADD KEY `codCurso` (`codCurso`);

--
-- Índices para tabela `alunotelefone`
--
ALTER TABLE `alunotelefone`
  ADD PRIMARY KEY (`matricula`,`nroTelefone`);

--
-- Índices para tabela `concluido`
--
ALTER TABLE `concluido`
  ADD PRIMARY KEY (`codDisciplina`,`matricula`),
  ADD KEY `matricula` (`matricula`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`codCurso`),
  ADD UNIQUE KEY `u_nome_curso` (`nome`),
  ADD KEY `codDepart` (`codDepart`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`codDepart`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`codDisciplina`),
  ADD UNIQUE KEY `u_nome_disciplina` (`nome`);

--
-- Índices para tabela `matriculado`
--
ALTER TABLE `matriculado`
  ADD PRIMARY KEY (`matricula`,`codDisciplina`),
  ADD KEY `codDisciplina` (`codDisciplina`);

--
-- Índices para tabela `ministra`
--
ALTER TABLE `ministra`
  ADD PRIMARY KEY (`matricula`,`codDisciplina`),
  ADD KEY `codDisciplina` (`codDisciplina`);

--
-- Índices para tabela `prerequisito`
--
ALTER TABLE `prerequisito`
  ADD PRIMARY KEY (`codDisciplina`,`codPrerequisito`),
  ADD KEY `codPrerequisito` (`codPrerequisito`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`matricula`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `codCurso` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `codDepart` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `codDisciplina` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`codCurso`) REFERENCES `curso` (`codCurso`);

--
-- Limitadores para a tabela `alunotelefone`
--
ALTER TABLE `alunotelefone`
  ADD CONSTRAINT `alunotelefone_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `aluno` (`matricula`);

--
-- Limitadores para a tabela `concluido`
--
ALTER TABLE `concluido`
  ADD CONSTRAINT `concluido_ibfk_1` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`),
  ADD CONSTRAINT `concluido_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `aluno` (`matricula`);

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`codDepart`) REFERENCES `departamento` (`codDepart`);

--
-- Limitadores para a tabela `matriculado`
--
ALTER TABLE `matriculado`
  ADD CONSTRAINT `matriculado_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `aluno` (`matricula`),
  ADD CONSTRAINT `matriculado_ibfk_2` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`);

--
-- Limitadores para a tabela `ministra`
--
ALTER TABLE `ministra`
  ADD CONSTRAINT `ministra_ibfk_1` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`),
  ADD CONSTRAINT `ministra_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `professor` (`matricula`);

--
-- Limitadores para a tabela `prerequisito`
--
ALTER TABLE `prerequisito`
  ADD CONSTRAINT `prerequisito_ibfk_1` FOREIGN KEY (`codDisciplina`) REFERENCES `disciplina` (`codDisciplina`),
  ADD CONSTRAINT `prerequisito_ibfk_2` FOREIGN KEY (`codPrerequisito`) REFERENCES `disciplina` (`codDisciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
