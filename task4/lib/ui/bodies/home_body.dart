import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../components/image_data.dart';
import '../../theme/app_text_styles.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 90, right: 17, left: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Photogram',
              style: AppTextStyles.body1,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: MasonryGridView.count(
                itemCount: 8,
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                itemBuilder: (context, index) {
                  return ImageContainer(
                    imageData: imageList[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 140,
            ),
          ],
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({required this.imageData});

  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imageData.imageAsset,
      ),
    );
  }
}