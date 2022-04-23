import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task4/ui/add.dart';
import 'package:task4/ui/chat/chat.dart';
import 'package:task4/ui/profile.dart';
import 'package:task4/ui/search/search.dart';

import '../../components/image_data.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_text_styles.dart';
import '../bodies/home_body.dart';

class PhotogramPage extends StatefulWidget {
  @override
  State<PhotogramPage> createState() => _PhotogramPageState();
}

class _PhotogramPageState extends State<PhotogramPage> {
  //  Navigator.of(context).pushNamed(
  //                       AppRoutes.home,

  //                     );

  int _currentIndex = 0;
  
  List<Widget> bodyList = [
    HomeBody(),
    SearchPage(),
    AddPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.red,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.black,
        onTap:(index){
          setState(() {
            _currentIndex=index;
          });

        },
      ),
    );
  }
}



