import 'dart:ui';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/screens/play%20screen/PopUpMenu.dart';
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
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 20.sp, sigmaY: 20.sp),
              child: Image.asset(
                'assets/images/download.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 30.sp,
                      )),
                  popUpMenu()
                ],
              ),
              SizedBox(
                height: 270.h,
                width: 310.w,
                child: FlipCard(
                  front: musicNameNDImg(widget.img, widget.imgName),
                  back: lyrics(context),
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button_Controls(icon: FontAwesomeIcons.heart),
                  button_Controls(icon: FontAwesomeIcons.repeat),
                  button_Controls(icon: FontAwesomeIcons.shuffle),
                  button_Controls(icon: Icons.lyrics_outlined),
                ],
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '0.0',
                    style: TextStyle(fontSize: 18.sp, color: Colors.white),
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 6.h,
                    ),
                    child: SizedBox(
                      width: 300.w,
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
                  ),
                  Text(
                    '0.0',
                    style: TextStyle(fontSize: 18.sp, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 25.h),
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
        ],
      ),
    );
  }
}

Widget musicNameNDImg(String img, String imgName) {
  return Container(
    alignment: Alignment.topCenter,
    width: 260.w,
    height: 240.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.sp),
      color: Colors.white10,
    ),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.sp),
              topRight: Radius.circular(30.sp)),
          child: Image.asset(img, fit: BoxFit.fitWidth),
        ),
        SizedBox(height: 30.h),
        Text(
          imgName,
          style: TextStyle(
              fontSize: 25.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget lyrics(BuildContext context) {
  return Container(
    alignment: Alignment.topCenter,
    width: 330.w,
    height: 300.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.sp),
      color: Colors.white10,
    ),
    child: Align(
      alignment: Alignment.bottomRight,
      child: IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => lyrics(context)));
        },
        icon: Icon(Icons.fullscreen),
        iconSize: 25.sp,
        color: Colors.white,
      ),
    ),
  );
}
