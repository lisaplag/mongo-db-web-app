var express = require('express');
var router = express.Router();

/* GET register page. */
router.get('/register', function(req, res) {
  res.render('register', { title: 'Express' });
  console.log('A User connected to the register page.');
});

/* GET login page. */
router.get('/login', function(req, res) {
  res.render('login', { title: 'Express' });
  console.log('A User connected to the login page.');
});

/* GET New User page. */
router.get('/newuser', function(req, res) {
  res.render('newuser', { title: 'Add New User' });
});

/* GET home page of a specific user. */
router.get('/dashboard', function(req, res) {
  res.render('dashboard', { title: 'Express' });
  console.log('A User connected to his personal dashboard.');
});

module.exports = router;
