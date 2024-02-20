const db = require('../config/config');

const Vehicle = {};

Vehicle.getAll = (result) => {

    const sql = `SELECT * FROM vehiculos`;

    db.query(
        sql,
        (err, res) => {
            if (err) {
                console.log('Error: ', err);
                result(err, null);
            } else {
                console.log('Vehiculos obtenidos correctamente: ', res);
                result(null, res);
            }
        }
    )
}

module.exports = Vehicle;