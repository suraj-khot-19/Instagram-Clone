import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String title;
  final bool isBorder;
  final VoidCallback? onTap;
  const Custombutton(
      {super.key, required this.title, this.isBorder = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: isBorder
              ? Colors.transparent
              : const Color.fromARGB(255, 0, 140, 255),
          borderRadius: BorderRadius.circular(50),
          border: isBorder
              ? Border.all(
                  color: const Color.fromARGB(255, 0, 140, 255),
                )
              : null,
        ),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
              color: isBorder ? Colors.white70 : Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18),
        )),
      ),
    );
  }
}
