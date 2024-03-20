import 'package:flutter/material.dart';
import 'package:trust/common/widgets/custombutton.dart';
import 'package:trust/common/widgets/inputtextfield.dart';
import 'package:trust/core/theme/pallets.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallets.darkb,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorPallets.darkb,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_outlined,
            color: ColorPallets.white,
            size: 20,
          ),
        ),
        title: const Text(
          "Forgot Password",
          style: TextStyle(
              color: ColorPallets.white,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //   height: 80,
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Select the contact which you want to use to reset your password",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: ColorPallets.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OutlinedFormField(hint: "Email",
                      preffix: Icon(Icons.email_outlined),
                    )
                  ],
                ),
              ),
              CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 20),
                  child: const Text("Continue"), onPressed: (){}),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
