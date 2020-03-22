import 'package:flutter/material.dart';

import 'image_animation.dart';

class LoadingPage extends StatelessWidget {
  Map<int, Image> imageCaches = {
    1: Image(image: AssetImage("images/lloding1_w.png"), width: 80.0),
    2: Image(image: AssetImage("images/lloding2_w.png"), width: 80.0),
    3: Image(image: AssetImage("images/lloding3_w.png"), width: 80.0),
    4: Image(image: AssetImage("images/lloding4_w.png"), width: 80.0),
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: ImageAnimation(imageCaches, 80, 80, Colors.white),
      ),
    );
  }
}
