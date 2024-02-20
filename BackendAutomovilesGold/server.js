const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const logger = require('morgan');
const cors = require('cors');

// IMPORTAR RUTAS
const vehiclesRoutes = require('./routes/vehiclesRoutes');

const port = process.env.PORT || 3000;

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({
    extended: true
}));
app.use(cors());

app.disable('x-power-by');

app.set(port);

// LLAMAR A LAS RUTAS
vehiclesRoutes(app);

server.listen(3000, '192.168.0.15' || 'localhost', function() {
    console.log('Aplicacion de NodeJS ' + process.pid + ' iniciada...');
});

app.get('/', (req, res) => {
    res.send('Ruta raiz del back');
});

// ERROR HANDLER
app.use((err, req, res, next) => {
    console.log(err);
    res.status(err.status || 500).send(err.stack);
});