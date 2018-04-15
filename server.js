'use strict';

const express = require('express');
const pg = require('pg');
const cors = require('cors');
const app = express();
const PORT = process.env.PORT;
const CLIENT_URL = process.env.CLIENT_URL;
const client = new pg.Client(process.env.DATABASE_URL);

client.connect();
client.on('error', err => console.log(err));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());

app.use((req,res,next) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Headers', 'Origin,X-Requested-With,content-type');
  next();
});

app.get('/books', (req,res) => {
  client.query(`
    SELECT * 
    FROM books;
    `).then(result => res.send(result.rows))
    .catch(console.error);
});

app.get('*',(req,res) => res.redirect(CLIENT_URL));
app.listen(PORT, () => console.log(`Active on port ${PORT}`));