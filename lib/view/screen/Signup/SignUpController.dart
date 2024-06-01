import 'package:flutter_application_2/view/screen/Signup/SignUpService.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var name = '';
  var email = '';
  var password = '';
  var c_password = '';
  SignUpService service = SignUpService();
  void signUpOnClick() {
    service.signup(name, email, password, c_password);
  }
}
