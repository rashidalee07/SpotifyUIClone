import 'package:flutter/material.dart';

import 'package:myspotify/your%20library/artist_list.dart';
import 'package:myspotify/your%20library/top_bar.dart';

class YourLibraryPage extends StatelessWidget {
  const YourLibraryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          const TopBar(),
          Expanded(child: ArtistsList())
        ],
      )
      
      );
  }
}