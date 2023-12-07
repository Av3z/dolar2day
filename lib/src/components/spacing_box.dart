import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SpacingBox extends StatelessWidget {
  double? height;
  double? width;

  SpacingBox({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width,);
  }
}