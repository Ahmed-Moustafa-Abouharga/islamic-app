import 'package:flutter/material.dart';
import 'package:islamic_app/ui/on_boarding/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = '/' ;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),() => Navigator.popAndPushNamed(context,OnBoardingScreen.routeName),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/Splash Screen.png'),
      )),
    );
  }
}
