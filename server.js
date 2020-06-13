const express = require('express')
const app = express()
const port = 5000

app.get('/', (req, res) => res.send('Hello Mr.Lemon!'))

app.listen(port, () => console.log(`Example app listening at http://161.117.59.225:5000`))
