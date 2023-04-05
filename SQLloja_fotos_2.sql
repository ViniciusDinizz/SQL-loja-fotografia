CREATE DATABASE Fuji;

CREATE TABLE PessoaFisica(
    cpf CHAR(11) NOT NULL,
    rg VARCHAR(9) NULL,
    dataNascimento DATE,
    sexo CHAR,
    nome VARCHAR(50) NOT NULL,
    codCliente int NOT NULL
)

CREATE TABLE PessoaJuridica(
    cnpj CHAR(14) NOT NULL,
    inscricaoEstadual CHAR(9),
    nomeResponsavel VARCHAR(50) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    codCliente int NOT NULL
)

CREATE TABLE Funcionario(
    codigoDep INT NOT NULL,
    departamento VARCHAR(10),
    nome VARCHAR(50) NOT NULL,
    funcao VARCHAR(30) NOT NULL
)

CREATE TABLE Produto(
    codigo INT NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    precoCusto DECIMAL NOT NULL,
    precoVenda DECIMAL NOT NULL,
    qtdMinima INT NOT NULL,
    qtdEstoque INT NOT NULL
)

CREATE TABLE Venda(
    id INT NOT NULL,
    dataVenda DATETIME NOT NULL,
    formaPagto VARCHAR(10) NOT NULL,
    valorVenda DECIMAL NOT NULL
)

CREATE TABLE Endereco(
    logradouro VARCHAR(50) NOT NULL,
    numero INT NULL,
    complemento VARCHAR(50),
    bairro VARCHAR(20) NOT NULL,
    cep char(8) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    pais VARCHAR(2) NOT NULL
)

CREATE TABLE Telefone(
    tipo VARCHAR(10) NOT NULL,
    numero VARCHAR(11) NOT NULL
);

ALTER TABLE

ALTER TABLE Funcionario ADD
    tipo_Telefone VARCHAR(10) NULL,
    CONSTRAINT FK_Funcionario_Telefone FOREIGN KEY (tipo_Telefone) references Telefone(tipo)