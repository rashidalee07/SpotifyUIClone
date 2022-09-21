import 'package:flutter/material.dart';
import 'package:myspotify/your%20library/artist_profile_model.dart';

class ArtistProfileSliver extends StatelessWidget {
  final ArtistProfileModel artistProfileModel;
  ArtistProfileSliver(this.artistProfileModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // centerTitle: true,
            actionsIconTheme: const IconThemeData(color: Colors.black),
            iconTheme: const IconThemeData(
                shadows: [Shadow(color: Colors.white10, blurRadius: 5)],
                color: Colors.black),
            backgroundColor: Colors.transparent,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              //centerTitle: true,
              //titlePadding: EdgeInsets.all(8),
              background: Image.network(artistProfileModel.imageUrl),
              title: Text(
                artistProfileModel.artistName,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.deepPurple),
                  height: 250,
                  width: 250,
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  height: 250,
                  width: 250,
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.green),
                  height: 250,
                  width: 250,
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.deepOrange),
                  height: 250,
                  width: 250,
                )),
          ),
        ],
      ),
    );
  }
}
