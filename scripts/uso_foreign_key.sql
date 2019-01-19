use cadastro;

describe gafanhotos;

alter table gafanhotos
add column cursopreferido int;

describe gafanhotos;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos (idcurso) ;

describe gafanhotos;

update gafanhotos set cursopreferido = '6' where id = '1'; 

select * from gafanhotos;

delete from cursos
where idcurso = '6'; 

delete from cursos
where idcurso = '28'; 

select * from cursos;

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos inner join cursos 
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c 
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g left outer join cursos as c 
on c.idcurso = g.cursopreferido;

select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g right outer join cursos as c 
on c.idcurso = g.cursopreferido;

use cadastro;

CREATE TABLE gafanhoto_assiste_curso (
    id int NOT NULL AUTO_INCREMENT,
    data date,
    idgafanhoto int,
    idcurso int,
    PRIMARY KEY (id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos (id),
    FOREIGN KEY (idcurso) REFERENCES cursos (idcurso)
)  DEFAULT CHARSET=UTF8;

INSERT INTO gafanhoto_assiste_curso
(id, data, idgafanhoto, idcurso) VALUES
(DEFAULT, '2014-03-01','1','2');

select * from gafanhoto_assiste_curso;

SELECT g.nome, c.nome FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
JOIN cursos c
ON a.idcurso = c.idcurso
order by g.nome;

