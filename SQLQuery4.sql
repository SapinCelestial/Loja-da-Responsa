CREATE TABLE Doadores (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20),
    Endereco VARCHAR(150),
    Cidade VARCHAR(50),
    Estado VARCHAR(2),
    DataCadastro DATETIME DEFAULT GETDATE()
);