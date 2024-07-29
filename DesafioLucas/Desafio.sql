--instrução  2 3 4 5 

CREATE TABLE Produtos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Categoria VARCHAR(255),
    Preço DECIMAL(10, 2),
    QuantidadeEmEstoque INT,
    Fornecedor VARCHAR(255),
    DataDeValidade DATE,
    Peso DECIMAL(10, 2),
    Descricao TEXT
);

INSERT INTO Produtos (Nome, Categoria, Preço, QuantidadeEmEstoque, Fornecedor, DataDeValidade, Peso, Descricao) VALUES
('Arroz Branco', 'Alimentos', 15.50, 200, 'Fornecedor Alimentos SA', '2025-12-31', 5.00, 'Arroz branco tipo 1, pacote de 5kg'),
('Feijão Carioca', 'Alimentos', 8.99, 150, 'Fornecedor Alimentos SA', '2025-10-15', 1.00, 'Feijão carioca, pacote de 1kg'),
('Óleo de Soja', 'Alimentos', 7.45, 100, 'Óleos Brasil Ltda', '2023-11-30', 0.90, 'Óleo de soja refinado, 900ml'),
('Detergente Líquido', 'Limpeza', 2.50, 300, 'Limpeza e Cia', '2024-08-15', 0.50, 'Detergente líquido neutro, 500ml'),
('Sabão em Pó', 'Limpeza', 10.99, 120, 'Limpeza e Cia', '2024-09-01', 1.00, 'Sabão em pó para roupas, pacote de 1kg'),
('Shampoo', 'Higiene', 12.75, 80, 'Cuidados Pessoais Ltda', '2024-05-20', 0.45, 'Shampoo para cabelos normais, 450ml'),
('Condicionador', 'Higiene', 13.25, 75, 'Cuidados Pessoais Ltda', '2024-06-15', 0.45, 'Condicionador para cabelos normais, 450ml'),
('Pasta de Dente', 'Higiene', 6.99, 200, 'Cuidados Pessoais Ltda', '2024-07-30', 0.10, 'Pasta de dente com flúor, 90g'),
('Café em Pó', 'Alimentos', 18.50, 180, 'Cafés do Brasil', '2025-02-28', 0.50, 'Café em pó tradicional, pacote de 500g'),
('Achocolatado em Pó', 'Alimentos', 14.90, 140, 'Alimentos SA', '2025-04-20', 0.40, 'Achocolatado em pó, pacote de 400g');


--instrução 6
DELETE FROM Produtos WHERE ID = 4;
DELETE FROM Produtos WHERE ID = 7;

--instrução 7
ALTER TABLE Produtos ADD COLUMN SemEstoque VARCHAR(5);

UPDATE Produtos 
SET SemEstoque = 'falso'WHERE QuantidadeEmEstoque > 0;
UPDATE Produtos 
SET SemEstoque = 'verdadeiro' WHERE QuantidadeEmEstoque = 0;

--instrução 8
ALTER TABLE Produtos
ADD COLUMN SemEstoque VARCHAR(5);

UPDATE Produtos
SET SemEstoque = 'verdadeiro' WHERE ID <> 2;
UPDATE Produtos
SET SemEstoque = 'falso' WHERE ID = 2;


--instrução 9 
SELECT 
FROM Produtos
ORDER BY SemEstoque ASC, ID ASC
LIMIT 5;
