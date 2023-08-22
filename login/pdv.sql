-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jul-2023 às 04:07
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pdv`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alerta_vencimentos`
--

CREATE TABLE `alerta_vencimentos` (
  `id` int(11) NOT NULL,
  `compra` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `data_compra` date NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_alerta` date NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alerta_vencimentos`
--

INSERT INTO `alerta_vencimentos` (`id`, `compra`, `produto`, `data_compra`, `data_vencimento`, `data_alerta`, `obs`, `status`) VALUES
(1, 18, 10, '2023-07-17', '2023-07-30', '2023-07-23', NULL, NULL),
(3, 21, 10, '2023-07-17', '2023-07-26', '2023-07-16', 'Foram conferidos os vencimentos, só restam 3 produtos deste lote, já foram colocados na frente para sair primeiro.', 'Conferido'),
(4, 22, 8, '2023-07-17', '2023-07-17', '2023-07-07', 'fsdfds afsafasfasfas ', 'Conferido'),
(6, 24, 7, '2023-07-17', '2023-07-28', '2023-07-20', NULL, 'Pendente'),
(7, 25, 9, '2023-07-17', '2023-07-21', '2023-07-14', NULL, 'Pendente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `caixa`
--

CREATE TABLE `caixa` (
  `id` int(11) NOT NULL,
  `data_ab` date NOT NULL,
  `hora_ab` time NOT NULL,
  `valor_ab` decimal(8,2) NOT NULL,
  `gerente_ab` int(11) NOT NULL,
  `data_fec` date DEFAULT NULL,
  `hora_fec` time DEFAULT NULL,
  `valor_fec` decimal(8,2) DEFAULT NULL,
  `valor_vendido` decimal(8,2) DEFAULT NULL,
  `valor_quebra` decimal(8,2) DEFAULT NULL,
  `gerente_fec` int(11) DEFAULT NULL,
  `caixa` int(11) NOT NULL,
  `operador` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `valor_sangrias` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `caixa`
--

INSERT INTO `caixa` (`id`, `data_ab`, `hora_ab`, `valor_ab`, `gerente_ab`, `data_fec`, `hora_fec`, `valor_fec`, `valor_vendido`, `valor_quebra`, `gerente_fec`, `caixa`, `operador`, `status`, `valor_sangrias`) VALUES
(12, '2021-07-21', '13:24:49', '250.00', 20, '2021-07-21', '13:25:33', '198.30', '98.30', '0.00', 1, 1, 2, 'Fechado', '150.00'),
(13, '2021-07-21', '13:25:45', '350.00', 20, '2021-07-21', '13:26:19', '268.00', '38.00', '0.00', 1, 3, 2, 'Fechado', '120.00'),
(14, '2021-07-21', '13:26:42', '260.00', 1, '2021-07-21', '13:27:17', '171.50', '31.50', '0.00', 1, 4, 7, 'Fechado', '120.00'),
(15, '2021-07-21', '13:37:33', '250.00', 1, '2021-07-21', '13:38:40', '130.80', '30.80', '-10.00', 1, 1, 2, 'Fechado', '140.00'),
(16, '2021-07-21', '13:45:33', '150.00', 1, '2021-07-21', '14:08:46', '60.00', '8.30', '1.70', 1, 1, 2, 'Fechado', '100.00'),
(17, '2021-07-21', '14:35:11', '250.00', 20, '2021-07-21', '14:36:01', '185.00', '13.50', '1.50', 20, 1, 7, 'Fechado', '80.00'),
(18, '2022-09-06', '10:35:56', '100.00', 1, '2022-09-06', '18:59:47', '284.28', '284.28', '0.00', 1, 3, 16, 'Fechado', '100.00'),
(19, '2022-09-06', '19:00:04', '50.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, 4, 16, 'Aberto', '0.00'),
(20, '2023-02-25', '10:48:44', '100.00', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 'Aberto', '0.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `caixas`
--

CREATE TABLE `caixas` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `caixas`
--

INSERT INTO `caixas` (`id`, `nome`) VALUES
(1, 'Caixa 1'),
(2, 'Caixa 2'),
(3, 'Caixa 3'),
(4, 'Caixa 4'),
(5, 'Caixa 5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `foto` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `foto`) VALUES
(7, 'Alimentícios', '16-02-2021-15-55-33-alimentos.jpg'),
(8, 'Bebidas', '16-02-2021-15-53-33-Bebidas.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `telefone`, `endereco`) VALUES
(1, 'Cliente Teste 1', '000.000.000-00', '(00) 00000-0000', 'Rua A'),
(2, 'Cliente Teste 2', '111.111.111-11', '(11) 11111-1111', 'Rua B');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `fornecedor` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `produto` int(11) DEFAULT NULL,
  `lote` varchar(100) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `alerta` int(11) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`id`, `total`, `data`, `usuario`, `fornecedor`, `pago`, `quantidade`, `produto`, `lote`, `validade`, `alerta`, `arquivo`) VALUES
(1, '80.00', '2021-02-17', 1, 1, 'Não', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '40.00', '2021-02-17', 1, 2, 'Sim', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '300.00', '2021-02-22', 1, 1, 'Não', NULL, NULL, NULL, NULL, NULL, NULL),
(4, '96.00', '2021-02-22', 1, 1, 'Não', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '10.00', '2021-02-24', 1, 1, 'Não', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '6.00', '2021-02-24', 1, 1, 'Não', NULL, NULL, NULL, NULL, NULL, NULL),
(7, '450.00', '2021-07-20', 1, 1, 'Não', NULL, NULL, NULL, NULL, NULL, NULL),
(8, '1.80', '2021-07-20', 1, 1, 'Não', NULL, NULL, NULL, NULL, NULL, NULL),
(9, '3.50', '2021-07-20', 1, 1, 'Não', NULL, NULL, NULL, NULL, NULL, NULL),
(10, '30.00', '2021-07-20', 1, 1, 'Sim', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '27.00', '2021-07-21', 1, 1, 'Sim', NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2.10', '2022-09-06', 1, 1, 'Sim', 6, 9, NULL, NULL, NULL, NULL),
(13, '1.00', '2022-09-06', 1, 1, 'Não', 1, 7, NULL, NULL, NULL, NULL),
(14, '100.00', '2022-09-06', 1, 1, 'Não', 100, 7, NULL, NULL, NULL, NULL),
(15, '300.00', '2022-09-06', 1, 1, 'Não', 100, 4, NULL, NULL, NULL, NULL),
(16, '1000.00', '2023-07-17', 1, 1, 'Não', 20, 11, 'A3568520', '2023-07-28', NULL, NULL),
(17, '30.00', '2023-07-17', 1, 1, 'Não', 10, 10, 'A3568521', '2023-07-20', NULL, NULL),
(18, '60.00', '2023-07-17', 1, 1, 'Não', 20, 10, 'A3568522', '2023-07-30', 7, NULL),
(19, '10.50', '2023-07-17', 1, 1, 'Não', 30, 9, 'A3568523', '2023-07-30', 0, NULL),
(20, '8.75', '2023-07-17', 1, 1, 'Não', 25, 9, 'A3568524', '2023-07-24', 10, NULL),
(21, '84.00', '2023-07-17', 1, 1, 'Não', 28, 10, 'A3568524', '2023-07-26', 10, NULL),
(22, '75.00', '2023-07-17', 1, 1, 'Não', 5, 8, 'A3568522', '2023-07-17', 10, NULL),
(23, '15.00', '2023-07-17', 1, 1, 'Não', 5, 10, 'A3568523', '2023-07-24', 10, '17-07-2023-15-16-00-09-11-2021-12-04-29-pdfteste.zip'),
(24, '10.00', '2023-07-17', 1, 1, 'Não', 10, 7, 'A3568524', '2023-07-28', 8, '17-07-2023-15-24-47-09-11-2021-09-21-26-conta3.jpg'),
(25, '7.00', '2023-07-17', 1, 1, 'Não', 20, 9, 'A3568521', '2023-07-21', 7, 'sem-foto.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_pagar`
--

CREATE TABLE `contas_pagar` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `usuario` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `vencimento` date NOT NULL,
  `arquivo` varchar(150) DEFAULT NULL,
  `id_compra` int(11) NOT NULL,
  `data_pgto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contas_pagar`
--

INSERT INTO `contas_pagar` (`id`, `descricao`, `valor`, `usuario`, `pago`, `data`, `vencimento`, `arquivo`, `id_compra`, `data_pgto`) VALUES
(1, 'Conta de Luz', '850.00', 19, 'Não', '2021-02-17', '2021-02-19', '17-02-2021-14-22-47-16-02-2021-18-51-45-conta.jpg', 0, NULL),
(2, 'Conta de Água', '660.00', 19, 'Sim', '2021-02-17', '2021-02-18', '17-02-2021-14-23-12-16-02-2021-19-04-35-conta2.png', 0, NULL),
(3, 'Pagamento Eletrecista', '180.00', 19, 'Não', '2021-02-17', '2021-02-18', '17-02-2021-14-23-34-16-02-2021-19-20-42-produtos.pdf', 0, NULL),
(4, 'Compra de Produtos', '80.00', 1, 'Não', '2021-02-17', '2021-02-17', 'sem-foto.jpg', 1, NULL),
(5, 'Compra de Produtos', '40.00', 19, 'Sim', '2021-02-16', '2021-02-17', 'sem-foto.jpg', 2, NULL),
(6, 'Conta Teste', '180.00', 19, 'Não', '2021-02-17', '2021-02-20', 'sem-foto.jpg', 0, NULL),
(7, 'Conta de Telefone', '280.00', 19, 'Não', '2021-02-17', '2021-02-15', '17-02-2021-15-07-06-16-02-2021-18-55-44-16-02-2021-18-51-45-conta.jpg', 0, NULL),
(8, 'Pagamento Encanador', '120.00', 19, 'Não', '2021-02-17', '2021-02-17', 'sem-foto.jpg', 0, NULL),
(9, 'Conta de IPTU', '1200.00', 19, 'Sim', '2021-02-17', '2021-02-15', '17-02-2021-15-09-49-16-02-2021-19-20-42-produtos.pdf', 0, NULL),
(10, 'Conta Teste', '50.00', 19, 'Sim', '2021-02-17', '2021-02-15', 'sem-foto.jpg', 0, NULL),
(11, 'Telefone Fixo', '590.00', 19, 'Sim', '2021-02-17', '2021-02-15', '17-02-2021-15-17-50-16-02-2021-19-04-35-conta2.png', 0, NULL),
(12, 'Compra de Produtos', '300.00', 1, 'Não', '2021-02-22', '2021-02-22', 'sem-foto.jpg', 3, NULL),
(13, 'Compra de Produtos', '96.00', 1, 'Não', '2021-02-22', '2021-02-22', 'sem-foto.jpg', 4, NULL),
(14, 'Conta de Luz', '860.00', 1, 'Sim', '2021-02-24', '2021-02-24', '24-02-2021-15-00-52-barrateste.pdf', 0, '2021-07-21'),
(15, 'Conta de Água', '360.00', 19, 'Sim', '2021-02-24', '2021-02-24', '24-02-2021-15-01-17-curso-de-php-8.jpg', 0, NULL),
(16, 'Compra de Produtos', '10.00', 1, 'Não', '2021-02-24', '2021-02-24', 'sem-foto.jpg', 5, NULL),
(17, 'Compra de Produtos', '6.00', 1, 'Não', '2021-02-24', '2021-02-24', 'sem-foto.jpg', 6, NULL),
(18, 'Compra de Produtos', '450.00', 1, 'Não', '2021-07-20', '2021-07-20', 'sem-foto.jpg', 7, NULL),
(19, 'Compra de Produtos', '1.80', 1, 'Não', '2021-07-20', '2021-07-20', 'sem-foto.jpg', 8, NULL),
(20, 'Compra de Produtos', '3.50', 1, 'Não', '2021-07-20', '2021-07-20', 'sem-foto.jpg', 9, NULL),
(21, 'Compra de Produtos', '30.00', 1, 'Sim', '2021-07-20', '2021-07-20', 'sem-foto.jpg', 10, '2021-07-21'),
(22, 'Compra de Produtos', '27.00', 1, 'Sim', '2021-07-21', '2021-07-21', 'sem-foto.jpg', 11, NULL),
(23, 'Conta de Luz', '560.00', 1, 'Sim', '2021-07-21', '2021-07-21', '21-07-2021-11-36-37-conta3.jpg', 0, NULL),
(24, 'Compra de Produtos', '2.10', 1, 'Sim', '2022-09-06', '2022-09-06', 'sem-foto.jpg', 12, '2022-09-06'),
(25, 'Compra de Produtos', '1.00', 1, 'Não', '2022-09-06', '2022-09-06', 'sem-foto.jpg', 13, NULL),
(26, 'Compra de Produtos', '100.00', 1, 'Não', '2022-09-06', '2022-09-06', 'sem-foto.jpg', 14, NULL),
(27, 'Compra de Produtos', '300.00', 1, 'Não', '2022-09-06', '2022-09-06', 'sem-foto.jpg', 15, NULL),
(28, 'Compra de Produtos', '1000.00', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', 16, NULL),
(29, 'Compra de Produtos', '30.00', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', 17, NULL),
(30, 'Compra de Produtos', '60.00', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', 18, NULL),
(31, 'Compra de Produtos', '10.50', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', 19, NULL),
(32, 'Compra de Produtos', '8.75', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', 20, NULL),
(33, 'Compra de Produtos', '84.00', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', 21, NULL),
(34, 'Compra de Produtos', '75.00', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', 22, NULL),
(35, 'Compra de Produtos', '15.00', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', 23, NULL),
(36, 'Compra de Produtos', '10.00', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', 24, NULL),
(37, 'Compra de Produtos', '7.00', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', 25, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_receber`
--

CREATE TABLE `contas_receber` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `usuario` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `vencimento` date NOT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `data_pgto` date DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `id_venda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contas_receber`
--

INSERT INTO `contas_receber` (`id`, `descricao`, `valor`, `usuario`, `pago`, `data`, `vencimento`, `arquivo`, `data_pgto`, `cliente`, `id_venda`) VALUES
(1, 'Marcelo Souza', '200.00', 19, 'Não', '2021-02-17', '2021-02-18', '17-02-2021-14-52-22-16-02-2021-19-20-42-produtos.pdf', NULL, NULL, NULL),
(2, 'Marcos Silva Cliente', '250.00', 19, 'Não', '2021-02-17', '2021-02-17', 'sem-foto.jpg', NULL, NULL, NULL),
(3, 'Marcela Silva', '100.00', 19, 'Sim', '2021-02-17', '2021-02-17', 'sem-foto.jpg', NULL, NULL, NULL),
(4, 'Conta Teste', '150.00', 19, 'Sim', '2021-02-17', '2021-02-15', 'sem-foto.jpg', NULL, NULL, NULL),
(5, 'Paulo Silva', '180.00', 1, 'Sim', '2021-02-17', '2021-02-16', '17-02-2021-15-27-15-16-02-2021-18-55-44-16-02-2021-18-51-45-conta.jpg', '2021-07-21', NULL, NULL),
(6, 'Kamila Silva', '480.00', 19, 'Sim', '2021-02-17', '2021-02-15', '17-02-2021-15-27-28-16-02-2021-19-40-15-produtos.pdf', NULL, NULL, NULL),
(7, 'Marcela Campos', '650.00', 19, 'Sim', '2021-02-17', '2021-02-10', '17-02-2021-19-11-31-16-02-2021-19-40-32-16-02-2021-19-04-35-conta2.png', NULL, NULL, NULL),
(8, 'Palema Silva', '890.00', 19, 'Sim', '2021-02-17', '2021-02-17', '17-02-2021-19-12-11-16-02-2021-19-20-42-produtos.pdf', NULL, NULL, NULL),
(9, 'Marcelo Souza', '290.00', 19, 'Sim', '2021-02-24', '2021-02-24', 'sem-foto.jpg', NULL, NULL, NULL),
(10, 'Paulo Silva', '380.00', 1, 'Sim', '2021-02-24', '2021-02-24', '24-02-2021-15-02-16-barrateste.pdf', '2021-07-21', NULL, NULL),
(11, 'Conta X', '60.00', 1, 'Sim', '2022-09-06', '2022-09-06', 'sem-foto.jpg', '2022-09-06', NULL, NULL),
(12, 'Compra', '460.00', 1, 'Sim', '2022-09-06', '2022-09-04', 'sem-foto.jpg', '2022-09-06', 1, NULL),
(13, 'Teste', '50.00', 1, 'Sim', '2022-09-06', '2022-09-07', 'sem-foto.jpg', '2023-07-17', 2, NULL),
(14, 'fsdfdsfdsf', '50.00', 1, 'Não', '2022-09-06', '2022-09-08', 'sem-foto.jpg', NULL, 0, NULL),
(15, 'Venda', '12.00', 1, 'Sim', '2022-09-06', '2022-09-07', 'sem-foto.jpg', '2023-07-17', 1, 198),
(16, 'Venda', '6.00', 1, 'Sim', '2022-09-06', '2022-09-02', 'sem-foto.jpg', '2022-09-06', 1, 201),
(18, 'Venda', '11.80', 1, 'Sim', '2022-09-06', '2022-09-08', 'sem-foto.jpg', '2022-09-06', 1, 210),
(19, 'Venda', '11.21', 16, 'Não', '2022-09-06', '2022-09-07', 'sem-foto.jpg', '0000-00-00', 0, 211),
(20, 'Venda', '13.50', 1, 'Sim', '2022-09-06', '2022-09-22', 'sem-foto.jpg', '2023-07-17', 1, 213),
(21, 'Venda', '9.45', 1, 'Sim', '2022-09-06', '2022-09-21', 'sem-foto.jpg', '2023-07-17', 1, 214),
(22, 'Venda', '6.00', 1, 'Sim', '2022-09-06', '2022-09-30', 'sem-foto.jpg', '2023-07-17', 1, 215),
(23, 'Venda', '15.00', 1, 'Sim', '2023-07-17', '2023-07-20', 'sem-foto.jpg', '2023-07-17', 2, 216),
(24, 'Venda', '6.00', 1, 'Sim', '2023-07-17', '2023-07-19', 'sem-foto.jpg', '2023-07-17', 2, 217),
(25, 'Venda', '10.50', 1, 'Sim', '2023-07-17', '2023-07-21', 'sem-foto.jpg', '2023-07-17', 2, 218),
(26, 'Venda', '12.00', 1, 'Sim', '2023-07-17', '2023-07-18', 'sem-foto.jpg', '2023-07-17', 2, 219),
(27, 'Venda', '6.00', 1, 'Sim', '2023-07-17', '2023-07-20', 'sem-foto.jpg', '2023-07-17', 2, 220),
(28, 'Venda', '6.00', 1, 'Sim', '2023-07-17', '2023-07-21', 'sem-foto.jpg', '2023-07-17', 2, 221),
(29, 'Venda', '6.00', 1, 'Sim', '2023-07-17', '2023-07-26', 'sem-foto.jpg', '2023-07-17', 1, 222),
(30, 'Venda', '6.00', 1, 'Sim', '2023-07-17', '2023-07-19', 'sem-foto.jpg', '2023-07-17', 2, 223),
(33, 'Teste - Parcela 1', '33.33', 1, 'Sim', '2023-07-17', '2023-07-20', '17-07-2023-15-57-03-09-11-2021-13-07-43-pdfteste.pdf', '2023-07-17', 1, 0),
(34, 'Teste - Parcela 2', '33.33', 1, 'Sim', '2023-07-17', '2023-08-20', '17-07-2023-15-57-03-09-11-2021-13-07-43-pdfteste.pdf', '2023-07-17', 1, 0),
(35, 'Teste - Parcela 3', '33.34', 1, 'Sim', '2023-07-17', '2023-09-20', '17-07-2023-15-57-03-09-11-2021-13-07-43-pdfteste.pdf', '2023-07-17', 1, 0),
(36, 'Resíduo Débitos - Parcela 1', '2.00', 1, 'Sim', '2023-07-17', '2023-07-17', 'sem-foto.jpg', '2023-07-17', 2, 0),
(37, 'Resíduo Débitos - Parcela 2', '2.00', 1, 'Sim', '2023-07-17', '2023-07-18', 'sem-foto.jpg', '2023-07-17', 2, 0),
(38, 'Resíduo Débitos - Parcela 3', '2.00', 1, 'Sim', '2023-07-17', '2023-07-19', 'sem-foto.jpg', '2023-07-17', 2, 0),
(39, 'Resíduo Débitos - Parcela 4', '2.00', 1, 'Sim', '2023-07-17', '2023-07-20', 'sem-foto.jpg', '2023-07-17', 2, 0),
(40, 'Resíduo Débitos - Parcela 5', '2.00', 1, 'Sim', '2023-07-17', '2023-07-21', 'sem-foto.jpg', '2023-07-17', 2, 0),
(41, 'Venda', '30.00', 2, 'Não', '2023-07-17', '2023-07-18', 'sem-foto.jpg', '0000-00-00', 0, 224),
(42, 'Venda', '1.50', 2, 'Não', '2023-07-17', '2023-07-18', 'sem-foto.jpg', '0000-00-00', 0, 225),
(43, 'Venda', '3.00', 2, 'Não', '2023-07-17', '2023-07-18', 'sem-foto.jpg', '0000-00-00', 0, 226),
(44, 'Venda', '4.50', 2, 'Não', '2023-07-17', '2023-07-18', 'sem-foto.jpg', '0000-00-00', 0, 227),
(46, 'Venda', '4.50', 2, 'Não', '2023-07-17', '2023-07-18', 'sem-foto.jpg', '0000-00-00', 0, 229),
(47, 'Venda', '4.50', 2, 'Não', '2023-07-17', '2023-07-18', 'sem-foto.jpg', '0000-00-00', 0, 230),
(48, 'Venda', '4.50', 2, 'Não', '2023-07-17', '2023-07-18', 'sem-foto.jpg', '0000-00-00', 0, 231),
(49, 'Venda', '1.50', 2, 'Não', '2023-07-17', '2023-07-18', 'sem-foto.jpg', '0000-00-00', 0, 232),
(50, 'Resíduo Débitos', '4.00', 1, 'Não', '2023-07-17', '2023-07-17', 'sem-foto.jpg', '0000-00-00', 2, NULL),
(51, 'Venda - Parcela 1', '3.00', 1, 'Não', '2023-07-17', '2023-07-18', 'sem-foto.jpg', NULL, 0, 228),
(52, 'Venda - Parcela 2', '3.00', 1, 'Não', '2023-07-17', '2023-07-25', 'sem-foto.jpg', NULL, 0, 228),
(53, 'Venda - Parcela 3', '3.00', 1, 'Não', '2023-07-17', '2023-08-01', 'sem-foto.jpg', NULL, 0, 228);

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pgtos`
--

CREATE TABLE `forma_pgtos` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `forma_pgtos`
--

INSERT INTO `forma_pgtos` (`id`, `codigo`, `nome`) VALUES
(1, 1, 'Dinheiro'),
(2, 2, 'Cartão de Crédito'),
(3, 3, 'Cartão de Débito'),
(4, 4, 'Pendente (Fiado)'),
(5, 5, 'Pix');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tipo_pessoa` varchar(10) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome`, `tipo_pessoa`, `cpf`, `email`, `telefone`, `endereco`) VALUES
(1, 'Marcos Silva', 'Física', '097.555.456-99', 'marcos@hotmail.com', '(33) 33333-3333', ''),
(2, 'Patrícia Silva', 'Júridica', '55555555', 'patricia@hotmail.com', '(66) 66666-5444', 'Rua 5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_venda`
--

CREATE TABLE `itens_venda` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL,
  `usuario` int(11) NOT NULL,
  `venda` int(11) NOT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `itens_venda`
--

INSERT INTO `itens_venda` (`id`, `produto`, `valor_unitario`, `quantidade`, `valor_total`, `usuario`, `venda`, `data`) VALUES
(311, 4, '1089.99', 1, '1089.99', 2, 47, '2021-07-20'),
(312, 4, '1089.99', 1, '1089.99', 2, 47, '2021-07-20'),
(313, 4, '1089.99', 1, '1089.99', 2, 47, '2021-07-20'),
(314, 7, '3.80', 1, '3.80', 2, 47, '2021-07-20'),
(315, 7, '3.80', 1, '3.80', 2, 47, '2021-07-20'),
(316, 7, '3.80', 1, '3.80', 2, 47, '2021-07-20'),
(317, 4, '1089.99', 1, '1089.99', 2, 47, '2021-07-20'),
(318, 4, '1089.99', 1, '1089.99', 2, 47, '2021-07-20'),
(319, 4, '1089.99', 1, '1089.99', 2, 47, '2021-07-20'),
(320, 7, '3.80', 1, '3.80', 2, 48, '2021-07-20'),
(321, 4, '1089.99', 1, '1089.99', 2, 48, '2021-07-20'),
(322, 4, '1089.99', 1, '1089.99', 2, 49, '2021-07-20'),
(323, 7, '3.80', 1, '3.80', 2, 49, '2021-07-20'),
(324, 7, '3.80', 1, '3.80', 2, 49, '2021-07-20'),
(325, 7, '3.80', 1, '3.80', 2, 49, '2021-07-20'),
(326, 7, '3.80', 1, '3.80', 2, 49, '2021-07-20'),
(327, 7, '3.80', 1, '3.80', 2, 49, '2021-07-20'),
(328, 7, '3.80', 1, '3.80', 2, 49, '2021-07-20'),
(329, 7, '3.80', 1, '3.80', 2, 49, '2021-07-20'),
(330, 4, '1089.99', 1, '1089.99', 2, 49, '2021-07-20'),
(331, 4, '1089.99', 1, '1089.99', 2, 49, '2021-07-20'),
(332, 4, '1089.99', 1, '1089.99', 2, 49, '2021-07-20'),
(333, 4, '1089.99', 1, '1089.99', 2, 49, '2021-07-20'),
(334, 7, '3.80', 1, '3.80', 2, 50, '2021-07-20'),
(335, 7, '3.80', 1, '3.80', 2, 50, '2021-07-20'),
(336, 4, '1089.99', 1, '1089.99', 2, 50, '2021-07-20'),
(337, 4, '1089.99', 1, '1089.99', 2, 50, '2021-07-20'),
(338, 4, '1089.99', 1, '1089.99', 2, 50, '2021-07-20'),
(339, 4, '1089.99', 1, '1089.99', 2, 50, '2021-07-20'),
(340, 4, '1089.99', 1, '1089.99', 2, 50, '2021-07-20'),
(341, 4, '1089.99', 1, '1089.99', 2, 50, '2021-07-20'),
(342, 8, '22.99', 1, '22.99', 2, 50, '2021-07-20'),
(343, 4, '1089.99', 1, '1089.99', 2, 50, '2021-07-20'),
(344, 8, '22.99', 1, '22.99', 2, 50, '2021-07-20'),
(345, 7, '3.80', 1, '3.80', 2, 51, '2021-07-20'),
(346, 4, '1089.99', 1, '1089.99', 2, 51, '2021-07-20'),
(347, 4, '1089.99', 1, '1089.99', 2, 52, '2021-07-20'),
(348, 7, '3.80', 1, '3.80', 2, 52, '2021-07-20'),
(349, 4, '1089.99', 1, '1089.99', 2, 53, '2021-07-20'),
(350, 4, '1089.99', 1, '1089.99', 2, 54, '2021-07-20'),
(351, 7, '3.80', 1, '3.80', 2, 54, '2021-07-20'),
(352, 4, '1089.99', 1, '1089.99', 2, 55, '2021-07-20'),
(353, 4, '1089.99', 1, '1089.99', 2, 57, '2021-07-20'),
(354, 4, '1089.99', 1, '1089.99', 2, 148, '2021-07-20'),
(355, 4, '1089.99', 1, '1089.99', 2, 149, '2021-07-20'),
(356, 4, '1089.99', 1, '1089.99', 2, 164, '2021-07-20'),
(357, 4, '1089.99', 1, '1089.99', 2, 165, '2021-07-20'),
(358, 4, '1089.99', 1, '1089.99', 2, 167, '2021-07-20'),
(359, 4, '1089.99', 1, '1089.99', 2, 168, '2021-07-20'),
(360, 4, '1089.99', 1, '1089.99', 2, 170, '2021-07-20'),
(361, 4, '1089.99', 1, '1089.99', 2, 171, '2021-07-20'),
(362, 4, '1089.99', 1, '1089.99', 2, 172, '2021-07-20'),
(363, 4, '1089.99', 1, '1089.99', 2, 173, '2021-07-20'),
(364, 4, '1089.99', 1, '1089.99', 2, 173, '2021-07-20'),
(365, 4, '1089.99', 1, '1089.99', 2, 174, '2021-07-20'),
(366, 4, '1089.99', 1, '1089.99', 2, 175, '2021-07-20'),
(367, 7, '3.80', 1, '3.80', 2, 175, '2021-07-20'),
(368, 4, '1089.99', 1, '1089.99', 2, 176, '2021-07-20'),
(369, 7, '3.80', 1, '3.80', 2, 176, '2021-07-20'),
(370, 4, '1089.99', 1, '1089.99', 2, 177, '2021-07-20'),
(371, 7, '3.80', 1, '3.80', 2, 177, '2021-07-20'),
(372, 4, '1089.99', 1, '1089.99', 2, 178, '2021-07-20'),
(373, 7, '3.80', 1, '3.80', 2, 179, '2021-07-20'),
(374, 4, '1089.99', 1, '1089.99', 2, 179, '2021-07-20'),
(375, 4, '1089.99', 1, '1089.99', 2, 179, '2021-07-20'),
(376, 4, '1089.99', 1, '1089.99', 2, 179, '2021-07-20'),
(377, 4, '1089.99', 1, '1089.99', 2, 179, '2021-07-20'),
(378, 4, '4.50', 1, '4.50', 2, 180, '2021-07-21'),
(379, 4, '4.50', 1, '4.50', 2, 181, '2021-07-21'),
(380, 7, '3.80', 1, '3.80', 2, 181, '2021-07-21'),
(381, 4, '4.50', 1, '4.50', 2, 182, '2021-07-21'),
(382, 7, '3.80', 1, '3.80', 2, 182, '2021-07-21'),
(383, 7, '3.80', 20, '76.00', 2, 183, '2021-07-21'),
(384, 4, '4.50', 25, '112.50', 2, 183, '2021-07-21'),
(385, 7, '3.80', 1, '3.80', 2, 184, '2021-07-21'),
(386, 4, '4.50', 1, '4.50', 2, 184, '2021-07-21'),
(387, 4, '4.50', 20, '90.00', 2, 184, '2021-07-21'),
(388, 7, '3.80', 10, '38.00', 2, 185, '2021-07-21'),
(389, 4, '4.50', 1, '4.50', 7, 186, '2021-07-21'),
(390, 4, '4.50', 6, '27.00', 7, 186, '2021-07-21'),
(391, 4, '4.50', 1, '4.50', 2, 187, '2021-07-21'),
(392, 7, '3.80', 1, '3.80', 2, 187, '2021-07-21'),
(393, 4, '4.50', 1, '4.50', 2, 188, '2021-07-21'),
(394, 4, '4.50', 1, '4.50', 2, 188, '2021-07-21'),
(395, 4, '4.50', 1, '4.50', 2, 189, '2021-07-21'),
(396, 4, '4.50', 1, '4.50', 2, 189, '2021-07-21'),
(397, 4, '4.50', 1, '4.50', 2, 189, '2021-07-21'),
(398, 7, '3.80', 1, '3.80', 2, 190, '2021-07-21'),
(399, 4, '4.50', 1, '4.50', 2, 190, '2021-07-21'),
(400, 4, '4.50', 1, '4.50', 7, 191, '2021-07-21'),
(401, 4, '4.50', 1, '4.50', 7, 191, '2021-07-21'),
(402, 4, '4.50', 1, '4.50', 7, 192, '2021-07-21'),
(404, 4, '4.50', 1, '4.50', 16, 193, '2022-09-06'),
(405, 8, '22.99', 4, '91.96', 16, 193, '2022-09-06'),
(406, 4, '4.50', 2, '9.00', 16, 193, '2022-09-06'),
(407, 10, '5.40', 2, '10.80', 16, 193, '2022-09-06'),
(408, 8, '22.99', 1, '22.99', 16, 193, '2022-09-06'),
(409, 4, '4.50', 1, '4.50', 16, 194, '2022-09-06'),
(421, 4, '4.50', 1, '4.50', 16, 195, '2022-09-06'),
(422, 4, '4.50', 1, '4.50', 16, 195, '2022-09-06'),
(423, 11, '6.00', 1, '6.00', 16, 195, '2022-09-06'),
(424, 7, '1.50', 1, '1.50', 16, 197, '2022-09-06'),
(425, 11, '4.00', 1, '4.00', 16, 197, '2022-09-06'),
(426, 7, '1.50', 1, '1.50', 16, 198, '2022-09-06'),
(427, 4, '4.50', 1, '4.50', 16, 198, '2022-09-06'),
(428, 11, '6.00', 1, '6.00', 16, 198, '2022-09-06'),
(429, 4, '4.50', 1, '4.50', 16, 199, '2022-09-06'),
(430, 7, '1.50', 1, '1.50', 16, 199, '2022-09-06'),
(431, 4, '4.50', 1, '4.50', 16, 200, '2022-09-06'),
(432, 7, '1.50', 1, '1.50', 16, 200, '2022-09-06'),
(433, 4, '4.50', 1, '4.50', 16, 201, '2022-09-06'),
(434, 7, '1.50', 1, '1.50', 16, 201, '2022-09-06'),
(435, 4, '4.50', 2, '9.00', 16, 202, '2022-09-06'),
(436, 11, '4.00', 2, '8.00', 16, 202, '2022-09-06'),
(438, 4, '4.50', 1, '4.50', 16, 204, '2022-09-06'),
(439, 7, '1.50', 1, '1.50', 16, 204, '2022-09-06'),
(440, 4, '4.50', 1, '4.50', 16, 205, '2022-09-06'),
(441, 7, '1.50', 1, '1.50', 16, 205, '2022-09-06'),
(442, 4, '4.50', 1, '4.50', 16, 205, '2022-09-06'),
(443, 7, '1.50', 1, '1.50', 16, 206, '2022-09-06'),
(444, 4, '4.50', 1, '4.50', 16, 206, '2022-09-06'),
(445, 11, '5.00', 1, '5.00', 16, 206, '2022-09-06'),
(446, 4, '4.50', 2, '9.00', 16, 207, '2022-09-06'),
(447, 7, '1.50', 1, '1.50', 16, 207, '2022-09-06'),
(448, 11, '6.50', 1, '6.50', 16, 207, '2022-09-06'),
(449, 4, '4.50', 1, '4.50', 16, 208, '2022-09-06'),
(450, 7, '1.50', 1, '1.50', 16, 208, '2022-09-06'),
(451, 7, '1.50', 1, '1.50', 16, 210, '2022-09-06'),
(452, 4, '4.50', 1, '4.50', 16, 210, '2022-09-06'),
(453, 11, '5.80', 1, '5.80', 16, 210, '2022-09-06'),
(454, 4, '4.50', 1, '4.50', 16, 211, '2022-09-06'),
(455, 7, '1.50', 1, '1.50', 16, 211, '2022-09-06'),
(456, 11, '5.80', 1, '5.80', 16, 211, '2022-09-06'),
(457, 4, '4.50', 1, '4.50', 16, 212, '2022-09-06'),
(458, 9, '1.40', 3, '4.20', 16, 212, '2022-09-06'),
(459, 4, '4.50', 3, '13.50', 16, 213, '2022-09-06'),
(460, 4, '4.50', 1, '4.50', 16, 214, '2022-09-06'),
(461, 11, '6.00', 1, '6.00', 16, 214, '2022-09-06'),
(462, 7, '1.50', 1, '1.50', 16, 215, '2022-09-06'),
(463, 4, '4.50', 1, '4.50', 16, 215, '2022-09-06'),
(464, 4, '4.50', 1, '4.50', 2, 216, '2023-07-17'),
(465, 7, '1.50', 1, '1.50', 2, 216, '2023-07-17'),
(466, 4, '4.50', 2, '9.00', 2, 216, '2023-07-17'),
(467, 4, '4.50', 1, '4.50', 2, 217, '2023-07-17'),
(468, 7, '1.50', 1, '1.50', 2, 217, '2023-07-17'),
(469, 7, '1.50', 1, '1.50', 2, 218, '2023-07-17'),
(470, 4, '4.50', 1, '4.50', 2, 218, '2023-07-17'),
(471, 4, '4.50', 1, '4.50', 2, 218, '2023-07-17'),
(472, 4, '4.50', 1, '4.50', 2, 219, '2023-07-17'),
(473, 7, '1.50', 1, '1.50', 2, 219, '2023-07-17'),
(474, 4, '4.50', 1, '4.50', 2, 219, '2023-07-17'),
(475, 7, '1.50', 1, '1.50', 2, 219, '2023-07-17'),
(476, 4, '4.50', 1, '4.50', 2, 220, '2023-07-17'),
(477, 7, '1.50', 1, '1.50', 2, 220, '2023-07-17'),
(478, 4, '4.50', 1, '4.50', 2, 221, '2023-07-17'),
(479, 7, '1.50', 1, '1.50', 2, 221, '2023-07-17'),
(480, 4, '4.50', 1, '4.50', 2, 222, '2023-07-17'),
(481, 7, '1.50', 1, '1.50', 2, 222, '2023-07-17'),
(482, 4, '4.50', 1, '4.50', 2, 223, '2023-07-17'),
(483, 7, '1.50', 1, '1.50', 2, 223, '2023-07-17'),
(484, 4, '4.50', 1, '4.50', 2, 224, '2023-07-17'),
(485, 4, '4.50', 1, '4.50', 2, 224, '2023-07-17'),
(486, 4, '4.50', 1, '4.50', 2, 224, '2023-07-17'),
(487, 4, '4.50', 1, '4.50', 2, 224, '2023-07-17'),
(488, 7, '1.50', 1, '1.50', 2, 224, '2023-07-17'),
(489, 4, '4.50', 1, '4.50', 2, 224, '2023-07-17'),
(490, 4, '4.50', 1, '4.50', 2, 224, '2023-07-17'),
(491, 7, '1.50', 1, '1.50', 2, 224, '2023-07-17'),
(494, 7, '1.50', 1, '1.50', 2, 225, '2023-07-17'),
(495, 7, '1.50', 1, '1.50', 2, 226, '2023-07-17'),
(496, 7, '1.50', 1, '1.50', 2, 226, '2023-07-17'),
(497, 4, '4.50', 1, '4.50', 2, 227, '2023-07-17'),
(498, 4, '4.50', 1, '4.50', 2, 228, '2023-07-17'),
(499, 4, '4.50', 1, '4.50', 2, 228, '2023-07-17'),
(500, 4, '4.50', 1, '4.50', 2, 229, '2023-07-17'),
(501, 4, '4.50', 1, '4.50', 2, 230, '2023-07-17'),
(502, 4, '4.50', 1, '4.50', 2, 231, '2023-07-17'),
(504, 7, '1.50', 1, '1.50', 2, 232, '2023-07-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacoes`
--

CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL,
  `id_mov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movimentacoes`
--

INSERT INTO `movimentacoes` (`id`, `tipo`, `descricao`, `valor`, `usuario`, `data`, `id_mov`) VALUES
(1, 'Saída', 'Conta de Água', '660.00', 19, '2021-02-17', 2),
(2, 'Entrada', 'Marcela Silva', '100.00', 19, '2021-02-17', 3),
(3, 'Saída', 'Conta Teste', '50.00', 19, '2021-02-17', 10),
(4, 'Saída', 'Telefone Fixo', '590.00', 19, '2021-02-17', 11),
(5, 'Saída', 'Compra de Produtos', '40.00', 19, '2021-02-17', 5),
(6, 'Entrada', 'Conta Teste', '150.00', 19, '2021-02-17', 4),
(7, 'Entrada', 'Palema Silva', '890.00', 19, '2021-02-15', 8),
(8, 'Entrada', 'Marcela Campos', '650.00', 19, '2021-02-17', 7),
(9, 'Saída', 'Conta de IPTU', '1200.00', 19, '2021-02-17', 9),
(10, 'Entrada', 'Kamila Silva', '480.00', 19, '2021-02-17', 6),
(11, 'Saída', 'Conta de Água', '360.00', 19, '2021-02-24', 15),
(12, 'Entrada', 'Marcelo Souza', '290.00', 19, '2021-02-24', 9),
(13, 'Saída', 'Conta de Luz', '560.00', 1, '2021-07-21', 23),
(14, 'Saída', 'Compra de Produtos', '27.00', 1, '2021-07-21', 22),
(15, 'Entrada', 'Paulo Silva', '380.00', 1, '2021-07-21', 10),
(16, 'Entrada', 'Paulo Silva', '180.00', 1, '2021-07-21', 5),
(17, 'Saída', 'Compra de Produtos', '30.00', 1, '2021-07-21', 21),
(18, 'Saída', 'Conta de Luz', '860.00', 1, '2021-07-21', 14),
(19, 'Saída', 'Compra de Produtos', '2.10', 1, '2022-09-06', 24),
(20, 'Entrada', 'Conta X', '60.00', 1, '2022-09-06', 11),
(21, 'Entrada', 'Venda', '6.00', 1, '2022-09-06', 16),
(22, 'Entrada', 'Compra', '460.00', 1, '2022-09-06', 12),
(23, 'Entrada', 'Venda', '11.80', 1, '2022-09-06', 18),
(24, 'Entrada', 'Baixa Débito', '40.95', 1, '2023-07-17', 1),
(25, 'Entrada', 'Baixa Débito', '40.00', 1, '2023-07-17', 2),
(26, 'Entrada', 'Baixa Débito', '10.00', 1, '2023-07-17', 2),
(27, 'Entrada', 'Baixa Débito', '20.00', 1, '2023-07-17', 2),
(28, 'Entrada', 'Baixa Débito', '106.00', 1, '2023-07-17', 1),
(29, 'Entrada', 'Baixa Débito', '6.00', 1, '2023-07-17', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `estoque` int(11) NOT NULL,
  `valor_compra` decimal(8,2) NOT NULL,
  `valor_venda` decimal(8,2) NOT NULL,
  `fornecedor` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `foto` varchar(120) DEFAULT NULL,
  `lucro` decimal(8,2) NOT NULL,
  `estoque_min` int(11) NOT NULL,
  `lote` varchar(100) DEFAULT NULL,
  `validade` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `codigo`, `nome`, `descricao`, `estoque`, `valor_compra`, `valor_venda`, `fornecedor`, `categoria`, `foto`, `lucro`, `estoque_min`, `lote`, `validade`) VALUES
(4, '123', 'Feijão Carioca', 'Feijão Carioca 1 KG', 55, '3.00', '4.50', 1, 7, '16-02-2021-15-55-13-feijão.jpg', '50.00', 6, NULL, NULL),
(7, '321', 'Coca Cola Lata', 'Regrigerante Coca-Cola Lata 350 ML', 83, '1.00', '1.50', 1, 8, '16-02-2021-15-54-33-refrilata.jpg', '50.00', 7, 'A3568524', '2023-07-28'),
(8, '123456789101', 'Arroz Prato Fino', 'Arroz Prato Fino 5 KG', 14, '15.00', '22.99', 1, 7, '22-02-2021-18-42-51-arroz.jpg', '0.00', 6, 'A3568522', '2023-07-17'),
(9, '7897933621227', 'Suco em Pó', 'Suco em Pó Tang 95 Gramas', 218, '0.35', '1.40', 1, 8, '22-02-2021-21-00-56-suco-em-po.jpg', '300.00', 5, 'A3568521', '2023-07-21'),
(10, '02365478941', 'Suco Caixa', 'Suco Caixa', 78, '3.00', '5.40', 1, 8, '21-07-2021-09-45-14-suco-caixa.jpg', '80.00', 10, 'A3568523', '2023-07-24'),
(11, '12345', 'Pão Francês', 'Pão', 20, '50.00', '7.00', 1, 7, '06-09-2022-19-46-51-pao.jpeg', '0.00', 0, 'A3568520', '2023-07-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sangrias`
--

CREATE TABLE `sangrias` (
  `id` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `usuario` int(11) NOT NULL,
  `caixa` int(11) NOT NULL,
  `id_caixa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sangrias`
--

INSERT INTO `sangrias` (`id`, `valor`, `data`, `hora`, `usuario`, `caixa`, `id_caixa`) VALUES
(13, '100.00', '2021-07-21', '13:25:18', 2, 1, 12),
(14, '50.00', '2021-07-21', '13:25:27', 2, 1, 12),
(15, '120.00', '2021-07-21', '13:26:14', 2, 3, 13),
(16, '120.00', '2021-07-21', '13:27:12', 7, 4, 14),
(17, '50.00', '2021-07-21', '13:38:18', 2, 1, 15),
(18, '30.00', '2021-07-21', '13:38:23', 2, 1, 15),
(19, '60.00', '2021-07-21', '13:38:29', 2, 1, 15),
(20, '50.00', '2021-07-21', '13:46:28', 2, 1, 16),
(21, '50.00', '2021-07-21', '14:08:34', 1, 1, 16),
(22, '50.00', '2021-07-21', '14:35:43', 20, 1, 17),
(23, '30.00', '2021-07-21', '14:35:49', 20, 1, 17),
(24, '100.00', '2022-09-06', '18:59:35', 1, 3, 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `cpf`, `senha`, `nivel`) VALUES
(1, 'Administrador', 'admin@hotmail.com', '000.000.000-00', '123', 'Administrador'),
(2, 'Marcela Campos', 'marcela@hotmail.com', '111.111.111-11', '123', 'Operador'),
(5, 'Bianca Freitas', 'paloma2@hotmail.com', '265.265.656-56', '123', 'Tesoureiro'),
(6, 'Paloma Freitas', 'paloma3@hotmail.com', '265.265.656-58', '123', 'Tesoureiro'),
(7, 'Mauricio', 'mauricio@hotmail.com', '031.554.514-54', '123', 'Operador'),
(16, 'Sabrina ', 'sabrinasilva@hotmail.com', '000.000.000-01', '1234', 'Operador'),
(19, 'Tesoureiro Teste', 'tesoureiro@hotmail.com', '123.456.985-52', '123', 'Tesoureiro'),
(20, 'Gerente Teste', 'gerente@hotmail.com', '255.555.555-55', '123', 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `operador` int(11) NOT NULL,
  `valor_recebido` decimal(8,2) NOT NULL,
  `desconto` varchar(20) NOT NULL,
  `troco` decimal(8,2) NOT NULL,
  `forma_pgto` int(11) NOT NULL,
  `abertura` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `valor`, `data`, `hora`, `operador`, `valor_recebido`, `desconto`, `troco`, `forma_pgto`, `abertura`, `status`, `cliente`) VALUES
(8, '137.40', '2021-02-23', '10:59:41', 2, '150.00', 'R$ 10,00', '12.60', 1, 5, 'Concluída', NULL),
(9, '81.80', '2021-02-23', '11:10:15', 2, '100.00', 'R$ 10,00', '18.20', 1, 5, 'Concluída', NULL),
(10, '0.00', '2021-02-23', '11:10:50', 2, '0.00', 'R$ 0,00', '0.00', 1, 5, 'Concluída', NULL),
(11, '0.00', '2021-02-23', '11:29:00', 2, '0.00', 'R$ 0,00', '0.00', 1, 5, 'Concluída', NULL),
(12, '0.00', '2021-02-23', '11:35:04', 2, '0.00', 'R$ 0,00', '0.00', 1, 5, 'Concluída', NULL),
(13, '0.00', '2021-02-23', '11:37:11', 2, '0.00', 'R$ 0,00', '0.00', 1, 5, 'Concluída', NULL),
(14, '8.00', '2021-02-23', '11:44:49', 2, '8.00', 'R$ 0,00', '0.00', 1, 5, 'Concluída', NULL),
(15, '3.80', '2021-02-23', '11:45:19', 2, '3.80', 'R$ 0,00', '0.00', 1, 5, 'Concluída', NULL),
(16, '7.00', '2021-02-23', '11:48:23', 2, '10.00', 'R$ 1,00', '3.00', 2, 5, 'Concluída', NULL),
(17, '42.18', '2021-02-23', '12:20:09', 7, '50.00', 'R$ 5,00', '7.82', 1, 6, 'Concluída', NULL),
(18, '10.62', '2021-02-23', '12:20:53', 7, '15.00', '10%', '4.38', 1, 6, 'Concluída', NULL),
(19, '18.81', '2021-02-23', '13:04:35', 7, '20.00', '5%', '1.19', 1, 6, 'Concluída', NULL),
(20, '11.80', '2021-02-23', '15:09:11', 7, '11.80', 'R$ 0,00', '0.00', 1, 8, 'Concluída', NULL),
(21, '8.00', '2021-02-23', '15:10:16', 7, '8.00', 'R$ 0,00', '0.00', 1, 8, 'Concluída', NULL),
(22, '3.80', '2021-02-23', '15:11:07', 7, '3.80', 'R$ 0,00', '0.00', 1, 8, 'Concluída', NULL),
(23, '3.80', '2021-02-23', '15:13:01', 7, '3.80', 'R$ 0,00', '0.00', 1, 8, 'Concluída', NULL),
(24, '8.00', '2021-02-23', '15:19:01', 7, '8.00', 'R$ 0,00', '0.00', 1, 8, 'Concluída', NULL),
(25, '8.00', '2021-02-23', '15:19:37', 7, '8.00', 'R$ 0,00', '0.00', 1, 8, 'Cancelada', NULL),
(26, '32.22', '2021-02-23', '18:27:35', 7, '50.00', '10%', '17.78', 1, 8, 'Cancelada', NULL),
(27, '35.78', '2021-02-24', '15:04:11', 2, '35.78', 'R$ 0,00', '0.00', 3, 5, 'Concluída', NULL),
(28, '35.80', '2021-02-24', '15:05:46', 2, '35.80', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(29, '3.80', '2021-03-24', '15:05:52', 2, '3.80', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(30, '8.00', '2021-03-24', '15:05:59', 2, '8.00', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(31, '8.00', '2021-01-24', '15:06:07', 2, '8.00', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(32, '3.80', '2021-01-24', '15:06:15', 2, '3.80', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(33, '8.00', '2021-01-24', '15:06:25', 2, '8.00', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(34, '3.80', '2021-01-24', '15:06:32', 2, '3.80', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(35, '8.00', '2021-01-24', '15:06:39', 2, '8.00', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(36, '712.00', '2021-02-24', '17:48:58', 2, '712.00', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(37, '11.80', '2021-07-20', '15:10:19', 2, '20.00', 'R$ 0,00', '8.20', 1, 9, 'Concluída', NULL),
(38, '7.60', '2021-07-20', '15:19:36', 2, '10.00', 'R$ 0,00', '2.40', 1, 9, 'Concluída', NULL),
(39, '3.80', '2021-07-20', '15:24:40', 2, '3.80', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(40, '3.80', '2021-07-20', '15:25:33', 2, '3.80', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(41, '3.80', '2021-07-20', '15:25:43', 2, '3.80', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(42, '3.80', '2021-07-20', '15:25:44', 2, '3.80', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(43, '3.80', '2021-07-20', '15:25:46', 2, '3.80', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(46, '7.60', '2021-07-20', '15:32:23', 2, '10.00', 'R$ 0,00', '2.40', 1, 9, 'Concluída', NULL),
(180, '4.50', '2021-07-21', '11:52:05', 2, '4.50', 'R$ 0,00', '0.00', 1, 9, 'Concluída', NULL),
(181, '8.30', '2021-07-21', '12:07:15', 2, '8.30', 'R$ 0,00', '0.00', 1, 10, 'Concluída', NULL),
(182, '8.30', '2021-07-21', '12:47:57', 2, '8.30', 'R$ 0,00', '0.00', 1, 11, 'Concluída', NULL),
(183, '188.50', '2021-07-21', '13:05:35', 2, '188.50', 'R$ 0,00', '0.00', 1, 11, 'Concluída', NULL),
(184, '98.30', '2021-07-21', '13:25:04', 2, '98.30', 'R$ 0,00', '0.00', 1, 12, 'Concluída', NULL),
(185, '38.00', '2021-07-21', '13:25:59', 2, '38.00', 'R$ 0,00', '0.00', 1, 13, 'Concluída', NULL),
(186, '31.50', '2021-07-21', '13:26:59', 7, '31.50', 'R$ 0,00', '0.00', 1, 14, 'Concluída', NULL),
(187, '8.30', '2021-07-21', '13:37:41', 2, '8.30', 'R$ 0,00', '0.00', 1, 15, 'Concluída', NULL),
(188, '9.00', '2021-07-21', '13:37:54', 2, '9.00', 'R$ 0,00', '0.00', 2, 15, 'Concluída', NULL),
(189, '13.50', '2021-07-21', '13:38:06', 2, '13.50', 'R$ 0,00', '0.00', 3, 15, 'Concluída', NULL),
(190, '8.30', '2021-07-21', '13:45:44', 2, '8.30', 'R$ 0,00', '0.00', 1, 16, 'Concluída', NULL),
(191, '9.00', '2021-07-21', '14:35:19', 7, '9.00', 'R$ 0,00', '0.00', 1, 17, 'Concluída', NULL),
(192, '4.50', '2021-07-21', '14:35:29', 7, '4.50', 'R$ 0,00', '0.00', 2, 17, 'Concluída', NULL),
(193, '125.33', '2022-09-06', '11:47:15', 16, '140.00', '10%', '14.68', 1, 18, 'Concluída', NULL),
(194, '4.50', '2022-09-06', '12:57:35', 16, '4.50', 'R$ 0,00', '0.00', 1, 18, 'Concluída', NULL),
(195, '15.00', '2022-09-06', '13:04:32', 16, '15.00', 'R$ 0,00', '0.00', 1, 18, 'Concluída', NULL),
(196, '15.00', '2022-09-06', '13:09:12', 16, '15.00', 'R$ 0,00', '0.00', 1, 18, 'Concluída', NULL),
(197, '5.50', '2022-09-06', '13:09:53', 16, '5.50', 'R$ 0,00', '0.00', 1, 18, 'Concluída', NULL),
(198, '12.00', '2022-09-06', '14:12:38', 16, '12.00', 'R$ 0,00', '0.00', 1, 18, 'Concluída', 1),
(199, '6.00', '2022-09-06', '14:14:38', 16, '6.00', 'R$ 0,00', '0.00', 1, 18, 'Concluída', 0),
(200, '6.00', '2022-09-06', '14:25:57', 16, '6.00', 'R$ 0,00', '0.00', 1, 18, 'Concluída', 0),
(201, '6.00', '2022-09-06', '14:26:25', 16, '6.00', 'R$ 0,00', '0.00', 4, 18, 'Concluída', 1),
(202, '17.00', '2022-09-06', '14:28:12', 16, '17.00', 'R$ 0,00', '0.00', 1, 18, 'Concluída', 0),
(203, '4.50', '2022-09-06', '14:37:33', 16, '4.50', 'R$ 0,00', '0.00', 4, 18, 'Cancelada', 2),
(204, '6.00', '2022-09-06', '14:39:32', 16, '6.00', 'R$ 0,00', '0.00', 4, 18, 'Concluída', 2),
(205, '10.50', '2022-09-06', '14:42:51', 16, '10.50', 'R$ 0,00', '0.00', 4, 18, 'Concluída', 2),
(206, '11.00', '2022-09-06', '18:48:47', 16, '11.00', 'R$ 0,00', '0.00', 1, 18, 'Concluída', 0),
(207, '16.15', '2022-09-06', '18:50:02', 16, '20.00', '5%', '3.85', 1, 18, 'Concluída', 0),
(208, '6.00', '2022-09-06', '18:52:07', 16, '6.00', 'R$ 0,00', '0.00', 1, 18, 'Concluída', 0),
(209, '6.00', '2022-09-06', '18:57:29', 16, '6.00', 'R$ 0,00', '0.00', 1, 18, 'Concluída', 0),
(210, '11.80', '2022-09-06', '18:58:13', 16, '11.80', 'R$ 0,00', '0.00', 4, 18, 'Concluída', 1),
(211, '11.21', '2022-09-06', '19:55:29', 16, '20.00', '5%', '8.79', 1, 19, 'Concluída', 0),
(212, '8.70', '2022-09-06', '19:56:47', 16, '8.70', 'R$ 0,00', '0.00', 4, 19, 'Concluída', 1),
(213, '13.50', '2022-09-06', '20:02:57', 16, '13.50', 'R$ 0,00', '0.00', 4, 19, 'Concluída', 1),
(214, '9.45', '2022-09-06', '20:04:06', 16, '10.00', '10%', '0.55', 4, 19, 'Concluída', 1),
(215, '6.00', '2022-09-06', '20:06:53', 16, '10.00', 'R$ 0,00', '4.00', 4, 19, 'Concluída', 1),
(216, '15.00', '2023-07-17', '12:01:04', 2, '15.00', 'R$ 0,00', '0.00', 1, 20, 'Concluída', 2),
(217, '6.00', '2023-07-17', '12:06:53', 2, '6.00', 'R$ 0,00', '0.00', 1, 20, 'Concluída', 2),
(218, '10.50', '2023-07-17', '12:07:11', 2, '10.50', 'R$ 0,00', '0.00', 1, 20, 'Concluída', 2),
(219, '12.00', '2023-07-17', '12:12:37', 2, '12.00', 'R$ 0,00', '0.00', 1, 20, 'Concluída', 2),
(220, '6.00', '2023-07-17', '12:15:32', 2, '6.00', 'R$ 0,00', '0.00', 4, 20, 'Concluída', 2),
(221, '6.00', '2023-07-17', '12:35:57', 2, '6.00', 'R$ 0,00', '0.00', 4, 20, 'Concluída', 2),
(222, '6.00', '2023-07-17', '12:37:44', 2, '6.00', 'R$ 0,00', '0.00', 1, 20, 'Concluída', 1),
(223, '6.00', '2023-07-17', '12:38:05', 2, '6.00', 'R$ 0,00', '0.00', 4, 20, 'Concluída', 2),
(224, '30.00', '2023-07-17', '19:45:57', 2, '30.00', 'R$ 0,00', '0.00', 5, 20, 'Concluída', 0),
(225, '1.50', '2023-07-17', '19:47:14', 2, '1.50', 'R$ 0,00', '0.00', 5, 20, 'Concluída', 0),
(226, '3.00', '2023-07-17', '19:57:27', 2, '3.00', 'R$ 0,00', '0.00', 5, 20, 'Concluída', 0),
(227, '4.50', '2023-07-17', '20:02:55', 2, '4.50', 'R$ 0,00', '0.00', 2, 20, 'Concluída', 0),
(228, '9.00', '2023-07-17', '20:13:45', 2, '9.00', 'R$ 0,00', '0.00', 2, 20, 'Concluída', 0),
(229, '4.50', '2023-07-17', '20:21:12', 2, '4.50', 'R$ 0,00', '0.00', 2, 20, 'Concluída', 0),
(230, '4.50', '2023-07-17', '20:25:58', 2, '4.50', 'R$ 0,00', '0.00', 5, 20, 'Concluída', 0),
(231, '4.50', '2023-07-17', '20:27:14', 2, '4.50', 'R$ 0,00', '0.00', 1, 20, 'Concluída', 0),
(232, '1.50', '2023-07-17', '21:20:41', 2, '1.50', 'R$ 0,00', '0.00', 5, 20, 'Concluída', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alerta_vencimentos`
--
ALTER TABLE `alerta_vencimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `caixa`
--
ALTER TABLE `caixa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `caixas`
--
ALTER TABLE `caixas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `forma_pgtos`
--
ALTER TABLE `forma_pgtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sangrias`
--
ALTER TABLE `sangrias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alerta_vencimentos`
--
ALTER TABLE `alerta_vencimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `caixa`
--
ALTER TABLE `caixa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `caixas`
--
ALTER TABLE `caixas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `forma_pgtos`
--
ALTER TABLE `forma_pgtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT de tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `sangrias`
--
ALTER TABLE `sangrias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
