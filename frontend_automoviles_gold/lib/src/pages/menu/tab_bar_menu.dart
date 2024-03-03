import 'package:flutter/material.dart';
import 'package:flutter_side_menu/flutter_side_menu.dart';
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
      return LayoutBuilder(
          builder: (context, constraints) {
            if(constraints.maxWidth < 600) {
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
                drawer: _drawerCustom(context)
              );
            } else {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.grey[900],
                ),
                body: _sideMenuCustom(context),
              );
            }
          }
      );
  }

  Widget _sideMenuCustom(BuildContext context) {
    return Obx(() => Row(
        children: [
          SideMenu(
            backgroundColor: Colors.grey[900],
            builder: (data) {
              return SideMenuData(
                  header: Container(
                    alignment: Alignment.topLeft,
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Theme.of(context).colorScheme.secondary,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        "Automóviles Gold",
                        style: _titleStyle(),
                      ),
                    ),
                  ),
                  items: [
                    SideMenuItemDataTile(
                        title: "Inicio",
                        titleStyle: _itemStyle(),
                        icon: Icon(Icons.home),
                        selectedIcon: Icon(Icons.home),
                        hoverColor: Theme.of(context).colorScheme.secondary,
                        isSelected: _selectedIndex.value == 0,
                        onTap: () => _onItemTapped(0)
                    ),
                    SideMenuItemDataTile(
                        title: "Vehículos",
                        titleStyle: _itemStyle(),
                        icon: Icon(Icons.car_rental),
                        selectedIcon: Icon(Icons.car_rental),
                        hoverColor: Theme.of(context).colorScheme.secondary,
                        isSelected: _selectedIndex.value == 1,
                        onTap: () => _onItemTapped(1)
                    ),
                    SideMenuItemDataTile(
                        title: "Contacto",
                        titleStyle: _itemStyle(),
                        icon: Icon(Icons.phone),
                        selectedIcon: Icon(Icons.phone),
                        hoverColor: Theme.of(context).colorScheme.secondary,
                        isSelected: _selectedIndex.value == 2,
                        onTap: () => _onItemTapped(2)
                    )
                  ]
                );
              }
          ),
          Expanded(
              child: _widgetOptions[_selectedIndex.value]
          )
        ],
      ),
    );
  }

  TextStyle _itemStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 17,
    );
  }

  TextStyle _titleStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );
  }

  Widget _drawerCustom(BuildContext context) {
    return Drawer(
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
                style: _titleStyle(),
              ),
            ),
          ),
          ListTile(
            title: Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Inicio",
                style: _itemStyle(),
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
                style: _itemStyle(),
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
                style: _itemStyle(),
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
    );
  }

  void _onItemTapped(int index) {
    _selectedIndex.value = index;
  }
}
