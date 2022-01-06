//import 'package:flutter/cupertino.dart';
import 'package:custom_widget/componanats/btn.dart';
import 'package:custom_widget/componanats/link_btn.dart';
import 'package:custom_widget/componanats/tf.dart';
import 'package:custom_widget/screens/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:custom_widget/utils/appsettings.dart';
import 'package:custom_widget/utils/utils.dart';
//import 'package:custom_widget/utils/utils.dart';


class loginscreen extends StatefulWidget {
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Container(
          child: Column(
            children: [
              tf(controller: _emailController,
                  hintText: "Email",
                  helpText: "email",
                  isPassword: false,
                  prefixIcon: Icons.email,
              ),
              tf(controller: _passwordController,
                  hintText: "Password",
                  helpText: "Password",
                  isPassword:true,
                  prefixIcon: Icons.lock,
              ),

              Row(
                children: [
                  Expanded(
                      child:btn(
                        onPress: () {
                          print("hi");
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return homescreen();
                              }));
                        },
                        text: "Login", color: context.watch<appsettings>().appColor,
                      ),

                  ),
                ],
              ),
              linkbtn(
                onPress: () {
                  print("hi");
                },
                text: "forgot password", color: Colors.transparent,
              ),

            ],
          ),
        ));
  }
}
