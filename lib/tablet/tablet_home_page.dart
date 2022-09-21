import 'package:flutter/material.dart';
import 'package:myspotify/tablet/side_nav_bar.dart';

import 'landscape_home_page.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabletHomePage extends StatelessWidget {
   TabletHomePage({ Key? key }) : super(key: key);
  final List post = ["post 1", "post 2", "post 3", "post 4", "post 5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black87,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           
          SideNavBar(),
          Expanded(child: LandscapeHomePage())
           ]),
    );
            
  }
}