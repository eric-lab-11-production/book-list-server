
'use strict';

const express = require('express');
const pg = require('pg');
const cors = require('cors');
const PORT = process.env.PORT;
const app = express();

const allowed_url = [
  'http://localhost:3000/',
  'https://eric-lab-11-production.github.io/book-list-client/',
];

const DATABASE_URL = process.env.DATABASE_URL;
const CLIENT_URL = process.env.CLIENT_URL;
const client = new pg.Client(DATABASE_URL);
client.connect();
client.on('error', err => console.log(err));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors({
  origin: function(origin, callback){
    if(!origin) return callback(null,true);
    if(allowed_url.indexOf(origin)===-1) return callback('No', false);
    return callback(null,true);
  }
}));
// app.use(express.static(CLIENT_URL));

app.get('/books', (req,res) => {
  client.query(`
    SELECT * 
    FROM books;
    `).then(result => res.send(result.rows))
    .catch(console.error);
});

app.get('*',(req,res) => res.redirect(CLIENT_URL));
app.listen(PORT, () => console.log(`Active on port ${PORT}`));