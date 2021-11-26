import 'package:bmi_project/ui/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateToHomeScreen();
  }

  navigateToHomeScreen() async {
    await Future.delayed(
        Duration(
          seconds: 2,
        ),
        () {});
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return LogInPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/bmi_logo.jpg',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
