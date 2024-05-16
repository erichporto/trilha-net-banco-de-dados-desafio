-- 1
select Nome, Ano from Filmes;

-- 2
select Nome, Ano from Filmes order by Ano;

-- 3
select Nome, Ano, Duracao from Filmes where Nome = 'De volta para o Futuro';

-- 4
select * from Filmes where Ano = 1997;

-- 5
select * from Filmes where Ano > 2000;

-- 6
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao;

-- 7
select Ano, count(*) as Quantidade from Filmes group by Ano order by Duracao;

-- 8 
select PrimeiroNome, UltimoNome from Atores where Genero = 'M';

-- 9
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome;

-- 10
select f.NomeFilme, g.Genero from Filmes as f 
inner join FilmesGenero as fg on (f.Id = fg.IdFilme)
inner join Generos as g on (fg.IdGenero = g.Id);

-- 11
select f.NomeFilme, g.Genero from Filmes as f 
inner join FilmesGenero as fg on (f.Id = fg.IdFilme)
inner join Generos as g on (fg.IdGenero = g.Id)
where g.Genero = 'Mistério';

-- 12
select f.NomeFilme, a.PrimeiroNome, a.UltimoNome, e.Papel from Atores as a 
inner join ElencoFilme as e on (a.Id = e.IdAtor)
inner join Filmes as f on (e.IdFilme = f.Id);
