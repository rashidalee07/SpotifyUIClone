import 'package:flutter/material.dart';
import 'package:myspotify/tablet/side_nav_bar.dart';
import 'package:myspotify/your%20library/your_library.dart';

class TabletYourLibraryPage extends StatelessWidget {
  const TabletYourLibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SideNavBar(),
        Expanded(
          child: Scaffold(
            body: YourLibraryPage(),
          ))
      ],
    );
  }
}