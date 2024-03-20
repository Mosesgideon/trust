import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:trust/core/utils/theme/colors.dart';

class TextBTN extends StatefulWidget {
  final Widget widget;
  final VoidCallback? voidCallback;

  const TextBTN(
      {super.key,
      required this.widget,
      required this.voidCallback,
     });

  @override
  State<TextBTN> createState() => _TextBTNState();
}

class _TextBTNState extends State<TextBTN> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                side:
                    BorderSide(color: ColorPallets.cardcolor.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(10)))),
        onPressed: widget.voidCallback,
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: widget.widget
        ));
  }
}
