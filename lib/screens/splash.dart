import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future splash() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, 'login');
    });
  }

  @override
  void initState() {
    super.initState();
    splash();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/logo.jpg"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
