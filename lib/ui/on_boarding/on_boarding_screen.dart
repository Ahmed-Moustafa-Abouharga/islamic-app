import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
 static const String routeName = 'on_boarding' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/Masjid.png'),
              Text('ISLAMI')
            ],
          )
        ],
      ),
    );
  }
}
