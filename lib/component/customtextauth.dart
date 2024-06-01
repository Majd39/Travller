import 'package:flutter/material.dart';

class CustomTextAuth extends StatelessWidget {
   final String text;
  double size ;
  bool isbold  ;
  Color color ;

   CustomTextAuth(   { super.key, required this.text,   this.size=15.0 ,this.isbold =false , this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return   Text(
    text,
      style: TextStyle(
        fontSize: size,
        color:color,
          fontWeight: isbold? FontWeight.bold :FontWeight.normal

      ),
    );
  }
}