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

module.exports = router;
