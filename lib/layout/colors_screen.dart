import 'package:flutter/material.dart';
import 'package:tuko_app/shared/component.dart';

import '../models/numbers_model.dart';

class ColorsScreen extends StatelessWidget {
   ColorsScreen({super.key});

  List<Number> numbers = [
    Number(
        image: 'assets/images/colors/color_black.png',
        jpName: 'ichi',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'

    ),
    Number(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Ni',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'
    ),
    Number(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'San',
        enName: 'Dusty_yellow',
        sound: 'sounds/colors/dusty yellow.wav'
    ),
    Number(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Shi',
        enName: 'Grey',
        sound: 'sounds/colors/gray.wav'
    ),
    Number(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Go',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'
    ),
    Number(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Roku',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'
    ),
    Number(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Sebun',
        enName: 'White',
        sound: 'sounds/colors/white.wav'
    ),
    Number(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Hachi',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffECE6D8),
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color(0xff4C6444),
        foregroundColor: Colors.white,

      ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ColorItem(
              color: numbers[index],
            );
          },
          itemCount: numbers.length,

        ));
  }
}
