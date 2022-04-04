import express from "express";

const app = express();
app.use(express.json());    //Ao utilizar o push ou post para interpretar oq foi recebido

const sensores=[
    {id: 1, "titulo": "Sensor de temperatura"},
    {id: 2, "titulo": "Sensor de pressão"},
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

app.post('/sensores', (req, res) => {
    sensores.push(req.body);
    res.status(201).send('O sensor foi cadastrado com sucesso')
})

app.put('/sensdores/:id', (req, res) => {
    let index = buscarSensores(req.params.id);
    sensores[index].titulo = req.body.titulo;
    res.json(sensores);
  })

app.delete('/sensdores/:id', (req, res) => {
    let index = buscarSensores(req.params.id);
    sensores.splice(index, 1);
    res.send(`O sensor ${id} foi removido com sucesso`);
})

function buscarSensores(id) {
    return sensores.findIndex(sensor => sensor.id == id)
  }

  export default app;