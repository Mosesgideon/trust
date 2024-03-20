import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';
class PremiumBoost extends StatefulWidget {
  const PremiumBoost({super.key});

  @override
  State<PremiumBoost> createState() => _PremiumBoostState();
}

class _PremiumBoostState extends State<PremiumBoost> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
            colors: [ ColorPallets.primarycolor,ColorPallets.lightb,],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/png/logo.png",
            height: 50,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Trust Premium Boost",
            style: TextStyle(
                color: ColorPallets.white,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          const Text(
            "Daily 2X Boost",
            style: TextStyle(
                color: ColorPallets.white,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          const Text(
            textAlign: TextAlign.center,
            "Foe minutes everday , you can get double th amount of trustcoins.Let's go!",
            style: TextStyle(
                color: ColorPallets.white,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 5,),
          MaterialButton(
            height: 40,
            onPressed: () {},
            color: ColorPallets.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide.none),
            child: const Text("Open 2X Boost"),
          ),
        ],
      ),
    );
  }
}
