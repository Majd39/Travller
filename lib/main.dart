import 'package:flutter/material.dart';
import 'package:flutter_application_2/bindings/SignINBindings.dart';
import 'package:flutter_application_2/bindings/SignUpBindings.dart';
import 'package:flutter_application_2/view/screen/Home/home.dart';
import 'package:flutter_application_2/view/screen/Profile/profile.dart';
import 'package:flutter_application_2/view/screen/Signin/signin.dart';
import 'package:flutter_application_2/view/screen/Signup/signup.dart';
import 'package:flutter_application_2/view/screen/Wellcome2/w2.dart';
import 'package:flutter_application_2/view/screen/wellcome.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Edu_NSW_ACT_Foundation',

        //      headline1: ,// titel
        //      bodyText1:
//),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/wellcome2",
      getPages: [
        GetPage(name: "/wellcome", page: () => const Wellcome()),
        GetPage(name: "/wellcome2", page: () => const Wellcome2()),
        GetPage(
          name: "/home",
          page: () => const Home(),
        ),
        GetPage(
          name: "/profil",
          page: () => const Profile(),
        ),
        GetPage(
            name: "/signin", page: () => SignIn(), binding: SignInBindings()),
        GetPage(
          name: "/signup",
          page: () => SignUp(),
          binding: SignUPBindings(),
        )
      ],
    );
  }
}
