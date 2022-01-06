import'package:flutter/material.dart';
class IAppbar extends PreferredSize{
  final Row child;
  final double height;
  final Color color;

   IAppbar({required this.child, required this.height,required this.color, Key? key}) :
        super(key: key,child: child,preferredSize: Size.fromHeight(height));
   /*const IAppbar({
     required this.child,
     this.height = kToolbarHeight,
  });*/

  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: preferredSize.height,
      color:color,
      alignment: Alignment.center,
      child: child,
    );
  }
}
