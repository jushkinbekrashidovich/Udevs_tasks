import 'package:flutter/material.dart';
import 'package:task5_todo_app/theme/app_text_styles.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('Yesterday',style: AppTextStyles.kdescription,),
              ),
              GridView.count(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                primary: true,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  children: [
                    GridItems(
                      image: 'assets/Personal.png',
                      title: 'Personal',
                      taskN: '24 Task',
                    ),
                    GridItems(
                      image: 'assets/work.png',
                      title: 'Work',
                      taskN: '44 Task',
                    ),
                    GridItems(
                      image: 'assets/meeting.png',
                      title: 'Meeting',
                      taskN: '24 Task',
                    ),
                    GridItems(
                      image: 'assets/shopping.png',
                      title: 'Shopping',
                      taskN: '24 Task',
                    ),
                    GridItems(
                      image: 'assets/party.png',
                      title: 'Party',
                      taskN: '24 Task',
                    ),
                    GridItems(
                      image: 'assets/study.png',
                      title: 'Study',
                      taskN: '24 Task',
                    ),
              
                  ]),
            ],
          ),
        ),
      );
  }
}

class GridItems extends StatelessWidget {
  
  GridItems({required this.image, required this.taskN,  required this.title});
  String image;
  String title;
  String taskN;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: 159,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white, boxShadow: [
          BoxShadow(
              color: Color.fromARGB(135, 117, 117, 117),
              blurRadius: 5.0,
              offset: Offset(0.0, 0.75))
        ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
            ),
            Text(title, style: AppTextStyles.kgridtext),
            SizedBox(
              height: 10,
            ),
            Text(
              taskN,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
