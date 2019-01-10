var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res) {
    res.render('index', { title: 'Home' });
    console.log('A User connected to the home page.');
});


/* GET contact page. */
router.get('/contact', function (req, res) {
    res.render('contact', { title: 'Contact' });
    console.log('A User connected to the contact page.');
});


/* GET help page. */
router.get('/help', function(req, res) {
    res.render('help', { title: 'Help' });
    console.log('A User connected to the help page.');
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
    res.render('register', { title: 'Register' });
    console.log('A User connected to the register page.');
});

/* POST register page. */
router.post('/register', function (req, res) {

    // Set our internal DB variable
    var db = req.db;

    // Get our form values. These rely on the "name" attributes
    var firstname = req.body.firstname;
    var lastname = req.body.lastname;
    var username = req.body.username;
    var email = req.body.email;
    var password = req.body.password

    // Set our collection
    var collection = db.get('usercollection');

    // Submit to the DB
    collection.insert({
        "firstname": firstname,
        "lastname": lastname,
        "username": username,
        "email": email,
        "password": password
    }, function (err, doc) {
        if (err) {
            // If it failed, return error
            res.send("There was a problem adding the information to the database.");
        }
        else {
            // And forward to success page
            res.redirect("userlist");
        }
    });
});

/* GET login page. */
router.get('/login', function (req, res) {
    res.render('login', { title: 'Login' });
    console.log('A User connected to the login page.');
});


/* GET login page. */
router.post('/login', function (req, res) {

    // Set our internal DB variable
    var db = req.db;

    // Get our form values. These rely on the "name" attributes
    //var firstname = req.body.firstname;
    //var lastname = req.body.lastname;
    var username = req.body.username;
    //var email = req.body.email;
    var inputpassword = req.body.password

    // Set our collection
    var collection = db.get('usercollection');

    // Submit to the DB
    collection.findOne({ "username": username, "password": inputpassword }).then(function (err, password) {
        if (err) {
            return res.render("dashboard", {"name" : err});
        }
        else {
            return res.redirect("login#failed")
        }
    })
});
  
  /* GET home page of a specific user. */
  router.get('/dashboard', function(req, res) {
    res.render('dashboard', { title: 'Dashboard' });
    console.log('A User connected to his personal dashboard.');
});

/* GET logout page. */
router.get('/logout', function (req, res) {
    res.render('logout', { title: 'Logged Out' });
    console.log('A User logged out.');
});

module.exports = router;
