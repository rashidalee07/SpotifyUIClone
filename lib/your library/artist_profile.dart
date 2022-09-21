import 'package:flutter/material.dart';
import 'package:myspotify/your%20library/artist_profile_model.dart';

class ArtistProfile extends StatelessWidget {
  final ArtistProfileModel artistProfileModel;
    ArtistProfile(this.artistProfileModel);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(artistProfileModel.imageUrl),
            Text(artistProfileModel.artistName, style: const TextStyle(color: Colors.black),)
          ],
          
    
    
        ),
      ),
    );
  }
}