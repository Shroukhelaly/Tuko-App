import 'package:flutter/material.dart';
import 'package:tuko_app/shared/component.dart';

import '../models/numbers_model.dart';

class FamilyMembersScreen extends StatelessWidget {
  FamilyMembersScreen({super.key});

  List<Number> members = [
    Number(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Kyōdai',
      enName: 'Brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger_Brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger_Sister',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Sofu',
      enName: 'Grandfather',
      sound: 'sounds/family_members/grand father.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grandmother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffECE6D8),
        appBar: AppBar(
          title: const Text(
            'FamilyMembers',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: const Color(0xffCABA9C),
          foregroundColor: Colors.white,

        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return FamilyItem(member: members[index],);
          },
          itemCount: members.length,

        ));

  }
}
