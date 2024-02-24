import 'package:flutter/material.dart';
import 'package:frontend_automoviles_gold/src/pages/menu/tab_bar_menu.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Automóviles Gold",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: () => TabBarMenu()),
      ],
      theme: ThemeData(
          primaryColor: Colors.black87,
          colorScheme: ColorScheme(
              primary: Colors.black87,
              secondary: Color.fromRGBO(239, 184, 16, 1),
              brightness: Brightness.light,
              onBackground: Colors.white,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.white,
              error: Colors.white,
              onError: Colors.white,
              onSecondary: Colors.white,
              background: Colors.white
          )
      ),
      navigatorKey: Get.key,
    );
  }
}
