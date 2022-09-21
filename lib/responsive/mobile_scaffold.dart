import 'package:flutter/material.dart';
import 'package:myspotify/navigation%20bar/bottom_nav_bar.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return BottomNavBar();
  }
}