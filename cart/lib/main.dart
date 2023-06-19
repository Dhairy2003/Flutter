import 'package:flutter/material.dart';
import 'package:new_cart/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'E-Cart',
      debugShowCheckedModeBanner: false,
      home:HomeApp()


    );
  }
}

