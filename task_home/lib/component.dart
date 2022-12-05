import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CircleImage() => CircleAvatar(
      radius: 25.0,
      backgroundImage: AssetImage(
        'image/download.jfif',
      ),
    );
//---------------------------------------
Widget ButtonA({required String image}) => Container(
    width: 40,
    decoration: BoxDecoration(
      color: Colors.grey,
      //borderRadius: BorderRadius.circular(30),
      shape: BoxShape.circle,
    ),
    child: TextButton(
      onPressed: () {},
      child: Image(
        image: AssetImage(
          'image/$image',
        ),
        height: 30,
        width: 30,
      ),
    ));
