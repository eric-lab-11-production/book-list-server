
'use strict';

const express = require('express');
const pg = require('pg');
const cors = require('cors');
const PORT = process.env.PORT;
const app = express();

const DATABASE_URL = process.env.DATABASE_URL;
const CLIENT_URL = process.env.CLIENT_URL;
const client = new pg.Client(DATABASE_URL);
client.connect();
client.on('error', err => console.log(err));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());
//app.use(express.static('../book-list-client));

app.get('/test', (req,res) => {
  client.query(`
    SELECT author 
    FROM books;
    `).then(result => res.send(result.rows))
    .catch(console.error);
});

app.get('*',(req,res) => res.redirect(CLIENT_URL));
app.listen(PORT, () => console.log(`Active on port ${PORT}`));