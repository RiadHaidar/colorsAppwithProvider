import 'package:colors/screens/home.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'dart:math';
import 'dart:ui';
class ColorsData extends ChangeNotifier {
  List<Colorz> colorsList = [
    //Colorz("red"),
  ];

  List<Colorz> fav= [
      //  Colorz("red"),

  ];

  void addNewColor(String name){
     Color ?colorz = Color(Random().nextInt(0xffffffff)) ;
     Colorz c = new Colorz(name, colorz);

    colorsList.add(c);
    notifyListeners();
  }

  void addFavourtie(int index){


    fav.add(colorsList[index]);
    notifyListeners();
  }

  void removeColor(int index){
    colorsList.removeAt(index); 
    notifyListeners();
  }


  void removeFavColor(int index){
    fav.removeAt(index); 
    notifyListeners();
  }
}

