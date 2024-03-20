import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:light_bottom_navigation_bar/light_bottom_navigation_bar.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:trust/features/explore/presentation/screens/explore.dart';
import 'package:trust/features/home_screen/presentation/screens/home_screen.dart';
import 'package:trust/features/profile/presentations/screeens/profile_tab.dart';
import 'package:trust/features/wallet/presentations/screens/wallet_screen.dart';

class Dashbaord_tab extends StatefulWidget {
  const Dashbaord_tab({super.key});

  @override
  State<Dashbaord_tab> createState() => _Dashbaord_tabState();
}

class _Dashbaord_tabState extends State<Dashbaord_tab> {
  int selectindex = 0;
  static List<StatefulWidget> pages = [
    const HomeScreen(),
    ExploreScreen(),
    const WalletScreen(),
    const ProfileTab(),
  ];

  _switchTap(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: LightBottomNavigationBar(
        onSelected: (index){
          _switchTap(index);
          log(index.toString());
        },
        elevation: 0,
        height: 60,
        backgroundColor: ColorPallets.darkb,
        currentIndex: selectindex,
        items: const [
          LightBottomNavigationBarItem(
              unSelectedIcon: Iconsax.home,
              selectedIcon: Iconsax.home,
              splashColor: ColorPallets.white,
              borderBottomColor: ColorPallets.white,
              backgroundShadowColor: ColorPallets.white,
              selectedIconColor: ColorPallets.white,
              unSelectedIconColor: Colors.grey),
          LightBottomNavigationBarItem(
              unSelectedIcon: Icons.language,
              selectedIcon: Icons.language,
              splashColor: ColorPallets.white,
              borderBottomColor: ColorPallets.white,
              backgroundShadowColor: ColorPallets.white,
              selectedIconColor: ColorPallets.white,
              unSelectedIconColor: Colors.grey),
          LightBottomNavigationBarItem(
              unSelectedIcon: Iconsax.wallet,
              selectedIcon: Iconsax.wallet,
              splashColor: ColorPallets.white,
              borderBottomColor: ColorPallets.white,
              backgroundShadowColor: ColorPallets.white,
              selectedIconColor: ColorPallets.white,
              unSelectedIconColor: Colors.grey),
          LightBottomNavigationBarItem(
              unSelectedIcon: Iconsax.user,
              selectedIcon: Iconsax.user,
              splashColor: ColorPallets.white,
              borderBottomColor: ColorPallets.white,
              backgroundShadowColor: ColorPallets.white,
              selectedIconColor: ColorPallets.white,
              unSelectedIconColor: Colors.grey),
        ],

      ),
      body: IndexedStack(index: selectindex, children: pages),
    );
  }
}
