import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/numbers_model.dart';

class ContainerItem extends StatelessWidget {
  ContainerItem(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});

  String text;
  Color color;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        color: color,
        width: double.infinity,
        height: 70,
        child: Text(
          text,
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}

class NumbersItem extends StatelessWidget {
  const NumbersItem({super.key, required this.number});

  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffEF9235),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xffECE6D8),
              child: Image(image: AssetImage('${number.image}'))),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${number.jpName}',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text('${number.enName}',
                  style: const TextStyle(color: Colors.white, fontSize: 20))
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('${number.sound}'));
            },
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}

class FamilyItem extends StatelessWidget {
  const FamilyItem({super.key, required this.member});

  final Number member;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff107838),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xffECE6D8),
              child: Image(image: AssetImage('${member.image}'))),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${member.jpName}',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text('${member.enName}',
                  style: const TextStyle(color: Colors.white, fontSize: 20))
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('${member.sound}'));
            },
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color});

  final Number color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff107838),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xffECE6D8),
              child: Image(image: AssetImage('${color.image}'))),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${color.jpName}',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text('${color.enName}',
                  style: const TextStyle(color: Colors.white, fontSize: 20))
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('${color.sound}'));
            },
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}

class PhasesItem extends StatelessWidget {
  const PhasesItem({super.key, required this.phases});

  final Number phases;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff107838),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${phases.jpName}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    '${phases.enName}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('${phases.sound}'));
            },
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
