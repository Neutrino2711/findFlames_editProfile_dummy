import 'package:flutter/material.dart';
import 'package:find_flames_assignment/edit_profile.dart';

var kcolorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 44, 11, 41));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kcolorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kcolorScheme.background,
        ),
        textTheme: TextTheme().copyWith(
          bodyMedium: TextStyle(
            fontSize: 15,
            color: Colors.black12,
          ),
          titleMedium: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black45),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black26),
          titleSmall: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      home: EditProfilePage(),
    );
  }
}
