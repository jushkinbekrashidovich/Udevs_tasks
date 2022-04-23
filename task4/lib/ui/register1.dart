import 'package:flutter/material.dart';
import 'package:task4/components/buttons.dart';
import 'package:task4/theme/app_colors.dart';
import 'package:task4/theme/app_text_styles.dart';

import '../routes/app_routes.dart';

class RegisterPage1 extends StatelessWidget {
  const RegisterPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ImageIcon(
              AssetImage(
                'assets/Union.png',
              ),
              color: Colors.black,
            )),
            
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ro\'yxatdan o\'tish',
                style: AppTextStyles.body1,
              ),
              SizedBox(
                height: 35,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  border: OutlineInputBorder(),
                  hintText: 'username@gmail.com',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Button(
                title: 'Keyingisi',
                button_color: Colors.black,
                text_color: Colors.white,
                onpressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.register2,
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Center(
                    child: Text(
                  'Google bilan kirish',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 13),
                )),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.amber),
                    borderRadius: BorderRadius.circular(6)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
