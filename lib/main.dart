import 'package:flutter/material.dart';
import 'class/bottom_bar.dart';
import 'utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primaryColor: primaryColor,
      ),
      home: const BottomBar(),
    );
  }
}


