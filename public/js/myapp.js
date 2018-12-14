const express = require('express')
const app = express() 
const port = 3001

response = '<h1>Hello student</h1>' + 
    '<p>You have now generated your <strong>first Express App</strong>!</p>';
app.get('/', (req, res) => res.send( response ));

// Our new route! In this case welcome 
newResponse = '<h1>Hello student learning Express</h1>' + 
    '<p>You have now created your <strong>very own route</strong>!</p>'
app.get('/welcome', (req, res) => res.send( newResponse ))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))