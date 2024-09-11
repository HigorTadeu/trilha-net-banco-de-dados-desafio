-- Desafio 01

SELECT f.Nome, f.Ano
FROM dbo.Filmes f;

-- Desafio 02

SELECT f.Nome, f.Ano, f.Duracao
FROM dbo.Filmes f
ORDER BY 2 ASC;

-- Desafio 03

SELECT f.Nome, f.Ano, f.Duracao
FROM dbo.Filmes f
WHERE f.Nome = 'De Volta para o Futuro';

-- Desafio 04

SELECT f.Nome, f.Ano, f.Duracao
FROM dbo.Filmes f
WHERE f.Ano = 1997;

-- Desafio 05

SELECT f.Nome, f.Ano, f.Duracao
FROM dbo.Filmes f
WHERE f.Ano > 2000;

-- Desafio 06

SELECT f.Nome, f.Ano, f.Duracao
FROM dbo.Filmes f
WHERE f.Duracao > 100 and f.Duracao < 150
ORDER BY 3 ASC;

-- Desafio 07

select f.Ano, count(ano) as Quantidade
from dbo.Filmes f
group by ano
order by quantidade desc;

-- Desafio 08

select a.Id, a.PrimeiroNome, a.UltimoNome, a.Genero
from dbo.Atores a
where a.Genero = 'M';

-- Desafio 09

select a.Id, a.PrimeiroNome, a.UltimoNome, a.Genero
from dbo.Atores a
where a.Genero = 'F'
order by 2;

-- Desafio 10

select f.Nome, g.Genero
from dbo.FilmesGenero fg
inner join dbo.Filmes f on f.Id = fg.IdFilme 
inner join dbo.Generos g on g.Id = fg.IdGenero

-- Desafio 11

select f.Nome, g.Genero
from dbo.FilmesGenero fg
inner join dbo.Filmes f on f.Id = fg.IdFilme 
inner join dbo.Generos g on g.Id = fg.IdGenero
where g.Genero = 'Mistério';

-- Desafio 12

select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
from dbo.Filmes f
inner join dbo.ElencoFilme ef on ef.IdFilme = f.id
inner join dbo.Atores a on a.Id = ef.IdAtor 