import 'package:flutter/material.dart';

class OfferContainer extends StatelessWidget {
  const OfferContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder:((context, index) {
      
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 300,
          width: 400,
          decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 54, 139, 57), Colors.green.withOpacity(0.9)],
            end: Alignment.bottomRight
            ),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
            
            children: [
              Padding(
                padding: const EdgeInsets.only(top:16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  const Text(
                    "Premium Individual",
                    style: TextStyle(
                      letterSpacing: 
                      0.25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                      ),
                    ),
                  Column(
                    children: const [
                      Text(
                        "Free",
                        style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                      fontSize: 24
                        )
                        ),
                      Text(
                        "For 1 Month",
                        style: TextStyle(color: Colors.white,
                       // fontWeight: FontWeight.bold,
                      fontSize: 14
                        )
                        ),
                    ],
                  ),
    
                ],),
                
              ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
              Padding(
                padding:  EdgeInsets.only(top:24.0, bottom: 8),
                child: Text(
                  "Ad-Free Musics",
                  style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                  ),
                  ),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: 8),
                child: Text(
                  "Download",
                  style: TextStyle(
                        color: Colors.white,
                       fontWeight: FontWeight.bold,
                        fontSize: 16
                  ),
                  ),
              ),
              
              
              Padding(
                padding:  EdgeInsets.only(bottom: 8),
                child: Text("Unlimited Skips",
                style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                  ),
                  ),
              ),
              
              Padding(
                padding:  EdgeInsets.only(bottom: 8),
                child: Text("On-demand playback",
                style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                  ),
                  ),
              ),
              
              
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text("Cancel anytime",
                style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                  ),
                
                ),
              ),
    
            ],),
    
            ElevatedButton(onPressed: (){}, 
            child: const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Text(
                "TRY 1 MONTH FREE",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
                ),
            ),
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0
            ),
            ),
            const Padding(
              padding:  EdgeInsets.fromLTRB(10,0,4,0),
              child: Text("Only 299.00/Month after. Offer only for users who are new to Premium",
              style: TextStyle(color: Colors.white),
              ),
            ),
            ],
            
            ),
    
        ),
      );
    })
    );
  }
}