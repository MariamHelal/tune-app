import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key, required this.color,required this.sound}) ;
  Color? color;
  String? sound;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          final player=AudioPlayer();
          player.play(AssetSource(sound!));
        },
        child: Container(
          width: double.infinity,
          color: color,
          //child: const Text(''),
        ),
      ),
    );
  }
}
