const model = require('./model')

module.exports = {
    GET:  async(_, res) => {
        try {
            res.json(await model.getCompany())
        } catch(err) {
            console.log(err);
            res.sendStatus(500)
        }
    },
    POST: (req, res) => {
        try{
            const { addCompany_name } = req.body
            if(addCompany_name) {
                model.addCompany(addCompany_name)
            }
            res.redirect('/admin')
        }catch(err) {
            res.sendStatus(500)
        }
    }
}