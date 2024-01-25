-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 25-Jan-2024 às 10:07
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `api_question`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anwsers`
--

CREATE TABLE `anwsers` (
  `id` int(11) NOT NULL,
  `anwser` text COLLATE utf8_unicode_ci NOT NULL,
  `id_question` int(11) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `anwsers`
--

INSERT INTO `anwsers` (`id`, `anwser`, `id_question`, `createdAt`, `updatedAt`) VALUES
(1, 'Tem alguma ferramenta nova que so suporta typesscript ?', 1, '2023-09-10 09:46:06', '2023-09-10 09:46:06'),
(2, 'Com TypeScript se evitam muitos erros no codigo antes mesmo dele executar...', 2, '2023-09-10 10:03:43', '2023-09-10 10:03:43'),
(3, 'Enquanto o JavaScript deixa certos erros passarem e só se notam em tempo de execucao, isto nao acontece com o typescript bem configurado.', 2, '2023-09-10 10:07:37', '2023-09-10 10:07:37'),
(4, 'Hoje em dia o typescript eh essencial para qualquer novo framework javascript', 1, '2023-09-11 09:28:50', '2023-09-11 09:28:50'),
(5, 'O novo framework JavasScript \'Nest\' usa o typescript em toda sua estrutura', 1, '2023-09-11 09:44:24', '2023-09-11 09:44:24'),
(6, 'Para melhor controle de se codigo, bm como sua performance', 2, '2023-09-11 09:46:33', '2023-09-11 09:46:33'),
(7, 'Tem sim, o Nest e o Next', 2, '2023-09-11 09:48:40', '2023-09-11 09:48:40'),
(8, 'Todas as novas', 2, '2023-09-11 09:49:45', '2023-09-11 09:49:45'),
(9, 'procure se informar um pouco mais sobre...', 1, '2023-09-11 09:52:32', '2023-09-11 09:52:32'),
(12, 'Nest', 3, '2023-09-11 10:22:43', '2023-09-11 10:22:43'),
(13, 'Sim, muitas empresas ainda não migraram para o Next...', 4, '2023-09-11 10:25:00', '2023-09-11 10:25:00'),
(14, 'Aprenda primeiro TypeScript para estudar Nest', 3, '2023-09-11 10:48:04', '2023-09-11 10:48:04'),
(15, 'Depende\n', 6, '2023-09-11 13:34:30', '2023-09-11 13:34:30'),
(16, 'Pesquise o que quer para saber melhor qual usar...', 6, '2023-09-11 13:36:31', '2023-09-11 13:36:31'),
(17, 'Mais simples aparentemente eh o Vue JS', 6, '2023-09-11 13:37:06', '2023-09-11 13:37:06'),
(18, 'Eu penso que aprender um pouco de Vue e depois mudar para o React eh a melhor opcao...', 6, '2023-09-11 13:39:07', '2023-09-11 13:39:07'),
(19, 'Nao, mas fica tudo mais simples quando ja percebe...', 5, '2023-09-11 13:41:09', '2023-09-11 13:41:09'),
(20, 'Existem alguns pontos ao  aprender front, em que estara diante de front mas pode achar que eh back so por nao saber front...', 5, '2023-09-11 13:42:03', '2023-09-11 13:42:03'),
(21, 'Va em frente...', 5, '2023-09-11 13:42:38', '2023-09-11 13:42:38'),
(22, 'Persista nesta ideia de aprender Back e veja no caminho por voce mesmo...', 5, '2023-09-11 13:43:08', '2023-09-11 13:43:08'),
(23, 'Eu penso que sim.', 5, '2023-09-11 13:43:31', '2023-09-11 13:43:31'),
(24, 'Depende de onde estara trabalhando...', 4, '2023-09-11 13:44:32', '2023-09-11 13:44:32'),
(25, 'Se a sua empresa usa Next entao aprenda Next', 4, '2023-09-11 13:44:51', '2023-09-11 13:44:51'),
(26, 'Mas o mercado ainda tem muito trabalho de React, ainda eh essencial...', 4, '2023-09-11 13:45:22', '2023-09-11 13:45:22'),
(27, 'Nao, o plugin woocommerce do wordpress ainda eh atualizado com frequencia...', 7, '2023-09-11 13:47:50', '2023-09-11 13:47:50'),
(28, 'Obvio que nao, tem muitas pessoas que dependem disso, ele nao ira desaparecer do nada...', 7, '2023-09-11 13:48:30', '2023-09-11 13:48:30'),
(29, 'Nest para tudo...', 3, '2023-09-11 13:53:17', '2023-09-11 13:53:17'),
(30, 'se fala do wordpress em si, nao, mas se estava se referindo ao plugin woocommerce, tbm nao...', 7, '2023-09-11 14:46:54', '2023-09-11 14:46:54'),
(31, 'Eh sim, muito importante...', 1, '2023-09-11 14:53:40', '2023-09-11 14:53:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `questions`
--

INSERT INTO `questions` (`id`, `title`, `description`, `createdAt`, `updateAt`) VALUES
(1, 'Eh importante aprender TypeScript ?', 'Nao encontrei motivo ate agora para aprende typescript', '2023-09-09 16:52:43', '2023-09-09 16:52:43'),
(2, 'TypeScript eh essencial para que ?', 'Tem alguma ferramenta nova que so suporta typesscript ?', '2023-09-09 16:54:22', '2023-09-09 16:54:22'),
(3, 'Express ou Addonis ?', 'Fico indeciso sobre qual framework aprender...', '2023-09-11 10:22:12', '2023-09-11 10:22:12'),
(4, 'React JS ou Next ?', 'Atualmente vale a pena usar React ainda ?', '2023-09-11 10:24:20', '2023-09-11 10:24:20'),
(5, 'Para aprender BackEnd eh necessario saber muito de Front ?', 'Quero entrar na area mas sinto que me identifico mais com Back', '2023-09-11 12:14:33', '2023-09-11 12:14:33'),
(6, 'Vue ou React JS', 'Qual framework de Front eh mais simples ?', '2023-09-11 13:19:02', '2023-09-11 13:19:02'),
(7, 'O Wordpress ja ficou obsoleto ?', 'Estou pensando em construir um ecommerce, mas tenho duvidas se utilizo o wordpress ou nao...', '2023-09-11 13:47:15', '2023-09-11 13:47:15'),
(8, 'Qual o melhor sistema operativo ?', 'Preciso rapidamente migrar para algum e preceisp de um simples conselho deobre isso!', '2023-11-01 12:02:05', '2023-11-01 12:02:05'),
(9, 'Qual o melhor sistema operativo ?', 'Preciso rapidamente migrar para algum e preceisp de um simples conselho deobre isso!', '2023-11-01 12:02:05', '2023-11-01 12:02:05');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anwsers`
--
ALTER TABLE `anwsers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_question` (`id_question`);

--
-- Índices para tabela `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anwsers`
--
ALTER TABLE `anwsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `anwsers`
--
ALTER TABLE `anwsers`
  ADD CONSTRAINT `anwsers_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
