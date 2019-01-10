/**
 * JavaScript file
 * This is your main starting point of your server.
 * As you recall from the lectures, this is the backend (Node.js)
 * This code will no be visible to the user.
 * @type {*|createApplication}
 */

 //Imports
const express = require('express');
const path = require('path');
const routes = require('./routes');

var createError = require('http-errors');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var mongo = require('mongodb');
var monk = require('monk');
var db = monk('localhost:27017/group-02');

// Initialize app
const app = express();

//Load view engine
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
/**
 * Middleware, This is where you should be adding your HTML, CSS, JavaScript files
 * Hence the name "public", public for the world to see.
 */
app.use(express.static(path.join(__dirname, '/public')));

//  Connect all our routes to our application
//app.use('/', routes);

app.get('/', (req, res) => {
    res.render('index');
});

/**
 * Creating your local server. To run your local server: open a terminal or cmd
 * and go to the directory where this app.js is located and type "npm start" afterwards press enter.
 * If you open up any browser and type localhost:3001 or 127.0.0.1:3001
 * You'll be greeted with a "Hello World!"
 */
app.listen('3001', '127.0.0.1', () => {
    console.log('Server started on port 3001...');
});