import 'package:flutter/material.dart';

class ImageData2 {
  final String imageAsset;
 final String title;
 final String comments;

  const ImageData2({
    required this.title,
    required this.comments,
    required this.imageAsset,
  });
}

const imageList = [
  ImageData2(
    imageAsset: 'assets/u1.png',
    title: 'James',
    comments: 'Thank you! That was very helpful!',
  ),
  ImageData2(
    imageAsset: 'assets/u2.png',
    title: 'Will Kenny',
    comments: 'I know... I’m trying to get the funds.',
  ),
  ImageData2(
    imageAsset: 'assets/u3.png',
    title: 'Beth Williams',
    comments: 'I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm...',
  ),
  ImageData2(
    imageAsset: 'assets/u4.png',
     title: 'Rev Shawn',
     comments: 'Wanted to ask if you’re available for a portrait shoot next week.',
  ),


  
];
// const titlelist = [
//   UserTitle(
//     title: 'James',
//   ),
//   UserTitle(
//     title: 'Will Kenny',
//   ),
//   UserTitle(
//     title: 'Beth Williams',
//   ),
//   UserTitle(
//     title: 'Rev Shawn',
//   ),
// ];

// class UserTitle {
//   final String title;

//  const  UserTitle({required this.title});

// }


// class UserComments {
//   final String comments;

//  const UserComments({required this.comments});

// }
// const commentlist = [
//   UserComments(
//     comments: 'Thank you! That was very helpful!',
//   ),
//   UserComments(
//     comments: 'I know... I’m trying to get the funds.',
//   ),
//   UserComments(
//     comments: 'I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm...',
//   ),
//   UserComments(
//     comments: 'Wanted to ask if you’re available for a portrait shoot next week.',
//   ),
// ];