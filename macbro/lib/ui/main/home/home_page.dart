import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:macbro/core/theme/app_colors.dart';
import 'package:macbro/core/theme/app_text_style.dart';

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
                  onPageChanged: (index, reason) =>
                      controller.setCounter(index),
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
                    color: Color.fromARGB(255, 2, 2, 2).withOpacity(
                        controller.current.value == entry.key ? 0.9 : 0.1),
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'News',
                      style: AppTextStyles.bannerDetailTitle,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 4,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: 3,
                shrinkWrap: true,
                primary: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: 165.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 166,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite_border),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 10,
                                  child: Image.asset('assets/item.png')),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const[
                                Text('Iphone 13 '),
                                Text('9 884 000 uzs', style: TextStyle(color: Colors.blue),),
                              ],
                            ),
                          ),
                        // const  Expanded(
                        //   flex: 1,
                        //   child:  Padding(
                        //     padding: EdgeInsets.only(top: 7),
                        //     child: Text('Iphone 13 '))),
                        //  const Expanded(
                        //    flex: 2,
                        //    child:  Padding(
                        //      padding: EdgeInsets.only(top: 0),
                        //      child: Text('9 884 000 uzs'),
                        //    )),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            Row(
              children: [
                Text('Categories',style: AppTextStyles.bannerDetailTitle,),
        
              ],
            ),
            Flexible(
              flex: 1,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemBuilder: (context, index){
                  return Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.white,
                       
                     ),
                     child: Column(
                       children: [
                         Image.asset('assets/item2.png'),
                         Text('Apple'),
                       ],
                     ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
