// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyContainer extends StatelessWidget {
   MyContainer({ Key? key }) : super(key: key);

  final List myColors = [Colors.green,
                    Colors.lightBlue,
                    Colors.deepPurple, 
                    Colors.limeAccent,
                    Colors.orange,
                    Colors.green,
                    Colors.lightBlue,
                    Colors.deepPurple, 
                    Colors.limeAccent,
                    Colors.orange,
                     ]; 

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
  final suggestions = ["To get you started", ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        itemCount: artist.length,
      
         scrollDirection: Axis.horizontal,
        // shrinkWrap: true,
        itemBuilder: ((context, index) {
        return Container(
           height: double.infinity, 
            width: 140,
            
             margin: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  
                  const Padding(
                    padding:  EdgeInsets.fromLTRB(0,6,112,0),
                    child: Icon(FontAwesomeIcons.spotify,color: Colors.white, size: 12, ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:79, bottom: 8),
                    child: Row(

                      children: [

                         Container(
                           height: 20,
                           width: 6,
                           color: myColors[index],
                         ),

                        Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 0,0 ),
                      child: Text(artist[index], style:  const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                    ),

                 
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    child: Container(
                      height: 5,
                      color: myColors[index],
                      
                    ),
                  )
                  
                ],
              ),
                decoration: BoxDecoration(
                image:  DecorationImage(image: 
              NetworkImage(singers[index])
              , fit: BoxFit.cover
              ),
                color: Colors.green,
                borderRadius: BorderRadius.circular(4.0))
                
                
                );
          
      })
      ),
     );
  }
}