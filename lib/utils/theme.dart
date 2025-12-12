import 'package:flutter/material.dart';

import './constants.dart';

ThemeData basicTheme() => ThemeData(
      brightness: Brightness.dark,
      primaryColor: kPrimaryColor,

      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: fontNameTitle,
          fontSize: mediumTextSize,
          color: Colors.purple,
        ),
        headlineMedium: TextStyle(
          fontFamily: fontNameDefault,
          fontSize: mediumTextSize,
          fontWeight: FontWeight.w800,
          color: kSecondaryColor,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontNameDefault,
          fontSize: bodyTextSize,
          color: Colors.green,
        ),
      ),

      iconTheme: IconThemeData(
        // color: Colors.red,
        size: 25.0,
        color: Colors.blue,
      ),

      // floatingActionButtonTheme: FloatingActionButtonThemeData(
      //   backgroundColor: Colors.red,
      //   foregroundColor: Colors.purple,
      // ),

      hintColor: Colors.orange,
      buttonTheme: ButtonThemeData(
        height: 80,
        buttonColor: Colors.deepPurple,
        textTheme: ButtonTextTheme.accent,
      ),

      // bottomAppBarColor: Colors.deepPurple,
      // cardColor: Colors.orange.shade100,
      // scaffoldBackgroundColor: Colors.yellow,
    );
