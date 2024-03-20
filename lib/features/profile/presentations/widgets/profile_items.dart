import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:trust/features/profile/presentations/screeens/personal_details.dart';

class ProfileItems extends StatefulWidget {
  final String title;
  final String subtitle;
  final Widget? widget;
  final VoidCallback voidCallback;

  ProfileItems(
      {super.key,
      required this.title,
      required this.subtitle,
      this.widget,
      required this.voidCallback});

  @override
  State<ProfileItems> createState() => _ProfileItemsState();
}

class _ProfileItemsState extends State<ProfileItems> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.voidCallback,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
              color: ColorPallets.cardcolor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: ColorPallets.white),
                  ),
                  Text(
                    widget.subtitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorPallets.white,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
