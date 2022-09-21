import 'package:flutter/material.dart';
import 'package:myspotify/utils/artist_name_list.dart';
import 'package:myspotify/utils/artists_url_list.dart';

import 'package:myspotify/your%20library/my_circular_avatar.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchItems = artist;
  List <String> searchArtists = singers;
  

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed:() {
          query='';
          
        },
        )
      ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
   return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed:() {
          close(context, null);
        },
        );
      
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var searchItem in searchItems)
    {
      
      if(searchItem.toLowerCase().contains(query.toLowerCase()))
      {
        matchQuery.add(searchItem);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
      var result = matchQuery[index];
      var imageUrl = singers[index];
      return ListTile(
         tileColor: Colors.grey[900],
        title: Text(result, style: const TextStyle(color: Colors.grey),),
        trailing: MyCircularAvatar(imageURLs: imageUrl),

      );
      });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    
    for(var searchItem in searchItems)
    {
      if(searchItem.toLowerCase().contains(query.toLowerCase()))
      {
        matchQuery.add(searchItem);
      }
    }

    return ListView.builder(
      
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
      var result = matchQuery[index];
      String imgUrl = singers[index];
      return Container(
        color: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              
             //contentPadding: EdgeInsets.(top: 10),
              //tileColor: Colors.grey[900],
              title: Text(result, style: const TextStyle(color: Colors.grey),),
              trailing: MyCircularAvatar(imageURLs: imgUrl),
            ),
          ),
        ),
      );
      }); 
  }

  @override
ThemeData appBarTheme(BuildContext context) {
  
   return ThemeData(
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.grey
    ),
    hintColor: Colors.grey,
    scaffoldBackgroundColor: Colors.black87,
    inputDecorationTheme:  const InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.white),
      focusedBorder:UnderlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 34, 34, 34))
      ),
     ),

   appBarTheme:  AppBarTheme(
    
    backgroundColor: Colors.grey[900], // affects AppBar's background color
    foregroundColor: Colors.grey, // affects the initial 'Search' text
    titleTextStyle:  
          const TextStyle( // headline 6 affects the query text
          color: Colors.white,
          fontSize: 16.0,
          decorationColor: Colors.white,
          fontWeight: FontWeight.bold)),
   
   );
     
}

}