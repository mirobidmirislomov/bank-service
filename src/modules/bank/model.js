const { fetch } = require('../../utils/postgres');

const BANK = `
    select * from bank where bank_sum::int - $1 = (SELECT MIN(bank_sum::int - $1) from bank where bank_year = $2);
`

const ALL_BANKS = `
    select * from bank
`

const ADD_BANK = `
    insert into bank(bank_name, bank_sum, bank_year, percent) values($1, $2, $3::int, $4)
`

const getBank = (sum, year) => fetch(BANK, sum, year)
const getAllBanks = () => fetch(ALL_BANKS)
const addBank = (bank_name, bank_sum, bank_year, percent) => fetch(ADD_BANK, bank_name, bank_sum, bank_year, percent)

module.exports = {
    getBank,
    getAllBanks,
    addBank
}