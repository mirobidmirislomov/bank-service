const { fetch } = require('../../utils/postgres')

const CALCULATION = `
    select
        bank_id,
        bank_year,
        ($1::int * $2::int / 100 * percent::int) first_pay,
        ($1::int * $2::int) home_price,
        ((($1::int * $2::int) - ($1::int * $2::int / 100 * percent::int))/bank_year/12) monthly_payment
    from 
        bank
    where
        bank.bank_id = $3
`

const getCalculation = (size, price, bank_id) => fetch(CALCULATION, size, price, bank_id);
module.exports = {
    getCalculation
}
