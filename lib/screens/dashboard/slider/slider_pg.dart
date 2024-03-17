import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../models/music_model.dart';

class slider_pg extends StatefulWidget {
  List<MusicDataResponse> musicList;
  int index;

  slider_pg({Key? key, required this.musicList, required this.index})
      : super(key: key);

  @override
  State<slider_pg> createState() => _slider_pgState();
}

class _slider_pgState extends State<slider_pg> {
  @override
  Widget build(BuildContext context) {
    final mqw = MediaQuery.of(context).size.width;
    final mqh = MediaQuery.of(context).size.height;
    return CarouselSlider(
        items: [
          Stack(
            children: [
              Image.network(
                ' ${widget.musicList[widget.index].image}',
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                width: mqw * 0.5,
                height: mqh * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.orange,
                          Colors.yellow,
                        ])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Dark Side',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Muse-Simulation Theory',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 15,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Stack(
            children: [
              Image.network(
                ' ${widget.musicList[widget.index].image}',
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                width: mqw * 0.5,
                height: mqh * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.orange,
                          Colors.yellow,
                        ])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Dark Side',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Muse-Simulation Theory',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 15,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Stack(
            children: [
              Image.network(
                ' ${widget.musicList[widget.index].image}',
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                width: mqw * 0.5,
                height: mqh * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.orange,
                          Colors.yellow,
                        ])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Dark Side',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Muse-Simulation Theory',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 15,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
        options: CarouselOptions(
          height: 130,
          autoPlay: true,
          autoPlayCurve: Curves.easeInOut,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
        ));
  }
}
