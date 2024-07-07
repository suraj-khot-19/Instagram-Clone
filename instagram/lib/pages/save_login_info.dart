import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/pages/home/screen/home.dart';
import 'package:instagram/widgets/custom_button.dart';
import 'package:instagram/widgets/custom_spacer.dart';

class SaveLoginInfo extends StatefulWidget {
  const SaveLoginInfo({super.key});

  @override
  State<SaveLoginInfo> createState() => _SaveLoginInfoState();
}

class _SaveLoginInfoState extends State<SaveLoginInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 159, 191, 193),
              Color.fromARGB(255, 110, 114, 132),
            ],
            stops: [0.2, 0.8],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 100, bottom: 20),
            child: Column(
              children: [
                const Text(
                  "Save your login info",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const AddVerticleSpace(height: 10),
                const Text(
                  "We'll save the login info for the.khot, so you won't\n        need to enter it next time you login",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                const AddVerticleSpace(height: 40),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      shape: BoxShape.circle),
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/ram.jpeg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const Spacer(),
                Custombutton(
                  title: "Save",
                  onTap: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                    (route) => false,
                  ),
                ),
                const AddVerticleSpace(height: 10),
                Custombutton(
                  title: "Not Now",
                  isBorder: true,
                  isWhite: true,
                  onTap: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                    (route) => false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
