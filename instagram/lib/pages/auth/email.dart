import 'package:flutter/material.dart';
import 'package:instagram/pages/auth/login.dart';
import 'package:instagram/utils/color_grediants.dart';
import 'package:instagram/widgets/custom_button.dart';
import 'package:instagram/widgets/custom_spacer.dart';
import 'package:instagram/widgets/custom_text_form_feild.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(gradient: loginPageGrediant),
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 20,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 80, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What's your email address?",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const AddVerticleSpace(height: 8),
                  const Text(
                    "Enter the email address at which you can be contacted. No one will see this on yyour profile.",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600),
                  ),
                  const AddVerticleSpace(height: 20),
                  Customtextformfeild(
                    controller: emailController,
                    hintText: "Email address",
                  ),
                  const AddVerticleSpace(height: 20),
                  const Custombutton(title: "Next"),
                  const AddVerticleSpace(height: 20),
                  Custombutton(
                    title: "Sign up with Mobile Number",
                    isBorder: true,
                    onTap: () => Navigator.pop(context),
                  ),
                  const Spacer(),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            emailController.clear();
                            return const Login();
                          },
                        ));
                      },
                      child: const Text(
                        "I already have an account",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
