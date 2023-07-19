// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyansansar/const/colors.dart';
import 'package:gyansansar/screens/forgetpw.dart';
import 'package:gyansansar/screens/signup.dart';
import 'package:gyansansar/settings/app_size.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> key = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(AppSize.pagePadding),
              child: Form(
                key: key,
                child: Column(
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
                          hintText: 'Email',
                          suffixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5)),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => value!.isEmpty ? 'required' : null,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });

                              print(passwordVisible);
                            },
                          ),
                          border: const OutlineInputBorder(),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5)),
                      keyboardType: TextInputType.text,
                      validator: (value) => value!.isEmpty ? 'required' : null,
                      obscureText: !passwordVisible,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                              ),
                              onPressed: () {
                                Navigator.popAndPushNamed(context, "home");
                                // if (key.currentState!.validate()) {
                                //   // Map data = {
                                //   //   "email": email.text,
                                //   //   "password": password.text,
                                //   // };
                                //   // RemoteService.login(data);
                                // }
                              },
                              child: const Text(
                                "SIGN IN",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: textColor,
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const RegisterView());
                      },
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          children: [
                            TextSpan(text: 'Are you new? '),
                            TextSpan(
                                text: 'Register',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => const ForgotPasswordView());
                      },
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          children: [
                            TextSpan(text: 'Forget Passsword? '),
                            TextSpan(
                                text: 'Click Here',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue)),
                          ],
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
