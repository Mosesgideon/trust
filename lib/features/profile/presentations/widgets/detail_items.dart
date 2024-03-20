import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trust/core/theme/pallets.dart';

class DetailItems extends StatefulWidget {
  final String title;
  final IconData icon;
  const DetailItems({super.key, required this.title, required this.icon});

  @override
  State<DetailItems> createState() => _DetailItemsState();
}

class _DetailItemsState extends State<DetailItems> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Divider(
          color: ColorPallets.cardcolor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Icon(
               widget.icon,
                color: ColorPallets.cardcolor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    color: ColorPallets.white.withOpacity(0.6),
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
