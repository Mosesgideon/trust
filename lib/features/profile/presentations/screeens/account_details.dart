import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';

class AccoutDetails extends StatefulWidget {
  const AccoutDetails({super.key});

  @override
  State<AccoutDetails> createState() => _AccoutDetailsState();
}

class _AccoutDetailsState extends State<AccoutDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Account",style: TextStyle(color: ColorPallets.white),),
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
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorPallets.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "155.046",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ColorPallets.greencolor),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: ColorPallets.greencolor,
                  child: Icon(
                    Icons.filter_alt_rounded,
                    color: ColorPallets.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              height: MediaQuery.of(context).size.height,
              decoration:  BoxDecoration(
                  color: ColorPallets.cardcolor.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Card(
                      color: ColorPallets.cardcolor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: ColorPallets.darkb,
                                        borderRadius: BorderRadius.circular(5),
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
                                        "Daily Mining",
                                        style: TextStyle(
                                            color: ColorPallets.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "@moses224",
                                        style: TextStyle(
                                            color: ColorPallets.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                "+1.2343",
                                style: TextStyle(
                                    color: ColorPallets.greencolor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );

  }
}
