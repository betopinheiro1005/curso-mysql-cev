CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE cadastro;

CREATE TABLE pessoas (
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil'
)  DEFAULT CHARSET=UTF8;

DROP TABLE pessoas;

CREATE TABLE pessoas (
    id int NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
) DEFAULT CHARSET=UTF8;

insert into pessoas
(id, nome, nascimento, sexo, peso,altura, nacionalidade)
values
(default,'Godofredo','1984-01-02','M','78.5','1.83','Brasil');

select * from pessoas;

insert into pessoas
(id, nome, nascimento, sexo, peso,altura, nacionalidade)
values
(default,'Ana','1975-12-22','F','52.3','1.45','EUA'),
(default,'Pedro','2000-07-15','M','52.3','1.45','Brasil'),
(default,'Maria','1999-05-30','F','75.9','1.70','Portugal');

select * from pessoas;

alter table pessoas
add column profissao varchar(10);

describe pessoas;

alter table pessoas
drop column profissao;

describe pessoas;

alter table pessoas
add column profissao varchar(10) after nome;

describe pessoas;

alter table pessoas
add column codigo int first;

describe pessoas;

alter table pessoas
modify column profissao varchar(20);

describe pessoas;

alter table pessoas
change column profissao prof varchar(20);

describe pessoas;

alter table pessoas
rename to gafanhotos;

describe gafanhotos;

CREATE TABLE IF NOT EXISTS cursos (
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga int UNSIGNED,
    totaulas int,
    ano year DEFAULT '2016'
)  DEFAULT CHARSET=UTF8;

describe cursos;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso);

describe cursos;

use cadastro;

insert into cursos values
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer kibe','40','30','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','2','2018');

select * from cursos;

update cursos
set nome='HTML 5'
where idcurso='1';

select * from cursos;

update cursos
set nome='PHP', ano='2015'
where idcurso='4';

select * from cursos;

update cursos
set nome='Java', ano='2015', carga='40'
where idcurso='5'
limit 1;

select * from cursos;

update cursos
set ano='2050', carga='800'
where ano='2018';

select * from cursos;

update cursos
set  ano='2050'
where ano='2018';

select * from cursos;

update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

select * from cursos;

delete from cursos
where idcurso='8';

select * from cursos;

delete from cursos
where ano='2050'
limit 2;

select * from cursos;


