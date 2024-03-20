import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trust/common/widgets/textbutton.dart';
import 'package:trust/core/theme/pallets.dart';
import 'package:trust/core/utils/theme/colors.dart';
import 'package:trust/features/profile/presentations/widgets/detail_items.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallets.darkb,
      appBar: AppBar(
        backgroundColor: ColorPallets.darkb,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorPallets.white,
            size: 20,
          ),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
              color: ColorPallets.white,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          InkWell(
            child: CircleAvatar(
              backgroundColor: ColorPallets.cardcolor.withOpacity(0.2),
              child: const Icon(
                Iconsax.edit,
                color: ColorPallets.white,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: ColorPallets.cardcolor.withOpacity(0.2),
                ),
              ),
               const SizedBox(height: 10,),
              //  Text(
              //   "Moses Chukwuezuwom",
              //   style: TextStyle(
              //       color: ColorPallets.white.withOpacity(0.5),
              //       fontSize: 17,
              //       fontWeight: FontWeight.w500),
              // ),

              const SizedBox(
                height: 30,
              ),
              const DetailItems(title: "Moses Chukwuezuwom", icon: Iconsax.user),
              const DetailItems(title: "mosesgideon@gmail.com", icon: Icons.email_outlined),
              const DetailItems(title: "gideon99", icon: Iconsax.user),
              const DetailItems(title: "07042973460", icon: Iconsax.call),
              const DetailItems(title: "Reset Password", icon: Iconsax.key),
              SizedBox(height: 30,),
              TextBTN(widget: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.profile_delete,
                    size: 20,
                    color: redColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Delete Account",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorPallets.white),
                  )
                ],
              ), voidCallback: () {  },)
            ],
          ),
        ),
      ),
    );
  }
}
