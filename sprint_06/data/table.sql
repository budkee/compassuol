-- Criando a tabela nomes

create table nomes (
    nome VARCHAR(30),
    sexo VARCHAR(1),
    total INT UNSIGNED NOT NULL,
    ano INT UNSIGNED NOT NULL
);

-- Inserindo os dados à tabela

LOAD DATA INFILE 'compass/compassuol/sprint_06/data/nomes.csv'
INTO TABLE nomes
FIELDS TERMINATED BY ',' ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(nome, sexo, total, ano);
