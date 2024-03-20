
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:trust/core/theme/pallets.dart';
class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return SpinKitPulse(
      itemBuilder: (context, index) {
        return DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorPallets.darkb,));
      },
      // color: Colors.white,
      size: 50.0,
    );
  }
}