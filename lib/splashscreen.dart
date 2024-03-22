import 'package:flavour_fellow/signup.dart';
import 'package:flavour_fellow/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

import 'utils/constants.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      backgroundColor: AppColors.secondary,
      duration: Duration(seconds: 3),
      childWidget: SizedBox(
        height: 200,
        child: Image.asset("assets/images/splash.png"),
      ),
      nextScreen: const SignUp(),
    );
  }
}
