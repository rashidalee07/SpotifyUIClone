import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import '../tablet/tablet_home_page.dart';
//import 'package:myspotify/tablet/tablet_home_page.dart';

class MyResponiveLayout extends StatelessWidget {

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  MyResponiveLayout({

    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 20, 19, 19),
        systemNavigationBarColor:  Color.fromARGB(255, 20, 19, 19)
      )
    );
    //final width = MediaQuery.of(context).size.width;
     
    return OrientationBuilder(builder: (context, orientation)
    {
      final isPortrait = orientation == Orientation.portrait;
      if(isPortrait)
      {
        return mobileScaffold;
      }
      else if(!isPortrait)
      {
        return tabletScaffold;
      }

      else
      {
        return desktopScaffold;
      }
    });
  }
}