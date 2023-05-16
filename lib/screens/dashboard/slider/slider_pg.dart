import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slider_pg extends StatefulWidget {
  const slider_pg({Key? key}) : super(key: key);

  @override
  State<slider_pg> createState() => _slider_pgState();
}

class _slider_pgState extends State<slider_pg> {
  List imageList = [
    {
      "id": 1,
      "image_path": 'assets/images/end-of-decade-songs-of-the-2010s-lede.webp'
    },
    {"id": 2, "image_path": 'assets/images/One+Song+-+o+card.png'},
    {"id": 3, "image_path": 'assets/images/vinyl+box+set+-+my+songs.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          InkWell(
            onTap: () {},
            child: CarouselSlider(
              items: imageList
                  .map(
                    (item) => Image.asset(
                      item['image_path'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
          )
        ],
      ),
    );
  }
}
