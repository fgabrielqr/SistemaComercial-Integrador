--
-- Database: `sistema`
--

create database sistema;
use sistema;

CREATE TABLE categorias (
  id_categoria int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id int(11) NOT NULL,
  nome_categoria varchar(100) NOT NULL,
  dataCaptura date NOT NULL,
  foreign key(id) references usuarios(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE clientes (
  id_cliente int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id int(11) NOT NULL,
  nome varchar(100) NOT NULL,
  sobrenome varchar(100) NOT NULL,
  endereco varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  telefone varchar(100) NOT NULL,
  cpf varchar(100) NOT NULL,
  foreign key(id) references usuarios(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE fornecedores (
  id_fornecedor int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id int(11) NOT NULL,
  nome varchar(100) NOT NULL,
  sobrenome varchar(100) NOT NULL,
  endereco varchar(150) NOT NULL,
  email varchar(100) NOT NULL,
  telefone varchar(100) NOT NULL,
  cpf varchar(100) NOT NULL,
  foreign key(id) references usuarios(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE imagens (
  id_imagem int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_categoria int(11) NOT NULL,
  nome varchar(100) NOT NULL,
  url varchar(100) NOT NULL,
  dataUpload date NOT NULL,
  foreign key(id_categoria) references categorias(id_categoria)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE produtos (
  id_produto int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_categoria int(11) NOT NULL,
  id_imagem int(11) NOT NULL,
  id int(11) NOT NULL,
  nome varchar(100) NOT NULL,
  descricao varchar(200) NOT NULL,
  quantidade int(11) NOT NULL,
  preco float NOT NULL,
  dataCaptura date NOT NULL,
  foreign key(id_categoria) references categorias(id_categoria),
  foreign key(id_imagem) references imagens(id_imagem),
  foreign key(id) references usuarios(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE usuarios (
  id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  usu varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  senha varchar(100) NOT NULL,
  dataCaptura date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE vendas (
  id_venda int(11) NOT NULL,
  id_cliente int(11) NOT NULL,
  id_produto int(11) NOT NULL,
  id int(11) NOT NULL,
  preco float NOT NULL,
  quantidade int(11) NOT NULL,
  total_venda float NOT NULL,
  dataCompra date NOT NULL,
  foreign key(id_cliente) references clientes(id_cliente),
  foreign key(id_produto) references produtos(id_produto),
  foreign key(id) references usuarios(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
