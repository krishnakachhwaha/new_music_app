import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class playerControls extends StatelessWidget {
  const playerControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            button_Controls(icon: FontAwesomeIcons.heart),
            button_Controls(icon: FontAwesomeIcons.repeat),
            button_Controls(icon: FontAwesomeIcons.shuffle),
            button_Controls(icon: Icons.lyrics_outlined),
            Controls(icon: FontAwesomeIcons.backwardStep),
            PlayPause_Control(),
            Controls(icon: FontAwesomeIcons.forwardStep),
          ]),
    );
  }
}

class button_Controls extends StatelessWidget {
  final IconData icon;

  const button_Controls({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return Icon(
      icon,
      color: Colors.white,
      size: 20,
    );
  }
}

class PlayPause_Control extends StatefulWidget {
  const PlayPause_Control({super.key});

  @override
  State<PlayPause_Control> createState() => _PlayPause_ControlState();
}

class _PlayPause_ControlState extends State<PlayPause_Control> {
  bool playing = false; //at the beginning we are not playing any song
  IconData playBtn =
      FontAwesomeIcons.play; //the main state of the play btn icon
  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: mqw * 0.3,
          height: mqh * 0.3,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blueAccent,
                    Colors.blueAccent,
                    Colors.pinkAccent,
                    Colors.pink,
                  ])),
        ),
        Container(
            width: mqw * 0.24,
            height: mqh * 0.1,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black),
            child: IconButton(
              splashRadius: 1,
              icon: Icon(playBtn, size: 30),
              onPressed: () {
                if (!playing) {
                  setState(() {
                    playBtn = FontAwesomeIcons.pause;
                    playing = true;
                  });
                } else {
                  setState(() {
                    playBtn = FontAwesomeIcons.play;
                    playing = false;
                  });
                }
              },
              color: Colors.white,
            )),
      ],
    );
  }
}

class Controls extends StatelessWidget {
  final IconData icon;

  const Controls({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    return Container(
      width: mqw * 0.15,
      height: mqh * 0.15,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white10),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
