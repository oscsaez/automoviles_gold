import 'package:flutter/material.dart';
import 'package:frontend_automoviles_gold/src/pages/vehicles/list/vehicles_controller.dart';
import 'package:get/get.dart';

class VehiclesPage extends StatelessWidget {

  VehiclesController vehiclesController = Get.put(VehiclesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Container(
        child: _gridVehicles(context),
      ),
    );
  }

  Widget _gridVehicles(BuildContext context) {
    List<Widget> vehicles = vehiclesController.getMockVehicles().map((vehicle) {
      return GestureDetector(
        onTap: () => vehiclesController.openBottomSheet(context, vehicle),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    child: Image(
                      image: AssetImage("assets/img/no-image.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "${vehicle.marca} ${vehicle.modelo} ${vehicle.year}",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    child: Text(
                      vehicle.descripcion ?? "",
                      style: TextStyle(
                        fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }).toList();

    return GridView.count(
      crossAxisCount: (MediaQuery.of(context).size.width / 300).floor(),
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: vehicles,
    );
  }
}
