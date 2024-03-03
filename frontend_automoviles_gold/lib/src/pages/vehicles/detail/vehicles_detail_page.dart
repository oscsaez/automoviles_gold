import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:frontend_automoviles_gold/src/models/vehicle.dart';
import 'package:frontend_automoviles_gold/src/pages/vehicles/detail/vehicles_detail_controller.dart';
import 'package:get/get.dart';

class VehiclesDetailPage extends StatelessWidget {

  late VehiclesDetailController vehiclesDetailController;
  Vehicle? vehicle;

  VehiclesDetailPage({ @required this.vehicle }) {
    vehiclesDetailController = Get.put(VehiclesDetailController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      body: Stack(
        children: [
          ListView(
            children: [
              _imageSlideShow(context),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    _nameRefVehicleCard(context),
                    SizedBox(height: 10),
                    _descriptionVehicleCard(),
                    SizedBox(height: 10),
                    _infoVehicleTableCard(),
                  ],
                ),
              )
            ],
          ),
          _buttonBack(context),
        ],
      ),
    );
  }

  Widget _descriptionVehicleCard() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Descripción",
              style: TextStyle(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          ),
          _descriptionVehicleText(),
        ],
      ),
    );
  }

  Widget _nameRefVehicleCard(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          _nameVehicleText(),
          _referenceVehicleText()
        ],
      ),
    );
  }

  Widget _infoVehicleTableCard() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Table(
          border: TableBorder.symmetric(inside: BorderSide(color: Colors.grey.shade900)),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Año ${vehicle?.year.toString() ?? ""}"),
                  )
                ),
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("${vehicle?.kilometros.toString() ?? ""} km"),
                    )
                ),
              ]
            ),
            TableRow(
              children: [
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(vehicle?.size ?? ""),
                    )
                ),
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("${vehicle?.plazas.toString() ?? ""} plazas"),
                    )
                ),
              ]
            ),
            TableRow(
              children: [
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("${vehicle?.puertas.toString() ?? ""} puertas"),
                    )
                ),
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text("${vehicle?.cv.toString() ?? ""} CV"),
                    )
                ),
              ]
            ),
            TableRow(
                children: [
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(vehicle?.manejo ?? ""),
                      )
                  ),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(vehicle?.combustible ?? ""),
                      )
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }

  Widget _descriptionVehicleText() {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 20, right: 20, top: 10),
      child: Text(
        vehicle?.descripcion ?? "",
        style: TextStyle(
          fontSize: 17
        ),
      ),
    );
  }

  Widget _buttonBack(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: IconButton(
        color: Colors.grey[900],
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back)
      ),
    );
  }

  Widget _referenceVehicleText() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 20, bottom: 20, right: 20),
      child: Text(
        vehicle?.referencia ?? "",
        style: TextStyle(
          fontSize: 17
        ),
      ),
    );
  }
  
  Widget _nameVehicleText() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 20, left: 20, bottom: 10, right: 20),
      child: Text(
        "${vehicle?.marca} ${vehicle?.modelo} ${vehicle?.year}",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black87
        ),
      ),
    );
  }

  Widget _imageSlideShow(BuildContext context) {
    List<String> listMock = ["HOLA", "ADIOS", "ADIOS"];

    List<Widget> images = /*startController.getSomeImages()*/listMock.map((urlImage) {
      return FadeInImage(
        placeholder: AssetImage('assets/img/no-image.png'),
        image: /*NetworkImage(urlImage)*/ AssetImage("assets/img/no-image.png"),
        fit: BoxFit.cover,
      );
    }).toList();

    return ImageSlideshow(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      initialPage: 0,
      indicatorColor: Theme.of(context).colorScheme.secondary,
      children: images,
    );
  }
}
