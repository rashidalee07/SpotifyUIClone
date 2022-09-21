import 'package:flutter/material.dart';
import 'package:myspotify/your%20library/artist_profile.dart';
import 'package:myspotify/your%20library/artist_profile_model.dart';
import 'package:myspotify/your%20library/artist_sliver_profile.dart';
import 'package:myspotify/your%20library/my_circular_avatar.dart';

class ArtistsList extends StatelessWidget {
   ArtistsList({ Key? key }) : super(key: key);

   final List artist = ["Neha Kakkar", "Atif Aslam", "Rahat Fateh Ali", "Ali Zafar", "Shreya Ghoshal",
                        "Arijit Singh", "Gul Panra", "Taylor Swift", "Himesh", "Haddiqa Kiyani",
   ];
  final List singers = ["https://www.bollywoodhungama.com/wp-content/uploads/2020/10/Another-false-Neha-Kakkar-marriage-rumour-and-this-time-with-reality-show-contestant.jpg",
  "https://pbs.twimg.com/media/E8CPk7tVIAYpTKs.jpg",
  "https://pbs.twimg.com/profile_images/889033400748789760/_z94ltiA_400x400.jpg",
  "https://en.dailypakistan.com.pk/digital_images/large/2022-05-24/ali-zafar-storms-the-internet-with-scandalous-click-1653391898-5464.jpeg",
  "https://rollingstoneindia.com/wp-content/uploads/2020/08/Shreya-Ghoshal-960x852.jpg",
  "https://resize.indiatvnews.com/en/resize/newbucket/715_-/2022/01/arijit-singh-1641691502.jpg",
  "https://propakistani.pk/wp-content/uploads/2017/11/gul-panra.jpg",
  "https://media.wired.com/photos/5e39df7a6fd07600094257bd/1:1/w_1039,h_1039,c_limit/Cul-TaylorSwift-1173456441.jpg",
  "http://starsunfolded.com/wp-content/uploads/2016/01/Himesh-Reshammiya-1.jpg",
  "http://starsunfolded.com/wp-content/uploads/2017/09/Hadiqa-Kiani.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: artistProfileModelList.length,
      itemBuilder: ((context, index) {
      ArtistProfileModel artistPM = artistProfileModelList[index];
      return ListTile(
        autofocus: true,
        enableFeedback: true,
        contentPadding: const EdgeInsets.all(0),
        leading: MyCircularAvatar(imageURLs: artistPM.imageUrl,),
        title: Text(artistPM.artistName, style:  const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
        subtitle: const Text("Artist", style: TextStyle(color: Colors.white),),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ArtistProfileSliver(artistPM)));
        },
        
      );

    }),
          );
  }
}