import 'package:flutter/material.dart';
import 'package:tuko_app/shared/component.dart';

import '../models/numbers_model.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});

  List<Number> numbers = [
    Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'sounds/numbers/number_one_sound.mp3'

    ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
      sound: 'sounds/numbers/number_two_sound.mp3'
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'Three',
      sound: 'sounds/numbers/number_three_sound.mp3'
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: 'Four',
      sound: 'sounds/numbers/number_four_sound.mp3'
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'Five',
      sound: 'sounds/numbers/number_five_sound.mp3'
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
      sound: 'sounds/numbers/number_six_sound.mp3'
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'Seven',
      sound: 'sounds/numbers/number_seven_sound.mp3'
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'Eight',
      sound: 'sounds/numbers/number_eight_sound.mp3'
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      enName: 'Nine',
      sound: 'sounds/numbers/number_nine_sound.mp3'
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Ju',
      enName: 'Ten',
      sound: 'sounds/numbers/number_ten_sound.mp3'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffECE6D8),
        appBar: AppBar(
          title: const Text(
            'Numbers',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: const Color(0xff8A6240),
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return NumbersItem(
              number: numbers[index],
            );
          },
          itemCount: numbers.length,

        ));
  }


}
