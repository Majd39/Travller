import 'package:flutter/material.dart';

import '../../../component/customtextauth.dart';
import '../../../core/constant/appcolor.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(25),
              //     color: AppColor.primaryColor,
              //   ),
              //   height: 270,
              //   width: 400,
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 70.0, right: 200),
              //     child: CustomTextAuth(
              //       text: 'Profile',
              //       isbold: true,
              //       color: Colors.white,
              //       size: 30,
              //     ),
              //   ),
              // ),
              Stack(children: [
                Container(
                  padding: const EdgeInsetsDirectional.only(top: 180),
                  //  alignment: AlignmentDirectiona.e,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/6.png'),
                    radius: 70,
                  ),
                ),
                // CustomButton(
                //   onPressed: () {},
                //   text: '',
                //   // Icon(Icons.edit_rounded)
                // )
              ]),
              const SizedBox(
                height: 10,
              ),
              CustomTextAuth(
                text: 'Ali Essa',
                size: 35,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  ListTile(
                    tileColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: const Icon(Icons.calendar_today_rounded),
                    title: const Text('Birth date'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    tileColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: const Icon(Icons.person),
                    title: const Text('Gender'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    tileColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: const Icon(Icons.phone_android_rounded),
                    title: const Text('Phone number'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    tileColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: const Icon(Icons.logout_rounded),
                    title: const Text('Log out'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    tileColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading:
                        const Icon(Icons.delete_outline_rounded, color: Colors.red),
                    title: const Text(
                      'Delete your account',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ]),
              ),
              // Column(
              //   children:const [

              //         SizedBox(height: 40,),
              //     CustomField( text: 'Birth date'),
              //         SizedBox(height: 20,),
              //     CustomField(text: 'Gender'),
              //         SizedBox(height: 20,),
              //     CustomField(text: 'Phone number'),
              //                       SizedBox(height: 20,),
              //     CustomField(text: 'Log out'),

              //                       SizedBox(height: 20,),
              //     CustomField(text: 'Delete your account'),

              //   ],
              // )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 33,
            //    showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home_outlined),
                  backgroundColor: AppColor.primaryColor),
              BottomNavigationBarItem(
                  label: 'Bookings',
                  icon: Icon(Icons.airplane_ticket_outlined),
                  backgroundColor: AppColor.primaryColor),
              BottomNavigationBarItem(
                  label: 'favorite',
                  icon: Icon(Icons.favorite_border_sharp),
                  backgroundColor: AppColor.primaryColor),
              BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(Icons.account_circle_outlined),
                  backgroundColor: AppColor.primaryColor)
            ]),
      ),
    );
  }
}
