import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:trust/features/authentication/presentations/screens/signin.dart';
import 'package:trust/features/home_screen/presentation/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    var d = const Duration(seconds: 5);
    Future.delayed(d).then((value) => {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const SignInScreen()))
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset("assets/png/logo.png")
          ),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                "Trust Coin Mining",
                style: TextStyle(
                    color: ColorPallets.greencolor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
