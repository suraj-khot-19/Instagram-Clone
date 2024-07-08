import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/custom_spacer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> list = [
    Center(
      child: Text("home"),
    ),
    Center(
      child: Text("search"),
    ),
    Center(
      child: Text("post"),
    ),
    Center(
      child: Text("reels"),
    ),
    Center(
      child: Text("profile"),
    ),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          height: 40,
          width: 120,
          "assets/insta_font.png",
          fit: BoxFit.contain,
          color: Colors.black,
        ),
        actions: const [
          Badge(
            child: Icon(
              CupertinoIcons.heart,
              weight: 50,
            ),
          ),
          AddHorizontalSpace(width: 25),
          Badge(
            child: Icon(
              Icons.message_outlined,
              weight: 50,
            ),
          ),
          AddHorizontalSpace(width: 25),
        ],
      ),
      body: list[selected],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        backgroundColor: Colors.white,
        elevation: 0,
        selectedIconTheme:
            const IconThemeData(color: Colors.black, weight: 100),
        unselectedIconTheme:
            const IconThemeData(color: Colors.black54, weight: 100),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.add_circled), label: "post"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.videocam_circle), label: "reels"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: "profile"),
        ],
      ),
    );
  }
}
