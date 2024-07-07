import 'package:flutter/material.dart';

class Customtextformfeild extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isWhite;
  const Customtextformfeild(
      {super.key,
      required this.controller,
      required this.hintText,
      this.isWhite = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
          color: isWhite ? Colors.black45 : Colors.white70,
          fontWeight: FontWeight.w500),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade700,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            width: 1,
            color:
                isWhite ? Colors.grey : const Color.fromARGB(255, 0, 90, 135),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            width: 1,
            color:
                isWhite ? Colors.grey : const Color.fromARGB(255, 0, 90, 135),
          ),
        ),
        filled: true,
        fillColor:
            isWhite ? Colors.white70 : const Color.fromARGB(255, 6, 38, 53),
      ),
    );
  }
}
