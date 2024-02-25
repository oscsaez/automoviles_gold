import 'package:flutter/material.dart';
import 'package:frontend_automoviles_gold/src/pages/contact/contact_controller.dart';
import 'package:get/get.dart';

class ContactPage extends StatelessWidget {

  ContactController controller = Get.put(ContactController());

  final Color? _blackCustom = Colors.grey[900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Container(
        margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03),
        child: Column(
          children: [
            _dataPhone(context),
            _dataEmail(context),
            _dataSchedule(context),
            _dataAddress(context)
          ],
        ),
      ),
    );
  }

  Widget _dataEmail(BuildContext context) {
    return Card(
      color: _blackCustom,
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Correo electrónico',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.mail, color: Theme.of(context).colorScheme.secondary)
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () => controller.copyEmailToClipboard(context),
              child: Text(
                controller.email,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _dataAddress(BuildContext context) {
    return Card(
      color: _blackCustom,
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Dirección',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.location_on, color: Theme.of(context).colorScheme.secondary)
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Camino Renedo 17, 47155 Santovenia de Pisuerga Valladolid, España',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dataPhone(BuildContext context) {
    return Card(
      color: _blackCustom,
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Teléfono de contacto',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.phone, color: Theme.of(context).colorScheme.secondary)
                ],
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () => controller.copyPhoneToClipboard(context),
                child: Text(
                  controller.phone,
                  style: TextStyle(
                      fontSize: 17,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
  
  Widget _dataSchedule(BuildContext context) {
    return Card(
      color: _blackCustom,
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Horario',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.access_time_rounded, color: Theme.of(context).colorScheme.secondary)
              ],
            ),
            SizedBox(height: 10),
            Text(
              'De 8:00 a 15:00 y de 16:00 a 20:00',
              style: TextStyle(
                  fontSize: 17,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
