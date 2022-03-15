
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/colors_data.dart';


class ColorsList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<ColorsData>(
      builder: (context, colorData, child) { 
        return ListView.builder(
        shrinkWrap: true,
        itemCount: colorData.colorsList.length,
        
        itemBuilder: (context , index){
          return ListTile(
            onLongPress: () => colorData.removeColor(index),
            leading: CircleAvatar(
              backgroundColor: colorData.colorsList[index].colorz,
            ),
            title: Text(
              colorData.colorsList[index].name!
            ),
            trailing: IconButton(
              icon: Icon(Icons.radar)
              ,
              onPressed: () {
              colorData.addFavourtie(index);
            },),
          ); 
        } 
        
        );
      },
    
    );
  }
}