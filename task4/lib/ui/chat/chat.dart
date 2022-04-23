import 'package:flutter/material.dart';
import 'package:task4/components/image_data_2.dart';
import 'package:task4/theme/app_colors.dart';

import '../bodies/chat_body.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text('Suhbatlar'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.search, size: 27,),
          )
        ],
      ),
      body: ChatBody(),
    );
  }
}

