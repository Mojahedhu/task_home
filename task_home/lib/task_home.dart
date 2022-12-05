import 'package:flutter/material.dart';
import 'package:task_home/component.dart';

class TaskHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CircleImage(),
        actions: [
          ButtonA(image: 'bell.png'),
          ButtonA(
            image: image,
          )
        ],
      ),
    );
  }
}
