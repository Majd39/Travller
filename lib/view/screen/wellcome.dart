import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';

import '../../component/custombutton.dart';

class Wellcome extends StatelessWidget {
  const Wellcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SafeArea(
              child: SizedBox(
                height: 400,
                child: Lottie.asset('assets/Lottie/4.json',
                    width: 2000, height: 320),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                //   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: 'Sign In',
                    fontsize: 17,
                    width: 125,
                    height: 45,
                    onPressed: () {
                      Get.toNamed("/signin");
                    },
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  CustomButton(
                    text: 'Sign Up',
                    fontsize: 17,
                    width: 125,
                    height: 45,
                    onPressed: () {
                      Get.toNamed("/signup");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
