import 'package:flutter/material.dart';
import 'package:custom_widget/utils/appsettings.dart';
import 'package:provider/provider.dart';
class ColorCell extends StatelessWidget {
  ColorCell({required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color:color,
      ),
      child: context.watch<appsettings>().appColor == color ? Icon(Icons.check_circle,
      color: Colors.white,
      )
          :SizedBox(),
    );
  }
}
