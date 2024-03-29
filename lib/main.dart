import 'package:flutter/material.dart';
import 'package:ksrtc_mob_app/screens/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KSRTC Scheduling',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
