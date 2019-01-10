var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res) {
    res.render('index', { title: 'Express' });
    console.log('A User connected to the home page.');
});

/* GET Userlist page. */
router.get('/userlist', function(req, res) {
    var db = req.db;
    var collection = db.get('usercollection');
    collection.find({},{},function(e,docs){
        res.render('userlist', {
            "userlist" : docs
        });
    });
});


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
  
  /* GET home page of a specific user. */
  router.get('/dashboard', function(req, res) {
    res.render('dashboard', { title: 'Express' });
    console.log('A User connected to his personal dashboard.');
  });

module.exports = router;
