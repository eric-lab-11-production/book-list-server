
'use strict';

const express = require('express');
const pg = require('pg');
const PORT = process.env.PORT;
const app = express();

const DATABASE_URL = process.env.DATABASE_URL;
const client = new pg.Client(DATABASE_URL);
client.connect();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
//app.use(express.static, ('../book-list-client'));

app.get('/test', (req,res) => {
  client.query(`
        SELECT author FROM books;
        `).then(result => res.send(result.rows));
});

app.listen(PORT, () => console.log(`Active on port ${PORT}`));