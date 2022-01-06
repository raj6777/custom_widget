import 'package:custom_widget/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:custom_widget/utils/appsettings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
      ChangeNotifierProvider(
        create: (_)=>appsettings(),
    ),
    ],
    child:MaterialApp(
      title: "custom widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: loginscreen(
        //color:Colors.white,
      ),

    ),

    );
    return MaterialApp(
      title: "custom widget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: loginscreen(
        //color:Colors.white,
      ),

    );
  }
}

