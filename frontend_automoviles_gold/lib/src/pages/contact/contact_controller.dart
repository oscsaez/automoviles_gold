import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContactController extends GetxController {

  String phone = '614246646';
  String email = "goldautomoviles@gmail.com";

  FToast fToast = FToast();

  void copyPhoneToClipboard(BuildContext context) {
    FlutterClipboard.copy(phone).then((result) {
      _showToast("Contacto copiado al protapapeles", context);
    });
  }
  
  void copyEmailToClipboard(BuildContext context) {
    FlutterClipboard.copy(email).then((result) => {
      _showToast("Correo electrónico copiado al portapapeles", context)
    });
  }

  _showToast(String text, BuildContext context) {
    fToast.init(context);

    Widget toast = Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.black87
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check,
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(width: 12),
          Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary
            ),
          )
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );
  }
}