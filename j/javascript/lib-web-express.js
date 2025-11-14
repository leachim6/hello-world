const express = require('express')
const app = express()

app.get('/', (_, res) => res.send("Hello World"))

app.listen(8080)
