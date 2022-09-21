import 'package:flutter/material.dart';
import 'package:myspotify/home%20page/my_Container.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
   HomePage({ Key? key }) : super(key: key);
  final List post = ["post 1", "post 2", "post 3", "post 4", "post 5"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8,32,12,0),
        child: ListView(
          children: [ Column(
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,0,48,0),
                    child: Text("Recently played",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)
              ),
                  ),
                   Icon(Icons.notifications, color: Colors.white, size: 24,),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12,0,0,0),
                          child: Icon(Icons.library_music_outlined, color: Colors.white, size: 24,),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(12 ,0,0,0),
                          child: Icon(Icons.settings_outlined, color: Colors.white, size: 24,),
                        )
                ],
              ),
              MyContainer(),
              const SizedBox(height: 40),
              const Padding(
                padding:  EdgeInsets.fromLTRB(0,0,152,0),
                child:  Text("To get you started",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 10),
              MyContainer(),
              const SizedBox(height: 30),
              const Padding(
                padding:  EdgeInsets.fromLTRB(0,0,150,0),
                child:  Text("Try something else",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 10),
              MyContainer(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:6.0),
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
                          style: TextStyle(fontSize: 12)),
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
                padding: EdgeInsets.fromLTRB(0,0,220,0),
                child: Text("Throwback",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              MyContainer(),
              const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.fromLTRB(0,0,170,0),
                child: Text("Featured Charts",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 10,),
              MyContainer(),
            const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.fromLTRB(0,0,220,0),
                child:  Text("Sing-along",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 10,),
              MyContainer(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                          color: Colors.pink,
                          shape: BoxShape.circle
                  )
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
              const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.fromLTRB(0,0,105,0),
                child:  Text("Recomended for today",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 10),
              MyContainer(),            
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                          color: Colors.pink,
                          shape: BoxShape.circle
                  )
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