import 'package:flutter/material.dart';
import 'package:task4/components/buttons.dart';

import '../routes/app_routes.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class LoginPage extends StatelessWidget {
   TextEditingController controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
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
              Text('KIRISH', style: AppTextStyles.body1,),
              SizedBox(
                height: 35,
              ),
              TextField(
                controller: controller,
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
                title: 'KIRISH',
                button_color: Colors.black,
                text_color: Colors.white,
                onpressed: () {
                  Navigator.of(context).pushNamed(
                        AppRoutes.home,

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
