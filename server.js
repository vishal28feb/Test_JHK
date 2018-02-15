'use strict';

const express = require('express');

// Constants
const PORT = 8080;

// App
const app = express();
app.get('/', function (req, res) {
  res.send('Hello vishal, this is your 1st node Application to deploy on K* cluster using HELM !!\n');
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);
