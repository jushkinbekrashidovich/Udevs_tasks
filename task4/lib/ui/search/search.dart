import 'package:flutter/material.dart';
import 'package:task4/components/buttons.dart';
import 'package:task4/components/image_dogs.dart';
import 'package:task4/theme/app_colors.dart';
import 'package:task4/theme/app_text_styles.dart';

import '../../routes/app_routes.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, right: 10, left: 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            Text(
              'Izlash',
              style: AppTextStyles.body1,
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2)),
                border: OutlineInputBorder(),
                hintText: 'kuchukcha',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'BARCHA NATIJALAR',
              style: AppTextStyles.ktitle,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0),
                  itemCount: imageList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return DogsImage(imageData: imageList[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class DogsImage extends StatefulWidget {
  const DogsImage({required this.imageData});

  final ImageDogs imageData;

  @override
  State<DogsImage> createState() => _DogsImageState();
}

class _DogsImageState extends State<DogsImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await Navigator.of(context).pushNamed(
          AppRoutes.photodetails,
          arguments: imageList[0],
        );
      },
      child: Container(
        child: Image.asset(
          widget.imageData.imageAsset,
        ),
      ),
    );
  }
}
