import 'package:flutter/material.dart';
import 'package:recipe_list_app/utils/apptheme.dart';
import 'package:recipe_list_app/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food Recipe",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: apptheme.primarySwatchColor,
        primaryColor: apptheme.primaryColor,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: apptheme.primaryColor),
        )
      ),
      home: HomeScreen(),
    );
  }
}