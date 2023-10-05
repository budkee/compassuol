-- Retorne os 3 nomes mais utilizados em cada década, a partir de 1950, até hoje (2020).

SELECT 
    nome,
    count(total) as total_nomes,
    posicao
FROM (
    SELECT
        nome,
        total_nomes,
        rank() over (order by total_nomes) as posicao
    FROM nomes
) dados
WHERE (
    CASE
        WHEN ano BETWEEN 1950 AND 1959 THEN '1950'
        WHEN ano BETWEEN 1960 AND 1969 THEN '1960'
        WHEN ano BETWEEN 1970 AND 1979 THEN '1970'
        WHEN ano BETWEEN 1980 AND 1989 THEN '1980'
        WHEN ano BETWEEN 1990 AND 1999 THEN '1990'
        WHEN ano BETWEEN 2000 AND 2010 THEN '2000'
        WHEN ano BETWEEN 2010 AND 2019 THEN '2010'
    END as decada
)

SELECT nome, , Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);






-- Anotações
CASE
    WHEN ano BETWEEN 1950 AND 1959 THEN '1950'
    WHEN ano BETWEEN 1960 AND 1969 THEN '1960'
    WHEN ano BETWEEN 1970 AND 1979 THEN '1970'
    WHEN ano BETWEEN 1980 AND 1989 THEN '1980'
    WHEN ano BETWEEN 1990 AND 1999 THEN '1990'
    WHEN ano BETWEEN 2000 AND 2010 THEN '2000'
    WHEN ano BETWEEN 2010 AND 2019 THEN '2010'
END) as decada