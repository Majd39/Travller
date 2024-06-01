import 'package:flutter_application_2/view/screen/Signup/SignUpController.dart';
import 'package:get/get.dart';

class SignUPBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<SignUpController>(SignUpController());
  }
}
