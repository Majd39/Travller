import 'package:flutter_application_2/view/screen/Signin/SignInController.dart';
import 'package:get/get.dart';

class SignInBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<SignInController>(SignInController());
  }
}
