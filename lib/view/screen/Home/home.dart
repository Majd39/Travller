import 'package:flutter/material.dart';

import '../../../component/customfiled.dart';
import '../../../component/customtextauth.dart';
import '../../../core/constant/appcolor.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Center(
        child: Scaffold(
          appBar: AppBar(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            toolbarHeight: 80,
            backgroundColor: AppColor.primaryColor,
            elevation: 0.0,
            title: CustomTextAuth(
              text: 'Traveler',
              isbold: true,
              color: Colors.white,
              size: 30,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          ),
          body: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {},
                child: const CustomField(
                  width: 400,
                  // suffixIcon: Icons.search,
                  // hinttext: 'destination...',
                  paddingbottom: 0,
                  paddingleft: 0,
                  paddingright: 0,
                  radius: 20, text: '',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Most Visited ',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellowAccent,
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Most Visited ',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    );
                  },
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(iconSize: 33, items: const [
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
      ),
    );
  }
}
