import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final lightTheme = ThemeData(
  fontFamily: 'Poppins',
  bottomNavigationBarTheme:
      BottomNavigationBarThemeData(backgroundColor: Colors.white),
  primaryColor: const Color(0xFF8022D9), // Couleur d'accentuation
  scaffoldBackgroundColor: Colors.white, // Couleur de fond pour Scaffold
  brightness: Brightness.light, // Mode clair
  appBarTheme: AppBarTheme(
    color: Colors.white, // Mode clair
    iconTheme: const IconThemeData(
      color: Colors.black, // Couleur de l'icône
    ),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    toolbarTextStyle: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black, // Couleur du texte
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ).bodyMedium,
    titleTextStyle: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black, // Couleur du texte
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ).titleLarge,
    elevation: 0,
  ),
  // textTheme: const TextTheme(
  //   titleLarge: TextStyle(
  //     color: Colors.black, // Couleur du texte
  //     fontSize: 20.0,
  //     fontWeight: FontWeight.bold,
  //   ),
  //   bodyLarge: TextStyle(
  //     color: Colors.black, // Couleur du texte
  //     fontSize: 16.0,
  //   ),
  // ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24,
      color: Colors.black,
    ), // headline1
    displayMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 20,
      color: Colors.black,
    ), // headline2
    displaySmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
      color: Colors.black,
    ), // headline3
    headlineMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      color: Colors.black,
    ), // headline4
    headlineSmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      color: Colors.black,
    ), // headline5
    titleLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Colors.black,
    ), // headline6
    bodyLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ), // bodyText1
    bodyMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ), // bodyText2
    labelLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ), // button
    bodySmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ), // caption
    labelSmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 10,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ), // overline
  ),
  // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFF2196F3)),
);
