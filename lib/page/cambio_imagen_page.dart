import 'package:flutter/material.dart';
import 'package:galeria/controller/cambio_imagen_controller.dart';
import 'package:get/get.dart';

class CambioImagenPage extends StatelessWidget {
  const CambioImagenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cambiar imagenes'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: GetBuilder<CambioImagenController>(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    _.cambioImgLeft();
                  },
                  icon: const Icon(Icons.arrow_back)),
              CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage(_.urlImgs[_.indexUrlImg]),
              ),
              IconButton(
                  onPressed: () {
                    _.cambioImgRight();
                  },
                  icon: const Icon(Icons.arrow_forward))
            ],
          );
        }),
      ),
    );
  }
}
