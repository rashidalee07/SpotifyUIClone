import 'package:flutter/material.dart';

class SpotifyPlans extends StatelessWidget {
 
 
  SpotifyPlans({ Key? key }) : super(key: key);
  final List freemium = ["Ad Breaks", "Play in Shuffle", "6 skips per hour", "Streaming only", "Basic audio quality"];
  final List premium = ["Ad-free music listening", "Play any song", "Unlimited skips", "Offline listening", "High audio quality"];

  
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: 250,
        
              child: ListView.builder(itemCount: freemium.length, 
                     scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(0),
                  itemBuilder: (context, index){
                    
                    return Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                          
                          children: [
                            
                            Container(
                            height: 140,
                            width: 140,
                            decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                            color: Color.fromARGB(255, 48, 45, 45),
                            ),
                            
                            
                            
                            child: Column(
                              mainAxisAlignment:MainAxisAlignment.start,
                              children:  [
                                const Padding(
                                  padding:  EdgeInsets.fromLTRB(0,8,0,0),
                                  child:  Text("Free", style: TextStyle(fontSize: 12, color:Colors.white),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0,40,0,0),
                                  child: Text(freemium[index], style: const TextStyle(fontSize: 20,
                                  color:Colors.white,
                                  fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            
                          ),
                           Container(
                            decoration:  BoxDecoration(borderRadius: const BorderRadius.only(topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                             color: Colors.green,
                             gradient: LinearGradient(colors: [Colors.green, Colors.green.withOpacity(0.5)])
                            ),
                            child: Column(
                              children: [
                                const Padding(
                                  padding:  EdgeInsets.fromLTRB(0,8,0,0),
                                  child:  Text("Premium", style: TextStyle(fontSize: 12, color:Colors.white),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0,40,0,0),
                                  child: Text(premium[index], style: const TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                  ),
                                )],
                            ),
                            height: 140,
                            width: 140,
                           
                            
                          ),
                          
                        ],),
                    );
                
                  }),
            ),
          );
  }
}