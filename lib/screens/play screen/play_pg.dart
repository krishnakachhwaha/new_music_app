import 'dart:ui';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/conponents/arrData.dart';
import 'package:music_app/screens/dashboard/Tab%20bar/popular.dart';

import 'package:music_app/screens/play%20screen/player_controller.dart';

class play_pg extends StatefulWidget {
  String img;
  String imgName;
  play_pg({required this.img, required this.imgName});

  @override
  State<play_pg> createState() => _play_pgState();
}

class _play_pgState extends State<play_pg> {
  double sliderValue = 2;

  @override
  Widget build(BuildContext context) {
    final mqw = MediaQuery.of(context).size.width;
    final mqh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Image.asset(
                'assets/images/download.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 30,
                        )),
                  ],
                ),
                FlipCard(
                  front: musicNameNDImg(widget.img, widget.imgName),
                  back: lyrics(),
                ),
                SizedBox(height: mqh * 0.13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button_Controls(icon: FontAwesomeIcons.heart),
                    button_Controls(icon: FontAwesomeIcons.repeat),
                    button_Controls(icon: FontAwesomeIcons.shuffle),
                    button_Controls(icon: Icons.lyrics_outlined),
                  ],
                ),
                SizedBox(height: mqh * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '0.0',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 6,
                      ),
                      child: Slider(
                        activeColor: Colors.purpleAccent,
                        inactiveColor: Colors.purple.shade100,
                        value: sliderValue,
                        onChanged: (value) {
                          setState(() {
                            sliderValue = value;
                          });
                        },
                        min: 0,
                        max: 20,
                      ),
                    ),
                    Text(
                      '0.0',
                      style: TextStyle(
                          fontSize: 18,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Controls(icon: FontAwesomeIcons.backwardStep),
                    PlayPause_Control(),
                    Controls(icon: FontAwesomeIcons.forwardStep)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget musicNameNDImg(String img, String imgName) {
  return Container(
    alignment: Alignment.topCenter,
    width: 260,
    height: 270,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.white10,
    ),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: Image.asset(img, fit: BoxFit.fitWidth),
        ),
        SizedBox(height: 25),
        Text(
          imgName,
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget lyrics() {
  return Column(
    children: [
      Container(
        alignment: Alignment.topCenter,
        width: 300,
        height: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white10,
        ),
      )
    ],
  );
}
