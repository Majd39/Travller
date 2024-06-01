import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/screen/Signin/SignInController.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../component/custombutton.dart';
import '../../../component/customfieldform.dart';
import '../../../component/customtextauth.dart';
import '../../../core/constant/appcolor.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  SignInController controller = Get.find();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Form(
            key: formState,
            child: SingleChildScrollView(
              child: Column(children: [
                Lottie.asset('assets/Lottie/Animation2.json',
                    width: 1500, height: 320),
                Center(
                  child: CustomTextAuth(
                    text: 'Sign In',
                    size: 40.0,
                    isbold: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(vertical: 1),
                  child: CustomFieldForm(
                    validator: (val) {
                      if (val == "") {
                        return "Email is requerd";
                      }
                    },
                    onChanged: (value) {
                      controller.email = value;
                    },
                    text: "Email adress",
                    icondata: Icons.email_outlined,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(vertical: 1),
                  child: CustomFieldForm(
                    validator: (val) {
                      if (val == "") {
                        return "Password is requerd";
                      }
                    },
                    onChanged: (value) {
                      controller.password = value;
                    },
                    text: "Password",
                    icondata: Icons.lock_rounded,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: CustomTextAuth(
                        text: 'Forget PassWord ?',
                        color: AppColor.grey,
                        size: 10,
                      ),
                    ),
                    CustomButton(
                      text: 'Sign In',
                      onPressed: () {
                        if (formState.currentState!.validate()) {
                          signInOnClicke();
                          Get.toNamed("/home");
                        }
                      },
                    ),
                  ],
                )
              ]),
            )));
  }

  void signInOnClicke() {
    controller.OnClickeSignin();
  }
}
