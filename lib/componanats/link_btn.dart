import'package:flutter/material.dart';
class linkbtn  extends StatelessWidget {
  linkbtn({required this.onPress,required this.text,required this.color}) {
  }
  final Function onPress;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: EdgeInsets.all(10),
      child: FlatButton(
        onPressed:()=>onPress(),
        child: Text(text,
          style: TextStyle(color: Colors.red),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
      ),
    );
  }
}
