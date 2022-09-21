import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 72,
        width: double.infinity,
        color: Colors.black,
        child: Row(
          
           children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 32,
                      width: 32,
                      child: const Center(child: Text("R", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),)),
                      decoration: const BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle
                    )
              ),
                  ),
          const Padding(
            padding:  EdgeInsets.only(left: 12),
            child: Text("Your Library", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
          ),
           Tooltip(
            message: "Search",
             child: Padding(
             padding: const EdgeInsets.only(left: 72),
             child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50),
           
               child: IconButton(
                 onPressed: (){},
                  icon: const Icon(Icons.search_outlined),
                   color: Colors.white,
                   splashRadius: 24,
                    iconSize: 28,    
                    ),
             ),
                     ),
           ),
           Tooltip(
            textStyle:  const TextStyle(color: Colors.black),
            decoration: BoxDecoration(color: Colors.green,
            borderRadius: BorderRadius.circular(4),
            ),
            message: "Add",
             child: Padding(
             padding: const EdgeInsets.only(right: 8),
             child: Material(
              //shape: CircleBorder(side: width),
              color: Colors.transparent,
           
              borderRadius: BorderRadius.circular(50),
               child: IconButton(onPressed:(){},
               splashRadius: 24,
                icon: const Icon(Icons.add, color:Colors.white ,), 
                // color: Colors.white, 
                 //hoverColor: Colors.red,
                 //highlightColor: Colors.green,
                // mouseCursor: MouseCursor.defer,
                  iconSize: 32,),
             ),
                     ),
           ) 
        ],),
      ),
    );
              
  }
}