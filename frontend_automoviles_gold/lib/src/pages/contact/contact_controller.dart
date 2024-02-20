import 'package:clipboard/clipboard.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {

  String phone = '614246646';

  void copyToClipboard() {
    FlutterClipboard.copy(phone).then((result) {
      Get.snackbar("Contacto", 'Copiado al portapapeles');
    });
  }
}