import 'package:flutter/material.dart';
import 'package:islamic_app/styles/app_theme.dart';
import 'package:islamic_app/ui/home_screen/HomeScreen.dart';
import 'package:islamic_app/ui/home_screen/bottom_nav_tabs/quran_tab/quran_details_screen.dart';
import 'package:islamic_app/ui/on_boarding/on_boarding_screen.dart';
import 'package:islamic_app/ui/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
       // SplashScreen.routeName: (_) => SplashScreen(),
       // OnBoardingScreen.routeName: (_) => OnBoardingScreen(),
        HomeScreen.routeName:(_)=>HomeScreen() ,
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
      },
    );
  }
}
