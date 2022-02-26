
import 'package:flutter/material.dart';
import 'package:galeria/controller/cambio_imagen_controller.dart';
import 'package:galeria/page/cambio_imagen_page.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => CambioImagenController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Galeria',
        initialRoute: '/galeria',
        routes: {'/galeria': (context) => const CambioImagenPage()});
  }
}
