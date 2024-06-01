import 'package:flutter_application_2/view/screen/Signin/SignInService.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  var email;
  var password;
  SignINService service = SignINService();
  OnClickeSignin() {
    service.signIN(email, password);
  }
}
