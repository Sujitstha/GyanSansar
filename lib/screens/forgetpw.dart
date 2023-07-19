import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyansansar/const/colors.dart';
import 'package:gyansansar/const/text.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    GlobalKey<FormState> key = GlobalKey();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title:
              customText('Forgot Password', 16, FontWeight.normal, textColor),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Form(
                key: key,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "images/logo.jpg",
                      width: Get.size.width * .99,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: email,
                      decoration: const InputDecoration(
                        labelText: "Enter your email",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) => value!.isEmpty ? 'required' : null,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                        ),
                        onPressed: () {
                          // Api.forgotPassword(email.text);
                          Navigator.popAndPushNamed(context, "tokanpage");
                        },
                        child: const Text(
                          "Reset",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
