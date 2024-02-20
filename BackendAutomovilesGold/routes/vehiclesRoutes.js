const vehiclesController = require('../controllers/vehiclesController');

module.exports = (app) => {

    app.get('/api/vehicles/getAll', vehiclesController.getAll);
}