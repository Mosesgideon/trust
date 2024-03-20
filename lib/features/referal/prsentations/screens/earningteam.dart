import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';

class EarningTeam extends StatefulWidget {
  const EarningTeam({super.key});

  @override
  State<EarningTeam> createState() => _EarningTeamState();
}

class _EarningTeamState extends State<EarningTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallets.darkb,
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: const Icon(
          Icons.arrow_back_ios_new,
          size: 18,
          color: ColorPallets.white,
        )),
        elevation: 0,
        backgroundColor: ColorPallets.darkb,
        // centerTitle: true,
        title: const Text(
          "Trust Coin Mining",
          style: TextStyle(color: ColorPallets.white, fontSize: 17),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Earning Team",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorPallets.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "3 MEMBER(S)",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorPallets.greencolor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: ColorPallets.white,
            thickness: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Currently mining",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorPallets.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "2 MEMBER(S)",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorPallets.greencolor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Stack(clipBehavior: Clip.none, children: [
              Container(
                padding: const EdgeInsets.only(top: 40),
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    color: ColorPallets.lightb,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: ListView.builder(
                  itemCount: 7,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Card(
                        color: ColorPallets.cardcolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: ColorPallets.darkb,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              color: ColorPallets.greencolor,
                                              width: 2)),
                                      child: const Icon(
                                        Icons.person,
                                        color: ColorPallets.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Moses Gideon",
                                          style: TextStyle(
                                              color: ColorPallets.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "@moses224",
                                          style: TextStyle(
                                              color: ColorPallets.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  log("clicked");
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          bottomLeft: Radius.circular(15),
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(5)),
                                      color: ColorPallets.greencolor),
                                  child: const Column(
                                    children: [
                                      Icon(
                                        Icons.notifications,
                                        color: ColorPallets.darkb,
                                      ),
                                      Text(
                                        "Alert",
                                        style: TextStyle(
                                            color: ColorPallets.darkb,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: -20,
                right: 125,
                child: SizedBox(
                  width: 100,
                  child: MaterialButton(
                    color: ColorPallets.darkb,
                    height: 40,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: const BorderSide(
                            width: 1, color: ColorPallets.greencolor)),
                    child: const Text(
                      "Team",
                      style: TextStyle(color: ColorPallets.white),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
