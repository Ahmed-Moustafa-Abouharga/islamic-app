import 'package:flutter/material.dart';
import 'package:islamic_app/ui/home_screen/HomeScreen.dart';
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
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(

          unselectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            color: Colors.white,

          ),

        ),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xffE2BE7F),
          )
        ),
        scaffoldBackgroundColor: Color(0xff202020),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, primary: Color(0xffE2BE7F)),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
      //  SplashScreen.routeName: (_) => SplashScreen(),
      //  OnBoardingScreen.routeName: (_) => OnBoardingScreen(),
        HomeScreen.routeName:(_)=>HomeScreen() ,
      },
    );
  }
}
