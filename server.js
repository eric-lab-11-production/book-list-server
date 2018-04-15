
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

const allowed_url = [
  'http://localhost:8080',
  'https://eric-lab-11-production.github.io/book-list-client/',
];

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors());
// app.use(cors({
//   origin: function(origin, callback){
//     if(!origin) return callback(null,true);
//     if(allowed_url.indexOf(origin)===-1) return callback('No', false);
//     return callback(null,true);
//   },
//   credentials: true,
// }));

// app.use((req,res,next) => {
//   res.setHeader('Access-Control-Allow-Origin', '*');
//   res.setHeader('Access-Control-Allow-Methods', 'GET');
//   res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');
//   res.setHeader('Access-Control-Allow-Credentials',true);
//   next();
// });

//app.use(express.static('../book-list-client'));
app.get('/', (req,res) => {
  res.sendFile('index.html', {root: '../book-list-client'});
});
//app.get('/', (req,res) => res.send('I AM ALIVE'));

app.get('/books', (req,res) => {
  client.query(`
    SELECT * 
    FROM books;
    `).then(result => res.send(result.rows))
    .catch(console.error);
});

app.get('*',(req,res) => res.redirect(CLIENT_URL));
app.listen(PORT, () => console.log(`Active on port ${PORT}`));