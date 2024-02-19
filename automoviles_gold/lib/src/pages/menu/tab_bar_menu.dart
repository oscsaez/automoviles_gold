import 'package:automoviles_gold/src/pages/contact/contact_page.dart';
import 'package:automoviles_gold/src/pages/start/start_page.dart';
import 'package:automoviles_gold/src/pages/vehicles/vehicles_page.dart';
import 'package:flutter/material.dart';

class TabBarMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                  isScrollable: true,
                  indicatorColor: Color.fromRGBO(239, 184, 16, 1),
                  labelColor: Color.fromRGBO(239, 184, 16, 1),
                  unselectedLabelColor: Colors.grey[500],
                  tabs: <Widget>[
                    Tab(
                      child: Row(
                        children: [
                          Icon(Icons.home),
                          SizedBox(width: 10),
                          Text(
                            'Inicio',
                            style: TextStyle(
                              fontSize: 20
                            ),
                          )
                        ],
                      ),
                    ),
                    Tab(
                        child: Row(
                          children: [
                            Icon(Icons.car_rental),
                            SizedBox(width: 10),
                            Text(
                              'Vehículos',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            )
                          ],
                        )
                    ),
                    Tab(
                        child: Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 10),
                            Text(
                              'Contacto',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            )
                          ],
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: StartPage(),
            ),
            Container(
              child: VehiclesPage(),
            ),
            Container(
              child: ContactPage(),
            ),
          ],
        ),
      )
    );
  }
}
