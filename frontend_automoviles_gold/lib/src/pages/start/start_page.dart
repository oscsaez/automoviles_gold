import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:frontend_automoviles_gold/src/pages/start/start_controller.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {

  StartController startController = Get.put(StartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      )
    );
  }

  /*Widget _imageSlideShow() {
    return SafeArea(
      child: Stack(
        children: [
          ImageSlideshow(
            children: [
              FadeInImage(
                placeholder: AssetImage('assets/no-image.svg'),
                image: image
              )
            ],
          )
        ],
      )
    );
  }*/

}
