import 'package:flutter/material.dart';
import 'package:frontend_automoviles_gold/src/pages/contact/contact_controller.dart';
import 'package:get/get.dart';

class ContactPage extends StatelessWidget {

  ContactController controller = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03),
        child: Column(
          children: [
            _dataPhone(context),
            _customizedDivider(context),
            _dataEmail(context),
            _customizedDivider(context),
            _dataSchedule(context),
            _customizedDivider(context),
            _dataAddress(context)
          ],
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

  Widget _dataEmail(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
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
                    color: Colors.black
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.phone)
            ],
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () => controller.copyEmailToClipboard(context),
            child: Text(
              controller.email,
              style: TextStyle(
                  fontSize: 17
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _dataAddress(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
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
                    color: Colors.black
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.location_on)
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Camino Renedo 17, 47155 Santovenia de Pisuerga Valladolid, España',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }

  Widget _dataPhone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
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
                  color: Colors.black
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.phone)
            ],
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () => controller.copyPhoneToClipboard(context),
            child: Text(
              controller.phone,
              style: TextStyle(
                  fontSize: 17
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _dataSchedule(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
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
                    color: Colors.black
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.access_time_rounded)
            ],
          ),
          SizedBox(height: 10),
          Text(
            'De 8:00 a 15:00 y de 16:00 a 20:00',
            style: TextStyle(
                fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
