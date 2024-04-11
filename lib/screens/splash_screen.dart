import 'dart:async';

import 'package:expense_tracker/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SpalashScreen extends StatefulWidget {
  const SpalashScreen({super.key});

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () =>
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
              return LoginScreen();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [logo(), title()],
          ),
        ),
      ),
    );
  }

  Widget logo() {
    return Positioned(
      top: 329,
      left: 0,
      right: 0,
      child: Container(
          height: 144,
          width: 144,
          decoration: const BoxDecoration(
              color: Color(0xffEAEEEB), shape: BoxShape.circle),
          child: Center(
            child: Image.asset(
              "assets/logo.png",
              height: 58.78,
              width: 69,
              fit: BoxFit.contain,
            ),
          )),
    );
  }

  Widget title() {
    return const Positioned(
      top: 686,
      left: 0,
      right: 0,
      child: Center(
        child: Text(
          "Expense Tracker",
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
