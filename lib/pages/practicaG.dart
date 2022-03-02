import 'package:flutter/material.dart';
import 'package:contador/controllers/ControllerGallery.dart';
import 'package:get/get.dart';

class PracticaG extends StatelessWidget {
  PracticaG({Key? key}) : super(key: key);
  final galeria = Get.find<ControllerGallery>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Galeria de fotos'),
      ),
      body: Center(
        child: GetBuilder<ControllerGallery>(
          builder: (controllerGaleria) => Container(
            width: 600,
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      controllerGaleria.photos[controllerGaleria.posit]),
                  fit: BoxFit.fill),
            ),
          ),
        ),
      ),
      floatingActionButton: GetBuilder<ControllerGallery>(
        builder: (controllerGallery) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                controllerGallery.PrevPosit();
              },
              backgroundColor: Colors.cyan,
              child: const Icon(Icons.arrow_left),
            ),
            FloatingActionButton(
              onPressed: () {
                controllerGallery.NextPosit();
              },
              backgroundColor: Colors.cyan,
              child: const Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}