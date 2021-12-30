import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DestinationCarousel extends StatefulWidget {
  const DestinationCarousel({Key? key}) : super(key: key);

  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  final String imagePath = 'assets/images/aboutUs';

  final CarouselController _controller = CarouselController();

  final List _isSelected = [true, false, false, false, false, false, false];

  final List<String> images = [
    'assets/images/aboutUs/1.jpg',
    'assets/images/aboutUs/2.jpg',
    'assets/images/aboutUs/3.jpg',
    'assets/images/aboutUs/4.jpg',
    'assets/images/aboutUs/5.jpg',
    'assets/images/aboutUs/6.jpg',
  ];

  // final List<String> places = [
  //   'ASIA',
  //   'AFRICA',
  //   'EUROPE',
  //   'SOUTH AMERICA',
  //   'AUSTRALIA',
  //   'ANTARCTICA',
  // ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Stack(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              enlargeCenterPage: true,
              aspectRatio: 18 / 8,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  for (int i = 0; i < imageSliders.length; i++) {
                    if (i == index) {
                      _isSelected[i] = true;
                    } else {
                      _isSelected[i] = false;
                    }
                  }
                });
              }),
          carouselController: _controller,
        ),
      ],
    );
  }
}
