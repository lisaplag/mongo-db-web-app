var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/users', function(req, res) {
  res.send('<p>Hello World!</p>');
});

module.exports = router;
