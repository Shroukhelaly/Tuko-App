import 'package:flutter/material.dart';
import 'package:tuko_app/models/numbers_model.dart';
import 'package:tuko_app/shared/component.dart';

class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({super.key});

  List<Number> phases = [
    Number(
      jpName: 'Kimasu ka',
      enName: 'Are You Coming',
      sound: 'sounds/phrases/are_you_coming.wav',

    ),
    Number(
      jpName: 'Kōdoku o o wasurenaku',
      enName: 'Do not forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',

    ),
    Number(
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'How are yoy feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',

    ),
    Number(
      jpName: 'Watashi wa dōbutsu ga daisukidesu',
      enName: 'I love animals',
      sound: 'sounds/phrases/i_love_anime.wav',

    ),
    Number(
      jpName: 'Puroguramingu ga daisukidesu',
      enName: 'I love Programming',
      sound: 'sounds/phrases/i_love_programming.wav',

    ),
    Number(
      jpName: 'Puroguramingu ga daisukidesu',
      enName: 'programming is very easy',
      sound: 'sounds/phrases/programming_is_easy.wav',

    ),
    Number(
      jpName: 'Puroguramingu wa totemo kantandesu',
      enName: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',

    ),
    Number(
      jpName: 'Doko ni iku no?',
      enName: 'Where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',

    ), Number(
      jpName: 'Hai, ikimasu',
      enName: 'yes im coming',
      sound: 'sounds/phrases/yes_im_coming.wav',

    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffECE6D8),
        appBar: AppBar(
          title: const Text(
            'phrases',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: const Color(0xff102820),
          foregroundColor: Colors.white,

        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return PhasesItem(
              phases: phases[index],
            );
          },
          itemCount: phases.length,

        ));

  }
}
