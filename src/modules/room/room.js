const model = require('./model')

module.exports = {
    GET: async(req, res) => {
        try {
            const { complex_id } = req.query

            res.json(await model.getRoom(complex_id))  
        } catch(err) {
            console.log(err);
            res.sendStatus(500)
        }
    },
    POST: (req, res) => {
        try{
            const { room_count, complex_id, price, size, info } = req.body
            if(room_count) {
                res.json(model.addRoom(room_count, complex_id, price, size, info))
            }
            res.send('ok')
        }catch(err) {
            res.sendStatus(500)
        }
    }
}