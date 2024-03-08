import 'package:flutter/material.dart';

AppTheme apptheme = AppDefaultTheme();

abstract class AppTheme {
  final Color primaryColor;
  final MaterialColor primarySwatchColor;
  final TextStyle AppBarTitle;

  AppTheme({
    required this.primaryColor, 
    required this.primarySwatchColor,
    required this.AppBarTitle,
  
  });
}

class AppDefaultTheme extends AppTheme {
  AppDefaultTheme()
      : super(
        primaryColor: Colors.white, 
        primarySwatchColor: Colors.blue,
        AppBarTitle: TextStyle(fontWeight: FontWeight.bold),
        
      );
}
