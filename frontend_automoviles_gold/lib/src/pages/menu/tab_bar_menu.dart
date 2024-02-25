import 'package:flutter/material.dart';
import 'package:frontend_automoviles_gold/src/pages/contact/contact_page.dart';
import 'package:frontend_automoviles_gold/src/pages/start/start_page.dart';
import 'package:get/get.dart';

import '../vehicles/list/vehicles_page.dart';

class TabBarMenu extends StatelessWidget {

  var _selectedIndex = 0.obs;
  final List<Widget> _widgetOptions = <Widget>[
    StartPage(),
    VehiclesPage(),
    ContactPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary
        ),
      ),
      body: Obx(() => Container(
        child: _widgetOptions[_selectedIndex.value],
      )),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15)
          )
        ),
        backgroundColor: Colors.grey[900],
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary
              ),
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Automóviles Gold",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Inicio",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                  ),

                ),
              ),
              selected: true, // TODO
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Vehículos",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                  ),
                ),
              ),
              selected: false, // TODO
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Contacto",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                  ),
                ),
              ),
              selected: false, // TODO
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
  }
}
