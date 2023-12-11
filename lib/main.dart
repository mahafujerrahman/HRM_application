import 'package:flutter/material.dart';
import 'package:hrm_application/All%20Features/PaySlip.dart';
import 'package:hrm_application/Login_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HRM App',
      theme: ThemeData(),
      home: const LogInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
