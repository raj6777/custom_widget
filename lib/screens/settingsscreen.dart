import 'package:custom_widget/utils/appsettings.dart';
import 'package:flutter/material.dart';
import 'package:custom_widget/componanats/color_cell.dart';
import 'package:custom_widget/utils/constants.dart';
import 'package:provider/provider.dart';
class settingsscreen extends StatefulWidget {
  @override
  _settingsscreenState createState() => _settingsscreenState();
}

class _settingsscreenState extends State<settingsscreen> {
  static List<Color>colors=[
    Colors.black87,
    Colors.red,
    Colors.blue,
    Colors.deepPurple,
    Colors.indigo,
    Colors.green,
    Colors.teal,
    Colors.orange,
    Colors.amber,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<appsettings>().appColor,
        title: Text("settingsscreen"),),
      body:Container(
        alignment: Alignment.center,
        color: Colors.white,
        child:Column(
          children: [
            SizedBox(
              height:30
            ),
            Wrap(
              children:List.generate(constants.colors.length,(index){
                return GestureDetector(
                  onTap: (){
                    context.read<appsettings>().updateColor(index);

                  },
                  child:ColorCell(color:constants.colors[index],
                ),
                );
        }),
            ),

          ],
        ),
      ),
    );
  }
}

