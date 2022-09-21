import 'package:flutter/material.dart';
import 'package:myspotify/responsive/desktop_scaffold.dart';
import 'package:myspotify/responsive/mobile_scaffold.dart';
import 'package:myspotify/responsive/responsive_layout.dart';
import 'package:myspotify/responsive/tablet_scaffold.dart';



void main()
{
  
  runApp( MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    title: "My Spotify",
    debugShowCheckedModeBanner: false,
    home:  MyResponiveLayout(
      mobileScaffold: const MobileScaffold(),
      tabletScaffold: const TabletScaffold(),
      desktopScaffold: const DesktopScaffold(),
    )
  ));
}

