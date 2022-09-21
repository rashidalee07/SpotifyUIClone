import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myspotify/home%20page/my_Container.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandscapeHomePage extends StatelessWidget {
   LandscapeHomePage({ Key? key }) : super(key: key);
  final List post = ["post 1", "post 2", "post 3", "post 4", "post 5"];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        systemNavigationBarColor:  Colors.black
      ));
    return Padding(
      padding: const EdgeInsets.only(left:0.0),
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [ Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8,0,0,8),
                child: Row(
                //mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    const Text("Recently played",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)
                ),
                const SizedBox(width: 180,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        
                        Padding(
                          padding: EdgeInsets.fromLTRB(24,0,0,0),
                          child: Icon(Icons.notifications, color: Colors.white, size: 24,),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(24,0,0,0),
                          child: Icon(Icons.library_music_outlined, color: Colors.white, size: 24,),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(24,0,0,0),
                          child: Icon(Icons.settings_outlined, color: Colors.white, size: 24,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              MyContainer(),
              const SizedBox(height: 10),
              const Padding(
                padding:  EdgeInsets.fromLTRB(0,0,320,0),
                child: Text("To get you started",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 10),
              MyContainer(),
              const SizedBox(height: 10),
              const Padding(
                padding:  EdgeInsets.fromLTRB(0,0,310,0),
                child:  Text("Try something else",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 10),
              MyContainer(),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle
                    )
              ),
                  ),
              
                Column(
                  children: const [Padding(
                    padding:  EdgeInsets.fromLTRB(0,4,104,0),
                    child: Text("MORE LIKE",
                          style: TextStyle(fontSize: 12,
                          color: Colors.white)),
                  ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5,0,0,0),
                          child: Text("Shankar-Ehsaan Loy",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                        ),],
                ),
              
              ], 
              ),
              const SizedBox(height: 10,),
              MyContainer(),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.fromLTRB(0,0,390,8),
                child: Text("Throwback",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              MyContainer(),
              const SizedBox(height: 10),
              const Padding(
                padding:  EdgeInsets.fromLTRB(0,0,335,0),
                child: Text("Featured Charts",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 10,),
              MyContainer(),
            const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.only(right: 385),
                child:  Text("Sing-along",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 10,),
              MyContainer(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle
                    )
              ),
                  ),
              
                Column(
                  children: const [Padding(
                    padding:  EdgeInsets.fromLTRB(0,4,40,0),
                    child: Text("MORE LIKE",
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                  ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5,0,0,0),
                          child: Text("Neha Kakkar",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                        ),],
                ),
              
              ], 
              ),
              const SizedBox(height: 10,),
              
              MyContainer(),
              const SizedBox(height: 10),
              const Padding(
                padding:  EdgeInsets.fromLTRB(0,0,270,0),
                child:  Text("Recomended for today",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 10),
              MyContainer(),            
              const SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle
                    )
              ),
                  ),
              
                Column(
                  children: const [Padding(
                    padding:  EdgeInsets.fromLTRB(0,4,15,0),
                    child: Text("MORE LIKE",
                          style: TextStyle(fontSize: 12)),
                  ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5,0,0,0),
                          child: Text("Devi Nagi",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.white
                          )),
                        ),],
                ),
              
              ], 
              ),
              const SizedBox(height: 10,),
              
              MyContainer(),
              
                        
              
            ],
          ),
        ]),
      ),
    );
  }
}