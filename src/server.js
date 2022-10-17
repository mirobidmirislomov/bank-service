const express = require('express')
const app = express()
const PORT = process.env.PORT || 9000
const router = require('./modules')
const cors = require('cors')

app.use(express.json())
app.use(cors())
app.use(router)

app.listen(PORT, console.log(PORT))