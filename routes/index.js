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

/* POST register page. */
router.post('/registeruser', function (req, res) {

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
  router.get('/login', function(req, res) {
    res.render('login', { title: 'Express' });
    console.log('A User connected to the login page.');
});

/* GET login page. */
router.get('/userlogin', function (req, res) {

    // Set our internal DB variable
    var db = req.db;

    // Get our form values. These rely on the "name" attributes
    //var firstname = req.body.firstname;
    //var lastname = req.body.lastname;
    var username = req.body.username;
    //var email = req.body.email;
    var password = req.body.password

    // Set our collection
    var collection = db.get('usercollection');

    // Submit to the DB
    var inputpassword = collection.find({ "username": username }, { "password": 1, "_id": 0 });
    if (inputpassword = null) {
        res.send("The username is not in our database")
    }
    else if (inputpassword != password) {
        res.send("Incorrect Password")
    }
    else {
        res.send("Correct User")
    }

});
  
  /* GET home page of a specific user. */
  router.get('/dashboard', function(req, res) {
    res.render('dashboard', { title: 'Express' });
    console.log('A User connected to his personal dashboard.');
  });

module.exports = router;
