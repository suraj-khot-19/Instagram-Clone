import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/pages/home/screen/home.dart';
import 'package:instagram/widgets/custom_spacer.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  List<Widget> list = [
    Home(),
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
          height: 55,
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
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedIconTheme: const IconThemeData(
          color: Colors.black,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.black54,
        ),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.instagram),
            label: "post",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.rebel),
            label: "reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: "profile",
          ),
        ],
      ),
    );
  }
}
