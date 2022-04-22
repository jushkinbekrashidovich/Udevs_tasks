import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color button_color;
  final Color text_color;
  final Function onpressed;

  Button(
      {required this.title,
      required this.button_color,
      required this.text_color,
      required this.onpressed,
      }
      );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onpressed();
        // Navigator.pushNamed(context, AppRoutes.link);
      },
      child: Container(
        height: 52,
        width: MediaQuery.of(context).size.width*0.9,
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: text_color, fontSize: 13),
        )),
        decoration: BoxDecoration(
            color: button_color,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(6)),
      ),
    );
  }
}