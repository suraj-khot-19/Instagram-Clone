import 'package:flutter/material.dart';
import 'package:instagram/utils/color_grediants.dart';
import 'package:instagram/widgets/custom_button.dart';
import 'package:instagram/widgets/custom_spacer.dart';
import 'package:instagram/widgets/custom_text_form_feild.dart';

class MobileCode extends StatefulWidget {
  final String mob;
  const MobileCode({super.key, required this.mob});

  @override
  State<MobileCode> createState() => _MobileCodeState();
}

class _MobileCodeState extends State<MobileCode> {
  TextEditingController code = TextEditingController();
  @override
  void dispose() {
    code.dispose();
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
                onTap: () {
                  code.clear();
                  Navigator.pop(context);
                },
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
                    "Enter the confirmation code",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const AddVerticleSpace(height: 8),
                  Text(
                    "To confirm your account, enter the 6-degit code. that we sent to ${widget.mob}",
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600),
                  ),
                  const AddVerticleSpace(height: 20),
                  Customtextformfeild(
                    controller: code,
                    hintText: "Confirmation code",
                  ),
                  const AddVerticleSpace(height: 20),
                  const Custombutton(
                    title: "Next",
                  ),
                  const AddVerticleSpace(height: 20),
                  Custombutton(
                    title: "I didn't receive the code",
                    isBorder: true,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          content: Text(
                              "Please check in spam folder or check email once")));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
