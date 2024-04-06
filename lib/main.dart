import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ksrtc_mob_app/views/login.dart';
import 'package:ksrtc_mob_app/views/schedules_screen.dart';

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
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
