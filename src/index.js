// src/index.js

const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('Hello World, 2024 here I am!');
});

app.listen(3000, () => {
  console.log('App listening on port 3000!');
});