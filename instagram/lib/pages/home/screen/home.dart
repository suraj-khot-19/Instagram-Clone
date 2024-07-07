import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          "https://static.cdninstagram.com/rsrc.php/v3/yM/r/8n91YnfPq0s.png",
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
