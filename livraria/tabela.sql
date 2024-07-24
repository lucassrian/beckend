

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

INSERT INTO Autores

USE ti3k5791_lucasrian;

CREATE TABLE IF NOT EXISTS clientes;(
    -- coluna / tipo / restrição
    idClientes INT PRIMARY KEY
    nome VARCHAR(100)
    telefone VARCHAR(12)

)


 ALTER TABLE clientes
 ADD email VARCHAR(100);

CREATE TABLE IF NOT EXI


ALTER TABLE clientes 
MODIFY email TEXT


ALTER TABLE clientes 
CHANGE COLUMN email emailClientes VARCHAR(255);


ALTER TABLE clientes
DROP COLUMN telefone;


USE ti3k5791_lucasrian;


ALTER TABLE clientes
RENAME TO clientes


DROP TABLE clientes

INSERT INTO clientes(idClientes, nome, email)
VALUES(1,'Lucas Silva', 'lucasrian.@gmail.com')

INSERT INTO clientes(idClientes, nome, email)
VALUES(2,'Leo Sousa ', 'leosouza.@gmail.com')


-- como atualizar dados de uma tabela 

UPDATE clientes
SET emailClientes = 'novo.email@email.com'
WHERE idClientes = 1; -- CONDIÇÃO

-- consulta com filtro:
SELECT emailClientes
FROM clientes
WHERE idClientes = 1;

--CONSULTA COM ORDENAÇÃO

SELECT idClientes, nome, emailClientes
FROM clientes
ORDER BY nome ASC ; 