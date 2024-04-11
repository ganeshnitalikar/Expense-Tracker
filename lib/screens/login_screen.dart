import 'package:expense_tracker/screens/home_screen.dart';
import 'package:expense_tracker/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 60, bottom: 50),
                decoration: const BoxDecoration(shape: BoxShape.rectangle),
                child: Image.asset(
                  'assets/logo.png',
                  height: 70,
                  width: 90,
                ),
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Login to your Account",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500, height: 2),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    myTextField(context,
                        label: "UserName", controller: _usernameController),
                    const SizedBox(
                      height: 20,
                    ),
                    myTextField(context,
                        label: "Password", controller: _usernameController),
                    const SizedBox(
                      height: 20,
                    ),
                    myBtn(context,
                        ontap: () => Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (_) {
                              return const HomeScreen();
                            })),
                        label: "Sign In")
                  ],
                ),
              ),
              const Spacer(),
              myRow(context, isSignInPage: true),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
