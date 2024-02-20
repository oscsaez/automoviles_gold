const Vehicle = require('../models/vehicle');

module.exports = {

    getAll(req, res) {

        Vehicle.getAll((err, data) => {
            if(err) {
                return res.status(501).json({
                    success: false,
                    message: 'Error al obtener los vehiculos',
                    error: err
                });
            } else {
                return res.status(201).json({
                    success: true,
                    message: 'La obtencion de los vehiculos se realizó correctamente',
                    data: data
                });
            }
        });
    }
}