import 'package:contador/pages/card_page.dart';
import 'package:contador/pages/contador_page.dart';
import 'package:contador/pages/container_page.dart';
import 'package:contador/pages/menu_page.dart';
import 'package:contador/pages/practicaG.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:contador/controllers/ControllerGallery.dart';

void main(){
Get.lazyPut(() => ControllerGallery());
runApp(const MyApp());
} 




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IDGS10-2',
      initialRoute: '/galeria',
      routes: {
        '/menu': (context) => const MenuPage(),
        '/contador': (context) => const ContadorPage(),
        '/container': (context) => const ContainerPage(),
        '/card': (context) => const CardPage(),
        '/galeria': (context) =>  PracticaG()
      },
    );
  }
}
