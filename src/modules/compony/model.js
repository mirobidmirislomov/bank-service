const { fetch } = require('../../utils/postgres')

const ALL_COMPANY = `
    SELECT 
        * 
    FROM
        company
`

const ADD_COMPANY = `
    INSERT INTO
        company(company_name)
    VALUES($1)
`

const getCompany = () => fetch(ALL_COMPANY)
const addCompany = (company_name) => fetch(ADD_COMPANY, company_name) 

module.exports = {
    getCompany,
    addCompany
}