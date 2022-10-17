const { fetch } = require('../../utils/postgres')

const COMPLEX = `
    SELECT 
        * 
    FROM
        complex
    WHERE
        complex.company_id = $1
`
const ADD_COMPLEX = `
    INSERT INTO
        complex(complex_name, company_id)
    VALUES($1, $2::int)
`

const getComplex = (company_id) => fetch(COMPLEX, company_id)
const addComplex = (addComplex_name, company_id) => fetch(ADD_COMPLEX, addComplex_name, company_id) 

module.exports = {
    getComplex,
    addComplex
}