--instrução 1
CREATE TABLE carros_aluguel (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Modelo VARCHAR(255),
    Marca VARCHAR(255),
    Ano INT,
    PreçoPorDia DECIMAL(10, 2),
    Disponível VARCHAR(10) 
);

--instrução 2
INSERT INTO carros_aluguel (Modelo, Marca, Ano, PreçoPorDia, Disponível) VALUES
('Fusca', 'Volkswagen', 1988, 100.00, 'Sim'),
('Civic', 'Honda', 2020, 250.00, 'Sim'),
('Corolla', 'Toyota', 2019, 230.00, 'Não'),
('Onix', 'Chevrolet', 2022, 200.00, 'Sim'),
('A3', 'Audi', 2021, 300.00, 'Não'),
('X5', 'BMW', 2018, 350.00, 'Sim'),
('Jetta', 'Volkswagen', 2020, 220.00, 'Sim'),
('Taurus', 'Ford', 2017, 180.00, 'Sim'),
('Cruze', 'Chevrolet', 2019, 210.00, 'Não'),
('Sentra', 'Nissan', 2021, 240.00, 'Sim');

--instrução 3
CREATE TABLE clientes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Telefone VARCHAR(20),
    DataNascimento DATE
);

--instrução 4
INSERT INTO clientes (Nome, Email, Telefone, DataNascimento) VALUES
('Ana Silva', 'ana.silva@gmail.com', '(11) 98765-4321', '1985-03-22'),
('Bruno Oliveira', 'bruno.oliveira@gmail.com', '(21) 99876-5432', '1990-07-15'),
('Carlos Pereira', 'carlos.pereira@gmail.com', '(31) 91234-5678', '1982-12-05'),
('Diana Costa', 'diana.costa@gmail.com', '(41) 92345-6789', '1995-09-10'),
('Eduardo Santos', 'eduardo.santos@gmail.com', '(51) 93456-7890', '1988-11-30');

--instrução 5
CREATE TABLE alugueis_carros (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_Carro INT,
    ID_Cliente INT,
    DataInicio DATE,
    DataTermino DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ID_Carro) REFERENCES carros_aluguel(ID),
    FOREIGN KEY (ID_Cliente) REFERENCES clientes(ID)
);

--instrução 6


-- Inserir 6 aluguéis para o Cliente 1
INSERT INTO alugueis_carros (ID_Carro, ID_Cliente, DataInicio, DataTermino, ValorTotal) VALUES
(1, 1, '2024-01-01', '2024-01-05', 500.00),
(2, 1, '2024-02-01', '2024-02-10', 2000.00),
(3, 1, '2024-03-01', '2024-03-03', 690.00),
(4, 1, '2024-04-01', '2024-04-07', 1400.00),
(5, 1, '2024-05-01', '2024-05-10', 2000.00),
(6, 1, '2024-06-01', '2024-06-05', 500.00);

-- Inserir 6 aluguéis para o Cliente 2
INSERT INTO alugueis_carros (ID_Carro, ID_Cliente, DataInicio, DataTermino, ValorTotal) VALUES
(2, 2, '2024-01-10', '2024-01-15', 1250.00),
(3, 2, '2024-02-05', '2024-02-10', 1150.00),
(4, 2, '2024-03-10', '2024-03-15', 1400.00),
(5, 2, '2024-04-10', '2024-04-15', 1800.00),
(6, 2, '2024-05-10', '2024-05-15', 1400.00),
(7, 2, '2024-06-10', '2024-06-15', 1400.00);

-- Inserir 4 aluguéis para o Cliente 3
INSERT INTO alugueis_carros (ID_Carro, ID_Cliente, DataInicio, DataTermino, ValorTotal) VALUES
(3, 3, '2024-01-20', '2024-01-25', 1150.00),
(4, 3, '2024-02-20', '2024-02-25', 1400.00),
(5, 3, '2024-03-20', '2024-03-25', 2000.00),
(6, 3, '2024-04-20', '2024-04-25', 1400.00);

-- Inserir 4 aluguéis para o Cliente 4
INSERT INTO alugueis_carros (ID_Carro, ID_Cliente, DataInicio, DataTermino, ValorTotal) VALUES
(4, 4, '2024-01-30', '2024-02-05', 1400.00),
(5, 4, '2024-02-28', '2024-03-05', 1800.00),
(6, 4, '2024-03-30', '2024-04-05', 1800.00),
(7, 4, '2024-04-30', '2024-05-05', 1800.00);

-- Inserir 4 aluguéis para o Cliente 5
INSERT INTO alugueis_carros (ID_Carro, ID_Cliente, DataInicio, DataTermino, ValorTotal) VALUES
(5, 5, '2024-01-15', '2024-01-20', 2000.00),
(6, 5, '2024-02-15', '2024-02-20', 1800.00),
(7, 5, '2024-03-15', '2024-03-20', 1800.00),
(8, 5, '2024-04-15', '2024-04-20', 2000.00);


--instrução 7 
SELECT clientes.Nome AS NomeCliente,SUM(ValorTotal) AS TotalGasto
FROM clientes
LEFT JOIN alugueis_carros ON clientes.ID = alugueis_carros.ID_Cliente
GROUP BY clientes.ID, clientes.Nome
ORDER BY TotalGasto DESC;

--instrução 8
SELECT carros_aluguel.ID, carros_aluguel.Modelo, carros_aluguel.Marca, COUNT(ValorTotal) AS TotalAlugueis
FROM carros_aluguel
LEFT JOIN alugueis_carros ON carros_aluguel.ID = alugueis_carros.ID_Carro
GROUP BY  carros_aluguel.Modelo
ORDER BY TotalAlugueis DESC;



