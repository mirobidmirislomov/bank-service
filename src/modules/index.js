const express = require('express')
const router = express.Router()

const company = require('./compony/company')
const complex = require('./complex/complex')
const room = require('./room/room')
const bank = require('./bank/bank')
const calculation = require('./calculation/calculation')

router
    .get('/company', company.GET)
    .get('/complex', complex.GET)
    .get('/room', room.GET)
    .get('/bank', bank.GET)
    .get('/calculation', calculation.GET)
    .post('/addCompany', company.POST)
    .post('/addComplex', complex.POST)
    .post('/addRoom', room.POST)
    .get('/banks', bank.GET_ALL_BANKS)
    .post('/addBank', bank.POST)

module.exports = router