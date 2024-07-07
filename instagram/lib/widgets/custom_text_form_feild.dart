import 'package:flutter/material.dart';

class Customtextformfeild extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const Customtextformfeild(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade700,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Color.fromARGB(255, 0, 90, 135),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Color.fromARGB(255, 0, 90, 135),
          ),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 6, 38, 53),
      ),
    );
  }
}
