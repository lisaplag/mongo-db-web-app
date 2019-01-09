var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res) {
    res.render('index', { title: 'Express' });
    console.log('A User connected to the home page.');
});

/* GET home page of a specific user. */
router.get('/home', function(req, res) {
    res.render('home', { title: 'Express' });
    console.log('A User connected to its homepage.');
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

module.exports = router;
