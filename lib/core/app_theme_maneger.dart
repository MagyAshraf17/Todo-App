import 'package:flutter/material.dart';

class AppThemeManager {
  static const Color primaryColor = Color(0xFF5D9CEC);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: Colors.black87,
        fontSize: 30,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFFC8C9CB),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,

      selectedIconTheme: IconThemeData(
        size: 35,
        color: primaryColor,
      ),
      unselectedIconTheme: IconThemeData(
        size: 25,
        color: Color(0xFFC8C9CB),
      ),
      // type: BottomNavigationBarType.fixed,
      //   showUnselectedLabels: false,
      backgroundColor: Color(0xFFFFFFFF),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: Colors.black87,
        fontSize: 25,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: Colors.black87,
        fontSize: 30,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        color: Colors.black87,
        fontSize: 25,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20,
      ),
      displaySmall: TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontSize: 18,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryColor,
    ),
  );
}
