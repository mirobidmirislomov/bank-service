const model = require('./model');

module.exports = {
    GET: async (req, res) => {
        try {
            const { sum, year } = req.query

            res.json(await model.getBank(sum, year))
        } catch(err) {
            res.sendStatus(500)
        }
    },
    GET_ALL_BANKS: async (req, res) => {
        try {
            res.json(await model.getAllBanks())
        }catch(err) {
            res.sendStatus(500)
        }
    },
    POST: (req, res) => {
        try {
            const { bank_name, bank_sum, bank_year, percent } = req.body
            if(bank_name) {
                res.json(model.addBank(bank_name, bank_sum, bank_year, percent))
            }
        }catch(err) {
            res.sendStatus(500)
        }
    }
}