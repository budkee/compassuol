## Incluindo os dados

# Criando o dicionário de atores
chaves = ['nome', 'fat_bruto', 'num_filmes', 'media_fat_por_filme', 'filme_maior_fat', 'fat_bruto_filme']
qnt = 51

atores = dict.fromkeys(chaves)


# Puxando as colunas
### Actor
nome_atores = [

    "Harrison Ford",
    "Samuel L. Jackson",
    "Morgan Freeman",
    "Tom Hanks",
    "Robert Downey, Jr.",
    "Eddie Murphy",
    "Tom Cruise",
    "Johnny Depp",
    "Michael Caine",
    "Scarlett Johansson",
    "Gary Oldman",
    "Robin Williams",
    "Bruce Willis",
    "Stellan Skarsgard",
    "Anthony Daniels",
    "Ian McKellen",
    "Will Smith",
    "Stanley Tucci",
    "Matt Damon",
    "Robert DeNiro",
    "Cameron Diaz",
    "Liam Neeson",
    "Andy Serkis",
    "Don Cheadle",
    "Ben Stiller",
    "Helena Bonham Carter",
    "Orlando Bloom",
    "Woody Harrelson",
    "Cate Blanchett",
    "Julia Roberts",
    "Elizabeth Banks",
    "Ralph Fiennes",
    "Emma Watson",
    "Tommy Lee Jones",
    "Brad Pitt",
    "Adam Sandler",
    "Daniel Radcliffe",
    "Jonah Hill",
    "Owen Wilson",
    "Idris Elba",
    "Bradley Cooper",
    "Mark Wahlberg",
    "Jim Carrey",
    "Dustin Hoffman",
    "Leonardo DiCaprio",
    "Jeremy Renner",
    "Philip Seymour Hoffman",
    "Sandra Bullock",
    "Chris Evans",
    "Anne Hathaway"

]
### Total Gross
fat_bruto = [

    4871.70,
    4772.80,
    4468.30,
    4340.80,
    3947.30,
    3810.40,
    3587.20,
    3368.60,
    3351.50,
    3341.20,
    3294.00,
    3279.30,
    3189.40,
    3175.00,
    3162.90,
    3150.40,
    3149.10,
    3123.90,
    3107.30,
    3081.30,
    3031.70,
    2942.70,
    2890.60,
    2885.40,
    2827.00,
    2822.00,
    2815.80,
    2815.80,
    2802.60,
    2735.30,
    2726.30,
    2715.30,
    2681.90,
    2681.30,
    2680.90,
    2661.00,
    2634.40,
    2605.10,
    2602.30,
    2580.60,
    2557.70,
    2549.80,
    2545.20,
    2522.10,
    2518.30,
    2500.30,
    2463.70,
    2462.60,
    2457.80,
    2416.50

]
### Number of Movies
num_filmes = [

    41,
    69,
    61,
    44,
    53,
    38,
    36,
    45,
    58,
    37,
    38,
    49,
    60,
    43,
    7,
    31,
    24,
    50,
    39,
    79,
    34,
    63,
    23,
    34,
    37,
    36,
    17,
    50,
    39,
    42,
    35,
    36,
    17,
    46,
    40,
    32,
    17,
    29,
    39,
    26,
    25,
    36,
    27,
    43,
    25,
    21,
    40,
    35,
    23,
    25

]
### Average per Movie
media_fat_por_filme = [

    118.8,
    69.2,
    73.3,
    98.7,
    74.5,
    100.3,
    99.6,
    74.9,
    57.8,
    90.3,
    86.7,
    66.9,
    53.2,
    73.8,
    451.8,
    101.6,
    131.2,
    62.5,
    79.7,
    39,
    89.2,
    46.7,
    125.7,
    84.9,
    76.4,
    78.4,
    165.6,
    56.3,
    71.9,
    65.1,
    77.9,
    75.4,
    157.8,
    58.3,
    67,
    83.2,
    155,
    89.8,
    66.7,
    99.3,
    102.3,
    70.8,
    94.3,
    58.7,
    100.7,
    119.1,
    61.6,
    70.4,
    106.9,
    96.7

]
### #1 Movie
filme_maior_fat = [

    "Star Wars: The Force Awakens",
    "The Avengers",
    "The Dark Knight",
    "Toy Story 3",
    "The Avengers",
    "Shrek 2",
    "War of the Worlds",
    "Dead Man's Chest",
    "The Dark Knight",
    "The Avengers",
    "The Dark Knight",
    "Night at the Museum",
    "Sixth Sense",
    "The Avengers",
    "Star Wars: The Force Awakens",
    "Return of the King",
    "Independence Day",
    "Catching Fire",
    "The Martian",
    "Meet the Fockers",
    "Shrek 2",
    "The Phantom Menace",
    "Star Wars: The Force Awakens",
    "Avengers: Age of Ultron",
    "Meet the Fockers",
    "Harry Potter / Deathly Hallows (P2)",
    "Dead Man's Chest",
    "Catching Fire",
    "Return of the King",
    "Ocean's Eleven",
    "Catching Fire",
    "Harry Potter / Deathly Hallows (P2)",
    "Harry Potter / Deathly Hallows (P2)",
    "Men in Black",
    "World War Z",
    "Hotel Transylvania 2",
    "Harry Potter / Deathly Hallows (P2)",
    "The LEGO Movie",
    "Night at the Museum",
    "Avengers: Age of Ultron",
    "American Sniper",
    "Transformers 4",
    "The Grinch",
    "Meet the Fockers",
    "Titanic",
    "The Avengers",
    "Catching Fire",
    "Minions",
    "The Avengers",
    "The Dark Knight Rises",

]
### Gross
fat_bruto_filme = [

    936.7,
    623.4,
    534.9,
    415,
    623.4,
    441.2,
    234.3,
    423.3,
    534.9,
    623.4,
    534.9,
    250.9,
    293.5,
    623.4,
    936.7,
    377.8,
    306.2,
    424.7,
    228.4,
    279.3,
    441.2,
    474.5,
    936.7,
    459,
    279.3,
    381,
    423.3,
    424.7,
    377.8,
    183.4,
    424.7,
    381,
    381,
    250.7,
    202.4,
    169.7,
    381,
    257.8,
    250.9,
    459,
    350.1,
    245.4,
    260,
    279.3,
    658.7,
    623.4,
    424.7,
    336,
    623.4,
    448.1

]

# Preenchendo o dicionário de atores
atores['nome'] = nome_atores
atores['fat_bruto'] = fat_bruto
atores['num_filmes'] = num_filmes
atores['media_fat_por_filme'] = media_fat_por_filme
atores['filme_maior_fat'] = filme_maior_fat
atores['fat_bruto_filme'] = fat_bruto_filme

# -------------------------------------------
## Etapa 01: Apresente o ator/atriz com o maior número de filmes e a respectiva quantidade.


## Maior número de filmes
maior_num_filmes = max(atores['num_filmes'])

## Nome do ator/atriz correspondente
indice_01 = atores['num_filmes'].index(maior_num_filmes)
nome_01 = atores['nome'][indice_01]

# Resultado 01
etapa_01 = [maior_num_filmes, nome_01]
print(etapa_01)

# -------------------------------------------
## Etapa 02: Apresente a média de faturamento bruto por ator.

## Média de faturamento bruto por ator
media_fat_bruto_ator = []

### Med[i] = autores['fat_bruto']/autores['num_filmes']

# -------------------------------------------
## Etapa 03: Apresente o ator/atriz com a maior média de faturamento por filme.

## Separar os atores por filmes
chave_filmes = ["nome_filme", "atores_participantes", "media_fat_filme"]
filmes = dict.fromkeys(chave_filmes)
print(filmes)

### 

