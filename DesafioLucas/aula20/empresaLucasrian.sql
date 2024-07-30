CREATE TABLE departamentos(
    departamento_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
    );
     CREATE TABLE empregados(
         empregado_id INT AUTO_INCREMENT PRIMARY KEY,
         nome VARCHAR(50) NOT NULL,
         salario DECIMAL(10,2) NOT NULL,
         departamento_id INT,
         FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
         ); 


INSERT INTO departamentos(nome) VALUES
('Vendas')
('TI')
('Markting')
('Recursos Humanos')

INSERT INTO empregados(nome, salario,departamento_id) VALUES
('Robson', 5000, 1)
('Cleusa', 3000, 1)
('Cleitom', 5000, 2)
('Dewid', 6000, 3)
('Vanesca', 7000, 3)
('Vanderleya', 5000, 4)

SELECT nome, salario
FROM empregados 
WHERE salario > (SELECT AVG(salario)FROM empregados);

ALTER TABLE departamentos
ADD localizacao VARCHAR(80)

UPDATE departamentos 
SET localizacao = 'São Paulo' 
WHERE nome = 'Vendas';

UPDATE departamentos 
SET localizacao = 'Rio de Janeiro' 
WHERE nome = 'Marketing';

UPDATE departamentos
SET localizacao = 'São Paulo' 
WHERE nome = 'TI';

UPDATE departamentos 
SET localizacao = 'Belo Horizonte' 
WHERE nome = 'Recursos Humanos';

SELECT nome
FROM empregados
WHERE departamento_id IN (SELECT departamento_id FROM departamentos WHERE localizacao = 'São Paulo');


 Exemplo com ANY

Exemplo: Salário Maior que Qualquer Salário no Departamento de TI

SELECT nome, salario
FROM empregados
WHERE salario > ANY (SELECT salario FROM empregados WHERE departamento_id = (SELECT departamento_id FROM departamentos WHERE nome = 'TI'));

SELECT nome, salario
FROM empregados
WHERE salario > ALL (SELECT salario FROM empregados WHERE departamento_id = (SELECT id FROM departamentos WHERE nome = 'TI'));

ALTER TABLE empregados ADD titulo VARCHAR(50);