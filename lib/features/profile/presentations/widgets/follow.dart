import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';

class FollowCard extends StatefulWidget {
  const FollowCard({super.key});

  @override
  State<FollowCard> createState() => _FollowCardState();
}

class _FollowCardState extends State<FollowCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            color: ColorPallets.cardcolor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Follow us on social media",
              style: TextStyle(
                  color: ColorPallets.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorPallets.white,
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/png/facebook.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorPallets.white,
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/png/twitter.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorPallets.white,
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/png/telegram.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorPallets.white,
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/png/discord.png",
                          ),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
