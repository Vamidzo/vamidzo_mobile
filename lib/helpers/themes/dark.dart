import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final darkTheme = ThemeData(
  fontFamily: 'Poppins',
  bottomNavigationBarTheme:
      BottomNavigationBarThemeData(backgroundColor: Color(0xFF121212)),
  primaryColor: const Color(0xFF9C56D8), // Couleur d'accentuation
  scaffoldBackgroundColor:
      const Color(0xFF121212), // Couleur de fond pour Scaffold
  brightness: Brightness.dark, // Mode sombre
  appBarTheme: AppBarTheme(
    color: const Color(0xFF121212), // Mode sombre
    iconTheme: const IconThemeData(
      color: Colors.white, // Couleur de l'icône
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
    toolbarTextStyle: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white, // Couleur du texte
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ).bodyMedium,
    titleTextStyle: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white, // Couleur du texte
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ).titleLarge,
  ),
  // textTheme: const TextTheme(
  //   titleLarge: TextStyle(
  //     color: Colors.white, // Couleur du texte
  //     fontSize: 20.0,
  //     fontWeight: FontWeight.bold,
  //   ),
  //   bodyLarge: TextStyle(
  //     color: Colors.white, // Couleur du texte
  //     fontSize: 16.0,
  //   ),
  // ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24,
      color: Colors.white,
    ), // headline1
    displayMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 20,
      color: Colors.white,
    ), // headline2
    displaySmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
      color: Colors.white,
    ), // headline3
    headlineMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      color: Colors.white,
    ), // headline4
    headlineSmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      color: Colors.white,
    ), // headline5
    titleLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Colors.white,
    ), // headline6
    bodyLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ), // bodyText1
    bodyMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ), // bodyText2
    labelLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ), // button
    bodySmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ), // caption
    labelSmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 10,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ), // overline
  ),
  // colorScheme: ColorScheme.fromSwatch().copyWith(
  //   secondary: const Color(0xFF2196F3),
  // ),
);
