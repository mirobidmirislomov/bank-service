const model = require('./model')

module.exports = {
    GET: async(req, res) => {
        try {
            const { company_id } = req.query

            res.json(await model.getComplex(company_id))  
        }catch(err) {
            console.log(err.message);
            res.sendStatus(500)
        }
    },
    POST: (req, res) => {
        try{
            const { addComplex_name, company_id } = req.body
            if(addComplex_name && company_id) {
                model.addComplex(addComplex_name, company_id)
            }
            res.redirect('/admin')
        }catch(err) {
            res.sendStatus(500)
        }
    }
}