import 'package:flutter/material.dart';

import '../navigation bar/bottom_nav_bar.dart';

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(226, 96, 252, 101),
                fixedSize: const Size(300,40),
                shape: const StadiumBorder(),),
                
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> const BottomNavBar()));
                },
                child: const Text("Sign in free", 
                 style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                   fontWeight: FontWeight.bold),),
                );

  }
}