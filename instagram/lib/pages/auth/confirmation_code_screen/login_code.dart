import 'package:flutter/material.dart';
import 'package:instagram/pages/save_login_info.dart';
import 'package:instagram/widgets/custom_button.dart';
import 'package:instagram/widgets/custom_spacer.dart';
import 'package:instagram/widgets/custom_text_form_feild.dart';

class LoginCode extends StatefulWidget {
  const LoginCode({
    super.key,
  });

  @override
  State<LoginCode> createState() => _LoginCodeState();
}

class _LoginCodeState extends State<LoginCode> {
  TextEditingController code = TextEditingController();
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
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 35,
                left: 11,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "The • Instagram",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    const AddVerticleSpace(height: 8),
                    const Text(
                      "Check your WhatsApp messages",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const AddVerticleSpace(height: 8),
                    const Text(
                      "Enter the code that we sent to your WhatsApp account.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const AddVerticleSpace(height: 10),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/password.jpg",
                            ),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    const AddVerticleSpace(height: 10),
                    const Row(
                      children: [
                        Icon(Icons.restore_outlined),
                        AddHorizontalSpace(width: 5),
                        Text(
                          "We can send a new code in 00:58",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    const AddVerticleSpace(height: 15),
                    Customtextformfeild(
                      controller: code,
                      hintText: "Code",
                      isWhite: true,
                    ),
                    const AddVerticleSpace(height: 15),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Color.fromARGB(255, 0, 52, 94),
                          size: 25,
                        ),
                        AddHorizontalSpace(width: 5),
                        Text(
                          "Trust this device and skip this step from now\non",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const AddVerticleSpace(height: 15),
                    Custombutton(
                      title: "Continue",
                      onTap: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SaveLoginInfo(),
                        ),
                        (route) => false,
                      ),
                    ),
                    const AddVerticleSpace(height: 15),
                    const Custombutton(
                      title: "Try Another Way",
                      isBorder: true,
                      isWhite: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
