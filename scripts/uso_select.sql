select * from cursos;

select * from cursos
order by nome;

select * from cursos
order by nome desc;

select nome, carga, ano from cursos
order by nome;

select ano, nome, carga from cursos
order by ano, nome;

select * from cursos
where ano='2016'
order by nome;

select nome, descricao, ano from cursos
where ano<=2015
order by ano, nome;

select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

select nome, descricao, ano from cursos
where ano in (2014, 2016)
order by ano;

select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 35;

select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 35;

select * from cursos
where nome like 'P%';

select * from cursos
where nome like '%a';

select * from cursos
where nome like '%a%';

select * from cursos
where nome not like '%a%';

select * from cursos
where nome like 'ph%p';

select * from cursos
where nome like 'ph%p_';

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select count(*) from cursos;

select count(*) from cursos
where carga > 40;

select max(carga) from cursos;

select max(totaulas) from cursos
where ano='2016';

select min(totaulas) from cursos;

select min(totaulas) from cursos
where ano='2016';

select sum(totaulas) from cursos
where ano='2016';

select avg(totaulas) from cursos
where ano='2016';

select nome from gafanhotos
where sexo = 'F';

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

select nome, profissao from gafanhotos
where profissao = 'Programador';

select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%_Silva%' and nacionalidade != 'Brasil' and peso < 100;

select max(altura) from gafanhotos
where sexo='M' and nacionalidade = 'Brasil';

select avg(peso) from gafanhotos
where sexo='M';

select min(peso) from gafanhotos
where sexo='F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

select count(*) from gafanhotos
where sexo='F' and altura > 1.90;

select carga, count(nome) from cursos
group by carga;

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

select nome, profissao from gafanhotos
where profissao = 'Programador';

select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);

select profissao, count(*) from gafanhotos
where sexo = 'M'
group by profissao;

select sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3;

select altura, count(*) from gafanhotos
where peso > 100 and altura > (select avg(altura) from gafanhotos)
group by altura;
