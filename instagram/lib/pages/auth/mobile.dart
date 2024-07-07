import 'package:flutter/material.dart';
import 'package:instagram/pages/auth/email.dart';
import 'package:instagram/utils/color_grediants.dart';
import 'package:instagram/widgets/custom_button.dart';
import 'package:instagram/widgets/custom_spacer.dart';
import 'package:instagram/widgets/custom_text_form_feild.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  TextEditingController mobileController = TextEditingController();
  @override
  void dispose() {
    mobileController.dispose();
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
                    "What's your mobile number?",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const AddVerticleSpace(height: 8),
                  const Text(
                    "Enter the mobile number on which you can be contacted.No one will see this on your profile.",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600),
                  ),
                  const AddVerticleSpace(height: 20),
                  Customtextformfeild(
                    controller: mobileController,
                    hintText: "Mobile number",
                  ),
                  const AddVerticleSpace(height: 8),
                  const Text(
                    "You may receive WhatsaApp and SMS notification from us for security and login purposes.",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600),
                  ),
                  const AddVerticleSpace(height: 20),
                  const Custombutton(title: "Next"),
                  const AddVerticleSpace(height: 20),
                  Custombutton(
                    title: "Sign up with email address",
                    isBorder: true,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          mobileController.clear();
                          return const Email();
                        },
                      ),
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        mobileController.clear();
                        Navigator.pop(context);
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
