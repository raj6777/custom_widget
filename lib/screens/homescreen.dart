import 'package:custom_widget/componanats/IAppbar.dart';
//import 'package:custom_widget/componanats/appbar.dart';
import 'package:custom_widget/screens/settingsscreen.dart';
import 'package:custom_widget/utils/appsettings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("home"),
        actions: [

          IconButton(
          icon:Icon(Icons.settings))
          onPressed: () async{
            Navigator.push(context,
              MaterialPageRoute(builder: (context) {
              return settingsscreen();
    }));
    },
              icon:Icon(Icons.settings))
        ],
      ),*/
      appBar: IAppbar(
        height: 120,
        color: context.watch<appsettings>().appColor,
        //title: Text("home"),

        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
            child:Text("home",textAlign: TextAlign.center,
            ),),
            IconButton(
                icon:Icon(Icons.settings),
                onPressed: () async{
                Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                return settingsscreen();
      }));
      },
            )
          ],
        ),
    ),
      body: Container(
        color:context.watch<appsettings>().appColor,
      ),
    );
  }
}
