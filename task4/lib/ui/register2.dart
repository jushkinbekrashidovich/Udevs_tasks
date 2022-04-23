import 'package:flutter/material.dart';
import 'package:task4/components/buttons.dart';

import '../routes/app_routes.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class RegisterPage2 extends StatefulWidget {
  @override
  State<RegisterPage2> createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
 TextEditingController controller = TextEditingController();

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
                controller: controller,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  border: OutlineInputBorder(),
                  hintText: 'bek_0280',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Button(
                title: 'Ro\'yxatdan o\'tish',
                button_color: Colors.black,
                text_color: Colors.white,
                onpressed: () {
                   Navigator.of(context).pushNamed(
                        AppRoutes.home,
                        //controller.text.toString()

                      );
                // Navigator.of(context).pushNamed(controller.text.toString());
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
                  'Ro\’yxat o’tish tugmasini bosish orqali siz photogram ijtimoiy tarog’ining Foydalanish shartlari va Xavfsizlik qoidalariga rozilik bildirgan bo’lasiz.',
                  maxLines: 3,
                  style: TextStyle(fontSize: 13),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
