import 'package:flutter/material.dart';
import 'package:netfilm/ui/tv/presentation/screens/tv_ui.dart';

import '../moives/presentation/screens/moive_ui.dart';

class MainScreen  extends StatefulWidget{
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List <Widget>screen=[
    MovieUi(),
    TvUi()
  ];

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: screen[currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (int index){
        setState((){
          currentIndex=index;

        });

      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined),label: "Movies",),
        BottomNavigationBarItem(icon: Icon(Icons.tv_sharp),label: "Tv"),
      ],
    ),
  );

  }
}