import 'package:flutter/material.dart';
import 'package:task4/components/image_dogs.dart';
import 'package:task4/routes/app_routes.dart';
import 'package:task4/theme/app_text_styles.dart';

import '../../theme/app_constants.dart';

class PhotoDetailsPage extends StatefulWidget {
  const PhotoDetailsPage({Key? key}) : super(key: key);

  @override
  State<PhotoDetailsPage> createState() => _PhotoDetailsPageState();
}

class _PhotoDetailsPageState extends State<PhotoDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final ImageDogs model =
        ModalRoute.of(context)!.settings.arguments as ImageDogs;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            model.imageAsset,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 40,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'assets/u4.png',
                    height: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      'Angelo Pantazis',
                      style: AppTextStyles.username,
                    ),
                    Text(
                      '@angelopantazis',
                      style: AppTextStyles.userlink,
                    ),
                  ],
                ),
                SizedBox(
                  width: 120,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.search,
                        );
                  },
                  icon: Icon(Icons.cancel_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
