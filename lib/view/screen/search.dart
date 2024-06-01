import 'package:flutter/material.dart';

import '../../component/customfiled.dart';
import '../../component/customtextauth.dart';
import '../../core/constant/appcolor.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          toolbarHeight: 80,
          backgroundColor: AppColor.primaryColor,
          elevation: 0.0,
          title: CustomTextAuth(
            text: 'Destination',
            isbold: true,
            color: Colors.white,
            size: 30,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            MaterialButton(
              onPressed: () {},
              child: const CustomField(
                width: 600,
                // suffixIcon: Icons.search,
                // hinttext: 'destination...',
                paddingbottom: 0,
                paddingleft: 0,
                paddingright: 0,
                radius: 20, text: '',
              ),
            ),
            // const  Divider(
            //     color:Colors.black26,
            //     height: 50,
            //     thickness: 1,
            //   ),
          ]),
        ));
  }
} //  ListTile(
//     tileColor: Colors.black12,
//   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//     leading:const Icon(Icons.search),
//     title: const Text(''),
//   ),
