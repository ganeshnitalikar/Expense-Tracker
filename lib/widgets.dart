import 'package:expense_tracker/screens/login_screen.dart';
import 'package:expense_tracker/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget myRow(BuildContext context, {required bool isSignInPage}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        isSignInPage ? "Don’t have an account? " : "Already Have An Account ? ",
        style: const TextStyle(
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      GestureDetector(
        onTap: () {
          if (isSignInPage) {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return const SignUpScreen();
            }));
          } else {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return LoginScreen();
            }));
          }
        },
        child: Text(
          isSignInPage ? "Sign Up" : "Sign In",
          style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0xff0EA17D)),
        ),
      )
    ],
  );
}

Widget myTextField(BuildContext context,
    {required String label, required TextEditingController controller}) {
  return Material(
    elevation: 2,
    borderRadius: BorderRadius.circular(8),
    child: Container(
      height: 49,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * .9,
      decoration: const BoxDecoration(),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: label,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromRGBO(0, 0, 0, 0.4))),
      ),
    ),
  );
}

Widget myBtn(BuildContext context,
    {required Function ontap, required String label}) {
  return Container(
    height: 50,
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: const Color(0xff0EA17D)),
    child: GestureDetector(
      onTap: () => ontap(),
      child: Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    ),
  );
}

Widget expenseRow(BuildContext context,
    {required String title,
    required String iconPath,
    required String description,
    required double amount}) {
  return Material(
    elevation: 5,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            iconPath,
            height: 43,
            width: 43,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.8),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/image.png',
                    height: 15,
                    width: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    amount.toStringAsFixed(0),
                    style: const TextStyle(
                        fontSize: 15,
                        height: .2,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "3 June | 11:50 AM",
                style: TextStyle(
                    fontSize: 10, fontWeight: FontWeight.w400, height: .1),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
