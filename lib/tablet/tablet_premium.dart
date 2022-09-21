import 'package:flutter/material.dart';
import 'package:myspotify/premium/premium_page.dart';
import 'package:myspotify/tablet/side_nav_bar.dart';


class TabletPremiumPage extends StatelessWidget {
  const TabletPremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SideNavBar(),
        Expanded(
          child: Scaffold(
           body: PremiumPage()
          ),)
      ],
    );
  }
}