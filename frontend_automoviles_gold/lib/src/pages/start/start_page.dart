import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:frontend_automoviles_gold/src/pages/contact/contact_page.dart';
import 'package:frontend_automoviles_gold/src/pages/start/start_controller.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class StartPage extends StatelessWidget {

  StartController startController = Get.put(StartController());

  final String _title = "Automóviles Gold";
  final Uri _wallapop = Uri.parse("https://es.wallapop.com/app/user/santic-26728587-436enpmvyn6d/published");
  final Uri _instagram = Uri.parse("https://www.instagram.com/automoviles_gold/");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _socialMediaBox(context),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _imageSlideShow(context),
          _titleText(context),
          _descriptionText(),
        ],
      )
    );
  }

  Widget _socialMediaBox(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: _boxDecorationCustom(context),
            child: IconButton(
              onPressed: () => launchUrl(_instagram),
              icon: Image.asset(
                color: Theme.of(context).colorScheme.secondary,
                "assets/icons/icon_instagram.png"
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            decoration: _boxDecorationCustom(context),
            child: IconButton(
              onPressed: () => launchUrl(_wallapop),
              icon: Image.asset(
                color: Theme.of(context).colorScheme.secondary,
                "assets/icons/icon_wallapop.png")
              ,
            ),
          ),
          SizedBox(width: 20),
          Container(
            decoration: _boxDecorationCustom(context),
            child: IconButton(
              onPressed: () => null, // TODO
              icon: Icon(
                Icons.phone,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _boxDecorationCustom(BuildContext context) {
    return BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.circular(25)
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

  Widget _titleText(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        _title,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget _descriptionText() {
    return Container(
      margin: EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      child: Text(
        "La calidad es lo primero, si quieres un coche asequible y con buen "
        "aspecto, cuenta con nosotros, no te defraudaremos y te irás contento "
        "con tu compra o desperfectos de tu propio vehículo.",
        style: TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }

}
