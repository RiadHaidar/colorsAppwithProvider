
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/colors_data.dart'; 



class FavList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('fav screen'),),
      body: Column(
        children: [
          Consumer<ColorsData>(
            builder: (context, colorData, child) { 
              return ListView.builder(
              shrinkWrap: true,
              itemCount: colorData.fav.length,
              
              itemBuilder: (context , index){
                return ListTile(
                  onLongPress: () => colorData.removeFavColor(index),
                  leading: CircleAvatar(
                    backgroundColor: colorData.fav[index].colorz,
                  ),
                  title: Text(
                    colorData.fav[index].name!
                  ),
                ); 
              } 
              
              );
            },
          
          ),
        ],
      ),
    );
  }
}