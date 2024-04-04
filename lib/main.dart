import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ksrtc_mob_app/screens/navigation.dart';
import 'package:ksrtc_mob_app/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KSRTC Scheduling',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const NavigationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
