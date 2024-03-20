import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trust/common/widgets/custombutton.dart';
import 'package:trust/common/widgets/inputtextfield.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:trust/features/authentication/presentations/widgets/forget_and_signup.dart';
import 'package:trust/features/home_screen/presentation/screens/home_screen.dart';

import '../../../../test.dart';
import '../../../home_screen/presentation/screens/dashboard.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallets.darkb,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: ColorPallets.darkb,
      //   automaticallyImplyLeading: false,
      //   title: const Text(
      //     "",
      //     style: TextStyle(
      //         color: ColorPallets.white,
      //         fontSize: 18,
      //         fontWeight: FontWeight.w600),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Login to Your Account',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorPallets.white),
            ),
            const SizedBox(
              height: 20,
            ),
            const OutlinedFormField(
              hint: 'email',
            ),
            const SizedBox(
              height: 20,
            ),
            const OutlinedFormField(
              hint: 'password',
            ),
            const ForgetSignUp(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (index) => Dashbaord_tab()));
                },
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Text("Login"))
          ]),
        ),
      ),
    );
  }
}
