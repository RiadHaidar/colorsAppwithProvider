import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/colors_data.dart';

TextEditingController _tx = TextEditingController();
String? _col;

class ColorAddButton extends StatelessWidget {
  const ColorAddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext ctx) {
              return Container(
                height: 500,
                child: Column(
                  children: [
                    TextFormField(
                      
                      controller: _tx,
                      onChanged: (value) => _col = value,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Provider.of<ColorsData>(context, listen: false)
                            .addNewColor(_col!);
                            _tx.clear();
                        Navigator.pop(context);
                      },
                      child: Text('Add'),
                    ),
                  ],
                ),
              );
            });
      },
    );
  }
}
