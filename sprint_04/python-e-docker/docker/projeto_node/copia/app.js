// Chamando o framework
const express = require('express');
// Inicializando o express
const app = express();
// Definindo a porta para a aplicação
const port = 3000;


// Rota GET
app.get('/', (req, res) => {
    res.send('Tamo na rede!');
});

// Indicando a porta para escuta
app.listen(port, () => {
    console.log(`Executando na porta ${port}`);
});
