USE livrarialucasrian;
CRAETE TABLE Autores;
AutorID INT AUTO INCREMENT PRIMARY KEY;   
Nome TEXT NOT NULL;
Nacionalidade TEXT;


USE livrarialucasrian;
CREATE TABLE Livros(
    LivrosID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(60) NOT NULL,
    Genêro VARCHAR(60),
    AnoPublicacao INT,
    AutorID INT,
     FOREIGN KEY(AutorID) REFERENCES Autores(AutorID)
)
USE livrarialucasrian;
ALTER TABLE Autores;   
Nome VARCHAR(100) NOT NULL;
Nacionalidade VARCHAR(60);


USE livrarialucasrian;
CREATE TABLE Clientes (
    Imprestimo INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(60) NOT NULL,
    Endereco VARCHAR(90),
    Telefone VARCHAR(80)
)


CRAETE TABLE Clientes(
  ClienteID INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(50) NOT NULL,
  Endereco VARCHAR (80),
  Telefone VARCHAR(70)

)

USE livrarialucasrian;
CRAETE TABLE Emprestimo(
  EmprestimoID INT PRIMARY KEY AUTO_INCREMENT,
  LivroID INT, 
  ClienteID INT, 
  FOREIGN KEY(LivroID) REFERENCES Livros(LivroID),
  FOREIGN KEY(ClienteID) REFERENCES Clientes(ClienteID),
  DataEmprestimo DATE,
  DataDevolucao DATE
)
