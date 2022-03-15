import 'package:colors/model/colors_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home.dart';
import './model/colors_data.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ColorsData>(
      create:(context)=> ColorsData() ,
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}