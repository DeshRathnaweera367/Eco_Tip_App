import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(EcoTipApp());
}

class EcoTipApp extends StatelessWidget {
  const EcoTipApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Eco Tip App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}
