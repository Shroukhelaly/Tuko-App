import 'package:flutter/material.dart';
import 'package:tuko_app/layout/colors_screen.dart';
import 'package:tuko_app/layout/family_members_screen.dart';
import 'package:tuko_app/layout/phrases_screen.dart';
import 'package:tuko_app/shared/component.dart';

import 'Numbers_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE6D8),
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color(0xff4D2D18),
      ),
      body: Column(
        children: [
          ContainerItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)
              =>
               NumbersScreen()
              ) );
            },
            text: 'Numbers',
            color: const Color(0xff8A6240),
          ),
          ContainerItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)
              =>
               FamilyMembersScreen()
              ) );
            },
            text: 'FamilyMembers',
            color: const Color(0xffCABA9C),
          ),
          ContainerItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)
              =>
               ColorsScreen()
              ) );
            },
            text: 'Colors',
            color: const Color(0xff4C6444),
          ),
          ContainerItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)
              =>
               PhrasesScreen()
              ) );
            },
            text: 'Phrases',
            color: const Color(0xff102820),
          ),

        ],
      ),
    );
  }
}
