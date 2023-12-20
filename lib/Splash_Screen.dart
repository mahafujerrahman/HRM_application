import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hrm_application/Login_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
  with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 15),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_)=> const LogInScreen(),
          ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/nassa.png',
              width: 350,
              height: 350,
            ),
            SizedBox(height: 5),
            const Text("HRM",
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 40
              ),
                )
          ],
        ),
      ),
    );
  }
}
