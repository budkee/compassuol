-- Retorne os 3 nomes mais utilizados em cada década, a partir de 1950, até hoje (2020).

-- Extrair o ano da coluna 'ano' e calcular a década
WITH Decades AS (
    SELECT 
        nome,
        sexo,
        total,
        ano,
        FLOOR(ano / 10) * 10 AS decada
    FROM nomes
    WHERE ano >= 1950
)

-- Classificar e atribuir uma posição para cada nome dentro de cada década
, RankedNames AS (
    SELECT 
        decada,
        nome,
        SUM(total) AS total_decada,
        ROW_NUMBER() OVER (PARTITION BY decada ORDER BY SUM(total) DESC) AS posicao
    FROM Decades
    GROUP BY decada, nome
)

-- Selecionar os 3 maiores de cada década
SELECT 
    nome,
    decada,
    total_decada,
    posicao
FROM RankedNames
WHERE posicao <= 3
ORDER BY decada ASC, posicao ASC;
