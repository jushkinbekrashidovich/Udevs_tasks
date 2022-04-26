import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controller/main/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  final List<Image> imageList = [
    Image.asset('assets/carousel.png'),
    Image.asset('assets/carousel.png'),
    Image.asset('assets/carousel.png'),
    Image.asset('assets/carousel.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctr) {
      return Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                prefixIcon: SizedBox(
                  width: 20,
                  height: 20,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/svg/ic_search.svg',
                      color: const Color(0xffA8A8A8),
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
                filled: true,
                fillColor: const Color(0xffF9F9F9),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  gapPadding: 0,
                  borderSide: BorderSide.none,
                ),
                hintText: 'search'),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  onPageChanged: (index, reason) => controller.setCounter(index),
                  autoPlay: true,
                  enlargeCenterPage: true),
              items: imageList,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.asMap().entries.map((entry) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 2, 2, 2)
                        .withOpacity(controller.current.value == entry.key ? 0.9 : 0.1),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      );
    });
  }
}
