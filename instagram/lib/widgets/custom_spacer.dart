import 'package:flutter/material.dart';

class AddVerticleSpace extends StatelessWidget {
  final double height;
  const AddVerticleSpace({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class AddHorizontalSpace extends StatelessWidget {
  final double width;

  const AddHorizontalSpace({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
