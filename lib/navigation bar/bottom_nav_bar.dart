import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myspotify/home%20page/home_page.dart';
import 'package:myspotify/premium/premium_page.dart';
import 'package:myspotify/search/search_page.dart';
import 'package:myspotify/your%20library/your_library.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({ Key? key }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  //@override
      // void initState() {
      //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
      //   super.initState();
      // }

  int currentIndex=0;
  final tabs =  [HomePage(), const SearchPage(), const YourLibraryPage(), PremiumPage()];
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(
    // SystemUiMode.manual, 
    // overlays: [SystemUiOverlay.top]);

    return Scaffold(
      
      //resizeToAvoidBottomInset: false,
      body: tabs[currentIndex],
    
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0,0,0,0),
        child: BottomNavigationBar(
          backgroundColor: Colors.black87,
          //landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index)=>setState(()=>currentIndex=index),
          items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home,  color: Colors.grey,),
          activeIcon: Icon(CupertinoIcons.home, color: Colors.green,) ,
          label:"Home",
          backgroundColor: Color.fromARGB(255, 20, 19, 19)
          
           ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search, color: Colors.grey,),
          label: "Search",
          activeIcon: Icon(CupertinoIcons.search, color: Colors.green,) ,
          backgroundColor: Color.fromARGB(255, 20, 19, 19)
          ),
          
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.music_note_list, color: Colors.grey),
          activeIcon: Icon(CupertinoIcons.music_note_list, color: Colors.green,) ,
          backgroundColor: Color.fromARGB(255, 20, 19, 19),
          label: "Your Library"),
          
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.spotify, color: Colors.grey
          ),
         activeIcon: Icon(FontAwesomeIcons.spotify, color: Colors.green,) ,
         backgroundColor: Color.fromARGB(255, 20, 19, 19),
          label: "Premium"),

          
        ],
        
        ),
      ),
    );
  }
}