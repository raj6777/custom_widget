import 'package:flutter/material.dart';
class tf extends StatelessWidget{
tf({
  required this.controller,
  required this.hintText,
  required this.helpText,
  required this.prefixIcon,
  //required this.suffixIcon,
  required this.isPassword,
  //required this.enabled,
  //required this.readOnly,
  //required this.borderColor,
});
final TextEditingController controller;
final String hintText;
final String helpText;
final IconData? prefixIcon;
//final IconData suffixIcon;
final bool isPassword;
//final bool enabled;
//final bool readOnly;
//final bool borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        //readOnly: null == readOnly? false : true,
        obscureText: null == isPassword? false:true,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.greenAccent,
                width:1.0
            ),
          ),
          enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
          color: Colors.red,
          width:1.0
    ),
        ),
          border: OutlineInputBorder(
          borderSide: BorderSide(
          // ignore: unnecessary_null_comparison, prefer_if_null_operators
          color: Colors.red,
          width:1.0
    ),
      ),
       hintText: null == hintText ? '':hintText,
          helperText: null == helpText ? '':helpText,

          prefixIcon: null == prefixIcon ? null:Icon(prefixIcon),
          //suffixIcon: null == suffixIcon ? null:Icon(suffixIcon),
          //enabled: null == enabled ? true:false,

    ),
      ),
    );
  }
}
