const express = require('express');
var app = express();

app.get('/', function (req, res) {
    res.send('Hello, World!');
});

app.get('/save', function (req, res) {
    res.send('Save, World');
});

app.listen(3000);

app.get('/saved', function (req, res) {
    res.status(404);
    res.send("Page not found")
});
