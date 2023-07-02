import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slider_pg extends StatefulWidget {
  const slider_pg({Key? key}) : super(key: key);

  @override
  State<slider_pg> createState() => _slider_pgState();
}

class _slider_pgState extends State<slider_pg> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
            items: [
              Image.asset(
                'assets/images/song1.jpeg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/song2.jpeg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/song3.jpeg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/song4.jpeg',
                fit: BoxFit.cover,
              ),
            ],
            options: CarouselOptions(
              height: 180,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              autoPlayAnimationDuration: Duration(milliseconds: 500),
            ))
      ],
    );
  }
}
