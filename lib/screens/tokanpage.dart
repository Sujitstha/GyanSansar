import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../const/colors.dart';
import '../const/text.dart';

class TokanPage extends StatefulWidget {
  const TokanPage({Key? key}) : super(key: key);

  @override
  State<TokanPage> createState() => _TokanPageState();
}

class _TokanPageState extends State<TokanPage> {
  @override
  Widget build(BuildContext context) {
    // TextEditingController email = TextEditingController();
    GlobalKey<FormState> key = GlobalKey();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: customText('Reset Password', 16, FontWeight.normal, textColor),
          elevation: 0.2,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Form(
                key: key,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const OTPTextField(
                      length: 4,
                      width: 800,
                      fieldWidth: 80,
                      style: TextStyle(fontSize: 18),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                      ),
                      onPressed: () {
                        // Api.forgotPassword(email.text);
                      },
                      child: const Text(
                        "Verify",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: textColor,
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
