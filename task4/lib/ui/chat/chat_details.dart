import 'package:flutter/material.dart';
import 'package:task4/theme/app_colors.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('James'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
            children: [
              Image.asset('assets/u1.png', height: 28,),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 10),
                child: Container(
                  height: 84,
                  width: MediaQuery.of(context).size.width*0.7,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 236, 236),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12),topRight: Radius.circular(12))
                  ),
                  child: Text('Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!',
                  maxLines: 5,
                  ),
                ),
              ),
            ],
            ),
            Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, right: 10, left: 10),
                child: Container(
                  height: 84,
                  width: MediaQuery.of(context).size.width*0.7,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 236, 236),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12),topLeft:Radius.circular(12) )
                  ),
                  child: Text('Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!',
                  maxLines: 5,
                  ),
                ),
              ),
               Image.asset('assets/u4.png', height: 28,),
            ],
            ),
            Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset('assets/u1.png', height: 28,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.7,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 236, 236),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12),topRight: Radius.circular(12))
                  ),
                  child: Text('Thank you! That was very helpful!',
                  maxLines: 5,
                  ),
                ),
              ),
            ],
            ),
          ],
        ),
      ),
      
    );
  }
}