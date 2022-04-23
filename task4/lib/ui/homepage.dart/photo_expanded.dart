import 'package:flutter/material.dart';

class PhotoExpandedPage extends StatelessWidget {
  const PhotoExpandedPage({ Key? key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset('assets/i1.png', fit: BoxFit.fill,)
      ],
      
    );
  }
}