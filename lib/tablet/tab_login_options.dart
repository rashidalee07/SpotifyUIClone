import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myspotify/navigation%20bar/bottom_nav_bar.dart';

//import 'package:community_material_icon/community_material_icon.dart';


class TabLoginOptionsPage extends StatelessWidget {
  const TabLoginOptionsPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 19, 19),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
            const Icon(FontAwesomeIcons.spotify , size: 40, color: Colors.white,),
            const SizedBox(height: 16,),
            const Text("Millions of songs.",
             style: TextStyle(
              fontSize: 28,
               fontWeight: FontWeight.bold,
                color: Colors.white,)
                ),
            const Text("Free on Spotify.",
             style: TextStyle(
              fontSize: 28, 
               fontWeight: FontWeight.bold,
                color: Colors.white)
                ),
               const SizedBox(
                  height: 12,
                ),

                // First Button

            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(226, 96, 252, 101),
              fixedSize: const Size(300,40),
              shape: const StadiumBorder(), ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=> const BottomNavBar()));
              },
              child: const Text("Sign in free", 
               style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                 fontWeight: FontWeight.bold),),
              ),
             
              const SizedBox(height: 4,),
             //Google Login Button 

            OutlinedButton.icon(
              
              icon: const Icon(FontAwesomeIcons.google, color: Colors.white,),
              label: const Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Text("Continue with Google", style: TextStyle(
                  fontWeight: FontWeight.bold, 
                   fontSize: 16,
                    color: Colors.white),
                   // textAlign: TextAlign.center,
                    ),
              ),
              style: ElevatedButton.styleFrom(
              //primary: const Color.fromARGB(255, 3, 3, 3),
              fixedSize: const Size(300,40),
              shape: const StadiumBorder(),
              side: const BorderSide( color: Colors.grey, width: 1),
              alignment: Alignment.centerLeft),
            
            onPressed: (){},),
             
             // Facebook Login Button 
             const SizedBox(height: 4,),

            OutlinedButton.icon(
              icon: Container(
                height: 24,
                width: 24,
                decoration:  BoxDecoration(color: Colors.white,
                
                //shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(24),
                //border: Border.all(color: Colors.lightBlueAccent)
                ),
                
                child:  const Icon(FontAwesomeIcons.facebook, color: Colors.blueAccent, size: 24,)),
              label: const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text("Continue with Facebook", style: TextStyle(
                  fontWeight: FontWeight.bold, 
                   fontSize: 16,
                    color: Colors.white),),
              ),
              style: ElevatedButton.styleFrom(
              //backgroundColor: Colors.blueAccent,
              fixedSize: const Size(300,40),
              shape: const StadiumBorder(),
              side: const BorderSide( color: Colors.grey, width: 1),
              alignment: Alignment.centerLeft),
              onPressed: (){},),

              //Text Button
              
              
            TextButton(
              onPressed: (){},
              child: const Text("Log in",
               style: TextStyle(
                fontSize: 16, 
                 fontWeight: FontWeight.bold,
                  color: Colors.white)
                  ),
            ),
              
          ]),
        ),
      ),
    
    );
  }
}