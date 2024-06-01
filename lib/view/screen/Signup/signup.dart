import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/screen/Signup/SignUpController.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../component/custombutton.dart';
import '../../../component/customfieldform.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  SignUpController controller = Get.find();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Form(
          key: formState,
          child: SingleChildScrollView(
            child: Column(children: [
              SafeArea(
                child: Lottie.asset('assets/Lottie/n.json',
                    width: 2000, height: 280),
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 1),
                child: CustomFieldForm(
                  validator: (val) {
                    if (val == "") return "your name is requierd";
                  },
                  onChanged: (value) {
                    controller.name = value;
                  },
                  text: "Name",
                  icondata: Icons.person,
                  // suffixIcon: Icons.password_sharp,
                  keybourdtype: TextInputType.visiblePassword,
                  // lable: 'Password',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 1),
                child: CustomFieldForm(
                  validator: (val) {
                    if (val == "") return "Your email is requierd";
                  },
                  onChanged: (value) {
                    controller.email = value;
                  },
                  text: "Email",
                  icondata: Icons.email,
                  // suffixIcon: Icons.password_sharp,
                  keybourdtype: TextInputType.visiblePassword,
                  // lable: 'Password',
                ),
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 1),
                child: CustomFieldForm(
                  validator: (val) {
                    if (val == "") return "Enter your password";
                  },
                  onChanged: (value) {
                    controller.password = value;
                  },
                  text: "Password",
                  icondata: Icons.password_sharp,
                  // suffixIcon: Icons.password_sharp,
                  keybourdtype: TextInputType.visiblePassword,
                  // lable: 'Password',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 1),
                child: CustomFieldForm(
                  validator: (val) {
                    if (val == "") {
                      return 'Confirme Password';
                    }
                  },
                  onChanged: (value) {
                    controller.c_password = value;
                  },
                  text: "Confirme Password",
                  // suffixIcon: Icons.password_sharp,
                  keybourdtype: TextInputType.visiblePassword,
                  icondata: Icons.password,
                  // lable: 'Password Confirmation',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 20),
                child: CustomButton(
                  onPressed: () {
                    if (formState.currentState!.validate()) {
                      onClickSignUp();
                      Get.toNamed("/home");
                    }
                  },
                  text: 'Sign Up',
                ),
              )
            ]),
          ),
        ));
  }

  void onClickSignUp() {
    controller.signUpOnClick();
  }
}
