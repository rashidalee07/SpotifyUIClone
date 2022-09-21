import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myspotify/tablet/side_nav_bar.dart';
import 'package:myspotify/utils/my_colors.dart';
import 'package:myspotify/utils/search_genres.dart';


import '../search/custom_search_delegate.dart';

class TabletSearchPage extends StatelessWidget {
 const TabletSearchPage({ Key? key }) : super(key: key);


  
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.black,
      child: Row(
        children: [
          SideNavBar(),
          Expanded(
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Column(
                  children: [
                    
                   SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16,20,6,0),
                        child: ElevatedButton.icon(
                          
                          icon: Icon(
                            CupertinoIcons.search,
                            color: Colors.grey[500],
                            ),
                          label:  Text(
                             
                            "Artists, songs, or albums",
                            style: TextStyle(
                              
                              color: Colors.grey[700],
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                              
                            ),
                            ),
                            style: ElevatedButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0)),
                              minimumSize:const Size(double.infinity, 40),
                       
                   ),
                            
                          onPressed: (){
                            showSearch(context: context, delegate: CustomSearchDelegate(),);
                          },
                          ) 
                          
                          
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left:16.0),
                        child: Text("Browse All", 
                        style: TextStyle(
                          fontSize: 16, 
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,),
                      child: GridView.builder(
                        padding: const EdgeInsets.only(top: 0),
                      
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, mainAxisExtent: 100),
                        itemCount:searchGenres.length,
                       // scrollDirection: Axis.vertical,
                        //shrinkWrap: true,
                        
                        itemBuilder: (context, index) {
                          return Container(
                            width: 60,
                            height: 20,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                              color: myColors[index],
                              borderRadius: BorderRadius.circular(4.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(searchGenres[index], style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                  ),),
                              ) 
                
                          );
                        
                      },),
                    ),)
                      
                    
                  ],
                ),
            ),
          ),
        ],
      ),
    );
    
      

    
  }
}