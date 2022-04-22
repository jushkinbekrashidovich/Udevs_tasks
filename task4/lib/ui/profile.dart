import 'package:flutter/material.dart';
import 'package:task4/components/buttons.dart';
import 'package:task4/theme/app_text_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name= 'Username';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 14, right: 10, top: 95),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              minRadius: 50,
              maxRadius: 60,
              child: Image.asset('assets/profile.png', fit: BoxFit.fill,),
            ),
            SizedBox(height: 10,),
            Text(
              'Umidaxon',
              style: AppTextStyles.introTitle,
            ),
            Text(
              '@umida12',
              style: AppTextStyles.introSubTitle,
            ),
            SizedBox(height: 15,),
            Button(title: 'Xabar', button_color: Colors.white, text_color: Colors.black, onpressed: (){})
      
          ],
        ),
      ),
      
    );
  }
}