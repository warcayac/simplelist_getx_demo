import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_list/src/controllers/animal_controller.dart';
import 'package:simple_list/src/shared/animals_list_shared.dart';

/* ********************************************************************************************* */

class HomePage extends StatelessWidget {
  final AnimalController animalController = Get.put(AnimalController());
  /* ---------------------------------------------------------------------------- */
  HomePage({Key key}) : super(key: key);
  /* ---------------------------------------------------------------------------- */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: GetX<AnimalController>(
        //   builder: (_) => ListView.builder(
        child: Obx(() => ListView.builder(
            itemCount: animalController.list.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                animalController.list[index],
                style: Theme.of(context).textTheme.headline6,
              ),
              trailing: IconButton(
                icon: Icon(Icons.close),
                onPressed: () => animalController.remove(index),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: FlatButton(
          color: Theme.of(context).primaryColor,
          onPressed: () => animalController.add(animalsList[Random().nextInt(animalsList.length)]),
          child: Text('Añadir Animal', style: TextStyle(color: Colors.white, fontSize: 22)),
        ),
      ),
    );
  }
}
