import 'package:flutter/material.dart';
import 'package:instagram/pages/auth/mobile.dart';
import 'package:instagram/utils/color_grediants.dart';
import 'package:instagram/widgets/custom_button.dart';
import 'package:instagram/widgets/custom_insta_logo.dart';
import 'package:instagram/widgets/custom_text_form_feild.dart';
import 'package:instagram/widgets/custom_spacer.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(gradient: loginPageGrediant),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AddVerticleSpace(height: 25),
                  const Text(
                    "English (India)",
                    style: TextStyle(color: Colors.white),
                  ),
                  const AddVerticleSpace(height: 80),
                  const CustomInstaLogo(),
                  const AddVerticleSpace(height: 80),
                  Customtextformfeild(
                      controller: userNameController,
                      hintText: "Username, email address or mobile number"),
                  const AddVerticleSpace(height: 16),
                  Customtextformfeild(
                      controller: passwordController, hintText: "Password"),
                  const AddVerticleSpace(height: 16),
                  const Custombutton(
                    title: "Log In",
                  ),
                  const AddVerticleSpace(height: 16),
                  const Text(
                    "Forgotten Password?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const AddVerticleSpace(height: 225),
                  Custombutton(
                      title: "Create new account",
                      isBorder: true,
                      onTap: () {
                        userNameController.clear();
                        passwordController.clear();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Mobile(),
                            ));
                      }),
                  const AddVerticleSpace(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/meta.png",
                        height: 16,
                        width: 20,
                        fit: BoxFit.contain,
                      ),
                      const AddHorizontalSpace(width: 5),
                      const Text(
                        "Meta",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
