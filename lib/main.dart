import 'package:flutter/material.dart';
import 'package:zomato_clone/screens/home_screen.dart';
import 'package:zomato_clone/screens/signup_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false,
    return MaterialApp(
      title: 'Zomato Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUpScreen(),
    );
  }
}
