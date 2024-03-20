import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trust/core/theme/pallets.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallets.darkb,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Wallet",
          style: TextStyle(color: ColorPallets.white),
        ),
        backgroundColor: ColorPallets.darkb,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Card(
              color: ColorPallets.cardcolor.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(radius: 15,),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Trust",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPallets.white),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mining Balance",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "0.0000",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Availabe",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "0.0000",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ),
            Card(
              color: ColorPallets.cardcolor.withOpacity(0.5),
              shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(radius: 15,),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Referral",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPallets.white),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Referral Earning",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "0.0000",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Availabe",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "0.0000",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ),
            Card(
              color: ColorPallets.cardcolor.withOpacity(0.5),
              shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(radius: 15,),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Tasks",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPallets.white),
                              )
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Task Reward",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "0.0000",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Availabe",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "0.0000",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
