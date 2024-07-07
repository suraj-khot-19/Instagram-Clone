import 'package:flutter/material.dart';

class CustomInstaLogo extends StatelessWidget {
  const CustomInstaLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 75,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage(
            "assets/insta.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
