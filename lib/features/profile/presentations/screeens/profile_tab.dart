import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trust/common/widgets/textbutton.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:trust/core/utils/theme/colors.dart';
import 'package:trust/features/profile/presentations/screeens/account_details.dart';
import 'package:trust/features/profile/presentations/screeens/personal_details.dart';
import 'package:trust/features/profile/presentations/screeens/security.dart';
import 'package:trust/features/profile/presentations/screeens/settings_tab.dart';
import 'package:trust/features/profile/presentations/widgets/follow.dart';
import 'package:trust/features/profile/presentations/widgets/profile_items.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPallets.darkb,
        automaticallyImplyLeading: false,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ColorPallets.white),
        ),
      ),
      backgroundColor: ColorPallets.darkb,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: ColorPallets.cardcolor,
                          border: Border.all(
                              color: ColorPallets.greencolor, width: 2)),
                      child: const Icon(
                        Iconsax.user,
                        size: 40,
                        color: ColorPallets.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Column(
                      children: [
                        Text(
                          "Moses Chukwuezuwom",
                          style: TextStyle(
                              color: ColorPallets.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "gideon99",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ProfileItems(
                title: "Personal Information",
                subtitle: 'see your personal information',
                voidCallback: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (index) => PersonalDetails()));
                },
              ),
              ProfileItems(
                voidCallback: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (index) => AccoutDetails()));
                },
                title: 'Account Information',
                subtitle: 'checkout for account information',
              ),
              ProfileItems(
                voidCallback: () {
                  Navigator.of(context)
                      .push(CupertinoPageRoute(builder: (index) => Security()));
                },
                title: 'Account /Security',
                subtitle: 'edit your security circle',
              ),
              ProfileItems(
                voidCallback: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (index) => SettingsTab()));
                },
                title: 'Settings',
                subtitle: 'settings/notifications',
              ),
              const SizedBox(
                height: 20,
              ),
              const FollowCard(),
              const SizedBox(
                height: 20,
              ),
              TextBTN(
                  widget: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Iconsax.logout,
                        size: 20,
                        color: redColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorPallets.white),
                      )
                    ],
                  ),
                  voidCallback: () {}),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
