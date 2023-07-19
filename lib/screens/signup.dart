import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gyansansar/settings/app_size.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> key = GlobalKey<FormState>();
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController mobile = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Register User"),
        ),
        body: SingleChildScrollView(
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
                    controller: name,
                    decoration: const InputDecoration(
                        hintText: 'Full Name',
                        suffixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                    keyboardType: TextInputType.text,
                    validator: (value) => value!.isEmpty ? 'required' : null,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: mobile,
                    decoration: const InputDecoration(
                        hintText: 'Phone',
                        suffixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                    keyboardType: TextInputType.text,
                    validator: (value) => value!.isEmpty ? 'required' : null,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                        hintText: 'Email',
                        suffixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => value!.isEmpty ? 'required' : null,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.visibility_off)),
                        border: const OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                    keyboardType: TextInputType.text,
                    validator: (value) => value!.isEmpty ? 'required' : null,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            
                          },
                            // onPressed: () {
                            //   if (key.currentState!.validate()) {
                            //     Map data = {
                            //       "name": name.text,
                            //       "email": email.text,
                            //       "password": password.text,
                            //       "mobile": mobile.text,
                            //     };

                            //     // RemoteService.register(data);
                            //   }
                            // },
                            child: const Text("Register")),
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
