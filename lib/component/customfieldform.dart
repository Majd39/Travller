import 'package:flutter/material.dart';

class CustomFieldForm extends StatelessWidget {
  CustomFieldForm(
      {super.key,
      required this.icondata,
      this.hight = 45,
      this.radius = 10,
      this.keybourdtype = TextInputType.name,
      required this.onChanged,
      required this.text,
      required this.validator});

  final IconData icondata;
  final double hight;
  final double radius;
  final TextInputType keybourdtype;
  final String text;
  String? Function(String?)? validator;
  void Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: SizedBox(
        height: hight,
        child: TextFormField(
          validator: validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: text,
            errorMaxLines: 1,
            hintStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.blue.shade200),
            suffixIcon: Icon(icondata),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
            ),
          ),
          keyboardType: keybourdtype,
        ),
      ),
    );
  }
}
