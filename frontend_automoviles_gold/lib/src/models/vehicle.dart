import 'dart:convert';

Vehicle vehicleFromJson(String str) => Vehicle.fromJson(json.decode(str));

String vehicleToJson(Vehicle data) => json.encode(data.toJson());

class Vehicle {
  String? matricula;
  String? marca;
  String? modelo;
  String? referencia;
  int? year;
  int? kilometros;
  String? size;
  int? cv;
  int? plazas;
  String? combustible;
  String? manejo;
  int? puertas;
  String? descripcion;
  bool? vendido;

  Vehicle({
    this.matricula,
    this.marca,
    this.modelo,
    this.referencia,
    this.year,
    this.kilometros,
    this.size,
    this.cv,
    this.plazas,
    this.combustible,
    this.manejo,
    this.puertas,
    this.descripcion,
    this.vendido,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
    matricula: json["matricula"],
    marca: json["marca"],
    modelo: json["modelo"],
    referencia: json["referencia"],
    year: json["year"],
    kilometros: json["kilometros"],
    size: json["size"],
    cv: json["cv"],
    plazas: json["plazas"],
    combustible: json["combustible"],
    manejo: json["manejo"],
    puertas: json["puertas"],
    descripcion: json["descripcion"],
    vendido: json["vendido"],
  );

  Map<String, dynamic> toJson() => {
    "matricula": matricula,
    "marca": marca,
    "modelo": modelo,
    "referencia": referencia,
    "year": year,
    "kilometros": kilometros,
    "size": size,
    "cv": cv,
    "plazas": plazas,
    "combustible": combustible,
    "manejo": manejo,
    "puertas": puertas,
    "descripcion": descripcion,
    "vendido": vendido,
  };

  // Es de tipo dynamic porque no sabemos el tipo de los elementos que contiene la lista
  static List<Vehicle> fromJsonList(List<dynamic> jsonList) {
    List<Vehicle> toList = [];

    jsonList.forEach((jsonCategory) {
      Vehicle vehicle = Vehicle.fromJson(jsonCategory);
      toList.add(vehicle);
    });

    return toList;
  }
}
