import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:trust/features/authentication/presentations/screens/forgotpassword.dart';
import 'package:trust/features/authentication/presentations/screens/signup.dart';

class ForgetSignUp extends StatefulWidget {
  const ForgetSignUp({super.key});

  @override
  State<ForgetSignUp> createState() => _ForgetSignUpState();
}

class _ForgetSignUpState extends State<ForgetSignUp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    CupertinoPageRoute(builder: (index) => const SignUpScreen()));
              },
              child: const Text(
                "Don't have an account",
                style: TextStyle(color: ColorPallets.white),
              )),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(CupertinoPageRoute(
                    builder: (index) => const ForgotPasswordScreen()));
              },
              child: const Text(
                "Forgot Password",
                style: TextStyle(color: ColorPallets.white),
              ))
        ],
      ),
    );
  }
}
