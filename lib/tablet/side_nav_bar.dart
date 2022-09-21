import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myspotify/tablet/tabs.dart';

class SideNavBar extends StatelessWidget {
   SideNavBar({ Key? key }) : super(key: key);
   final navBarItems = ["Home", "Search", "Library", "Premium"];
   final sideBarIcon = [CupertinoIcons.home, CupertinoIcons.search, CupertinoIcons.music_note, FontAwesomeIcons.spotify, ];
  @override
  Widget build(BuildContext context) {
    bool isSelected=false;
    return  Column(
        children: [
        Container(
      color: Colors.grey[900],
      width: 180,
      height: 260,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: ((context, index) {
             return SizedBox(
              height: 48,
               child:  Material(
                color: Colors.transparent,
                 child: ListTile(
                 
                  // selected: true,
                  // tileColor: Colors.black38,
                  // selectedColor: Colors.green,
                  onTap: (){
                    isSelected=true;
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> tabs[index]));
                  },
                  
                 leading: Icon(sideBarIcon[index], color: isSelected?Colors.green: Colors.white,),
                 title: Text(navBarItems[index], style: const TextStyle(color: Colors.white),),
                 ),
               ),
             );
            })),
          ),
           Expanded(
             child: Container(
                     color: Colors.grey[900],
                     height:double.infinity,
                     width: 180,
                     child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  child: IconButton(
                    icon: const Icon(Icons.skip_previous_sharp),
                    color: Colors.white, 
                    iconSize: 32,
                    splashRadius: 24,
                    onPressed: (){},
                    ),
                ),
                
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  
                  child: IconButton(
                    icon: const Icon(CupertinoIcons.play_circle_fill),
                    color: Colors.white, 
                    iconSize: 48,
                    splashRadius: 28,
                    
                    onPressed: (){},
                    ),
                ),
           
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  child: IconButton(
                    icon: const Icon(Icons.skip_next_sharp),
                    color: Colors.white, 
                    iconSize: 32,
                    splashRadius: 24,
                    onPressed: (){},
                    ),
                ),
           
           
              ],
                     ),
                   ),
           ),
       
        ]
      );
  
  }
}