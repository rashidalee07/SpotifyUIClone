import 'package:flutter/material.dart';
import 'package:myspotify/premium/offer_container.dart';
import 'package:myspotify/premium/spotify_plans.dart';
//import 'package:myspotify/spotify_plans.dart';

class PremiumPage extends StatelessWidget {
  PremiumPage({ Key? key }) : super(key: key);
  
final List freemium = ["Ad Breaks", "Play in Shuffle", "6 skips per hour", "Streaming only", "Basic audio quality"];
final List premium = ["Ad-free music listening", "Play any song", "Unlimited skips", "Offline listening", "High audio quality"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [SpotifyPlans(),
        const Expanded(child: OfferContainer()),
     ] ),
    );
  }
}