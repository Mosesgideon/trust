import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';
class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorPallets.darkb,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: ColorPallets.white,
          ),
        ),
      ),
        backgroundColor: ColorPallets.darkb,
    );
  }
}
