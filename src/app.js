import express from "express";

const app = express();


const sensores=[
    {id: 1, "titulo": "Sensor de temperatura"},
    {id: 2, "titulo": "Sensor de pressão"}
]

app.get('/', (req, res) => {
    res.status(200).send('cadastros de sensores');
})

app.get('/sensores', (req, res) => {
    res.status(200).json(sensores)
})

app.get('/sensores/:id', (req, res) => {
    let index = buscarSensores(req.params.id);
    res.json(sensores[index]);
})

function buscarSensores(id) {
    return sensores.findIndex(livro => livro.id == id)
  }

  export default app;