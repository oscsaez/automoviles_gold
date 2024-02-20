import 'package:frontend_automoviles_gold/src/environment/environment.dart';
import 'package:frontend_automoviles_gold/src/models/vehicle.dart';
import 'package:get/get.dart';

class VehiclesProvider extends GetConnect {

  String url = "${Environment.API_URL}/api/vehicles";

  Future<List<Vehicle>> getAll() async {
    Response response = await get(
      '$url/getAll',
      headers: {
        'Content-type': 'application/json'
      }
    );

    List<Vehicle> vehicles = Vehicle.fromJsonList(response.body);

    return vehicles;
  }
}