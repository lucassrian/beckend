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
('Robinho', 9000, 3)
('Valdirene', 4000, 4)
('rodnei', 3500, 2)

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

UPDATE empregados SET titulo = 'Gerente' WHERE nome = 'Robinho';
UPDATE empregados SET titulo = 'Assistente' WHERE nome = 'rodnei';
UPDATE empregados SET titulo = 'Analista' WHERE nome = 'Dewid';
UPDATE empregados SET titulo = 'Desenvolvedor' WHERE nome = 'Vanesca';
UPDATE empregados SET titulo = 'Engenheiro' WHERE nome = 'Robson';
UPDATE empregados SET titulo = 'Assistente' WHERE nome = 'Vanderleya';
UPDATE empregados SET titulo = 'Analista' WHERE nome = 'Valdirene';
UPDATE empregados SET titulo = 'Estagiário' WHERE nome = 'Cleusa';
UPDATE empregados SET titulo = 'Analista' WHERE nome = 'Cleitom';


INSERT INTO cargos (titulo, departamento_id, salario) VALUES
('Gerente', 1, 8000.00),
('Assistente', 1, 4000.00),
('Analista', 2, 4500.00),
('Desenvolvedor', 3, 6000.00),
('Engenheiro', 3, 7000.00),
('Assistente', 4, 3500.00),
('Analista', 2, 4600.00),
('Estagiário', 1, 2000.00);

SELECT departamentos.nome, AVG(cargos.salario)
FROM empregados
JOIN cargos ON empregados.departamento_id = cargos.departamento_id
JOIN departamentos ON empregados.departamento_id = departamentos.departamento_id
GROUP BY departamentos.nome
HAVING AVG(cargos.salario) > 5000.00;

--1
SELECT departamentos.nome, sum(cargos.salario)
FROM empregados
JOIN cargos ON empregados.departamento_id = cargos.departamento_id
JOIN departamentos ON empregados.departamento_id = departamentos.departamento_id
GROUP BY departamentos.nome
HAVING sum(cargos.salario) > 12000.00;

--2
SELECT cargos.titulo, count(empregados.titulo)
FROM empregados
JOIN cargos ON empregados.departamento_id = cargos.departamento_id
JOIN departamentos ON empregados.departamento_id = departamentos.departamento_id
GROUP BY departamentos.nome
HAVING count(empregados.titulo) >= 2;

--3
SELECT departamentos.nome, AVG(cargos.salario)
FROM empregados
JOIN cargos ON empregados.departamento_id = cargos.departamento_id
JOIN departamentos ON empregados.departamento_id = departamentos.departamento_id
GROUP BY departamentos.nome
HAVING AVG(cargos.salario) > 4500.00;

--4
SELECT departamentos.nome, de max(cargos.salario)
FROM empregados
JOIN cargos ON empregados.departamento_id = cargos.departamento_id
JOIN departamentos ON empregados.departamento_id = departamentos.departamento_id
GROUP BY departamentos.nome
HAVING max(cargos.salario) > 6000.00;

--5
SELECT departamentos.nome, min(cargos.salario)
FROM empregados
JOIN cargos ON empregados.departamento_id = cargos.departamento_id
JOIN departamentos ON empregados.departamento_id = departamentos.departamento_id
GROUP BY departamentos.nome
HAVING min(cargos.salario) > 2500.00;