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
      "image_path":
          'https://www.baldandbeards.com/wp-content/uploads/drake-haircut.jpg'
    },
    {
      "id": 2,
      "image_path":
          'https://www.baldandbeards.com/wp-content/uploads/drake-haircut.jpg'
    },
    {
      "id": 3,
      "image_path":
          'https://www.baldandbeards.com/wp-content/uploads/drake-haircut.jpg'
    },
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            items: imageList
                .map(
                  (item) => Image.network(
                    item['image_path'],
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                )
                .toList(),
            carouselController: carouselController,
            options: CarouselOptions(
                scrollPhysics: BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          )
        ],
      ),
    );
  }
}
