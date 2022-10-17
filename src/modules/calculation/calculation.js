const model = require('./model')

module.exports = {
    GET: async (req, res) => {
        try {
            const { size, price, bank_id } = req.query
            res.json(await model.getCalculation(size, price, bank_id))
        }catch(err) {
            res.sendStatus(500)
        }
    }
}