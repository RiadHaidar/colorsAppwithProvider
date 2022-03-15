import 'package:colors/screens/favourite_screen.dart';
import 'package:flutter/material.dart';
import './colors_list.dart';
import 'package:provider/provider.dart';
import '../model/colors_data.dart';
import '../widgets/color_add_button.dart';
import '../screens/favourite_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext ctx) => FavList()));
              },
              child: ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text('Favourtie'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ColorAddButton(),
      appBar: AppBar(
        title: Text('Colors app'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: ColorsList(),
            ),
          ],
        ),
      ),
    );
  }
}
