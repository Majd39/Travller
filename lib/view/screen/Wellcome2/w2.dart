import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../component/custombutton.dart';
import '../../../component/customtextauth.dart';
import '../../../core/constant/appcolor.dart';

class Wellcome2 extends StatelessWidget {
  const Wellcome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColor.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SafeArea(
              child: SizedBox(
                height: 400,
                child: Lottie.asset('assets/Lottie/1.json',
                    width: 2000, height: 320),
              ),
            ),
            CustomTextAuth(
              text: 'Wellcome To',
              size: 20,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomTextAuth(
              text: 'Traveler',
              size: 40,
              isbold: true,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 420,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CustomButton(
                          text: 'Sign In',
                          fontsize: 19,
                          width: 400,
                          height: 45,
                          backgroundcolor: Colors.orange,
                          onPressed: () {
                            Get.toNamed("/signin");
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //  Spacer(flex: 1,),
                  Stack(
                    children: [
                      Container(
                        width: 420,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CustomButton(
                          text: 'Sign Up',
                          fontsize: 19,
                          width: 400,
                          height: 45,
                          backgroundcolor: Colors.green,
                          onPressed: () {
                            Get.toNamed('/signup');
                          },
                        ),
                      ),
                    ],
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
