import 'package:flutter/material.dart';
import 'package:trust/core/theme/pallets.dart';
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorPallets.darkb,
    );
  }
}
