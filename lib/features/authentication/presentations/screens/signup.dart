import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trust/common/widgets/custombutton.dart';
import 'package:trust/common/widgets/inputtextfield.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:trust/features/home_screen/presentation/screens/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallets.darkb,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: ColorPallets.darkb,
      //   leading: const Icon(
      //     Icons.arrow_back,
      //     color: ColorPallets.white,
      //     size: 18,
      //   ),
      //   title: const Text(
      //     "",
      //     style: TextStyle(
      //         color: ColorPallets.white,
      //         fontSize: 18,
      //         fontWeight: FontWeight.w600),
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Create Your Account',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorPallets.white),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedFormField(
                hint: 'name',
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedFormField(
                hint: 'email',
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedFormField(
                hint: 'password',
                preffix: Icon(Icons.remove_red_eye_outlined),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedFormField(
                hint: 'comfirm password',
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Already have an account",
                    style: TextStyle(color: ColorPallets.white),
                  )),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text("Sign Up"),
                  onPressed: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(builder: (index) => HomeScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
