import 'package:expense_tracker/screens/home_screen.dart';
import 'package:expense_tracker/widgets.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
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
                      "Create your Account",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500, height: 2),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    myTextField(context,
                        label: "Name", controller: _nameController),
                    const SizedBox(
                      height: 20,
                    ),
                    myTextField(context,
                        label: "UserName", controller: _userNameController),
                    const SizedBox(
                      height: 20,
                    ),
                    myTextField(context,
                        label: "Password", controller: _passwordController),
                    const SizedBox(
                      height: 20,
                    ),
                    myTextField(context,
                        label: "Confirm Password",
                        controller: _confirmPasswordController),
                    const SizedBox(
                      height: 20,
                    ),
                    myBtn(context, ontap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
                        return const HomeScreen();
                      }));
                    }, label: "Sign Up")
                  ],
                ),
              ),
              const Spacer(),
              myRow(context, isSignInPage: false),
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
