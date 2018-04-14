
'use strict';

const express = require('express');
//const pg = require('pg');
const PORT = process.env.PORT;
const app = express();

// const db_URL = process.env.db_URL;
// const client = new pg.Client(db_URL);

app.use(express.json());
app.use(express.urlencoded({extended: true}));
//app.use(express.static, ('./book-list-client'));

app.get('/test', (req,res) => res.send('hello world'));
app.listen(PORT, () => console.log(`Active on port ${PORT}`));