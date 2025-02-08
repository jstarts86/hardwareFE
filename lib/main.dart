import 'package:flutter/material.dart';
import 'package:hardware_fe/screens/ParkAve/park_ave_selection_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hardware Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ParkAveSelectionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

