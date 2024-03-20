import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';

class NewsTab extends StatefulWidget {
  const NewsTab({super.key});

  @override
  State<NewsTab> createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          const Text(
            "News",
            style: TextStyle(
                color: ColorPallets.white,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorPallets.cardcolor.withOpacity(0.2)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: const DecorationImage(image: AssetImage("assets/png/kyc.png"),
                    fit: BoxFit.cover)
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Trust KYC comming soon",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Members:Tips for successful ve...",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dec 20,2024",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 80,),
                        Icon(Icons.favorite_border,color: Colors.grey,size: 15,),
                        Text(
                          "25.0K",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),

                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          // Container(
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       color: ColorPallets.cardcolor.withOpacity(0.2)),
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //
          //     children: [
          //       Container(
          //         height: 60,
          //         width: 60,
          //       ),
          //       const SizedBox(
          //         width: 5,
          //       ),
          //       const Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             "Trust KYC comming soon",
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.w500),
          //           ),
          //           Text(
          //             "Members:Tips for successful ve...",
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.w500),
          //           ),
          //           SizedBox(
          //             height: 20,
          //           ),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Text(
          //                 "Dec 20,2024",
          //                 style: TextStyle(
          //                     color: Colors.grey,
          //                     fontSize: 10,
          //                     fontWeight: FontWeight.w400),
          //               ),
          //               SizedBox(width: 80,),
          //               Icon(Icons.favorite_border,color: Colors.grey,size: 15,),
          //               Text(
          //                 "25.0K",
          //                 style: TextStyle(
          //                     color: Colors.grey,
          //                     fontSize: 10,
          //                     fontWeight: FontWeight.w500),
          //               ),
          //
          //             ],
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),

        ],
      ),
    );
  }
}
