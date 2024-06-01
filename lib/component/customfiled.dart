import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    this.hight = 45,
    this.width = 300,
    this.radius = 10,
    this.paddingleft = 30,
    this.paddingright = 30,
    this.paddingtop = 0,
    this.paddingbottom = 20,
    required this.text,
  });
  final double hight;
  final double width;
  final String text;
  final double paddingleft;
  final double paddingright;
  final double paddingtop;
  final double paddingbottom;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        color: Colors.white,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
