import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData lightTheme= ThemeData(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Color(0xffE2BE7F),
      )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(

      unselectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        color: Colors.white,

      ),

    ),
    textTheme:   const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.black
      ),
      titleLarge: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        color: Colors.white
      ),
        titleSmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xffFEFFE8)
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: Color(0xffE2BE7F),
        )
    ),
    scaffoldBackgroundColor: const Color(0xff202020),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple, primary: const Color(0xffE2BE7F)),
    useMaterial3: true,
  );
}