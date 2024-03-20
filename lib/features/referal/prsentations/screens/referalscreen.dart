import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:trust/common/widgets/customdialog.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:share_plus/share_plus.dart';

class ReferalScreen extends StatefulWidget {
  const ReferalScreen({super.key});

  @override
  State<ReferalScreen> createState() => _ReferalScreenState();
}

class _ReferalScreenState extends State<ReferalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallets.darkb,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: ColorPallets.white,
            )),
        elevation: 0,
        backgroundColor: ColorPallets.darkb,
        centerTitle: true,
        title: const Text(
          "Trust Coin Mining",
          style: TextStyle(color: ColorPallets.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(125),
                    color: ColorPallets.greencolor),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: MaterialButton(
                  height: 50,
                  onPressed: () {},
                  color: ColorPallets.greencolor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide.none),
                  child: const Text("Get 0.5 Satoshi"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                textAlign: TextAlign.center,
                "You and your friend will get 0.5 free satoshi when your friend joins Trust Coin Mining Community.",
                style: TextStyle(
                    color: ColorPallets.white,
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border:
                          Border.all(color: ColorPallets.greencolor, width: 2)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "M44ff5",
                        style: TextStyle(
                            color: ColorPallets.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
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
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: ColorPallets.greencolor,
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          onTap: () {
                            FlutterClipboard.copy("referal copied").then(
                                (value) => CustomDialogs.success(
                                    "Copied to ClipBoard"));
                          },
                          child: const Icon(
                            Icons.file_copy,
                            color: ColorPallets.darkb,
                          ),
                        ),
                      )
                    ],
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                height: 50,
                onPressed: () {
                  _shareContent("M44ff5");
                },
                color: ColorPallets.greencolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide.none),
                child: const Text("Share"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _shareContent(String content) {
    Share.share(
      content,
      subject: 'Check this out!',
    );
  }
}
