import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task4/components/buttons.dart';
import 'package:task4/theme/app_colors.dart';
import 'package:task4/theme/app_text_styles.dart';

import '../components/image_data_1.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String title = "userlink";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 14, right: 10, top: 95, ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                minRadius: 50,
                maxRadius: 60,
                child: Image.asset(
                  'assets/profile.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "username",
                style: AppTextStyles.introTitle,
              ),
              Text(
                title,
                style: AppTextStyles.introSubTitle,
              ),
              SizedBox(
                height: 20,
              ),
              Button(
                  title: 'Xabar',
                  button_color: Colors.white,
                  text_color: Colors.black,
                  onpressed: () {}),
              SizedBox(
                height: 17,
              ),
               Container(
                height: MediaQuery.of(context).size.height,
                child: MasonryGridView.count(
                  itemCount: imageList.length,
                  shrinkWrap: false,
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                  itemBuilder: (context, index){
                    return ImageContainer1(
                      imageData1: imageList[index],
                    );
                  },
                ),
              ),
              SizedBox(height:20,),
              
              Button(
                  title: 'Ko\'proq ko\'rsatish',
                  button_color: Colors.white,
                  text_color: Colors.black,
                  onpressed: () {}),
                    SizedBox(height:20,)
            ],
          ),
        ),
      ),
    );
  }
}

class ImageContainer1 extends StatelessWidget {
  const ImageContainer1({required this.imageData1});

  final ImageData1 imageData1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imageData1.imageAsset,
      ),
    );
  }
}