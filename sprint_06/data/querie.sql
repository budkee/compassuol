-- Retorne os 3 nomes mais utilizados em cada década, a partir de 1950, até hoje (2020).

select nome from bancotuck.nomes where ano = 1999 order by total limit 15;