// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyCircularAvatar extends StatelessWidget {
   
final String imageURLs ; 

  MyCircularAvatar({required this.imageURLs});
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 72,
                width: 72,
                  decoration:
                    BoxDecoration(
                          color: Colors.green,
                            shape: BoxShape.circle,
                              image: DecorationImage(image: NetworkImage(imageURLs),
                                fit: BoxFit.cover ))
                        );
  }
}