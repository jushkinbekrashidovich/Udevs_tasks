import 'package:flutter/material.dart';

import '../../components/image_data_2.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_colors.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemCount: 4,
          separatorBuilder: (context, int) {
            return Divider(
              color: AppColors.grey3,
            );
          },
          itemBuilder: (context, index) {
            return ChatUsers(
              imageData2: imageList[index],
              usertitle: imageList[index],
              usercomments: imageList[index],
            );
          }),
    );
  }
}

class ChatUsers extends StatelessWidget {
  ChatUsers(
      {required this.imageData2,
      required this.usertitle,
      required this.usercomments});
  final ImageData2 imageData2;
  final ImageData2 usertitle;
  final ImageData2 usercomments;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRoutes.chatdetails,
        );
      },
      child: Container(
        width: double.infinity,
        height: 108,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                imageData2.imageAsset,
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 23,
                  ),
                  Text(imageData2.title),
                  SizedBox(
                    height: 6,
                  ),
                  Text(imageData2.comments),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
