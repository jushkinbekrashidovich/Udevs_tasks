import 'package:flutter/material.dart';
import 'package:task4/routes/app_routes.dart';
import 'package:task4/theme/app_text_styles.dart';

import '../components/buttons.dart';

class LoggedOutPage extends StatefulWidget {
  const LoggedOutPage({Key? key}) : super(key: key);

  @override
  State<LoggedOutPage> createState() => _LoggedOutPageState();
}

class _LoggedOutPageState extends State<LoggedOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                'photogram',
                style: AppTextStyles.body,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Image.asset('assets/Vector.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'Quantic Jamoasi',
                            ),
                            Text('Photogram beta 1.0'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Button(
                            title: 'KIRISH',
                            text_color: Colors.black,
                            button_color: Colors.white,
                            onpressed: () {
                              Navigator.of(context).pushNamed(
                                AppRoutes.login,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          flex: 2,
                          child: Button(
                            title: 'RO\'YXATDAN O\'TISH',
                            text_color: Colors.white,
                            button_color: Colors.black,
                            onpressed: () {
                              Navigator.of(context).pushNamed(
                                AppRoutes.register1,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
