const express = require('express')
const app = express()
const bodyParser = require('body-parser')
const routes = require('./src/routes/routes')
const cors = require('cors')

// body-parser
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

// cors
app.use('/', cors())

// routes
app.use(routes)  

const port = 4000
app.listen(port, () => console.log('API QUESTION_AWNSER RODANDO NA PORTA: ', port))