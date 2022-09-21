// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(
              icon: Container(
                decoration:  BoxDecoration(color: Colors.white,
                shape: BoxShape.circle,

                border: Border.all(color: Colors.lightBlue,)),
                child:  const Icon(FontAwesomeIcons.facebook)),
              label: const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Continue with Facebook", style: TextStyle(
                  fontWeight: FontWeight.bold, 
                   fontSize: 16,
                    color: Colors.black87),
                    ),
              ),
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 3, 3, 3),
              fixedSize: const Size(300,40),
              shape: const StadiumBorder(),
              side: const BorderSide( color: Colors.grey, width: 1),
              alignment: Alignment.centerLeft
            ),
              onPressed: (){},
              
              ),
          ],
        ),
    );
    
  }
}