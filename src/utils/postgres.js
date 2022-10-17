const { Pool } = require('pg')

const pool = new Pool({
    connectionString: 'postgres://otcyhdqr:mKTCiTi15a5pFS1DKMNWjeDkb71Ebab6@arjuna.db.elephantsql.com/otcyhdqr'
})

const fetch = async(SQL, ...params) => {
    const client = await pool.connect()
    try{
        const { rows } = await client.query(SQL, params.length ? params : null)
        return rows
    } finally {
        client.release()
    }
}

module.exports = {
    fetch
}