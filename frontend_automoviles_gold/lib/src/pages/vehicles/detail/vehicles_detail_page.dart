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
      body: Stack(
        children: [
          Column(
            children: [
              _imageSlideShow(context),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    _nameVehicleText(),
                    _referenceVehicleText(),
                    _customizedDivider(context),
                    // TODO
                    /*_infoVehicleGrid(context),
                  _descriptionVehicleText()*/
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
  
  /*Widget _infoVehicleGrid(BuildContext context) {
    return GridView.count(
      crossAxisCount: (MediaQuery.of(context).size.width / 50).floor(),
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: [
        Container(
          child: Column(
            children: [
              Icon(Icons.speed_rounded),
              Text(
                  "${vehicle?.cv} caballos"
              )
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Icon(Icons.event_seat_rounded),
              Text(
                "${vehicle?.plazas} plazas"
              )
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Icon(Icons.local_gas_station_rounded),
              Text(
                  vehicle?.combustible ?? ""
              )
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Icon(Icons.energy_savings_leaf),
              Text(
                  "${vehicle?.plazas} plazas"
              )
            ],
          ),
        )
      ],
    );
  }*/

  Widget _referenceVehicleText() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
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
      margin: EdgeInsets.only(bottom: 10),
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

  Widget _customizedDivider(BuildContext context) {
    return Divider(
      color: Colors.grey[600],
      indent: MediaQuery.of(context).size.width * 0.02,
      endIndent: 30,
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
