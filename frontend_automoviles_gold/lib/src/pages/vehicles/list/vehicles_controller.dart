import 'package:flutter/material.dart';
import 'package:frontend_automoviles_gold/src/pages/vehicles/detail/vehicles_detail_page.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../models/vehicle.dart';

class VehiclesController extends GetxController {

  void openBottomSheet(BuildContext context, Vehicle vehicle) {
    showMaterialModalBottomSheet(
        context: context,
        builder: (context) => VehiclesDetailPage(vehicle: vehicle)
    );
  }


  List<Vehicle> getMockVehicles() {
    return [
      Vehicle(
        matricula: "NNNNXXX",
        marca: "Audi",
        modelo: "A5",
        referencia: "1227",
        year: 2005,
        kilometros: 2400000,
        size: "Pequeño",
        cv: 109,
        plazas: 5,
        combustible: "Gasolina",
        manejo: "Manual",
        puertas: 5,
        descripcion: "Audi A5 en perfectas condiciones, nunca ha dado ningún "
            "problema, ready para el jangueo.",
        vendido: false
      ),
      Vehicle(
          matricula: "NNNNXXX",
          marca: "Audi",
          modelo: "A5",
          referencia: "1227",
          year: 2005,
          kilometros: 2400000,
          size: "Pequeño",
          cv: 109,
          plazas: 5,
          combustible: "Gasolina",
          manejo: "Manual",
          puertas: 5,
          descripcion: "Audi A5 en perfectas condiciones, nunca ha dado ningún "
              "problema, ready para el jangueo.",
          vendido: false
      ),
      Vehicle(
          matricula: "NNNNXXX",
          marca: "Audi",
          modelo: "A5",
          referencia: "1227",
          year: 2005,
          kilometros: 2400000,
          size: "Pequeño",
          cv: 109,
          plazas: 5,
          combustible: "Gasolina",
          manejo: "Manual",
          puertas: 5,
          descripcion: "Audi A5 en perfectas condiciones, nunca ha dado ningún "
              "problema, ready para el jangueo.",
          vendido: false
      ),
      Vehicle(
          matricula: "NNNNXXX",
          marca: "Audi",
          modelo: "A5",
          referencia: "1227",
          year: 2005,
          kilometros: 2400000,
          size: "Pequeño",
          cv: 109,
          plazas: 5,
          combustible: "Gasolina",
          manejo: "Manual",
          puertas: 5,
          descripcion: "Audi A5 en perfectas condiciones, nunca ha dado ningún "
              "problema, ready para el jangueo.",
          vendido: false
      ),
      Vehicle(
          matricula: "NNNNXXX",
          marca: "Audi",
          modelo: "A5",
          referencia: "1227",
          year: 2005,
          kilometros: 2400000,
          size: "Pequeño",
          cv: 109,
          plazas: 5,
          combustible: "Gasolina",
          manejo: "Manual",
          puertas: 5,
          descripcion: "Audi A5 en perfectas condiciones, nunca ha dado ningún "
              "problema, ready para el jangueo.",
          vendido: false
      ),
      Vehicle(
          matricula: "NNNNXXX",
          marca: "Audi",
          modelo: "A5",
          referencia: "1227",
          year: 2005,
          kilometros: 2400000,
          size: "Pequeño",
          cv: 109,
          plazas: 5,
          combustible: "Gasolina",
          manejo: "Manual",
          puertas: 5,
          descripcion: "Audi A5 en perfectas condiciones, nunca ha dado ningún "
              "problema, ready para el jangueo.",
          vendido: false
      ),
      Vehicle(
          matricula: "NNNNXXX",
          marca: "Audi",
          modelo: "A5",
          referencia: "1227",
          year: 2005,
          kilometros: 2400000,
          size: "Pequeño",
          cv: 109,
          plazas: 5,
          combustible: "Gasolina",
          manejo: "Manual",
          puertas: 5,
          descripcion: "Audi A5 en perfectas condiciones, nunca ha dado ningún "
              "problema, ready para el jangueo.",
          vendido: false
      ),
    ];
  }
}