var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.status(200).json({ message: 'Connected!' });
    res.render('../views/index');
    console.log('A User connected to the home page.');
});

module.exports = router;
