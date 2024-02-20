import 'package:flutter/cupertino.dart';
import 'package:frontend_automoviles_gold/src/models/vehicle.dart';
import 'package:frontend_automoviles_gold/src/providers/vehicles_provider.dart';
import 'package:get/get.dart';

class StartController extends GetxController {

  VehiclesProvider vehiclesProvider = VehiclesProvider();
  List<Vehicle> vehicles = [];

  StartController() {
    getVehicles();
  }

  void getVehicles() async {
    var result = await vehiclesProvider.getAll();
    vehicles.clear();
    vehicles.addAll(result);
  }

  List<String> getSomeImages() {
    List<String> urlImages = [];
    
    vehicles.asMap().forEach((index, vehicle) {
      urlImages.add('${vehicle.matricula}_$index');
    });

    return urlImages;
  }
}