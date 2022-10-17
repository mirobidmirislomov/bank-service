const { fetch } = require('../../utils/postgres')

const ROOM = `
    SELECT 
        * 
    FROM
        room
    WHERE
        room.complex_id = $1
`

const ADD_ROOM = `
    INSERT INTO
        room(room_count, complex_id, price, size, info)
    VALUES($1, $2::int, $3, $4, $5)
`

const getRoom = (complex_id) => fetch(ROOM, complex_id)
const addRoom = (room_count, complex_id, price, size, info) => fetch(ADD_ROOM, room_count, complex_id, price, size, info)

module.exports = {
    getRoom,
    addRoom
}