//Requires
var express = require('express');
var consign = require('consign');
var bodyParser = require('body-parser');
var expressValidator = require('express-validator');
//Initializing requirements
var app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(expressValidator());

//Routes autoload
consign().include('app/routes').then('app/models').then('config/db.js').then('app/controllers').into(app);

app.set('view engine', 'ejs');
app.set('views', './app/views');

//App exports
module.exports = app;