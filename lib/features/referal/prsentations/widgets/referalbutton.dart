import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';

import '../screens/referalscreen.dart';
class ReffButton extends StatefulWidget {
  const ReffButton({super.key});

  @override
  State<ReffButton> createState() => _ReffButtonState();
}

class _ReffButtonState extends State<ReffButton> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(
              builder: (index) => const ReferalScreen()));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                  color: ColorPallets.greencolor, width: 2)),
          child: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Invite Your Friends!",
                    style: TextStyle(
                        color: ColorPallets.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ColorPallets.white,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
