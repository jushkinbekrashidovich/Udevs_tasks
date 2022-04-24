import 'package:flutter/material.dart';
import 'package:task5_todo_app/theme/app_colors.dart';
import 'package:task5_todo_app/theme/app_text_styles.dart';
import 'package:task5_todo_app/ui/bodies/category.dart';

import 'bodies/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<Widget> bodylist = [
    HomeBody(),
    CategoriesBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                AppColors.appColor,
                AppColors.appColor1,
                AppColors.appColor2
              ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hello Brenda!',
                          style: AppTextStyles.kusertext1,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.appColor1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 106,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Text(
                                  'Today Reminder',
                                  style: AppTextStyles.kappbartext1,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.cancel,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        Flexible(
                            flex: 8,
                            child: Padding(
                                padding: EdgeInsets.only(left: 150),
                                child: Image.asset('assets/bell.png'))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bodylist[_currentIndex],
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view,
              size: 30,
            ),
            label: 'Task',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        backgroundColor: Color(0xFFEC35B0),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 50,
        ),
        onPressed: () {},
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height*0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
            ),
          );
        },
      ),
    );
  }
}
  // Container(
              //     width: 54,
              //     height: 54,
              //     decoration: BoxDecoration(
              //       color: Color(0xFFEC35B0),
              //       shape: BoxShape.circle,
              //     ),
              //     child: Icon(
              //       Icons.close,
              //       color: Colors.white,
              //       size: 56,
              //     )),