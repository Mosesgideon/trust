import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trust/common/widgets/loader.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:trust/features/home_screen/presentation/widgets/boost.dart';
import 'package:trust/features/home_screen/presentation/widgets/news.dart';
import 'package:trust/features/profile/presentations/widgets/follow.dart';
import 'package:trust/features/referal/prsentations/screens/earningteam.dart';
import 'package:trust/features/wallet/presentations/screens/wallet_history.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int hours = 24;
  int minutes = 0;
  int seconds = 0;
  Timer? _timer;
  double minedCoins = 0.0;
  bool isMining = false;
  bool obscured = false;
  double totalMinedCoins = 0.0;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startMining() {
    if (!isMining) {
      isMining = true;
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          if (hours == 0 && minutes == 0 && seconds == 0) {
            stopMining();
            return;
          }
          if (seconds == 0) {
            if (minutes == 0) {
              hours--;
              minutes = 59;
            } else {
              minutes--;
            }
            seconds = 59;
          } else {
            seconds--;
          }
          // Simulate mining process
          minedCoins += 0.000057; // Random mining rate
        });
      });
    }
  }

  void stopMining() {
    _timer?.cancel();
    isMining = false;
    // Save mined coins
    saveMinedCoins();
  }

  void saveMinedCoins() {
    print('Mined Coins: $minedCoins');
    minedCoins = 0.0;
    // Reset timer for next mining cycle
    hours = 24;
    minutes = 0;
    seconds = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallets.darkb,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: ColorPallets.darkb,
        centerTitle: true,
        title: const Text(
          "Trust Coin Mining",
          style: TextStyle(color: ColorPallets.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Balance",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: ColorPallets.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              obscured
                                  ? const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        "*******",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                            color: ColorPallets.greencolor),
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text(
                                        totalMinedCoins.toStringAsFixed(6),
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: ColorPallets.greencolor),
                                      ),
                                    ),
                              const SizedBox(
                                width: 30,
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                onTap: () {
                                  obscured = !obscured;
                                },
                                child: Icon(
                                  obscured
                                      ? Iconsax.eye_slash
                                      : Icons.remove_red_eye_outlined,
                                  size: 20,
                                  color: ColorPallets.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: ColorPallets.greencolor,
                        child: Image.asset(
                          "assets/png/logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: ColorPallets.cardcolor.withOpacity(0.1),
                  ),
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "Hour(S)",
                                  style: TextStyle(
                                      color: ColorPallets.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                          color: ColorPallets.greencolor,
                                          width: 2)),
                                  child: Center(
                                    child: Text(
                                      "$hours",
                                      style: const TextStyle(
                                          color: ColorPallets.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "Minute(S)",
                                  style: TextStyle(
                                      color: ColorPallets.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                          color: ColorPallets.greencolor,
                                          width: 2)),
                                  child: Center(
                                    child: Text(
                                      "$minutes",
                                      style: const TextStyle(
                                          color: ColorPallets.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "Second(S)",
                                  style: TextStyle(
                                      color: ColorPallets.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                          color: ColorPallets.greencolor,
                                          width: 2)),
                                  child: Center(
                                    child: Text(
                                      "$seconds",
                                      style: const TextStyle(
                                          color: ColorPallets.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        isMining
                            ? const Center(
                              child: Text(
                                  "Mining will stop after 24 hour's",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.red),
                                ),
                            )
                            : SizedBox(),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: ColorPallets.greencolor, width: 2)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                      backgroundColor: ColorPallets.greencolor,
                                      radius: 17,
                                      child: Image.asset(
                                        "assets/png/logo.png",
                                        fit: BoxFit.cover,
                                      )),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          CupertinoPageRoute(
                                              builder: (index) =>
                                                  WalletHistory()));
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          "+${minedCoins.toStringAsFixed(6)}",
                                          style: const TextStyle(
                                              color: ColorPallets.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          "PER HR",
                                          style: TextStyle(
                                              color: ColorPallets.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 1,
                                    decoration: const BoxDecoration(
                                        color: ColorPallets.greencolor,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomLeft: Radius.circular(30))),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          CupertinoPageRoute(
                                              builder: (index) => EarningTeam()));
                                    },
                                    child: const Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:
                                              ColorPallets.greencolor,
                                          radius: 17,
                                          child: Icon(
                                            Icons.people,
                                            color: ColorPallets.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "0/1",
                                          style: TextStyle(
                                              color: ColorPallets.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: SizedBox(
                            width: 200,
                            height: 55,
                            child: MaterialButton(
                              height: 50,
                              onPressed: startMining,
                              color: ColorPallets.greencolor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  side: BorderSide.none),
                              child: isMining
                                  ? Loader()
                                  : const Text("Start Mining"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        PremiumBoost(),
                        NewsTab()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
